@interface NSString(GCS)
- (id)shortenedVersionNumberString;
@end

@implementation NSString(GCS)

- (id)shortenedVersionNumberString
{
  selfCopy = self;
  if ([selfCopy hasSuffix:@".0"])
  {
    do
    {
      v2 = [selfCopy substringToIndex:{objc_msgSend(selfCopy, "length") - objc_msgSend(@".0", "length")}];

      selfCopy = v2;
    }

    while (([v2 hasSuffix:@".0"] & 1) != 0);
  }

  else
  {
    v2 = selfCopy;
  }

  return v2;
}

@end