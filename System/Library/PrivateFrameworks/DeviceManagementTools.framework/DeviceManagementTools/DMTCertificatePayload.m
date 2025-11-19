@interface DMTCertificatePayload
- (DMTCertificatePayload)initWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation DMTCertificatePayload

- (DMTCertificatePayload)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v18.receiver = self;
  v18.super_class = DMTCertificatePayload;
  v7 = [(DMTConfigurationPrimitive *)&v18 initWithDictionary:v6 error:a4];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = DMTValidateProfileString(v6, @"PayloadCertificateFileName", 1, a4);
  certificateFileName = v7->_certificateFileName;
  v7->_certificateFileName = v8;

  v10 = DMTValidateProfileData(v6, @"PayloadContent", 0, a4);
  content = v7->_content;
  v7->_content = v10;

  if (*a4)
  {
    goto LABEL_3;
  }

  v14 = [(DMTConfigurationPrimitive *)v7 type];
  v15 = [v14 isEqualToString:@"com.apple.security.pkcs12"];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = DMTValidateProfileString(v6, @"Password", 0, a4);
  password = v7->_password;
  v7->_password = v16;

  if (*a4)
  {
LABEL_3:
    v12 = 0;
  }

  else
  {
LABEL_7:
    v12 = v7;
  }

  return v12;
}

@end