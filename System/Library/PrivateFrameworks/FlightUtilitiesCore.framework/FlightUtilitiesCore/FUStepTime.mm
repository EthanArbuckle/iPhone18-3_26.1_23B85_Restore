@interface FUStepTime
- (BOOL)isEqual:(id)equal;
- (FUStepTime)initWithCoder:(id)coder;
- (FUStepTime)initWithType:(unint64_t)type date:(id)date;
- (double)timeIntervalSinceNow;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FUStepTime

- (FUStepTime)initWithType:(unint64_t)type date:(id)date
{
  dateCopy = date;
  v10.receiver = self;
  v10.super_class = FUStepTime;
  v7 = [(FUStepTime *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(FUStepTime *)v7 setType:type];
    [(FUStepTime *)v8 setDate:dateCopy];
  }

  return v8;
}

- (id)description
{
  type = [(FUStepTime *)self type];
  v4 = @"Unknown type";
  if (type == 2)
  {
    v4 = @"Take off / Touch down";
  }

  if (type == 1)
  {
    v5 = @"Gate";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  date = [(FUStepTime *)self date];
  v8 = [v6 stringWithFormat:@"%@ (%@)", date, v5];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[FUStepTime type](self, "type"), v5 == [equalCopy type]))
  {
    date = [(FUStepTime *)self date];
    date2 = [equalCopy date];
    if (date == date2)
    {
      v10 = 1;
    }

    else
    {
      date3 = [(FUStepTime *)self date];
      date4 = [equalCopy date];
      v10 = [date3 isEqual:date4];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setType:{-[FUStepTime type](self, "type")}];
  date = [(FUStepTime *)self date];
  v6 = [date copy];
  [v4 setDate:v6];

  return v4;
}

- (double)timeIntervalSinceNow
{
  v3 = +[FUUtils testDate];
  date = [(FUStepTime *)self date];
  v5 = date;
  if (v3)
  {
    [date timeIntervalSinceDate:v3];
  }

  else
  {
    [date timeIntervalSinceNow];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([(FUStepTime *)self type])
  {
    [coderCopy encodeInteger:-[FUStepTime type](self forKey:{"type"), @"type"}];
  }

  date = [(FUStepTime *)self date];

  if (date)
  {
    date2 = [(FUStepTime *)self date];
    [coderCopy encodeObject:date2 forKey:@"date"];
  }
}

- (FUStepTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = FUStepTime;
  v5 = [(FUStepTime *)&v9 init];
  if (v5)
  {
    -[FUStepTime setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(FUStepTime *)v5 setDate:v6];

    v7 = v5;
  }

  return v5;
}

@end