@interface CADCalendarItemsWithExternalIdentifierPredicate
- (CADCalendarItemsWithExternalIdentifierPredicate)initWithCoder:(id)coder;
- (CADCalendarItemsWithExternalIdentifierPredicate)initWithExternalIdentifier:(id)identifier entityType:(int)type;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADCalendarItemsWithExternalIdentifierPredicate

- (CADCalendarItemsWithExternalIdentifierPredicate)initWithExternalIdentifier:(id)identifier entityType:(int)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = CADCalendarItemsWithExternalIdentifierPredicate;
  v7 = [(CADCalendarItemsWithExternalIdentifierPredicate *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copy];
    externalIdentifier = v7->_externalIdentifier;
    v7->_externalIdentifier = v8;

    v7->_entityType = type;
    [(CADEventPredicate *)v7 setExcludeSkippedReminders:0];
  }

  return v7;
}

- (CADCalendarItemsWithExternalIdentifierPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CADCalendarItemsWithExternalIdentifierPredicate;
  v5 = [(CADEventPredicate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalIdentifier"];
    v7 = [v6 copy];
    externalIdentifier = v5->_externalIdentifier;
    v5->_externalIdentifier = v7;

    v5->_entityType = [coderCopy decodeIntegerForKey:@"entityType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADCalendarItemsWithExternalIdentifierPredicate;
  coderCopy = coder;
  [(CADEventPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_externalIdentifier forKey:{@"externalIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_entityType forKey:@"entityType"];
}

- (id)predicateFormat
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(externalIdentifier: %@, entityType: %d)", v5, self->_externalIdentifier, self->_entityType];

  return v6;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  externalIdentifier = [(CADCalendarItemsWithExternalIdentifierPredicate *)self externalIdentifier];
  v5 = CalDatabaseCopyCalendarItemsWithUniqueIdentifier();

  if (v5)
  {
    Count = CFArrayGetCount(v5);
  }

  else
  {
    Count = 0;
  }

  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v8 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v9 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v19 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; Count != i; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      if (![v9 count])
      {
        calendars = [(EKPredicate *)self calendars];

        if (!calendars)
        {
          goto LABEL_15;
        }
      }

      v13 = CalCalendarItemCopyCalendar();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x277CCABB0] numberWithInt:CalCalendarGetUID()];
        CFRelease(v14);
        if ([v9 containsObject:v15] & 1) == 0 && (!v8 || (objc_msgSend(v8, "containsObject:", v15)))
        {

LABEL_15:
          entityType = self->_entityType;
          if (CalEntityIsOfType())
          {
            if (CalEntityIsOfType())
            {
              v17 = CalEventOccurrenceCreateForInitialOccurrence();
              [v19 addObject:v17];
              CFRelease(v17);
            }

            else if (CalEntityIsOfType())
            {
              [v19 addObject:ValueAtIndex];
            }
          }

          continue;
        }
      }

      else if (!v8)
      {
        goto LABEL_15;
      }
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return v19;
}

@end