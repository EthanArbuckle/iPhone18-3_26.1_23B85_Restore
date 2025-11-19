@interface PARCloudSubscriptionChannel
- (PARCloudSubscriptionChannel)initWithChannelItem:(id)a3;
- (PARCloudSubscriptionChannel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARCloudSubscriptionChannel

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PARCloudSubscriptionChannel *)self channelItem];
  [v4 encodeObject:v5 forKey:@"channelItem"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PARCloudSubscriptionChannel;
  v5 = [(PARSubscriptionChannel *)&v9 copyWithZone:?];
  v6 = [(PARCloudSubscriptionChannel *)self channelItem];
  v7 = [v6 copyWithZone:a3];
  [v5 setChannelItem:v7];

  return v5;
}

- (PARCloudSubscriptionChannel)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PARCloudSubscriptionChannel;
  v5 = [(PARCloudSubscriptionChannel *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelItem"];
    [(PARCloudSubscriptionChannel *)v5 setChannelItem:v6];
  }

  return v5;
}

- (PARCloudSubscriptionChannel)initWithChannelItem:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PARCloudSubscriptionChannel;
  v5 = [(PARCloudSubscriptionChannel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(PARCloudSubscriptionChannel *)v5 setChannelItem:v4];
  }

  return v6;
}

@end