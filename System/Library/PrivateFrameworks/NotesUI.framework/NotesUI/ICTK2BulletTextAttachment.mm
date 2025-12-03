@interface ICTK2BulletTextAttachment
+ (NSMutableDictionary)imageCache;
- (CGSize)attachmentSizeForTextContainer:(id)container;
- (ICTK2BulletTextAttachment)initWithMarker:(id)marker;
- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container;
@end

@implementation ICTK2BulletTextAttachment

+ (NSMutableDictionary)imageCache
{
  if (imageCache_onceToken_0 != -1)
  {
    +[ICTK2BulletTextAttachment imageCache];
  }

  v3 = imageCache_imageCache_0;

  return v3;
}

uint64_t __39__ICTK2BulletTextAttachment_imageCache__block_invoke()
{
  imageCache_imageCache_0 = [MEMORY[0x1E695DF90] dictionary];

  return MEMORY[0x1EEE66BB8]();
}

- (ICTK2BulletTextAttachment)initWithMarker:(id)marker
{
  markerCopy = marker;
  v6 = *MEMORY[0x1E69B7428];
  v10.receiver = self;
  v10.super_class = ICTK2BulletTextAttachment;
  v7 = [(ICTextAttachment *)&v10 initWithData:0 ofType:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_marker, marker);
  }

  return v8;
}

- (CGSize)attachmentSizeForTextContainer:(id)container
{
  containerCopy = container;
  marker = [(ICTK2BulletTextAttachment *)self marker];

  if (marker)
  {
    marker2 = [(ICTK2BulletTextAttachment *)self marker];
    [containerCopy size];
    [marker2 boundingRectWithSize:1 options:0 context:?];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x1E695F060];
    v10 = *(MEMORY[0x1E695F060] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)imageForBounds:(CGRect)bounds attributes:(id)attributes location:(id)location textContainer:(id)container
{
  height = bounds.size.height;
  width = bounds.size.width;
  imageCache = [objc_opt_class() imageCache];
  marker = [(ICTK2BulletTextAttachment *)self marker];
  v11 = [imageCache objectForKeyedSubscript:marker];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{width, height}];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __78__ICTK2BulletTextAttachment_imageForBounds_attributes_location_textContainer___block_invoke;
    v19[3] = &unk_1E8468D20;
    v19[4] = self;
    v14 = [v13 imageWithActions:v19];

    imageCache2 = [objc_opt_class() imageCache];
    marker2 = [(ICTK2BulletTextAttachment *)self marker];
    [imageCache2 setObject:v14 forKeyedSubscript:marker2];

    v12 = v14;
  }

  v17 = v12;

  return v17;
}

void __78__ICTK2BulletTextAttachment_imageForBounds_attributes_location_textContainer___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) marker];
  [v1 drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
}

@end