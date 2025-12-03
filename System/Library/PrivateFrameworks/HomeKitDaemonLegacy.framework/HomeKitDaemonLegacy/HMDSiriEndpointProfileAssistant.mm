@interface HMDSiriEndpointProfileAssistant
- (BOOL)containsCharacteristic:(id)characteristic;
- (BOOL)updateCharacteristic:(id)characteristic value:(id)value;
- (HMDSiriEndpointProfileAssistant)initWithCoder:(id)coder;
- (HMDSiriEndpointProfileAssistant)initWithService:(id)service;
- (NSArray)allCharacteristics;
- (NSArray)characteristicsToMonitor;
- (NSNumber)active;
- (NSNumber)identifier;
- (NSString)name;
- (id)_activeCharacteristic;
- (id)_identifierCharacteristic;
- (id)_nameCharacteristic;
- (void)encodeWithCoder:(id)coder;
- (void)setActive:(id)active;
- (void)setIdentifier:(id)identifier;
- (void)setName:(id)name;
@end

@implementation HMDSiriEndpointProfileAssistant

- (HMDSiriEndpointProfileAssistant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMDSiriEndpointProfileAssistant *)self identifier];
  [coderCopy encodeObject:identifier forKey:*MEMORY[0x277CD0FD0]];

  name = [(HMDSiriEndpointProfileAssistant *)self name];
  [coderCopy encodeObject:name forKey:*MEMORY[0x277CD0FD8]];

  active = [(HMDSiriEndpointProfileAssistant *)self active];
  [coderCopy encodeObject:active forKey:*MEMORY[0x277CD0FC8]];
}

- (BOOL)updateCharacteristic:(id)characteristic value:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  if (![(HMDSiriEndpointProfileAssistant *)self containsCharacteristic:characteristicCopy])
  {
    goto LABEL_26;
  }

  type = [characteristicCopy type];
  v9 = [type isEqualToString:*MEMORY[0x277CCF8E8]];

  if (v9)
  {
    v10 = valueCopy;
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

  type2 = [characteristicCopy type];
  v14 = [type2 isEqualToString:*MEMORY[0x277CCF988]];

  if (v14)
  {
    v15 = valueCopy;
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

  type3 = [characteristicCopy type];
  v18 = [type3 isEqualToString:*MEMORY[0x277CCF748]];

  if (!v18)
  {
LABEL_26:
    v25 = 0;
    goto LABEL_27;
  }

  v19 = valueCopy;
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

  integerValue = [v12 integerValue];
  if (integerValue == 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = -1;
  }

  if (integerValue)
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

- (BOOL)containsCharacteristic:(id)characteristic
{
  v30 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  v5 = characteristicCopy;
  if (characteristicCopy)
  {
    service = [characteristicCopy service];
    serviceType = [service serviceType];
    if ([serviceType isEqualToString:@"0000026A-0000-1000-8000-0026BB765291"])
    {
      instanceID = [service instanceID];
      service2 = [(HMDSiriEndpointProfileAssistant *)self service];
      instanceID2 = [service2 instanceID];
      v11 = [instanceID isEqual:instanceID2];

      if (v11)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        service3 = [(HMDSiriEndpointProfileAssistant *)self service];
        characteristics = [service3 characteristics];

        v14 = [characteristics countByEnumeratingWithState:&v25 objects:v29 count:16];
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
                objc_enumerationMutation(characteristics);
              }

              v18 = *(*(&v25 + 1) + 8 * i);
              instanceID3 = [v5 instanceID];
              instanceID4 = [v18 instanceID];
              v21 = [instanceID3 isEqual:instanceID4];

              if (v21)
              {

                v22 = 1;
                goto LABEL_16;
              }
            }

            v15 = [characteristics countByEnumeratingWithState:&v25 objects:v29 count:16];
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
  _identifierCharacteristic = [(HMDSiriEndpointProfileAssistant *)self _identifierCharacteristic];
  if (_identifierCharacteristic)
  {
    [v3 addObject:_identifierCharacteristic];
  }

  _nameCharacteristic = [(HMDSiriEndpointProfileAssistant *)self _nameCharacteristic];

  if (_nameCharacteristic)
  {
    [v3 addObject:_nameCharacteristic];
  }

  _activeCharacteristic = [(HMDSiriEndpointProfileAssistant *)self _activeCharacteristic];

  if (_activeCharacteristic)
  {
    [v3 addObject:_activeCharacteristic];
  }

  v7 = [v3 copy];

  return v7;
}

- (NSArray)characteristicsToMonitor
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
  _activeCharacteristic = [(HMDSiriEndpointProfileAssistant *)self _activeCharacteristic];
  if (_activeCharacteristic)
  {
    [v3 addObject:_activeCharacteristic];
  }

  v5 = [v3 copy];

  return v5;
}

- (void)setActive:(id)active
{
  activeCopy = active;
  os_unfair_lock_lock_with_options();
  v4 = [activeCopy copy];
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

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [identifierCopy copy];
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
  service = [(HMDSiriEndpointProfileAssistant *)self service];
  v3 = [service findCharacteristicWithType:*MEMORY[0x277CCF748]];

  return v3;
}

- (id)_nameCharacteristic
{
  service = [(HMDSiriEndpointProfileAssistant *)self service];
  v3 = [service findCharacteristicWithType:*MEMORY[0x277CCF988]];

  return v3;
}

- (id)_identifierCharacteristic
{
  service = [(HMDSiriEndpointProfileAssistant *)self service];
  v3 = [service findCharacteristicWithType:*MEMORY[0x277CCF8E8]];

  return v3;
}

- (HMDSiriEndpointProfileAssistant)initWithService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = HMDSiriEndpointProfileAssistant;
  v6 = [(HMDSiriEndpointProfileAssistant *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_service, service);
  }

  return v7;
}

@end