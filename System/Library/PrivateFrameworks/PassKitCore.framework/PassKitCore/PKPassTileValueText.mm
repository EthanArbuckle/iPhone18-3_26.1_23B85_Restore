@interface PKPassTileValueText
+ (id)createWithContent:(id)a3;
- (BOOL)_isEqual:(id)a3;
- (BOOL)_setUpWithDictionary:(id)a3;
- (PKPassTileValueText)initWithCoder:(id)a3;
- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassTileValueText

- (BOOL)_setUpWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassTileValueText;
  if ([(PKPassTileValue *)&v9 _setUpWithDictionary:v4])
  {
    v5 = [v4 objectForKey:@"content"];
    content = self->_content;
    self->_content = v5;

    v7 = self->_content != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)createWithContent:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [PKPassTileValue _createForType:0 resolved:1];
    objc_storeStrong(v5 + 3, a3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createResolvedValueWithBundle:(id)a3 privateBundle:(id)a4
{
  content = self->_content;
  v14.receiver = self;
  v14.super_class = PKPassTileValueText;
  v7 = content;
  v8 = a4;
  v9 = a3;
  v10 = [(PKPassTileValue *)&v14 createResolvedValueWithBundle:v9 privateBundle:v8];
  v11 = PKLocalizedPassStringForPassBundle(v7, v9, v8);

  v12 = v10[3];
  v10[3] = v11;

  return v10;
}

- (PKPassTileValueText)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPassTileValueText;
  v5 = [(PKPassTileValue *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPassTileValueText;
  v4 = a3;
  [(PKPassTileValue *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_content forKey:{@"content", v5.receiver, v5.super_class}];
}

- (unint64_t)hash
{
  v4.receiver = self;
  v4.super_class = PKPassTileValueText;
  v5 = [(PKPassTileValue *)&v4 hash];
  v6 = [(NSString *)self->_content hash];
  return SipHash();
}

- (BOOL)_isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPassTileValueText;
  if ([(PKPassTileValue *)&v13 _isEqual:v4])
  {
    v5 = v4;
    content = self->_content;
    v7 = v5[3];
    v8 = content;
    v9 = v8;
    if (v7 == v8)
    {
      v11 = 1;
    }

    else
    {
      if (v7)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v11 = [(NSString *)v7 isEqualToString:v8];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end