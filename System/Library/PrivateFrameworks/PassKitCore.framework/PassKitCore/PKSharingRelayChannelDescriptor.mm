@interface PKSharingRelayChannelDescriptor
+ (id)createChannelWithRegion:(id)region;
+ (id)createChannelWithRegion:(id)region stateful:(BOOL)stateful;
+ (id)existingChannelForMailboxIdentifier:(id)identifier;
+ (id)existingChannelForURL:(id)l;
- (PKSharingRelayChannelDescriptor)initWithCoder:(id)coder;
- (id)_initWithSubType:(unint64_t)type region:(id)region stateful:(BOOL)stateful existingChannelURL:(id)l mailboxIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingRelayChannelDescriptor

- (id)_initWithSubType:(unint64_t)type region:(id)region stateful:(BOOL)stateful existingChannelURL:(id)l mailboxIdentifier:(id)identifier
{
  regionCopy = region;
  lCopy = l;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = PKSharingRelayChannelDescriptor;
  v16 = [(PKSharingChannelDescriptor *)&v19 _initWithType:3];
  v17 = v16;
  if (v16)
  {
    v16[3] = type;
    objc_storeStrong(v16 + 4, region);
    *(v17 + 16) = stateful;
    objc_storeStrong(v17 + 5, l);
    objc_storeStrong(v17 + 6, identifier);
  }

  return v17;
}

+ (id)createChannelWithRegion:(id)region
{
  regionCopy = region;
  v4 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:1 region:regionCopy stateful:1 existingChannelURL:0 mailboxIdentifier:0];

  return v4;
}

+ (id)createChannelWithRegion:(id)region stateful:(BOOL)stateful
{
  statefulCopy = stateful;
  regionCopy = region;
  v6 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:1 region:regionCopy stateful:statefulCopy existingChannelURL:0 mailboxIdentifier:0];

  return v6;
}

+ (id)existingChannelForURL:(id)l
{
  lCopy = l;
  v4 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:2 region:0 stateful:0 existingChannelURL:lCopy mailboxIdentifier:0];

  return v4;
}

+ (id)existingChannelForMailboxIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PKSharingRelayChannelDescriptor alloc] _initWithSubType:2 region:0 stateful:0 existingChannelURL:0 mailboxIdentifier:identifierCopy];

  return v4;
}

- (PKSharingRelayChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKSharingRelayChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v5->_subtype = [v6 unsignedIntegerValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"region"];
    region = v5->_region;
    v5->_region = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateful"];
    v5->_stateful = [v9 BOOLValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"existingChannelURL"];
    existingChannelURL = v5->_existingChannelURL;
    v5->_existingChannelURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"existingMailboxIdentifier"];
    existingMailboxIdentifier = v5->_existingMailboxIdentifier;
    v5->_existingMailboxIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKSharingRelayChannelDescriptor;
  coderCopy = coder;
  [(PKSharingChannelDescriptor *)&v7 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{self->_subtype, v7.receiver, v7.super_class}];
  [coderCopy encodeObject:v5 forKey:@"subtype"];

  [coderCopy encodeObject:self->_region forKey:@"region"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_stateful];
  [coderCopy encodeObject:v6 forKey:@"stateful"];

  [coderCopy encodeObject:self->_existingChannelURL forKey:@"existingChannelURL"];
  [coderCopy encodeObject:self->_existingMailboxIdentifier forKey:@"existingMailboxIdentifier"];
}

@end