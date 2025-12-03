@interface IDSDestinationURI
- (IDSDestinationURI)initWithCoder:(id)coder;
- (IDSDestinationURI)initWithURI:(id)i;
- (IDSDestinationURI)initWithURIString:(id)string;
- (id)description;
- (id)destinationLightweightStatus;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDestinationURI

- (id)destinationURIs
{
  v2 = [(IDSDestinationURI *)self uri];
  prefixedURI = [v2 prefixedURI];

  if (prefixedURI)
  {
    [MEMORY[0x1E695DFD8] setWithObject:prefixedURI];
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

- (IDSDestinationURI)initWithURI:(id)i
{
  iCopy = i;
  v9.receiver = self;
  v9.super_class = IDSDestinationURI;
  v6 = [(IDSDestinationURI *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uri, i);
  }

  return v7;
}

- (IDSDestinationURI)initWithURIString:(id)string
{
  stringCopy = string;
  _bestGuessURI = stringCopy;
  if (([stringCopy containsString:@":"] & 1) == 0)
  {
    _bestGuessURI = [stringCopy _bestGuessURI];
  }

  v6 = [[IDSURI alloc] initWithPrefixedURI:_bestGuessURI];
  v7 = [(IDSDestinationURI *)self initWithURI:v6];

  return v7;
}

- (IDSDestinationURI)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"kIDSDestinationURIURIObject"])
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationURIURIObject"];

    v6 = [(IDSDestinationURI *)self initWithURI:v5];
  }

  else
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIDSDestinationURIURI"];

    v6 = [(IDSDestinationURI *)self initWithURIString:v5];
  }

  v7 = v6;

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(IDSDestinationURI *)self uri];
  [coderCopy encodeObject:v5 forKey:@"kIDSDestinationURIURIObject"];
}

- (id)destinationLightweightStatus
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(IDSDestinationURI *)self uri];
  prefixedURI = [v2 prefixedURI];

  if (prefixedURI)
  {
    v6 = prefixedURI;
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