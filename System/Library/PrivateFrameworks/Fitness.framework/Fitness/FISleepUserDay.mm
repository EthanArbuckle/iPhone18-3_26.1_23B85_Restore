@interface FISleepUserDay
- (BOOL)isEmpty;
- (FISleepUserDay)initWithCoder:(id)coder;
- (FISleepUserDay)initWithStartOfDay:(id)day endOfDay:(id)ofDay;
- (id)initEmptySleepUserDay;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FISleepUserDay

- (FISleepUserDay)initWithStartOfDay:(id)day endOfDay:(id)ofDay
{
  dayCopy = day;
  ofDayCopy = ofDay;
  v11.receiver = self;
  v11.super_class = FISleepUserDay;
  v8 = [(FISleepUserDay *)&v11 init];
  if (v8)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(FISleepUserDay *)v8 setCreationDate:date];

    [(FISleepUserDay *)v8 setStartOfDay:dayCopy];
    [(FISleepUserDay *)v8 setEndOfDay:ofDayCopy];
  }

  return v8;
}

- (id)initEmptySleepUserDay
{
  v5.receiver = self;
  v5.super_class = FISleepUserDay;
  v2 = [(FISleepUserDay *)&v5 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(FISleepUserDay *)v2 setCreationDate:date];

    [(FISleepUserDay *)v2 setStartOfDay:0];
    [(FISleepUserDay *)v2 setEndOfDay:0];
  }

  return v2;
}

- (BOOL)isEmpty
{
  startOfDay = [(FISleepUserDay *)self startOfDay];
  if (startOfDay)
  {
    v4 = 0;
  }

  else
  {
    endOfDay = [(FISleepUserDay *)self endOfDay];
    v4 = endOfDay == 0;
  }

  return v4;
}

- (FISleepUserDay)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FISleepUserDay *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    [(FISleepUserDay *)v5 setCreationDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startOfDay"];
    [(FISleepUserDay *)v5 setStartOfDay:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endOfDay"];
    [(FISleepUserDay *)v5 setEndOfDay:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  creationDate = [(FISleepUserDay *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  startOfDay = [(FISleepUserDay *)self startOfDay];
  [coderCopy encodeObject:startOfDay forKey:@"startOfDay"];

  endOfDay = [(FISleepUserDay *)self endOfDay];
  [coderCopy encodeObject:endOfDay forKey:@"endOfDay"];
}

@end