@interface DNDModeConfigurationLocationTrigger
- (BOOL)isEqual:(id)a3;
- (DNDModeConfigurationLocationTrigger)initWithCoder:(id)a3;
- (DNDModeConfigurationLocationTrigger)initWithRegion:(id)a3 detail:(id)a4 enabledSetting:(unint64_t)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeConfigurationLocationTrigger

- (DNDModeConfigurationLocationTrigger)initWithRegion:(id)a3 detail:(id)a4 enabledSetting:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = DNDModeConfigurationLocationTrigger;
  v11 = [(DNDModeConfigurationTrigger *)&v16 initWithEnabledSetting:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_region, a3);
    v13 = [v10 copy];
    detail = v12->_detail;
    v12->_detail = v13;
  }

  return v12;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = DNDModeConfigurationLocationTrigger;
  v3 = [(DNDModeConfigurationTrigger *)&v6 hash];
  v4 = [(CLCircularRegion *)self->_region hash]^ v3;
  return v4 ^ [(NSString *)self->_detail hash];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v27.receiver = self;
      v27.super_class = DNDModeConfigurationLocationTrigger;
      if (![(DNDModeConfigurationTrigger *)&v27 isEqual:v6])
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v7 = [(DNDModeConfigurationLocationTrigger *)self region];
      v8 = [(DNDModeConfigurationLocationTrigger *)v6 region];
      if (v7 != v8)
      {
        v9 = [(DNDModeConfigurationLocationTrigger *)self region];
        if (!v9)
        {
          v13 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = v9;
        v10 = [(DNDModeConfigurationLocationTrigger *)v6 region];
        if (!v10)
        {
          v13 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v11 = [(DNDModeConfigurationLocationTrigger *)self region];
        v12 = [(DNDModeConfigurationLocationTrigger *)v6 region];
        if (![v11 isEqual:v12])
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v24 = v12;
        v25 = v11;
        v26 = v10;
      }

      v14 = [(DNDModeConfigurationLocationTrigger *)self detail];
      v15 = [(DNDModeConfigurationLocationTrigger *)v6 detail];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDModeConfigurationLocationTrigger *)self detail];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDModeConfigurationLocationTrigger *)v6 detail];
          if (v19)
          {
            v22 = [(DNDModeConfigurationLocationTrigger *)self detail];
            [(DNDModeConfigurationLocationTrigger *)v6 detail];
            v20 = v23 = v3;
            v13 = [v22 isEqual:v20];

            v3 = v23;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {

          v13 = 0;
        }
      }

      v11 = v25;
      v10 = v26;
      v12 = v24;
      if (v7 == v8)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v13 = 0;
  }

LABEL_28:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DNDModeConfigurationTrigger *)self enabledSetting];
  v6 = [(DNDModeConfigurationLocationTrigger *)self region];
  v7 = [(DNDModeConfigurationLocationTrigger *)self detail];
  v8 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu; region: %@; detail: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (DNDModeConfigurationLocationTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = DNDModeConfigurationLocationTrigger;
  v5 = [(DNDModeConfigurationTrigger *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detail"];
    detail = v5->_detail;
    v5->_detail = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DNDModeConfigurationLocationTrigger;
  v4 = a3;
  [(DNDModeConfigurationTrigger *)&v7 encodeWithCoder:v4];
  v5 = [(DNDModeConfigurationLocationTrigger *)self region:v7.receiver];
  [v4 encodeObject:v5 forKey:@"region"];

  v6 = [(DNDModeConfigurationLocationTrigger *)self detail];
  [v4 encodeObject:v6 forKey:@"detail"];
}

@end