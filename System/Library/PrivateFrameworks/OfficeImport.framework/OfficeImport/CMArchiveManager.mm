@interface CMArchiveManager
+ (id)resourceTypeToExtension:(int)a3;
+ (id)resourceTypeToMIME:(int)a3;
+ (int)blipTypeToResourceType:(int)a3;
- (BOOL)progressiveMappingIsPausedOnPath:(id)a3;
- (CMArchiveManager)init;
- (id)addResource:(id)a3 withName:(id)a4 type:(int)a5;
- (id)addResource:(id)a3 withType:(int)a4;
- (id)addResourceForDrawable:(id)a3 withType:(int)a4 drawable:(id)a5;
- (id)addStyle:(id)a3;
- (id)appendResourcePathToName:(id)a3;
- (id)cachedPathForDrawable:(id)a3;
- (id)copyResourceWithType:(int)a3;
- (void)pauseProgressiveMappingOnPath:(id)a3;
- (void)restartProgressiveMappingOnPath:(id)a3;
@end

@implementation CMArchiveManager

- (CMArchiveManager)init
{
  v10.receiver = self;
  v10.super_class = CMArchiveManager;
  v2 = [(CMArchiveManager *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    mDrawableCache = v2->mDrawableCache;
    v2->mDrawableCache = v3;

    v5 = objc_opt_new();
    mPausedPaths = v2->mPausedPaths;
    v2->mPausedPaths = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    mStyleObjectCache = v2->mStyleObjectCache;
    v2->mStyleObjectCache = v7;

    [(NSCache *)v2->mStyleObjectCache setCountLimit:128];
    [(NSCache *)v2->mStyleObjectCache setName:@"CMArchiveManager cache"];
  }

  return v2;
}

- (id)copyResourceWithType:(int)a3
{
  v3 = *&a3;
  v5 = [CMArchiveManager resourceTypeToExtension:?];
  v6 = [CMFileManager uniqueFileName:v5];

  v7 = [(CMArchiveManager *)self copyResourceWithName:v6 type:v3];
  return v7;
}

- (id)addResource:(id)a3 withType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(CMArchiveManager *)self copyResourceWithType:v4];
  [(CMArchiveManager *)self pushData:v6 toPath:v7];
  [(CMArchiveManager *)self commitDataAtPath:v7];
  [(CMArchiveManager *)self closeResourceAtPath:v7];

  return v7;
}

- (id)addResource:(id)a3 withName:(id)a4 type:(int)a5
{
  v5 = *&a5;
  v8 = a3;
  v9 = [(CMArchiveManager *)self copyResourceWithName:a4 type:v5];
  [(CMArchiveManager *)self pushData:v8 toPath:v9];
  [(CMArchiveManager *)self commitDataAtPath:v9];
  [(CMArchiveManager *)self closeResourceAtPath:v9];

  return v9;
}

- (id)addResourceForDrawable:(id)a3 withType:(int)a4 drawable:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v9];
    v11 = [(NSMutableDictionary *)self->mDrawableCache objectForKey:v10];
    if (!v11)
    {
      v11 = [(CMArchiveManager *)self addResource:v8 withType:v6];
      [(NSMutableDictionary *)self->mDrawableCache setObject:v11 forKey:v10];
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)cachedPathForDrawable:(id)a3
{
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a3];
  v5 = [(NSMutableDictionary *)self->mDrawableCache objectForKey:v4];

  return v5;
}

- (void)pauseProgressiveMappingOnPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"##main##";
  }

  v6 = v5;
  [(NSMutableSet *)self->mPausedPaths addObject:?];
}

- (void)restartProgressiveMappingOnPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"##main##";
  }

  v6 = v5;
  [(NSMutableSet *)self->mPausedPaths removeObject:?];
}

- (BOOL)progressiveMappingIsPausedOnPath:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"##main##";
  }

  v6 = [(NSMutableSet *)self->mPausedPaths containsObject:v5];

  return v6;
}

- (id)addStyle:(id)a3
{
  v4 = a3;
  v5 = [(NSCache *)self->mStyleObjectCache objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [v4 cacheFriendlyCSSStyleString];
    v7 = [(CMArchiveManager *)self addCssStyle:v8];
    if (v7)
    {
      [(NSCache *)self->mStyleObjectCache setObject:v7 forKey:v4];
    }
  }

  return v7;
}

- (id)appendResourcePathToName:(id)a3
{
  v4 = a3;
  mResourcePathPrefix = self->mResourcePathPrefix;
  if (mResourcePathPrefix)
  {
    v6 = [(NSString *)mResourcePathPrefix stringByAppendingPathComponent:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

+ (int)blipTypeToResourceType:(int)a3
{
  if (a3 > 9)
  {
    return -1;
  }

  else
  {
    return dword_25D710A50[a3];
  }
}

+ (id)resourceTypeToMIME:(int)a3
{
  if ((a3 + 1) > 0xB)
  {
    return @"text";
  }

  else
  {
    return qword_2799CDCD8[a3 + 1];
  }
}

+ (id)resourceTypeToExtension:(int)a3
{
  if (a3 > 0xA)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CDD38[a3];
  }
}

@end