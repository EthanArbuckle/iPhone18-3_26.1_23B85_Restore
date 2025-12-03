@interface LazuliDiagnosticExtension
- (LazuliDiagnosticExtension)init;
- (id)attachmentsForParameters:(id)parameters;
- (id)royalBlueDirectoryAttachment:(BOOL)attachment;
- (void)teardownWithParameters:(id)parameters;
@end

@implementation LazuliDiagnosticExtension

- (LazuliDiagnosticExtension)init
{
  v3.receiver = self;
  v3.super_class = LazuliDiagnosticExtension;
  result = [(LazuliDiagnosticExtension *)&v3 init];
  if (result)
  {
    result->_commCenterExtensionToken = -1;
  }

  return result;
}

- (id)royalBlueDirectoryAttachment:(BOOL)attachment
{
  attachmentCopy = attachment;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "is not allowed";
    if (attachmentCopy)
    {
      v5 = "is allowed";
    }

    v37 = 136315138;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting to attach RoyalBlue directory, sensitive collection %s", &v37, 0xCu);
  }

  if (!attachmentCopy)
  {
    goto LABEL_17;
  }

  if (!container_query_create())
  {
    v11 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1000012C0(v11, v12, v13, v14, v15, v16, v17, v18);
    }

LABEL_17:
    v10 = 0;
    goto LABEL_28;
  }

  container_query_set_class();
  container_query_operation_set_flags();
  xpc_string_create("com.apple.coretelephony");
  container_query_set_identifiers();
  if (!container_query_get_single_result())
  {
    container_query_get_last_error();
    v19 = container_error_copy_unlocalized_description();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001240(v19);
    }

    free(v19);
    v10 = 0;
    goto LABEL_27;
  }

  v6 = [NSString stringWithUTF8String:container_get_path()];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v37 = 138412290;
    v38 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Daemon container path: %@", &v37, 0xCu);
  }

  v7 = container_copy_sandbox_token();
  if (!v7)
  {
    v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      sub_100001204(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_25;
  }

  if (self->_commCenterExtensionToken < 0)
  {
    self->_commCenterExtensionToken = sandbox_extension_consume();
  }

  free(v7);
  if (self->_commCenterExtensionToken < 0)
  {
    v28 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v28)
    {
      sub_1000011C8(v28, v29, v30, v31, v32, v33, v34, v35);
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v8 = [NSURL fileURLWithPath:v6 isDirectory:1];
  v9 = [v8 URLByAppendingPathComponent:@"RoyalBlue" isDirectory:1];
  v10 = [DEAttachmentItem attachmentWithPathURL:v9];
  [v10 setShouldCompress:&__kCFBooleanTrue];

LABEL_26:
LABEL_27:
  container_query_free();
LABEL_28:

  return v10;
}

- (id)attachmentsForParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = [parametersCopy objectForKeyedSubscript:@"DEExtensionAttachmentsParamConsentProvidedKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = -[LazuliDiagnosticExtension royalBlueDirectoryAttachment:](self, "royalBlueDirectoryAttachment:", [v7 BOOLValue]);
  v9 = v8;
  if (v8)
  {
    v12 = v8;
    v10 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v10 = &__NSArray0__struct;
  }

  return v10;
}

- (void)teardownWithParameters:(id)parameters
{
  parametersCopy = parameters;
  if ((self->_commCenterExtensionToken & 0x8000000000000000) == 0)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Releasing sandbox extension", v6, 2u);
      commCenterExtensionToken = self->_commCenterExtensionToken;
    }

    sandbox_extension_release();
    self->_commCenterExtensionToken = -1;
  }
}

@end