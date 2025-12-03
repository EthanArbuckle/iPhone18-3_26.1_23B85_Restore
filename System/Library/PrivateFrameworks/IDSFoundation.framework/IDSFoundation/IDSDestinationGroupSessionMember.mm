@interface IDSDestinationGroupSessionMember
- (IDSDestinationGroupSessionMember)initWithCoder:(id)coder;
- (IDSDestinationGroupSessionMember)initWithURI:(id)i isLightWeight:(BOOL)weight;
- (IDSDestinationGroupSessionMember)initWithURIObject:(id)object isLightWeight:(BOOL)weight;
- (NSString)uri;
- (id)description;
- (id)destinationLightweightStatus;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDestinationGroupSessionMember

- (IDSDestinationGroupSessionMember)initWithURI:(id)i isLightWeight:(BOOL)weight
{
  weightCopy = weight;
  iCopy = i;
  v7 = [[IDSURI alloc] initWithPrefixedURI:iCopy];

  v8 = [(IDSDestinationGroupSessionMember *)self initWithURIObject:v7 isLightWeight:weightCopy];
  return v8;
}

- (IDSDestinationGroupSessionMember)initWithURIObject:(id)object isLightWeight:(BOOL)weight
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = IDSDestinationGroupSessionMember;
  v8 = [(IDSDestinationGroupSessionMember *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_URIObject, object);
    v9->_isLightWeight = weight;
  }

  return v9;
}

- (NSString)uri
{
  uRIObject = [(IDSDestinationGroupSessionMember *)self URIObject];
  prefixedURI = [uRIObject prefixedURI];

  return prefixedURI;
}

- (IDSDestinationGroupSessionMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kURIKey"];
  v6 = [coderCopy decodeBoolForKey:@"kIsLightWeight"];

  v7 = [(IDSDestinationGroupSessionMember *)self initWithURIObject:v5 isLightWeight:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uRIObject = [(IDSDestinationGroupSessionMember *)self URIObject];
  [coderCopy encodeObject:uRIObject forKey:@"kURIKey"];

  [coderCopy encodeBool:-[IDSDestinationGroupSessionMember isLightWeight](self forKey:{"isLightWeight"), @"kIsLightWeight"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSDestinationGroupSessionMember *)self uri];
  isLightWeight = [(IDSDestinationGroupSessionMember *)self isLightWeight];
  v6 = @"NO";
  if (isLightWeight)
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