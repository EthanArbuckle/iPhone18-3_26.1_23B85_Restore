@interface HKMedicationScheduleItem
+ (BOOL)isScheduleItemIdentifier:(id)a3 matchingDateTime:(id)a4;
+ (id)makeStableIdentifierFromScheduledDateTime:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HKMedicationScheduleItem)initWithCoder:(id)a3;
- (HKMedicationScheduleItem)initWithScheduledDateTime:(id)a3 notificationSent:(BOOL)a4 doses:(id)a5;
- (id)_dosesDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKMedicationScheduleItem

- (HKMedicationScheduleItem)initWithScheduledDateTime:(id)a3 notificationSent:(BOOL)a4 doses:(id)a5
{
  v8 = a3;
  v9 = a5;
  v18.receiver = self;
  v18.super_class = HKMedicationScheduleItem;
  v10 = [(HKMedicationScheduleItem *)&v18 init];
  if (v10)
  {
    v11 = [HKMedicationScheduleItem makeStableIdentifierFromScheduledDateTime:v8];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [v8 copy];
    scheduledDateTime = v10->_scheduledDateTime;
    v10->_scheduledDateTime = v13;

    v10->_notificationSent = a4;
    v15 = [v9 copy];
    doses = v10->_doses;
    v10->_doses = v15;
  }

  return v10;
}

+ (BOOL)isScheduleItemIdentifier:(id)a3 matchingDateTime:(id)a4
{
  v5 = a3;
  v6 = [HKMedicationScheduleItem makeStableIdentifierFromScheduledDateTime:a4];
  v7 = [v5 isEqualToString:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)v4->_identifier isEqual:self->_identifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)makeStableIdentifierFromScheduledDateTime:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  [a3 timeIntervalSinceReferenceDate];
  return [v3 stringWithFormat:@"%f", v4];
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_scheduledDateTime forKey:@"scheduledDateTime"];
  [v5 encodeBool:self->_notificationSent forKey:@"notificationSent"];
  [v5 encodeObject:self->_doses forKey:@"doses"];
}

- (HKMedicationScheduleItem)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HKMedicationScheduleItem;
  v5 = [(HKMedicationScheduleItem *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDateTime"];
    scheduledDateTime = v5->_scheduledDateTime;
    v5->_scheduledDateTime = v8;

    v5->_notificationSent = [v4 decodeBoolForKey:@"notificationSent"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"doses"];
    doses = v5->_doses;
    v5->_doses = v13;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(HKMedicationScheduleItem *)self identifier];
  v6 = [(HKMedicationScheduleItem *)self scheduledDateTime];
  v7 = [(HKMedicationScheduleItem *)self notificationSent];
  v8 = [(HKMedicationScheduleItem *)self _dosesDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p>: identifier: %@ scheduledDateTime: %@ notificationSent: %i doses:\n%@", v4, self, v5, v6, v7, v8];

  return v9;
}

- (id)_dosesDescription
{
  v1 = a1;
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [MEMORY[0x277CCAB68] string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [v1 doses];
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = MEMORY[0x277CCACA8];
          v9 = [*(*(&v13 + 1) + 8 * i) description];
          v10 = [v8 stringWithFormat:@"%@\n", v9];
          [v2 appendString:v10];
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    v1 = [MEMORY[0x277CCACA8] stringWithString:v2];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v1;
}

@end