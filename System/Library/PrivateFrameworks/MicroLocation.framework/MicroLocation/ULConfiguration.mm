@interface ULConfiguration
- (BOOL)isEqual:(id)a3;
- (ULConfiguration)initWithCoder:(id)a3;
- (ULConfiguration)initWithContextLayers:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ULConfiguration

- (ULConfiguration)initWithContextLayers:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ULConfiguration;
  v5 = [(ULConfiguration *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ULConfiguration *)v5 setContextLayers:v4];
    [(ULConfiguration *)v6 setPredictionsUpdateType:1];
    [(ULConfiguration *)v6 setDeviceClass:0];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(ULConfiguration *)self contextLayers];
  v6 = [v4 initWithContextLayers:v5];

  [v6 setPredictionsUpdateType:{-[ULConfiguration predictionsUpdateType](self, "predictionsUpdateType")}];
  [v6 setDeviceClass:{-[ULConfiguration deviceClass](self, "deviceClass")}];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  contextLayers = self->_contextLayers;
  v5 = a3;
  [v5 encodeObject:contextLayers forKey:@"contextLayers"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_predictionsUpdateType];
  [v5 encodeObject:v6 forKey:@"predictionsUpdateType"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceClass];
  [v5 encodeObject:v7 forKey:@"deviceClass"];
}

- (ULConfiguration)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ULConfiguration;
  v5 = [(ULConfiguration *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"contextLayers"];

    if (v9)
    {
      v10 = objc_opt_self();

      contextLayers = v5->_contextLayers;
      v5->_contextLayers = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionsUpdateType"];
      v9 = v12;
      if (v12)
      {
        v13 = [(ULConfiguration *)v12 unsignedIntValue];

        v5->_predictionsUpdateType = v13;
        v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
        v9 = v14;
        if (v14)
        {
          v15 = [(ULConfiguration *)v14 unsignedIntValue];

          v5->_deviceClass = v15;
          v9 = v5;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@", contextLayers: %@", self->_contextLayers];
  v7 = ULPredictionsUpdateTypeToString(self->_predictionsUpdateType);
  [v6 appendFormat:@", predictionsUpdateType: %@", v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceClass];
  [v6 appendFormat:@", deviceClass: %@", v8];

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
    v6 = [(ULConfiguration *)self contextLayers];
    v7 = [v5 contextLayers];
    if ([v6 isEqual:v7])
    {
    }

    else
    {
      v9 = [(ULConfiguration *)self contextLayers];
      v10 = [v5 contextLayers];

      if (v9 != v10)
      {
        goto LABEL_8;
      }
    }

    v11 = [(ULConfiguration *)self predictionsUpdateType];
    if (v11 == [v5 predictionsUpdateType])
    {
      v12 = [(ULConfiguration *)self deviceClass];
      v8 = v12 == [v5 deviceClass];
LABEL_9:

      goto LABEL_10;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end