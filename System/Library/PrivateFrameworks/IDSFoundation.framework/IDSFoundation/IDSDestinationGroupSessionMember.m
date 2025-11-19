@interface IDSDestinationGroupSessionMember
- (IDSDestinationGroupSessionMember)initWithCoder:(id)a3;
- (IDSDestinationGroupSessionMember)initWithURI:(id)a3 isLightWeight:(BOOL)a4;
- (IDSDestinationGroupSessionMember)initWithURIObject:(id)a3 isLightWeight:(BOOL)a4;
- (NSString)uri;
- (id)description;
- (id)destinationLightweightStatus;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestinationGroupSessionMember

- (IDSDestinationGroupSessionMember)initWithURI:(id)a3 isLightWeight:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [[IDSURI alloc] initWithPrefixedURI:v6];

  v8 = [(IDSDestinationGroupSessionMember *)self initWithURIObject:v7 isLightWeight:v4];
  return v8;
}

- (IDSDestinationGroupSessionMember)initWithURIObject:(id)a3 isLightWeight:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSDestinationGroupSessionMember;
  v8 = [(IDSDestinationGroupSessionMember *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URIObject, a3);
    v9->_isLightWeight = a4;
  }

  return v9;
}

- (NSString)uri
{
  v2 = [(IDSDestinationGroupSessionMember *)self URIObject];
  v3 = [v2 prefixedURI];

  return v3;
}

- (IDSDestinationGroupSessionMember)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kURIKey"];
  v6 = [v4 decodeBoolForKey:@"kIsLightWeight"];

  v7 = [(IDSDestinationGroupSessionMember *)self initWithURIObject:v5 isLightWeight:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(IDSDestinationGroupSessionMember *)self URIObject];
  [v5 encodeObject:v4 forKey:@"kURIKey"];

  [v5 encodeBool:-[IDSDestinationGroupSessionMember isLightWeight](self forKey:{"isLightWeight"), @"kIsLightWeight"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSDestinationGroupSessionMember *)self uri];
  v5 = [(IDSDestinationGroupSessionMember *)self isLightWeight];
  v6 = @"NO";
  if (v5)
  {
    v6 = @"YES";
  }

  v7 = [v3 stringWithFormat:@"<URI:%@ isLightweight: %@>", v4, v6];

  return v7;
}

- (id)destinationURIs
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(IDSDestinationGroupSessionMember *)self uri];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (id)destinationLightweightStatus
{
  v3 = MEMORY[0x1E695DF20];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IDSDestinationGroupSessionMember isLightWeight](self, "isLightWeight")}];
  v5 = [(IDSDestinationGroupSessionMember *)self uri];
  v6 = [v3 dictionaryWithObject:v4 forKey:v5];

  return v6;
}

@end