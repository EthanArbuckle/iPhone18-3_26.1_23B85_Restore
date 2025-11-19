@interface CFXEffectMessagesStickerProperties
- (CFXEffectMessagesStickerProperties)initWithEffectID:(id)a3 previewUrl:(id)a4 localizedDescription:(id)a5;
@end

@implementation CFXEffectMessagesStickerProperties

- (CFXEffectMessagesStickerProperties)initWithEffectID:(id)a3 previewUrl:(id)a4 localizedDescription:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CFXEffectMessagesStickerProperties;
  v12 = [(CFXEffectMessagesStickerProperties *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_effectID, a3);
    objc_storeStrong(&v13->_previewUrl, a4);
    objc_storeStrong(&v13->_localizedDescription, a5);
  }

  return v13;
}

@end