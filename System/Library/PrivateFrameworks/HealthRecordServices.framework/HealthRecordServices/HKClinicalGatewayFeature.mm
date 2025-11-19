@interface HKClinicalGatewayFeature
- (BOOL)isEqual:(id)a3;
- (HKClinicalGatewayFeature)init;
- (HKClinicalGatewayFeature)initWithCoder:(id)a3;
- (HKClinicalGatewayFeature)initWithName:(id)a3 minCompatibleAPIVersion:(int64_t)a4 status:(int64_t)a5 interactions:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalGatewayFeature

- (HKClinicalGatewayFeature)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalGatewayFeature)initWithName:(id)a3 minCompatibleAPIVersion:(int64_t)a4 status:(int64_t)a5 interactions:(id)a6
{
  v10 = a3;
  v11 = a6;
  v18.receiver = self;
  v18.super_class = HKClinicalGatewayFeature;
  v12 = [(HKClinicalGatewayFeature *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_minCompatibleAPIVersion = a4;
    v12->_status = a5;
    v15 = [v11 copy];
    interactions = v12->_interactions;
    v12->_interactions = v15;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_21:

      goto LABEL_22;
    }

    name = self->_name;
    v10 = [(HKClinicalGatewayFeature *)v8 name];
    if (name != v10)
    {
      v11 = [(HKClinicalGatewayFeature *)v8 name];
      if (!v11)
      {
        v13 = 0;
        goto LABEL_20;
      }

      v3 = v11;
      v12 = self->_name;
      v4 = [(HKClinicalGatewayFeature *)v8 name];
      if (![(NSString *)v12 isEqualToString:v4])
      {
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    minCompatibleAPIVersion = self->_minCompatibleAPIVersion;
    if (minCompatibleAPIVersion == [(HKClinicalGatewayFeature *)v8 minCompatibleAPIVersion])
    {
      status = self->_status;
      if (status == [(HKClinicalGatewayFeature *)v8 status])
      {
        interactions = self->_interactions;
        v17 = [(HKClinicalGatewayFeature *)v8 interactions];
        v18 = v17;
        if (interactions == v17)
        {

          v13 = 1;
          goto LABEL_18;
        }

        v19 = [(HKClinicalGatewayFeature *)v8 interactions];
        if (v19)
        {
          v20 = v19;
          v21 = self->_interactions;
          v22 = [(HKClinicalGatewayFeature *)v8 interactions];
          v13 = [(NSArray *)v21 isEqualToArray:v22];

          goto LABEL_18;
        }
      }
    }

    v13 = 0;
LABEL_18:
    if (name != v10)
    {
      goto LABEL_19;
    }

LABEL_20:

    goto LABEL_21;
  }

  v13 = 1;
LABEL_22:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeInteger:self->_minCompatibleAPIVersion forKey:@"minCompatibleAPIVersion"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeObject:self->_interactions forKey:@"interactions"];
}

- (HKClinicalGatewayFeature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5 && [v4 containsValueForKey:@"minCompatibleAPIVersion"] && (objc_msgSend(v4, "containsValueForKey:", @"status") & 1) != 0)
  {
    v6 = [v4 decodeIntegerForKey:@"minCompatibleAPIVersion"];
    v7 = [v4 decodeIntegerForKey:@"status"];
    v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"interactions"];
    if (v9)
    {
      self = [(HKClinicalGatewayFeature *)self initWithName:v5 minCompatibleAPIVersion:v6 status:v7 interactions:v9];
      v10 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v10 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

@end