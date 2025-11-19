@interface MSPSharedTripFetchedCapabilityStatus
- (BOOL)isEffectivelyEqualToStatus:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MSPSharedTripFetchedCapabilityStatus)initWithCapabilityType:(unint64_t)a3 serviceName:(id)a4 status:(int64_t)a5;
- (MSPSharedTripFetchedCapabilityStatus)initWithCoder:(id)a3;
- (id)description;
- (int64_t)status;
- (void)_updateTTL;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MSPSharedTripFetchedCapabilityStatus

- (MSPSharedTripFetchedCapabilityStatus)initWithCapabilityType:(unint64_t)a3 serviceName:(id)a4 status:(int64_t)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MSPSharedTripFetchedCapabilityStatus;
  v9 = [(MSPSharedTripFetchedCapabilityStatus *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_capabilityType = a3;
    v11 = [v8 copy];
    serviceName = v10->_serviceName;
    v10->_serviceName = v11;

    v10->_status = a5;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10->_fetchedTimestamp = v13;
    [(MSPSharedTripFetchedCapabilityStatus *)v10 _updateTTL];
  }

  return v10;
}

- (void)_updateTTL
{
  if ([(MSPSharedTripFetchedCapabilityStatus *)self isFailedRequest])
  {
    v3 = &GEOConfigMSPShareETAFailedIDSStatusTTL;
  }

  else if ([(MSPSharedTripFetchedCapabilityStatus *)self isBlocked])
  {
    v3 = &GEOConfigMSPShareETABlockedIDSStatusTTL;
  }

  else
  {
    v3 = &GEOConfigMSPShareETAFetchedIDSStatusTTL;
  }

  v4 = *v3;
  v5 = v3[1];
  GEOConfigGetDouble();
  self->_ttl = v6;
}

- (int64_t)status
{
  if (self->_status <= 0xFFFFFFFFFFFFFFFDLL)
  {
    return self->_status;
  }

  else
  {
    return 2;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = v5;
    if (v5[3] == self->_status && (v7 = [v5 isExpired], v7 == -[MSPSharedTripFetchedCapabilityStatus isExpired](self, "isExpired")) && (v8 = objc_msgSend(v6, "capabilityType"), v8 == -[MSPSharedTripFetchedCapabilityStatus capabilityType](self, "capabilityType")))
    {
      v9 = [v6 serviceName];
      v10 = [(MSPSharedTripFetchedCapabilityStatus *)self serviceName];
      if (v9 | v10)
      {
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEffectivelyEqualToStatus:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = [v4 status], v5 == -[MSPSharedTripFetchedCapabilityStatus status](self, "status")) && (v6 = objc_msgSend(v4, "isExpired"), v6 == -[MSPSharedTripFetchedCapabilityStatus isExpired](self, "isExpired")) && (v7 = objc_msgSend(v4, "capabilityType"), v7 == -[MSPSharedTripFetchedCapabilityStatus capabilityType](self, "capabilityType")))
  {
    v8 = [v4 serviceName];
    v9 = [(MSPSharedTripFetchedCapabilityStatus *)self serviceName];
    if (v8 | v9)
    {
      v10 = [v8 isEqual:v9];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MSPSharedTripFetchedCapabilityStatus *)self capabilityType];
  if (v4 > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_279867DA0[v4];
  }

  v6 = [(MSPSharedTripFetchedCapabilityStatus *)self serviceName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"n/a";
  }

  v9 = [(MSPSharedTripFetchedCapabilityStatus *)self status];
  if ([(MSPSharedTripFetchedCapabilityStatus *)self isExpired])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if ([(MSPSharedTripFetchedCapabilityStatus *)self isFailedRequest])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  if ([(MSPSharedTripFetchedCapabilityStatus *)self isBlocked])
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v13 = [v3 stringWithFormat:@"%@ (%@) <status: %ld, expired: %s, failed: %s, blocked: %s>", v5, v8, v9, v10, v11, v12];

  return v13;
}

- (MSPSharedTripFetchedCapabilityStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MSPSharedTripFetchedCapabilityStatus;
  v5 = [(MSPSharedTripFetchedCapabilityStatus *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_capabilityType"];
    v5->_capabilityType = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v9 integerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fetchedTimestamp"];
    [v10 doubleValue];
    v5->_fetchedTimestamp = v11;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_ttl"];
    [v12 doubleValue];
    v5->_ttl = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  capabilityType = self->_capabilityType;
  v6 = a3;
  v7 = [v4 numberWithUnsignedInteger:capabilityType];
  [v6 encodeObject:v7 forKey:@"_capabilityType"];

  [v6 encodeObject:self->_serviceName forKey:@"_serviceName"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  [v6 encodeObject:v8 forKey:@"_status"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fetchedTimestamp];
  [v6 encodeObject:v9 forKey:@"_fetchedTimestamp"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ttl];
  [v6 encodeObject:v10 forKey:@"_ttl"];
}

@end