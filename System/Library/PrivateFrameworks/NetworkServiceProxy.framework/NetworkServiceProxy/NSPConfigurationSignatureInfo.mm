@interface NSPConfigurationSignatureInfo
+ (void)removeFromPreferences;
- (BOOL)saveToPreferences;
- (NSPConfigurationSignatureInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initFromPreferences;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NSPConfigurationSignatureInfo

- (NSPConfigurationSignatureInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NSPConfigurationSignatureInfo;
  v5 = [(NSPConfigurationSignatureInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"certificates"];
    certificates = v5->_certificates;
    v5->_certificates = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"signature"];
    signature = v5->_signature;
    v5->_signature = v8;

    v5->_signatureAlgorithm = [v4 decodeIntForKey:@"signatureAlgorithm"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(NSPConfigurationSignatureInfo *)self certificates];
  [v6 encodeObject:v4 forKey:@"certificates"];

  v5 = [(NSPConfigurationSignatureInfo *)self signature];
  [v6 encodeObject:v5 forKey:@"signature"];

  [v6 encodeInt:-[NSPConfigurationSignatureInfo signatureAlgorithm](self forKey:{"signatureAlgorithm"), @"signatureAlgorithm"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[NSPConfigurationSignatureInfo allocWithZone:?]];
  v5 = [(NSPConfigurationSignatureInfo *)self certificates];
  [(NSPConfigurationSignatureInfo *)v4 setCertificates:v5];

  v6 = [(NSPConfigurationSignatureInfo *)self signature];
  [(NSPConfigurationSignatureInfo *)v4 setSignature:v6];

  [(NSPConfigurationSignatureInfo *)v4 setSignatureAlgorithm:[(NSPConfigurationSignatureInfo *)self signatureAlgorithm]];
  return v4;
}

- (BOOL)saveToPreferences
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  if (!v3)
  {
    v9 = nplog_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v10 = 0;
      goto LABEL_9;
    }

    v16 = 0;
    v11 = "NSKeyedArchiver initialize failed";
    v12 = &v16;
LABEL_11:
    _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    goto LABEL_8;
  }

  [(NSPConfigurationSignatureInfo *)self encodeWithCoder:v3];
  v4 = *MEMORY[0x1E695E8A8];
  v5 = *MEMORY[0x1E695E8B8];
  v6 = *MEMORY[0x1E695E8B0];
  _CFPreferencesSetFileProtectionClass();
  v7 = [v3 encodedData];
  CFPreferencesSetAppValue(@"NSPSignatureInfo", v7, v4);

  LODWORD(v7) = CFPreferencesAppSynchronize(v4);
  v8 = nplog_obj();
  v9 = v8;
  if (!v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    *buf = 0;
    v11 = "Failed to write nsp signature info to preference file";
    v12 = buf;
    goto LABEL_11;
  }

  v10 = 1;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_INFO, "Saved signature info to preference file", v14, 2u);
  }

LABEL_9:

  return v10;
}

+ (void)removeFromPreferences
{
  v2 = *MEMORY[0x1E695E8A8];
  v3 = *MEMORY[0x1E695E8B8];
  v4 = *MEMORY[0x1E695E8B0];
  _CFPreferencesSetFileProtectionClass();
  CFPreferencesSetAppValue(@"NSPSignatureInfo", 0, v2);
  v5 = CFPreferencesAppSynchronize(v2);
  v6 = nplog_obj();
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_DEFAULT, "Removed signature info to preference file", v8, 2u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_ERROR, "Failed to remove signature info from preference file", buf, 2u);
  }
}

- (id)initFromPreferences
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CFPreferencesCopyAppValue(@"NSPSignatureInfo", *MEMORY[0x1E695E8A8]);
  if (v3)
  {
    v4 = v3;
    v16 = 0;
    v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v16];
    v6 = v16;
    v7 = v6;
    if (v5)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      CFRelease(v4);
      v15.receiver = self;
      v15.super_class = NSPConfigurationSignatureInfo;
      v11 = [(NSPConfigurationSignatureInfo *)&v15 init];
      if (!v11 || (v11 = [(NSPConfigurationSignatureInfo *)v11 initWithCoder:v5]) != 0)
      {
        self = v11;
        v10 = self;
        goto LABEL_16;
      }

      v14 = nplog_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1AE7E2000, v14, OS_LOG_TYPE_ERROR, "Failed to decode NSP signature info", buf, 2u);
      }

      self = 0;
    }

    else
    {
      v9 = nplog_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v7;
        _os_log_error_impl(&dword_1AE7E2000, v9, OS_LOG_TYPE_ERROR, "Failed to create a decoder for the NSP signature info: %@", buf, 0xCu);
      }

      CFRelease(v4);
    }

    v10 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v7 = nplog_obj();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1AE7E2000, v7, OS_LOG_TYPE_INFO, "no saved signature info", buf, 2u);
  }

  v10 = 0;
LABEL_17:

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

@end