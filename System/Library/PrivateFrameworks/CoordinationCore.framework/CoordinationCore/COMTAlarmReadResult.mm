@interface COMTAlarmReadResult
- (COMTAlarmReadResult)initWithAlarms:(id)alarms actionIdentifier:(id)identifier;
- (COMTAlarmReadResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTAlarmReadResult

- (COMTAlarmReadResult)initWithAlarms:(id)alarms actionIdentifier:(id)identifier
{
  alarmsCopy = alarms;
  v11.receiver = self;
  v11.super_class = COMTAlarmReadResult;
  v7 = [(COMTResult *)&v11 initWithActionIdentifier:identifier];
  if (v7)
  {
    v8 = [alarmsCopy copy];
    alarms = v7->_alarms;
    v7->_alarms = v8;
  }

  return v7;
}

- (COMTAlarmReadResult)initWithCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = COMTAlarmReadResult;
  v5 = [(COMTResult *)&v24 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"ARA"];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        v14 = 0;
        do
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * v14);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v17 = 0;
            goto LABEL_13;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    alarms = v5->_alarms;
    v5->_alarms = v10;
  }

  v17 = v5;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTAlarmReadResult;
  coderCopy = coder;
  [(COMTResult *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTAlarmReadResult *)self alarms:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"ARA"];
}

@end