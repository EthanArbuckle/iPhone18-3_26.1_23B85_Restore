@interface JFXEffect
- ($AC64C642040120CEEAD84DEEACA9A5CE)rangeForPresentationRange:(SEL)a3;
- (BOOL)arePreviewingAssetsLocal;
- (BOOL)areRenderingAssetsLocal;
- (BOOL)buildInAnimation;
- (BOOL)enablePresentationState:(BOOL)a3;
- (BOOL)forceDisableLooping;
- (BOOL)forceRenderAtPosterFrame;
- (BOOL)isAppearanceEqual:(id)a3 forPurpose:(unint64_t)a4;
- (BOOL)isConfiguredForOutputAspect:(double)a3;
- (BOOL)isConfiguredForOutputAspectMatchingSize:(CGSize)a3;
- (BOOL)isContentAvailable;
- (BOOL)isContentNew;
- (BOOL)isEqual:(id)a3;
- (BOOL)isHidden;
- (BOOL)loadRenderEffect;
- (BOOL)renderEffectResourcesAreReady;
- (CGAffineTransform)_affineTransformFromEffectRect:(SEL)a3 toSize:(CGRect)a4 basisOrigin:(CGSize)a5;
- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6;
- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6 ignoreTranslation:(int)a7;
- (CGRect)playableRectInOutputSize:(CGSize)a3;
- (CGSize)renderSize;
- (JFXEffect)initWithCoder:(id)a3;
- (JFXEffect)initWithEffectID:(id)a3;
- (NSDictionary)effectParameters;
- (NSString)contentVersion;
- (NSString)description;
- (PVCGPointQuad)_convertRenderEffectPoints:(SEL)a3 toBasisRect:(PVCGPointQuad *)a4 basisOrigin:(CGRect)a5;
- (double)outputAspect;
- (double)playableScaleInOutputSize:(CGSize)a3;
- (float)opacity;
- (id)JFX_defaultMotionDocumentFolderLocalURL;
- (id)accessibilityName;
- (id)availableAssetsWithFilteringOptions:(id)a3;
- (id)availableAssetsWithFilteringOptionsArray:(id)a3;
- (id)contentProperties;
- (id)copyWithZone:(_NSZone *)a3;
- (id)describeRequest:(id)a3;
- (id)displayName;
- (id)localAssetsWithFilteringOptions:(id)a3;
- (id)parameterForKey:(id)a3;
- (id)parametersClassWhitelist;
- (id)renderEffect;
- (id)requestAllAssetsWithOptions:(id)a3 progressAndCancellationHandler:(id)a4 completionHandler:(id)a5;
- (id)requestAllAssetsWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (id)requestAssetWithOptions:(id)a3 progressAndCancellationHandler:(id)a4 completionHandler:(id)a5;
- (id)requestAssetWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (id)requestPreviewingAssetsWithPriority:(int64_t)a3 onlyThumbnailAssetWhenAvailable:(BOOL)a4 progressHandler:(id)a5 completionHandler:(id)a6;
- (id)requestRenderingAssetsWithPriority:(int64_t)a3 progressHandler:(id)a4 completionHandler:(id)a5;
- (id)serializableEffectParameters;
- (int64_t)playableAspectRatio;
- (int64_t)playableAspectRatioPreservationMode;
- (uint64_t)setTopLevelTransform:(__n128)a3 relativeTo:(uint64_t)a4 basisOrigin:(__int128 *)a5;
- (uint64_t)topLevelTransformRelativeTo:(void *)a1@<X0> basisOrigin:(_OWORD *)a2@<X8>;
- (unint64_t)contentAvailability;
- (unint64_t)hash;
- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 fromBasisRect:(CGRect)a5 basisOrigin:(int)a6;
- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 toBasisRect:(CGRect)a5 basisOrigin:(int)a6;
- (void)_createCachedRenderEffect_noLock;
- (void)addEffectParameters:(id)a3;
- (void)cancelAssetRequest:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)loadRenderEffectInBackgroundWithCompletionOnMainQueue:(id)a3;
- (void)loadRenderEffectOnQueue:(id)a3 completion:(id)a4;
- (void)registerMotionDocumentWithinAssets:(id)a3;
- (void)removeEffectParameters:(id)a3;
- (void)setBuildInAnimation:(BOOL)a3;
- (void)setEffectParameters:(id)a3;
- (void)setForceDisableLooping:(BOOL)a3;
- (void)setForceRenderAtPosterFrame:(BOOL)a3;
- (void)setHDR:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setMotionDocumentFolderPath:(id)a3;
- (void)setOpacity:(float)a3;
- (void)setOutputAspect:(double)a3;
- (void)setParameter:(id)a3 forKey:(id)a4;
- (void)setPlayableAspectRatio:(int64_t)a3;
- (void)setPlayableAspectRatioPreservationMode:(int64_t)a3;
- (void)setRenderSize:(CGSize)a3;
- (void)setRenderStartOffset:(id *)a3;
- (void)setTopLevelAdditionalScale:(CGPoint)a3;
- (void)setTopLevelTransform:(_OWORD *)a3;
- (void)topLevelTransform;
- (void)updatePriorityForAssetRequest:(id)a3 newPriority:(int64_t)a4;
@end

@implementation JFXEffect

- (void)dealloc
{
  [(NSLock *)self->_paramLock lock];
  renderEffect = self->_renderEffect;
  self->_renderEffect = 0;

  effectParameters = self->_effectParameters;
  self->_effectParameters = 0;

  dirtyEffectParameters = self->_dirtyEffectParameters;
  self->_dirtyEffectParameters = 0;

  [(NSLock *)self->_paramLock unlock];
  v6.receiver = self;
  v6.super_class = JFXEffect;
  [(JFXEffect *)&v6 dealloc];
}

- (JFXEffect)initWithEffectID:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = JFXEffect;
  v6 = [(JFXEffect *)&v17 init];
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    effectParameters = v6->_effectParameters;
    v6->_effectParameters = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dirtyEffectParameters = v6->_dirtyEffectParameters;
    v6->_dirtyEffectParameters = v9;

    v11 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    paramLock = v6->_paramLock;
    v6->_paramLock = v11;

    objc_storeStrong(&v6->_effectID, a3);
    v6->_isNone = [JFXEffect effectIDIsNone:v6->_effectID];
    v6->_renderSize = *MEMORY[0x277CBF3A8];
    -[JFXEffect setPlayableAspectRatio:](v6, "setPlayableAspectRatio:", [objc_opt_class() defaultPlayableAspectRatio]);
    -[JFXEffect setPlayableAspectRatioPreservationMode:](v6, "setPlayableAspectRatioPreservationMode:", [objc_opt_class() defaultPlayableAspectRatioPreservationMode]);
    if ([(JFXEffect *)v6 type]&& ![(JFXEffect *)v6 isNone])
    {
      v13 = +[JFXEffectFactory sharedInstance];
      v14 = [v13 createEffectContentDataSourceForEffectID:v6->_effectID ofType:{-[JFXEffect type](v6, "type")}];
      contentDataSource = v6->_contentDataSource;
      v6->_contentDataSource = v14;
    }

    if ([(JFXEffect *)v6 loopedRangeRenderIsCacheable])
    {
      [(JFXEffect *)v6 setParameter:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D41A48]];
    }

    [(JFXEffect *)v6 setParameter:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D41AF8]];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(JFXEffect *)self effectID];
  v6 = [v4 initWithEffectID:v5];

  [(JFXEffect *)self renderSize];
  [v6 setRenderSize:?];
  [(NSLock *)self->_paramLock lock];
  [*(v6 + 48) lock];
  v7 = [(NSMutableDictionary *)self->_effectParameters mutableDeepCopy];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSMutableDictionary *)self->_dirtyEffectParameters mutableDeepCopy];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  objc_storeStrong((v6 + 72), self->_motionDocumentFolderPath);
  [*(v6 + 48) unlock];
  [(NSLock *)self->_paramLock unlock];
  return v6;
}

