@interface NSString(HKElectrocardiogram)
- (id)hrui_appendForSharing:()HKElectrocardiogram;
@end

@implementation NSString(HKElectrocardiogram)

- (id)hrui_appendForSharing:()HKElectrocardiogram
{
  if (a3)
  {
    selfCopy = [self stringByAppendingString:@"_SHARED"];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end