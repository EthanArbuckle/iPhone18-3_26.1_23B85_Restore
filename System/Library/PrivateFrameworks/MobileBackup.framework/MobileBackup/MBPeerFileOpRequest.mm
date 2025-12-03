@interface MBPeerFileOpRequest
- (MBPeerFileOpRequest)init;
- (MBPeerFileOpRequest)initWithDictionary:(id)dictionary error:(id *)error;
- (id)dictionaryRepresentation;
@end

@implementation MBPeerFileOpRequest

- (MBPeerFileOpRequest)init
{
  v6.receiver = self;
  v6.super_class = MBPeerFileOpRequest;
  v2 = [(MBPeerFileOpRequest *)&v6 init];
  v3 = v2;
  if (v2)
  {
    relativePaths = v2->_relativePaths;
    v2->_relativePaths = &__NSDictionary0__struct;
  }

  return v3;
}

- (MBPeerFileOpRequest)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MBPeerFileOpRequest;
  v7 = [(MBPeerFileOpRequest *)&v12 init];
  if (v7 && ([dictionaryCopy objectForKeyedSubscript:@"MBRelativePaths"], v8 = objc_claimAutoreleasedReturnValue(), relativePaths = v7->_relativePaths, v7->_relativePaths = v8, relativePaths, !v7->_relativePaths))
  {
    if (error)
    {
      [MBError errorWithCode:11 format:@"Failed to decode response. Missing property in dictionary %@", dictionaryCopy];
      *error = v10 = 0;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)dictionaryRepresentation
{
  v5 = @"MBRelativePaths";
  relativePaths = [(MBPeerFileOpRequest *)self relativePaths];
  v6 = relativePaths;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

@end