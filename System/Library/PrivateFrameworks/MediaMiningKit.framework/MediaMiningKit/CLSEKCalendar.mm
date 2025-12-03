@interface CLSEKCalendar
- (BOOL)isEqual:(id)equal;
- (CLSEKCalendar)initWithCoder:(id)coder;
- (CLSEKCalendar)initWithEKCalendar:(id)calendar;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLSEKCalendar

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(CLSEKCalendar *)self hash];
  if (v5 == [(CLSEKCalendar *)equalCopy hash])
  {
    goto LABEL_4;
  }

  if (self->_hasSharees != equalCopy->_hasSharees)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  shareesAndOwner = self->_shareesAndOwner;
  if (shareesAndOwner != equalCopy->_shareesAndOwner)
  {
    v6 = [(NSSet *)shareesAndOwner isEqualToSet:?];
    goto LABEL_9;
  }

LABEL_4:
  v6 = 1;
LABEL_9:

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  calendarIdentifier = self->_calendarIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:calendarIdentifier forKey:@"calendarIdentifier"];
  [coderCopy encodeBool:self->_hasSharees forKey:@"hasSharees"];
  [coderCopy encodeObject:self->_shareesAndOwner forKey:@"shareesAndOwner"];
}

- (CLSEKCalendar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CLSEKCalendar;
  v5 = [(CLSEKCalendar *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"calendarIdentifier"];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = v6;

    v5->_hasSharees = [coderCopy decodeBoolForKey:@"hasSharees"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"shareesAndOwner"];
    shareesAndOwner = v5->_shareesAndOwner;
    v5->_shareesAndOwner = v11;
  }

  return v5;
}

- (CLSEKCalendar)initWithEKCalendar:(id)calendar
{
  v28 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v26.receiver = self;
  v26.super_class = CLSEKCalendar;
  v5 = [(CLSEKCalendar *)&v26 init];
  if (v5)
  {
    calendarIdentifier = [calendarCopy calendarIdentifier];
    calendarIdentifier = v5->_calendarIdentifier;
    v5->_calendarIdentifier = calendarIdentifier;

    hasSharees = [calendarCopy hasSharees];
    v5->_hasSharees = hasSharees;
    if (hasSharees)
    {
      shareesAndOwner = [calendarCopy shareesAndOwner];
      v10 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(shareesAndOwner, "count")}];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v11 = shareesAndOwner;
      v12 = [(NSSet *)v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * v15);
            v17 = [CLSEKSharee alloc];
            v18 = [(CLSEKSharee *)v17 initWithEKSharee:v16, v22];
            if (v18)
            {
              [(NSSet *)v10 addObject:v18];
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = [(NSSet *)v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v13);
      }

      shareesAndOwner = v5->_shareesAndOwner;
      v5->_shareesAndOwner = v10;
    }

    else
    {
      v20 = [MEMORY[0x277CBEB98] set];
      v11 = v5->_shareesAndOwner;
      v5->_shareesAndOwner = v20;
    }
  }

  return v5;
}

@end