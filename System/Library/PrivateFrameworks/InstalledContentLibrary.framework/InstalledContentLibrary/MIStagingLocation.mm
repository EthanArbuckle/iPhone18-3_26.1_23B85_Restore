@interface MIStagingLocation
+ (id)_stagingRootClassCluster;
- (BOOL)isEqual:(id)a3;
- (MIStagingLocation)initWithCoder:(id)a3;
- (MIStagingLocation)initWithStagingRoot:(id)a3 relativeStagingBaseDirectory:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resolveWithError:(id *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MIStagingLocation

- (MIStagingLocation)initWithStagingRoot:(id)a3 relativeStagingBaseDirectory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MIStagingLocation;
  v9 = [(MIStagingLocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stagingRoot, a3);
    objc_storeStrong(&v10->_relativeStagingBaseDirectory, a4);
  }

  return v10;
}

- (MIStagingLocation)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MIStagingLocation;
  v5 = [(MIStagingLocation *)&v12 init];
  if (v5)
  {
    v6 = [objc_opt_class() _stagingRootClassCluster];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"stagingRoot"];
    stagingRoot = v5->_stagingRoot;
    v5->_stagingRoot = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"relativeStagingBaseDirectory"];
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

- (id)resolveWithError:(id *)a3
{
  v5 = [(MIStagingLocation *)self stagingRoot];
  v6 = [v5 resolveRootWithError:a3];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIStagingLocation *)v5 stagingRoot];
      v7 = [(MIStagingLocation *)self stagingRoot];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(MIStagingLocation *)self relativeStagingBaseDirectory];
        v10 = [(MIStagingLocation *)v5 relativeStagingBaseDirectory];
        v11 = v10;
        if (v9)
        {
          v12 = [v9 isEqual:v10];
        }

        else
        {
          v12 = v10 == 0;
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
  v4 = [(MIStagingLocation *)self stagingRoot];
  v5 = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  v6 = [v3 stringWithFormat:@"[%@/%@]", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MIStagingLocation *)self stagingRoot];
  v6 = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  v7 = [v4 initWithStagingRoot:v5 relativeStagingBaseDirectory:v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MIStagingLocation *)self stagingRoot];
  [v4 encodeObject:v5 forKey:@"stagingRoot"];

  v6 = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  [v4 encodeObject:v6 forKey:@"relativeStagingBaseDirectory"];
}

- (unint64_t)hash
{
  v3 = [(MIStagingLocation *)self relativeStagingBaseDirectory];
  v4 = [(MIStagingLocation *)self stagingRoot];
  v5 = [v4 hash];
  if (v3)
  {
    v5 ^= [v3 hash];
  }

  return v5;
}

@end