@interface PKPassTileValueText
+ (id)createWithContent:(id)content;
- (BOOL)_isEqual:(id)equal;
- (BOOL)_setUpWithDictionary:(id)dictionary;
- (PKPassTileValueText)initWithCoder:(id)coder;
- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassTileValueText

- (BOOL)_setUpWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKPassTileValueText;
  if ([(PKPassTileValue *)&v9 _setUpWithDictionary:dictionaryCopy])
  {
    v5 = [dictionaryCopy objectForKey:@"content"];
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

+ (id)createWithContent:(id)content
{
  contentCopy = content;
  if (contentCopy)
  {
    v5 = [PKPassTileValue _createForType:0 resolved:1];
    objc_storeStrong(v5 + 3, content);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)createResolvedValueWithBundle:(id)bundle privateBundle:(id)privateBundle
{
  content = self->_content;
  v14.receiver = self;
  v14.super_class = PKPassTileValueText;
  v7 = content;
  privateBundleCopy = privateBundle;
  bundleCopy = bundle;
  v10 = [(PKPassTileValue *)&v14 createResolvedValueWithBundle:bundleCopy privateBundle:privateBundleCopy];
  v11 = PKLocalizedPassStringForPassBundle(v7, bundleCopy, privateBundleCopy);

  v12 = v10[3];
  v10[3] = v11;

  return v10;
}

- (PKPassTileValueText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPassTileValueText;
  v5 = [(PKPassTileValue *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"content"];
    content = v5->_content;
    v5->_content = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPassTileValueText;
  coderCopy = coder;
  [(PKPassTileValue *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_content forKey:{@"content", v5.receiver, v5.super_class}];
}

- (unint64_t)hash
{
  v4.receiver = self;
  v4.super_class = PKPassTileValueText;
  v5 = [(PKPassTileValue *)&v4 hash];
  v6 = [(NSString *)self->_content hash];
  return SipHash();
}

- (BOOL)_isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = PKPassTileValueText;
  if ([(PKPassTileValue *)&v13 _isEqual:equalCopy])
  {
    v5 = equalCopy;
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