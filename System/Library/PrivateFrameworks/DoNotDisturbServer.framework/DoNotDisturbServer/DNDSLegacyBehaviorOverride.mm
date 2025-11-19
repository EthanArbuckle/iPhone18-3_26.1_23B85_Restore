@interface DNDSLegacyBehaviorOverride
- (DNDSLegacyBehaviorOverride)initWithCoder:(id)a3;
- (DNDSLegacyBehaviorOverride)initWithOverrideType:(unint64_t)a3 mode:(unint64_t)a4 effectiveIntervals:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDSLegacyBehaviorOverride

- (DNDSLegacyBehaviorOverride)initWithOverrideType:(unint64_t)a3 mode:(unint64_t)a4 effectiveIntervals:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = DNDSLegacyBehaviorOverride;
  v9 = [(DNDSLegacyBehaviorOverride *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_overrideType = a3;
    v9->_mode = a4;
    v11 = [v8 copy];
    effectiveIntervals = v10->_effectiveIntervals;
    v10->_effectiveIntervals = v11;
  }

  return v10;
}

- (DNDSLegacyBehaviorOverride)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"overrideType"];
  v6 = [v4 decodeIntegerForKey:@"overrideMode"];
  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"effectiveIntervals"];

  v11 = [(DNDSLegacyBehaviorOverride *)self initWithOverrideType:v5 mode:v6 effectiveIntervals:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DNDSLegacyBehaviorOverride overrideType](self forKey:{"overrideType"), @"overrideType"}];
  [v4 encodeInteger:-[DNDSLegacyBehaviorOverride mode](self forKey:{"mode"), @"overrideMode"}];
  v5 = [(DNDSLegacyBehaviorOverride *)self effectiveIntervals];
  [v4 encodeObject:v5 forKey:@"effectiveIntervals"];
}

@end