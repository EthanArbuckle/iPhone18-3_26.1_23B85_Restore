@interface IDSStewieSMSConfig
- (BOOL)isEqual:(id)equal;
- (IDSStewieSMSConfig)initWithCoder:(id)coder;
- (IDSStewieSMSConfig)initWithConfig:(id)config withID:(id)d;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSStewieSMSConfig

- (IDSStewieSMSConfig)initWithConfig:(id)config withID:(id)d
{
  configCopy = config;
  dCopy = d;
  v9 = dCopy;
  selfCopy = 0;
  if (configCopy && dCopy)
  {
    v14.receiver = self;
    v14.super_class = IDSStewieSMSConfig;
    v11 = [(IDSStewieSMSConfig *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_config, config);
      objc_storeStrong(p_isa + 1, d);
    }

    self = p_isa;
    selfCopy = self;
  }

  return selfCopy;
}

- (id)description
{
  v3 = objc_opt_class();
  configID = [(IDSStewieSMSConfig *)self configID];
  config = [(IDSStewieSMSConfig *)self config];
  v6 = [NSString stringWithFormat:@"<%@: %p { configID: %@, config: %@}>", v3, self, configID, config];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      config = self->_config;
      config = [(IDSStewieSMSConfig *)v6 config];
      if (config == config || (v9 = self->_config, [(IDSStewieSMSConfig *)v6 config], v3 = objc_claimAutoreleasedReturnValue(), [(NSData *)v9 isEqual:v3]))
      {
        configID = self->_configID;
        configID = [(IDSStewieSMSConfig *)v6 configID];
        if (configID == configID)
        {
          v10 = 1;
        }

        else
        {
          v13 = self->_configID;
          configID2 = [(IDSStewieSMSConfig *)v6 configID];
          v10 = [(NSUUID *)v13 isEqual:configID2];
        }

        if (config == config)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (IDSStewieSMSConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = IDSStewieSMSConfig;
  v5 = [(IDSStewieSMSConfig *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    config = v5->_config;
    v5->_config = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configID"];
    configID = v5->_configID;
    v5->_configID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  config = self->_config;
  coderCopy = coder;
  [coderCopy encodeObject:config forKey:@"config"];
  [coderCopy encodeObject:self->_configID forKey:@"configID"];
}

@end