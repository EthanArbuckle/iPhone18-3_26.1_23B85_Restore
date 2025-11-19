@interface IRNearbyDeviceDO
+ (id)miLoNearbyDeviceDOWithRange:(double)a3 idsIdentifier:(id)a4 mediaRemoteIdentifier:(id)a5 proximityType:(id)a6 measurementDate:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)a3;
- (IRNearbyDeviceDO)initWithCoder:(id)a3;
- (IRNearbyDeviceDO)initWithRange:(double)a3 idsIdentifier:(id)a4 mediaRemoteIdentifier:(id)a5 proximityType:(id)a6 measurementDate:(id)a7;
- (id)copyWithReplacementIdsIdentifier:(id)a3;
- (id)copyWithReplacementMeasurementDate:(id)a3;
- (id)copyWithReplacementMediaRemoteIdentifier:(id)a3;
- (id)copyWithReplacementProximityType:(id)a3;
- (id)copyWithReplacementRange:(double)a3;
- (id)description;
- (id)exportAsDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

  v7 = [(IRNearbyDeviceDO *)self idsIdentifier];
  [v3 setObject:v7 forKeyedSubscript:@"idsIdentifier"];

  v8 = [(IRNearbyDeviceDO *)self mediaRemoteIdentifier];
  [v3 setObject:v8 forKeyedSubscript:@"mediaRemoteIdentifier"];

  v9 = [(IRNearbyDeviceDO *)self proximityType];
  [v3 setObject:v9 forKeyedSubscript:@"proximityType"];

  v10 = [(IRNearbyDeviceDO *)self measurementDate];
  v11 = [v4 stringFromDate:v10];
  [v3 setObject:v11 forKeyedSubscript:@"measurementDate"];

  return v3;
}

- (IRNearbyDeviceDO)initWithRange:(double)a3 idsIdentifier:(id)a4 mediaRemoteIdentifier:(id)a5 proximityType:(id)a6 measurementDate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IRNearbyDeviceDO;
  v17 = [(IRNearbyDeviceDO *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_range = a3;
    objc_storeStrong(&v17->_idsIdentifier, a4);
    objc_storeStrong(&v18->_mediaRemoteIdentifier, a5);
    objc_storeStrong(&v18->_proximityType, a6);
    objc_storeStrong(&v18->_measurementDate, a7);
  }

  return v18;
}

+ (id)miLoNearbyDeviceDOWithRange:(double)a3 idsIdentifier:(id)a4 mediaRemoteIdentifier:(id)a5 proximityType:(id)a6 measurementDate:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [[a1 alloc] initWithRange:v15 idsIdentifier:v14 mediaRemoteIdentifier:v13 proximityType:v12 measurementDate:a3];

  return v16;
}

- (id)copyWithReplacementRange:(double)a3
{
  v5 = objc_alloc(objc_opt_class());
  idsIdentifier = self->_idsIdentifier;
  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  proximityType = self->_proximityType;
  measurementDate = self->_measurementDate;

  return [v5 initWithRange:idsIdentifier idsIdentifier:mediaRemoteIdentifier mediaRemoteIdentifier:proximityType proximityType:measurementDate measurementDate:a3];
}

- (id)copyWithReplacementIdsIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:v4 idsIdentifier:self->_mediaRemoteIdentifier mediaRemoteIdentifier:self->_proximityType proximityType:self->_measurementDate measurementDate:self->_range];

  return v5;
}

- (id)copyWithReplacementMediaRemoteIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:self->_idsIdentifier idsIdentifier:v4 mediaRemoteIdentifier:self->_proximityType proximityType:self->_measurementDate measurementDate:self->_range];

  return v5;
}

- (id)copyWithReplacementProximityType:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:self->_idsIdentifier idsIdentifier:self->_mediaRemoteIdentifier mediaRemoteIdentifier:v4 proximityType:self->_measurementDate measurementDate:self->_range];

  return v5;
}

- (id)copyWithReplacementMeasurementDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithRange:self->_idsIdentifier idsIdentifier:self->_mediaRemoteIdentifier mediaRemoteIdentifier:self->_proximityType proximityType:v4 measurementDate:self->_range];

  return v5;
}

