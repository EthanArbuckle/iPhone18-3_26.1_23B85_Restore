@interface WFTimeInterval
+ (id)objectWithWFSerializedRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (NSDateComponentsFormatter)timeIntervalFormatter;
- (NSString)absoluteTimeString;
- (WFTimeInterval)initWithCoder:(id)coder;
- (WFTimeInterval)initWithTimeInterval:(double)interval allowedUnits:(unint64_t)units unitsStyle:(int64_t)style zeroFormattingBehavior:(unint64_t)behavior;
- (id)copyWithZone:(_NSZone *)zone;
- (id)wfSerializedRepresentation;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFTimeInterval

- (WFTimeInterval)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeInterval"];
  [v5 doubleValue];
  v7 = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowedUnits"];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unitsStyle"];
  unsignedIntegerValue2 = [v10 unsignedIntegerValue];

  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zeroFormattingBehavior"];

  unsignedIntegerValue3 = [v12 unsignedIntegerValue];

  return [(WFTimeInterval *)self initWithTimeInterval:unsignedIntegerValue allowedUnits:unsignedIntegerValue2 unitsStyle:unsignedIntegerValue3 zeroFormattingBehavior:v7];
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  timeInterval = self->_timeInterval;
  coderCopy = coder;
  v7 = [v4 numberWithDouble:timeInterval];
  [coderCopy encodeObject:v7 forKey:@"timeInterval"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_allowedUnits];
  [coderCopy encodeObject:v8 forKey:@"allowedUnits"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_unitsStyle];
  [coderCopy encodeObject:v9 forKey:@"unitsStyle"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_zeroFormattingBehavior];
  [coderCopy encodeObject:v10 forKey:@"zeroFormattingBehavior"];
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
  timeIntervalFormatter = [(WFTimeInterval *)self timeIntervalFormatter];
  [(WFTimeInterval *)self timeInterval];
  v4 = [timeIntervalFormatter stringFromTimeInterval:?];

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

- (int64_t)compare:(id)compare
{
  v4 = MEMORY[0x277CCABB0];
  compareCopy = compare;
  [(WFTimeInterval *)self timeInterval];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [compareCopy timeInterval];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
      [(WFTimeInterval *)equalCopy timeInterval];
      v8 = v6 == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(WFTimeInterval *)self timeInterval];
  v6 = v5;
  allowedUnits = [(WFTimeInterval *)self allowedUnits];
  unitsStyle = [(WFTimeInterval *)self unitsStyle];
  zeroFormattingBehavior = [(WFTimeInterval *)self zeroFormattingBehavior];

  return [v4 initWithTimeInterval:allowedUnits allowedUnits:unitsStyle unitsStyle:zeroFormattingBehavior zeroFormattingBehavior:v6];
}

- (WFTimeInterval)initWithTimeInterval:(double)interval allowedUnits:(unint64_t)units unitsStyle:(int64_t)style zeroFormattingBehavior:(unint64_t)behavior
{
  v10 = [(WFTimeInterval *)self init];
  v11 = v10;
  if (v10)
  {
    v10->_timeInterval = interval;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    v11->_hash = [v12 hash];

    v11->_allowedUnits = units;
    v11->_unitsStyle = style;
    v11->_zeroFormattingBehavior = behavior;
    v13 = v11;
  }

  return v11;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKey:@"link.contentkit.timeinterval"];

  v6 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"timeInterval"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"allowedUnits"];
  unsignedIntegerValue = [v9 unsignedIntegerValue];

  v11 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"unitsStyle"];
  unsignedIntegerValue2 = [v11 unsignedIntegerValue];

  v13 = [v5 wfObjectOfClass:objc_opt_class() forKey:@"zeroFormattingBehavior"];
  unsignedIntegerValue3 = [v13 unsignedIntegerValue];

  v15 = [[self alloc] initWithTimeInterval:unsignedIntegerValue allowedUnits:unsignedIntegerValue2 unitsStyle:unsignedIntegerValue3 zeroFormattingBehavior:v8];

  return v15;
}

@end