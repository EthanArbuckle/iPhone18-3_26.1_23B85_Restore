@interface DNDModeConfigurationScheduleTrigger
+ (id)defaultScheduleTrigger;
+ (id)triggerWithClientTrigger:(id)trigger creationDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (DNDModeConfigurationScheduleTrigger)initWithCoder:(id)coder;
- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)period creationDate:(id)date enabledSetting:(unint64_t)setting;
- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)period enabledSetting:(unint64_t)setting;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDModeConfigurationScheduleTrigger

+ (id)defaultScheduleTrigger
{
  v2 = [DNDModeConfigurationScheduleTrigger alloc];
  v3 = objc_alloc_init(DNDScheduleTimePeriod);
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [(DNDModeConfigurationScheduleTrigger *)v2 initWithTimePeriod:v3 creationDate:date enabledSetting:0];

  return v5;
}

+ (id)triggerWithClientTrigger:(id)trigger creationDate:(id)date
{
  dateCopy = date;
  triggerCopy = trigger;
  v7 = [DNDModeConfigurationScheduleTrigger alloc];
  timePeriod = [triggerCopy timePeriod];
  enabledSetting = [triggerCopy enabledSetting];

  v10 = [(DNDModeConfigurationScheduleTrigger *)v7 initWithTimePeriod:timePeriod creationDate:dateCopy enabledSetting:enabledSetting];

  return v10;
}

- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)period enabledSetting:(unint64_t)setting
{
  v6 = MEMORY[0x277CBEAA8];
  periodCopy = period;
  date = [v6 date];
  v9 = [(DNDModeConfigurationScheduleTrigger *)self initWithTimePeriod:periodCopy creationDate:date enabledSetting:setting];

  return v9;
}

- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)period creationDate:(id)date enabledSetting:(unint64_t)setting
{
  periodCopy = period;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = DNDModeConfigurationScheduleTrigger;
  v10 = [(DNDModeConfigurationTrigger *)&v16 initWithEnabledSetting:setting];
  if (v10)
  {
    v11 = [periodCopy copy];
    v12 = v11;
    if (!v11)
    {
      v12 = objc_alloc_init(DNDScheduleTimePeriod);
    }

    objc_storeStrong(&v10->_timePeriod, v12);
    if (!v11)
    {
    }

    v13 = [dateCopy copy];
    creationDate = v10->_creationDate;
    v10->_creationDate = v13;
  }

  return v10;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = DNDModeConfigurationScheduleTrigger;
  v3 = [(DNDModeConfigurationTrigger *)&v6 hash];
  v4 = [(DNDScheduleTimePeriod *)self->_timePeriod hash]^ v3;
  return v4 ^ [(NSDate *)self->_creationDate hash];
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
      v27.super_class = DNDModeConfigurationScheduleTrigger;
      if (![(DNDModeConfigurationTrigger *)&v27 isEqual:v6])
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }

      timePeriod = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
      timePeriod2 = [(DNDModeConfigurationScheduleTrigger *)v6 timePeriod];
      if (timePeriod != timePeriod2)
      {
        timePeriod3 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
        if (!timePeriod3)
        {
          v13 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = timePeriod3;
        timePeriod4 = [(DNDModeConfigurationScheduleTrigger *)v6 timePeriod];
        if (!timePeriod4)
        {
          v13 = 0;
LABEL_25:

          goto LABEL_26;
        }

        timePeriod5 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
        timePeriod6 = [(DNDModeConfigurationScheduleTrigger *)v6 timePeriod];
        if (![timePeriod5 isEqual:timePeriod6])
        {
          v13 = 0;
LABEL_24:

          goto LABEL_25;
        }

        v24 = timePeriod6;
        v25 = timePeriod5;
        v26 = timePeriod4;
      }

      creationDate = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
      creationDate2 = [(DNDModeConfigurationScheduleTrigger *)v6 creationDate];
      v16 = creationDate2;
      if (creationDate == creationDate2)
      {

        v13 = 1;
      }

      else
      {
        creationDate3 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
        if (creationDate3)
        {
          v18 = creationDate3;
          creationDate4 = [(DNDModeConfigurationScheduleTrigger *)v6 creationDate];
          if (creationDate4)
          {
            creationDate5 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
            [(DNDModeConfigurationScheduleTrigger *)v6 creationDate];
            v20 = v23 = v3;
            v13 = [creationDate5 isEqual:v20];

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

      timePeriod5 = v25;
      timePeriod4 = v26;
      timePeriod6 = v24;
      if (timePeriod == timePeriod2)
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
  timePeriod = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
  creationDate = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
  v8 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu; timePeriod: %@; creationDate: %@>", v4, self, enabledSetting, timePeriod, creationDate];;

  return v8;
}

- (DNDModeConfigurationScheduleTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DNDModeConfigurationScheduleTrigger;
  v5 = [(DNDModeConfigurationTrigger *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timePeriod"];
    v7 = [v6 copy];
    timePeriod = v5->_timePeriod;
    v5->_timePeriod = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v10 = [v9 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = DNDModeConfigurationScheduleTrigger;
  coderCopy = coder;
  [(DNDModeConfigurationTrigger *)&v7 encodeWithCoder:coderCopy];
  v5 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"timePeriod"];

  creationDate = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];
}

@end