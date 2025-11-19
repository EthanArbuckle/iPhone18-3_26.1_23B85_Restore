@interface IDSGroupEncryptionPreKeyDictionaryKeys
+ (NSString)creationDate;
+ (NSString)publicPreKey;
+ (NSString)wrapMode;
- (_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys)init;
@end

@implementation IDSGroupEncryptionPreKeyDictionaryKeys

+ (NSString)publicPreKey
{
  v2 = sub_100936B28();

  return v2;
}

+ (NSString)creationDate
{
  v2 = sub_100936B28();

  return v2;
}

+ (NSString)wrapMode
{
  v2 = sub_100936B28();

  return v2;
}

- (_TtC17identityservicesd38IDSGroupEncryptionPreKeyDictionaryKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IDSGroupEncryptionPreKeyDictionaryKeys();
  return [(IDSGroupEncryptionPreKeyDictionaryKeys *)&v3 init];
}

@end