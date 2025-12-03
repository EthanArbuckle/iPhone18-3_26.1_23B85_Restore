@interface MFPPath
- (MFPPath)initWithPath:(id)path;
- (void)dealloc;
@end

@implementation MFPPath

- (MFPPath)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = MFPPath;
  v6 = [(MFPPath *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mPath, path);
  }

  return v7;
}

- (void)dealloc
{
  mPath = self->mPath;
  self->mPath = 0;

  v4.receiver = self;
  v4.super_class = MFPPath;
  [(MFPPath *)&v4 dealloc];
}

@end