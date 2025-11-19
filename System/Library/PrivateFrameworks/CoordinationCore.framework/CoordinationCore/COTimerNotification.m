@interface COTimerNotification
- (COTimerNotification)initWithCoder:(id)a3;
- (COTimerNotification)initWithTimers:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation COTimerNotification

- (COTimerNotification)initWithTimers:(id)a3
{
  v4 = a3;
  v5 = [(COMeshCommand *)self init];
  if (v5)
  {
    v6 = [v4 copy];
    timers = v5->_timers;
    v5->_timers = v6;
  }

  return v5;
}

- (COTimerNotification)initWithCoder:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = COTimerNotification;
  v5 = [(COMeshCommand *)&v25 initWithCoder:v4];
  if (v5 && [v4 containsValueForKey:@"timers"])
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"timers"];
    timers = v5->_timers;
    v5->_timers = v9;

    v11 = v5->_timers;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v12 = v5->_timers;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = COTimerNotification;
  [(COMeshCommand *)&v6 encodeWithCoder:v4];
  v5 = [(COTimerNotification *)self timers];
  if (v5)
  {
    [v4 encodeObject:v5 forKey:@"timers"];
  }
}

@end