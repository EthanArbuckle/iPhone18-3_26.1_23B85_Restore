@interface IDSURI
+ (IDSURI)URIWithPrefixedURI:(id)a3;
+ (IDSURI)URIWithPrefixedURI:(id)a3 withServiceLoggingHint:(id)a4;
+ (IDSURI)URIWithUnprefixedURI:(id)a3;
+ (IDSURI)URIWithUnprefixedURI:(id)a3 withServiceLoggingHint:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToURI:(id)a3;
- (IDSPushToken)pushToken;
- (IDSURI)initWithCoder:(id)a3;
- (IDSURI)initWithPrefixedURI:(id)a3 withServiceLoggingHint:(id)a4;
- (IDSURI)initWithUnprefixedURI:(id)a3 withServiceLoggingHint:(id)a4;
- (IDSURI)tokenFreeURI;
- (NSString)description;
- (NSString)unprefixedURI;
- (id)URIByAddingOptionalPushToken:(id)a3;
- (id)URIByAddingPushToken:(id)a3;
- (id)destinationURIs;
- (int64_t)FZIDType;
- (int64_t)IDSIDType;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSURI

- (NSString)unprefixedURI
{
  v2 = [(IDSURI *)self prefixedURI];
  v3 = [v2 _stripFZIDPrefix];

  return v3;
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
  v2 = [(IDSURI *)self prefixedURI];
  v3 = _IDSTypeForID(v2);

  return v3;
}

- (unint64_t)hash
{
  v2 = [(IDSURI *)self prefixedURI];
  v3 = [v2 hash];

  return v3;
}

+ (IDSURI)URIWithPrefixedURI:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPrefixedURI:v4 withServiceLoggingHint:0];

  return v5;
}

+ (IDSURI)URIWithPrefixedURI:(id)a3 withServiceLoggingHint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithPrefixedURI:v7 withServiceLoggingHint:v6];

  return v8;
}

+ (IDSURI)URIWithUnprefixedURI:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithUnprefixedURI:v4 withServiceLoggingHint:0];

  return v5;
}

+ (IDSURI)URIWithUnprefixedURI:(id)a3 withServiceLoggingHint:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithUnprefixedURI:v7 withServiceLoggingHint:v6];

  return v8;
}

- (IDSURI)initWithPrefixedURI:(id)a3 withServiceLoggingHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13.receiver = self;
    v13.super_class = IDSURI;
    v8 = [(IDSURI *)&v13 init];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v6 copy];
      }

      else
      {
        v9 = v6;
      }

      prefixedURI = v8->_prefixedURI;
      v8->_prefixedURI = v9;

      objc_storeStrong(&v8->_serviceLoggingHint, a4);
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (IDSURI)initWithUnprefixedURI:(id)a3 withServiceLoggingHint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v14 = 0;
  v9 = [v6 _stripPotentialTokenURIWithToken:&v14];
  if (!v14)
  {
    v10 = [v6 _stripFZIDPrefix];
    v11 = [v10 _bestGuessURI];

    v6 = v11;
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(IDSURI *)self initWithPrefixedURI:v6 withServiceLoggingHint:0];

  return v12;
}

- (id)URIByAddingPushToken:(id)a3
{
  v4 = a3;
  v5 = [(IDSURI *)self isTokenURI];
  v6 = 0;
  if (v4 && !v5)
  {
    v7 = [v4 rawToken];
    v8 = _IDSCopyIDForTokenWithURI(v7, self->_prefixedURI);
    v6 = [IDSURI URIWithPrefixedURI:v8 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  return v6;
}

- (id)URIByAddingOptionalPushToken:(id)a3
{
  v4 = a3;
  v5 = [(IDSURI *)self isTokenURI];
  if (!v4 || v5)
  {
    v8 = self;
  }

  else
  {
    v6 = [v4 rawToken];
    v7 = _IDSCopyIDForTokenWithURI(v6, self->_prefixedURI);
    v8 = [IDSURI URIWithPrefixedURI:v7 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  return v8;
}

- (int64_t)FZIDType
{
  v2 = [(IDSURI *)self prefixedURI];
  v3 = [v2 _FZIDType];

  return v3;
}

- (IDSURI)tokenFreeURI
{
  if ([(IDSURI *)self isTokenURI])
  {
    v3 = [(IDSURI *)self prefixedURI];
    v4 = [v3 _stripPotentialTokenURIWithToken:0];

    v5 = [IDSURI URIWithPrefixedURI:v4 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  else
  {
    v5 = self;
  }

  return v5;
}

- (IDSPushToken)pushToken
{
  if ([(IDSURI *)self isTokenURI])
  {
    v3 = [(IDSURI *)self prefixedURI];
    v8 = 0;
    v4 = [v3 _stripPotentialTokenURIWithToken:&v8];
    v5 = v8;

    v6 = [IDSPushToken pushTokenWithData:v5 withServiceLoggingHint:self->_serviceLoggingHint];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToURI:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = [a3 prefixedURI];
  v5 = [(IDSURI *)self prefixedURI];
  v6 = [v4 isEqualToIgnoringCase:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSURI *)self isEqualToURI:v4];

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(IDSURI *)self prefixedURI];
  v6 = [v4 prefixedURI];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)destinationURIs
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(IDSURI *)self prefixedURI];
  v4 = [v2 setWithObject:v3];

  return v4;
}

- (IDSURI)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prefixedURI"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serviceHint"];

  v7 = [(IDSURI *)self initWithPrefixedURI:v5 withServiceLoggingHint:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSURI *)self prefixedURI];
  [v4 encodeObject:v5 forKey:@"prefixedURI"];

  v6 = [(IDSURI *)self serviceLoggingHint];
  [v4 encodeObject:v6 forKey:@"serviceHint"];
}

@end