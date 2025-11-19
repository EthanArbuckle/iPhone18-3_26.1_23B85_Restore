@interface CKBrowserDraggedSticker
- (CGRect)frame;
- (CKBrowserDraggedSticker)initWithAnimatedImage:(id)a3 frame:(CGRect)a4 scale:(double)a5 rotationAngle:(double)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CKBrowserDraggedSticker

- (CKBrowserDraggedSticker)initWithAnimatedImage:(id)a3 frame:(CGRect)a4 scale:(double)a5 rotationAngle:(double)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v14 = a3;
  v18.receiver = self;
  v18.super_class = CKBrowserDraggedSticker;
  v15 = [(CKBrowserDraggedSticker *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_animatedImage, a3);
    v16->_frame.origin.x = x;
    v16->_frame.origin.y = y;
    v16->_frame.size.width = width;
    v16->_frame.size.height = height;
    v16->_scale = a5;
    v16->_rotationAngle = a6;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(CKBrowserDraggedSticker *)self animatedImage];
  [(CKBrowserDraggedSticker *)self frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(CKBrowserDraggedSticker *)self scale];
  v15 = v14;
  [(CKBrowserDraggedSticker *)self rotationAngle];
  v17 = [v4 initWithAnimatedImage:v5 frame:v7 scale:v9 rotationAngle:{v11, v13, v15, v16}];

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CKBrowserDraggedSticker *)self animatedImage];
  [(CKBrowserDraggedSticker *)self frame];
  v5 = NSStringFromCGRect(v12);
  [(CKBrowserDraggedSticker *)self rotationAngle];
  v7 = v6;
  [(CKBrowserDraggedSticker *)self scale];
  v9 = [v3 stringWithFormat:@"<CKBrowserDraggedSticker animated image: %@, frame in window: %@, rotation: %f, scale: %f>", v4, v5, v7, v8];

  return v9;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end