- (NSString)description
{
  v14.receiver = self;
  v14.super_class = JFXEffect;
  v3 = [(JFXEffect *)&v14 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = MEMORY[0x277D415F8];
  v6 = [(JFXEffect *)self effectID];
  v7 = [v5 effectTypeForEffectID:v6];
  v8 = MEMORY[0x277D415F8];
  v9 = [(JFXEffect *)self effectID];
  v10 = [v8 displayNameForEffectID:v9];
  v11 = [v4 stringWithFormat:@" %@: %@", v7, v10];
  v12 = [v3 stringByAppendingString:v11];

  return v12;
}

- (unint64_t)contentAvailability
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (!v3)
  {
    return 0;
  }

  v4 = [(JFXEffect *)self contentDataSource];
  v5 = [v4 contentAvailability];

  return v5;
}

- (BOOL)isContentAvailable
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (!v3)
  {
    return 1;
  }

  v4 = [(JFXEffect *)self contentDataSource];
  v5 = [v4 isContentAvailable];

  return v5;
}

- (BOOL)isContentNew
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (!v3)
  {
    return 0;
  }

  v4 = [(JFXEffect *)self contentDataSource];
  v5 = [v4 isContentNew];

  return v5;
}

- (NSString)contentVersion
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXEffect *)self contentDataSource];
    v5 = [v4 contentVersion];
  }

  else
  {
    v5 = @"nodatasource";
  }

  return v5;
}

- (void)setHidden:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41A70]];
}

- (void)setOpacity:(float)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41B58]];
}

- (float)opacity
{
  v3 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41B58]];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5;
  }

  else
  {
    v7 = [(JFXEffect *)self renderEffect];
    [v7 topLevelOpacity];
    v6 = v8;
  }

  return v6;
}

- (BOOL)isHidden
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A70]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)enablePresentationState:(BOOL)a3
{
  v3 = a3;
  v5 = [(JFXEffect *)self forceRenderAtPosterFrame]^ a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [(JFXEffect *)self setParameter:v6 forKey:*MEMORY[0x277D41AB0]];
  }

  return v5;
}

- (void)setForceRenderAtPosterFrame:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AB0]];
}

- (BOOL)forceRenderAtPosterFrame
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41AB0]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setBuildInAnimation:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AF8]];
}

- (BOOL)buildInAnimation
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41AF8]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)renderEffectResourcesAreReady
{
  v2 = [(JFXEffect *)self renderEffect];
  v3 = [v2 resourcesAreReady];

  return v3;
}

- (void)setRenderSize:(CGSize)a3
{
  if (self->_renderSize.width != a3.width || self->_renderSize.height != a3.height)
  {
    self->_renderSize = a3;
    v5 = a3.height == *(MEMORY[0x277CBF3A8] + 8) && a3.width == *MEMORY[0x277CBF3A8] || a3.height <= 0.0;
    v6 = a3.width / a3.height;
    if (v5)
    {
      v6 = 0.0;
    }

    [(JFXEffect *)self setOutputAspect:v6];
  }
}

- (double)outputAspect
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A90]];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setOutputAspect:(double)a3
{
  if (fabs(a3) >= 0.0001)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    [(JFXEffect *)self setParameter:v5 forKey:*MEMORY[0x277D41A90]];
  }

  else
  {
    v4 = *MEMORY[0x277D41A90];

    [(JFXEffect *)self setParameter:0 forKey:v4];
  }
}

- (BOOL)isConfiguredForOutputAspect:(double)a3
{
  if ([(JFXEffect *)self isNone])
  {
    return 1;
  }

  v6 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41A90]];
  v7 = v6;
  if (v6)
  {
    [v6 doubleValue];
    v5 = vabdd_f64(a3, v8) < 0.0001;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isConfiguredForOutputAspectMatchingSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if ([(JFXEffect *)self isNone])
  {
    return 1;
  }

  if (height <= 0.0)
  {
    return 0;
  }

  return [(JFXEffect *)self isConfiguredForOutputAspect:width / height];
}

- (int64_t)playableAspectRatio
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41AA0]];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = aspectRatioForMultiplier(v4);
  }

  else
  {
    v5 = [objc_opt_class() defaultPlayableAspectRatio];
  }

  v6 = v5;

  return v6;
}

- (void)setPlayableAspectRatio:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:multiplierForAspectRatio(a3)];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AA0]];
}

- (int64_t)playableAspectRatioPreservationMode
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41AA8]];
  v3 = v2;
  if (v2)
  {
    v4 = aspectRatioPreservationModeFromPVViewContentMode([v2 integerValue]);
  }

  else
  {
    v4 = [objc_opt_class() defaultPlayableAspectRatioPreservationMode];
  }

  v5 = v4;

  return v5;
}

- (void)setPlayableAspectRatioPreservationMode:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:PVViewContentModeFromAspectRatioPreservationMode(a3)];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AA8]];
}

- (CGRect)playableRectInOutputSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(JFXEffect *)self playableAspectRatio];
  v7 = [(JFXEffect *)self playableAspectRatioPreservationMode];

  v8 = rectWithAspectRatioAndPreservationModeInRectWithSize(v6, v7, width, height);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (double)playableScaleInOutputSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = PVViewContentModeFromAspectRatioPreservationMode([(JFXEffect *)self playableAspectRatioPreservationMode]);
  v7 = multiplierForAspectRatio([(JFXEffect *)self playableAspectRatio]);
  v8 = 1.0;
  if (!v6)
  {
    goto LABEL_15;
  }

  v8 = 1.0;
  if (fabs(v7) < 0.0000001)
  {
    goto LABEL_15;
  }

  v9 = height * v7;
  if (v6 > 2)
  {
    if (v6 == 3 || v6 == 13)
    {
      v7 = width;
    }

    else if (v6 == 14)
    {
      v7 = height * v7;
    }

    goto LABEL_14;
  }

  if (v6 == 1)
  {
    if (width <= height)
    {
      v10 = height;
      if (v9 < width)
      {
        v10 = width / v7;
      }
    }

    else
    {
      v10 = width / v7;
      if (width / v7 < height)
      {
        v10 = height;
      }
    }

    goto LABEL_12;
  }

  if (v6 == 2)
  {
    v10 = width / v7;
    if (width / v7 > height)
    {
      v10 = height;
    }

LABEL_12:
    v7 = v7 * v10;
  }

LABEL_14:
  v8 = v7 / v9;
LABEL_15:
  if (fabs(v8) >= 0.0000001)
  {
    return v8;
  }

  else
  {
    return 1.0;
  }
}

- (void)setForceDisableLooping:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41B08]];
}

- (BOOL)forceDisableLooping
{
  v2 = [(JFXEffect *)self parameterForKey:*MEMORY[0x277D41B08]];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)accessibilityName
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3)
  {
    v4 = [(JFXEffect *)self contentDataSource];
    v5 = [v4 localizedAccessibilityName];
  }

  else
  {
    v4 = [(NSString *)self->_effectID stringByAppendingString:@"_Accessibility Name"];
    v6 = [MEMORY[0x277CCA8D8] jfxBundle];
    v7 = [v6 localizedStringForKey:v4 value:&stru_28553D028 table:0];

    if ([v7 length] && !objc_msgSend(v7, "isEqualToString:", v4))
    {
      v10 = v7;
    }

    else
    {
      v8 = JFXLog_pickerUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        effectID = self->_effectID;
        v12 = 138412290;
        v13 = effectID;
        _os_log_impl(&dword_242A3B000, v8, OS_LOG_TYPE_DEFAULT, "Missing accessibility name for effect: %@", &v12, 0xCu);
      }

      v10 = [(JFXEffect *)self displayName];
    }

    v5 = v10;
  }

  return v5;
}

