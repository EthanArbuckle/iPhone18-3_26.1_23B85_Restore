@interface MFPImageAttributes
- (MFPImageAttributes)init;
- (id)colorAdjustWithType:(int)a3;
- (id)ensureColorAdjustWithType:(int)a3;
@end

@implementation MFPImageAttributes

- (MFPImageAttributes)init
{
  v6.receiver = self;
  v6.super_class = MFPImageAttributes;
  v2 = [(MFPImageAttributes *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mColorAdjustMap = v2->mColorAdjustMap;
    v2->mColorAdjustMap = v3;
  }

  return v2;
}

- (id)colorAdjustWithType:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&a3];
  v5 = [(NSMutableDictionary *)self->mColorAdjustMap objectForKey:v4];

  return v5;
}

- (id)ensureColorAdjustWithType:(int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:*&a3];
  v5 = [(NSMutableDictionary *)self->mColorAdjustMap objectForKey:v4];
  if (!v5)
  {
    v5 = objc_alloc_init(MFPColorAdjust);
    [(NSMutableDictionary *)self->mColorAdjustMap setObject:v5 forKey:v4];
  }

  return v5;
}

@end