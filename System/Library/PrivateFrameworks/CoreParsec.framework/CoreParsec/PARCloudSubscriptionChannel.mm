@interface PARCloudSubscriptionChannel
- (PARCloudSubscriptionChannel)initWithChannelItem:(id)item;
- (PARCloudSubscriptionChannel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARCloudSubscriptionChannel

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelItem = [(PARCloudSubscriptionChannel *)self channelItem];
  [coderCopy encodeObject:channelItem forKey:@"channelItem"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PARCloudSubscriptionChannel;
  v5 = [(PARSubscriptionChannel *)&v9 copyWithZone:?];
  channelItem = [(PARCloudSubscriptionChannel *)self channelItem];
  v7 = [channelItem copyWithZone:zone];
  [v5 setChannelItem:v7];

  return v5;
}

- (PARCloudSubscriptionChannel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PARCloudSubscriptionChannel;
  v5 = [(PARCloudSubscriptionChannel *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelItem"];
    [(PARCloudSubscriptionChannel *)v5 setChannelItem:v6];
  }

  return v5;
}

- (PARCloudSubscriptionChannel)initWithChannelItem:(id)item
{
  itemCopy = item;
  v8.receiver = self;
  v8.super_class = PARCloudSubscriptionChannel;
  v5 = [(PARCloudSubscriptionChannel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PARCloudSubscriptionChannel *)v5 setChannelItem:itemCopy];
  }

  return v6;
}

@end