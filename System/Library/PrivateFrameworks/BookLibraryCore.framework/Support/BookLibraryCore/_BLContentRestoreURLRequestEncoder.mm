@interface _BLContentRestoreURLRequestEncoder
- (_BLContentRestoreURLRequestEncoder)initWithBag:(id)bag;
- (id)requestByEncodingRequest:(id)request parameters:(id)parameters;
@end

@implementation _BLContentRestoreURLRequestEncoder

- (_BLContentRestoreURLRequestEncoder)initWithBag:(id)bag
{
  v6.receiver = self;
  v6.super_class = _BLContentRestoreURLRequestEncoder;
  v3 = [(_BLContentRestoreURLRequestEncoder *)&v6 initWithBag:bag];
  v4 = v3;
  if (v3)
  {
    [(_BLContentRestoreURLRequestEncoder *)v3 setUrlKnownToBeTrusted:1];
  }

  return v4;
}

- (id)requestByEncodingRequest:(id)request parameters:(id)parameters
{
  parametersCopy = parameters;
  v7 = [request mutableCopy];
  [v7 setCachePolicy:1];
  [v7 setHTTPContentType:@"text/xml"];
  v10.receiver = self;
  v10.super_class = _BLContentRestoreURLRequestEncoder;
  v8 = [(_BLContentRestoreURLRequestEncoder *)&v10 requestByEncodingRequest:v7 parameters:parametersCopy];

  return v8;
}

@end