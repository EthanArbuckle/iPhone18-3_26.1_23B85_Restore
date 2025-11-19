@interface IRServiceDO
+ (IRServiceDO)serviceDOWithLastSeenDate:(id)a3 clientIdentifier:(id)a4 serviceIdentifier:(id)a5 servicePackage:(int64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToServiceDO:(id)a3;
- (IRServiceDO)initWithCoder:(id)a3;
- (IRServiceDO)initWithLastSeenDate:(id)a3 clientIdentifier:(id)a4 serviceIdentifier:(id)a5 servicePackage:(int64_t)a6;
- (id)copyWithReplacementClientIdentifier:(id)a3;
- (id)copyWithReplacementLastSeenDate:(id)a3;
- (id)copyWithReplacementServiceIdentifier:(id)a3;
- (id)copyWithReplacementServicePackage:(int64_t)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IRServiceDO

- (IRServiceDO)initWithLastSeenDate:(id)a3 clientIdentifier:(id)a4 serviceIdentifier:(id)a5 servicePackage:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = IRServiceDO;
  v14 = [(IRServiceDO *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_lastSeenDate, a3);
    objc_storeStrong(&v15->_clientIdentifier, a4);
    objc_storeStrong(&v15->_serviceIdentifier, a5);
    v15->_servicePackage = a6;
  }

  return v15;
}

+ (IRServiceDO)serviceDOWithLastSeenDate:(id)a3 clientIdentifier:(id)a4 serviceIdentifier:(id)a5 servicePackage:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithLastSeenDate:v12 clientIdentifier:v11 serviceIdentifier:v10 servicePackage:a6];

  return v13;
}

- (id)copyWithReplacementLastSeenDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:v4 clientIdentifier:self->_clientIdentifier serviceIdentifier:self->_serviceIdentifier servicePackage:self->_servicePackage];

  return v5;
}

- (id)copyWithReplacementClientIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate clientIdentifier:v4 serviceIdentifier:self->_serviceIdentifier servicePackage:self->_servicePackage];

  return v5;
}

- (id)copyWithReplacementServiceIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithLastSeenDate:self->_lastSeenDate clientIdentifier:self->_clientIdentifier serviceIdentifier:v4 servicePackage:self->_servicePackage];

  return v5;
}

- (id)copyWithReplacementServicePackage:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  lastSeenDate = self->_lastSeenDate;
  clientIdentifier = self->_clientIdentifier;
  serviceIdentifier = self->_serviceIdentifier;

  return [v5 initWithLastSeenDate:lastSeenDate clientIdentifier:clientIdentifier serviceIdentifier:serviceIdentifier servicePackage:a3];
}

- (BOOL)isEqualToServiceDO:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = self->_lastSeenDate == 0;
  v7 = [v4 lastSeenDate];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_12;
  }

  lastSeenDate = self->_lastSeenDate;
  if (lastSeenDate)
  {
    v10 = [v5 lastSeenDate];
    v11 = [(NSDate *)lastSeenDate isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v12 = self->_clientIdentifier == 0;
  v13 = [v5 clientIdentifier];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_12;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    v16 = [v5 clientIdentifier];
    v17 = [(NSString *)clientIdentifier isEqual:v16];

    if (!v17)
    {
      goto LABEL_12;
    }
  }

  v18 = self->_serviceIdentifier == 0;
  v19 = [v5 serviceIdentifier];
  v20 = v19 != 0;

  if (v18 == v20 || (serviceIdentifier = self->_serviceIdentifier) != 0 && ([v5 serviceIdentifier], v22 = objc_claimAutoreleasedReturnValue(), v23 = -[NSString isEqual:](serviceIdentifier, "isEqual:", v22), v22, !v23))
  {
LABEL_12:
    v25 = 0;
  }

  else
  {
    servicePackage = self->_servicePackage;
    v25 = servicePackage == [v5 servicePackage];
  }

  return v25;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IRServiceDO *)self isEqualToServiceDO:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_lastSeenDate hash];
  v4 = [(NSString *)self->_clientIdentifier hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_serviceIdentifier hash];
  return self->_servicePackage - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
}

- (IRServiceDO)initWithCoder:(id)a3
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastSeenDate"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRServiceDO key lastSeenDate (expected %@, decoded %@)", v7, v9, 0];
      v33 = *MEMORY[0x277CCA450];
      v34[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRServiceDOOCNTErrorDomain" code:3 userInfo:v11];
      [v4 failWithError:v12];
LABEL_15:

LABEL_16:
LABEL_17:
      v14 = 0;
LABEL_18:

      goto LABEL_19;
    }

LABEL_6:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientIdentifier"];
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v15 = objc_opt_class();
        v9 = NSStringFromClass(v15);
        v16 = objc_opt_class();
        v10 = NSStringFromClass(v16);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRServiceDO key clientIdentifier (expected %@, decoded %@)", v9, v10, 0];
        v31 = *MEMORY[0x277CCA450];
        v32 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRServiceDOOCNTErrorDomain" code:3 userInfo:v12];
        [v4 failWithError:v17];
LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v18 = [v4 error];

      if (v18)
      {
        v14 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v19 = objc_opt_class();
        v10 = NSStringFromClass(v19);
        v20 = objc_opt_class();
        v11 = NSStringFromClass(v20);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for IRServiceDO key serviceIdentifier (expected %@, decoded %@)", v10, v11, 0];
        v29 = *MEMORY[0x277CCA450];
        v30 = v12;
        v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRServiceDOOCNTErrorDomain" code:3 userInfo:v17];
        [v4 failWithError:v21];

        goto LABEL_14;
      }
    }

    else
    {
      v24 = [v4 error];

      if (v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [v4 decodeInt64ForKey:@"servicePackage"];
    if (v25)
    {
      goto LABEL_23;
    }

    v26 = [v4 error];

    if (v26)
    {
      goto LABEL_17;
    }

    if ([v4 containsValueForKey:@"servicePackage"])
    {
LABEL_23:
      self = [(IRServiceDO *)self initWithLastSeenDate:v5 clientIdentifier:v7 serviceIdentifier:v9 servicePackage:v25];
      v14 = self;
      goto LABEL_18;
    }

    v27 = *MEMORY[0x277CCA450];
    v28 = @"Missing serialized value for IRServiceDO.servicePackage";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"IRServiceDOOCNTErrorDomain" code:1 userInfo:v10];
    [v4 failWithError:v11];
    goto LABEL_16;
  }

  v13 = [v4 error];

  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = 0;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  lastSeenDate = self->_lastSeenDate;
  v8 = v4;
  if (lastSeenDate)
  {
    [v4 encodeObject:lastSeenDate forKey:@"lastSeenDate"];
    v4 = v8;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [v8 encodeObject:clientIdentifier forKey:@"clientIdentifier"];
    v4 = v8;
  }

  serviceIdentifier = self->_serviceIdentifier;
  if (serviceIdentifier)
  {
    [v8 encodeObject:serviceIdentifier forKey:@"serviceIdentifier"];
    v4 = v8;
  }

  [v4 encodeInt64:self->_servicePackage forKey:@"servicePackage"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = *&self->_lastSeenDate;
  serviceIdentifier = self->_serviceIdentifier;
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_servicePackage];
  v6 = [v3 initWithFormat:@"<IRServiceDO | lastSeenDate:%@ clientIdentifier:%@ serviceIdentifier:%@ servicePackage:%@>", v8, serviceIdentifier, v5];

  return v6;
}

@end