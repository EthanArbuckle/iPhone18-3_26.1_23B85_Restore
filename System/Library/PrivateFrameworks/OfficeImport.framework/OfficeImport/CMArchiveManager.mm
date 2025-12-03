@interface CMArchiveManager
+ (id)resourceTypeToExtension:(int)extension;
+ (id)resourceTypeToMIME:(int)e;
+ (int)blipTypeToResourceType:(int)type;
- (BOOL)progressiveMappingIsPausedOnPath:(id)path;
- (CMArchiveManager)init;
- (id)addResource:(id)resource withName:(id)name type:(int)type;
- (id)addResource:(id)resource withType:(int)type;
- (id)addResourceForDrawable:(id)drawable withType:(int)type drawable:(id)a5;
- (id)addStyle:(id)style;
- (id)appendResourcePathToName:(id)name;
- (id)cachedPathForDrawable:(id)drawable;
- (id)copyResourceWithType:(int)type;
- (void)pauseProgressiveMappingOnPath:(id)path;
- (void)restartProgressiveMappingOnPath:(id)path;
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

- (id)copyResourceWithType:(int)type
{
  v3 = *&type;
  v5 = [CMArchiveManager resourceTypeToExtension:?];
  v6 = [CMFileManager uniqueFileName:v5];

  v7 = [(CMArchiveManager *)self copyResourceWithName:v6 type:v3];
  return v7;
}

- (id)addResource:(id)resource withType:(int)type
{
  v4 = *&type;
  resourceCopy = resource;
  v7 = [(CMArchiveManager *)self copyResourceWithType:v4];
  [(CMArchiveManager *)self pushData:resourceCopy toPath:v7];
  [(CMArchiveManager *)self commitDataAtPath:v7];
  [(CMArchiveManager *)self closeResourceAtPath:v7];

  return v7;
}

- (id)addResource:(id)resource withName:(id)name type:(int)type
{
  v5 = *&type;
  resourceCopy = resource;
  v9 = [(CMArchiveManager *)self copyResourceWithName:name type:v5];
  [(CMArchiveManager *)self pushData:resourceCopy toPath:v9];
  [(CMArchiveManager *)self commitDataAtPath:v9];
  [(CMArchiveManager *)self closeResourceAtPath:v9];

  return v9;
}

- (id)addResourceForDrawable:(id)drawable withType:(int)type drawable:(id)a5
{
  v6 = *&type;
  drawableCopy = drawable;
  v9 = a5;
  if (drawableCopy)
  {
    v10 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v9];
    v11 = [(NSMutableDictionary *)self->mDrawableCache objectForKey:v10];
    if (!v11)
    {
      v11 = [(CMArchiveManager *)self addResource:drawableCopy withType:v6];
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

- (id)cachedPathForDrawable:(id)drawable
{
  v4 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:drawable];
  v5 = [(NSMutableDictionary *)self->mDrawableCache objectForKey:v4];

  return v5;
}

- (void)pauseProgressiveMappingOnPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = pathCopy;
  }

  else
  {
    v5 = @"##main##";
  }

  v6 = v5;
  [(NSMutableSet *)self->mPausedPaths addObject:?];
}

- (void)restartProgressiveMappingOnPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = pathCopy;
  }

  else
  {
    v5 = @"##main##";
  }

  v6 = v5;
  [(NSMutableSet *)self->mPausedPaths removeObject:?];
}

- (BOOL)progressiveMappingIsPausedOnPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v5 = pathCopy;
  }

  else
  {
    v5 = @"##main##";
  }

  v6 = [(NSMutableSet *)self->mPausedPaths containsObject:v5];

  return v6;
}

- (id)addStyle:(id)style
{
  styleCopy = style;
  v5 = [(NSCache *)self->mStyleObjectCache objectForKey:styleCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    cacheFriendlyCSSStyleString = [styleCopy cacheFriendlyCSSStyleString];
    v7 = [(CMArchiveManager *)self addCssStyle:cacheFriendlyCSSStyleString];
    if (v7)
    {
      [(NSCache *)self->mStyleObjectCache setObject:v7 forKey:styleCopy];
    }
  }

  return v7;
}

- (id)appendResourcePathToName:(id)name
{
  nameCopy = name;
  mResourcePathPrefix = self->mResourcePathPrefix;
  if (mResourcePathPrefix)
  {
    v6 = [(NSString *)mResourcePathPrefix stringByAppendingPathComponent:nameCopy];
  }

  else
  {
    v6 = nameCopy;
  }

  v7 = v6;

  return v7;
}

+ (int)blipTypeToResourceType:(int)type
{
  if (type > 9)
  {
    return -1;
  }

  else
  {
    return dword_25D710A50[type];
  }
}

+ (id)resourceTypeToMIME:(int)e
{
  if ((e + 1) > 0xB)
  {
    return @"text";
  }

  else
  {
    return qword_2799CDCD8[e + 1];
  }
}

+ (id)resourceTypeToExtension:(int)extension
{
  if (extension > 0xA)
  {
    return &stru_286EE1130;
  }

  else
  {
    return off_2799CDD38[extension];
  }
}

@end