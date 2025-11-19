@interface PKApplyActionContentTextItemODIDetail
- (NSCopying)identifier;
- (PKApplyActionContentTextItemODIDetail)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)odiAttributesDictionary;
@end

@implementation PKApplyActionContentTextItemODIDetail

- (PKApplyActionContentTextItemODIDetail)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKApplyActionContentTextItemODIDetail;
  v5 = [(PKApplyActionContentTextItemODIDetail *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"odiAttribute"];
    odiAttribute = v5->_odiAttribute;
    v5->_odiAttribute = v6;

    v8 = [v4 PKStringForKey:@"odiValue"];
    odiValue = v5->_odiValue;
    v5->_odiValue = v8;
  }

  return v5;
}

- (id)odiAttributesDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 safelySetObject:self->_odiValue forKey:self->_odiAttribute];

  return v3;
}

- (NSCopying)identifier
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendString:v5];

  if (self->_odiAttribute)
  {
    [v3 appendString:?];
  }

  if (self->_odiValue)
  {
    [v3 appendString:?];
  }

  v6 = [v3 copy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKApplyActionContentTextItemODIDetail allocWithZone:](PKApplyActionContentTextItemODIDetail init];
  v6 = [(NSString *)self->_odiAttribute copyWithZone:a3];
  odiAttribute = v5->_odiAttribute;
  v5->_odiAttribute = v6;

  v8 = [(NSString *)self->_odiValue copyWithZone:a3];
  odiValue = v5->_odiValue;
  v5->_odiValue = v8;

  return v5;
}

@end