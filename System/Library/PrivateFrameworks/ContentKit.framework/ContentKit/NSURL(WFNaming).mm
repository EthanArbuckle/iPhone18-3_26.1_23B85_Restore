@interface NSURL(WFNaming)
- (id)wfName;
@end

@implementation NSURL(WFNaming)

- (id)wfName
{
  absoluteString = [self absoluteString];
  if ([absoluteString length] <= 0x64)
  {
    v2 = absoluteString;
  }

  else
  {
    v2 = [absoluteString substringToIndex:100];
  }

  v3 = v2;

  return v3;
}

@end