@interface HKMedicationScheduleItem
+ (BOOL)isScheduleItemIdentifier:(id)identifier matchingDateTime:(id)time;
+ (id)makeStableIdentifierFromScheduledDateTime:(id)time;
- (BOOL)isEqual:(id)equal;
- (HKMedicationScheduleItem)initWithCoder:(id)coder;
- (HKMedicationScheduleItem)initWithScheduledDateTime:(id)time notificationSent:(BOOL)sent doses:(id)doses;
- (id)_dosesDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKMedicationScheduleItem

- (HKMedicationScheduleItem)initWithScheduledDateTime:(id)time notificationSent:(BOOL)sent doses:(id)doses
{
  timeCopy = time;
  dosesCopy = doses;
  v18.receiver = self;
  v18.super_class = HKMedicationScheduleItem;
  v10 = [(HKMedicationScheduleItem *)&v18 init];
  if (v10)
  {
    v11 = [HKMedicationScheduleItem makeStableIdentifierFromScheduledDateTime:timeCopy];
    identifier = v10->_identifier;
    v10->_identifier = v11;

    v13 = [timeCopy copy];
    scheduledDateTime = v10->_scheduledDateTime;
    v10->_scheduledDateTime = v13;

    v10->_notificationSent = sent;
    v15 = [dosesCopy copy];
    doses = v10->_doses;
    v10->_doses = v15;
  }

  return v10;
}

+ (BOOL)isScheduleItemIdentifier:(id)identifier matchingDateTime:(id)time
{
  identifierCopy = identifier;
  v6 = [HKMedicationScheduleItem makeStableIdentifierFromScheduledDateTime:time];
  v7 = [identifierCopy isEqualToString:v6];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(NSString *)equalCopy->_identifier isEqual:self->_identifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (id)makeStableIdentifierFromScheduledDateTime:(id)time
{
  v3 = MEMORY[0x277CCACA8];
  [time timeIntervalSinceReferenceDate];
  return [v3 stringWithFormat:@"%f", v4];
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_scheduledDateTime forKey:@"scheduledDateTime"];
  [coderCopy encodeBool:self->_notificationSent forKey:@"notificationSent"];
  [coderCopy encodeObject:self->_doses forKey:@"doses"];
}

- (HKMedicationScheduleItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = HKMedicationScheduleItem;
  v5 = [(HKMedicationScheduleItem *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"scheduledDateTime"];
    scheduledDateTime = v5->_scheduledDateTime;
    v5->_scheduledDateTime = v8;

    v5->_notificationSent = [coderCopy decodeBoolForKey:@"notificationSent"];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"doses"];
    doses = v5->_doses;
    v5->_doses = v13;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(HKMedicationScheduleItem *)self identifier];
  scheduledDateTime = [(HKMedicationScheduleItem *)self scheduledDateTime];
  notificationSent = [(HKMedicationScheduleItem *)self notificationSent];
  _dosesDescription = [(HKMedicationScheduleItem *)self _dosesDescription];
  v9 = [v3 stringWithFormat:@"<%@: %p>: identifier: %@ scheduledDateTime: %@ notificationSent: %i doses:\n%@", v4, self, identifier, scheduledDateTime, notificationSent, _dosesDescription];

  return v9;
}

- (id)_dosesDescription
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    string = [MEMORY[0x277CCAB68] string];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    doses = [selfCopy doses];
    v4 = [doses countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(doses);
          }

          v8 = MEMORY[0x277CCACA8];
          v9 = [*(*(&v13 + 1) + 8 * i) description];
          v10 = [v8 stringWithFormat:@"%@\n", v9];
          [string appendString:v10];
        }

        v5 = [doses countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v5);
    }

    selfCopy = [MEMORY[0x277CCACA8] stringWithString:string];
  }

  v11 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

@end