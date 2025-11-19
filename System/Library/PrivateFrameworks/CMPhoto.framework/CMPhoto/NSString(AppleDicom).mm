@interface NSString(AppleDicom)
- (id)unpaddedString;
@end

@implementation NSString(AppleDicom)

- (id)unpaddedString
{
  if (([a1 length] & 1) != 0 || objc_msgSend(a1, "length") < 2 || objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a1, "length") - 1) != 32)
  {
    v2 = a1;
  }

  else
  {
    v2 = [a1 substringToIndex:{objc_msgSend(a1, "length") - 1}];
  }

  return v2;
}

@end