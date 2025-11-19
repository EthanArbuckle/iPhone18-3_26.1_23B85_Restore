@interface IDSPeerIDKey
+ (id)peerIDKeyWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5;
- (BOOL)isEqual:(id)a3;
- (IDSPeerIDKey)initWithCoder:(id)a3;
- (IDSPeerIDKey)initWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPeerIDKey

- (unint64_t)hash
{
  v3 = [(IDSPeerIDKey *)self service];
  v4 = [v3 hash];
  v5 = [(IDSPeerIDKey *)self fromURI];
  v6 = [v5 hash] ^ v4;
  v7 = [(IDSPeerIDKey *)self toURI];
  v8 = [v7 hash];

  return v6 ^ v8;
}

+ (id)peerIDKeyWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithService:v10 fromURI:v9 toURI:v8];

  return v11;
}

- (IDSPeerIDKey)initWithService:(id)a3 fromURI:(id)a4 toURI:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  v12 = 0;
  if (v8 && v9 && v10)
  {
    v17.receiver = self;
    v17.super_class = IDSPeerIDKey;
    v13 = [(IDSPeerIDKey *)&v17 init];
    if (v13)
    {
      v14 = [v8 copy];
      service = v13->_service;
      v13->_service = v14;

      objc_storeStrong(&v13->_fromURI, a4);
      objc_storeStrong(&v13->_toURI, a5);
      v13->_hasMatchingURIs = [v9 isEqualToURI:v11];
    }

    self = v13;
    v12 = self;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 service];
    v7 = [(IDSPeerIDKey *)self service];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 fromURI];
      v9 = [(IDSPeerIDKey *)self fromURI];
      if ([v8 isEqual:v9])
      {
        v10 = [v5 toURI];
        v11 = [(IDSPeerIDKey *)self toURI];
        v12 = [v10 isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  v3 = [(IDSPeerIDKey *)self service];
  v4 = [(IDSPeerIDKey *)self fromURI];
  v5 = [(IDSPeerIDKey *)self toURI];
  v6 = [NSString stringWithFormat:@"<service:%@, from:%@, to:%@>", v3, v4, v5];

  return v6;
}

- (IDSPeerIDKey)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fromURI"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"toURI"];

  v8 = [(IDSPeerIDKey *)self initWithService:v5 fromURI:v6 toURI:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSPeerIDKey *)self service];
  [v4 encodeObject:v5 forKey:@"service"];

  v6 = [(IDSPeerIDKey *)self fromURI];
  [v4 encodeObject:v6 forKey:@"fromURI"];

  v7 = [(IDSPeerIDKey *)self toURI];
  [v4 encodeObject:v7 forKey:@"toURI"];
}

@end