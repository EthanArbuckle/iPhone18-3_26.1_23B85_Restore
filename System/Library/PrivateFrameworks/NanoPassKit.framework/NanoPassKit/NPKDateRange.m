@interface NPKDateRange
+ (id)_dateStringWithDate:(id)a3 style:(unint64_t)a4;
- (NPKDateRange)initWithStartDate:(id)a3 expirationDate:(id)a4 formatterStyle:(unint64_t)a5;
@end

@implementation NPKDateRange

- (NPKDateRange)initWithStartDate:(id)a3 expirationDate:(id)a4 formatterStyle:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v18.receiver = self;
  v18.super_class = NPKDateRange;
  v11 = [(NPKDateRange *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, a3);
    v13 = [objc_opt_class() _dateStringWithDate:v9 style:a5];
    startDateString = v12->_startDateString;
    v12->_startDateString = v13;

    objc_storeStrong(&v12->_expiryDate, a4);
    v15 = [objc_opt_class() _dateStringWithDate:v12->_expiryDate style:a5];
    expiryDateString = v12->_expiryDateString;
    v12->_expiryDateString = v15;
  }

  return v12;
}

+ (id)_dateStringWithDate:(id)a3 style:(unint64_t)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCA968] localizedStringFromDate:a3 dateStyle:a4 timeStyle:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end