- (id)displayName
{
  if ([(JFXEffect *)self isNone])
  {
    v3 = [MEMORY[0x277CCA8D8] jfxBundle];
    v4 = [v3 localizedStringForKey:@"None_Effect_Display Name" value:&stru_28553D028 table:0];
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v5 = [(JFXEffect *)self contentDataSource];

  if (v5)
  {
    v3 = [(JFXEffect *)self contentDataSource];
    v4 = [v3 localizedDisplayName];
    goto LABEL_5;
  }

  v3 = [(NSString *)self->_effectID stringByAppendingString:@"_Display Name"];
  v8 = [MEMORY[0x277CCA8D8] jfxBundle];
  v6 = [v8 localizedStringForKey:v3 value:&stru_28553D028 table:0];

LABEL_6:

  return v6;
}

- (void)setRenderStartOffset:(id *)a3
{
  v5 = *a3;
  v4 = [MEMORY[0x277CCAE60] valueWithCMTime:&v5];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41AB8]];
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)rangeForPresentationRange:(SEL)a3
{
  v4 = *&a4->var0.var3;
  *&retstr->var0.var0 = *&a4->var0.var0;
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *&a4->var1.var1;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(JFXEffect *)self effectID];
        v8 = [(JFXEffect *)v6 effectID];
        if ([v7 isEqualToString:v8])
        {
          v9 = [(JFXEffect *)self type];
          v10 = [(JFXEffect *)v6 type];

          if (v9 != v10)
          {
            v11 = 0;
            goto LABEL_12;
          }

          v7 = [(JFXEffect *)v6 effectParameters];
          [(NSLock *)self->_paramLock lock];
          v11 = [(NSMutableDictionary *)self->_effectParameters isEqual:v7];
          [(NSLock *)self->_paramLock unlock];
        }

        else
        {

          v11 = 0;
        }

LABEL_12:
        goto LABEL_13;
      }
    }

    v11 = 0;
  }

LABEL_13:

  return v11;
}

- (unint64_t)hash
{
  v3 = 2654435761 * [(JFXEffect *)self type];
  [(NSLock *)self->_paramLock lock];
  v4 = [(JFXEffect *)self effectID];
  v5 = [v4 hash] ^ v3;
  v6 = [(NSMutableDictionary *)self->_effectParameters hash];

  [(NSLock *)self->_paramLock unlock];
  return v5 ^ v6;
}

- (BOOL)isAppearanceEqual:(id)a3 forPurpose:(unint64_t)a4
{
  v5 = a3;
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(JFXEffect *)self effectID];
    v7 = [v5 effectID];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setEffectParameters:(id)a3
{
  v8 = a3;
  [(NSLock *)self->_paramLock lock];
  if (v8)
  {
    v4 = [v8 mutableCopy];
    effectParameters = self->_effectParameters;
    self->_effectParameters = v4;

    v6 = [v8 mutableCopy];
    dirtyEffectParameters = self->_dirtyEffectParameters;
    self->_dirtyEffectParameters = v6;
  }

  else
  {
    [(NSMutableDictionary *)self->_effectParameters removeAllObjects];
    [(NSMutableDictionary *)self->_dirtyEffectParameters removeAllObjects];
  }

  [(NSLock *)self->_paramLock unlock];
}

- (void)addEffectParameters:(id)a3
{
  if (a3)
  {
    paramLock = self->_paramLock;
    v5 = a3;
    [(NSLock *)paramLock lock];
    [(NSMutableDictionary *)self->_effectParameters addEntriesFromDictionary:v5];
    [(NSMutableDictionary *)self->_dirtyEffectParameters addEntriesFromDictionary:v5];

    v6 = self->_paramLock;

    [(NSLock *)v6 unlock];
  }
}

- (void)removeEffectParameters:(id)a3
{
  if (a3)
  {
    paramLock = self->_paramLock;
    v5 = a3;
    [(NSLock *)paramLock lock];
    [(NSMutableDictionary *)self->_effectParameters removeObjectsForKeys:v5];
    [(NSMutableDictionary *)self->_dirtyEffectParameters removeObjectsForKeys:v5];

    v6 = self->_paramLock;

    [(NSLock *)v6 unlock];
  }
}

- (NSDictionary)effectParameters
{
  [(NSLock *)self->_paramLock lock];
  v3 = [(NSMutableDictionary *)self->_effectParameters copy];
  [(NSLock *)self->_paramLock unlock];

  return v3;
}

- (void)setParameter:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v6 = a4;
  [(NSLock *)self->_paramLock lock];
  if (v9)
  {
    v7 = [(NSMutableDictionary *)self->_effectParameters objectForKeyedSubscript:v6];
    v8 = v7;
    if (!v7 || ([v7 isEqual:v9] & 1) == 0)
    {
      [(NSMutableDictionary *)self->_effectParameters setObject:v9 forKeyedSubscript:v6];
      [(NSMutableDictionary *)self->_dirtyEffectParameters setObject:v9 forKeyedSubscript:v6];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_dirtyEffectParameters removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_effectParameters removeObjectForKey:v6];
  }

  [(NSLock *)self->_paramLock unlock];
}

- (id)parameterForKey:(id)a3
{
  paramLock = self->_paramLock;
  v5 = a3;
  [(NSLock *)paramLock lock];
  v6 = [(NSMutableDictionary *)self->_effectParameters objectForKeyedSubscript:v5];

  [(NSLock *)self->_paramLock unlock];

  return v6;
}

- (BOOL)loadRenderEffect
{
  [(JFXEffect *)self renderEffectWillLoad];
  v3 = [(JFXEffect *)self renderEffect];
  v4 = [v3 loadResources];

  return v4;
}

- (void)loadRenderEffectInBackgroundWithCompletionOnMainQueue:(id)a3
{
  v4 = a3;
  [(JFXEffect *)self renderEffectWillLoad];
  v5 = [(JFXEffect *)self renderEffect];
  if (v5)
  {
    v6 = dispatch_get_global_queue(25, 0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__JFXEffect_loadRenderEffectInBackgroundWithCompletionOnMainQueue___block_invoke;
    v12[3] = &unk_278D7ADD0;
    v7 = &v13;
    v13 = v4;
    v8 = v4;
    [v5 loadResourcesOnQueue:v6 completion:v12];
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __67__JFXEffect_loadRenderEffectInBackgroundWithCompletionOnMainQueue___block_invoke_3;
    v10[3] = &unk_278D7A168;
    v7 = &v11;
    v11 = v4;
    v9 = v4;
    dispatch_async(MEMORY[0x277D85CD0], v10);
  }
}

void __67__JFXEffect_loadRenderEffectInBackgroundWithCompletionOnMainQueue___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__JFXEffect_loadRenderEffectInBackgroundWithCompletionOnMainQueue___block_invoke_2;
  v3[3] = &unk_278D7ADA8;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)loadRenderEffectOnQueue:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(JFXEffect *)self renderEffectWillLoad];
  v8 = [(JFXEffect *)self renderEffect];
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__JFXEffect_loadRenderEffectOnQueue_completion___block_invoke;
    v14[3] = &unk_278D7ADD0;
    v9 = &v15;
    v15 = v6;
    v10 = v6;
    [v8 loadResourcesOnQueue:v7 completion:v14];
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__JFXEffect_loadRenderEffectOnQueue_completion___block_invoke_2;
    v12[3] = &unk_278D7A168;
    v9 = &v13;
    v13 = v6;
    v11 = v6;
    dispatch_async(v7, v12);
  }
}

