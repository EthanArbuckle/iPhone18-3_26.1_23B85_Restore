@interface _DBAnalyticsLayoutInfo
- (_DBAnalyticsLayoutInfo)initWithLayout:(id)layout;
- (id)debugDescription;
@end

@implementation _DBAnalyticsLayoutInfo

- (_DBAnalyticsLayoutInfo)initWithLayout:(id)layout
{
  layoutCopy = layout;
  v9.receiver = self;
  v9.super_class = _DBAnalyticsLayoutInfo;
  v6 = [(_DBAnalyticsTimeAccumulator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutDisplayName, layout);
  }

  return v7;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _DBAnalyticsLayoutInfo;
  v4 = [(_DBAnalyticsLayoutInfo *)&v8 debugDescription];
  layoutDisplayName = [(_DBAnalyticsLayoutInfo *)self layoutDisplayName];
  v6 = [v3 stringWithFormat:@"%@: %@", v4, layoutDisplayName];

  return v6;
}

@end