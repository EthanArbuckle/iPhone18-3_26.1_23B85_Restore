@interface MFAttachmentService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFAttachmentService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v11 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v11)
  {
    v59 = +[NSAssertionHandler currentHandler];
    [v59 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"args"}];
  }

  v12 = _CFXPCCreateCFObjectFromXPCObject();
  [v12 objectForKey:@"MSAttachmentRequestKeyOperation"];
  v65 = v64 = object;
  integerValue = [v65 integerValue];
  v14 = +[NSMutableDictionary dictionary];
  if (integerValue == 1)
  {
    v40 = MFLogGeneral();
    errorCopy3 = error;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D4094(v40, v41, v42, v43, v44, v45, v46, v47);
    }

    v23 = [v12 objectForKey:@"MSAttachmentRequestKeyNameType"];
    if (!v23)
    {
      v61 = +[NSAssertionHandler currentHandler];
      [v61 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:389 description:{@"Invalid parameter not satisfying: %@", @"argName"}];
    }

    v48 = [v12 objectForKey:@"MSAttachmentRequestKeySizeType"];
    integerValue2 = [v48 integerValue];

    mf_canonicalizedAbsolutePath = [v12 objectForKey:@"MSAttachmentRequestKeyMimeType"];
    v26 = [v12 objectForKey:@"MSAttachmentRequestKeyContentID"];
    v50 = [MFAttachmentPlaceholder serializedPlaceholderForFileName:v23 fileSize:integerValue2 mimeType:mf_canonicalizedAbsolutePath contentID:v26];
    if (v50)
    {
      [v14 setObject:v50 forKey:@"MSAttachmentResponseKeyData"];
    }

    goto LABEL_34;
  }

  if (integerValue != 2)
  {
    if (integerValue != 3)
    {
      v51 = MFLogGeneral();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        sub_1000D40CC(integerValue, v51);
      }

      v31 = [NSError errorWithDomain:MSMailServiceErrorDomain code:7342 userInfo:0];
      if (v14)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    v15 = MFLogGeneral();
    errorCopy3 = error;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D3FAC(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = [v12 objectForKey:@"MSAttachmentRequestKeyURL"];
    if (!v23)
    {
      v62 = +[NSAssertionHandler currentHandler];
      [v62 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:415 description:{@"Invalid parameter not satisfying: %@", @"argURL"}];
    }

    path = [v23 path];
    mf_canonicalizedAbsolutePath = [path mf_canonicalizedAbsolutePath];

    v26 = +[MFAttachmentPlaceholder placeholderDirectory];
    if (![mf_canonicalizedAbsolutePath hasPrefix:v26] || (objc_msgSend(mf_canonicalizedAbsolutePath, "lastPathComponent"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "lastPathComponent"), v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v27, "isEqualToString:", v28), v28, v27, (v29 & 1) != 0))
    {
      v30 = MFLogGeneral();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        sub_1000D3FE4(v23, v30);
      }

      v31 = [NSError errorWithDomain:MSMailServiceErrorDomain code:9089 userInfo:0];
      goto LABEL_35;
    }

    v50 = [NSURL fileURLWithPath:mf_canonicalizedAbsolutePath];
    v53 = [MFAttachmentSecurityScope securityScopedURL:v50];
    securityScopeToken = [v53 securityScopeToken];

    if (securityScopeToken)
    {
      [v14 setObject:securityScopeToken forKey:@"MSAttachmentResponseKeyData"];
    }

LABEL_34:
    v31 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v32 = MFLogGeneral();
  errorCopy3 = error;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    sub_1000D405C(v32, v33, v34, v35, v36, v37, v38, v39);
  }

  v23 = [v12 objectForKey:@"MSAttachmentRequestKeyURL"];
  if (!v23)
  {
    v60 = +[NSAssertionHandler currentHandler];
    [v60 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"argURL"}];
  }

  [MFAttachmentPlaceholder removePlaceholderForFileURL:v23];
  mf_canonicalizedAbsolutePath = +[NSNull null];
  [v14 setObject:mf_canonicalizedAbsolutePath forKey:@"MSAttachmentResponseKeyError"];
  v31 = 0;
LABEL_36:

  error = errorCopy3;
  if (v14)
  {
LABEL_37:
    reply = xpc_dictionary_create_reply(messageCopy);
    v56 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [@"MSAttachmentResponse" UTF8String], v56);
    v57 = reply;
    *v64 = reply;

    goto LABEL_38;
  }

LABEL_29:
  if (error)
  {
    v52 = v31;
    *error = v31;
  }

LABEL_38:

  return v14 != 0;
}

@end