@interface ICActivityStreamDigest
- (BOOL)objc_hasRecentUpdates;
- (BOOL)objc_hasUnseenHighlights;
- (BOOL)objc_hasUnseenSummary;
- (BOOL)objc_isCurrentUserMentionedInFilter:(id)filter;
- (BOOL)objc_isCurrentUserMentionedInRecentSummary;
- (ICActivityStreamDigest)initWithResolver:(id)resolver;
- (ICTTTextEditFilter)objc_recentUpdatesFilter;
- (NSValue)objc_recentUpdatesRangeValue;
@end

@implementation ICActivityStreamDigest

- (ICActivityStreamDigest)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = ICActivityStreamDigest;
  v6 = [(ICActivityStreamDigest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolverStorage, resolver);
  }

  return v7;
}

- (ICTTTextEditFilter)objc_recentUpdatesFilter
{
  selfCopy = self;
  v3 = ICActivityStreamDigest.recentUpdatesFilter.getter();

  return v3;
}

- (BOOL)objc_hasUnseenHighlights
{
  selfCopy = self;
  if ([(ICActivityStreamDigest *)selfCopy objc_hasUnseenSummary])
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
  selfCopy = self;
  v3 = ICActivityStreamDigest.hasUnseenSummary.getter();

  return v3 & 1;
}

- (BOOL)objc_hasRecentUpdates
{
  selfCopy = self;
  v3 = ICActivityStreamDigest.hasRecentUpdates.getter();

  return v3;
}

- (NSValue)objc_recentUpdatesRangeValue
{
  selfCopy = self;
  v3 = ICActivityStreamDigest.recentUpdatesRange.getter();
  if (v5)
  {
    valueWithRange_ = 0;
  }

  else
  {
    valueWithRange_ = [objc_opt_self() valueWithRange_];
  }

  return valueWithRange_;
}

- (BOOL)objc_isCurrentUserMentionedInRecentSummary
{
  selfCopy = self;
  v3 = ICActivityStreamDigest.isCurrentUserMentionedInRecentSummary.getter();

  return v3 & 1;
}

- (BOOL)objc_isCurrentUserMentionedInFilter:(id)filter
{
  filterCopy = filter;
  selfCopy = self;
  v6 = sub_214F6211C(filterCopy);
  LOBYTE(v10) = 1;
  sub_214F71610(v6);
  v8 = v7;

  sub_214F65078(v8, &v10);

  LOBYTE(selfCopy) = v11;
  LOBYTE(filterCopy) = v12;

  return (selfCopy | filterCopy) & 1;
}

@end