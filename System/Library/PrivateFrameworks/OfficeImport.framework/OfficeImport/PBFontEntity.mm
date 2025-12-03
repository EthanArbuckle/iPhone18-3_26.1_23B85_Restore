@interface PBFontEntity
- (PBFontEntity)initWithName:(id)name charSet:(int)set type:(int)type family:(int)family;
@end

@implementation PBFontEntity

- (PBFontEntity)initWithName:(id)name charSet:(int)set type:(int)type family:(int)family
{
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = PBFontEntity;
  v11 = [(PBFontEntity *)&v15 init];
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:nameCopy];
    mFaceName = v11->mFaceName;
    v11->mFaceName = v12;

    v11->mCharSet = set;
    v11->mType = type;
    v11->mFamily = family;
  }

  return v11;
}

@end