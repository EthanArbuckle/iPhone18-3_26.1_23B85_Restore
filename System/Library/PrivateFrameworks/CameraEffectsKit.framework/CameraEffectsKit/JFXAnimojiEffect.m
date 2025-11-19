@interface JFXAnimojiEffect
+ (BOOL)isAvatarKitAvailable;
+ (id)animojiIDs;
+ (id)createAnimojiEffectForID:(id)a3;
+ (id)createMemojiEffectWithContentsOfFile:(id)a3 identifier:(id)a4;
- (CGAffineTransform)_affineTransformFromEffectRect:(SEL)a3 toSize:(CGRect)a4 basisOrigin:(CGSize)a5;
- (CGAffineTransform)transform:(SEL)a3 basisOrigin:(CGRect)a4;
- (JFXAnimojiEffect)initWithCoder:(id)a3;
- (PVCGPointQuad)_convertRenderEffectPoints:(SEL)a3 toBasisRect:(PVCGPointQuad *)a4 basisOrigin:(CGRect)a5;
- (UIImage)thumbnail;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dataRepresentation;
- (unint64_t)avatarVersionNumber;
- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 fromBasisRect:(CGRect)a5 basisOrigin:(int)a6;
- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 toBasisRect:(CGRect)a5 basisOrigin:(int)a6;
- (void)encodeWithCoder:(id)a3;
- (void)loadRenderEffectInBackgroundWithCompletionOnMainQueue:(id)a3;
- (void)loadRenderEffectOnQueue:(id)a3 completion:(id)a4;
@end

@implementation JFXAnimojiEffect

- (JFXAnimojiEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JFXAnimojiEffect;
  v5 = [(JFXEffect *)&v8 initWithCoder:v4];
  if (v5)
  {
    if ([v4 containsValueForKey:@"kJFXCaptureInterfaceOrientationKey"])
    {
      v6 = [v4 decodeIntegerForKey:@"kJFXCaptureInterfaceOrientationKey"];
    }

    else
    {
      v6 = 1;
    }

    [(JFXAnimojiEffect *)v5 setCaptureInterfaceOrientation:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = JFXAnimojiEffect;
  v4 = a3;
  [(JFXEffect *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[JFXAnimojiEffect captureInterfaceOrientation](self forKey:{"captureInterfaceOrientation", v5.receiver, v5.super_class), @"kJFXCaptureInterfaceOrientationKey"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = JFXAnimojiEffect;
  v4 = [(JFXEffect *)&v6 copyWithZone:a3];
  [v4 setCaptureInterfaceOrientation:{-[JFXAnimojiEffect captureInterfaceOrientation](self, "captureInterfaceOrientation")}];
  return v4;
}

+ (id)animojiIDs
{
  v32 = *MEMORY[0x277D85DE8];
  if ([objc_opt_class() isAvatarKitAvailable])
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3 = objc_alloc_init(MEMORY[0x277CF0518]);
    v4 = [MEMORY[0x277CF0500] requestForCustomAvatars];
    v5 = [v3 avatarsForFetchRequest:v4 error:0];
    v6 = [v5 reverseObjectEnumerator];
    v7 = [v6 allObjects];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v26 + 1) + 8 * i) identifier];
          [v2 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x277CF0500] requestForPredefinedAvatars];
    v15 = [v3 avatarsForFetchRequest:v14 error:0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v22 + 1) + 8 * j) identifier];
          [v2 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v2 = &unk_28556D878;
  }

  return v2;
}

+ (id)createAnimojiEffectForID:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CF0518];
    v4 = a3;
    v5 = objc_alloc_init(v3);
    v6 = [MEMORY[0x277CF0500] requestForAvatarWithIdentifier:v4];

    v21 = 0;
    v7 = [v5 avatarsForFetchRequest:v6 error:&v21];
    v8 = v21;
    v9 = [v7 firstObject];
    if (v9)
    {
      v10 = AVTAvatarKitVersionNumber();
      v11 = [MEMORY[0x277CF0508] avatarForRecord:v9];
      v12 = [v11 dataRepresentation];
      v13 = v12;
      v20 = v8;
      if (v12)
      {
        v22[0] = @"JFXAnimojiEffectDataRepresentationKey";
        v22[1] = @"JFXAnimojiEffectAvatarVersionNumberKey";
        v23[0] = v12;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v23[1] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      }

      else
      {
        v15 = 0;
      }

      v17 = +[JFXEffectFactory sharedInstance];
      v18 = [v9 identifier];
      v16 = [v17 createEffectForType:7 fromID:v18 withProperties:v15];

      v8 = v20;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)createMemojiEffectWithContentsOfFile:(id)a3 identifier:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:a3];
  if (v6)
  {
    v12[0] = @"JFXAnimojiEffectDataRepresentationKey";
    v12[1] = @"JFXAnimojiEffectAvatarVersionNumberKey";
    v13[0] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:AVTAvatarKitVersionNumber()];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v9 = +[JFXEffectFactory sharedInstance];
    v10 = [v9 createEffectForType:7 fromID:v5 withProperties:v8];
  }

  else
  {
    v8 = JFXLog_automation();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [JFXAnimojiEffect createMemojiEffectWithContentsOfFile:v8 identifier:?];
    }

    v10 = 0;
  }

  return v10;
}

