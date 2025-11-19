@interface FUStepTime
- (BOOL)isEqual:(id)a3;
- (FUStepTime)initWithCoder:(id)a3;
- (FUStepTime)initWithType:(unint64_t)a3 date:(id)a4;
- (double)timeIntervalSinceNow;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FUStepTime

- (FUStepTime)initWithType:(unint64_t)a3 date:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = FUStepTime;
  v7 = [(FUStepTime *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(FUStepTime *)v7 setType:a3];
    [(FUStepTime *)v8 setDate:v6];
  }

  return v8;
}

- (id)description
{
  v3 = [(FUStepTime *)self type];
  v4 = @"Unknown type";
  if (v3 == 2)
  {
    v4 = @"Take off / Touch down";
  }

  if (v3 == 1)
  {
    v5 = @"Gate";
  }

  else
  {
    v5 = v4;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(FUStepTime *)self date];
  v8 = [v6 stringWithFormat:@"%@ (%@)", v7, v5];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[FUStepTime type](self, "type"), v5 == [v4 type]))
  {
    v6 = [(FUStepTime *)self date];
    v7 = [v4 date];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(FUStepTime *)self date];
      v9 = [v4 date];
      v10 = [v8 isEqual:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setType:{-[FUStepTime type](self, "type")}];
  v5 = [(FUStepTime *)self date];
  v6 = [v5 copy];
  [v4 setDate:v6];

  return v4;
}

- (double)timeIntervalSinceNow
{
  v3 = +[FUUtils testDate];
  v4 = [(FUStepTime *)self date];
  v5 = v4;
  if (v3)
  {
    [v4 timeIntervalSinceDate:v3];
  }

  else
  {
    [v4 timeIntervalSinceNow];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  if ([(FUStepTime *)self type])
  {
    [v6 encodeInteger:-[FUStepTime type](self forKey:{"type"), @"type"}];
  }

  v4 = [(FUStepTime *)self date];

  if (v4)
  {
    v5 = [(FUStepTime *)self date];
    [v6 encodeObject:v5 forKey:@"date"];
  }
}

- (FUStepTime)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FUStepTime;
  v5 = [(FUStepTime *)&v9 init];
  if (v5)
  {
    -[FUStepTime setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"date"];
    [(FUStepTime *)v5 setDate:v6];

    v7 = v5;
  }

  return v5;
}

@end