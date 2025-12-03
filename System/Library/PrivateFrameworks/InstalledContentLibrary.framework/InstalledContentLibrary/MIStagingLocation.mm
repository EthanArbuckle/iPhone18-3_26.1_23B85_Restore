@interface MIStagingLocation
+ (id)_stagingRootClassCluster;
- (BOOL)isEqual:(id)equal;
- (MIStagingLocation)initWithCoder:(id)coder;
- (MIStagingLocation)initWithStagingRoot:(id)root relativeStagingBaseDirectory:(id)directory;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resolveWithError:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MIStagingLocation

- (MIStagingLocation)initWithStagingRoot:(id)root relativeStagingBaseDirectory:(id)directory
{
  rootCopy = root;
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = MIStagingLocation;
  v9 = [(MIStagingLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stagingRoot, root);
    objc_storeStrong(&v10->_relativeStagingBaseDirectory, directory);
  }

  return v10;
}

- (MIStagingLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MIStagingLocation;
  v5 = [(MIStagingLocation *)&v12 init];
  if (v5)
  {
    _stagingRootClassCluster = [objc_opt_class() _stagingRootClassCluster];
    v7 = [coderCopy decodeObjectOfClasses:_stagingRootClassCluster forKey:@"stagingRoot"];
    stagingRoot = v5->_stagingRoot;
    v5->_stagingRoot = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relativeStagingBaseDirectory"];
    relativeStagingBaseDirectory = v5->_relativeStagingBaseDirectory;
    v5->_relativeStagingBaseDirectory = v9;
  }

  return v5;
}

+ (id)_stagingRootClassCluster
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)resolveWithError:(id *)error
{
  stagingRoot = [(MIStagingLocation *)self stagingRoot];
  v6 = [stagingRoot resolveRootWithError:error];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      stagingRoot = [(MIStagingLocation *)v5 stagingRoot];
      stagingRoot2 = [(MIStagingLocation *)self stagingRoot];
      v8 = [stagingRoot isEqual:stagingRoot2];

      if (v8)
      {
        relativeStagingBaseDirectory = [(MIStagingLocation *)self relativeStagingBaseDirectory];
        relativeStagingBaseDirectory2 = [(MIStagingLocation *)v5 relativeStagingBaseDirectory];
        v11 = relativeStagingBaseDirectory2;
        if (relativeStagingBaseDirectory)
        {
          v12 = [relativeStagingBaseDirectory isEqual:relativeStagingBaseDirectory2];
        }

        else
        {
          v12 = relativeStagingBaseDirectory2 == 0;
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
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  stagingRoot = [(MIStagingLocation *)self stagingRoot];
  relativeStagingBaseDirectory = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  v6 = [v3 stringWithFormat:@"[%@/%@]", stagingRoot, relativeStagingBaseDirectory];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  stagingRoot = [(MIStagingLocation *)self stagingRoot];
  relativeStagingBaseDirectory = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  v7 = [v4 initWithStagingRoot:stagingRoot relativeStagingBaseDirectory:relativeStagingBaseDirectory];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stagingRoot = [(MIStagingLocation *)self stagingRoot];
  [coderCopy encodeObject:stagingRoot forKey:@"stagingRoot"];

  relativeStagingBaseDirectory = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  [coderCopy encodeObject:relativeStagingBaseDirectory forKey:@"relativeStagingBaseDirectory"];
}

- (unint64_t)hash
{
  relativeStagingBaseDirectory = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  stagingRoot = [(MIStagingLocation *)self stagingRoot];
  v5 = [stagingRoot hash];
  if (relativeStagingBaseDirectory)
  {
    v5 ^= [relativeStagingBaseDirectory hash];
  }

  return v5;
}

@end