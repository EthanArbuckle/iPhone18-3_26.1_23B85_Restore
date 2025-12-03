@interface FCChannelMembership
- (BOOL)isAllowedToSeeDrafts;
- (BOOL)isEqual:(id)equal;
- (FCChannelMembership)initWithRecord:(id)record interestToken:(id)token;
- (NSString)channelID;
- (NSString)draftArticleListID;
- (NSString)draftIssueListID;
- (unint64_t)hash;
@end

@implementation FCChannelMembership

- (FCChannelMembership)initWithRecord:(id)record interestToken:(id)token
{
  recordCopy = record;
  tokenCopy = token;
  v12.receiver = self;
  v12.super_class = FCChannelMembership;
  v9 = [(FCChannelMembership *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, record);
    objc_storeStrong(&v10->_interestToken, token);
  }

  return v10;
}

- (NSString)channelID
{
  record = [(FCChannelMembership *)self record];
  channelID = [record channelID];

  return channelID;
}

- (BOOL)isAllowedToSeeDrafts
{
  record = [(FCChannelMembership *)self record];
  canAccessDrafts = [record canAccessDrafts];

  return canAccessDrafts;
}

- (NSString)draftArticleListID
{
  record = [(FCChannelMembership *)self record];
  draftArticleListID = [record draftArticleListID];

  return draftArticleListID;
}

- (NSString)draftIssueListID
{
  record = [(FCChannelMembership *)self record];
  draftIssueListID = [record draftIssueListID];

  return draftIssueListID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    channelID = [v5 channelID];
    channelID2 = [(FCChannelMembership *)self channelID];
    if ([channelID isEqualToString:channelID2] && (v8 = objc_msgSend(v5, "isAllowedToSeeDrafts"), v8 == -[FCChannelMembership isAllowedToSeeDrafts](self, "isAllowedToSeeDrafts")))
    {
      draftArticleListID = [v5 draftArticleListID];
      draftArticleListID2 = [(FCChannelMembership *)self draftArticleListID];
      if ([draftArticleListID isEqualToString:draftArticleListID2])
      {
        draftIssueListID = [v5 draftIssueListID];
        draftIssueListID2 = [(FCChannelMembership *)self draftIssueListID];
        v9 = [draftIssueListID isEqualToString:draftIssueListID2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  record = [(FCChannelMembership *)self record];
  v3 = [record hash];

  return v3;
}

@end