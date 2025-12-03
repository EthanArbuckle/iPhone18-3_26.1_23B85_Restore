@interface CFXEffectMessagesStickerProperties
- (CFXEffectMessagesStickerProperties)initWithEffectID:(id)d previewUrl:(id)url localizedDescription:(id)description;
@end

@implementation CFXEffectMessagesStickerProperties

- (CFXEffectMessagesStickerProperties)initWithEffectID:(id)d previewUrl:(id)url localizedDescription:(id)description
{
  dCopy = d;
  urlCopy = url;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = CFXEffectMessagesStickerProperties;
  v12 = [(CFXEffectMessagesStickerProperties *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_effectID, d);
    objc_storeStrong(&v13->_previewUrl, url);
    objc_storeStrong(&v13->_localizedDescription, description);
  }

  return v13;
}

@end