@interface ULServiceDescriptor
- (BOOL)isEqual:(id)equal;
- (ULServiceDescriptor)initWithCoder:(id)coder;
- (ULServiceDescriptor)initWithServiceIdentifier:(id)identifier serviceType:(unint64_t)type locationTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ULServiceDescriptor

- (ULServiceDescriptor)initWithServiceIdentifier:(id)identifier serviceType:(unint64_t)type locationTypes:(id)types
{
  identifierCopy = identifier;
  typesCopy = types;
  v14.receiver = self;
  v14.super_class = ULServiceDescriptor;
  v11 = [(ULServiceDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceIdentifier, identifier);
    v12->_serviceType = type;
    objc_storeStrong(&v12->_locationTypes, types);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSUUID *)self->_serviceIdentifier copyWithZone:zone];
  serviceType = self->_serviceType;
  v8 = [(NSArray *)self->_locationTypes copyWithZone:zone];
  v9 = [v5 initWithServiceIdentifier:v6 serviceType:serviceType locationTypes:v8];

  return v9;
}

- (ULServiceDescriptor)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ULServiceDescriptor;
  v5 = [(ULServiceDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    if (v6)
    {
      v7 = objc_opt_self();

      serviceIdentifier = v5->_serviceIdentifier;
      v5->_serviceIdentifier = v7;

      v9 = MEMORY[0x277CBEB98];
      v19[0] = objc_opt_class();
      v19[1] = objc_opt_class();
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v11 = [v9 setWithArray:v10];
      v6 = [coderCopy decodeObjectOfClasses:v11 forKey:@"locationTypes"];

      if (v6)
      {
        v12 = objc_opt_self();

        locationTypes = v5->_locationTypes;
        v5->_locationTypes = v12;

        v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceType"];
        v6 = v14;
        if (v14)
        {
          unsignedIntValue = [(ULServiceDescriptor *)v14 unsignedIntValue];

          v5->_serviceType = unsignedIntValue;
          v6 = v5;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  locationTypes = self->_locationTypes;
  coderCopy = coder;
  [coderCopy encodeObject:locationTypes forKey:@"locationTypes"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_serviceType];
  [coderCopy encodeObject:v6 forKey:@"serviceType"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  serviceType = self->_serviceType;
  if (serviceType > 4)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_2798D2888[serviceType];
  }

  [v6 appendFormat:@", serviceType: %@", v8];
  [v6 appendFormat:@", serviceIdentifier: %@", self->_serviceIdentifier];
  [v6 appendFormat:@", locationTypes: %@", self->_locationTypes];
  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    serviceType = [(ULServiceDescriptor *)self serviceType];
    if (serviceType == [v5 serviceType])
    {
      locationTypes = [(ULServiceDescriptor *)self locationTypes];
      locationTypes2 = [v5 locationTypes];
      if ([locationTypes isEqual:locationTypes2])
      {

        goto LABEL_8;
      }

      locationTypes3 = [(ULServiceDescriptor *)self locationTypes];
      locationTypes4 = [v5 locationTypes];

      if (locationTypes3 == locationTypes4)
      {
LABEL_8:
        serviceIdentifier = [(ULServiceDescriptor *)self serviceIdentifier];
        serviceIdentifier2 = [v5 serviceIdentifier];
        if ([serviceIdentifier isEqual:serviceIdentifier2])
        {

          v9 = 1;
        }

        else
        {
          serviceIdentifier3 = [(ULServiceDescriptor *)self serviceIdentifier];
          serviceIdentifier4 = [v5 serviceIdentifier];
          v9 = serviceIdentifier3 == serviceIdentifier4;
        }

        goto LABEL_11;
      }
    }

    v9 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end