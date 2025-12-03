@interface MIStagingLocation
- (id)privilegedResolveWithError:(id *)error;
@end

@implementation MIStagingLocation

- (id)privilegedResolveWithError:(id *)error
{
  stagingRoot = [(MIStagingLocation *)self stagingRoot];
  v6 = [stagingRoot privilegedResolveRootWithError:error];

  if (v6)
  {
    relativeStagingBaseDirectory = [(MIStagingLocation *)self relativeStagingBaseDirectory];
    if (relativeStagingBaseDirectory)
    {
      v8 = [v6 URLByAppendingPathComponent:relativeStagingBaseDirectory isDirectory:1];
    }

    else
    {
      v8 = v6;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end