@interface DMTCertificatePayload
- (DMTCertificatePayload)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation DMTCertificatePayload

- (DMTCertificatePayload)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = DMTCertificatePayload;
  v7 = [(DMTConfigurationPrimitive *)&v18 initWithDictionary:dictionaryCopy error:error];
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = DMTValidateProfileString(dictionaryCopy, @"PayloadCertificateFileName", 1, error);
  certificateFileName = v7->_certificateFileName;
  v7->_certificateFileName = v8;

  v10 = DMTValidateProfileData(dictionaryCopy, @"PayloadContent", 0, error);
  content = v7->_content;
  v7->_content = v10;

  if (*error)
  {
    goto LABEL_3;
  }

  type = [(DMTConfigurationPrimitive *)v7 type];
  v15 = [type isEqualToString:@"com.apple.security.pkcs12"];

  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = DMTValidateProfileString(dictionaryCopy, @"Password", 0, error);
  password = v7->_password;
  v7->_password = v16;

  if (*error)
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