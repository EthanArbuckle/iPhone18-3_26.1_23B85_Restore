@interface ICTK2BulletTextAttachment
+ (NSMutableDictionary)imageCache;
- (CGSize)attachmentSizeForTextContainer:(id)a3;
- (ICTK2BulletTextAttachment)initWithMarker:(id)a3;
- (id)imageForBounds:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6;
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

- (ICTK2BulletTextAttachment)initWithMarker:(id)a3
{
  v5 = a3;
  v6 = *MEMORY[0x1E69B7428];
  v10.receiver = self;
  v10.super_class = ICTK2BulletTextAttachment;
  v7 = [(ICTextAttachment *)&v10 initWithData:0 ofType:v6];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_marker, a3);
  }

  return v8;
}

- (CGSize)attachmentSizeForTextContainer:(id)a3
{
  v4 = a3;
  v5 = [(ICTK2BulletTextAttachment *)self marker];

  if (v5)
  {
    v6 = [(ICTK2BulletTextAttachment *)self marker];
    [v4 size];
    [v6 boundingRectWithSize:1 options:0 context:?];
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

- (id)imageForBounds:(CGRect)a3 attributes:(id)a4 location:(id)a5 textContainer:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  v9 = [objc_opt_class() imageCache];
  v10 = [(ICTK2BulletTextAttachment *)self marker];
  v11 = [v9 objectForKeyedSubscript:v10];

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

    v15 = [objc_opt_class() imageCache];
    v16 = [(ICTK2BulletTextAttachment *)self marker];
    [v15 setObject:v14 forKeyedSubscript:v16];

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