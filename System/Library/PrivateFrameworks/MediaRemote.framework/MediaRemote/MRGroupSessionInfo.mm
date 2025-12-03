@interface MRGroupSessionInfo
- (BOOL)isEqual:(id)equal;
- (MRGroupSessionInfo)initWithCoder:(id)coder;
- (MRGroupSessionInfo)initWithIdentifier:(id)identifier hostInfo:(id)info isHosted:(BOOL)hosted equivalentMediaIdentifier:(id)mediaIdentifier isPlaceholder:(BOOL)placeholder;
- (MRGroupSessionInfo)initWithProtobuf:(id)protobuf;
- (NSString)effectiveIdentifier;
- (_MRGroupSessionInfoProtobuf)protobuf;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRGroupSessionInfo

- (MRGroupSessionInfo)initWithIdentifier:(id)identifier hostInfo:(id)info isHosted:(BOOL)hosted equivalentMediaIdentifier:(id)mediaIdentifier isPlaceholder:(BOOL)placeholder
{
  identifierCopy = identifier;
  infoCopy = info;
  mediaIdentifierCopy = mediaIdentifier;
  v19.receiver = self;
  v19.super_class = MRGroupSessionInfo;
  v15 = [(MRGroupSessionInfo *)&v19 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    objc_storeStrong(&v15->_hostInfo, info);
    v15->_isHosted = hosted;
    objc_storeStrong(&v15->_equivalentMediaIdentifier, mediaIdentifier);
    v15->_placeholder = placeholder;
  }

  return v15;
}

- (MRGroupSessionInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = [MRGroupSessionHostInfo alloc];
  v6 = [protobufCopy routeType] - 1;
  if (v6 > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = byte_1A2B81170[v6];
  }

  hostDisplayName = [protobufCopy hostDisplayName];
  v9 = [(MRGroupSessionHostInfo *)v5 initWithRouteType:v7 displayName:hostDisplayName];

  identifier = [protobufCopy identifier];
  hosted = [protobufCopy hosted];
  equivalentMediaIdentifier = [protobufCopy equivalentMediaIdentifier];
  v13 = -[MRGroupSessionInfo initWithIdentifier:hostInfo:isHosted:equivalentMediaIdentifier:isPlaceholder:](self, "initWithIdentifier:hostInfo:isHosted:equivalentMediaIdentifier:isPlaceholder:", identifier, v9, hosted, equivalentMediaIdentifier, [protobufCopy placeholder]);

  return v13;
}

- (_MRGroupSessionInfoProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupSessionInfoProtobuf);
  [(_MRGroupSessionInfoProtobuf *)v3 setIdentifier:self->_identifier];
  displayName = [(MRGroupSessionHostInfo *)self->_hostInfo displayName];
  [(_MRGroupSessionInfoProtobuf *)v3 setHostDisplayName:displayName];

  v5 = [(MRGroupSessionHostInfo *)self->_hostInfo routeType]- 1;
  if (v5 > 0xA)
  {
    v6 = 0;
  }

  else
  {
    v6 = dword_1A2B8117C[v5];
  }

  [(_MRGroupSessionInfoProtobuf *)v3 setRouteType:v6];
  [(_MRGroupSessionInfoProtobuf *)v3 setHosted:self->_isHosted];
  [(_MRGroupSessionInfoProtobuf *)v3 setEquivalentMediaIdentifier:self->_equivalentMediaIdentifier];
  [(_MRGroupSessionInfoProtobuf *)v3 setPlaceholder:self->_placeholder];

  return v3;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  identifier = [(MRGroupSessionInfo *)self identifier];
  if ([(MRGroupSessionInfo *)self isHosted])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  equivalentMediaIdentifier = self->_equivalentMediaIdentifier;
  if ([(MRGroupSessionInfo *)self isPlaceholder])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v3 initWithFormat:@"<%@: identifier=%@, hosted=%@, mediaID=%@, placeholder=%@>", v4, identifier, v6, equivalentMediaIdentifier, v8];

  return v9;
}

- (NSString)effectiveIdentifier
{
  equivalentMediaIdentifier = [(MRGroupSessionInfo *)self equivalentMediaIdentifier];
  v4 = equivalentMediaIdentifier;
  if (equivalentMediaIdentifier)
  {
    identifier = equivalentMediaIdentifier;
  }

  else
  {
    identifier = [(MRGroupSessionInfo *)self identifier];
  }

  v6 = identifier;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(MRGroupSessionInfo *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  hostInfo = [(MRGroupSessionInfo *)self hostInfo];
  [coderCopy encodeObject:hostInfo forKey:@"hostInfo"];

  [coderCopy encodeBool:-[MRGroupSessionInfo isHosted](self forKey:{"isHosted"), @"hosted"}];
  equivalentMediaIdentifier = [(MRGroupSessionInfo *)self equivalentMediaIdentifier];
  [coderCopy encodeObject:equivalentMediaIdentifier forKey:@"mediaID"];

  [coderCopy encodeBool:-[MRGroupSessionInfo isPlaceholder](self forKey:{"isPlaceholder"), @"placeholder"}];
}

- (MRGroupSessionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = MRGroupSessionInfo;
  v5 = [(MRGroupSessionInfo *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hostInfo"];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v8;

    v5->_isHosted = [coderCopy decodeBoolForKey:@"hosted"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaID"];
    equivalentMediaIdentifier = v5->_equivalentMediaIdentifier;
    v5->_equivalentMediaIdentifier = v10;

    v5->_placeholder = [coderCopy decodeBoolForKey:@"placeholder"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
      v7 = identifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end