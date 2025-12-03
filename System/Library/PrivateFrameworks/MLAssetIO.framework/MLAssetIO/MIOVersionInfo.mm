@interface MIOVersionInfo
- (BOOL)isEqual:(id)equal;
- (MIOVersionInfo)initWithMajor:(int64_t)major minor:(int64_t)minor patch:(int64_t)patch;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation MIOVersionInfo

- (MIOVersionInfo)initWithMajor:(int64_t)major minor:(int64_t)minor patch:(int64_t)patch
{
  v9.receiver = self;
  v9.super_class = MIOVersionInfo;
  result = [(MIOVersionInfo *)&v9 init];
  if (result)
  {
    result->_majorVersion = major;
    result->_minorVersion = minor;
    result->_patchVersion = patch;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      majorVersion = [(MIOVersionInfo *)self majorVersion];
      if (majorVersion == [(MIOVersionInfo *)v5 majorVersion]&& (v7 = [(MIOVersionInfo *)self minorVersion], v7 == [(MIOVersionInfo *)v5 minorVersion]))
      {
        patchVersion = [(MIOVersionInfo *)self patchVersion];
        v9 = patchVersion == [(MIOVersionInfo *)v5 patchVersion];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  majorVersion = [(MIOVersionInfo *)self majorVersion];
  v4 = [(MIOVersionInfo *)self minorVersion]^ majorVersion;
  return v4 ^ [(MIOVersionInfo *)self patchVersion];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  majorVersion = [(MIOVersionInfo *)self majorVersion];
  v6 = majorVersion - [compareCopy majorVersion];
  minorVersion = [(MIOVersionInfo *)self minorVersion];
  v8 = minorVersion - [compareCopy minorVersion];
  patchVersion = [(MIOVersionInfo *)self patchVersion];
  patchVersion2 = [compareCopy patchVersion];

  v11 = patchVersion - patchVersion2;
  v12 = v6 >> 63;
  if (v6 > 0)
  {
    LODWORD(v12) = v12 + 1;
  }

  v13 = v8 >> 63;
  if (v8 > 0)
  {
    LODWORD(v13) = v13 + 1;
  }

  v14 = v11 < 0;
  v15 = v11 >> 63;
  v16 = 3 * v13 + 9 * v12;
  if (!v14 && patchVersion != patchVersion2)
  {
    ++v16;
  }

  return (v16 + v15 != 0) | ((v16 + v15) >> 31);
}

@end