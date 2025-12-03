@interface BDSBookWidgetReadingHistoryData
- (BDSBookWidgetReadingHistoryData)initWithCoder:(id)coder;
- (BDSBookWidgetReadingHistoryData)initWithStateInfo:(id)info readingGoalsEnabled:(BOOL)enabled;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BDSBookWidgetReadingHistoryData

- (BDSBookWidgetReadingHistoryData)initWithStateInfo:(id)info readingGoalsEnabled:(BOOL)enabled
{
  infoCopy = info;
  v11.receiver = self;
  v11.super_class = BDSBookWidgetReadingHistoryData;
  v8 = [(BDSBookWidgetReadingHistoryData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stateInfo, info);
    v9->_readingGoalsEnabled = enabled;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  if (self != equal)
  {
    equalCopy = equal;
    objc_opt_class();
    v4 = BUDynamicCast();

    LOBYTE(equalCopy) = 0;
    if (!self || !v4)
    {
      goto LABEL_10;
    }

    stateInfo = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
    stateInfo2 = [v4 stateInfo];
    v8 = stateInfo2;
    if (stateInfo == stateInfo2)
    {
    }

    else
    {
      stateInfo3 = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
      stateInfo4 = [v4 stateInfo];
      v11 = [stateInfo3 isEqual:stateInfo4];

      if (!v11)
      {
        LOBYTE(equalCopy) = 0;
LABEL_10:

        return equalCopy;
      }
    }

    readingGoalsEnabled = [(BDSBookWidgetReadingHistoryData *)self readingGoalsEnabled];
    LODWORD(equalCopy) = readingGoalsEnabled ^ [v4 readingGoalsEnabled] ^ 1;
    goto LABEL_10;
  }

  LOBYTE(equalCopy) = 1;
  return equalCopy;
}

- (BDSBookWidgetReadingHistoryData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(BDSBookWidgetReadingHistoryData *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateInfo"];
    stateInfo = v5->_stateInfo;
    v5->_stateInfo = v6;

    v5->_readingGoalsEnabled = [coderCopy decodeBoolForKey:@"readingGoalsEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stateInfo = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
  [coderCopy encodeObject:stateInfo forKey:@"stateInfo"];

  [coderCopy encodeBool:-[BDSBookWidgetReadingHistoryData readingGoalsEnabled](self forKey:{"readingGoalsEnabled"), @"readingGoalsEnabled"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BDSBookWidgetReadingHistoryData);
  if (v4)
  {
    stateInfo = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
    [(BDSBookWidgetReadingHistoryData *)v4 setStateInfo:stateInfo];

    [(BDSBookWidgetReadingHistoryData *)v4 setReadingGoalsEnabled:[(BDSBookWidgetReadingHistoryData *)self readingGoalsEnabled]];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  stateInfo = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
  v5 = [NSString stringWithFormat:@"<%@: %p stateInfo:%@, readingGoalsEnabled:%d>", v3, self, stateInfo, [(BDSBookWidgetReadingHistoryData *)self readingGoalsEnabled]];

  return v5;
}

@end