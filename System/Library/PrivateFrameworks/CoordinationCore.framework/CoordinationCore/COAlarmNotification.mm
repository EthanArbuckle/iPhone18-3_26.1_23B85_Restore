@interface COAlarmNotification
- (COAlarmNotification)initWithAlarms:(id)alarms;
- (COAlarmNotification)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COAlarmNotification

- (COAlarmNotification)initWithAlarms:(id)alarms
{
  alarmsCopy = alarms;
  v5 = [(COMeshCommand *)self init];
  if (v5)
  {
    v6 = [alarmsCopy copy];
    alarms = v5->_alarms;
    v5->_alarms = v6;
  }

  return v5;
}

- (COAlarmNotification)initWithCoder:(id)coder
{
  v27 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = COAlarmNotification;
  v5 = [(COMeshCommand *)&v25 initWithCoder:coderCopy];
  if (v5 && [coderCopy containsValueForKey:@"alarms"])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"alarms"];
    alarms = v5->_alarms;
    v5->_alarms = v9;

    v11 = v5->_alarms;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v5->_alarms;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          v16 = 0;
          do
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v21 + 1) + 8 * v16);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v18 = 0;
              goto LABEL_15;
            }

            ++v16;
          }

          while (v14 != v16);
          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v21 objects:v26 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v18 = v5;
    }

    else
    {
      v18 = 0;
      v12 = v5;
    }

LABEL_15:

    v5 = v18;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = COAlarmNotification;
  [(COMeshCommand *)&v6 encodeWithCoder:coderCopy];
  alarms = [(COAlarmNotification *)self alarms];
  if (alarms)
  {
    [coderCopy encodeObject:alarms forKey:@"alarms"];
  }
}

@end