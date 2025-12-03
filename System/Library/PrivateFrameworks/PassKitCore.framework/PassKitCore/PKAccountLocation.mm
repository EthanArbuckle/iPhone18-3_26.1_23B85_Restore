@interface PKAccountLocation
- (BOOL)isEqual:(id)equal;
- (PKAccountLocation)initWithApp:(unint64_t)app page:(unint64_t)page;
- (PKAccountLocation)initWithCoder:(id)coder;
- (PKAccountLocation)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountLocation

- (PKAccountLocation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKStringForKey:@"app"];
  v6 = [dictionaryCopy PKStringForKey:@"source"];

  v7 = v5;
  v8 = v7;
  if (v7 == @"wallet")
  {
    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = [@"wallet" isEqualToString:v7];

  if (v9)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_12;
  }

  v11 = v8;
  if (v11 == @"settings" || (v12 = v11, v13 = [@"settings" isEqualToString:v11], v12, (v13 & 1) != 0))
  {
    v10 = 2;
    goto LABEL_12;
  }

  v14 = v12;
  if (v14 == @"walletWatch" || (v15 = v14, v16 = [@"walletWatch" isEqualToString:v14], v15, v16))
  {
    v10 = 3;
  }

  else
  {
LABEL_11:
    v10 = 0;
  }

LABEL_12:

  v17 = v6;
  v18 = v17;
  if (v17 != @"appleCardDashboard")
  {
    if (v17)
    {
      v19 = [@"appleCardDashboard" isEqualToString:v17];

      if (v19)
      {
        goto LABEL_15;
      }

      v21 = v18;
      if (v21 == @"appleCardRewardsAndOffers" || (v22 = v21, v23 = [@"appleCardRewardsAndOffers" isEqualToString:v21], v22, (v23 & 1) != 0))
      {
        v20 = 2;
        goto LABEL_29;
      }

      v24 = v22;
      if (v24 == @"savingsDashboard" || (v25 = v24, v26 = [@"savingsDashboard" isEqualToString:v24], v25, (v26 & 1) != 0))
      {
        v20 = 3;
        goto LABEL_29;
      }

      v27 = v25;
      if (v27 == @"savingsDetails" || (v28 = v27, v29 = [@"savingsDetails" isEqualToString:v27], v28, (v29 & 1) != 0))
      {
        v20 = 4;
        goto LABEL_29;
      }

      v30 = v28;
      if (v30 == @"settings" || (v31 = v30, v32 = [@"settings" isEqualToString:v30], v31, v32))
      {
        v20 = 5;
        goto LABEL_29;
      }
    }

    v20 = 0;
    goto LABEL_29;
  }

LABEL_15:
  v20 = 1;
LABEL_29:

  v33 = [(PKAccountLocation *)self initWithApp:v10 page:v20];
  return v33;
}

- (PKAccountLocation)initWithApp:(unint64_t)app page:(unint64_t)page
{
  v7.receiver = self;
  v7.super_class = PKAccountLocation;
  result = [(PKAccountLocation *)&v7 init];
  if (result)
  {
    result->_app = app;
    result->_page = page;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_app == v5->_app && self->_page == v5->_page;
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  [v3 appendFormat:@"app: '%ld'; ", self->_app];
  [v3 appendFormat:@"page: '%ld'; ", self->_page];
  [v3 appendFormat:@">"];

  return v3;
}

- (PKAccountLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKAccountLocation;
  v5 = [(PKAccountLocation *)&v7 init];
  if (v5)
  {
    v5->_app = [coderCopy decodeIntegerForKey:@"app"];
    v5->_page = [coderCopy decodeIntegerForKey:@"source"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  app = self->_app;
  coderCopy = coder;
  [coderCopy encodeInteger:app forKey:@"app"];
  [coderCopy encodeInteger:self->_page forKey:@"source"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_opt_class() allocWithZone:zone];
  *(result + 1) = self->_app;
  *(result + 2) = self->_page;
  return result;
}

@end