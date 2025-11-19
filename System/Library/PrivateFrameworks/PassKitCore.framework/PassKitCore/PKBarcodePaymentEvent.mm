@interface PKBarcodePaymentEvent
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToBarcodePaymentEvent:(id)a3;
- (PKBarcodePaymentEvent)init;
- (PKBarcodePaymentEvent)initWithCoder:(id)a3;
- (id)data;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKBarcodePaymentEvent

- (PKBarcodePaymentEvent)init
{
  v3.receiver = self;
  v3.super_class = PKBarcodePaymentEvent;
  result = [(PKBarcodePaymentEvent *)&v3 init];
  if (result)
  {
    result->_version = 1;
  }

  return result;
}

- (id)data
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_version];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v5 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v6 = [v5 stringFromDate:self->_timestamp];
  [v3 setObject:v6 forKeyedSubscript:@"timestamp"];

  [v3 setObject:self->_barcodeIdentifier forKeyedSubscript:@"barcodeIdentifier"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_biometricsChanged];
  [v3 setObject:v7 forKeyedSubscript:@"biometricsChanged"];

  [v3 setObject:self->_deviceAccountIdentifier forKeyedSubscript:@"deviceAccountIdentifier"];
  v8 = [(NSData *)self->_eventMetadata base64EncodedStringWithOptions:0];
  [v3 setObject:v8 forKeyedSubscript:@"eventMetadata"];

  authenticationType = self->_authenticationType;
  if (authenticationType <= 3)
  {
    [v3 setObject:off_1E79DECA0[authenticationType] forKeyedSubscript:@"authenticationType"];
  }

  if (self->_eventType == 1)
  {
    [v3 setObject:@"barcodeDisplayed" forKeyedSubscript:@"eventType"];
  }

  v10 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v3 options:0 error:0];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKBarcodePaymentEvent *)self isEqualToBarcodePaymentEvent:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_timestamp];
  [v3 safelyAddObject:self->_barcodeIdentifier];
  [v3 safelyAddObject:self->_eventMetadata];
  [v3 safelyAddObject:self->_deviceAccountIdentifier];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_version - v4 + 32 * v4;
  v6 = self->_eventType - v5 + 32 * v5;
  v7 = self->_biometricsChanged - v6 + 32 * v6;
  v8 = self->_authenticationType - v7 + 32 * v7;

  return v8;
}

- (PKBarcodePaymentEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKBarcodePaymentEvent;
  v5 = [(PKBarcodePaymentEvent *)&v15 init];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v5->_eventType = [v4 decodeIntegerForKey:@"eventType"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"barcodeIdentifier"];
    barcodeIdentifier = v5->_barcodeIdentifier;
    v5->_barcodeIdentifier = v8;

    v5->_biometricsChanged = [v4 decodeBoolForKey:@"biometricsChanged"];
    v5->_authenticationType = [v4 decodeIntegerForKey:@"authenticationType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventMetadata"];
    eventMetadata = v5->_eventMetadata;
    v5->_eventMetadata = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceAccountIdentifier"];
    deviceAccountIdentifier = v5->_deviceAccountIdentifier;
    v5->_deviceAccountIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeInteger:self->_eventType forKey:@"eventType"];
  [v5 encodeObject:self->_barcodeIdentifier forKey:@"barcodeIdentifier"];
  [v5 encodeBool:self->_biometricsChanged forKey:@"biometricsChanged"];
  [v5 encodeInteger:self->_authenticationType forKey:@"authenticationType"];
  [v5 encodeObject:self->_eventMetadata forKey:@"eventMetadata"];
  [v5 encodeObject:self->_deviceAccountIdentifier forKey:@"deviceAccountIdentifier"];
}

- (BOOL)isEqualToBarcodePaymentEvent:(id)a3
{
  v4 = a3;
  if (self->_version != v4[2])
  {
    goto LABEL_27;
  }

  timestamp = self->_timestamp;
  v6 = v4[3];
  if (timestamp)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (timestamp != v6)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v8 = [(NSDate *)timestamp isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (self->_eventType == v4[4])
  {
    v9 = v4[5];
    v10 = self->_barcodeIdentifier;
    v11 = v9;
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      LOBYTE(v13) = 0;
      if (!v10 || !v11)
      {
LABEL_30:

        goto LABEL_28;
      }

      v13 = [(NSString *)v10 isEqualToString:v11];

      if (!v13)
      {
        goto LABEL_28;
      }
    }

    if (self->_biometricsChanged == *(v4 + 8) && self->_authenticationType == v4[6])
    {
      eventMetadata = self->_eventMetadata;
      v15 = v4[8];
      if (eventMetadata && v15)
      {
        if (([(NSData *)eventMetadata isEqual:?]& 1) != 0)
        {
          goto LABEL_22;
        }
      }

      else if (eventMetadata == v15)
      {
LABEL_22:
        deviceAccountIdentifier = self->_deviceAccountIdentifier;
        v17 = v4[7];
        v10 = deviceAccountIdentifier;
        v18 = v17;
        v12 = v18;
        if (v10 == v18)
        {
          LOBYTE(v13) = 1;
        }

        else
        {
          LOBYTE(v13) = 0;
          if (v10 && v18)
          {
            LOBYTE(v13) = [(NSString *)v10 isEqualToString:v18];
          }
        }

        goto LABEL_30;
      }
    }
  }

LABEL_27:
  LOBYTE(v13) = 0;
LABEL_28:

  return v13;
}

@end