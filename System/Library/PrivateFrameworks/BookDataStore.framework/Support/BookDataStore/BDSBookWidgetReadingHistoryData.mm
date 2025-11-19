@interface BDSBookWidgetReadingHistoryData
- (BDSBookWidgetReadingHistoryData)initWithCoder:(id)a3;
- (BDSBookWidgetReadingHistoryData)initWithStateInfo:(id)a3 readingGoalsEnabled:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BDSBookWidgetReadingHistoryData

- (BDSBookWidgetReadingHistoryData)initWithStateInfo:(id)a3 readingGoalsEnabled:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BDSBookWidgetReadingHistoryData;
  v8 = [(BDSBookWidgetReadingHistoryData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_stateInfo, a3);
    v9->_readingGoalsEnabled = a4;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  if (self != a3)
  {
    v5 = a3;
    objc_opt_class();
    v4 = BUDynamicCast();

    LOBYTE(v5) = 0;
    if (!self || !v4)
    {
      goto LABEL_10;
    }

    v6 = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
    v7 = [v4 stateInfo];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
      v10 = [v4 stateInfo];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        LOBYTE(v5) = 0;
LABEL_10:

        return v5;
      }
    }

    v12 = [(BDSBookWidgetReadingHistoryData *)self readingGoalsEnabled];
    LODWORD(v5) = v12 ^ [v4 readingGoalsEnabled] ^ 1;
    goto LABEL_10;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BDSBookWidgetReadingHistoryData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BDSBookWidgetReadingHistoryData *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateInfo"];
    stateInfo = v5->_stateInfo;
    v5->_stateInfo = v6;

    v5->_readingGoalsEnabled = [v4 decodeBoolForKey:@"readingGoalsEnabled"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
  [v5 encodeObject:v4 forKey:@"stateInfo"];

  [v5 encodeBool:-[BDSBookWidgetReadingHistoryData readingGoalsEnabled](self forKey:{"readingGoalsEnabled"), @"readingGoalsEnabled"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BDSBookWidgetReadingHistoryData);
  if (v4)
  {
    v5 = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
    [(BDSBookWidgetReadingHistoryData *)v4 setStateInfo:v5];

    [(BDSBookWidgetReadingHistoryData *)v4 setReadingGoalsEnabled:[(BDSBookWidgetReadingHistoryData *)self readingGoalsEnabled]];
  }

  return v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(BDSBookWidgetReadingHistoryData *)self stateInfo];
  v5 = [NSString stringWithFormat:@"<%@: %p stateInfo:%@, readingGoalsEnabled:%d>", v3, self, v4, [(BDSBookWidgetReadingHistoryData *)self readingGoalsEnabled]];

  return v5;
}

@end