- (id)renderEffect
{
  [(NSLock *)self->_paramLock lock];
  [(JFXEffect *)self _createCachedRenderEffect_noLock];
  [(PVEffect *)self->_renderEffect setInspectableProperties:self->_effectParameters];
  if ([(NSMutableDictionary *)self->_dirtyEffectParameters count])
  {
    [(PVEffect *)self->_renderEffect updateInspectableProperties:self->_dirtyEffectParameters];
    [(NSMutableDictionary *)self->_dirtyEffectParameters removeAllObjects];
  }

  [(NSLock *)self->_paramLock unlock];
  renderEffect = self->_renderEffect;

  return renderEffect;
}

- (void)setHDR:(BOOL)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D41A38];
  if (a3)
  {

    [(JFXEffect *)self setParameter:@"1" forKey:v4];
  }

  else
  {
    v6[0] = *MEMORY[0x277D41A38];
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
    [(JFXEffect *)self removeEffectParameters:v5];
  }
}

- (void)setMotionDocumentFolderPath:(id)a3
{
  v11 = a3;
  [(NSLock *)self->_paramLock lock];
  if (![(NSString *)self->_motionDocumentFolderPath isEqualToString:v11])
  {
    objc_storeStrong(&self->_motionDocumentFolderPath, a3);
    renderEffect = self->_renderEffect;
    self->_renderEffect = 0;

    v6 = [MEMORY[0x277D415F0] sharedInstance];
    v7 = [(JFXEffect *)self effectID];
    v8 = [v6 isContentIDRegistered:v7];

    if (v8)
    {
      v9 = [MEMORY[0x277D415F0] sharedInstance];
      v10 = [(JFXEffect *)self effectID];
      [v9 unregisterContentID:v10];
    }
  }

  [(NSLock *)self->_paramLock unlock];
}

- (void)_createCachedRenderEffect_noLock
{
  v40 = *MEMORY[0x277D85DE8];
  if (!self->_renderEffect)
  {
    v3 = [(JFXEffect *)self motionDocumentFolderPath];
    v4 = 0x277D41000uLL;
    if (v3 || ([(JFXEffect *)self JFX_defaultMotionDocumentFolderLocalURL], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = v3;
    }

    else
    {
      v27 = [MEMORY[0x277D415F0] sharedInstance];
      v28 = [(JFXEffect *)self effectID];
      v5 = [v27 contentPathForID:v28];

      if (!v5)
      {
        v29 = [(JFXEffect *)self contentDataSource];
        if (!v29 || (v30 = v29, -[JFXEffect contentDataSource](self, "contentDataSource"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 isContentAvailable], v31, v30, (v32 & 1) == 0))
        {
          v33 = [MEMORY[0x277D415F8] newEffectWithID:self->_effectID];
          renderEffect = self->_renderEffect;
          self->_renderEffect = v33;
        }

LABEL_21:
        [(NSMutableDictionary *)self->_dirtyEffectParameters addEntriesFromDictionary:self->_effectParameters];
        return;
      }
    }

    v6 = [MEMORY[0x277D415F0] sharedInstance];
    v7 = [(JFXEffect *)self effectID];
    v8 = [v6 isContentIDRegistered:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x277CCAA00] defaultManager];
      v10 = [v9 contentsOfDirectoryAtPath:v5 error:0];

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      v13 = v11;
      if (v12)
      {
        v14 = v12;
        v15 = *v36;
LABEL_8:
        v16 = 0;
        while (1)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v35 + 1) + 8 * v16);
          v18 = [v17 pathExtension];
          if ([v18 isEqualToString:@"moti"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"moef"))
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
            if (v14)
            {
              goto LABEL_8;
            }

            v13 = v11;
            v4 = 0x277D41000;
            goto LABEL_18;
          }
        }

        v13 = v17;

        v4 = 0x277D41000uLL;
        if (!v13)
        {
          goto LABEL_19;
        }

        v19 = [v5 stringByAppendingPathComponent:v13];
        v20 = [MEMORY[0x277D415F0] sharedInstance];
        v21 = [(JFXEffect *)self effectID];
        v22 = [(JFXEffect *)self contentProperties];
        [v20 registerContentFile:v19 forID:v21 properties:v22];
      }

LABEL_18:

LABEL_19:
    }

    v23 = [*(v4 + 1520) sharedInstance];
    v24 = [(JFXEffect *)self effectID];
    v25 = [v23 createContentInstance:v24];
    v26 = self->_renderEffect;
    self->_renderEffect = v25;

    goto LABEL_21;
  }
}

- (id)contentProperties
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"effectType";
  v2 = NSStringFromJFXEffectType([(JFXEffect *)self type]);
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (PVCGPointQuad)_convertRenderEffectPoints:(SEL)a3 toBasisRect:(PVCGPointQuad *)a4 basisOrigin:(CGRect)a5
{
  v7 = [(JFXEffect *)self renderEffect:a5.origin.x];
  [v7 outputSize];

  v8 = [(JFXEffect *)self renderEffect];
  [v8 origin];

  return pv_transform_PVCGPointQuad_between_coordinate_systems();
}

- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 toBasisRect:(CGRect)a5 basisOrigin:(int)a6
{
  height = a5.size.height;
  width = a5.size.width;
  v12 = [(JFXEffect *)self renderEffect:a5.origin.x];
  [v12 outputSize];
  v14 = v13;
  v31 = v15;

  v16 = [(JFXEffect *)self renderEffect];
  v17 = [v16 origin];

  if (a4)
  {
    v18 = 0;
    v20 = *MEMORY[0x277CBF348];
    v19 = *(MEMORY[0x277CBF348] + 8);
    v30 = v14 * 0.5;
    v29 = v14 * -0.5;
    v21 = width / v14;
    v22 = 1;
    v23 = height / v31;
    do
    {
      v24 = &a3[v18];
      x = v24->x;
      y = v24->y;
      if (v17 == 2)
      {
        v28 = v30;
        v27 = v31 * 0.5;
        if (a6 == 1)
        {
          goto LABEL_16;
        }

        v25 = v19;
        v26 = v20;
        if (!a6)
        {
          v26 = v30;
          v25 = v31 * 0.5;
        }
      }

      else if (v17 == 1)
      {
        v27 = v31;
        v28 = v20;
        if (!a6 || (v27 = v31 * 0.5, v28 = v29, v25 = v19, v26 = v20, a6 == 2))
        {
LABEL_16:
          memset(&v34, 0, sizeof(v34));
          CGAffineTransformMakeScale(&v34, v21, v23);
          v35 = v34;
          CGAffineTransformTranslate(&v36, &v35, v28, v27);
          v34 = v36;
          v35 = v36;
          CGAffineTransformScale(&v36, &v35, 1.0, -1.0);
          goto LABEL_17;
        }
      }

      else
      {
        v25 = v19;
        v26 = v20;
        if (!v17)
        {
          v27 = v31;
          v28 = v20;
          if (a6 == 1)
          {
            goto LABEL_16;
          }

          v25 = v19;
          v26 = v20;
          if (a6 == 2)
          {
            v25 = v31 * -0.5;
            v26 = v29;
          }
        }
      }

      memset(&v34, 0, sizeof(v34));
      CGAffineTransformMakeScale(&v34, v21, v23);
      v35 = v34;
      CGAffineTransformTranslate(&v36, &v35, v26, v25);
LABEL_17:
      v34 = v36;
      *v24 = vaddq_f64(*&v36.tx, vmlaq_n_f64(vmulq_n_f64(*&v36.c, y), *&v36.a, x));
      v18 = v22++;
    }

    while (v18 < a4);
  }
}

