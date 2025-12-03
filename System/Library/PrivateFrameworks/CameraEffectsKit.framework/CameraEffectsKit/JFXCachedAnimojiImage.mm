@interface JFXCachedAnimojiImage
- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRange;
- (JFXCachedAnimojiImage)initWithMediaTimeRange:(id *)range animojiRenderingAttributes:(id)attributes animojiImageBuffer:(id)buffer;
- (id)description;
@end

@implementation JFXCachedAnimojiImage

- (JFXCachedAnimojiImage)initWithMediaTimeRange:(id *)range animojiRenderingAttributes:(id)attributes animojiImageBuffer:(id)buffer
{
  attributesCopy = attributes;
  bufferCopy = buffer;
  v16.receiver = self;
  v16.super_class = JFXCachedAnimojiImage;
  v11 = [(JFXCachedAnimojiImage *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v13 = *&range->var0.var0;
    v14 = *&range->var0.var3;
    *(v11 + 56) = *&range->var1.var1;
    *(v11 + 40) = v14;
    *(v11 + 24) = v13;
    objc_storeStrong(v11 + 2, attributes);
    objc_storeStrong(&v12->_animojiImageBuffer, buffer);
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  animojiImageBuffer = [(JFXCachedAnimojiImage *)self animojiImageBuffer];
  [(JFXCachedAnimojiImage *)self mediaTimeRange];
  *&time.start.value = v15;
  time.start.epoch = v16;
  Seconds = CMTimeGetSeconds(&time.start);
  [(JFXCachedAnimojiImage *)self mediaTimeRange];
  CMTimeRangeGetEnd(&v14, &time);
  v6 = CMTimeGetSeconds(&v14);
  animojiRenderAttributes = [(JFXCachedAnimojiImage *)self animojiRenderAttributes];
  v8 = [v3 stringWithFormat:@"imageBuffer %@ mediaRange %f:%f animojiRenderingAttributes %@", animojiImageBuffer, *&Seconds, *&v6, animojiRenderAttributes];

  v12.receiver = self;
  v12.super_class = JFXCachedAnimojiImage;
  v9 = [(JFXCachedAnimojiImage *)&v12 description];
  v10 = [v9 stringByAppendingString:v8];

  return v10;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)mediaTimeRange
{
  v3 = *&self->var1.var3;
  *&retstr->var0.var0 = *&self->var1.var0;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var0.var1;
  return self;
}

@end