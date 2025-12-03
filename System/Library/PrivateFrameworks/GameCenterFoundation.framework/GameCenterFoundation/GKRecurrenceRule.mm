@interface GKRecurrenceRule
- (GKRecurrenceRule)initWithCoder:(id)coder;
- (GKRecurrenceRule)initWithInterval:(unint64_t)interval frequency:(int64_t)frequency;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GKRecurrenceRule

- (GKRecurrenceRule)initWithInterval:(unint64_t)interval frequency:(int64_t)frequency
{
  v9.receiver = self;
  v9.super_class = GKRecurrenceRule;
  v6 = [(GKRecurrenceRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(GKRecurrenceRule *)v6 setInterval:interval];
    [(GKRecurrenceRule *)v7 setFrequency:frequency];
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[GKRecurrenceRule allocWithZone:?]];
  [(GKRecurrenceRule *)v4 setInterval:[(GKRecurrenceRule *)self interval]];
  [(GKRecurrenceRule *)v4 setFrequency:[(GKRecurrenceRule *)self frequency]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[GKRecurrenceRule interval](self forKey:{"interval"), @"interval"}];
  [coderCopy encodeInteger:-[GKRecurrenceRule frequency](self forKey:{"frequency"), @"frequency"}];
}

- (GKRecurrenceRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = GKRecurrenceRule;
  v5 = [(GKRecurrenceRule *)&v7 init];
  if (v5)
  {
    -[GKRecurrenceRule setInterval:](v5, "setInterval:", [coderCopy decodeIntegerForKey:@"interval"]);
    -[GKRecurrenceRule setFrequency:](v5, "setFrequency:", [coderCopy decodeIntegerForKey:@"frequency"]);
  }

  return v5;
}

@end