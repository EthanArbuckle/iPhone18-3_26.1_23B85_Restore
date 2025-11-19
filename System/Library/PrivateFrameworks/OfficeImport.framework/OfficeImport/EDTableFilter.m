@interface EDTableFilter
+ (id)edTableFilter;
- (id)description;
@end

@implementation EDTableFilter

+ (id)edTableFilter
{
  v2 = objc_alloc_init(EDTableFilter);

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDTableFilter;
  v2 = [(EDTableFilter *)&v4 description];

  return v2;
}

@end