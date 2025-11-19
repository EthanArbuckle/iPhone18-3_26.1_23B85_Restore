@interface FLFollowUpNotification
- (BOOL)_shouldDeliverNotificationWithStringOut:(id *)a3;
- (FLFollowUpNotification)init;
- (FLFollowUpNotification)initWithCoder:(id)a3;
- (double)_creationDateAugmentedRepeatTimer;
- (double)_frequencyDelta;
- (id)_optionsData;
- (id)description;
- (void)_optionsData;
- (void)encodeWithCoder:(id)a3;
- (void)recalculateActionDateToAccountForDelay;
- (void)setForceDelivery:(BOOL)a3;
- (void)set_optionsData:(id)a3;
@end

@implementation FLFollowUpNotification

- (FLFollowUpNotification)init
{
  v8.receiver = self;
  v8.super_class = FLFollowUpNotification;
  v2 = [(FLFollowUpNotification *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    creationDate = v2->_creationDate;
    v2->_creationDate = v3;

    v5 = +[FLFollowUpNotification defaultOptions];
    options = v2->_options;
    v2->_options = v5;
  }

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"_title"];
  [v5 encodeObject:self->_informativeText forKey:@"_informativeText"];
  [v5 encodeObject:self->_subtitleText forKey:@"_subtitleText"];
  [v5 encodeObject:self->_unlockActionLabel forKey:@"_unlockActionLabel"];
  [v5 encodeObject:self->_previousNotificationActionDate forKey:@"_previousNotificationActionDate"];
  [v5 encodeObject:self->_creationDate forKey:@"_creationDate"];
  [v5 encodeObject:self->_activateAction forKey:@"_activateAction"];
  [v5 encodeObject:self->_dismissAction forKey:@"_dismissAction"];
  [v5 encodeObject:self->_clearAction forKey:@"_clearAction"];
  [v5 encodeDouble:@"_frequency" forKey:self->_frequency];
  [v5 encodeInteger:self->_sqlID forKey:@"_sqlID"];
  [v5 encodeDouble:@"_firstNotificationDelay" forKey:self->_firstNotificationDelay];
  [v5 encodeObject:self->_options forKey:@"_options"];
}

- (FLFollowUpNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FLFollowUpNotification *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_informativeText"];
    informativeText = v5->_informativeText;
    v5->_informativeText = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_subtitleText"];
    subtitleText = v5->_subtitleText;
    v5->_subtitleText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_unlockActionLabel"];
    unlockActionLabel = v5->_unlockActionLabel;
    v5->_unlockActionLabel = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_previousNotificationActionDate"];
    previousNotificationActionDate = v5->_previousNotificationActionDate;
    v5->_previousNotificationActionDate = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_creationDate"];
    creationDate = v5->_creationDate;
    v5->_creationDate = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_activateAction"];
    activateAction = v5->_activateAction;
    v5->_activateAction = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dismissAction"];
    dismissAction = v5->_dismissAction;
    v5->_dismissAction = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_clearAction"];
    clearAction = v5->_clearAction;
    v5->_clearAction = v22;

    [v4 decodeDoubleForKey:@"_frequency"];
    v5->_frequency = v24;
    v5->_sqlID = [v4 decodeIntegerForKey:@"_sqlID"];
    [v4 decodeDoubleForKey:@"_firstNotificationDelay"];
    v5->_firstNotificationDelay = v25;
    v26 = MEMORY[0x277CBEB98];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"_options"];
    options = v5->_options;
    v5->_options = v29;
  }

  return v5;
}

- (BOOL)_shouldDeliverNotificationWithStringOut:(id *)a3
{
  [(FLFollowUpNotification *)self _frequencyDelta];
  v6 = v5;
  [(FLFollowUpNotification *)self _creationDateAugmentedRepeatTimer];
  v8 = v7;
  v9 = v7 > 0.0 && (v6 >= v7 || self->_previousNotificationActionDate == 0);
  v10 = v7 == 0.0 && self->_previousNotificationActionDate == 0;
  v11 = [(NSSet *)self->_options containsObject:@"force"]|| v10 || v9;
  if (a3)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v11 & 1];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSSet containsObject:](self->_options, "containsObject:", @"force"}];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_firstNotificationDelay];
    *a3 = objc_msgSend(v12, "stringWithFormat:", @"Delivery State: %@ (force = %@, delta = %@, repeat = %@, delay = %@"), v13, v14, v15, v16, v17;
  }

  return v11 & 1;
}

