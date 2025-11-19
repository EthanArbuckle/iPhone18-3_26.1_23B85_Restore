@interface IDSStewieSMSConfig
- (BOOL)isEqual:(id)a3;
- (IDSStewieSMSConfig)initWithCoder:(id)a3;
- (IDSStewieSMSConfig)initWithConfig:(id)a3 withID:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSStewieSMSConfig

- (IDSStewieSMSConfig)initWithConfig:(id)a3 withID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    v14.receiver = self;
    v14.super_class = IDSStewieSMSConfig;
    v11 = [(IDSStewieSMSConfig *)&v14 init];
    p_isa = &v11->super.isa;
    if (v11)
    {
      objc_storeStrong(&v11->_config, a3);
      objc_storeStrong(p_isa + 1, a4);
    }

    self = p_isa;
    v10 = self;
  }

  return v10;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSStewieSMSConfig *)self configID];
  v5 = [(IDSStewieSMSConfig *)self config];
  v6 = [NSString stringWithFormat:@"<%@: %p { configID: %@, config: %@}>", v3, self, v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      config = self->_config;
      v8 = [(IDSStewieSMSConfig *)v6 config];
      if (config == v8 || (v9 = self->_config, [(IDSStewieSMSConfig *)v6 config], v3 = objc_claimAutoreleasedReturnValue(), [(NSData *)v9 isEqual:v3]))
      {
        configID = self->_configID;
        v12 = [(IDSStewieSMSConfig *)v6 configID];
        if (configID == v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = self->_configID;
          v14 = [(IDSStewieSMSConfig *)v6 configID];
          v10 = [(NSUUID *)v13 isEqual:v14];
        }

        if (config == v8)
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

- (IDSStewieSMSConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IDSStewieSMSConfig;
  v5 = [(IDSStewieSMSConfig *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"config"];
    config = v5->_config;
    v5->_config = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"configID"];
    configID = v5->_configID;
    v5->_configID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  config = self->_config;
  v5 = a3;
  [v5 encodeObject:config forKey:@"config"];
  [v5 encodeObject:self->_configID forKey:@"configID"];
}

@end