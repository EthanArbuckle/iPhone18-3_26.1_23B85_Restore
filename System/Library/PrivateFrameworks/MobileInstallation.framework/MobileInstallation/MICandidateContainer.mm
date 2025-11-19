@interface MICandidateContainer
- (BOOL)isAppleApp;
- (BOOL)isEqual:(id)a3;
- (MICandidateContainer)initWithContainerURL:(id)a3 identifier:(id)a4 metadata:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)estimatedSize;
- (unint64_t)hash;
@end

@implementation MICandidateContainer

- (MICandidateContainer)initWithContainerURL:(id)a3 identifier:(id)a4 metadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = MICandidateContainer;
  v12 = [(MICandidateContainer *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootURL, a3);
    v14 = [v10 copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [v11 copy];
    metadata = v13->_metadata;
    v13->_metadata = v16;
  }

  return v13;
}

- (int64_t)estimatedSize
{
  v3 = [(MICandidateContainer *)self metadata];
  v4 = [v3 objectForKeyedSubscript:@"StaticDiskUsage"];

  v5 = [v4 longLongValue];
  if (!v5)
  {
    v6 = [MEMORY[0x1E69A8D78] defaultManager];
    v7 = [(MICandidateContainer *)self rootURL];
    v5 = [v6 diskUsageForURL:v7];
  }

  return v5;
}

- (BOOL)isAppleApp
{
  v2 = [(MICandidateContainer *)self identifier];
  v3 = [v2 hasPrefix:@"com.apple."];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MICandidateContainer *)self rootURL];
  v6 = [(MICandidateContainer *)self identifier];
  v7 = [(MICandidateContainer *)self metadata];
  v8 = [v4 initWithContainerURL:v5 identifier:v6 metadata:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MICandidateContainer *)self rootURL];
      v7 = [(MICandidateContainer *)v5 rootURL];
      v8 = [v6 isEqual:v7];

      if (v8 && (-[MICandidateContainer identifier](self, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), -[MICandidateContainer identifier](v5, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        v12 = [(MICandidateContainer *)self metadata];
        v13 = [(MICandidateContainer *)v5 metadata];
        v14 = [v12 isEqual:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(MICandidateContainer *)self rootURL];
  v4 = [v3 hash];

  v5 = [(MICandidateContainer *)self identifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(MICandidateContainer *)self metadata];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end