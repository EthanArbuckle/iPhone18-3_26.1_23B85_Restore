@interface ULServiceDescriptor
- (BOOL)isEqual:(id)a3;
- (ULServiceDescriptor)initWithCoder:(id)a3;
- (ULServiceDescriptor)initWithServiceIdentifier:(id)a3 serviceType:(unint64_t)a4 locationTypes:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULServiceDescriptor

- (ULServiceDescriptor)initWithServiceIdentifier:(id)a3 serviceType:(unint64_t)a4 locationTypes:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = ULServiceDescriptor;
  v11 = [(ULServiceDescriptor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_serviceIdentifier, a3);
    v12->_serviceType = a4;
    objc_storeStrong(&v12->_locationTypes, a5);
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSUUID *)self->_serviceIdentifier copyWithZone:a3];
  serviceType = self->_serviceType;
  v8 = [(NSArray *)self->_locationTypes copyWithZone:a3];
  v9 = [v5 initWithServiceIdentifier:v6 serviceType:serviceType locationTypes:v8];

  return v9;
}

- (ULServiceDescriptor)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ULServiceDescriptor;
  v5 = [(ULServiceDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
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
      v6 = [v4 decodeObjectOfClasses:v11 forKey:@"locationTypes"];

      if (v6)
      {
        v12 = objc_opt_self();

        locationTypes = v5->_locationTypes;
        v5->_locationTypes = v12;

        v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceType"];
        v6 = v14;
        if (v14)
        {
          v15 = [(ULServiceDescriptor *)v14 unsignedIntValue];

          v5->_serviceType = v15;
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

- (void)encodeWithCoder:(id)a3
{
  locationTypes = self->_locationTypes;
  v5 = a3;
  [v5 encodeObject:locationTypes forKey:@"locationTypes"];
  [v5 encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_serviceType];
  [v5 encodeObject:v6 forKey:@"serviceType"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ULServiceDescriptor *)self serviceType];
    if (v6 == [v5 serviceType])
    {
      v7 = [(ULServiceDescriptor *)self locationTypes];
      v8 = [v5 locationTypes];
      if ([v7 isEqual:v8])
      {

        goto LABEL_8;
      }

      v10 = [(ULServiceDescriptor *)self locationTypes];
      v11 = [v5 locationTypes];

      if (v10 == v11)
      {
LABEL_8:
        v12 = [(ULServiceDescriptor *)self serviceIdentifier];
        v13 = [v5 serviceIdentifier];
        if ([v12 isEqual:v13])
        {

          v9 = 1;
        }

        else
        {
          v14 = [(ULServiceDescriptor *)self serviceIdentifier];
          v15 = [v5 serviceIdentifier];
          v9 = v14 == v15;
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