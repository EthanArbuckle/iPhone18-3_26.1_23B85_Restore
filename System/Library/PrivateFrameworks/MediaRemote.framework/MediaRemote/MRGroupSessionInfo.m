@interface MRGroupSessionInfo
- (BOOL)isEqual:(id)a3;
- (MRGroupSessionInfo)initWithCoder:(id)a3;
- (MRGroupSessionInfo)initWithIdentifier:(id)a3 hostInfo:(id)a4 isHosted:(BOOL)a5 equivalentMediaIdentifier:(id)a6 isPlaceholder:(BOOL)a7;
- (MRGroupSessionInfo)initWithProtobuf:(id)a3;
- (NSString)effectiveIdentifier;
- (_MRGroupSessionInfoProtobuf)protobuf;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRGroupSessionInfo

- (MRGroupSessionInfo)initWithIdentifier:(id)a3 hostInfo:(id)a4 isHosted:(BOOL)a5 equivalentMediaIdentifier:(id)a6 isPlaceholder:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = MRGroupSessionInfo;
  v15 = [(MRGroupSessionInfo *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    objc_storeStrong(&v15->_hostInfo, a4);
    v15->_isHosted = a5;
    objc_storeStrong(&v15->_equivalentMediaIdentifier, a6);
    v15->_placeholder = a7;
  }

  return v15;
}

- (MRGroupSessionInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = [MRGroupSessionHostInfo alloc];
  v6 = [v4 routeType] - 1;
  if (v6 > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = byte_1A2B81170[v6];
  }

  v8 = [v4 hostDisplayName];
  v9 = [(MRGroupSessionHostInfo *)v5 initWithRouteType:v7 displayName:v8];

  v10 = [v4 identifier];
  v11 = [v4 hosted];
  v12 = [v4 equivalentMediaIdentifier];
  v13 = -[MRGroupSessionInfo initWithIdentifier:hostInfo:isHosted:equivalentMediaIdentifier:isPlaceholder:](self, "initWithIdentifier:hostInfo:isHosted:equivalentMediaIdentifier:isPlaceholder:", v10, v9, v11, v12, [v4 placeholder]);

  return v13;
}

- (_MRGroupSessionInfoProtobuf)protobuf
{
  v3 = objc_alloc_init(_MRGroupSessionInfoProtobuf);
  [(_MRGroupSessionInfoProtobuf *)v3 setIdentifier:self->_identifier];
  v4 = [(MRGroupSessionHostInfo *)self->_hostInfo displayName];
  [(_MRGroupSessionInfoProtobuf *)v3 setHostDisplayName:v4];

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
  v5 = [(MRGroupSessionInfo *)self identifier];
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

  v9 = [v3 initWithFormat:@"<%@: identifier=%@, hosted=%@, mediaID=%@, placeholder=%@>", v4, v5, v6, equivalentMediaIdentifier, v8];

  return v9;
}

- (NSString)effectiveIdentifier
{
  v3 = [(MRGroupSessionInfo *)self equivalentMediaIdentifier];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MRGroupSessionInfo *)self identifier];
  }

  v6 = v5;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MRGroupSessionInfo *)self identifier];
  [v7 encodeObject:v4 forKey:@"identifier"];

  v5 = [(MRGroupSessionInfo *)self hostInfo];
  [v7 encodeObject:v5 forKey:@"hostInfo"];

  [v7 encodeBool:-[MRGroupSessionInfo isHosted](self forKey:{"isHosted"), @"hosted"}];
  v6 = [(MRGroupSessionInfo *)self equivalentMediaIdentifier];
  [v7 encodeObject:v6 forKey:@"mediaID"];

  [v7 encodeBool:-[MRGroupSessionInfo isPlaceholder](self forKey:{"isPlaceholder"), @"placeholder"}];
}

- (MRGroupSessionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MRGroupSessionInfo;
  v5 = [(MRGroupSessionInfo *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hostInfo"];
    hostInfo = v5->_hostInfo;
    v5->_hostInfo = v8;

    v5->_isHosted = [v4 decodeBoolForKey:@"hosted"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaID"];
    equivalentMediaIdentifier = v5->_equivalentMediaIdentifier;
    v5->_equivalentMediaIdentifier = v10;

    v5->_placeholder = [v4 decodeBoolForKey:@"placeholder"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = v4->_identifier;
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