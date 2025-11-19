@interface CDLabelProvider
- (CDLabelProvider)initWithCoder:(id)a3;
- (CDLabelProvider)initWithTextProvider:(id)a3 imageProvider:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDLabelProvider

- (CDLabelProvider)initWithTextProvider:(id)a3 imageProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDLabelProvider;
  v9 = [(CDLabelProvider *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textProvider, a3);
    objc_storeStrong(&v10->_imageProvider, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  textProvider = self->_textProvider;
  v5 = a3;
  [v5 encodeObject:textProvider forKey:@"textProvider"];
  [v5 encodeObject:self->_imageProvider forKey:@"imageProvider"];
}

- (CDLabelProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CDLabelProvider;
  v5 = [(CDLabelProvider *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"textProvider"];
    textProvider = v5->_textProvider;
    v5->_textProvider = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageProvider"];
    imageProvider = v5->_imageProvider;
    v5->_imageProvider = v8;
  }

  return v5;
}

@end