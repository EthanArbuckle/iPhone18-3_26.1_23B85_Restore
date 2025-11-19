@interface HLPLoadInfo
+ (id)infoWithTopicItem:(id)a3 accessType:(int64_t)a4 searchTerms:(id)a5 anchor:(id)a6;
- (NSString)analyticsSourceType;
- (id)_initWithTopicItem:(id)a3 accessType:(int64_t)a4 searchTerms:(id)a5 anchor:(id)a6;
@end

@implementation HLPLoadInfo

- (id)_initWithTopicItem:(id)a3 accessType:(int64_t)a4 searchTerms:(id)a5 anchor:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HLPLoadInfo;
  v14 = [(HLPLoadInfo *)&v17 init];
  p_isa = &v14->super.isa;
  if (v14)
  {
    v14->_accessType = a4;
    objc_storeStrong(&v14->_helpTopicItem, a3);
    objc_storeStrong(p_isa + 4, a5);
    objc_storeStrong(p_isa + 5, a6);
  }

  return p_isa;
}

+ (id)infoWithTopicItem:(id)a3 accessType:(int64_t)a4 searchTerms:(id)a5 anchor:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [[a1 alloc] _initWithTopicItem:v12 accessType:a4 searchTerms:v11 anchor:v10];

  return v13;
}

- (NSString)analyticsSourceType
{
  v2 = [(HLPLoadInfo *)self accessType];
  if (v2 > 9)
  {
    v3 = HLPAnalyticsViewSourceTypeUndefined;
  }

  else
  {
    v3 = off_279707660[v2];
  }

  v4 = *v3;

  return v4;
}

@end