- (void)_convertRenderEffectPoints:(CGPoint *)a3 numPoints:(unint64_t)a4 fromBasisRect:(CGRect)a5 basisOrigin:(int)a6
{
  height = a5.size.height;
  width = a5.size.width;
  v12 = [(JFXEffect *)self renderEffect:a5.origin.x];
  v13 = [v12 origin];

  v14 = [(JFXEffect *)self renderEffect];
  [v14 outputSize];
  v16 = v15;
  v18 = v17;

  if (a6 <= 1 && v13 == 2 && a4)
  {
    p_y = &a3->y;
    v20 = a4;
    do
    {
      v21 = *p_y;
      if (a6)
      {
        v21 = -*p_y;
      }

      *(p_y - 1) = *(p_y - 1) - width * 0.5;
      *p_y = height * 0.5 + v21;
      p_y += 2;
      --v20;
    }

    while (v20);
  }

  v22 = v16 / width;
  v23 = v18 / height;
  if ((v23 != 1.0 || v22 != 1.0) && a4 != 0)
  {
    v26 = 0;
    v27 = 1;
    do
    {
      v28 = &a3[v26];
      CGAffineTransformMakeScale(&v29, v22, v23);
      *v28 = vaddq_f64(*&v29.tx, vmlaq_n_f64(vmulq_n_f64(*&v29.c, v28->y), *&v29.a, v28->x));
      v26 = v27++;
    }

    while (v26 < a4);
  }
}

- (CGAffineTransform)_affineTransformFromEffectRect:(SEL)a3 toSize:(CGRect)a4 basisOrigin:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v13 = [(JFXEffect *)self renderEffect:a4.origin.x];
  v14 = [v13 origin];

  v15 = [(JFXEffect *)self renderEffect];
  [v15 outputSize];
  v17 = v16;
  v19 = v18;

  v21 = 0.0;
  v22 = v10 * 0.5;
  v23 = v9 * 0.5;
  if (a6 == 1)
  {
    v23 = 0.0 - v9 * 0.5;
  }

  if (v14 != 2)
  {
    v22 = 0.0;
    v23 = 0.0;
  }

  if (a6 <= 1)
  {
    v21 = v23;
  }

  else
  {
    v22 = 0.0;
  }

  retstr->a = v17 / width;
  retstr->b = 0.0;
  retstr->c = 0.0;
  retstr->d = v19 / height;
  retstr->tx = v22;
  retstr->ty = v21;
  return result;
}

- (JFXEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = JFXEffect;
  v5 = [(JFXEffect *)&v27 init];
  if (v5)
  {
    [MEMORY[0x277CCAAC8] setClass:objc_opt_class() forClassName:@"PCMatrix44Double"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"JTEffectEffectIDCoderKey"];
    effectID = v5->_effectID;
    v5->_effectID = v6;

    v5->_isNone = [JFXEffect effectIDIsNone:v5->_effectID];
    v8 = [(JFXEffect *)v5 parametersClassWhitelist];
    v26 = 0;
    v9 = [v4 decodeTopLevelObjectOfClasses:v8 forKey:@"JTEffectEffectParameterCoderKey" error:&v26];
    v10 = v26;
    v11 = [v9 mutableCopy];
    effectParameters = v5->_effectParameters;
    v5->_effectParameters = v11;

    if (v10)
    {
      v13 = objc_opt_new();
      v14 = v5->_effectParameters;
      v5->_effectParameters = v13;

      v15 = JFXLog_core();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        [(JFXEffect *)v10 initWithCoder:v15];
      }
    }

    v16 = objc_opt_new();
    dirtyEffectParameters = v5->_dirtyEffectParameters;
    v5->_dirtyEffectParameters = v16;

    v18 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    paramLock = v5->_paramLock;
    v5->_paramLock = v18;

    if ([(JFXEffect *)v5 type]&& ![(JFXEffect *)v5 isNone])
    {
      v20 = +[JFXEffectFactory sharedInstance];
      v21 = [v20 createEffectContentDataSourceForEffectID:v5->_effectID ofType:{-[JFXEffect type](v5, "type")}];
      contentDataSource = v5->_contentDataSource;
      v5->_contentDataSource = v21;
    }

    v23 = [(JFXEffect *)v5 parameterForKey:*MEMORY[0x277D41AA0]];

    if (!v23)
    {
      -[JFXEffect setPlayableAspectRatio:](v5, "setPlayableAspectRatio:", [objc_opt_class() defaultPlayableAspectRatio]);
    }

    v24 = [(JFXEffect *)v5 parameterForKey:*MEMORY[0x277D41AA8]];

    if (!v24)
    {
      -[JFXEffect setPlayableAspectRatioPreservationMode:](v5, "setPlayableAspectRatioPreservationMode:", [objc_opt_class() defaultPlayableAspectRatioPreservationMode]);
    }

    if ([(JFXEffect *)v5 loopedRangeRenderIsCacheable])
    {
      [(JFXEffect *)v5 setParameter:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D41A48]];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  effectID = self->_effectID;
  v5 = a3;
  [v5 encodeObject:effectID forKey:@"JTEffectEffectIDCoderKey"];
  v6 = [(JFXEffect *)self serializableEffectParameters];
  [v5 encodeObject:v6 forKey:@"JTEffectEffectParameterCoderKey"];
}

- (id)parametersClassWhitelist
{
  if (parametersClassWhitelist_onceToken != -1)
  {
    [JFXEffect parametersClassWhitelist];
  }

  v3 = parametersClassWhitelist_parametersClassWhitelist;

  return v3;
}

void __37__JFXEffect_parametersClassWhitelist__block_invoke()
{
  v17 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v4 count:13];
  v2 = [v0 setWithArray:{v1, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15}];
  v3 = parametersClassWhitelist_parametersClassWhitelist;
  parametersClassWhitelist_parametersClassWhitelist = v2;
}

- (id)serializableEffectParameters
{
  v2 = [(JFXEffect *)self effectParameters];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*MEMORY[0x277D41A90]];
  [v3 removeObjectForKey:*MEMORY[0x277D41AF8]];
  [v3 removeObjectForKey:*MEMORY[0x277D41B08]];
  [v3 removeObjectForKey:*MEMORY[0x277D41AB0]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A78]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A50]];
  [v3 removeObjectForKey:*MEMORY[0x277D41A48]];
  [v3 removeObjectForKey:*MEMORY[0x277D41AE8]];
  [v3 removeObjectForKey:*MEMORY[0x277D41B50]];

  return v3;
}

- (void)topLevelTransform
{
  v3 = [a1 topLevelTransformObject];
  if (v3)
  {
    v9 = v3;
    [v3 SIMDDouble4x4];
    v3 = v9;
  }

  else
  {
    v4 = MEMORY[0x277D860A0];
    v5 = *(MEMORY[0x277D860A0] + 80);
    a2[4] = *(MEMORY[0x277D860A0] + 64);
    a2[5] = v5;
    v6 = v4[7];
    a2[6] = v4[6];
    a2[7] = v6;
    v7 = v4[1];
    *a2 = *v4;
    a2[1] = v7;
    v8 = v4[3];
    a2[2] = v4[2];
    a2[3] = v8;
  }
}

- (void)setTopLevelTransform:(_OWORD *)a3
{
  v4 = a3[5];
  v9[4] = a3[4];
  v9[5] = v4;
  v5 = a3[7];
  v9[6] = a3[6];
  v9[7] = v5;
  v6 = a3[1];
  v9[0] = *a3;
  v9[1] = v6;
  v7 = a3[3];
  v9[2] = a3[2];
  v9[3] = v7;
  v8 = [MEMORY[0x277D41690] matrixWithSIMDDouble4x4:v9];
  [a1 setTopLevelTransformObject:v8];
}

- (uint64_t)topLevelTransformRelativeTo:(void *)a1@<X0> basisOrigin:(_OWORD *)a2@<X8>
{
  [a1 topLevelTransform];
  v4 = [a1 renderEffect];
  [v4 origin];

  v5 = [a1 renderEffect];
  [v5 outputSize];

  a2[6] = 0u;
  a2[7] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return pv_simd_matrix_convert_coordinate_system();
}

