@interface NSURL(CRKSharingAdditions)
+ (id)crk_overriddenDescriptionForItems:()CRKSharingAdditions originalDescription:;
- (id)crk_sharingDescription;
- (id)crk_stringByRemovingWWWPrefixFromString:()CRKSharingAdditions;
@end

@implementation NSURL(CRKSharingAdditions)

+ (id)crk_overriddenDescriptionForItems:()CRKSharingAdditions originalDescription:
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    crk_sharingDescription = v6;
  }

  else if ([v5 count] == 1)
  {
    firstObject = [v5 firstObject];
    crk_sharingDescription = [firstObject crk_sharingDescription];
  }

  else
  {
    crk_sharingDescription = 0;
  }

  return crk_sharingDescription;
}

- (id)crk_sharingDescription
{
  if ([self isFileURL])
  {
    lastPathComponent = [self lastPathComponent];
  }

  else
  {
    host = [self host];
    lastPathComponent = [self crk_stringByRemovingWWWPrefixFromString:host];
  }

  return lastPathComponent;
}

- (id)crk_stringByRemovingWWWPrefixFromString:()CRKSharingAdditions
{
  v3 = a3;
  if (([v3 hasPrefix:@"www"] & 1) != 0 && (v4 = objc_msgSend(v3, "rangeOfString:", @"."), v4 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = [v3 substringFromIndex:v4 + 1];
  }

  else
  {
    v5 = [v3 copy];
  }

  v6 = v5;

  return v6;
}

@end