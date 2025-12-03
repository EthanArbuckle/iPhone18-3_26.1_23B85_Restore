@interface BMEvent
- (BMEvent)initWithStartDate:(id)date endDate:(id)endDate item:(id)item;
- (id)description;
@end

@implementation BMEvent

- (BMEvent)initWithStartDate:(id)date endDate:(id)endDate item:(id)item
{
  dateCopy = date;
  endDateCopy = endDate;
  itemCopy = item;
  v17.receiver = self;
  v17.super_class = BMEvent;
  v11 = [(BMEvent *)&v17 init];
  if (v11)
  {
    v12 = [dateCopy copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [endDateCopy copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    objc_storeStrong(&v11->_item, item);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  startDate = [(BMEvent *)self startDate];
  endDate = [(BMEvent *)self endDate];
  item = [(BMEvent *)self item];
  v8 = [v3 stringWithFormat:@"<%@: %p> startDate: %@, endDate: %@, item: %@", v4, self, startDate, endDate, item];

  return v8;
}

@end