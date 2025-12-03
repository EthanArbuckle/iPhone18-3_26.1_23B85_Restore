@interface IDSOffGridDeliveryQueryOptions
+ (id)cached;
- (IDSOffGridDeliveryQueryOptions)init;
- (IDSOffGridDeliveryQueryOptions)initWithCached:(BOOL)cached;
- (IDSOffGridDeliveryQueryOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (IDSOffGridDeliveryQueryOptions)initWithCached:(BOOL)cached
{
  v5.receiver = self;
  v5.super_class = IDSOffGridDeliveryQueryOptions;
  result = [(IDSOffGridDeliveryQueryOptions *)&v5 init];
  if (result)
  {
    result->_cached = cached;
  }

  return result;
}

- (IDSOffGridDeliveryQueryOptions)initWithCoder:(id)coder
{
  v4 = -[IDSOffGridDeliveryQueryOptions initWithCached:]([IDSOffGridDeliveryQueryOptions alloc], "initWithCached:", [coder decodeBoolForKey:@"cached"]);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[IDSOffGridDeliveryQueryOptions cached](self forKey:{"cached"), @"cached"}];
}

@end