@interface JFXAnimojiEffect
+ (BOOL)isAvatarKitAvailable;
+ (id)animojiIDs;
+ (id)createAnimojiEffectForID:(id)d;
+ (id)createMemojiEffectWithContentsOfFile:(id)file identifier:(id)identifier;
- (CGAffineTransform)_affineTransformFromEffectRect:(SEL)rect toSize:(CGRect)size basisOrigin:(CGSize)origin;
- (CGAffineTransform)transform:(SEL)transform basisOrigin:(CGRect)origin;
- (JFXAnimojiEffect)initWithCoder:(id)coder;
- (PVCGPointQuad)_convertRenderEffectPoints:(SEL)points toBasisRect:(PVCGPointQuad *)rect basisOrigin:(CGRect)origin;
- (UIImage)thumbnail;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (unint64_t)avatarVersionNumber;
- (void)_convertRenderEffectPoints:(CGPoint *)points numPoints:(unint64_t)numPoints fromBasisRect:(CGRect)rect basisOrigin:(int)origin;
- (void)_convertRenderEffectPoints:(CGPoint *)points numPoints:(unint64_t)numPoints toBasisRect:(CGRect)rect basisOrigin:(int)origin;
- (void)encodeWithCoder:(id)coder;
- (void)loadRenderEffectInBackgroundWithCompletionOnMainQueue:(id)queue;
- (void)loadRenderEffectOnQueue:(id)queue completion:(id)completion;
@end

@implementation JFXAnimojiEffect

- (JFXAnimojiEffect)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = JFXAnimojiEffect;
  v5 = [(JFXEffect *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"kJFXCaptureInterfaceOrientationKey"])
    {
      v6 = [coderCopy decodeIntegerForKey:@"kJFXCaptureInterfaceOrientationKey"];
    }

    else
    {
      v6 = 1;
    }

    [(JFXAnimojiEffect *)v5 setCaptureInterfaceOrientation:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = JFXAnimojiEffect;
  coderCopy = coder;
  [(JFXEffect *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[JFXAnimojiEffect captureInterfaceOrientation](self forKey:{"captureInterfaceOrientation", v5.receiver, v5.super_class), @"kJFXCaptureInterfaceOrientationKey"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = JFXAnimojiEffect;
  v4 = [(JFXEffect *)&v6 copyWithZone:zone];
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
    requestForCustomAvatars = [MEMORY[0x277CF0500] requestForCustomAvatars];
    v5 = [v3 avatarsForFetchRequest:requestForCustomAvatars error:0];
    reverseObjectEnumerator = [v5 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = allObjects;
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

          identifier = [*(*(&v26 + 1) + 8 * i) identifier];
          [v2 addObject:identifier];
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    requestForPredefinedAvatars = [MEMORY[0x277CF0500] requestForPredefinedAvatars];
    v15 = [v3 avatarsForFetchRequest:requestForPredefinedAvatars error:0];
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

          identifier2 = [*(*(&v22 + 1) + 8 * j) identifier];
          [v2 addObject:identifier2];
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

+ (id)createAnimojiEffectForID:(id)d
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (d)
  {
    v3 = MEMORY[0x277CF0518];
    dCopy = d;
    v5 = objc_alloc_init(v3);
    v6 = [MEMORY[0x277CF0500] requestForAvatarWithIdentifier:dCopy];

    v21 = 0;
    v7 = [v5 avatarsForFetchRequest:v6 error:&v21];
    v8 = v21;
    firstObject = [v7 firstObject];
    if (firstObject)
    {
      v10 = AVTAvatarKitVersionNumber();
      v11 = [MEMORY[0x277CF0508] avatarForRecord:firstObject];
      dataRepresentation = [v11 dataRepresentation];
      v13 = dataRepresentation;
      v20 = v8;
      if (dataRepresentation)
      {
        v22[0] = @"JFXAnimojiEffectDataRepresentationKey";
        v22[1] = @"JFXAnimojiEffectAvatarVersionNumberKey";
        v23[0] = dataRepresentation;
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
        v23[1] = v14;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
      }

      else
      {
        v15 = 0;
      }

      v17 = +[JFXEffectFactory sharedInstance];
      identifier = [firstObject identifier];
      v16 = [v17 createEffectForType:7 fromID:identifier withProperties:v15];

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

+ (id)createMemojiEffectWithContentsOfFile:(id)file identifier:(id)identifier
{
  v13[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:file];
  if (v6)
  {
    v12[0] = @"JFXAnimojiEffectDataRepresentationKey";
    v12[1] = @"JFXAnimojiEffectAvatarVersionNumberKey";
    v13[0] = v6;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:AVTAvatarKitVersionNumber()];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

    v9 = +[JFXEffectFactory sharedInstance];
    v10 = [v9 createEffectForType:7 fromID:identifierCopy withProperties:v8];
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
    effectID = [(JFXEffect *)self effectID];
    v5 = [v3 thumbnailForAnimojiNamed:effectID options:0];
  }

  else
  {
    v6 = MEMORY[0x277D755B8];
    effectID = [(JFXEffect *)self effectID];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v6 imageNamed:effectID inBundle:v7 compatibleWithTraitCollection:0];
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
  effectParameters = [(JFXEffect *)self effectParameters];
  v3 = [effectParameters objectForKeyedSubscript:@"JFXAnimojiEffectDataRepresentationKey"];

  return v3;
}

- (unint64_t)avatarVersionNumber
{
  effectParameters = [(JFXEffect *)self effectParameters];
  v3 = [effectParameters objectForKeyedSubscript:@"JFXAnimojiEffectAvatarVersionNumberKey"];

  unsignedIntegerValue = [v3 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)loadRenderEffectInBackgroundWithCompletionOnMainQueue:(id)queue
{
  queueCopy = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__JFXAnimojiEffect_loadRenderEffectInBackgroundWithCompletionOnMainQueue___block_invoke;
  block[3] = &unk_278D7A168;
  v6 = queueCopy;
  v4 = queueCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)loadRenderEffectOnQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__JFXAnimojiEffect_loadRenderEffectOnQueue_completion___block_invoke;
  block[3] = &unk_278D7A168;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, block);
}

- (CGAffineTransform)transform:(SEL)transform basisOrigin:(CGRect)origin
{
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, origin.origin.x, origin.origin.y, origin.size.width, origin.size.height}];
  objc_exception_throw(v5);
}

- (PVCGPointQuad)_convertRenderEffectPoints:(SEL)points toBasisRect:(PVCGPointQuad *)rect basisOrigin:(CGRect)origin
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, origin.origin.x, origin.origin.y, origin.size.width, origin.size.height}];
  objc_exception_throw(v6);
}

- (void)_convertRenderEffectPoints:(CGPoint *)points numPoints:(unint64_t)numPoints toBasisRect:(CGRect)rect basisOrigin:(int)origin
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  objc_exception_throw(v6);
}

- (void)_convertRenderEffectPoints:(CGPoint *)points numPoints:(unint64_t)numPoints fromBasisRect:(CGRect)rect basisOrigin:(int)origin
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  objc_exception_throw(v6);
}

- (CGAffineTransform)_affineTransformFromEffectRect:(SEL)rect toSize:(CGRect)size basisOrigin:(CGSize)origin
{
  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"not supported" userInfo:{0, size.origin.x, size.origin.y, size.size.width, size.size.height, origin.width, origin.height}];
  objc_exception_throw(v6);
}

@end