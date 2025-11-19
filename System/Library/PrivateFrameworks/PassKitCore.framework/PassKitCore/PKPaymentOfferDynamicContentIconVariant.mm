@interface PKPaymentOfferDynamicContentIconVariant
- (BOOL)isEqual:(id)a3;
- (PKPaymentOfferDynamicContentIconVariant)initWithCoder:(id)a3;
- (PKPaymentOfferDynamicContentIconVariant)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)urlForScreenScale:(double)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentOfferDynamicContentIconVariant

- (PKPaymentOfferDynamicContentIconVariant)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKURLForKey:@"url2x"];
  v6 = [v4 PKURLForKey:@"url3x"];

  if (v5 | v6)
  {
    v11.receiver = self;
    v11.super_class = PKPaymentOfferDynamicContentIconVariant;
    v7 = [(PKPaymentOfferDynamicContentIconVariant *)&v11 init];
    p_isa = &v7->super.isa;
    if (v7)
    {
      objc_storeStrong(&v7->_url2x, v5);
      objc_storeStrong(p_isa + 2, v6);
    }

    self = p_isa;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NSURL *)self->_url2x absoluteString];
  [v3 setObject:v4 forKeyedSubscript:@"url2x"];

  v5 = [(NSURL *)self->_url3x absoluteString];
  [v3 setObject:v5 forKeyedSubscript:@"url3x"];

  v6 = [v3 copy];

  return v6;
}

- (id)urlForScreenScale:(double)a3
{
  if (a3 >= 3.0)
  {
    v5 = self->_url3x;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 2.0 && v5 == 0)
  {
    v5 = self->_url2x;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        url2x = self->_url2x;
        v8 = v6->_url2x;
        if (url2x && v8)
        {
          if (([(NSURL *)url2x isEqual:?]& 1) != 0)
          {
LABEL_7:
            url3x = self->_url3x;
            v10 = v6->_url3x;
            if (url3x && v10)
            {
              v11 = [(NSURL *)url3x isEqual:?];
            }

            else
            {
              v11 = url3x == v10;
            }

            goto LABEL_15;
          }
        }

        else if (url2x == v8)
        {
          goto LABEL_7;
        }

        v11 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v11 = 0;
  }

LABEL_16:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_url2x];
  [v3 safelyAddObject:self->_url3x];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  if (self->_url2x)
  {
    [v3 appendFormat:@"url2x: '%@'; ", self->_url2x];
  }

  if (self->_url3x)
  {
    [v3 appendFormat:@"url3x: '%@'; ", self->_url3x];
  }

  [v3 appendFormat:@">"];

  return v3;
}

- (PKPaymentOfferDynamicContentIconVariant)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentOfferDynamicContentIconVariant;
  v5 = [(PKPaymentOfferDynamicContentIconVariant *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url2x"];
    url2x = v5->_url2x;
    v5->_url2x = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url3x"];
    url3x = v5->_url3x;
    v5->_url3x = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  url2x = self->_url2x;
  v5 = a3;
  [v5 encodeObject:url2x forKey:@"url2x"];
  [v5 encodeObject:self->_url3x forKey:@"url3x"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPaymentOfferDynamicContentIconVariant allocWithZone:](PKPaymentOfferDynamicContentIconVariant init];
  v6 = [(NSURL *)self->_url2x copyWithZone:a3];
  url2x = v5->_url2x;
  v5->_url2x = v6;

  v8 = [(NSURL *)self->_url3x copyWithZone:a3];
  url3x = v5->_url3x;
  v5->_url3x = v8;

  return v5;
}

@end