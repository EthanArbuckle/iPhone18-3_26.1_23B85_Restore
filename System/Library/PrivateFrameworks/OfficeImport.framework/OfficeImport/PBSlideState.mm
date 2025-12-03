@interface PBSlideState
- (PBSlideState)init;
- (unsigned)generateGroupId;
- (void)addBuild:(id)build order:(unsigned int)order;
@end

@implementation PBSlideState

- (PBSlideState)init
{
  v6.receiver = self;
  v6.super_class = PBSlideState;
  v2 = [(PBSlideState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mBuildOrderMap = v2->mBuildOrderMap;
    v2->mBuildOrderMap = v3;

    v2->mCurrentGroupId = 0;
  }

  return v2;
}

- (void)addBuild:(id)build order:(unsigned int)order
{
  v4 = *&order;
  buildCopy = build;
  if (buildCopy)
  {
    v12 = buildCopy;
    while (1)
    {
      mBuildOrderMap = self->mBuildOrderMap;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
      v9 = [(NSMutableDictionary *)mBuildOrderMap objectForKey:v8];

      if (!v9)
      {
        break;
      }

      v4 = (v4 + 1);
    }

    v10 = self->mBuildOrderMap;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
    [(NSMutableDictionary *)v10 setObject:v12 forKey:v11];

    buildCopy = v12;
  }
}

- (unsigned)generateGroupId
{
  mCurrentGroupId = self->mCurrentGroupId;
  self->mCurrentGroupId = mCurrentGroupId + 1;
  return mCurrentGroupId;
}

@end