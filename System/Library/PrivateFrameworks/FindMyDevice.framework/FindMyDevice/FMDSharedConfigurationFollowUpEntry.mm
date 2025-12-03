@interface FMDSharedConfigurationFollowUpEntry
- (FMDSharedConfigurationFollowUpEntry)init;
- (FMDSharedConfigurationFollowUpEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDSharedConfigurationFollowUpEntry

- (FMDSharedConfigurationFollowUpEntry)init
{
  v13.receiver = self;
  v13.super_class = FMDSharedConfigurationFollowUpEntry;
  v2 = [(FMDSharedConfigurationFollowUpEntry *)&v13 init];
  v3 = v2;
  if (v2)
  {
    informativeText = v2->_informativeText;
    v2->_informativeText = &stru_1F5A998C8;

    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0xFFFFFFFFLL];
    reminderInMins = v3->_reminderInMins;
    v3->_reminderInMins = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0xFFFFFFFFLL];
    idNumber = v3->_idNumber;
    v3->_idNumber = v7;

    message = v3->_message;
    v3->_message = &stru_1F5A998C8;

    category = v3->_category;
    v3->_category = &stru_1F5A998C8;

    title = v3->_title;
    v3->_title = &stru_1F5A998C8;
  }

  return v3;
}

- (FMDSharedConfigurationFollowUpEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FMDSharedConfigurationFollowUpEntry;
  v5 = [(FMDSharedConfigurationFollowUpEntry *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"informativeText"];
    [(FMDSharedConfigurationFollowUpEntry *)v5 setInformativeText:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"reminderInMins"];
    [(FMDSharedConfigurationFollowUpEntry *)v5 setReminderInMins:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idNumber"];
    [(FMDSharedConfigurationFollowUpEntry *)v5 setIdNumber:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"message"];
    [(FMDSharedConfigurationFollowUpEntry *)v5 setMessage:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    [(FMDSharedConfigurationFollowUpEntry *)v5 setCategory:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(FMDSharedConfigurationFollowUpEntry *)v5 setTitle:v11];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  informativeText = [(FMDSharedConfigurationFollowUpEntry *)self informativeText];
  [coderCopy encodeObject:informativeText forKey:@"informativeText"];

  reminderInMins = [(FMDSharedConfigurationFollowUpEntry *)self reminderInMins];
  [coderCopy encodeObject:reminderInMins forKey:@"reminderInMins"];

  idNumber = [(FMDSharedConfigurationFollowUpEntry *)self idNumber];
  [coderCopy encodeObject:idNumber forKey:@"idNumber"];

  message = [(FMDSharedConfigurationFollowUpEntry *)self message];
  [coderCopy encodeObject:message forKey:@"message"];

  category = [(FMDSharedConfigurationFollowUpEntry *)self category];
  [coderCopy encodeObject:category forKey:@"category"];

  title = [(FMDSharedConfigurationFollowUpEntry *)self title];
  [coderCopy encodeObject:title forKey:@"title"];
}

@end