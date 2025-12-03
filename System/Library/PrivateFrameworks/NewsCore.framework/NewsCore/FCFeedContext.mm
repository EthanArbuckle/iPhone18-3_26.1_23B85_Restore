@interface FCFeedContext
+ (FCFeedContext)feedContextForSmarterFetch;
+ (id)feedContextForChannel:(id)channel sectionID:(id)d;
+ (id)feedContextForEditorialChannel:(id)channel editorialGemsSectionID:(id)d;
+ (id)feedContextForEditorialChannel:(id)channel sectionID:(id)d;
+ (id)feedContextForEditorialTag:(id)tag;
+ (id)feedContextForHiddenFeed;
+ (id)feedContextForPaidBundleFeed;
+ (id)feedContextForTag:(id)tag;
+ (id)feedContextForTopStoriesChannel:(id)channel sectionID:(id)d;
+ (id)feedContextForTopStoriesTag:(id)tag;
- (FCFeedContext)initWithChannelID:(id)d sectionID:(id)iD topicID:(id)topicID flags:(int64_t)flags;
- (FCFeedContext)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FCFeedContext

+ (id)feedContextForTag:(id)tag
{
  tagCopy = tag;
  v4 = objc_opt_new();
  asChannel = [tagCopy asChannel];
  asSection = [tagCopy asSection];
  asTopic = [tagCopy asTopic];

  if (asChannel)
  {
    identifier = [asChannel identifier];
    [v4 setChannelID:identifier];

    defaultSectionID = [asChannel defaultSectionID];
LABEL_5:
    identifier2 = defaultSectionID;
    [v4 setSectionID:defaultSectionID];
LABEL_6:

    goto LABEL_7;
  }

  if (asSection)
  {
    parentID = [asSection parentID];
    [v4 setChannelID:parentID];

    defaultSectionID = [asSection identifier];
    goto LABEL_5;
  }

  if (asTopic)
  {
    identifier2 = [asTopic identifier];
    [v4 setTopicID:identifier2];
    goto LABEL_6;
  }

LABEL_7:

  return v4;
}

+ (id)feedContextForTopStoriesTag:(id)tag
{
  v3 = [self feedContextForTag:tag];
  [v3 setFlags:4];

  return v3;
}

+ (id)feedContextForEditorialTag:(id)tag
{
  v3 = [self feedContextForTag:tag];
  [v3 setFlags:8];

  return v3;
}

+ (id)feedContextForChannel:(id)channel sectionID:(id)d
{
  dCopy = d;
  channelCopy = channel;
  v7 = objc_opt_new();
  identifier = [channelCopy identifier];

  [v7 setChannelID:identifier];
  [v7 setSectionID:dCopy];

  return v7;
}

+ (id)feedContextForTopStoriesChannel:(id)channel sectionID:(id)d
{
  v4 = [self feedContextForChannel:channel sectionID:d];
  [v4 setFlags:4];

  return v4;
}

+ (id)feedContextForEditorialChannel:(id)channel sectionID:(id)d
{
  v4 = [self feedContextForChannel:channel sectionID:d];
  [v4 setFlags:8];

  return v4;
}

+ (id)feedContextForEditorialChannel:(id)channel editorialGemsSectionID:(id)d
{
  v4 = [self feedContextForChannel:channel sectionID:d];
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

- (FCFeedContext)initWithChannelID:(id)d sectionID:(id)iD topicID:(id)topicID flags:(int64_t)flags
{
  dCopy = d;
  iDCopy = iD;
  topicIDCopy = topicID;
  v17.receiver = self;
  v17.super_class = FCFeedContext;
  v14 = [(FCFeedContext *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_channelID, d);
    objc_storeStrong(&v15->_sectionID, iD);
    objc_storeStrong(&v15->_topicID, topicID);
    v15->_flags = flags;
  }

  return v15;
}

- (FCFeedContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"topicID"];
  v8 = [coderCopy decodeIntegerForKey:@"flags"];

  v9 = [(FCFeedContext *)self initWithChannelID:v5 sectionID:v6 topicID:v7 flags:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelID = [(FCFeedContext *)self channelID];
  [coderCopy encodeObject:channelID forKey:@"channelID"];

  sectionID = [(FCFeedContext *)self sectionID];
  [coderCopy encodeObject:sectionID forKey:@"sectionID"];

  topicID = [(FCFeedContext *)self topicID];
  [coderCopy encodeObject:topicID forKey:@"topicID"];

  [coderCopy encodeInteger:-[FCFeedContext flags](self forKey:{"flags"), @"flags"}];
}

@end