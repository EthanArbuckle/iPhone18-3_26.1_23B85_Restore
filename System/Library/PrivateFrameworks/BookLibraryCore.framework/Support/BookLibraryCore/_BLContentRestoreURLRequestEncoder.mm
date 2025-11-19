@interface _BLContentRestoreURLRequestEncoder
- (_BLContentRestoreURLRequestEncoder)initWithBag:(id)a3;
- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4;
@end

@implementation _BLContentRestoreURLRequestEncoder

- (_BLContentRestoreURLRequestEncoder)initWithBag:(id)a3
{
  v6.receiver = self;
  v6.super_class = _BLContentRestoreURLRequestEncoder;
  v3 = [(_BLContentRestoreURLRequestEncoder *)&v6 initWithBag:a3];
  v4 = v3;
  if (v3)
  {
    [(_BLContentRestoreURLRequestEncoder *)v3 setUrlKnownToBeTrusted:1];
  }

  return v4;
}

- (id)requestByEncodingRequest:(id)a3 parameters:(id)a4
{
  v6 = a4;
  v7 = [a3 mutableCopy];
  [v7 setCachePolicy:1];
  [v7 setHTTPContentType:@"text/xml"];
  v10.receiver = self;
  v10.super_class = _BLContentRestoreURLRequestEncoder;
  v8 = [(_BLContentRestoreURLRequestEncoder *)&v10 requestByEncodingRequest:v7 parameters:v6];

  return v8;
}

@end