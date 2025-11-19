@interface PBFontEntity
- (PBFontEntity)initWithName:(id)a3 charSet:(int)a4 type:(int)a5 family:(int)a6;
@end

@implementation PBFontEntity

- (PBFontEntity)initWithName:(id)a3 charSet:(int)a4 type:(int)a5 family:(int)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = PBFontEntity;
  v11 = [(PBFontEntity *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v10];
    mFaceName = v11->mFaceName;
    v11->mFaceName = v12;

    v11->mCharSet = a4;
    v11->mType = a5;
    v11->mFamily = a6;
  }

  return v11;
}

@end