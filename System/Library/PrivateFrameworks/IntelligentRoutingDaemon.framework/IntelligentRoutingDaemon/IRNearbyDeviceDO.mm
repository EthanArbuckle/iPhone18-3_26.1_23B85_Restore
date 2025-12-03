@interface IRNearbyDeviceDO
+ (id)miLoNearbyDeviceDOWithRange:(double)range idsIdentifier:(id)identifier mediaRemoteIdentifier:(id)remoteIdentifier proximityType:(id)type measurementDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)o;
- (IRNearbyDeviceDO)initWithCoder:(id)coder;
- (IRNearbyDeviceDO)initWithRange:(double)range idsIdentifier:(id)identifier mediaRemoteIdentifier:(id)remoteIdentifier proximityType:(id)type measurementDate:(id)date;
- (id)copyWithReplacementIdsIdentifier:(id)identifier;
- (id)copyWithReplacementMeasurementDate:(id)date;
- (id)copyWithReplacementMediaRemoteIdentifier:(id)identifier;
- (id)copyWithReplacementProximityType:(id)type;
- (id)copyWithReplacementRange:(double)range;
- (id)description;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IRNearbyDeviceDO

- (id)exportAsDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MMM-dd HH:mm:ss.SSSSSS"];
  v5 = MEMORY[0x277CCABB0];
  [(IRNearbyDeviceDO *)self range];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"range"];

  idsIdentifier = [(IRNearbyDeviceDO *)self idsIdentifier];
  [v3 setObject:idsIdentifier forKeyedSubscript:@"idsIdentifier"];

  mediaRemoteIdentifier = [(IRNearbyDeviceDO *)self mediaRemoteIdentifier];
  [v3 setObject:mediaRemoteIdentifier forKeyedSubscript:@"mediaRemoteIdentifier"];

  proximityType = [(IRNearbyDeviceDO *)self proximityType];
  [v3 setObject:proximityType forKeyedSubscript:@"proximityType"];

  measurementDate = [(IRNearbyDeviceDO *)self measurementDate];
  v11 = [v4 stringFromDate:measurementDate];
  [v3 setObject:v11 forKeyedSubscript:@"measurementDate"];

  return v3;
}

- (IRNearbyDeviceDO)initWithRange:(double)range idsIdentifier:(id)identifier mediaRemoteIdentifier:(id)remoteIdentifier proximityType:(id)type measurementDate:(id)date
{
  identifierCopy = identifier;
  remoteIdentifierCopy = remoteIdentifier;
  typeCopy = type;
  dateCopy = date;
  v20.receiver = self;
  v20.super_class = IRNearbyDeviceDO;
  v17 = [(IRNearbyDeviceDO *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_range = range;
    objc_storeStrong(&v17->_idsIdentifier, identifier);
    objc_storeStrong(&v18->_mediaRemoteIdentifier, remoteIdentifier);
    objc_storeStrong(&v18->_proximityType, type);
    objc_storeStrong(&v18->_measurementDate, date);
  }

  return v18;
}

+ (id)miLoNearbyDeviceDOWithRange:(double)range idsIdentifier:(id)identifier mediaRemoteIdentifier:(id)remoteIdentifier proximityType:(id)type measurementDate:(id)date
{
  dateCopy = date;
  typeCopy = type;
  remoteIdentifierCopy = remoteIdentifier;
  identifierCopy = identifier;
  v16 = [[self alloc] initWithRange:identifierCopy idsIdentifier:remoteIdentifierCopy mediaRemoteIdentifier:typeCopy proximityType:dateCopy measurementDate:range];

  return v16;
}

- (id)copyWithReplacementRange:(double)range
{
  v5 = objc_alloc(objc_opt_class());
  idsIdentifier = self->_idsIdentifier;
  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  proximityType = self->_proximityType;
  measurementDate = self->_measurementDate;

  return [v5 initWithRange:idsIdentifier idsIdentifier:mediaRemoteIdentifier mediaRemoteIdentifier:proximityType proximityType:measurementDate measurementDate:range];
}

- (id)copyWithReplacementIdsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:identifierCopy idsIdentifier:self->_mediaRemoteIdentifier mediaRemoteIdentifier:self->_proximityType proximityType:self->_measurementDate measurementDate:self->_range];

  return v5;
}