+ (BOOL)isAvatarKitAvailable
{
  if (isAvatarKitAvailable_onceToken != -1)
  {
    +[JFXAnimojiEffect isAvatarKitAvailable];
  }

  return isAvatarKitAvailable_s_IsAvatarKitAvailable;
}

Class __40__JFXAnimojiEffect_isAvatarKitAvailable__block_invoke()
{
  result = NSClassFromString(&cfstr_Avtanimoji.isa);
  isAvatarKitAvailable_s_IsAvatarKitAvailable = result != 0;
  return result;
}

- (UIImage)thumbnail
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__JFXAnimojiEffect_thumbnail__block_invoke;
  block[3] = &unk_278D79D20;
  block[4] = self;
  if (thumbnail_onceToken != -1)
  {
    dispatch_once(&thumbnail_onceToken, block);
  }

  if (thumbnail_s_AvatarKitHasAnimojiThumbnails == 1)
  {
    v3 = objc_opt_class();
    v4 = [(JFXEffect *)self effectID];
    v5 = [v3 thumbnailForAnimojiNamed:v4 options:0];
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    v4 = [(JFXEffect *)self effectID];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 imageNamed:v4 inBundle:v7 compatibleWithTraitCollection:0];
  }

  return v5;
}

uint64_t __29__JFXAnimojiEffect_thumbnail__block_invoke()
{
  result = [objc_opt_class() isAvatarKitAvailable];
  if (result)
  {
    objc_opt_class();
    result = objc_opt_respondsToSelector();
    if (result)
    {
      thumbnail_s_AvatarKitHasAnimojiThumbnails = 1;
    }
  }

  return result;
}

- (id)dataRepresentation
{
  v2 = [(JFXEffect *)self effectParameters];
  v3 = [v2 objectForKeyedSubscript:@"JFXAnimojiEffectDataRepresentationKey"];

  return v3;
}

- (unint64_t)avatarVersionNumber
{
  v2 = [(JFXEffect *)self effectParameters];
  v3 = [v2 objectForKeyedSubscript:@"JFXAnimojiEffectAvatarVersionNumberKey"];

  v4 = [v3 unsignedIntegerValue];
  return v4;
}

- (void)loadRenderEffectInBackgroundWithCompletionOnMainQueue:(id)a3
{
  v3 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__JFXAnimojiEffect_loadRenderEffectInBackgroundWithCompletionOnMainQueue___block_invoke;
  block[3] = &unk_278D7A168;
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)loadRenderEffectOnQueue:(id)a3 completion:(id)a4
{
  v5 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__JFXAnimojiEffect_loadRenderEffectOnQueue_completion___block_invoke;
  block[3] = &unk_278D7A168;
  v8 = v5;
  v6 = v5;
  dispatch_async(a3, block);
}

- (CGAffineTransform)transform:(SEL)a3 basisOrigin:(CGRect)a4
{
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height}];
  objc_exception_throw(v5);
}

- (PVCGPointQuad)_convertRenderEffectPoints:(SEL)a3 toBasisRect:(PVCGPointQuad *)a4 basisOrigin:(CGRect)a5
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  objc_exception_throw(v6);
}

- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 toBasisRect:(CGRect)a5 basisOrigin:(int)a6
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  objc_exception_throw(v6);
}

- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 fromBasisRect:(CGRect)a5 basisOrigin:(int)a6
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  objc_exception_throw(v6);
}

- (CGAffineTransform)_affineTransformFromEffectRect:(SEL)a3 toSize:(CGRect)a4 basisOrigin:(CGSize)a5
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, a5.width, a5.height}];
  objc_exception_throw(v6);
}

@end