@interface ICTintedLayer
- (void)setContents:(id)contents;
- (void)setTintColor:(id)color;
- (void)updateContents;
@end

@implementation ICTintedLayer

- (void)setContents:(id)contents
{
  contentsCopy = contents;
  if (self->_originalContents != contentsCopy)
  {
    objc_storeStrong(&self->_originalContents, contents);
  }

  [(ICTintedLayer *)self updateContents];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_tintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_tintColor, color);
    [(ICTintedLayer *)self updateContents];
  }
}

- (void)updateContents
{
  tintColor = [(ICTintedLayer *)self tintColor];

  originalContents = self->_originalContents;
  if (tintColor)
  {
    Width = CGImageGetWidth(self->_originalContents);
    [(ICTintedLayer *)self contentsScale];
    v7 = Width / v6;
    Height = CGImageGetHeight(originalContents);
    [(ICTintedLayer *)self contentsScale];
    v10 = Height / v9;
    defaultFormat = [MEMORY[0x1E69DCA80] defaultFormat];
    [(ICTintedLayer *)self contentsScale];
    [defaultFormat setScale:?];
    v12 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:defaultFormat format:{v7, v10}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __31__ICTintedLayer_updateContents__block_invoke;
    v16[3] = &unk_1E846D188;
    *&v16[5] = v7;
    *&v16[6] = v10;
    v16[7] = originalContents;
    v16[4] = self;
    v13 = [v12 imageWithActions:v16];
    v15.receiver = self;
    v15.super_class = ICTintedLayer;
    -[ICTintedLayer setContents:](&v15, sel_setContents_, [v13 ic_CGImage]);
  }

  else
  {
    v14.receiver = self;
    v14.super_class = ICTintedLayer;
    [(ICTintedLayer *)&v14 setContents:originalContents];
  }
}

void __31__ICTintedLayer_updateContents__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 CGContext];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v4;
  v12.size.height = v5;
  CGContextDrawImage(v3, v12, *(a1 + 56));
  v6 = [*(a1 + 32) tintColor];
  [v6 set];

  CGContextSetCompositeOperation();
  v7 = 0;
  v8 = 0;
  v9 = v4;
  v10 = v5;

  CGContextFillRect(v3, *&v7);
}

@end