- (id)copyWithReplacementMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:self->_idsIdentifier idsIdentifier:identifierCopy mediaRemoteIdentifier:self->_proximityType proximityType:self->_measurementDate measurementDate:self->_range];

  return v5;
}

- (id)copyWithReplacementProximityType:(id)type
{
  typeCopy = type;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:self->_idsIdentifier idsIdentifier:self->_mediaRemoteIdentifier mediaRemoteIdentifier:typeCopy proximityType:self->_measurementDate measurementDate:self->_range];

  return v5;
}

- (id)copyWithReplacementMeasurementDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:self->_idsIdentifier idsIdentifier:self->_mediaRemoteIdentifier mediaRemoteIdentifier:self->_proximityType proximityType:dateCopy measurementDate:self->_range];

  return v5;
}

- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)o
{
  oCopy = o;
  v5 = oCopy;
  if (!oCopy)
  {
    goto LABEL_15;
  }

  range = self->_range;
  [oCopy range];
  if (range != v7)
  {
    goto LABEL_15;
  }

  v8 = self->_idsIdentifier == 0;
  idsIdentifier = [v5 idsIdentifier];
  v10 = idsIdentifier != 0;

  if (v8 == v10)
  {
    goto LABEL_15;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    idsIdentifier2 = [v5 idsIdentifier];
    v13 = [(NSString *)idsIdentifier isEqual:idsIdentifier2];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_mediaRemoteIdentifier == 0;
  mediaRemoteIdentifier = [v5 mediaRemoteIdentifier];
  v16 = mediaRemoteIdentifier != 0;

  if (v14 == v16)
  {
    goto LABEL_15;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    mediaRemoteIdentifier2 = [v5 mediaRemoteIdentifier];
    v19 = [(NSString *)mediaRemoteIdentifier isEqual:mediaRemoteIdentifier2];

    if (!v19)
    {
      goto LABEL_15;
    }
  }

  v20 = self->_proximityType == 0;
  proximityType = [v5 proximityType];
  v22 = proximityType != 0;

  if (v20 == v22)
  {
    goto LABEL_15;
  }

  proximityType = self->_proximityType;
  if (proximityType)
  {
    proximityType2 = [v5 proximityType];
    v25 = [(NSString *)proximityType isEqual:proximityType2];

    if (!v25)
    {
      goto LABEL_15;
    }
  }

  v26 = self->_measurementDate == 0;
  measurementDate = [v5 measurementDate];
  v28 = measurementDate != 0;

  if (v26 == v28)
  {
LABEL_15:
    v31 = 0;
  }

  else
  {
    measurementDate = self->_measurementDate;
    if (measurementDate)
    {
      measurementDate2 = [v5 measurementDate];
      v31 = [(NSDate *)measurementDate isEqual:measurementDate2];
    }

    else
    {
      v31 = 1;
    }
  }

  return v31 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRNearbyDeviceDO *)self isEqualToMiLoNearbyDeviceDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  range = self->_range;
  v4 = [(NSString *)self->_idsIdentifier hash]- range + 32 * range;
  v5 = [(NSString *)self->_mediaRemoteIdentifier hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_proximityType hash]- v5 + 32 * v5;
  return [(NSDate *)self->_measurementDate hash]- v6 + 32 * v6;
}

