@interface BMDistributedContextSubscription
- (BMDistributedContextSubscription)initWithIdentifier:(id)a3 dsl:(id)a4 subscribingDevice:(id)a5 subscribedDevice:(id)a6 configuration:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
- (unint64_t)hash;
@end

@implementation BMDistributedContextSubscription

- (BMDistributedContextSubscription)initWithIdentifier:(id)a3 dsl:(id)a4 subscribingDevice:(id)a5 subscribedDevice:(id)a6 configuration:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = BMDistributedContextSubscription;
  v17 = [(BMDistributedContextSubscription *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v18->_dsl, a4);
    objc_storeStrong(&v18->_subscribingDevice, a5);
    objc_storeStrong(&v18->_subscribedDevice, a6);
    objc_storeStrong(&v18->_configuration, a7);
  }

  return v18;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = BMDistributedContextSubscription;
  v5 = [(BMDistributedContextSubscription *)&v26 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"dsl"];
    v9 = [(NSData *)v8 bmdsl_deserialize];
    dsl = v5->_dsl;
    v5->_dsl = v9;

    v11 = [v4 objectForKeyedSubscript:@"subscribingDevice"];
    subscribingDevice = v5->_subscribingDevice;
    v5->_subscribingDevice = v11;

    v13 = [v4 objectForKeyedSubscript:@"subscribedDevice"];
    subscribedDevice = v5->_subscribedDevice;
    v5->_subscribedDevice = v13;

    v15 = [v4 objectForKeyedSubscript:@"configuration"];
    v16 = [v15 objectForKeyedSubscript:@"oneOff"];

    if ([v16 BOOLValue])
    {
      v17 = 2;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v4 objectForKeyedSubscript:@"configuration"];
    v19 = [v18 objectForKeyedSubscript:@"wakeState"];

    v20 = [v19 BOOLValue];
    v21 = [v4 objectForKeyedSubscript:@"configuration"];
    v22 = [v21 objectForKeyedSubscript:@"lastChangedDate"];

    v23 = [[BMDistributedContextSubscriptionConfiguration alloc] initWithOptions:v17 | v20 lastChangedDate:v22];
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
  v5 = [(BMDSL *)dsl bmdsl_serialize];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CBEA90] data];
  }

  subscribingDevice = self->_subscribingDevice;
  subscribedDevice = self->_subscribedDevice;
  v19[1] = v6;
  v19[2] = subscribingDevice;
  v18[2] = @"subscribingDevice";
  v18[3] = @"subscribedDevice";
  v19[3] = subscribedDevice;
  v18[4] = @"configuration";
  v16[0] = @"wakeState";
  v9 = [(BMDistributedContextSubscriptionConfiguration *)self->_configuration wakeState];
  v17[0] = v9;
  v16[1] = @"oneOff";
  v10 = [(BMDistributedContextSubscriptionConfiguration *)self->_configuration oneOffSubscription];
  v17[1] = v10;
  v16[2] = @"lastChangedDate";
  v11 = [(BMDistributedContextSubscriptionConfiguration *)self->_configuration lastChangedDate];
  v17[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v19[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];

  if (!v5)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifier];
    if ([v6 isEqual:self->_identifier])
    {
      v7 = [v5 subscribingDevice];
      if ([v7 isEqual:self->_subscribingDevice])
      {
        v8 = [v5 subscribedDevice];
        if ([v8 isEqual:self->_subscribedDevice])
        {
          v9 = [v5 configuration];
          v10 = [v9 isEqual:self->_configuration];
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