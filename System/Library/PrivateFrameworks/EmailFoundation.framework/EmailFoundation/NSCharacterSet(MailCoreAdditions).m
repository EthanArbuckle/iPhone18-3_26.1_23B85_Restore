@interface NSCharacterSet(MailCoreAdditions)
+ (id)ef_asciiAlphaNumericCharacterSet;
+ (id)ef_rfc6376WhitespaceCharacterSet;
+ (id)ef_unsafeAddressLocalPartCharacterSet;
+ (id)ef_unsafeDomainNameCharacterSet;
@end

@implementation NSCharacterSet(MailCoreAdditions)

+ (id)ef_unsafeDomainNameCharacterSet
{
  if (ef_unsafeDomainNameCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(MailCoreAdditions) ef_unsafeDomainNameCharacterSet];
  }

  v1 = ef_unsafeDomainNameCharacterSet_unsafeDomainNameCharacterSet;

  return v1;
}

+ (id)ef_unsafeAddressLocalPartCharacterSet
{
  if (ef_unsafeAddressLocalPartCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(MailCoreAdditions) ef_unsafeAddressLocalPartCharacterSet];
  }

  v1 = ef_unsafeAddressLocalPartCharacterSet_unsafeAddressLocalPartCharacterSet;

  return v1;
}

+ (id)ef_asciiAlphaNumericCharacterSet
{
  if (ef_asciiAlphaNumericCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(MailCoreAdditions) ef_asciiAlphaNumericCharacterSet];
  }

  v1 = ef_asciiAlphaNumericCharacterSet_sAsciiAlphaNumericCharacterSet;

  return v1;
}

+ (id)ef_rfc6376WhitespaceCharacterSet
{
  if (ef_rfc6376WhitespaceCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(MailCoreAdditions) ef_rfc6376WhitespaceCharacterSet];
  }

  v1 = ef_rfc6376WhitespaceCharacterSet_rfc6376WhitespaceCharacterSet;

  return v1;
}

@end