- (IRNearbyDeviceDO)initWithCoder:(id)coder
{
  v44[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"range"];
  if (v5)
  {
    goto LABEL_2;
  }

  error = [coderCopy error];

  if (!error)
  {
    if (([coderCopy containsValueForKey:@"range"] & 1) == 0)
    {
      v43 = *MEMORY[0x277CCA450];
      v44[0] = @"Missing serialized value for IRNearbyDeviceDO.range";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceDOOCNTErrorDomain" code:1 userInfo:v6];
      [coderCopy failWithError:v8];
      goto LABEL_15;
    }

LABEL_2:
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNearbyDeviceDO key idsIdentifier (expected %@, decoded %@)", v8, v10, 0];
        v41 = *MEMORY[0x277CCA450];
        v42 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceDOOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v13];
LABEL_20:

LABEL_21:
        selfCopy = 0;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }
    }

    else
    {
      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = objc_opt_class();
        v10 = NSStringFromClass(v17);
        v18 = objc_opt_class();
        v11 = NSStringFromClass(v18);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNearbyDeviceDO key mediaRemoteIdentifier (expected %@, decoded %@)", v10, v11, 0];
        v39 = *MEMORY[0x277CCA450];
        v40 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
        v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceDOOCNTErrorDomain" code:3 userInfo:v13];
        [coderCopy failWithError:v19];
LABEL_19:

        goto LABEL_20;
      }

LABEL_16:
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proximityType"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = objc_opt_class();
          v11 = NSStringFromClass(v21);
          v22 = objc_opt_class();
          v12 = NSStringFromClass(v22);
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNearbyDeviceDO key proximityType (expected %@, decoded %@)", v11, v12, 0];
          v37 = *MEMORY[0x277CCA450];
          v38 = v13;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceDOOCNTErrorDomain" code:3 userInfo:v19];
          [coderCopy failWithError:v23];

          goto LABEL_19;
        }
      }

      else
      {
        error3 = [coderCopy error];

        if (error3)
        {
          selfCopy = 0;
          goto LABEL_23;
        }
      }

      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"measurementDate"];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = objc_opt_class();
          v34 = NSStringFromClass(v27);
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRNearbyDeviceDO key measurementDate (expected %@, decoded %@)", v34, v29, 0];
          v35 = *MEMORY[0x277CCA450];
          v36 = v30;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v32 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceDOOCNTErrorDomain" code:3 userInfo:v31];
          [coderCopy failWithError:v32];

          goto LABEL_21;
        }
      }

      else
      {
        error4 = [coderCopy error];

        if (error4)
        {
          goto LABEL_21;
        }
      }

      self = [(IRNearbyDeviceDO *)self initWithRange:v6 idsIdentifier:v8 mediaRemoteIdentifier:v10 proximityType:v11 measurementDate:v5];
      selfCopy = self;
      goto LABEL_22;
    }

    error5 = [coderCopy error];

    if (!error5)
    {
      goto LABEL_16;
    }

LABEL_15:
    selfCopy = 0;
LABEL_24:

    goto LABEL_25;
  }

  selfCopy = 0;
LABEL_26:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_range forKey:@"range"];
  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [coderCopy encodeObject:idsIdentifier forKey:@"idsIdentifier"];
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [coderCopy encodeObject:mediaRemoteIdentifier forKey:@"mediaRemoteIdentifier"];
  }

  proximityType = self->_proximityType;
  v7 = coderCopy;
  if (proximityType)
  {
    [coderCopy encodeObject:proximityType forKey:@"proximityType"];
    v7 = coderCopy;
  }

  measurementDate = self->_measurementDate;
  if (measurementDate)
  {
    [coderCopy encodeObject:measurementDate forKey:@"measurementDate"];
    v7 = coderCopy;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_range];
  v5 = [v3 initWithFormat:@"<IRNearbyDeviceDO | range:%@ idsIdentifier:%@ mediaRemoteIdentifier:%@ proximityType:%@ measurementDate:%@>", v4, self->_idsIdentifier, self->_mediaRemoteIdentifier, self->_proximityType, self->_measurementDate];

  return v5;
}

@end