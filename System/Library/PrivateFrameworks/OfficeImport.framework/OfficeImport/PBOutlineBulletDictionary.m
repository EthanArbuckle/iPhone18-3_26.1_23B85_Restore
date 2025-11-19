@interface PBOutlineBulletDictionary
- (id)initFromContainer:(id)a3 objectType:(unsigned int)a4;
- (id)objectForSlideId:(unsigned int)a3 textType:(int)a4 placeholderIndex:(unsigned int)a5;
@end

@implementation PBOutlineBulletDictionary

- (id)initFromContainer:(id)a3 objectType:(unsigned int)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PBOutlineBulletDictionary;
  v7 = [(PBOutlineBulletDictionary *)&v19 init];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mDictionary = v7->mDictionary;
    v7->mDictionary = v8;

    v10 = [v6 childCount];
    if (v10 >= 2)
    {
      v11 = 0;
      do
      {
        v12 = [v6 childAt:v11];
        v13 = v11 + 1;
        v14 = [v6 childAt:v11 + 1];
        v15 = [v12 eshObject];
        if ((*(*v15 + 16))(v15) == 4015)
        {
          v16 = [v14 eshObject];
          if ((*(*v16 + 16))(v16) == a4)
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

      while (v13 + 2 < v10);
    }
  }

  return v7;
}

- (id)objectForSlideId:(unsigned int)a3 textType:(int)a4 placeholderIndex:(unsigned int)a5
{
  v6 = [[PBOutlineBulletKey alloc] initWithSlideId:*&a3 textType:*&a4 placeholderIndex:*&a5];
  v7 = [(NSMutableDictionary *)self->mDictionary objectForKey:v6];

  return v7;
}

@end