- (void)setForceDelivery:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  options = self->_options;
  if (a3)
  {
    v5 = [(NSSet *)options setByAddingObject:@"force"];
    v6 = self->_options;
    self->_options = v5;
  }

  else
  {
    v6 = [(NSSet *)options mutableCopy];
    [(NSSet *)v6 removeObject:@"force"];
    v7 = [(NSSet *)v6 copy];
    v8 = self->_options;
    self->_options = v7;
  }

  v9 = _FLLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_options;
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_22E696000, v9, OS_LOG_TYPE_DEFAULT, "Updated options: %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_optionsData
{
  v3 = [(FLFollowUpNotification *)self options];

  if (v3)
  {
    v4 = MEMORY[0x277CCAC58];
    v5 = [(FLFollowUpNotification *)self options];
    v6 = [v5 allObjects];
    v10 = 0;
    v3 = [v4 dataWithPropertyList:v6 format:200 options:0 error:&v10];
    v7 = v10;

    if (!v3)
    {
      v8 = _FLLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpNotification _optionsData];
      }
    }
  }

  return v3;
}

- (void)set_optionsData:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v9];
    v5 = v9;
    v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
    [(FLFollowUpNotification *)self setOptions:v6];

    v7 = [(FLFollowUpNotification *)self options];

    if (!v7)
    {
      v8 = _FLLogSystem();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [FLFollowUpNotification set_optionsData:];
      }
    }
  }
}

- (double)_frequencyDelta
{
  if (!self->_previousNotificationActionDate)
  {
    return 0.0;
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_previousNotificationActionDate];
  v5 = v4;

  return v5;
}

- (double)_creationDateAugmentedRepeatTimer
{
  [(NSDate *)self->_creationDate timeIntervalSinceNow];
  if (fabs(v3) >= 259200.0)
  {
    return self->_frequency * 3.0;
  }

  else
  {
    return self->_frequency;
  }
}

- (void)recalculateActionDateToAccountForDelay
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_previousNotificationActionDate)
  {
    firstNotificationDelay = self->_firstNotificationDelay;
    if (firstNotificationDelay > 0.0)
    {
      frequency = self->_frequency;
      if (frequency > 0.0)
      {
        v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:firstNotificationDelay - frequency];
        previousNotificationActionDate = self->_previousNotificationActionDate;
        self->_previousNotificationActionDate = v5;

        v7 = _FLLogSystem();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = self->_previousNotificationActionDate;
          v10 = 138412290;
          v11 = v8;
          _os_log_impl(&dword_22E696000, v7, OS_LOG_TYPE_DEFAULT, "Adjusted the target notification eligibility date to %@", &v10, 0xCu);
        }
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v8 = 0;
  [(FLFollowUpNotification *)self _shouldDeliverNotificationWithStringOut:&v8];
  v3 = v8;
  v4 = MEMORY[0x277CCACA8];
  v5 = [objc_opt_class() description];
  v6 = [v4 stringWithFormat:@"<%@: %p - title: %@ subtitle: %@ activate: %@ clear: %@ dismiss: %@ previous: %@ created: %@ %@ options: %@>", v5, self, self->_title, self->_subtitleText, self->_activateAction, self->_clearAction, self->_dismissAction, self->_previousNotificationActionDate, self->_creationDate, v3, self->_options];

  return v6;
}

- (void)_optionsData
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_22E696000, v0, v1, "%@: Failed to serialize options for notification %@ with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)set_optionsData:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_22E696000, v0, v1, "%@: Failed to deserialize options for notification %@ with error %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end