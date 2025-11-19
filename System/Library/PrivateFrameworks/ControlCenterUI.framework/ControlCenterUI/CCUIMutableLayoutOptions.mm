@interface CCUIMutableLayoutOptions
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CCUIMutableLayoutOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CCUILayoutOptions alloc];

  return [(CCUILayoutOptions *)v4 _initWithLayoutOptions:self];
}

@end