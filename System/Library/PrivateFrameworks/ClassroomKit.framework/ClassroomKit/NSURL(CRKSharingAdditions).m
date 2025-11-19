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
    v7 = v6;
  }

  else if ([v5 count] == 1)
  {
    v8 = [v5 firstObject];
    v7 = [v8 crk_sharingDescription];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)crk_sharingDescription
{
  if ([a1 isFileURL])
  {
    v2 = [a1 lastPathComponent];
  }

  else
  {
    v3 = [a1 host];
    v2 = [a1 crk_stringByRemovingWWWPrefixFromString:v3];
  }

  return v2;
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