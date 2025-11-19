@interface HMDSiriEndpointProfileAssistant
- (BOOL)containsCharacteristic:(id)a3;
- (BOOL)updateCharacteristic:(id)a3 value:(id)a4;
- (HMDSiriEndpointProfileAssistant)initWithCoder:(id)a3;
- (HMDSiriEndpointProfileAssistant)initWithService:(id)a3;
- (NSArray)allCharacteristics;
- (NSArray)characteristicsToMonitor;
- (NSNumber)active;
- (NSNumber)identifier;
- (NSString)name;
- (id)_activeCharacteristic;
- (id)_identifierCharacteristic;
- (id)_nameCharacteristic;
- (void)encodeWithCoder:(id)a3;
- (void)setActive:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setName:(id)a3;
@end

@implementation HMDSiriEndpointProfileAssistant

- (HMDSiriEndpointProfileAssistant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMDSiriEndpointProfileAssistant *)self identifier];
  [v4 encodeObject:v5 forKey:*MEMORY[0x277CD0FD0]];

  v6 = [(HMDSiriEndpointProfileAssistant *)self name];
  [v4 encodeObject:v6 forKey:*MEMORY[0x277CD0FD8]];

  v7 = [(HMDSiriEndpointProfileAssistant *)self active];
  [v4 encodeObject:v7 forKey:*MEMORY[0x277CD0FC8]];
}

- (BOOL)updateCharacteristic:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(HMDSiriEndpointProfileAssistant *)self containsCharacteristic:v6])
  {
    goto LABEL_26;
  }

  v8 = [v6 type];
  v9 = [v8 isEqualToString:*MEMORY[0x277CCF8E8]];

  if (v9)
  {
    v10 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    [(HMDSiriEndpointProfileAssistant *)self setIdentifier:v12];
    goto LABEL_24;
  }

  v13 = [v6 type];
  v14 = [v13 isEqualToString:*MEMORY[0x277CCF988]];

  if (v14)
  {
    v15 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v12 = v16;

    [(HMDSiriEndpointProfileAssistant *)self setName:v12];
    goto LABEL_24;
  }

  v17 = [v6 type];
  v18 = [v17 isEqualToString:*MEMORY[0x277CCF748]];

  if (!v18)
  {
LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v19 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v12 = v20;

  if (!v12)
  {
    v25 = 0;
    goto LABEL_25;
  }

  v21 = [v12 integerValue];
  if (v21 == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = -1;
  }

  if (v21)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v23];
  [(HMDSiriEndpointProfileAssistant *)self setActive:v24];

LABEL_24:
  v25 = 1;
LABEL_25:

LABEL_27:
  return v25;
}

- (BOOL)containsCharacteristic:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 service];
    v7 = [v6 serviceType];
    if ([v7 isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"])
    {
      v8 = [v6 instanceID];
      v9 = [(HMDSiriEndpointProfileAssistant *)self service];
      v10 = [v9 instanceID];
      v11 = [v8 isEqual:v10];

      if (v11)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = [(HMDSiriEndpointProfileAssistant *)self service];
        v13 = [v12 characteristics];

        v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * i);
              v19 = [v5 instanceID];
              v20 = [v18 instanceID];
              v21 = [v19 isEqual:v20];

              if (v21)
              {

                v22 = 1;
                goto LABEL_16;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
    }

    v22 = 0;
LABEL_16:
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (NSArray)allCharacteristics
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:3];
  v4 = [(HMDSiriEndpointProfileAssistant *)self _identifierCharacteristic];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(HMDSiriEndpointProfileAssistant *)self _nameCharacteristic];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(HMDSiriEndpointProfileAssistant *)self _activeCharacteristic];

  if (v6)
  {
    [v3 addObject:v6];
  }

  v7 = [v3 copy];

  return v7;
}

- (NSArray)characteristicsToMonitor
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v4 = [(HMDSiriEndpointProfileAssistant *)self _activeCharacteristic];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)setActive:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  active = self->_active;
  self->_active = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)active
{
  os_unfair_lock_lock_with_options();
  v3 = self->_active;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)identifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_activeCharacteristic
{
  v2 = [(HMDSiriEndpointProfileAssistant *)self service];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF748]];

  return v3;
}

- (id)_nameCharacteristic
{
  v2 = [(HMDSiriEndpointProfileAssistant *)self service];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF988]];

  return v3;
}

- (id)_identifierCharacteristic
{
  v2 = [(HMDSiriEndpointProfileAssistant *)self service];
  v3 = [v2 findCharacteristicWithType:*MEMORY[0x277CCF8E8]];

  return v3;
}

- (HMDSiriEndpointProfileAssistant)initWithService:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMDSiriEndpointProfileAssistant;
  v6 = [(HMDSiriEndpointProfileAssistant *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, a3);
  }

  return v7;
}

@end