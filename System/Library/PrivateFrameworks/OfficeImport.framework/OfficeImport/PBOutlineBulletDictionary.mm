@interface PBOutlineBulletDictionary
- (id)initFromContainer:(id)container objectType:(unsigned int)type;
- (id)objectForSlideId:(unsigned int)id textType:(int)type placeholderIndex:(unsigned int)index;
@end

@implementation PBOutlineBulletDictionary

- (id)initFromContainer:(id)container objectType:(unsigned int)type
{
  containerCopy = container;
  v19.receiver = self;
  v19.super_class = PBOutlineBulletDictionary;
  v7 = [(PBOutlineBulletDictionary *)&v19 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mDictionary = v7->mDictionary;
    v7->mDictionary = v8;

    childCount = [containerCopy childCount];
    if (childCount >= 2)
    {
      v11 = 0;
      do
      {
        v12 = [containerCopy childAt:v11];
        v13 = v11 + 1;
        v14 = [containerCopy childAt:v11 + 1];
        eshObject = [v12 eshObject];
        if ((*(*eshObject + 16))(eshObject) == 4015)
        {
          eshObject2 = [v14 eshObject];
          if ((*(*eshObject2 + 16))(eshObject2) == type)
          {
            v17 = [[PBOutlineBulletKey alloc] initWithOutlineBullet:v12];
            if (v17)
            {
              [(NSMutableDictionary *)v7->mDictionary setObject:v14 forKey:v17];
            }
          }
        }

        v11 = v13 + 1;
      }

      while (v13 + 2 < childCount);
    }
  }

  return v7;
}

- (id)objectForSlideId:(unsigned int)id textType:(int)type placeholderIndex:(unsigned int)index
{
  v6 = [[PBOutlineBulletKey alloc] initWithSlideId:*&id textType:*&type placeholderIndex:*&index];
  v7 = [(NSMutableDictionary *)self->mDictionary objectForKey:v6];

  return v7;
}

@end