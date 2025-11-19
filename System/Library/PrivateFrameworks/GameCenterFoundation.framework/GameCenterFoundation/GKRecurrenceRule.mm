@interface GKRecurrenceRule
- (GKRecurrenceRule)initWithCoder:(id)a3;
- (GKRecurrenceRule)initWithInterval:(unint64_t)a3 frequency:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GKRecurrenceRule

- (GKRecurrenceRule)initWithInterval:(unint64_t)a3 frequency:(int64_t)a4
{
  v9.receiver = self;
  v9.super_class = GKRecurrenceRule;
  v6 = [(GKRecurrenceRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(GKRecurrenceRule *)v6 setInterval:a3];
    [(GKRecurrenceRule *)v7 setFrequency:a4];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[GKRecurrenceRule allocWithZone:?]];
  [(GKRecurrenceRule *)v4 setInterval:[(GKRecurrenceRule *)self interval]];
  [(GKRecurrenceRule *)v4 setFrequency:[(GKRecurrenceRule *)self frequency]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[GKRecurrenceRule interval](self forKey:{"interval"), @"interval"}];
  [v4 encodeInteger:-[GKRecurrenceRule frequency](self forKey:{"frequency"), @"frequency"}];
}

- (GKRecurrenceRule)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GKRecurrenceRule;
  v5 = [(GKRecurrenceRule *)&v7 init];
  if (v5)
  {
    -[GKRecurrenceRule setInterval:](v5, "setInterval:", [v4 decodeIntegerForKey:@"interval"]);
    -[GKRecurrenceRule setFrequency:](v5, "setFrequency:", [v4 decodeIntegerForKey:@"frequency"]);
  }

  return v5;
}

@end