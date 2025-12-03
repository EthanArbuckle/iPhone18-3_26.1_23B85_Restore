@interface NPKDateRange
+ (id)_dateStringWithDate:(id)date style:(unint64_t)style;
- (NPKDateRange)initWithStartDate:(id)date expirationDate:(id)expirationDate formatterStyle:(unint64_t)style;
@end

@implementation NPKDateRange

- (NPKDateRange)initWithStartDate:(id)date expirationDate:(id)expirationDate formatterStyle:(unint64_t)style
{
  dateCopy = date;
  expirationDateCopy = expirationDate;
  v18.receiver = self;
  v18.super_class = NPKDateRange;
  v11 = [(NPKDateRange *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, date);
    v13 = [objc_opt_class() _dateStringWithDate:dateCopy style:style];
    startDateString = v12->_startDateString;
    v12->_startDateString = v13;

    objc_storeStrong(&v12->_expiryDate, expirationDate);
    v15 = [objc_opt_class() _dateStringWithDate:v12->_expiryDate style:style];
    expiryDateString = v12->_expiryDateString;
    v12->_expiryDateString = v15;
  }

  return v12;
}

+ (id)_dateStringWithDate:(id)date style:(unint64_t)style
{
  if (date)
  {
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:date dateStyle:style timeStyle:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end