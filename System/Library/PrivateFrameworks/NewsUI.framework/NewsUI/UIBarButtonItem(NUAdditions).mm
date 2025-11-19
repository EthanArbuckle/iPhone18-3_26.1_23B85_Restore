@interface UIBarButtonItem(NUAdditions)
- (id)nu_view;
@end

@implementation UIBarButtonItem(NUAdditions)

- (id)nu_view
{
  objc_opt_class();
  v2 = [a1 valueForKey:@"view"];
  v3 = FCDynamicCast();

  return v3;
}

@end