- (uint64_t)setTopLevelTransform:(__n128)a3 relativeTo:(uint64_t)a4 basisOrigin:(__int128 *)a5
{
  v28 = [a1 renderEffect];
  [v28 origin];

  v29 = [a1 renderEffect];
  [v29 outputSize];

  a25 = 0u;
  a26 = 0u;
  a23 = 0u;
  a24 = 0u;
  a21 = 0u;
  a22 = 0u;
  a19 = 0u;
  a20 = 0u;
  v30 = a5[5];
  a15 = a5[4];
  a16 = v30;
  v31 = a5[7];
  a17 = a5[6];
  a18 = v31;
  v32 = a5[1];
  a11 = *a5;
  a12 = v32;
  v33 = a5[3];
  a13 = a5[2];
  a14 = v33;
  pv_simd_matrix_convert_coordinate_system();
  a15 = a23;
  a16 = a24;
  a17 = a25;
  a18 = a26;
  a11 = a19;
  a12 = a20;
  a13 = a21;
  a14 = a22;
  return [a1 setTopLevelTransform:&a11];
}

- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6
{
  v7 = *&a4->c;
  v10[0] = *&a4->a;
  v10[1] = v7;
  v10[2] = *&a4->tx;
  v9 = *a5;
  return [(JFXEffect *)self addTransform:v10 withComponentTime:&v9 relativeTo:*&a7 basisOrigin:0 ignoreTranslation:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
}

- (CGAffineTransform)addTransform:(SEL)a3 withComponentTime:(CGAffineTransform *)a4 relativeTo:(id *)a5 basisOrigin:(CGRect)a6 ignoreTranslation:(int)a7
{
  v8 = a8;
  height = a6.size.height;
  width = a6.size.width;
  v16 = [(JFXEffect *)self renderEffect:a6.origin.x];
  [v16 outputSize];
  v18 = v17;
  v20 = v19;

  v21 = [(JFXEffect *)self renderEffect];
  v22 = [v21 origin];

  v24 = *&a4->a;
  v23 = *&a4->c;
  p_ty = &a4->ty;
  v27 = *&a4->tx;
  p_tx = &a4->tx;
  v54 = *(MEMORY[0x277D41B90] + 80);
  v55 = *(MEMORY[0x277D41B90] + 64);
  v75 = v55;
  v76 = v54;
  v52 = *(MEMORY[0x277D41B90] + 112);
  v53 = *(MEMORY[0x277D41B90] + 96);
  v77 = v53;
  v78 = v52;
  v50 = *(MEMORY[0x277D41B90] + 16);
  v51 = *MEMORY[0x277D41B90];
  *&v73.a = *MEMORY[0x277D41B90];
  *&v73.c = v50;
  v48 = *(MEMORY[0x277D41B90] + 48);
  v49 = *(MEMORY[0x277D41B90] + 32);
  *&v73.tx = v49;
  v74 = v48;
  *&t1.a = v24;
  *&t1.c = 0u;
  __x = v24;
  *&t1.tx = v23;
  v68 = 0u;
  v69 = 0u;
  v70 = xmmword_242B5B860;
  v71 = v27;
  v72 = xmmword_242B5B850;
  pv_transform_info_make();
  if (v8)
  {
    v28 = MEMORY[0x277CBF3A8];
  }

  else
  {
    v28 = p_tx;
  }

  v29 = *MEMORY[0x277CBF3A8];
  v30 = (MEMORY[0x277CBF3A8] + 8);
  v59 = v75;
  v58 = vextq_s8(v75, v75, 8uLL);
  if (!v8)
  {
    v30 = p_ty;
  }

  v31 = *v28;
  v32 = *v30;
  v33 = *(MEMORY[0x277CBF3A8] + 8) == *v30 && v29 == v31;
  if (!v33 && !v8)
  {
    v34 = [(JFXEffect *)self transformAnimation];
    v35 = v34;
    if (v34)
    {
      *&v74 = 0;
      memset(&v73, 0, sizeof(v73));
      *&t1.a = *&a5->var0;
      *&t1.c = a5->var3;
      [v34 transformInfoAtTime:&t1];
      t1 = v73;
      *&v68 = v74;
      if ((PVTransformAnimationInfoIsIdentity() & 1) == 0)
      {
        v31 = v31 / v73.ty;
        v32 = v32 / v73.ty;
      }
    }

    [(JFXEffect *)self playableScaleInOutputSize:width, height, v48, v49, v50, v51, v52, v53, v54, *&v55, __x, *&v58, *&v59];
    v37 = fabs(v36 + -1.0) < 0.0001;
    v38 = v31 / v36;
    v39 = v32 / v36;
    if (v37)
    {
      v40 = v31;
    }

    else
    {
      v32 = v39;
      v40 = v38;
    }

    if (a7 != 2)
    {
      if (a7 == 1)
      {
        v41 = (v22 & 0xFFFFFFFD) == 0;
        goto LABEL_22;
      }

      if (a7)
      {
        memset(&v79, 0, sizeof(v79));
        CGAffineTransformMakeScale(&v79, v18 / width, v20 / height);
LABEL_28:
        v31 = v32 * v79.c + v79.a * v40;
        v32 = v32 * v79.d + v79.b * v40;

        goto LABEL_29;
      }
    }

    v41 = v22 == 1;
LABEL_22:
    v42 = v41;
    memset(&v79, 0, sizeof(v79));
    CGAffineTransformMakeScale(&v79, v18 / width, v20 / height);
    if (v42)
    {
      t1 = v79;
      CGAffineTransformScale(&v73, &t1, 1.0, -1.0);
      v79 = v73;
    }

    goto LABEL_28;
  }

LABEL_29:
  v43 = atan2(*(&__x + 1), *&__x);
  v75 = v55;
  v76 = v54;
  v77 = v53;
  v78 = v52;
  *&v73.a = v51;
  *&v73.c = v50;
  *&v73.tx = v49;
  v74 = v48;
  [(JFXEffect *)self topLevelTransform];
  pv_transform_info_make();
  memset(&v79, 0, sizeof(v79));
  __xa = v73.a;
  b = v73.b;
  CGAffineTransformMakeTranslation(&v79, -v73.a, -v73.b);
  memset(&v66, 0, sizeof(v66));
  CGAffineTransformMakeTranslation(&v66, v31, v32);
  memset(&v65, 0, sizeof(v65));
  CGAffineTransformMakeRotation(&v65, -v43);
  memset(&v64, 0, sizeof(v64));
  CGAffineTransformMakeScale(&v64, *v59.i64, *v58.i64);
  memset(&v63, 0, sizeof(v63));
  CGAffineTransformMakeTranslation(&v63, __xa, b);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [(JFXEffect *)self topLevelTransform];
  *&v62.a = *&t1.a;
  *&v62.c = *&t1.tx;
  *&v62.tx = v71;
  t1 = v64;
  t2 = v63;
  CGAffineTransformConcat(&v61, &t1, &t2);
  t2 = v65;
  CGAffineTransformConcat(&t1, &t2, &v61);
  t2 = v66;
  CGAffineTransformConcat(&v61, &t2, &t1);
  t2 = v79;
  CGAffineTransformConcat(&t1, &t2, &v61);
  CGAffineTransformConcat(retstr, &v62, &t1);
  v45 = *&retstr->c;
  v46 = *&retstr->tx;
  *&t1.a = *&retstr->a;
  *&t1.c = 0u;
  *&t1.tx = v45;
  v68 = 0u;
  v69 = 0u;
  v70 = xmmword_242B5B860;
  v71 = v46;
  v72 = xmmword_242B5B850;
  return [(JFXEffect *)self setTopLevelTransform:&t1];
}

- (void)setTopLevelAdditionalScale:(CGPoint)a3
{
  v4 = [MEMORY[0x277CCAE60] valueWithCGPoint:{a3.x, a3.y}];
  [(JFXEffect *)self setParameter:v4 forKey:*MEMORY[0x277D41B50]];
}

- (id)JFX_defaultMotionDocumentFolderLocalURL
{
  v3 = [(JFXEffect *)self contentDataSource];

  if (v3 && (-[JFXEffect contentDataSource](self, "contentDataSource"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 conformsToProtocol:&unk_285584528], v4, v5))
  {
    v6 = objc_opt_new();
    [v6 setContentType:5];
    v7 = [(JFXEffect *)self contentDataSource];
    v8 = [v7 localAssetsWithFilteringOptions:v6];
    v9 = [v8 firstObject];

    v10 = [v9 localURL];
    v11 = [v10 path];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CGSize)renderSize
{
  width = self->_renderSize.width;
  height = self->_renderSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)requestAllAssetsWithOptions:(id)a3 progressAndCancellationHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(JFXEffect *)self contentDataSource];
  v12 = [v11 conformsToProtocol:&unk_285584528];

  if (v12)
  {
    v13 = [(JFXEffect *)self contentDataSource];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__23;
    v25 = __Block_byref_object_dispose__23;
    v26 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __108__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressAndCancellationHandler_completionHandler___block_invoke;
    v18[3] = &unk_278D7CC58;
    v19 = v9;
    v20 = &v21;
    v18[4] = self;
    v14 = [v13 requestAllAssetsWithOptions:v8 progressHandler:v18 completionHandler:v10];
    v15 = v22[5];
    v22[5] = v14;

    v16 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0, 0);
    v16 = 0;
  }

  return v16;
}

