@interface OADPath
- (CGSize)size;
- (OADPath)init;
- (id)description;
@end

@implementation OADPath

- (OADPath)init
{
  v6.receiver = self;
  v6.super_class = OADPath;
  v2 = [(OADPath *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mElements = v2->mElements;
    v2->mElements = v3;

    v2->mFillMode = 1;
    v2->mStroked = 1;
  }

  return v2;
}

- (CGSize)size
{
  width = self->mSize.width;
  height = self->mSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADPath;
  v2 = [(OADPath *)&v4 description];

  return v2;
}

@end