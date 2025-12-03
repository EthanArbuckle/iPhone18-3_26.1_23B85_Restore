@interface CKEvent
- (BOOL)isEqual:(id)equal;
- (CKEvent)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate metadata:(id)metadata;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation CKEvent

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(CKEvent *)self identifier];
  startDate = [(CKEvent *)self startDate];
  endDate = [(CKEvent *)self endDate];
  metadata = [(CKEvent *)self metadata];
  v8 = [v3 stringWithFormat:@"%@[start=%@, end=%@, metadata=%@]", identifier, startDate, endDate, metadata];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  identifier = [(CKEvent *)self identifier];
  startDate = [(CKEvent *)self startDate];
  endDate = [(CKEvent *)self endDate];
  v7 = [v3 stringWithFormat:@"%@[start=%@, end=%@]", identifier, startDate, endDate];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSDate *)self->_startDate hash]^ v3;
  return v4 ^ [(NSDate *)self->_endDate hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(CKEvent *)self identifier];
      identifier2 = [(CKEvent *)equalCopy identifier];
      if ([identifier isEqualToString:identifier2])
      {
        startDate = [(CKEvent *)self startDate];
        startDate2 = [(CKEvent *)equalCopy startDate];
        if ([startDate compare:startDate2])
        {
          v9 = 0;
        }

        else
        {
          endDate = [(CKEvent *)self endDate];
          endDate2 = [(CKEvent *)equalCopy endDate];
          v9 = [endDate compare:endDate2] == 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (CKEvent)initWithIdentifier:(id)identifier startDate:(id)date endDate:(id)endDate metadata:(id)metadata
{
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  metadataCopy = metadata;
  v20.receiver = self;
  v20.super_class = CKEvent;
  v15 = [(CKEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
    if (metadataCopy)
    {
      v17 = metadataCopy;
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    metadata = v16->_metadata;
    v16->_metadata = v17;
  }

  return v16;
}

@end