@interface MFPPath
- (MFPPath)initWithPath:(id)a3;
- (void)dealloc;
@end

@implementation MFPPath

- (MFPPath)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFPPath;
  v6 = [(MFPPath *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mPath, a3);
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