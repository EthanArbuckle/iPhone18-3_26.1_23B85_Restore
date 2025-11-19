@interface MIOVersionInfo
- (BOOL)isEqual:(id)a3;
- (MIOVersionInfo)initWithMajor:(int64_t)a3 minor:(int64_t)a4 patch:(int64_t)a5;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation MIOVersionInfo

- (MIOVersionInfo)initWithMajor:(int64_t)a3 minor:(int64_t)a4 patch:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = MIOVersionInfo;
  result = [(MIOVersionInfo *)&v9 init];
  if (result)
  {
    result->_majorVersion = a3;
    result->_minorVersion = a4;
    result->_patchVersion = a5;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOVersionInfo *)self majorVersion];
      if (v6 == [(MIOVersionInfo *)v5 majorVersion]&& (v7 = [(MIOVersionInfo *)self minorVersion], v7 == [(MIOVersionInfo *)v5 minorVersion]))
      {
        v8 = [(MIOVersionInfo *)self patchVersion];
        v9 = v8 == [(MIOVersionInfo *)v5 patchVersion];
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
  v3 = [(MIOVersionInfo *)self majorVersion];
  v4 = [(MIOVersionInfo *)self minorVersion]^ v3;
  return v4 ^ [(MIOVersionInfo *)self patchVersion];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(MIOVersionInfo *)self majorVersion];
  v6 = v5 - [v4 majorVersion];
  v7 = [(MIOVersionInfo *)self minorVersion];
  v8 = v7 - [v4 minorVersion];
  v9 = [(MIOVersionInfo *)self patchVersion];
  v10 = [v4 patchVersion];

  v11 = v9 - v10;
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
  if (!v14 && v9 != v10)
  {
    ++v16;
  }

  return (v16 + v15 != 0) | ((v16 + v15) >> 31);
}

@end