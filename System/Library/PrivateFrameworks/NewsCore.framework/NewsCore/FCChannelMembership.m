@interface FCChannelMembership
- (BOOL)isAllowedToSeeDrafts;
- (BOOL)isEqual:(id)a3;
- (FCChannelMembership)initWithRecord:(id)a3 interestToken:(id)a4;
- (NSString)channelID;
- (NSString)draftArticleListID;
- (NSString)draftIssueListID;
- (unint64_t)hash;
@end

@implementation FCChannelMembership

- (FCChannelMembership)initWithRecord:(id)a3 interestToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCChannelMembership;
  v9 = [(FCChannelMembership *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_record, a3);
    objc_storeStrong(&v10->_interestToken, a4);
  }

  return v10;
}

- (NSString)channelID
{
  v2 = [(FCChannelMembership *)self record];
  v3 = [v2 channelID];

  return v3;
}

- (BOOL)isAllowedToSeeDrafts
{
  v2 = [(FCChannelMembership *)self record];
  v3 = [v2 canAccessDrafts];

  return v3;
}

- (NSString)draftArticleListID
{
  v2 = [(FCChannelMembership *)self record];
  v3 = [v2 draftArticleListID];

  return v3;
}

- (NSString)draftIssueListID
{
  v2 = [(FCChannelMembership *)self record];
  v3 = [v2 draftIssueListID];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 channelID];
    v7 = [(FCChannelMembership *)self channelID];
    if ([v6 isEqualToString:v7] && (v8 = objc_msgSend(v5, "isAllowedToSeeDrafts"), v8 == -[FCChannelMembership isAllowedToSeeDrafts](self, "isAllowedToSeeDrafts")))
    {
      v10 = [v5 draftArticleListID];
      v11 = [(FCChannelMembership *)self draftArticleListID];
      if ([v10 isEqualToString:v11])
      {
        v12 = [v5 draftIssueListID];
        v13 = [(FCChannelMembership *)self draftIssueListID];
        v9 = [v12 isEqualToString:v13];
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
  v2 = [(FCChannelMembership *)self record];
  v3 = [v2 hash];

  return v3;
}

@end