@interface PKDiscoveryCallToActionShelf
- (BOOL)isEqual:(id)a3;
- (PKDiscoveryCallToActionShelf)initWithCoder:(id)a3;
- (PKDiscoveryCallToActionShelf)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setItem:(id)a3;
@end

@implementation PKDiscoveryCallToActionShelf

- (PKDiscoveryCallToActionShelf)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKDiscoveryCallToActionShelf;
  v5 = [(PKDiscoveryCallToActionShelf *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(PKDiscoveryShelf *)v5 setType:4];
    v6->_useImageAsTitle = [v4 PKBoolForKey:@"useImageAsTitle"];
    v7 = [v4 PKDictionaryForKey:@"callToAction"];
    if (v7)
    {
      v8 = [[PKDiscoveryCallToAction alloc] initWithDictionary:v7];
      callToAction = v6->_callToAction;
      v6->_callToAction = v8;
    }
  }

  return v6;
}

- (void)setItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryCallToActionShelf;
  v4 = a3;
  [(PKDiscoveryShelf *)&v5 setItem:v4];
  [(PKDiscoveryCallToAction *)self->_callToAction setItem:v4, v5.receiver, v5.super_class];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKDiscoveryCallToActionShelf;
  if ([(PKDiscoveryShelf *)&v10 isEqual:v4])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      callToAction = self->_callToAction;
      v6 = v4[5];
      if (callToAction)
      {
        v7 = v6 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (v7)
      {
        if (callToAction == v6)
        {
LABEL_12:
          v8 = self->_useImageAsTitle == *(v4 + 32);
          goto LABEL_10;
        }
      }

      else if ([(PKDiscoveryCallToAction *)callToAction isEqual:?])
      {
        goto LABEL_12;
      }
    }
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PKDiscoveryCallToActionShelf;
  v3 = [(PKDiscoveryShelf *)&v8 hash];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v4 safelyAddObject:self->_callToAction];
  v5 = PKCombinedHash(v3, v4);
  v6 = self->_useImageAsTitle - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"%@: '%ld'; ", @"shelfType", -[PKDiscoveryShelf type](self, "type")];
  [v3 appendFormat:@"%@: '%@'; ", @"callToAction", self->_callToAction];
  if (self->_useImageAsTitle)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"%@: '%@'; ", @"useImageAsTitle", v4];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKDiscoveryCallToActionShelf;
  v4 = a3;
  [(PKDiscoveryShelf *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_callToAction forKey:{@"callToAction", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_useImageAsTitle forKey:@"useImageAsTitle"];
}

- (PKDiscoveryCallToActionShelf)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKDiscoveryCallToActionShelf;
  v5 = [(PKDiscoveryShelf *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callToAction"];
    callToAction = v5->_callToAction;
    v5->_callToAction = v6;

    v5->_useImageAsTitle = [v4 decodeBoolForKey:@"useImageAsTitle"];
  }

  return v5;
}

@end