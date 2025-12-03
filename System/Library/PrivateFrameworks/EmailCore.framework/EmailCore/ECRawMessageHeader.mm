@interface ECRawMessageHeader
- (ECRawMessageHeader)initWithHeaderFieldName:(id)name body:(id)body;
@end

@implementation ECRawMessageHeader

- (ECRawMessageHeader)initWithHeaderFieldName:(id)name body:(id)body
{
  nameCopy = name;
  bodyCopy = body;
  v16.receiver = self;
  v16.super_class = ECRawMessageHeader;
  v8 = [(ECRawMessageHeader *)&v16 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    transmittedName = v8->_transmittedName;
    v8->_transmittedName = v9;

    lowercaseString = [(NSString *)v8->_transmittedName lowercaseString];
    name = v8->_name;
    v8->_name = lowercaseString;

    v13 = [bodyCopy copy];
    body = v8->_body;
    v8->_body = v13;
  }

  return v8;
}

@end