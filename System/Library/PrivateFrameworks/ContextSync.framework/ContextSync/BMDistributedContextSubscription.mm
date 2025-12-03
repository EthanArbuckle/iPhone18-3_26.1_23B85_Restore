@interface BMDistributedContextSubscription
- (BMDistributedContextSubscription)initWithIdentifier:(id)identifier dsl:(id)dsl subscribingDevice:(id)device subscribedDevice:(id)subscribedDevice configuration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
- (unint64_t)hash;
@end

@implementation BMDistributedContextSubscription

- (BMDistributedContextSubscription)initWithIdentifier:(id)identifier dsl:(id)dsl subscribingDevice:(id)device subscribedDevice:(id)subscribedDevice configuration:(id)configuration
{
  identifierCopy = identifier;
  dslCopy = dsl;
  deviceCopy = device;
  subscribedDeviceCopy = subscribedDevice;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = BMDistributedContextSubscription;
  v17 = [(BMDistributedContextSubscription *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, identifier);
    objc_storeStrong(&v18->_dsl, dsl);
    objc_storeStrong(&v18->_subscribingDevice, device);
    objc_storeStrong(&v18->_subscribedDevice, subscribedDevice);
    objc_storeStrong(&v18->_configuration, configuration);
  }

  return v18;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v26.receiver = self;
  v26.super_class = BMDistributedContextSubscription;
  v5 = [(BMDistributedContextSubscription *)&v26 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dsl"];
    bmdsl_deserialize = [(NSData *)v8 bmdsl_deserialize];
    dsl = v5->_dsl;
    v5->_dsl = bmdsl_deserialize;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"subscribingDevice"];
    subscribingDevice = v5->_subscribingDevice;
    v5->_subscribingDevice = v11;

    v13 = [dictionaryCopy objectForKeyedSubscript:@"subscribedDevice"];
    subscribedDevice = v5->_subscribedDevice;
    v5->_subscribedDevice = v13;

    v15 = [dictionaryCopy objectForKeyedSubscript:@"configuration"];
    v16 = [v15 objectForKeyedSubscript:@"oneOff"];

    if ([v16 BOOLValue])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"configuration"];
    v19 = [v18 objectForKeyedSubscript:@"wakeState"];

    bOOLValue = [v19 BOOLValue];
    v21 = [dictionaryCopy objectForKeyedSubscript:@"configuration"];
    v22 = [v21 objectForKeyedSubscript:@"lastChangedDate"];

    v23 = [[BMDistributedContextSubscriptionConfiguration alloc] initWithOptions:v17 | bOOLValue lastChangedDate:v22];
    configuration = v5->_configuration;
    v5->_configuration = v23;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v19[5] = *MEMORY[0x277D85DE8];
  identifier = self->_identifier;
  dsl = self->_dsl;
  v19[0] = identifier;
  v18[0] = @"identifier";
  v18[1] = @"dsl";
  bmdsl_serialize = [(BMDSL *)dsl bmdsl_serialize];
  data = bmdsl_serialize;
  if (!bmdsl_serialize)
  {
    data = [MEMORY[0x277CBEA90] data];
  }

  subscribingDevice = self->_subscribingDevice;
  subscribedDevice = self->_subscribedDevice;
  v19[1] = data;
  v19[2] = subscribingDevice;
  v18[2] = @"subscribingDevice";
  v18[3] = @"subscribedDevice";
  v19[3] = subscribedDevice;
  v18[4] = @"configuration";
  v16[0] = @"wakeState";
  wakeState = [(BMDistributedContextSubscriptionConfiguration *)self->_configuration wakeState];
  v17[0] = wakeState;
  v16[1] = @"oneOff";
  oneOffSubscription = [(BMDistributedContextSubscriptionConfiguration *)self->_configuration oneOffSubscription];
  v17[1] = oneOffSubscription;
  v16[2] = @"lastChangedDate";
  lastChangedDate = [(BMDistributedContextSubscriptionConfiguration *)self->_configuration lastChangedDate];
  v17[2] = lastChangedDate;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

  if (!bmdsl_serialize)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    if ([identifier isEqual:self->_identifier])
    {
      subscribingDevice = [v5 subscribingDevice];
      if ([subscribingDevice isEqual:self->_subscribingDevice])
      {
        subscribedDevice = [v5 subscribedDevice];
        if ([subscribedDevice isEqual:self->_subscribedDevice])
        {
          configuration = [v5 configuration];
          v10 = [configuration isEqual:self->_configuration];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_subscribedDevice hash]^ v3;
  v5 = [(NSString *)self->_subscribingDevice hash];
  return v4 ^ v5 ^ [(BMDistributedContextSubscriptionConfiguration *)self->_configuration hash];
}

@end