uint64_t __108__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressAndCancellationHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = 0;
    result = (*(result + 16))(result, &v3);
    if (v3 == 1)
    {
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        return [*(a1 + 32) cancelAssetRequest:?];
      }
    }
  }

  return result;
}

- (id)requestAssetWithOptions:(id)a3 progressAndCancellationHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(JFXEffect *)self contentDataSource];
  v12 = [v11 conformsToProtocol:&unk_285584528];

  if (v12)
  {
    v13 = [(JFXEffect *)self contentDataSource];
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__23;
    v25 = __Block_byref_object_dispose__23;
    v26 = 0;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __104__JFXEffect_AssetDownloading__requestAssetWithOptions_progressAndCancellationHandler_completionHandler___block_invoke;
    v18[3] = &unk_278D7CC58;
    v19 = v9;
    v20 = &v21;
    v18[4] = self;
    v14 = [v13 requestAssetWithOptions:v8 progressHandler:v18 completionHandler:v10];
    v15 = v22[5];
    v22[5] = v14;

    v16 = v22[5];
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0, 0);
    v16 = 0;
  }

  return v16;
}

uint64_t __104__JFXEffect_AssetDownloading__requestAssetWithOptions_progressAndCancellationHandler_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    v3 = 0;
    result = (*(result + 16))(result, &v3);
    if (v3 == 1)
    {
      if (*(*(*(a1 + 48) + 8) + 40))
      {
        return [*(a1 + 32) cancelAssetRequest:?];
      }
    }
  }

  return result;
}

- (id)requestAssetWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(JFXEffect *)self contentDataSource];
  v12 = [v11 conformsToProtocol:&unk_285584528];

  if (v12)
  {
    v13 = [(JFXEffect *)self contentDataSource];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke;
    v18[3] = &unk_278D7CC80;
    v18[4] = self;
    v19 = v9;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60;
    v16[3] = &unk_278D7CCA8;
    v16[4] = self;
    v17 = v10;
    v14 = [v13 requestAssetWithOptions:v8 progressHandler:v18 completionHandler:v16];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0, 0);
    v14 = 0;
  }

  return v14;
}

uint64_t __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v4 = JFXLog_DebugEffectAssetDownloading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(a2);
  }

  return result;
}

void __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v10 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60_cold_3();
    }
  }

  else if (v8)
  {
    v10 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60_cold_1();
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_8;
    }

    v10 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60_cold_2();
    }
  }

LABEL_8:
  (*(*(a1 + 40) + 16))();
}

- (id)requestAllAssetsWithOptions:(id)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(JFXEffect *)self contentDataSource];
  v12 = [v11 conformsToProtocol:&unk_285584528];

  if (v12)
  {
    v13 = [(JFXEffect *)self contentDataSource];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke;
    v18[3] = &unk_278D7CC80;
    v18[4] = self;
    v19 = v9;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62;
    v16[3] = &unk_278D7CCD0;
    v16[4] = self;
    v17 = v10;
    v14 = [v13 requestAllAssetsWithOptions:v8 progressHandler:v18 completionHandler:v16];
  }

  else
  {
    (*(v10 + 2))(v10, 0, 0, 0);
    v14 = 0;
  }

  return v14;
}

uint64_t __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke(uint64_t a1, double a2)
{
  v4 = JFXLog_DebugEffectAssetDownloading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_cold_1(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(a2);
  }

  return result;
}

void __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    v10 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62_cold_3();
    }
  }

  else if (v8)
  {
    v10 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62_cold_1();
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_8;
    }

    v10 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62_cold_2();
    }
  }

LABEL_8:
  (*(*(a1 + 40) + 16))();
}

- (void)cancelAssetRequest:(id)a3
{
  v7 = a3;
  v4 = [(JFXEffect *)self contentDataSource];
  v5 = [v4 conformsToProtocol:&unk_285584528];

  if (v5)
  {
    v6 = [(JFXEffect *)self contentDataSource];
    [v6 cancelAssetRequest:v7];
  }
}

- (void)updatePriorityForAssetRequest:(id)a3 newPriority:(int64_t)a4
{
  v9 = a3;
  v6 = [(JFXEffect *)self contentDataSource];
  v7 = [v6 conformsToProtocol:&unk_285584528];

  if (v7)
  {
    v8 = [(JFXEffect *)self contentDataSource];
    [v8 updatePriorityForAssetRequest:v9 newPriority:a4];
  }
}

- (id)availableAssetsWithFilteringOptionsArray:(id)a3
{
  v4 = a3;
  v5 = [(JFXEffect *)self contentDataSource];
  v6 = [v5 conformsToProtocol:&unk_285584528];

  if (v6)
  {
    v7 = [(JFXEffect *)self contentDataSource];
    v8 = [v7 availableAssetsWithFilteringOptionsArray:v4];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)availableAssetsWithFilteringOptions:(id)a3
{
  v4 = a3;
  v5 = [(JFXEffect *)self contentDataSource];
  v6 = [v5 conformsToProtocol:&unk_285584528];

  if (v6)
  {
    v7 = [(JFXEffect *)self contentDataSource];
    v8 = [v7 availableAssetsWithFilteringOptions:v4];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)localAssetsWithFilteringOptions:(id)a3
{
  v4 = a3;
  v5 = [(JFXEffect *)self contentDataSource];
  v6 = [v5 conformsToProtocol:&unk_285584528];

  if (v6)
  {
    v7 = [(JFXEffect *)self contentDataSource];
    v8 = [v7 localAssetsWithFilteringOptions:v4];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (id)describeRequest:(id)a3
{
  v4 = a3;
  v5 = [(JFXEffect *)self contentDataSource];
  v6 = [v5 conformsToProtocol:&unk_285584528];

  if (v6)
  {
    v7 = [(JFXEffect *)self contentDataSource];
    v8 = [v7 describeRequest:v4];
  }

  else
  {
    v8 = &stru_28553D028;
  }

  return v8;
}

- (void)registerMotionDocumentWithinAssets:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  [v5 setContentType:5];
  v6 = [JFXEffectAsset firstAssetInAssets:v4 matchingFilterAttributes:v5];

  if (v6)
  {
    v7 = [v6 localURL];
    v8 = [v7 path];

    [(JFXEffect *)self setMotionDocumentFolderPath:v8];
    v9 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [JFXEffect(AssetDownloading) registerMotionDocumentWithinAssets:];
    }
  }

  else
  {
    v8 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [JFXEffect(AssetDownloading) registerMotionDocumentWithinAssets:];
    }
  }
}

- (BOOL)arePreviewingAssetsLocal
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(JFXEffect *)self isNone])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(JFXEffect *)self contentDataSource];
    if (!v4 || (v5 = v4, -[JFXEffect contentDataSource](self, "contentDataSource"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = [v6 isContentAvailable], v6, v5, v3))
    {
      v7 = objc_opt_new();
      v8 = objc_opt_new();
      [v8 setContentType:5];
      LOBYTE(v3) = 1;
      [v8 setUsageMode:1];
      v9 = [(JFXEffect *)self availableAssetsWithFilteringOptions:v8];
      [v7 addObjectsFromArray:v9];

      v10 = objc_opt_new();
      [v10 setContentType:1];
      [v10 setUsageMode:1];
      [v10 setAspectRatio:3];
      v11 = [(JFXEffect *)self availableAssetsWithFilteringOptions:v10];
      [v7 addObjectsFromArray:v11];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v12 = v7;
      v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
LABEL_7:
        v16 = 0;
        while (1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v20 + 1) + 8 * v16);
          v3 = [v17 localURL];
          if (!v3)
          {
            break;
          }

          v18 = [v17 contentUpdateAvailable];

          if (v18)
          {
            LOBYTE(v3) = 0;
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
            LOBYTE(v3) = 1;
            if (v14)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }
    }
  }

  return v3;
}

