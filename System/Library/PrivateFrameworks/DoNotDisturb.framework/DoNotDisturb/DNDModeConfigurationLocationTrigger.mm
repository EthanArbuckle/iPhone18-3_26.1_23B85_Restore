@interface DNDModeConfigurationLocationTrigger
- (BOOL)isEqual:(id)equal;
- (DNDModeConfigurationLocationTrigger)initWithCoder:(id)coder;
- (DNDModeConfigurationLocationTrigger)initWithRegion:(id)region detail:(id)detail enabledSetting:(unint64_t)setting;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeConfigurationLocationTrigger

- (DNDModeConfigurationLocationTrigger)initWithRegion:(id)region detail:(id)detail enabledSetting:(unint64_t)setting
{
  regionCopy = region;
  detailCopy = detail;
  v16.receiver = self;
  v16.super_class = DNDModeConfigurationLocationTrigger;
  v11 = [(DNDModeConfigurationTrigger *)&v16 initWithEnabledSetting:setting];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_region, region);
    v13 = [detailCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v27.receiver = self;
      v27.super_class = DNDModeConfigurationLocationTrigger;
      if (![(DNDModeConfigurationTrigger *)&v27 isEqual:v6])
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }

      region = [(DNDModeConfigurationLocationTrigger *)self region];
      region2 = [(DNDModeConfigurationLocationTrigger *)v6 region];
      if (region != region2)
      {
        region3 = [(DNDModeConfigurationLocationTrigger *)self region];
        if (!region3)
        {
          v13 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = region3;
        region4 = [(DNDModeConfigurationLocationTrigger *)v6 region];
        if (!region4)
        {
          v13 = 0;
LABEL_25:

          goto LABEL_26;
        }

        region5 = [(DNDModeConfigurationLocationTrigger *)self region];
        region6 = [(DNDModeConfigurationLocationTrigger *)v6 region];
        if (![region5 isEqual:region6])
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v24 = region6;
        v25 = region5;
        v26 = region4;
      }

      detail = [(DNDModeConfigurationLocationTrigger *)self detail];
      detail2 = [(DNDModeConfigurationLocationTrigger *)v6 detail];
      v16 = detail2;
      if (detail == detail2)
      {

        v13 = 1;
      }

      else
      {
        detail3 = [(DNDModeConfigurationLocationTrigger *)self detail];
        if (detail3)
        {
          v18 = detail3;
          detail4 = [(DNDModeConfigurationLocationTrigger *)v6 detail];
          if (detail4)
          {
            detail5 = [(DNDModeConfigurationLocationTrigger *)self detail];
            [(DNDModeConfigurationLocationTrigger *)v6 detail];
            v20 = v23 = v3;
            v13 = [detail5 isEqual:v20];

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

      region5 = v25;
      region4 = v26;
      region6 = v24;
      if (region == region2)
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
  enabledSetting = [(DNDModeConfigurationTrigger *)self enabledSetting];
  region = [(DNDModeConfigurationLocationTrigger *)self region];
  detail = [(DNDModeConfigurationLocationTrigger *)self detail];
  v8 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu; region: %@; detail: %@>", v4, self, enabledSetting, region, detail];;

  return v8;
}

- (DNDModeConfigurationLocationTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DNDModeConfigurationLocationTrigger;
  v5 = [(DNDModeConfigurationTrigger *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detail"];
    detail = v5->_detail;
    v5->_detail = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DNDModeConfigurationLocationTrigger;
  coderCopy = coder;
  [(DNDModeConfigurationTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DNDModeConfigurationLocationTrigger *)self region:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"region"];

  detail = [(DNDModeConfigurationLocationTrigger *)self detail];
  [coderCopy encodeObject:detail forKey:@"detail"];
}

@end