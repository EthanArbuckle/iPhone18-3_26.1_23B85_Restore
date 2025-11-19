@interface PKAccountPhysicalCardShippingUpdate
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPhysicalCardShippingUpdate:(id)a3;
- (NSString)description;
- (NSString)formattedEstimatedDeliveryDate;
- (NSURL)shipmentTrackingURL;
- (PKAccountPhysicalCardShippingUpdate)initWithCoder:(id)a3;
- (PKAccountPhysicalCardShippingUpdate)initWithRecord:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithRecord:(id)a3;
@end

@implementation PKAccountPhysicalCardShippingUpdate

- (PKAccountPhysicalCardShippingUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKAccountPhysicalCardShippingUpdate;
  v5 = [(PKAccountPhysicalCardShippingUpdate *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v6;

    v5->_shippingStatus = [v4 decodeIntegerForKey:@"shippingStatus"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deliveryExceptionReason"];
    localizedDeliveryExceptionReason = v5->_localizedDeliveryExceptionReason;
    v5->_localizedDeliveryExceptionReason = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trackingNumber"];
    trackingNumber = v5->_trackingNumber;
    v5->_trackingNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shippingCompany"];
    shippingCompany = v5->_shippingCompany;
    v5->_shippingCompany = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusTimestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"estimatedDeliveryDate"];
    estimatedDeliveryDate = v5->_estimatedDeliveryDate;
    v5->_estimatedDeliveryDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  physicalCardIdentifier = self->_physicalCardIdentifier;
  v5 = a3;
  [v5 encodeObject:physicalCardIdentifier forKey:@"physicalCardIdentifier"];
  [v5 encodeInteger:self->_shippingStatus forKey:@"shippingStatus"];
  [v5 encodeObject:self->_localizedDeliveryExceptionReason forKey:@"deliveryExceptionReason"];
  [v5 encodeObject:self->_trackingNumber forKey:@"trackingNumber"];
  [v5 encodeObject:self->_shippingCompany forKey:@"shippingCompany"];
  [v5 encodeObject:self->_timestamp forKey:@"statusTimestamp"];
  [v5 encodeObject:self->_estimatedDeliveryDate forKey:@"estimatedDeliveryDate"];
}

- (PKAccountPhysicalCardShippingUpdate)initWithRecord:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = PKAccountPhysicalCardShippingUpdate;
  v5 = [(PKAccountPhysicalCardShippingUpdate *)&v24 init];
  if (v5)
  {
    v6 = [v4 pk_encryptedStringForKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v6;

    v8 = [v4 pk_encryptedStringForKey:@"shippingStatus"];
    v5->_shippingStatus = PKPhysicalCardShippingStatusFromString(v8);

    v9 = [v4 pk_encryptedStringForKey:@"deliveryExceptionReason"];
    localizedDeliveryExceptionReason = v5->_localizedDeliveryExceptionReason;
    v5->_localizedDeliveryExceptionReason = v9;

    v11 = [v4 pk_encryptedStringForKey:@"trackingNumber"];
    trackingNumber = v5->_trackingNumber;
    v5->_trackingNumber = v11;

    v13 = [v4 pk_encryptedStringForKey:@"shippingCompany"];
    shippingCompany = v5->_shippingCompany;
    v5->_shippingCompany = v13;

    v15 = [v4 pk_encryptedDateForKey:@"statusTimestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v15;

    v17 = [v4 pk_encryptedStringForKey:@"estimatedDeliveryDate"];
    if (v17)
    {
      v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v18 setDateFormat:@"yyyy-MM-dd"];
      v19 = [v18 dateFromString:v17];
      v20 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v21 = [v20 components:28 fromDate:v19];
      estimatedDeliveryDate = v5->_estimatedDeliveryDate;
      v5->_estimatedDeliveryDate = v21;
    }
  }

  return v5;
}

- (void)encodeWithRecord:(id)a3
{
  v10 = [a3 encryptedValues];
  if (PKApplePayContainerEnvironment() == 2)
  {
    [v10 setObject:self->_physicalCardIdentifier forKey:@"physicalCardIdentifier"];
    v4 = self->_shippingStatus - 1;
    v5 = v4 > 3 ? 0 : off_1E79E2348[v4];
    [v10 setObject:v5 forKey:@"shippingStatus"];
    [v10 setObject:self->_localizedDeliveryExceptionReason forKey:@"deliveryExceptionReason"];
    [v10 setObject:self->_trackingNumber forKey:@"trackingNumber"];
    [v10 setObject:self->_shippingCompany forKey:@"shippingCompany"];
    [v10 setObject:self->_timestamp forKey:@"statusTimestamp"];
    if (self->_estimatedDeliveryDate)
    {
      v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v7 = [v6 dateFromComponents:self->_estimatedDeliveryDate];

      v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v8 setDateFormat:@"yyyy-MM-dd"];
      v9 = [v8 stringFromDate:v7];
      [v10 setObject:v9 forKey:@"estimatedDeliveryDate"];
    }
  }
}

- (NSURL)shipmentTrackingURL
{
  if ([(NSString *)self->_shippingCompany length]&& [(NSString *)self->_trackingNumber length])
  {
    trackingNumber = self->_trackingNumber;
    v4 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v5 = [(NSString *)trackingNumber stringByAddingPercentEncodingWithAllowedCharacters:v4];

    shippingCompany = self->_shippingCompany;
    v7 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v8 = [(NSString *)shippingCompany stringByAddingPercentEncodingWithAllowedCharacters:v7];

    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"https://trackingshipment.apple.com/?Company=%@&TrackingNumber=%@", v8, v5];
    v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)formattedEstimatedDeliveryDate
{
  if (self->_estimatedDeliveryDate)
  {
    v3 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    v4 = [v3 dateFromComponents:self->_estimatedDeliveryDate];

    v5 = PKMediumDayAndLongMonthStringFromDate(v4, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKAccountPhysicalCardShippingUpdate *)self isEqualToPhysicalCardShippingUpdate:v4];
  }

  return v5;
}

