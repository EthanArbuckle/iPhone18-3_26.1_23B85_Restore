@interface GDMicroLocationVisitEvent
- (BOOL)isEqual:(id)equal;
- (GDMicroLocationVisitEvent)initWithDate:(id)date microLocationIdentifier:(id)identifier probability:(double)probability isEnter:(BOOL)enter;
@end

@implementation GDMicroLocationVisitEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    isEqualToString = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    isEnter = self->_isEnter;
    if (isEnter == objc_msgSend_isEnter(v6, v8, v9, v10) && (probability = self->_probability, objc_msgSend_probability(v6, v11, v12, v13), probability == v18))
    {
      date = self->_date;
      v20 = objc_msgSend_date(v6, v15, v16, v17);
      if (objc_msgSend_isEqualToDate_(date, v21, v20, v22))
      {
        microLocationIdentifier = self->_microLocationIdentifier;
        v27 = objc_msgSend_microLocationIdentifier(v6, v23, v24, v25);
        isEqualToString = objc_msgSend_isEqualToString_(microLocationIdentifier, v28, v27, v29);
      }

      else
      {
        isEqualToString = 0;
      }
    }

    else
    {
      isEqualToString = 0;
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (GDMicroLocationVisitEvent)initWithDate:(id)date microLocationIdentifier:(id)identifier probability:(double)probability isEnter:(BOOL)enter
{
  dateCopy = date;
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = GDMicroLocationVisitEvent;
  v13 = [(GDMicroLocationVisitEvent *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v14->_microLocationIdentifier, identifier);
    v14->_probability = probability;
    v14->_isEnter = enter;
  }

  return v14;
}

@end