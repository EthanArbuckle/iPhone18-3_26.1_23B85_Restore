@interface ICThumbnailGeneratorAvatar
- (ICThumbnailGeneratorAvatar)initWithManagedObjectContext:(id)a3;
- (void)drawWithBorderIntoContext:(CGContext *)a3 avatarImage:(id)a4;
- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation ICThumbnailGeneratorAvatar

- (ICThumbnailGeneratorAvatar)initWithManagedObjectContext:(id)a3
{
  v8.receiver = self;
  v8.super_class = ICThumbnailGeneratorAvatar;
  v3 = [(ICThumbnailGenerator *)&v8 initWithManagedObjectContext:a3];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695D098]);
    renderer = v3->_renderer;
    v3->_renderer = v4;

    v7 = v3;
    performBlockOnMainThread();
  }

  return v3;
}

uint64_t __59__ICThumbnailGeneratorAvatar_initWithManagedObjectContext___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x1E69DD250] ic_isRTL];
  *(*(a1 + 32) + 16) = result;
  return result;
}

- (void)generateThumbnailWithConfiguration:(id)a3 completion:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = [v6 associatedObject];
  v9 = ICCheckedDynamicCast();

  if (![v9 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695CD58]);
    v26[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

    v9 = v11;
  }

  v12 = MEMORY[0x1E695D0B0];
  [v6 preferredSize];
  v14 = v13;
  v16 = v15;
  [v6 scale];
  v18 = [v12 scopeWithPointSize:-[ICThumbnailGeneratorAvatar isRTL](self scale:"isRTL") rightToLeft:0 style:{v14, v16, v17}];
  v19 = [[ICThumbnailDescription alloc] initWithConfiguration:v6];
  v20 = [(ICThumbnailGeneratorAvatar *)self renderer];
  v21 = [v20 avatarImageForContacts:v9 scope:v18];

  if ([v6 hasBorder])
  {
    v22 = objc_alloc(MEMORY[0x1E69DCA78]);
    [v21 size];
    v23 = [v22 initWithSize:?];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __76__ICThumbnailGeneratorAvatar_generateThumbnailWithConfiguration_completion___block_invoke;
    v24[3] = &unk_1E8468BC8;
    v24[4] = self;
    v25 = v21;
    v21 = [v23 imageWithActions:v24];
  }

  [(ICThumbnailDescription *)v19 setImage:v21];
  if (v7)
  {
    v7[2](v7, v19);
  }
}

uint64_t __76__ICThumbnailGeneratorAvatar_generateThumbnailWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 CGContext];
  v5 = *(a1 + 40);

  return [v3 drawWithBorderIntoContext:v4 avatarImage:v5];
}

- (void)drawWithBorderIntoContext:(CGContext *)a3 avatarImage:(id)a4
{
  v5 = a4;
  [v5 size];
  v7 = v6;
  [v5 size];
  v9 = v8;
  [v5 drawInRect:{0.0, 0.0, v7, v8}];

  CGContextSetAllowsAntialiasing(a3, 1);
  CGContextSetShouldAntialias(a3, 1);
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  CGContextSetStrokeColorWithColor(a3, [v10 CGColor]);

  CGContextSetLineWidth(a3, 1.0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v7;
  v12.size.height = v9;
  v13 = CGRectInset(v12, 0.5, 0.5);

  CGContextStrokeEllipseInRect(a3, v13);
}

@end