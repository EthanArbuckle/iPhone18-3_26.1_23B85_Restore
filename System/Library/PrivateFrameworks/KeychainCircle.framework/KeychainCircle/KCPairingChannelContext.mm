@interface KCPairingChannelContext
- (BOOL)isEqual:(id)equal;
- (KCPairingChannelContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation KCPairingChannelContext

- (KCPairingChannelContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = KCPairingChannelContext;
  v5 = [(KCPairingChannelContext *)&v32 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  model = v5->_model;
  v5->_model = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
  modelVersion = v5->_modelVersion;
  v5->_modelVersion = v8;

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modelClass"];
  modelClass = v5->_modelClass;
  v5->_modelClass = v10;

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
  osVersion = v5->_osVersion;
  v5->_osVersion = v12;

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
  altDSID = v5->_altDSID;
  v5->_altDSID = v14;

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDeviceID"];
  uniqueDeviceID = v5->_uniqueDeviceID;
  v5->_uniqueDeviceID = v16;

  v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueClientID"];
  uniqueClientID = v5->_uniqueClientID;
  v5->_uniqueClientID = v18;

  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  intent = v5->_intent;
  v5->_intent = v20;

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capability"];
  capability = v5->_capability;
  v5->_capability = v22;

  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"flowID"];
  flowID = v5->_flowID;
  v5->_flowID = v24;

  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSessionID"];
  deviceSessionID = v5->_deviceSessionID;
  v5->_deviceSessionID = v26;

  v28 = v5->_intent;
  if (v28)
  {
    if (![(NSString *)v28 isEqualToString:@"none"]&& ![(NSString *)v5->_intent isEqualToString:@"repair"]&& ![(NSString *)v5->_intent isEqualToString:@"userdriven"])
    {
      goto LABEL_11;
    }
  }

  v29 = v5->_capability;
  if (!v29 || [(NSString *)v29 isEqualToString:@"full"]|| [(NSString *)v5->_capability isEqualToString:@"limited"])
  {
LABEL_9:
    v30 = v5;
  }

  else
  {
LABEL_11:
    v30 = 0;
  }

  return v30;
}

- (void)encodeWithCoder:(id)coder
{
  model = self->_model;
  coderCopy = coder;
  [coderCopy encodeObject:model forKey:@"model"];
  [coderCopy encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [coderCopy encodeObject:self->_modelClass forKey:@"modelClass"];
  [coderCopy encodeObject:self->_osVersion forKey:@"osVersion"];
  [coderCopy encodeObject:self->_altDSID forKey:@"altDSID"];
  [coderCopy encodeObject:self->_uniqueDeviceID forKey:@"uniqueDeviceID"];
  [coderCopy encodeObject:self->_uniqueClientID forKey:@"uniqueClientID"];
  [coderCopy encodeObject:self->_intent forKey:@"intent"];
  [coderCopy encodeObject:self->_capability forKey:@"capability"];
  [coderCopy encodeObject:self->_flowID forKey:@"flowID"];
  [coderCopy encodeObject:self->_deviceSessionID forKey:@"deviceSessionID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  model = self->_model;
  if (model | equalCopy[2])
  {
    if (![(NSString *)model isEqual:?])
    {
      goto LABEL_24;
    }
  }

  modelVersion = self->_modelVersion;
  if (modelVersion | equalCopy[3] && ![(NSString *)modelVersion isEqual:?])
  {
    goto LABEL_24;
  }

  modelClass = self->_modelClass;
  if (modelClass | equalCopy[4] && ![(NSString *)modelClass isEqual:?])
  {
    goto LABEL_24;
  }

  if (((osVersion = self->_osVersion, !(osVersion | equalCopy[5])) || [(NSString *)osVersion isEqual:?]) && ((uniqueDeviceID = self->_uniqueDeviceID, !(uniqueDeviceID | equalCopy[6])) || [(NSString *)uniqueDeviceID isEqual:?]) && ((altDSID = self->_altDSID, !(altDSID | equalCopy[8])) || [(NSString *)altDSID isEqual:?]) && ((uniqueClientID = self->_uniqueClientID, !(uniqueClientID | equalCopy[7])) || [(NSString *)uniqueClientID isEqual:?]) && ((intent = self->_intent, !(intent | equalCopy[11])) || [(NSString *)intent isEqual:?]) && ((capability = self->_capability, !(capability | equalCopy[12])) || [(NSString *)capability isEqual:?]) && ((flowID = self->_flowID, !(flowID | equalCopy[9])) || [(NSString *)flowID isEqual:?]))
  {
    if (self->_deviceSessionID | equalCopy[10])
    {
      v15 = [(NSString *)self->_flowID isEqual:?];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
LABEL_24:
    v15 = 0;
  }

  return v15;
}

@end