@interface NSString(GCS)
- (id)shortenedVersionNumberString;
@end

@implementation NSString(GCS)

- (id)shortenedVersionNumberString
{
  v1 = a1;
  if ([v1 hasSuffix:@".0"])
  {
    do
    {
      v2 = [v1 substringToIndex:{objc_msgSend(v1, "length") - objc_msgSend(@".0", "length")}];

      v1 = v2;
    }

    while (([v2 hasSuffix:@".0"] & 1) != 0);
  }

  else
  {
    v2 = v1;
  }

  return v2;
}

@end