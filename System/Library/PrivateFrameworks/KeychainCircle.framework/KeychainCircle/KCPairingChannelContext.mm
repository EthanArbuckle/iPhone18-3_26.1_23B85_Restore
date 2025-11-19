@interface KCPairingChannelContext
- (BOOL)isEqual:(id)a3;
- (KCPairingChannelContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation KCPairingChannelContext

- (KCPairingChannelContext)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = KCPairingChannelContext;
  v5 = [(KCPairingChannelContext *)&v32 init];
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"model"];
  model = v5->_model;
  v5->_model = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelVersion"];
  modelVersion = v5->_modelVersion;
  v5->_modelVersion = v8;

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modelClass"];
  modelClass = v5->_modelClass;
  v5->_modelClass = v10;

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersion"];
  osVersion = v5->_osVersion;
  v5->_osVersion = v12;

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
  altDSID = v5->_altDSID;
  v5->_altDSID = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueDeviceID"];
  uniqueDeviceID = v5->_uniqueDeviceID;
  v5->_uniqueDeviceID = v16;

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueClientID"];
  uniqueClientID = v5->_uniqueClientID;
  v5->_uniqueClientID = v18;

  v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intent"];
  intent = v5->_intent;
  v5->_intent = v20;

  v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"capability"];
  capability = v5->_capability;
  v5->_capability = v22;

  v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"flowID"];
  flowID = v5->_flowID;
  v5->_flowID = v24;

  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSessionID"];
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

- (void)encodeWithCoder:(id)a3
{
  model = self->_model;
  v5 = a3;
  [v5 encodeObject:model forKey:@"model"];
  [v5 encodeObject:self->_modelVersion forKey:@"modelVersion"];
  [v5 encodeObject:self->_modelClass forKey:@"modelClass"];
  [v5 encodeObject:self->_osVersion forKey:@"osVersion"];
  [v5 encodeObject:self->_altDSID forKey:@"altDSID"];
  [v5 encodeObject:self->_uniqueDeviceID forKey:@"uniqueDeviceID"];
  [v5 encodeObject:self->_uniqueClientID forKey:@"uniqueClientID"];
  [v5 encodeObject:self->_intent forKey:@"intent"];
  [v5 encodeObject:self->_capability forKey:@"capability"];
  [v5 encodeObject:self->_flowID forKey:@"flowID"];
  [v5 encodeObject:self->_deviceSessionID forKey:@"deviceSessionID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  model = self->_model;
  if (model | v4[2])
  {
    if (![(NSString *)model isEqual:?])
    {
      goto LABEL_24;
    }
  }

  modelVersion = self->_modelVersion;
  if (modelVersion | v4[3] && ![(NSString *)modelVersion isEqual:?])
  {
    goto LABEL_24;
  }

  modelClass = self->_modelClass;
  if (modelClass | v4[4] && ![(NSString *)modelClass isEqual:?])
  {
    goto LABEL_24;
  }

  if (((osVersion = self->_osVersion, !(osVersion | v4[5])) || [(NSString *)osVersion isEqual:?]) && ((uniqueDeviceID = self->_uniqueDeviceID, !(uniqueDeviceID | v4[6])) || [(NSString *)uniqueDeviceID isEqual:?]) && ((altDSID = self->_altDSID, !(altDSID | v4[8])) || [(NSString *)altDSID isEqual:?]) && ((uniqueClientID = self->_uniqueClientID, !(uniqueClientID | v4[7])) || [(NSString *)uniqueClientID isEqual:?]) && ((intent = self->_intent, !(intent | v4[11])) || [(NSString *)intent isEqual:?]) && ((capability = self->_capability, !(capability | v4[12])) || [(NSString *)capability isEqual:?]) && ((flowID = self->_flowID, !(flowID | v4[9])) || [(NSString *)flowID isEqual:?]))
  {
    if (self->_deviceSessionID | v4[10])
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