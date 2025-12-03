@interface NSDateComponents(CLSNSDateComponentsExtensions)
- (id)description;
@end

@implementation NSDateComponents(CLSNSDateComponentsExtensions)

- (id)description
{
  date = [self date];
  v2 = [date description];

  return v2;
}

@end