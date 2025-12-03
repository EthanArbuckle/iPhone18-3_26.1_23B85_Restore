@interface MSPSharedTripFetchedCapabilityStatus
- (BOOL)isEffectivelyEqualToStatus:(id)status;
- (BOOL)isEqual:(id)equal;
- (MSPSharedTripFetchedCapabilityStatus)initWithCapabilityType:(unint64_t)type serviceName:(id)name status:(int64_t)status;
- (MSPSharedTripFetchedCapabilityStatus)initWithCoder:(id)coder;
- (id)description;
- (int64_t)status;
- (void)_updateTTL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSPSharedTripFetchedCapabilityStatus

- (MSPSharedTripFetchedCapabilityStatus)initWithCapabilityType:(unint64_t)type serviceName:(id)name status:(int64_t)status
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = MSPSharedTripFetchedCapabilityStatus;
  v9 = [(MSPSharedTripFetchedCapabilityStatus *)&v15 init];
  v10 = v9;
  if (v9)
  {
    v9->_capabilityType = type;
    v11 = [nameCopy copy];
    serviceName = v10->_serviceName;
    v10->_serviceName = v11;

    v10->_status = status;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5[3] == self->_status && (v7 = [v5 isExpired], v7 == -[MSPSharedTripFetchedCapabilityStatus isExpired](self, "isExpired")) && (v8 = objc_msgSend(v6, "capabilityType"), v8 == -[MSPSharedTripFetchedCapabilityStatus capabilityType](self, "capabilityType")))
    {
      serviceName = [v6 serviceName];
      serviceName2 = [(MSPSharedTripFetchedCapabilityStatus *)self serviceName];
      if (serviceName | serviceName2)
      {
        v11 = [serviceName isEqual:serviceName2];
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

- (BOOL)isEffectivelyEqualToStatus:(id)status
{
  statusCopy = status;
  if (statusCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v5 = [statusCopy status], v5 == -[MSPSharedTripFetchedCapabilityStatus status](self, "status")) && (v6 = objc_msgSend(statusCopy, "isExpired"), v6 == -[MSPSharedTripFetchedCapabilityStatus isExpired](self, "isExpired")) && (v7 = objc_msgSend(statusCopy, "capabilityType"), v7 == -[MSPSharedTripFetchedCapabilityStatus capabilityType](self, "capabilityType")))
  {
    serviceName = [statusCopy serviceName];
    serviceName2 = [(MSPSharedTripFetchedCapabilityStatus *)self serviceName];
    if (serviceName | serviceName2)
    {
      v10 = [serviceName isEqual:serviceName2];
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
  capabilityType = [(MSPSharedTripFetchedCapabilityStatus *)self capabilityType];
  if (capabilityType > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_279867DA0[capabilityType];
  }

  serviceName = [(MSPSharedTripFetchedCapabilityStatus *)self serviceName];
  v7 = serviceName;
  if (serviceName)
  {
    v8 = serviceName;
  }

  else
  {
    v8 = @"n/a";
  }

  status = [(MSPSharedTripFetchedCapabilityStatus *)self status];
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

  v13 = [v3 stringWithFormat:@"%@ (%@) <status: %ld, expired: %s, failed: %s, blocked: %s>", v5, v8, status, v10, v11, v12];

  return v13;
}

- (MSPSharedTripFetchedCapabilityStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MSPSharedTripFetchedCapabilityStatus;
  v5 = [(MSPSharedTripFetchedCapabilityStatus *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_capabilityType"];
    v5->_capabilityType = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceName"];
    serviceName = v5->_serviceName;
    v5->_serviceName = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v9 integerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fetchedTimestamp"];
    [v10 doubleValue];
    v5->_fetchedTimestamp = v11;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_ttl"];
    [v12 doubleValue];
    v5->_ttl = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  capabilityType = self->_capabilityType;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:capabilityType];
  [coderCopy encodeObject:v7 forKey:@"_capabilityType"];

  [coderCopy encodeObject:self->_serviceName forKey:@"_serviceName"];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  [coderCopy encodeObject:v8 forKey:@"_status"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fetchedTimestamp];
  [coderCopy encodeObject:v9 forKey:@"_fetchedTimestamp"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ttl];
  [coderCopy encodeObject:v10 forKey:@"_ttl"];
}

@end