@interface CCUIMutableLayoutOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CCUIMutableLayoutOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CCUILayoutOptions alloc];

  return [(CCUILayoutOptions *)v4 _initWithLayoutOptions:self];
}

@end