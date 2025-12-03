@interface OADImage
- (OADImage)init;
- (OADImage)initWithBlipRef:(id)ref;
- (id)createImageFill;
- (id)description;
- (void)createPictureFramePresetGeometry;
@end

@implementation OADImage

- (OADImage)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = OADImage;
  return [(OADDrawable *)&v5 initWithPropertiesClass:v3];
}

- (OADImage)initWithBlipRef:(id)ref
{
  refCopy = ref;
  v5 = [(OADImage *)self init];
  if (v5)
  {
    v6 = objc_alloc_init(OADImageFill);
    [(OADImageFill *)v6 setBlipRef:refCopy];
    v7 = objc_alloc_init(OADStretchTechnique);
    [(OADImageFill *)v6 setTechnique:v7];
    imageProperties = [(OADImage *)v5 imageProperties];
    [imageProperties setImageFill:v6];
  }

  return v5;
}

- (id)createImageFill
{
  imageProperties = [(OADImage *)self imageProperties];
  isMergedWithParent = [imageProperties isMergedWithParent];
  [imageProperties setMergedWithParent:0];
  if ([imageProperties hasImageFill])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADImage createImageFill]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADImage.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:81 isFatal:0 description:"An image fill already exists"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  [imageProperties setMergedWithParent:isMergedWithParent];
  v7 = objc_alloc_init(OADImageFill);
  imageProperties2 = [(OADImage *)self imageProperties];
  [imageProperties2 setImageFill:v7];

  v9 = +[OADStretchTechnique defaultProperties];
  v10 = [v9 copy];
  [(OADImageFill *)v7 setTechnique:v10];

  return v7;
}

- (void)createPictureFramePresetGeometry
{
  if (self->mGeometry)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[OADImage createPictureFramePresetGeometry]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/OfficeArt/Dom/OADImage.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:90 isFatal:0 description:"A geometry already exists"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  v5 = objc_alloc_init(OADPresetShapeGeometry);
  mGeometry = self->mGeometry;
  self->mGeometry = &v5->super;

  v7 = self->mGeometry;

  [(OADShapeGeometry *)v7 setType:75];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADImage;
  v2 = [(OADGraphic *)&v4 description];

  return v2;
}

@end