@interface PKPaymentOffersControllerLoadingDetails
+ (id)loadingDetailsWithError:(id)a3;
+ (id)loadingDetailsWithState:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (PKPaymentOffersControllerLoadingDetails)initWithError:(id)a3;
- (id)description;
- (id)initWitState:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation PKPaymentOffersControllerLoadingDetails

- (id)initWitState:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = PKPaymentOffersControllerLoadingDetails;
  v4 = [(PKPaymentOffersControllerLoadingDetails *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_state = a3;
    v6 = [MEMORY[0x1E695DF00] date];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v6;
  }

  return v5;
}

- (PKPaymentOffersControllerLoadingDetails)initWithError:(id)a3
{
  v5 = a3;
  v6 = [(PKPaymentOffersControllerLoadingDetails *)self initWitState:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 3, a3);
  }

  return v7;
}

+ (id)loadingDetailsWithState:(unint64_t)a3
{
  v3 = [[PKPaymentOffersControllerLoadingDetails alloc] initWitState:a3];

  return v3;
}

+ (id)loadingDetailsWithError:(id)a3
{
  v3 = a3;
  v4 = [[PKPaymentOffersControllerLoadingDetails alloc] initWithError:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        error = self->_error;
        v8 = v6->_error;
        if (error && v8)
        {
          if (([(NSError *)error isEqual:?]& 1) == 0)
          {
            goto LABEL_16;
          }
        }

        else if (error != v8)
        {
          goto LABEL_16;
        }

        lastUpdated = self->_lastUpdated;
        v11 = v6->_lastUpdated;
        if (lastUpdated && v11)
        {
          if (([(NSDate *)lastUpdated isEqual:?]& 1) != 0)
          {
LABEL_14:
            v9 = self->_state == v6->_state;
LABEL_17:

            goto LABEL_18;
          }
        }

        else if (lastUpdated == v11)
        {
          goto LABEL_14;
        }

LABEL_16:
        v9 = 0;
        goto LABEL_17;
      }
    }

    v9 = 0;
  }

LABEL_18:

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_error];
  [v3 safelyAddObject:self->_lastUpdated];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_state - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@: %p; ", objc_opt_class(), self];
  state = self->_state;
  if (state > 3)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = off_1E79CF7F8[state];
  }

  [v3 appendFormat:@"state: '%@'; ", v5];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  if (self->_error)
  {
    [v3 appendFormat:@"error: '%@'; ", self->_error];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end