- (id)requestPreviewingAssetsWithPriority:(int64_t)a3 onlyThumbnailAssetWhenAvailable:(BOOL)a4 progressHandler:(id)a5 completionHandler:(id)a6
{
  v7 = a4;
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_new();
  [v12 setContentType:1];
  [v12 setUsageMode:1];
  [v12 setFilteringMode:1];
  if (v7 && (-[JFXEffect availableAssetsWithFilteringOptions:](self, "availableAssetsWithFilteringOptions:", v12), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 count], v13, v14))
  {
    v15 = JFXLog_DebugEffectAssetDownloading();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [JFXEffect(AssetDownloading) requestPreviewingAssetsWithPriority:? onlyThumbnailAssetWhenAvailable:? progressHandler:? completionHandler:?];
    }

    v16 = objc_opt_new();
    v28[0] = v12;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
    [v16 setFilterOptionsArray:v17];

    [v16 setPriority:a3];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __133__JFXEffect_AssetDownloading__requestPreviewingAssetsWithPriority_onlyThumbnailAssetWhenAvailable_progressHandler_completionHandler___block_invoke;
    v25[3] = &unk_278D7CCF8;
    v26 = v11;
    v18 = v11;
    v19 = [(JFXEffect *)self requestAssetWithOptions:v16 progressAndCancellationHandler:v10 completionHandler:v25];
    v20 = v26;
  }

  else
  {
    v16 = objc_opt_new();
    v18 = objc_opt_new();
    [v18 setContentType:5];
    [v18 setUsageMode:1];
    v27 = v18;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v16 setFilterOptionsArray:v21];

    [v16 setPriority:a3];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __133__JFXEffect_AssetDownloading__requestPreviewingAssetsWithPriority_onlyThumbnailAssetWhenAvailable_progressHandler_completionHandler___block_invoke_2;
    v23[3] = &unk_278D7CCD0;
    v23[4] = self;
    v24 = v11;
    v20 = v11;
    v19 = [(JFXEffect *)self requestAllAssetsWithOptions:v16 progressAndCancellationHandler:v10 completionHandler:v23];
  }

  return v19;
}

void __133__JFXEffect_AssetDownloading__requestPreviewingAssetsWithPriority_onlyThumbnailAssetWhenAvailable_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (a2)
  {
    v12[0] = a2;
    v7 = MEMORY[0x277CBEA60];
    v8 = a4;
    v9 = a2;
    v10 = [v7 arrayWithObjects:v12 count:1];
    (*(v6 + 16))(v6, v10, a3, v8);
  }

  else
  {
    v11 = *(v6 + 16);
    v9 = a4;
    v10 = 0;
    v11(v6, 0, a3, v9);
  }
}

void __133__JFXEffect_AssetDownloading__requestPreviewingAssetsWithPriority_onlyThumbnailAssetWhenAvailable_progressHandler_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if (v7)
  {
    [*(a1 + 32) registerMotionDocumentWithinAssets:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (BOOL)areRenderingAssetsLocal
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(JFXEffect *)self isNone])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v4 = [(JFXEffect *)self contentDataSource];
    if (!v4 || (v5 = v4, -[JFXEffect contentDataSource](self, "contentDataSource"), v6 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = [v6 isContentAvailable], v6, v5, v3))
    {
      v7 = objc_opt_new();
      [v7 setUsageMode:2];
      [(JFXEffect *)self availableAssetsWithFilteringOptions:v7];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v8 = v19 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
LABEL_7:
        v12 = 0;
        while (1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          v3 = [v13 localURL];
          if (!v3)
          {
            break;
          }

          v14 = [v13 contentUpdateAvailable];

          if (v14)
          {
            LOBYTE(v3) = 0;
            break;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
            LOBYTE(v3) = 1;
            if (v10)
            {
              goto LABEL_7;
            }

            break;
          }
        }
      }

      else
      {
        LOBYTE(v3) = 1;
      }
    }
  }

  return v3;
}

- (id)requestRenderingAssetsWithPriority:(int64_t)a3 progressHandler:(id)a4 completionHandler:(id)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  [v11 setUsageMode:2];
  v12 = objc_opt_new();
  [v12 setContentType:5];
  [v12 setUsageMode:0];
  v19[0] = v11;
  v19[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  [v10 setFilterOptionsArray:v13];

  [v10 setPriority:a3];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __100__JFXEffect_AssetDownloading__requestRenderingAssetsWithPriority_progressHandler_completionHandler___block_invoke;
  v17[3] = &unk_278D7CCD0;
  v17[4] = self;
  v18 = v8;
  v14 = v8;
  v15 = [(JFXEffect *)self requestAllAssetsWithOptions:v10 progressAndCancellationHandler:v9 completionHandler:v17];

  return v15;
}

void __100__JFXEffect_AssetDownloading__requestRenderingAssetsWithPriority_progressHandler_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v6 = a4;
  if (v7)
  {
    [*(a1 + 32) registerMotionDocumentWithinAssets:v7];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "error decoding JFXEffect parameters: %@", &v2, 0xCu);
}

void __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_7(a1);
  NSStringFromJFXEffectType(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3_1() displayName];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x20u);
}

void __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_7(v1);
  v3 = NSStringFromJFXEffectType(v2);
  v4 = [*(v0 + 32) displayName];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_6(v1);
  NSStringFromJFXEffectType(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3_1() displayName];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __89__JFXEffect_AssetDownloading__requestAssetWithOptions_progressHandler_completionHandler___block_invoke_60_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_6(v1);
  NSStringFromJFXEffectType(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3_1() displayName];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  v2 = OUTLINED_FUNCTION_7(v1);
  v3 = NSStringFromJFXEffectType(v2);
  v4 = [*(v0 + 32) displayName];
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x20u);
}

void __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62_cold_2()
{
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_6(v1);
  NSStringFromJFXEffectType(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3_1() displayName];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

void __93__JFXEffect_AssetDownloading__requestAllAssetsWithOptions_progressHandler_completionHandler___block_invoke_62_cold_3()
{
  OUTLINED_FUNCTION_5_0();
  v2 = OUTLINED_FUNCTION_6(v1);
  NSStringFromJFXEffectType(v2);
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_3_1() displayName];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_9();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

@end