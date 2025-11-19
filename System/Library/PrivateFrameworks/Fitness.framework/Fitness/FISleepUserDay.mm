@interface FISleepUserDay
- (BOOL)isEmpty;
- (FISleepUserDay)initWithCoder:(id)a3;
- (FISleepUserDay)initWithStartOfDay:(id)a3 endOfDay:(id)a4;
- (id)initEmptySleepUserDay;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FISleepUserDay

- (FISleepUserDay)initWithStartOfDay:(id)a3 endOfDay:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FISleepUserDay;
  v8 = [(FISleepUserDay *)&v11 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [(FISleepUserDay *)v8 setCreationDate:v9];

    [(FISleepUserDay *)v8 setStartOfDay:v6];
    [(FISleepUserDay *)v8 setEndOfDay:v7];
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
    v3 = [MEMORY[0x277CBEAA8] date];
    [(FISleepUserDay *)v2 setCreationDate:v3];

    [(FISleepUserDay *)v2 setStartOfDay:0];
    [(FISleepUserDay *)v2 setEndOfDay:0];
  }

  return v2;
}

- (BOOL)isEmpty
{
  v3 = [(FISleepUserDay *)self startOfDay];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(FISleepUserDay *)self endOfDay];
    v4 = v5 == 0;
  }

  return v4;
}

- (FISleepUserDay)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FISleepUserDay *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
    [(FISleepUserDay *)v5 setCreationDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startOfDay"];
    [(FISleepUserDay *)v5 setStartOfDay:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endOfDay"];
    [(FISleepUserDay *)v5 setEndOfDay:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FISleepUserDay *)self creationDate];
  [v4 encodeObject:v5 forKey:@"creationDate"];

  v6 = [(FISleepUserDay *)self startOfDay];
  [v4 encodeObject:v6 forKey:@"startOfDay"];

  v7 = [(FISleepUserDay *)self endOfDay];
  [v4 encodeObject:v7 forKey:@"endOfDay"];
}

@end