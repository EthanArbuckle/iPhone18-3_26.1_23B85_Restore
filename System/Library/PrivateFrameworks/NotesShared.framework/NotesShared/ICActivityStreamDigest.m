@interface ICActivityStreamDigest
- (BOOL)objc_hasRecentUpdates;
- (BOOL)objc_hasUnseenHighlights;
- (BOOL)objc_hasUnseenSummary;
- (BOOL)objc_isCurrentUserMentionedInFilter:(id)a3;
- (BOOL)objc_isCurrentUserMentionedInRecentSummary;
- (ICActivityStreamDigest)initWithResolver:(id)a3;
- (ICTTTextEditFilter)objc_recentUpdatesFilter;
- (NSValue)objc_recentUpdatesRangeValue;
@end

@implementation ICActivityStreamDigest

- (ICActivityStreamDigest)initWithResolver:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICActivityStreamDigest;
  v6 = [(ICActivityStreamDigest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolverStorage, a3);
  }

  return v7;
}

- (ICTTTextEditFilter)objc_recentUpdatesFilter
{
  v2 = self;
  v3 = ICActivityStreamDigest.recentUpdatesFilter.getter();

  return v3;
}

- (BOOL)objc_hasUnseenHighlights
{
  v2 = self;
  if ([(ICActivityStreamDigest *)v2 objc_hasUnseenSummary])
  {
    ICActivityStreamDigest.recentUpdatesRange.getter();
    v4 = v3;

    v5 = v4 ^ 1;
  }

  else
  {

    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)objc_hasUnseenSummary
{
  v2 = self;
  v3 = ICActivityStreamDigest.hasUnseenSummary.getter();

  return v3 & 1;
}

- (BOOL)objc_hasRecentUpdates
{
  v2 = self;
  v3 = ICActivityStreamDigest.hasRecentUpdates.getter();

  return v3;
}

- (NSValue)objc_recentUpdatesRangeValue
{
  v2 = self;
  v3 = ICActivityStreamDigest.recentUpdatesRange.getter();
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [objc_opt_self() valueWithRange_];
  }

  return v6;
}

- (BOOL)objc_isCurrentUserMentionedInRecentSummary
{
  v2 = self;
  v3 = ICActivityStreamDigest.isCurrentUserMentionedInRecentSummary.getter();

  return v3 & 1;
}

- (BOOL)objc_isCurrentUserMentionedInFilter:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_214F6211C(v4);
  LOBYTE(v10) = 1;
  sub_214F71610(v6);
  v8 = v7;

  sub_214F65078(v8, &v10);

  LOBYTE(v5) = v11;
  LOBYTE(v4) = v12;

  return (v5 | v4) & 1;
}

@end