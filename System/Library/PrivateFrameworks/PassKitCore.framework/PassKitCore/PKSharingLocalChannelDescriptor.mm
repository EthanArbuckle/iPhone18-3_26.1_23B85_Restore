@interface PKSharingLocalChannelDescriptor
+ (id)createDestinationWithIdentifier:(id)identifier;
+ (id)createSourceWithIdentifier:(id)identifier;
- (PKSharingLocalChannelDescriptor)initWithCoder:(id)coder;
- (id)_initWithBaseTransportIdentifier:(id)identifier subtype:(unint64_t)subtype;
- (id)contraChannelTransportIdentifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingLocalChannelDescriptor

+ (id)createSourceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PKSharingLocalChannelDescriptor alloc] _initWithBaseTransportIdentifier:identifierCopy subtype:0];

  return v4;
}

+ (id)createDestinationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PKSharingLocalChannelDescriptor alloc] _initWithBaseTransportIdentifier:identifierCopy subtype:1];

  return v4;
}

- (id)_initWithBaseTransportIdentifier:(id)identifier subtype:(unint64_t)subtype
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKSharingLocalChannelDescriptor;
  v8 = [(PKSharingChannelDescriptor *)&v11 _initWithType:5];
  v9 = v8;
  if (v8)
  {
    v8[3] = subtype;
    objc_storeStrong(v8 + 2, identifier);
  }

  return v9;
}

- (id)contraChannelTransportIdentifier
{
  subtype = self->_subtype;
  if (subtype)
  {
    if (subtype != 1)
    {
      goto LABEL_6;
    }

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  a2 = PKCreateSharingLocalChannelDescriptorTransportIdentifier(self->_baseTransportIdentifier, v4);
LABEL_6:

  return a2;
}

- (PKSharingLocalChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKSharingLocalChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"baseTransportIdentifier"];
    baseTransportIdentifier = v5->_baseTransportIdentifier;
    v5->_baseTransportIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtype"];
    v9 = v8;
    v10 = v8 == @"Source" || v8 == 0;
    v15 = 0;
    if (!v10)
    {
      v11 = [(__CFString *)v8 isEqualToString:@"Source"];

      if ((v11 & 1) == 0)
      {
        v12 = v9;
        if (v12 == @"Destination" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"Destination"], v13, v14))
        {
          v15 = 1;
        }
      }
    }

    v5->_subtype = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = PKSharingLocalChannelDescriptor;
  coderCopy = coder;
  [(PKSharingChannelDescriptor *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_baseTransportIdentifier forKey:{@"baseTransportIdentifier", v8.receiver, v8.super_class}];
  subtype = self->_subtype;
  v6 = &stru_1F227FD28;
  if (subtype == 1)
  {
    v6 = @"Destination";
  }

  if (subtype)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"Source";
  }

  [coderCopy encodeObject:v7 forKey:@"subtype"];
}

@end