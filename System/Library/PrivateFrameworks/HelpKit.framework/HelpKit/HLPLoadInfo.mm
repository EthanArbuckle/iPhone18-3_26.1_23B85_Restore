@interface HLPLoadInfo
+ (id)infoWithTopicItem:(id)item accessType:(int64_t)type searchTerms:(id)terms anchor:(id)anchor;
- (NSString)analyticsSourceType;
- (id)_initWithTopicItem:(id)item accessType:(int64_t)type searchTerms:(id)terms anchor:(id)anchor;
@end

@implementation HLPLoadInfo

- (id)_initWithTopicItem:(id)item accessType:(int64_t)type searchTerms:(id)terms anchor:(id)anchor
{
  itemCopy = item;
  termsCopy = terms;
  anchorCopy = anchor;
  v17.receiver = self;
  v17.super_class = HLPLoadInfo;
  v14 = [(HLPLoadInfo *)&v17 init];
  p_isa = &v14->super.isa;
  if (v14)
  {
    v14->_accessType = type;
    objc_storeStrong(&v14->_helpTopicItem, item);
    objc_storeStrong(p_isa + 4, terms);
    objc_storeStrong(p_isa + 5, anchor);
  }

  return p_isa;
}

+ (id)infoWithTopicItem:(id)item accessType:(int64_t)type searchTerms:(id)terms anchor:(id)anchor
{
  anchorCopy = anchor;
  termsCopy = terms;
  itemCopy = item;
  v13 = [[self alloc] _initWithTopicItem:itemCopy accessType:type searchTerms:termsCopy anchor:anchorCopy];

  return v13;
}

- (NSString)analyticsSourceType
{
  accessType = [(HLPLoadInfo *)self accessType];
  if (accessType > 9)
  {
    v3 = HLPAnalyticsViewSourceTypeUndefined;
  }

  else
  {
    v3 = off_279707660[accessType];
  }

  v4 = *v3;

  return v4;
}

@end