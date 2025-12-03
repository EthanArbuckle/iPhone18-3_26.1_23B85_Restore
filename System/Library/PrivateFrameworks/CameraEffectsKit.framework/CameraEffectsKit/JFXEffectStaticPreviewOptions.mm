@interface JFXEffectStaticPreviewOptions
- ($AC64C642040120CEEAD84DEEACA9A5CE)renderRange;
- (CGRect)renderedImageCropRect;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initStaticPreviewOptions;
- (void)setRenderRange:(id *)range;
- (void)setRenderTime:(id *)time;
@end

@implementation JFXEffectStaticPreviewOptions

- (id)initStaticPreviewOptions
{
  v4.receiver = self;
  v4.super_class = JFXEffectStaticPreviewOptions;
  result = [(JFXEffectPreviewOptions *)&v4 initPreviewOptions];
  if (result)
  {
    *(result + 56) = kDefaultEffectPreviewRenderTime;
    *(result + 9) = 0;
    *(result + 7) = kDefaultEffectPreviewAnimationRange;
    *(result + 8) = *algn_242B5CE28;
    *(result + 9) = xmmword_242B5CE38;
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    *(result + 5) = *MEMORY[0x277CBF3A0];
    *(result + 6) = v3;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = JFXEffectStaticPreviewOptions;
  v4 = [(JFXEffectPreviewOptions *)&v12 copyWithZone:zone];
  objc_storeStrong(v4 + 5, self->_renderBackgroundImage);
  v4[33] = self->_dontCache;
  v4[32] = self->_dontCacheToDisk;
  v4[34] = self->_dontUseThumbnailAssetWhenAvailable;
  size = self->_renderedImageCropRect.size;
  *(v4 + 5) = self->_renderedImageCropRect.origin;
  *(v4 + 6) = size;
  epoch = self->_renderTime.epoch;
  *(v4 + 56) = *&self->_renderTime.value;
  *(v4 + 9) = epoch;
  v8 = *&self->_renderRange.start.epoch;
  v7 = *&self->_renderRange.duration.timescale;
  *(v4 + 7) = *&self->_renderRange.start.value;
  *(v4 + 8) = v8;
  *(v4 + 9) = v7;
  v9 = MEMORY[0x245D22230](self->_renderPropertiesConfigurationBlock);
  v10 = *(v4 + 6);
  *(v4 + 6) = v9;

  return v4;
}

- (void)setRenderTime:(id *)time
{
  var3 = time->var3;
  *&self->_renderTime.value = *&time->var0;
  self->_renderTime.epoch = var3;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)renderRange
{
  v3 = *&self[2].var1.var1;
  *&retstr->var0.var0 = *&self[2].var0.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var0.var0;
  return self;
}

- (void)setRenderRange:(id *)range
{
  v4 = *&range->var0.var3;
  v3 = *&range->var1.var1;
  *&self->_renderRange.start.value = *&range->var0.var0;
  *&self->_renderRange.start.epoch = v4;
  *&self->_renderRange.duration.timescale = v3;
}

- (CGRect)renderedImageCropRect
{
  x = self->_renderedImageCropRect.origin.x;
  y = self->_renderedImageCropRect.origin.y;
  width = self->_renderedImageCropRect.size.width;
  height = self->_renderedImageCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end