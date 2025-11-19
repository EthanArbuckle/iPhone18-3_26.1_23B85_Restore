@interface IDSDestinationURI
- (IDSDestinationURI)initWithCoder:(id)a3;
- (IDSDestinationURI)initWithURI:(id)a3;
- (IDSDestinationURI)initWithURIString:(id)a3;
- (id)description;
- (id)destinationLightweightStatus;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestinationURI

- (id)destinationURIs
{
  v2 = [(IDSDestinationURI *)self uri];
  v3 = [v2 prefixedURI];

  if (v3)
  {
    [MEMORY[0x1E695DFD8] setWithObject:v3];
  }

  else
  {
    [MEMORY[0x1E695DFD8] set];
  }
  v4 = ;

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IDSDestinationURI *)self uri];
  v6 = [v3 stringWithFormat:@"<%@: %p uri: %@", v4, self, v5];

  return v6;
}

- (IDSDestinationURI)initWithURI:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSDestinationURI;
  v6 = [(IDSDestinationURI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uri, a3);
  }

  return v7;
}

- (IDSDestinationURI)initWithURIString:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (([v4 containsString:@":"] & 1) == 0)
  {
    v5 = [v4 _bestGuessURI];
  }

  v6 = [[IDSURI alloc] initWithPrefixedURI:v5];
  v7 = [(IDSDestinationURI *)self initWithURI:v6];

  return v7;
}

- (IDSDestinationURI)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"kIDSDestinationURIURIObject"])
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationURIURIObject"];

    v6 = [(IDSDestinationURI *)self initWithURI:v5];
  }

  else
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationURIURI"];

    v6 = [(IDSDestinationURI *)self initWithURIString:v5];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSDestinationURI *)self uri];
  [v4 encodeObject:v5 forKey:@"kIDSDestinationURIURIObject"];
}

- (id)destinationLightweightStatus
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(IDSDestinationURI *)self uri];
  v3 = [v2 prefixedURI];

  if (v3)
  {
    v6 = v3;
    v7[0] = MEMORY[0x1E695E110];
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  return v4;
}

@end