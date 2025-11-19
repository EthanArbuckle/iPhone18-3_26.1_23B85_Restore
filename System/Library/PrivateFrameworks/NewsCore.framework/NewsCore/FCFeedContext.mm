@interface FCFeedContext
+ (FCFeedContext)feedContextForSmarterFetch;
+ (id)feedContextForChannel:(id)a3 sectionID:(id)a4;
+ (id)feedContextForEditorialChannel:(id)a3 editorialGemsSectionID:(id)a4;
+ (id)feedContextForEditorialChannel:(id)a3 sectionID:(id)a4;
+ (id)feedContextForEditorialTag:(id)a3;
+ (id)feedContextForHiddenFeed;
+ (id)feedContextForPaidBundleFeed;
+ (id)feedContextForTag:(id)a3;
+ (id)feedContextForTopStoriesChannel:(id)a3 sectionID:(id)a4;
+ (id)feedContextForTopStoriesTag:(id)a3;
- (FCFeedContext)initWithChannelID:(id)a3 sectionID:(id)a4 topicID:(id)a5 flags:(int64_t)a6;
- (FCFeedContext)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FCFeedContext

+ (id)feedContextForTag:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 asChannel];
  v6 = [v3 asSection];
  v7 = [v3 asTopic];

  if (v5)
  {
    v8 = [v5 identifier];
    [v4 setChannelID:v8];

    v9 = [v5 defaultSectionID];
LABEL_5:
    v11 = v9;
    [v4 setSectionID:v9];
LABEL_6:

    goto LABEL_7;
  }

  if (v6)
  {
    v10 = [v6 parentID];
    [v4 setChannelID:v10];

    v9 = [v6 identifier];
    goto LABEL_5;
  }

  if (v7)
  {
    v11 = [v7 identifier];
    [v4 setTopicID:v11];
    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

+ (id)feedContextForTopStoriesTag:(id)a3
{
  v3 = [a1 feedContextForTag:a3];
  [v3 setFlags:4];

  return v3;
}

+ (id)feedContextForEditorialTag:(id)a3
{
  v3 = [a1 feedContextForTag:a3];
  [v3 setFlags:8];

  return v3;
}

+ (id)feedContextForChannel:(id)a3 sectionID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 identifier];

  [v7 setChannelID:v8];
  [v7 setSectionID:v5];

  return v7;
}

+ (id)feedContextForTopStoriesChannel:(id)a3 sectionID:(id)a4
{
  v4 = [a1 feedContextForChannel:a3 sectionID:a4];
  [v4 setFlags:4];

  return v4;
}

+ (id)feedContextForEditorialChannel:(id)a3 sectionID:(id)a4
{
  v4 = [a1 feedContextForChannel:a3 sectionID:a4];
  [v4 setFlags:8];

  return v4;
}

+ (id)feedContextForEditorialChannel:(id)a3 editorialGemsSectionID:(id)a4
{
  v4 = [a1 feedContextForChannel:a3 sectionID:a4];
  [v4 setFlags:16];

  return v4;
}

+ (id)feedContextForHiddenFeed
{
  v2 = objc_opt_new();
  [v2 setFlags:1];

  return v2;
}

+ (id)feedContextForPaidBundleFeed
{
  v2 = objc_opt_new();
  [v2 setFlags:2];

  return v2;
}

+ (FCFeedContext)feedContextForSmarterFetch
{
  v2 = objc_opt_new();
  [v2 setFlags:32];

  return v2;
}

- (FCFeedContext)initWithChannelID:(id)a3 sectionID:(id)a4 topicID:(id)a5 flags:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = FCFeedContext;
  v14 = [(FCFeedContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_channelID, a3);
    objc_storeStrong(&v15->_sectionID, a4);
    objc_storeStrong(&v15->_topicID, a5);
    v15->_flags = a6;
  }

  return v15;
}

- (FCFeedContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"topicID"];
  v8 = [v4 decodeIntegerForKey:@"flags"];

  v9 = [(FCFeedContext *)self initWithChannelID:v5 sectionID:v6 topicID:v7 flags:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(FCFeedContext *)self channelID];
  [v7 encodeObject:v4 forKey:@"channelID"];

  v5 = [(FCFeedContext *)self sectionID];
  [v7 encodeObject:v5 forKey:@"sectionID"];

  v6 = [(FCFeedContext *)self topicID];
  [v7 encodeObject:v6 forKey:@"topicID"];

  [v7 encodeInteger:-[FCFeedContext flags](self forKey:{"flags"), @"flags"}];
}

@end