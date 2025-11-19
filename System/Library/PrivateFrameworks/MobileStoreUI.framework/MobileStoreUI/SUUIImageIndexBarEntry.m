@interface SUUIImageIndexBarEntry
- (BOOL)isEqual:(id)a3;
- (CGSize)_calculatedContentSize;
- (SUUIImageIndexBarEntry)initWithImage:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)_drawContentInRect:(CGRect)a3;
@end

@implementation SUUIImageIndexBarEntry

- (SUUIImageIndexBarEntry)initWithImage:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUIImageIndexBarEntry;
  v6 = [(SUUIImageIndexBarEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v8.receiver = self, v8.super_class = SUUIImageIndexBarEntry, ![(SUUIIndexBarEntry *)&v8 isEqual:v4]))
  {
    v6 = 0;
    goto LABEL_8;
  }

  image = v4->_image;
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

- (void)_drawContentInRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
    v9 = [(SUUIIndexBarEntry *)self tintColor];
    [v9 setFill];
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