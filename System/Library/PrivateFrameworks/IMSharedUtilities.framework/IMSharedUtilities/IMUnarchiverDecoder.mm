@interface IMUnarchiverDecoder
+ (id)_decodeEncodedData:(id)data ofClass:(Class)class includesAllowlistedClasses:(id)classes;
+ (id)decodeEncodedDataSecurely:(id)securely ofClass:(Class)class includesAllowlistedClasses:(id)classes;
@end

@implementation IMUnarchiverDecoder

+ (id)_decodeEncodedData:(id)data ofClass:(Class)class includesAllowlistedClasses:(id)classes
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  classesCopy = classes;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Decoding data of length %@", buf, 0xCu);
    }
  }

  v22 = 0;
  v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v22];
  v11 = v22;
  if (objc_opt_respondsToSelector())
  {
    [v10 _enableStrictSecureDecodingMode];
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "strict-decoding 009 _enableStrictSecureDecodingMode called with error:[%@]", buf, 0xCu);
      }
    }
  }

  [v10 setDecodingFailurePolicy:0];
  v13 = [v10 decodeObjectOfClasses:classesCopy forKey:*MEMORY[0x1E696A508]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Successfully decoded data!", buf, 2u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = objc_opt_class();
        *buf = 138412546;
        v24 = v17;
        v25 = 2112;
        v26 = v18;
        v19 = v18;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "Could not decode data because decoded object was of class %@ instead of expected class %@", buf, 0x16u);
      }
    }

    v14 = 0;
  }

  v20 = v14;

  return v14;
}

+ (id)decodeEncodedDataSecurely:(id)securely ofClass:(Class)class includesAllowlistedClasses:(id)classes
{
  securelyCopy = securely;
  classesCopy = classes;
  v9 = [IMUnarchiverDecoder _decodeEncodedData:securelyCopy ofClass:class includesAllowlistedClasses:classesCopy];

  return v9;
}

@end