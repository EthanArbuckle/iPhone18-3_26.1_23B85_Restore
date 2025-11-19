@interface MIStagingLocation
- (id)privilegedResolveWithError:(id *)a3;
@end

@implementation MIStagingLocation

- (id)privilegedResolveWithError:(id *)a3
{
  v5 = [(MIStagingLocation *)self stagingRoot];
  v6 = [v5 privilegedResolveRootWithError:a3];

  if (v6)
  {
    v7 = [(MIStagingLocation *)self relativeStagingBaseDirectory];
    if (v7)
    {
      v8 = [v6 URLByAppendingPathComponent:v7 isDirectory:1];
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