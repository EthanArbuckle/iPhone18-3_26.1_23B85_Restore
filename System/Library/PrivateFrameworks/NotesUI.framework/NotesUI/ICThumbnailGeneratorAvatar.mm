@interface ICThumbnailGeneratorAvatar
- (ICThumbnailGeneratorAvatar)initWithManagedObjectContext:(id)context;
- (void)drawWithBorderIntoContext:(CGContext *)context avatarImage:(id)image;
- (void)generateThumbnailWithConfiguration:(id)configuration completion:(id)completion;
@end

@implementation ICThumbnailGeneratorAvatar

- (ICThumbnailGeneratorAvatar)initWithManagedObjectContext:(id)context
{
  v8.receiver = self;
  v8.super_class = ICThumbnailGeneratorAvatar;
  v3 = [(ICThumbnailGenerator *)&v8 initWithManagedObjectContext:context];
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

- (void)generateThumbnailWithConfiguration:(id)configuration completion:(id)completion
{
  v26[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  objc_opt_class();
  associatedObject = [configurationCopy associatedObject];
  v9 = ICCheckedDynamicCast();

  if (![v9 count])
  {
    v10 = objc_alloc_init(MEMORY[0x1E695CD58]);
    v26[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

    v9 = v11;
  }

  v12 = MEMORY[0x1E695D0B0];
  [configurationCopy preferredSize];
  v14 = v13;
  v16 = v15;
  [configurationCopy scale];
  v18 = [v12 scopeWithPointSize:-[ICThumbnailGeneratorAvatar isRTL](self scale:"isRTL") rightToLeft:0 style:{v14, v16, v17}];
  v19 = [[ICThumbnailDescription alloc] initWithConfiguration:configurationCopy];
  renderer = [(ICThumbnailGeneratorAvatar *)self renderer];
  v21 = [renderer avatarImageForContacts:v9 scope:v18];

  if ([configurationCopy hasBorder])
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
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v19);
  }
}

uint64_t __76__ICThumbnailGeneratorAvatar_generateThumbnailWithConfiguration_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 CGContext];
  v5 = *(a1 + 40);

  return [v3 drawWithBorderIntoContext:v4 avatarImage:v5];
}

- (void)drawWithBorderIntoContext:(CGContext *)context avatarImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v7 = v6;
  [imageCopy size];
  v9 = v8;
  [imageCopy drawInRect:{0.0, 0.0, v7, v8}];

  CGContextSetAllowsAntialiasing(context, 1);
  CGContextSetShouldAntialias(context, 1);
  v10 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  CGContextSetStrokeColorWithColor(context, [v10 CGColor]);

  CGContextSetLineWidth(context, 1.0);
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = v7;
  v12.size.height = v9;
  v13 = CGRectInset(v12, 0.5, 0.5);

  CGContextStrokeEllipseInRect(context, v13);
}

@end