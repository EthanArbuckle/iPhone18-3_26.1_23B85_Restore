@interface BUAppDataContainer
- (BOOL)_setupWithBundleID:(id)d;
- (BUAppDataContainer)initWithBundleID:(id)d;
- (NSURL)url;
- (id)consumeSandboxToken;
- (void)close;
- (void)dealloc;
@end

@implementation BUAppDataContainer

- (BUAppDataContainer)initWithBundleID:(id)d
{
  dCopy = d;
  v10.receiver = self;
  v10.super_class = BUAppDataContainer;
  v5 = [(BUAppDataContainer *)&v10 init];
  v7 = v5;
  if (v5 && !objc_msgSend__setupWithBundleID_(v5, v6, dCopy))
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (BOOL)_setupWithBundleID:(id)d
{
  dCopy = d;
  getuid();
  v5 = container_query_create();
  if (v5)
  {
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_persona_unique_string();
    container_query_set_uid();
    v6 = dCopy;
    v9 = objc_msgSend_UTF8String(v6, v7, v8);
    v10 = xpc_string_create(v9);
    container_query_set_identifiers();

    single_result = container_query_get_single_result();
    if (single_result)
    {
      self->_container = single_result;
      self->_containerQuery = v5;
      LOBYTE(v5) = 1;
    }

    else
    {
      container_query_get_last_error();
      v12 = container_error_copy_unlocalized_description();
      v13 = BookUtilityLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_241DCFCC0(v12, v13);
      }

      free(v12);
      container_query_free();
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (NSURL)url
{
  path = container_get_path();
  v4 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v3, path, 4);
  v6 = objc_msgSend_fileURLWithPath_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v5, v4, 1, 0);

  return v6;
}

- (id)consumeSandboxToken
{
  v2 = container_copy_sandbox_token();
  if (v2)
  {
    v3 = v2;
    v4 = [BUSandboxExtension alloc];
    v6 = objc_msgSend_initWithExtensionToken_(v4, v5, v3);
    free(v3);
  }

  else
  {
    v7 = BookUtilityLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_241DCFD38(v7);
    }

    v6 = 0;
  }

  return v6;
}

- (void)close
{
  if (self->_containerQuery)
  {
    v3 = BookUtilityLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241DA6000, v3, OS_LOG_TYPE_DEFAULT, "BUAppDataContainer: About to free containerQuery", v4, 2u);
    }

    container_query_free();
    self->_container = 0;
    self->_containerQuery = 0;
  }
}

- (void)dealloc
{
  objc_msgSend_close(self, a2, v2);
  v4.receiver = self;
  v4.super_class = BUAppDataContainer;
  [(BUAppDataContainer *)&v4 dealloc];
}

@end