@interface CNEncryptionHelper
+ (id)decryptAddressingGrammarData:(id)data;
+ (id)decryptAddressingGrammarString:(id)string;
+ (id)encryptAddressingGrammar:(id)grammar;
+ (id)encryptAddressingGrammarAsString:(id)string;
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

+ (id)encryptAddressingGrammarAsString:(id)string
{
  v3 = [self encryptAddressingGrammar:string];
  v4 = [v3 base64EncodedStringWithOptions:0];

  return v4;
}

+ (id)decryptAddressingGrammarString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    os_log2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:stringCopy options:0];
    if (os_log2)
    {
      v6 = [self decryptAddressingGrammarData:os_log2];
      goto LABEL_10;
    }

    os_log = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNEncryptionHelper decryptAddressingGrammarString:];
    }
  }

  else
  {
    os_log2 = [objc_opt_class() os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      +[CNEncryptionHelper decryptAddressingGrammarString:];
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

+ (id)encryptAddressingGrammar:(id)grammar
{
  if (grammar)
  {
    dataRepresentation = [grammar dataRepresentation];
    v4 = [_TtC18ContactsFoundation15CNDataEncryptor encryptData:dataRepresentation keyLabel:@"com.apple.contacts.keys.pronouns"];

    if (v4)
    {
      v5 = v4;
    }

    else
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
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

+ (id)decryptAddressingGrammarData:(id)data
{
  if (data)
  {
    v3 = [_TtC18ContactsFoundation15CNDataEncryptor decryptData:data keyLabel:@"com.apple.contacts.keys.pronouns"];
    if (v3)
    {
      v4 = [MEMORY[0x1E696AEE0] termOfAddressFromDataRepresentation:v3];
    }

    else
    {
      os_log = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
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