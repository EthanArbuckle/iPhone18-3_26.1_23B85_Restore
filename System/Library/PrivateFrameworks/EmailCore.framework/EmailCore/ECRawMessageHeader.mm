@interface ECRawMessageHeader
- (ECRawMessageHeader)initWithHeaderFieldName:(id)a3 body:(id)a4;
@end

@implementation ECRawMessageHeader

- (ECRawMessageHeader)initWithHeaderFieldName:(id)a3 body:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = ECRawMessageHeader;
  v8 = [(ECRawMessageHeader *)&v16 init];
  if (v8)
  {
    v9 = [v6 copy];
    transmittedName = v8->_transmittedName;
    v8->_transmittedName = v9;

    v11 = [(NSString *)v8->_transmittedName lowercaseString];
    name = v8->_name;
    v8->_name = v11;

    v13 = [v7 copy];
    body = v8->_body;
    v8->_body = v13;
  }

  return v8;
}

@end