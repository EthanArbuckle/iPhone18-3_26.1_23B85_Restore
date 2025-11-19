@interface NSObject(FCTabiConfigurationExtensions)
- (id)indentedDescription;
@end

@implementation NSObject(FCTabiConfigurationExtensions)

- (id)indentedDescription
{
  v1 = [a1 description];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];

  return v2;
}

@end