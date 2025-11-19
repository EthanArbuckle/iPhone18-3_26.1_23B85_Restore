@interface BMEvent
- (BMEvent)initWithStartDate:(id)a3 endDate:(id)a4 item:(id)a5;
- (id)description;
@end

@implementation BMEvent

- (BMEvent)initWithStartDate:(id)a3 endDate:(id)a4 item:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = BMEvent;
  v11 = [(BMEvent *)&v17 init];
  if (v11)
  {
    v12 = [v8 copy];
    startDate = v11->_startDate;
    v11->_startDate = v12;

    v14 = [v9 copy];
    endDate = v11->_endDate;
    v11->_endDate = v14;

    objc_storeStrong(&v11->_item, a5);
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BMEvent *)self startDate];
  v6 = [(BMEvent *)self endDate];
  v7 = [(BMEvent *)self item];
  v8 = [v3 stringWithFormat:@"<%@: %p> startDate: %@, endDate: %@, item: %@", v4, self, v5, v6, v7];

  return v8;
}

@end