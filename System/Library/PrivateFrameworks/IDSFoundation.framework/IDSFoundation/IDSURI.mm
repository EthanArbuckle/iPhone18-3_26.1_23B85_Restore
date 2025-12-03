@interface IDSURI
+ (IDSURI)URIWithPrefixedURI:(id)i;
+ (IDSURI)URIWithPrefixedURI:(id)i withServiceLoggingHint:(id)hint;
+ (IDSURI)URIWithUnprefixedURI:(id)i;
+ (IDSURI)URIWithUnprefixedURI:(id)i withServiceLoggingHint:(id)hint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToURI:(id)i;
- (IDSPushToken)pushToken;
- (IDSURI)initWithCoder:(id)coder;
- (IDSURI)initWithPrefixedURI:(id)i withServiceLoggingHint:(id)hint;
- (IDSURI)initWithUnprefixedURI:(id)i withServiceLoggingHint:(id)hint;
- (IDSURI)tokenFreeURI;
- (NSString)description;
- (NSString)unprefixedURI;
- (id)URIByAddingOptionalPushToken:(id)token;
- (id)URIByAddingPushToken:(id)token;
- (id)destinationURIs;
- (int64_t)FZIDType;
- (int64_t)IDSIDType;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSURI

- (NSString)unprefixedURI
{
  prefixedURI = [(IDSURI *)self prefixedURI];
  _stripFZIDPrefix = [prefixedURI _stripFZIDPrefix];

  return _stripFZIDPrefix;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = IDSLoggableDescriptionForHandleOnService(self->_prefixedURI, self->_serviceLoggingHint);
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];;

  return v6;
}

- (int64_t)IDSIDType
{
  prefixedURI = [(IDSURI *)self prefixedURI];
  v3 = _IDSTypeForID(prefixedURI);

  return v3;
}

- (unint64_t)hash
{
  prefixedURI = [(IDSURI *)self prefixedURI];
  v3 = [prefixedURI hash];

  return v3;
}

+ (IDSURI)URIWithPrefixedURI:(id)i
{
  iCopy = i;
  v5 = [[self alloc] initWithPrefixedURI:iCopy withServiceLoggingHint:0];

  return v5;
}

+ (IDSURI)URIWithPrefixedURI:(id)i withServiceLoggingHint:(id)hint
{
  hintCopy = hint;
  iCopy = i;
  v8 = [[self alloc] initWithPrefixedURI:iCopy withServiceLoggingHint:hintCopy];

  return v8;
}

+ (IDSURI)URIWithUnprefixedURI:(id)i
{
  iCopy = i;
  v5 = [[self alloc] initWithUnprefixedURI:iCopy withServiceLoggingHint:0];

  return v5;
}

+ (IDSURI)URIWithUnprefixedURI:(id)i withServiceLoggingHint:(id)hint
{
  hintCopy = hint;
  iCopy = i;
  v8 = [[self alloc] initWithUnprefixedURI:iCopy withServiceLoggingHint:hintCopy];

  return v8;
}

- (IDSURI)initWithPrefixedURI:(id)i withServiceLoggingHint:(id)hint
{
  iCopy = i;
  hintCopy = hint;
  if (iCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13.receiver = self;
    v13.super_class = IDSURI;
    v8 = [(IDSURI *)&v13 init];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [iCopy copy];
      }

      else
      {
        v9 = iCopy;
      }

      prefixedURI = v8->_prefixedURI;
      v8->_prefixedURI = v9;

      objc_storeStrong(&v8->_serviceLoggingHint, hint);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSURI)initWithUnprefixedURI:(id)i withServiceLoggingHint:(id)hint
{
  iCopy = i;
  hintCopy = hint;
  v8 = objc_autoreleasePoolPush();
  v14 = 0;
  v9 = [iCopy _stripPotentialTokenURIWithToken:&v14];
  if (!v14)
  {
    _stripFZIDPrefix = [iCopy _stripFZIDPrefix];
    _bestGuessURI = [_stripFZIDPrefix _bestGuessURI];

    iCopy = _bestGuessURI;
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(IDSURI *)self initWithPrefixedURI:iCopy withServiceLoggingHint:0];

  return v12;
}

- (id)URIByAddingPushToken:(id)token
{
  tokenCopy = token;
  isTokenURI = [(IDSURI *)self isTokenURI];
  v6 = 0;
  if (tokenCopy && !isTokenURI)
  {
    rawToken = [tokenCopy rawToken];
    v8 = _IDSCopyIDForTokenWithURI(rawToken, self->_prefixedURI);
    v6 = [IDSURI URIWithPrefixedURI:v8 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  return v6;
}

- (id)URIByAddingOptionalPushToken:(id)token
{
  tokenCopy = token;
  isTokenURI = [(IDSURI *)self isTokenURI];
  if (!tokenCopy || isTokenURI)
  {
    selfCopy = self;
  }

  else
  {
    rawToken = [tokenCopy rawToken];
    v7 = _IDSCopyIDForTokenWithURI(rawToken, self->_prefixedURI);
    selfCopy = [IDSURI URIWithPrefixedURI:v7 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  return selfCopy;
}

- (int64_t)FZIDType
{
  prefixedURI = [(IDSURI *)self prefixedURI];
  _FZIDType = [prefixedURI _FZIDType];

  return _FZIDType;
}

- (IDSURI)tokenFreeURI
{
  if ([(IDSURI *)self isTokenURI])
  {
    prefixedURI = [(IDSURI *)self prefixedURI];
    v4 = [prefixedURI _stripPotentialTokenURIWithToken:0];

    selfCopy = [IDSURI URIWithPrefixedURI:v4 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (IDSPushToken)pushToken
{
  if ([(IDSURI *)self isTokenURI])
  {
    prefixedURI = [(IDSURI *)self prefixedURI];
    v8 = 0;
    v4 = [prefixedURI _stripPotentialTokenURIWithToken:&v8];
    v5 = v8;

    v6 = [IDSPushToken pushTokenWithData:v5 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToURI:(id)i
{
  if (self == i)
  {
    return 1;
  }

  prefixedURI = [i prefixedURI];
  prefixedURI2 = [(IDSURI *)self prefixedURI];
  v6 = [prefixedURI isEqualToIgnoringCase:prefixedURI2];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSURI *)self isEqualToURI:equalCopy];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  prefixedURI = [(IDSURI *)self prefixedURI];
  prefixedURI2 = [compareCopy prefixedURI];

  v7 = [prefixedURI compare:prefixedURI2];
  return v7;
}

- (id)destinationURIs
{
  v2 = MEMORY[0x1E695DFD8];
  prefixedURI = [(IDSURI *)self prefixedURI];
  v4 = [v2 setWithObject:prefixedURI];

  return v4;
}

- (IDSURI)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefixedURI"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceHint"];

  v7 = [(IDSURI *)self initWithPrefixedURI:v5 withServiceLoggingHint:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  prefixedURI = [(IDSURI *)self prefixedURI];
  [coderCopy encodeObject:prefixedURI forKey:@"prefixedURI"];

  serviceLoggingHint = [(IDSURI *)self serviceLoggingHint];
  [coderCopy encodeObject:serviceLoggingHint forKey:@"serviceHint"];
}

@end