- (BOOL)isEqualToMiLoNearbyDeviceDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_15;
  }

  range = self->_range;
  [v4 range];
  if (range != v7)
  {
    goto LABEL_15;
  }

  v8 = self->_idsIdentifier == 0;
  v9 = [v5 idsIdentifier];
  v10 = v9 != 0;

  if (v8 == v10)
  {
    goto LABEL_15;
  }

  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    v12 = [v5 idsIdentifier];
    v13 = [(NSString *)idsIdentifier isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  v14 = self->_mediaRemoteIdentifier == 0;
  v15 = [v5 mediaRemoteIdentifier];
  v16 = v15 != 0;

  if (v14 == v16)
  {
    goto LABEL_15;
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    v18 = [v5 mediaRemoteIdentifier];
    v19 = [(NSString *)mediaRemoteIdentifier isEqual:v18];

    if (!v19)
    {
      goto LABEL_15;
    }
  }

  v20 = self->_proximityType == 0;
  v21 = [v5 proximityType];
  v22 = v21 != 0;

  if (v20 == v22)
  {
    goto LABEL_15;
  }

  proximityType = self->_proximityType;
  if (proximityType)
  {
    v24 = [v5 proximityType];
    v25 = [(NSString *)proximityType isEqual:v24];

    if (!v25)
    {
      goto LABEL_15;
    }
  }

  v26 = self->_measurementDate == 0;
  v27 = [v5 measurementDate];
  v28 = v27 != 0;

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
      v30 = [v5 measurementDate];
      v31 = [(NSDate *)measurementDate isEqual:v30];
    }

    else
    {
      v31 = 1;
    }
  }

  return v31 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRNearbyDeviceDO *)self isEqualToMiLoNearbyDeviceDO:v5];
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

- (IRNearbyDeviceDO)initWithCoder:(id)a3
{
  v44[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"range"];
  if (v5)
  {
    goto LABEL_2;
  }

  v14 = [v4 error];

  if (!v14)
  {
    if (([v4 containsValueForKey:@"range"] & 1) == 0)
    {
      v43 = *MEMORY[0x277CCA450];
      v44[0] = @"Missing serialized value for IRNearbyDeviceDO.range";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1];
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRNearbyDeviceDOOCNTErrorDomain" code:1 userInfo:v6];
      [v4 failWithError:v8];
      goto LABEL_15;
    }

LABEL_2:
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsIdentifier"];
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
        [v4 failWithError:v13];
LABEL_20:

LABEL_21:
        v15 = 0;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }
    }

    else
    {
      v16 = [v4 error];

      if (v16)
      {
        v15 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaRemoteIdentifier"];
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
        [v4 failWithError:v19];
LABEL_19:

        goto LABEL_20;
      }

LABEL_16:
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"proximityType"];
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
          [v4 failWithError:v23];

          goto LABEL_19;
        }
      }

      else
      {
        v26 = [v4 error];

        if (v26)
        {
          v15 = 0;
          goto LABEL_23;
        }
      }

      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"measurementDate"];
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
          [v4 failWithError:v32];

          goto LABEL_21;
        }
      }

      else
      {
        v33 = [v4 error];

        if (v33)
        {
          goto LABEL_21;
        }
      }

      self = [(IRNearbyDeviceDO *)self initWithRange:v6 idsIdentifier:v8 mediaRemoteIdentifier:v10 proximityType:v11 measurementDate:v5];
      v15 = self;
      goto LABEL_22;
    }

    v20 = [v4 error];

    if (!v20)
    {
      goto LABEL_16;
    }

LABEL_15:
    v15 = 0;
LABEL_24:

    goto LABEL_25;
  }

  v15 = 0;
LABEL_26:

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInt64:self->_range forKey:@"range"];
  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v9 encodeObject:idsIdentifier forKey:@"idsIdentifier"];
  }

  mediaRemoteIdentifier = self->_mediaRemoteIdentifier;
  if (mediaRemoteIdentifier)
  {
    [v9 encodeObject:mediaRemoteIdentifier forKey:@"mediaRemoteIdentifier"];
  }

  proximityType = self->_proximityType;
  v7 = v9;
  if (proximityType)
  {
    [v9 encodeObject:proximityType forKey:@"proximityType"];
    v7 = v9;
  }

  measurementDate = self->_measurementDate;
  if (measurementDate)
  {
    [v9 encodeObject:measurementDate forKey:@"measurementDate"];
    v7 = v9;
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