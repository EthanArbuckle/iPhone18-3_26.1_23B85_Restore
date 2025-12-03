@interface HKClinicalGatewayFeature
- (BOOL)isEqual:(id)equal;
- (HKClinicalGatewayFeature)init;
- (HKClinicalGatewayFeature)initWithCoder:(id)coder;
- (HKClinicalGatewayFeature)initWithName:(id)name minCompatibleAPIVersion:(int64_t)version status:(int64_t)status interactions:(id)interactions;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalGatewayFeature)initWithName:(id)name minCompatibleAPIVersion:(int64_t)version status:(int64_t)status interactions:(id)interactions
{
  nameCopy = name;
  interactionsCopy = interactions;
  v18.receiver = self;
  v18.super_class = HKClinicalGatewayFeature;
  v12 = [(HKClinicalGatewayFeature *)&v18 init];
  if (v12)
  {
    v13 = [nameCopy copy];
    name = v12->_name;
    v12->_name = v13;

    v12->_minCompatibleAPIVersion = version;
    v12->_status = status;
    v15 = [interactionsCopy copy];
    interactions = v12->_interactions;
    v12->_interactions = v15;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_21:

      goto LABEL_22;
    }

    name = self->_name;
    name = [(HKClinicalGatewayFeature *)v8 name];
    if (name != name)
    {
      name2 = [(HKClinicalGatewayFeature *)v8 name];
      if (!name2)
      {
        v13 = 0;
        goto LABEL_20;
      }

      v3 = name2;
      v12 = self->_name;
      name3 = [(HKClinicalGatewayFeature *)v8 name];
      if (![(NSString *)v12 isEqualToString:name3])
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
        interactions = [(HKClinicalGatewayFeature *)v8 interactions];
        v18 = interactions;
        if (interactions == interactions)
        {

          v13 = 1;
          goto LABEL_18;
        }

        interactions2 = [(HKClinicalGatewayFeature *)v8 interactions];
        if (interactions2)
        {
          v20 = interactions2;
          v21 = self->_interactions;
          interactions3 = [(HKClinicalGatewayFeature *)v8 interactions];
          v13 = [(NSArray *)v21 isEqualToArray:interactions3];

          goto LABEL_18;
        }
      }
    }

    v13 = 0;
LABEL_18:
    if (name != name)
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

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeInteger:self->_minCompatibleAPIVersion forKey:@"minCompatibleAPIVersion"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_interactions forKey:@"interactions"];
}

- (HKClinicalGatewayFeature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (v5 && [coderCopy containsValueForKey:@"minCompatibleAPIVersion"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"status") & 1) != 0)
  {
    v6 = [coderCopy decodeIntegerForKey:@"minCompatibleAPIVersion"];
    v7 = [coderCopy decodeIntegerForKey:@"status"];
    v8 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"interactions"];
    if (v9)
    {
      self = [(HKClinicalGatewayFeature *)self initWithName:v5 minCompatibleAPIVersion:v6 status:v7 interactions:v9];
      selfCopy = self;
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end