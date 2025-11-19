@interface DNDModeConfigurationScheduleTrigger
+ (id)defaultScheduleTrigger;
+ (id)triggerWithClientTrigger:(id)a3 creationDate:(id)a4;
- (BOOL)isEqual:(id)a3;
- (DNDModeConfigurationScheduleTrigger)initWithCoder:(id)a3;
- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)a3 creationDate:(id)a4 enabledSetting:(unint64_t)a5;
- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)a3 enabledSetting:(unint64_t)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDModeConfigurationScheduleTrigger

+ (id)defaultScheduleTrigger
{
  v2 = [DNDModeConfigurationScheduleTrigger alloc];
  v3 = objc_alloc_init(DNDScheduleTimePeriod);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [(DNDModeConfigurationScheduleTrigger *)v2 initWithTimePeriod:v3 creationDate:v4 enabledSetting:0];

  return v5;
}

+ (id)triggerWithClientTrigger:(id)a3 creationDate:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [DNDModeConfigurationScheduleTrigger alloc];
  v8 = [v6 timePeriod];
  v9 = [v6 enabledSetting];

  v10 = [(DNDModeConfigurationScheduleTrigger *)v7 initWithTimePeriod:v8 creationDate:v5 enabledSetting:v9];

  return v10;
}

- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)a3 enabledSetting:(unint64_t)a4
{
  v6 = MEMORY[0x277CBEAA8];
  v7 = a3;
  v8 = [v6 date];
  v9 = [(DNDModeConfigurationScheduleTrigger *)self initWithTimePeriod:v7 creationDate:v8 enabledSetting:a4];

  return v9;
}

- (DNDModeConfigurationScheduleTrigger)initWithTimePeriod:(id)a3 creationDate:(id)a4 enabledSetting:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = DNDModeConfigurationScheduleTrigger;
  v10 = [(DNDModeConfigurationTrigger *)&v16 initWithEnabledSetting:a5];
  if (v10)
  {
    v11 = [v8 copy];
    v12 = v11;
    if (!v11)
    {
      v12 = objc_alloc_init(DNDScheduleTimePeriod);
    }

    objc_storeStrong(&v10->_timePeriod, v12);
    if (!v11)
    {
    }

    v13 = [v9 copy];
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
      v27.super_class = DNDModeConfigurationScheduleTrigger;
      if (![(DNDModeConfigurationTrigger *)&v27 isEqual:v6])
      {
        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }

      v7 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
      v8 = [(DNDModeConfigurationScheduleTrigger *)v6 timePeriod];
      if (v7 != v8)
      {
        v9 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
        if (!v9)
        {
          v13 = 0;
LABEL_26:

          goto LABEL_27;
        }

        v3 = v9;
        v10 = [(DNDModeConfigurationScheduleTrigger *)v6 timePeriod];
        if (!v10)
        {
          v13 = 0;
LABEL_25:

          goto LABEL_26;
        }

        v11 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
        v12 = [(DNDModeConfigurationScheduleTrigger *)v6 timePeriod];
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

      v14 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
      v15 = [(DNDModeConfigurationScheduleTrigger *)v6 creationDate];
      v16 = v15;
      if (v14 == v15)
      {

        v13 = 1;
      }

      else
      {
        v17 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
        if (v17)
        {
          v18 = v17;
          v19 = [(DNDModeConfigurationScheduleTrigger *)v6 creationDate];
          if (v19)
          {
            v22 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
            [(DNDModeConfigurationScheduleTrigger *)v6 creationDate];
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
  v6 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod];
  v7 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
  v8 = [v3 stringWithFormat:@"<%@: %p enabledSetting: %llu; timePeriod: %@; creationDate: %@>", v4, self, v5, v6, v7];;

  return v8;
}

- (DNDModeConfigurationScheduleTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DNDModeConfigurationScheduleTrigger;
  v5 = [(DNDModeConfigurationTrigger *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timePeriod"];
    v7 = [v6 copy];
    timePeriod = v5->_timePeriod;
    v5->_timePeriod = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    v10 = [v9 copy];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = DNDModeConfigurationScheduleTrigger;
  v4 = a3;
  [(DNDModeConfigurationTrigger *)&v7 encodeWithCoder:v4];
  v5 = [(DNDModeConfigurationScheduleTrigger *)self timePeriod:v7.receiver];
  [v4 encodeObject:v5 forKey:@"timePeriod"];

  v6 = [(DNDModeConfigurationScheduleTrigger *)self creationDate];
  [v4 encodeObject:v6 forKey:@"creationDate"];
}

@end