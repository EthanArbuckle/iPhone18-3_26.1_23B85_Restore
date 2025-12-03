@interface PKAccountPhysicalCardShippingUpdate
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPhysicalCardShippingUpdate:(id)update;
- (NSString)description;
- (NSString)formattedEstimatedDeliveryDate;
- (NSURL)shipmentTrackingURL;
- (PKAccountPhysicalCardShippingUpdate)initWithCoder:(id)coder;
- (PKAccountPhysicalCardShippingUpdate)initWithRecord:(id)record;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithRecord:(id)record;
@end

@implementation PKAccountPhysicalCardShippingUpdate

- (PKAccountPhysicalCardShippingUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKAccountPhysicalCardShippingUpdate;
  v5 = [(PKAccountPhysicalCardShippingUpdate *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v6;

    v5->_shippingStatus = [coderCopy decodeIntegerForKey:@"shippingStatus"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deliveryExceptionReason"];
    localizedDeliveryExceptionReason = v5->_localizedDeliveryExceptionReason;
    v5->_localizedDeliveryExceptionReason = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingNumber"];
    trackingNumber = v5->_trackingNumber;
    v5->_trackingNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingCompany"];
    shippingCompany = v5->_shippingCompany;
    v5->_shippingCompany = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusTimestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"estimatedDeliveryDate"];
    estimatedDeliveryDate = v5->_estimatedDeliveryDate;
    v5->_estimatedDeliveryDate = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  physicalCardIdentifier = self->_physicalCardIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:physicalCardIdentifier forKey:@"physicalCardIdentifier"];
  [coderCopy encodeInteger:self->_shippingStatus forKey:@"shippingStatus"];
  [coderCopy encodeObject:self->_localizedDeliveryExceptionReason forKey:@"deliveryExceptionReason"];
  [coderCopy encodeObject:self->_trackingNumber forKey:@"trackingNumber"];
  [coderCopy encodeObject:self->_shippingCompany forKey:@"shippingCompany"];
  [coderCopy encodeObject:self->_timestamp forKey:@"statusTimestamp"];
  [coderCopy encodeObject:self->_estimatedDeliveryDate forKey:@"estimatedDeliveryDate"];
}

- (PKAccountPhysicalCardShippingUpdate)initWithRecord:(id)record
{
  recordCopy = record;
  v24.receiver = self;
  v24.super_class = PKAccountPhysicalCardShippingUpdate;
  v5 = [(PKAccountPhysicalCardShippingUpdate *)&v24 init];
  if (v5)
  {
    v6 = [recordCopy pk_encryptedStringForKey:@"physicalCardIdentifier"];
    physicalCardIdentifier = v5->_physicalCardIdentifier;
    v5->_physicalCardIdentifier = v6;

    v8 = [recordCopy pk_encryptedStringForKey:@"shippingStatus"];
    v5->_shippingStatus = PKPhysicalCardShippingStatusFromString(v8);

    v9 = [recordCopy pk_encryptedStringForKey:@"deliveryExceptionReason"];
    localizedDeliveryExceptionReason = v5->_localizedDeliveryExceptionReason;
    v5->_localizedDeliveryExceptionReason = v9;

    v11 = [recordCopy pk_encryptedStringForKey:@"trackingNumber"];
    trackingNumber = v5->_trackingNumber;
    v5->_trackingNumber = v11;

    v13 = [recordCopy pk_encryptedStringForKey:@"shippingCompany"];
    shippingCompany = v5->_shippingCompany;
    v5->_shippingCompany = v13;

    v15 = [recordCopy pk_encryptedDateForKey:@"statusTimestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v15;

    v17 = [recordCopy pk_encryptedStringForKey:@"estimatedDeliveryDate"];
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

- (void)encodeWithRecord:(id)record
{
  encryptedValues = [record encryptedValues];
  if (PKApplePayContainerEnvironment() == 2)
  {
    [encryptedValues setObject:self->_physicalCardIdentifier forKey:@"physicalCardIdentifier"];
    v4 = self->_shippingStatus - 1;
    v5 = v4 > 3 ? 0 : off_1E79E2348[v4];
    [encryptedValues setObject:v5 forKey:@"shippingStatus"];
    [encryptedValues setObject:self->_localizedDeliveryExceptionReason forKey:@"deliveryExceptionReason"];
    [encryptedValues setObject:self->_trackingNumber forKey:@"trackingNumber"];
    [encryptedValues setObject:self->_shippingCompany forKey:@"shippingCompany"];
    [encryptedValues setObject:self->_timestamp forKey:@"statusTimestamp"];
    if (self->_estimatedDeliveryDate)
    {
      v6 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
      v7 = [v6 dateFromComponents:self->_estimatedDeliveryDate];

      v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v8 setDateFormat:@"yyyy-MM-dd"];
      v9 = [v8 stringFromDate:v7];
      [encryptedValues setObject:v9 forKey:@"estimatedDeliveryDate"];
    }
  }
}

- (NSURL)shipmentTrackingURL
{
  if ([(NSString *)self->_shippingCompany length]&& [(NSString *)self->_trackingNumber length])
  {
    trackingNumber = self->_trackingNumber;
    uRLQueryAllowedCharacterSet = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v5 = [(NSString *)trackingNumber stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];

    shippingCompany = self->_shippingCompany;
    uRLQueryAllowedCharacterSet2 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v8 = [(NSString *)shippingCompany stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet2];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKAccountPhysicalCardShippingUpdate *)self isEqualToPhysicalCardShippingUpdate:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPhysicalCardShippingUpdate:(id)update
{
  updateCopy = update;
  v5 = updateCopy[1];
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

  if (self->_shippingStatus != updateCopy[2])
  {
    goto LABEL_36;
  }

  v11 = updateCopy[3];
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

  v14 = updateCopy[4];
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

  v17 = updateCopy[5];
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
  v21 = updateCopy[6];
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
  v23 = updateCopy[7];
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