@interface PKSharingRelayChannelDescriptor
+ (id)createChannelWithRegion:(id)a3;
+ (id)createChannelWithRegion:(id)a3 stateful:(BOOL)a4;
+ (id)existingChannelForMailboxIdentifier:(id)a3;
+ (id)existingChannelForURL:(id)a3;
- (PKSharingRelayChannelDescriptor)initWithCoder:(id)a3;
- (id)_initWithSubType:(unint64_t)a3 region:(id)a4 stateful:(BOOL)a5 existingChannelURL:(id)a6 mailboxIdentifier:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingRelayChannelDescriptor

- (id)_initWithSubType:(unint64_t)a3 region:(id)a4 stateful:(BOOL)a5 existingChannelURL:(id)a6 mailboxIdentifier:(id)a7
{
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PKSharingRelayChannelDescriptor;
  v16 = [(PKSharingChannelDescriptor *)&v19 _initWithType:3];
  v17 = v16;
  if (v16)
  {
    v16[3] = a3;
    objc_storeStrong(v16 + 4, a4);
    *(v17 + 16) = a5;
    objc_storeStrong(v17 + 5, a6);
    objc_storeStrong(v17 + 6, a7);
  }

  return v17;
}

+ (id)createChannelWithRegion:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:1 region:v3 stateful:1 existingChannelURL:0 mailboxIdentifier:0];

  return v4;
}

+ (id)createChannelWithRegion:(id)a3 stateful:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:1 region:v5 stateful:v4 existingChannelURL:0 mailboxIdentifier:0];

  return v6;
}

+ (id)existingChannelForURL:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:2 region:0 stateful:0 existingChannelURL:v3 mailboxIdentifier:0];

  return v4;
}

+ (id)existingChannelForMailboxIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:2 region:0 stateful:0 existingChannelURL:0 mailboxIdentifier:v3];

  return v4;
}

- (PKSharingRelayChannelDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKSharingRelayChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v5->_subtype = [v6 unsignedIntegerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stateful"];
    v5->_stateful = [v9 BOOLValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"existingChannelURL"];
    existingChannelURL = v5->_existingChannelURL;
    v5->_existingChannelURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"existingMailboxIdentifier"];
    existingMailboxIdentifier = v5->_existingMailboxIdentifier;
    v5->_existingMailboxIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKSharingRelayChannelDescriptor;
  v4 = a3;
  [(PKSharingChannelDescriptor *)&v7 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_subtype, v7.receiver, v7.super_class}];
  [v4 encodeObject:v5 forKey:@"subtype"];

  [v4 encodeObject:self->_region forKey:@"region"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_stateful];
  [v4 encodeObject:v6 forKey:@"stateful"];

  [v4 encodeObject:self->_existingChannelURL forKey:@"existingChannelURL"];
  [v4 encodeObject:self->_existingMailboxIdentifier forKey:@"existingMailboxIdentifier"];
}

@end