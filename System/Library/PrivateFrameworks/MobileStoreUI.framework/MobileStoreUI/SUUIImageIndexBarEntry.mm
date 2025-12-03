@interface SUUIImageIndexBarEntry
- (BOOL)isEqual:(id)equal;
- (CGSize)_calculatedContentSize;
- (SUUIImageIndexBarEntry)initWithImage:(id)image;
- (id)description;
- (unint64_t)hash;
- (void)_drawContentInRect:(CGRect)rect;
@end

@implementation SUUIImageIndexBarEntry

- (SUUIImageIndexBarEntry)initWithImage:(id)image
{
  imageCopy = image;
  v9.receiver = self;
  v9.super_class = SUUIImageIndexBarEntry;
  v6 = [(SUUIImageIndexBarEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
    [(SUUIIndexBarEntry *)v7 setEntryType:2];
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p image:%@>", v5, self, self->_image];

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = SUUIImageIndexBarEntry;
  v3 = [(SUUIIndexBarEntry *)&v5 hash];
  return [(UIImage *)self->_image hash]^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8.receiver = self, v8.super_class = SUUIImageIndexBarEntry, ![(SUUIIndexBarEntry *)&v8 isEqual:equalCopy]))
  {
    v6 = 0;
    goto LABEL_8;
  }

  image = equalCopy->_image;
  if (image == self->_image)
  {
LABEL_7:
    v6 = 1;
    goto LABEL_8;
  }

  v6 = [(UIImage *)image isEqual:?];
LABEL_8:

  return v6;
}

- (CGSize)_calculatedContentSize
{
  [(UIImage *)self->_image size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)_drawContentInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  if (([(UIImage *)self->_image renderingMode]& 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    CGContextSetFillColorWithColor(CurrentContext, 0);
    [(UIImage *)self->_image drawInRect:x, y, width, height];
  }

  else
  {
    CGContextBeginTransparencyLayer(CurrentContext, 0);
    CGContextSetFillColorWithColor(CurrentContext, 0);
    [(UIImage *)self->_image drawInRect:x, y, width, height];
    tintColor = [(SUUIIndexBarEntry *)self tintColor];
    [tintColor setFill];
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    UIRectFillUsingBlendMode(v11, kCGBlendModeSourceIn);
    CGContextEndTransparencyLayer(CurrentContext);
  }

  CGContextRestoreGState(CurrentContext);
}

@end