- (BOOL)isEqualToPhysicalCardShippingUpdate:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v6 = self->_physicalCardIdentifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_7;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_36;
    }
  }

  if (self->_shippingStatus != v4[2])
  {
    goto LABEL_36;
  }

  v11 = v4[3];
  v6 = self->_localizedDeliveryExceptionReason;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_7;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_36;
    }
  }

  v14 = v4[4];
  v6 = self->_trackingNumber;
  v15 = v14;
  v8 = v15;
  if (v6 == v15)
  {
  }

  else
  {
    if (!v6 || !v15)
    {
      goto LABEL_7;
    }

    v16 = [(NSString *)v6 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  v17 = v4[5];
  v6 = self->_shippingCompany;
  v18 = v17;
  v8 = v18;
  if (v6 == v18)
  {

    goto LABEL_29;
  }

  if (!v6 || !v18)
  {
LABEL_7:

    goto LABEL_36;
  }

  v19 = [(NSString *)v6 isEqualToString:v18];

  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_29:
  timestamp = self->_timestamp;
  v21 = v4[6];
  if (!timestamp || !v21)
  {
    if (timestamp == v21)
    {
      goto LABEL_32;
    }

LABEL_36:
    v24 = 0;
    goto LABEL_37;
  }

  if (([(NSDate *)timestamp isEqual:?]& 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  estimatedDeliveryDate = self->_estimatedDeliveryDate;
  v23 = v4[7];
  if (estimatedDeliveryDate && v23)
  {
    v24 = [(NSDateComponents *)estimatedDeliveryDate isEqual:?];
  }

  else
  {
    v24 = estimatedDeliveryDate == v23;
  }

LABEL_37:

  return v24;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_physicalCardIdentifier];
  [v3 safelyAddObject:self->_localizedDeliveryExceptionReason];
  [v3 safelyAddObject:self->_trackingNumber];
  [v3 safelyAddObject:self->_shippingCompany];
  [v3 safelyAddObject:self->_timestamp];
  [v3 safelyAddObject:self->_estimatedDeliveryDate];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_shippingStatus - v4 + 32 * v4;

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"physicalCardIdentifier: '%@'; ", self->_physicalCardIdentifier];
  v4 = self->_shippingStatus - 1;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79E2348[v4];
  }

  [v3 appendFormat:@"shippingStatus: '%@'; ", v5];
  [v3 appendFormat:@"deliveryExceptionReason: '%@'; ", self->_localizedDeliveryExceptionReason];
  [v3 appendFormat:@"trackingNumber: '%@'; ", self->_trackingNumber];
  [v3 appendFormat:@"shippingCompany: '%@'; ", self->_shippingCompany];
  [v3 appendFormat:@"timestamp: '%@'; ", self->_timestamp];
  [v3 appendFormat:@"estimatedDeliveryDate: '%@'; ", self->_estimatedDeliveryDate];
  [v3 appendFormat:@">"];

  return v3;
}

@end