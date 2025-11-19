@interface NSString(HKElectrocardiogram)
- (id)hrui_appendForSharing:()HKElectrocardiogram;
@end

@implementation NSString(HKElectrocardiogram)

- (id)hrui_appendForSharing:()HKElectrocardiogram
{
  if (a3)
  {
    v3 = [a1 stringByAppendingString:@"_SHARED"];
  }

  else
  {
    v3 = a1;
  }

  return v3;
}

@end