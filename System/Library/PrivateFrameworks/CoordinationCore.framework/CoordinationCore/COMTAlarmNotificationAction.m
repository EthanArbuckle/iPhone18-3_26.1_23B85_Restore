@interface COMTAlarmNotificationAction
- (BOOL)isEqual:(id)a3;
- (COMTAlarmNotificationAction)initWithCoder:(id)a3;
- (COMTAlarmNotificationAction)initWithReason:(id)a3 alarms:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COMTAlarmNotificationAction

- (COMTAlarmNotificationAction)initWithReason:(id)a3 alarms:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = COMTAlarmNotificationAction;
  v8 = [(COMTAction *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    reason = v8->_reason;
    v8->_reason = v9;

    v11 = [v7 copy];
    alarms = v8->_alarms;
    v8->_alarms = v11;
  }

  return v8;
}

- (COMTAlarmNotificationAction)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = COMTAlarmNotificationAction;
  v5 = [(COMTAction *)&v26 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    if (![(NSString *)v5->_reason length])
    {
LABEL_14:
      v19 = 0;
      goto LABEL_15;
    }

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"alarms"];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v11;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      while (2)
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v22 + 1) + 8 * v16);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            goto LABEL_14;
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    alarms = v5->_alarms;
    v5->_alarms = v12;
  }

  v19 = v5;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = COMTAlarmNotificationAction;
  v4 = a3;
  [(COMTAction *)&v7 encodeWithCoder:v4];
  v5 = [(COMTAlarmNotificationAction *)self reason:v7.receiver];
  [v4 encodeObject:v5 forKey:@"reason"];

  v6 = [(COMTAlarmNotificationAction *)self alarms];
  [v4 encodeObject:v6 forKey:@"alarms"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = COMTAlarmNotificationAction;
  if ([(COMTAction *)&v11 isEqual:v4])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(COMTAlarmNotificationAction *)self reason];
      v7 = [v4 reason];
      if ([v6 isEqual:v7])
      {
        v8 = [(COMTAlarmNotificationAction *)self alarms];
        v9 = [v4 alarms];
        v5 = [v8 isEqual:v9];
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end