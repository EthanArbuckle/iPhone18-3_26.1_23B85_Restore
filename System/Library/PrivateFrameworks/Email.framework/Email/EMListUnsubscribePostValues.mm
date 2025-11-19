@interface EMListUnsubscribePostValues
- (BOOL)isEqual:(id)a3;
- (EMListUnsubscribePostValues)initWithCoder:(id)a3;
- (EMListUnsubscribePostValues)initWithURL:(id)a3 postContent:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EMListUnsubscribePostValues

- (EMListUnsubscribePostValues)initWithURL:(id)a3 postContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EMListUnsubscribePostValues;
  v8 = [(EMListUnsubscribePostValues *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    oneClickURL = v8->_oneClickURL;
    v8->_oneClickURL = v9;

    v11 = [v7 copy];
    postContent = v8->_postContent;
    v8->_postContent = v11;
  }

  return v8;
}

- (EMListUnsubscribePostValues)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EMListUnsubscribePostValues;
  v5 = [(EMListUnsubscribePostValues *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_oneClickURL"];
    oneClickURL = v5->_oneClickURL;
    v5->_oneClickURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_postContent"];
    postContent = v5->_postContent;
    v5->_postContent = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EMListUnsubscribePostValues *)self oneClickURL];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_oneClickURL"];

  v5 = [(EMListUnsubscribePostValues *)self postContent];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_postContent"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    oneClickURL = self->_oneClickURL;
    v7 = [v5 oneClickURL];
    if (EFObjectsAreEqual())
    {
      postContent = self->_postContent;
      v9 = [v5 postContent];
      EFObjectsAreEqual();
    }
  }

  return 0;
}

@end