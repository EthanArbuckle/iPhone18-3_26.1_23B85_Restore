@interface MICandidateContainer
- (BOOL)isAppleApp;
- (BOOL)isEqual:(id)equal;
- (MICandidateContainer)initWithContainerURL:(id)l identifier:(id)identifier metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)estimatedSize;
- (unint64_t)hash;
@end

@implementation MICandidateContainer

- (MICandidateContainer)initWithContainerURL:(id)l identifier:(id)identifier metadata:(id)metadata
{
  lCopy = l;
  identifierCopy = identifier;
  metadataCopy = metadata;
  v19.receiver = self;
  v19.super_class = MICandidateContainer;
  v12 = [(MICandidateContainer *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_rootURL, l);
    v14 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [metadataCopy copy];
    metadata = v13->_metadata;
    v13->_metadata = v16;
  }

  return v13;
}

- (int64_t)estimatedSize
{
  metadata = [(MICandidateContainer *)self metadata];
  v4 = [metadata objectForKeyedSubscript:@"StaticDiskUsage"];

  longLongValue = [v4 longLongValue];
  if (!longLongValue)
  {
    defaultManager = [MEMORY[0x1E69A8D78] defaultManager];
    rootURL = [(MICandidateContainer *)self rootURL];
    longLongValue = [defaultManager diskUsageForURL:rootURL];
  }

  return longLongValue;
}

- (BOOL)isAppleApp
{
  identifier = [(MICandidateContainer *)self identifier];
  v3 = [identifier hasPrefix:@"com.apple."];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  rootURL = [(MICandidateContainer *)self rootURL];
  identifier = [(MICandidateContainer *)self identifier];
  metadata = [(MICandidateContainer *)self metadata];
  v8 = [v4 initWithContainerURL:rootURL identifier:identifier metadata:metadata];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      rootURL = [(MICandidateContainer *)self rootURL];
      rootURL2 = [(MICandidateContainer *)v5 rootURL];
      v8 = [rootURL isEqual:rootURL2];

      if (v8 && (-[MICandidateContainer identifier](self, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), -[MICandidateContainer identifier](v5, "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqual:v10], v10, v9, v11))
      {
        metadata = [(MICandidateContainer *)self metadata];
        metadata2 = [(MICandidateContainer *)v5 metadata];
        v14 = [metadata isEqual:metadata2];
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
  rootURL = [(MICandidateContainer *)self rootURL];
  v4 = [rootURL hash];

  identifier = [(MICandidateContainer *)self identifier];
  v6 = [identifier hash] ^ v4;

  metadata = [(MICandidateContainer *)self metadata];
  v8 = [metadata hash];

  return v6 ^ v8;
}

@end