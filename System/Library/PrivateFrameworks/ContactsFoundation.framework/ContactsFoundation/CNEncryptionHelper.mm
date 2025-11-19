@interface CNEncryptionHelper
+ (id)decryptAddressingGrammarData:(id)a3;
+ (id)decryptAddressingGrammarString:(id)a3;
+ (id)encryptAddressingGrammar:(id)a3;
+ (id)encryptAddressingGrammarAsString:(id)a3;
+ (id)os_log;
@end

@implementation CNEncryptionHelper

+ (id)os_log
{
  if (os_log_cn_once_token_1_8 != -1)
  {
    +[CNEncryptionHelper os_log];
  }

  v3 = os_log_cn_once_object_1_8;

  return v3;
}

uint64_t __28__CNEncryptionHelper_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "encryption");
  v1 = os_log_cn_once_object_1_8;
  os_log_cn_once_object_1_8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)encryptAddressingGrammarAsString:(id)a3
{
  v3 = [a1 encryptAddressingGrammar:a3];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

+ (id)decryptAddressingGrammarString:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v4 options:0];
    if (v5)
    {
      v6 = [a1 decryptAddressingGrammarData:v5];
      goto LABEL_10;
    }

    v7 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[CNEncryptionHelper decryptAddressingGrammarString:];
    }
  }

  else
  {
    v5 = [objc_opt_class() os_log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[CNEncryptionHelper decryptAddressingGrammarString:];
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)encryptAddressingGrammar:(id)a3
{
  if (a3)
  {
    v3 = [a3 dataRepresentation];
    v4 = [_TtC18ContactsFoundation15CNDataEncryptor encryptData:v3 keyLabel:@"com.apple.contacts.keys.pronouns"];

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[CNEncryptionHelper encryptAddressingGrammar:];
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)decryptAddressingGrammarData:(id)a3
{
  if (a3)
  {
    v3 = [_TtC18ContactsFoundation15CNDataEncryptor decryptData:a3 keyLabel:@"com.apple.contacts.keys.pronouns"];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AEE0] termOfAddressFromDataRepresentation:v3];
    }

    else
    {
      v5 = [objc_opt_class() os_log];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        +[CNEncryptionHelper decryptAddressingGrammarData:];
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end