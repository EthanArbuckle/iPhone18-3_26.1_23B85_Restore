@interface DNDSLegacyBehaviorOverride
- (DNDSLegacyBehaviorOverride)initWithCoder:(id)coder;
- (DNDSLegacyBehaviorOverride)initWithOverrideType:(unint64_t)type mode:(unint64_t)mode effectiveIntervals:(id)intervals;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDSLegacyBehaviorOverride

- (DNDSLegacyBehaviorOverride)initWithOverrideType:(unint64_t)type mode:(unint64_t)mode effectiveIntervals:(id)intervals
{
  intervalsCopy = intervals;
  v14.receiver = self;
  v14.super_class = DNDSLegacyBehaviorOverride;
  v9 = [(DNDSLegacyBehaviorOverride *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_overrideType = type;
    v9->_mode = mode;
    v11 = [intervalsCopy copy];
    effectiveIntervals = v10->_effectiveIntervals;
    v10->_effectiveIntervals = v11;
  }

  return v10;
}

- (DNDSLegacyBehaviorOverride)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"overrideType"];
  v6 = [coderCopy decodeIntegerForKey:@"overrideMode"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"effectiveIntervals"];

  v11 = [(DNDSLegacyBehaviorOverride *)self initWithOverrideType:v5 mode:v6 effectiveIntervals:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DNDSLegacyBehaviorOverride overrideType](self forKey:{"overrideType"), @"overrideType"}];
  [coderCopy encodeInteger:-[DNDSLegacyBehaviorOverride mode](self forKey:{"mode"), @"overrideMode"}];
  effectiveIntervals = [(DNDSLegacyBehaviorOverride *)self effectiveIntervals];
  [coderCopy encodeObject:effectiveIntervals forKey:@"effectiveIntervals"];
}

@end