@interface IDSOffGridDeliveryQueryOptions
+ (id)cached;
- (IDSOffGridDeliveryQueryOptions)init;
- (IDSOffGridDeliveryQueryOptions)initWithCached:(BOOL)a3;
- (IDSOffGridDeliveryQueryOptions)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSOffGridDeliveryQueryOptions

+ (id)cached
{
  v2 = [[IDSOffGridDeliveryQueryOptions alloc] initWithCached:1];

  return v2;
}

- (IDSOffGridDeliveryQueryOptions)init
{
  v3.receiver = self;
  v3.super_class = IDSOffGridDeliveryQueryOptions;
  result = [(IDSOffGridDeliveryQueryOptions *)&v3 init];
  if (result)
  {
    result->_cached = 0;
  }

  return result;
}

- (IDSOffGridDeliveryQueryOptions)initWithCached:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = IDSOffGridDeliveryQueryOptions;
  result = [(IDSOffGridDeliveryQueryOptions *)&v5 init];
  if (result)
  {
    result->_cached = a3;
  }

  return result;
}

- (IDSOffGridDeliveryQueryOptions)initWithCoder:(id)a3
{
  v4 = -[IDSOffGridDeliveryQueryOptions initWithCached:]([IDSOffGridDeliveryQueryOptions alloc], "initWithCached:", [a3 decodeBoolForKey:@"cached"]);

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[IDSOffGridDeliveryQueryOptions cached](self forKey:{"cached"), @"cached"}];
}

@end