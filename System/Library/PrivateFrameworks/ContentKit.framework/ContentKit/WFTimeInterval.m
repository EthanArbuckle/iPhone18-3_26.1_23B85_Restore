@interface WFTimeInterval
+ (id)objectWithWFSerializedRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDateComponentsFormatter)timeIntervalFormatter;
- (NSString)absoluteTimeString;
- (WFTimeInterval)initWithCoder:(id)a3;
- (WFTimeInterval)initWithTimeInterval:(double)a3 allowedUnits:(unint64_t)a4 unitsStyle:(int64_t)a5 zeroFormattingBehavior:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFTimeInterval

- (WFTimeInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeInterval"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowedUnits"];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unitsStyle"];
  v11 = [v10 unsignedIntegerValue];

  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zeroFormattingBehavior"];

  v13 = [v12 unsignedIntegerValue];

  return [(WFTimeInterval *)self initWithTimeInterval:v9 allowedUnits:v11 unitsStyle:v13 zeroFormattingBehavior:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  timeInterval = self->_timeInterval;
  v6 = a3;
  v7 = [v4 numberWithDouble:timeInterval];
  [v6 encodeObject:v7 forKey:@"timeInterval"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_allowedUnits];
  [v6 encodeObject:v8 forKey:@"allowedUnits"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_unitsStyle];
  [v6 encodeObject:v9 forKey:@"unitsStyle"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_zeroFormattingBehavior];
  [v6 encodeObject:v10 forKey:@"zeroFormattingBehavior"];
}

- (id)wfSerializedRepresentation
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"link.contentkit.timeinterval";
  v10[0] = @"timeInterval";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeInterval];
  v11[0] = v3;
  v10[1] = @"allowedUnits";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_allowedUnits];
  v11[1] = v4;
  v10[2] = @"unitsStyle";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_unitsStyle];
  v11[2] = v5;
  v10[3] = @"zeroFormattingBehavior";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_zeroFormattingBehavior];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v13[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  return v8;
}

- (NSString)absoluteTimeString
{
  v3 = [(WFTimeInterval *)self timeIntervalFormatter];
  [(WFTimeInterval *)self timeInterval];
  v4 = [v3 stringFromTimeInterval:?];

  return v4;
}

- (NSDateComponentsFormatter)timeIntervalFormatter
{
  timeIntervalFormatter = self->_timeIntervalFormatter;
  if (!timeIntervalFormatter)
  {
    v4 = objc_opt_new();
    v5 = self->_timeIntervalFormatter;
    self->_timeIntervalFormatter = v4;

    [(NSDateComponentsFormatter *)self->_timeIntervalFormatter setAllowedUnits:self->_allowedUnits];
    [(NSDateComponentsFormatter *)self->_timeIntervalFormatter setUnitsStyle:self->_unitsStyle];
    [(NSDateComponentsFormatter *)self->_timeIntervalFormatter setZeroFormattingBehavior:self->_zeroFormattingBehavior];
    timeIntervalFormatter = self->_timeIntervalFormatter;
  }

  return timeIntervalFormatter;
}

- (int64_t)compare:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [(WFTimeInterval *)self timeInterval];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timeInterval];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFTimeInterval *)self timeInterval];
      v6 = v5;
      [(WFTimeInterval *)v4 timeInterval];
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(WFTimeInterval *)self timeInterval];
  v6 = v5;
  v7 = [(WFTimeInterval *)self allowedUnits];
  v8 = [(WFTimeInterval *)self unitsStyle];
  v9 = [(WFTimeInterval *)self zeroFormattingBehavior];

  return [v4 initWithTimeInterval:v7 allowedUnits:v8 unitsStyle:v9 zeroFormattingBehavior:v6];
}

- (WFTimeInterval)initWithTimeInterval:(double)a3 allowedUnits:(unint64_t)a4 unitsStyle:(int64_t)a5 zeroFormattingBehavior:(unint64_t)a6
{
  v10 = [(WFTimeInterval *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_timeInterval = a3;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    v11->_hash = [v12 hash];

    v11->_allowedUnits = a4;
    v11->_unitsStyle = a5;
    v11->_zeroFormattingBehavior = a6;
    v13 = v11;
  }

  return v11;
}

+ (id)objectWithWFSerializedRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.timeinterval"];

  v6 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"timeInterval"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"allowedUnits"];
  v10 = [v9 unsignedIntegerValue];

  v11 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"unitsStyle"];
  v12 = [v11 unsignedIntegerValue];

  v13 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"zeroFormattingBehavior"];
  v14 = [v13 unsignedIntegerValue];

  v15 = [[a1 alloc] initWithTimeInterval:v10 allowedUnits:v12 unitsStyle:v14 zeroFormattingBehavior:v8];

  return v15;
}

@end