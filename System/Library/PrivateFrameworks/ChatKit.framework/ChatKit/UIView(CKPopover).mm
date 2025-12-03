@interface UIView(CKPopover)
- (void)ck_setBoundsHeight:()CKPopover;
- (void)ck_setBoundsWidth:()CKPopover;
- (void)ck_setPositionX:()CKPopover;
- (void)ck_setPositionY:()CKPopover;
- (void)ck_setScaleX:()CKPopover;
- (void)ck_setScaleY:()CKPopover;
@end

@implementation UIView(CKPopover)

- (void)ck_setBoundsWidth:()CKPopover
{
  layer = [self layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [layer setValue:v3 forKeyPath:@"bounds.size.width"];
}

- (void)ck_setBoundsHeight:()CKPopover
{
  layer = [self layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [layer setValue:v3 forKeyPath:@"bounds.size.height"];
}

- (void)ck_setPositionX:()CKPopover
{
  layer = [self layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [layer setValue:v3 forKeyPath:@"position.x"];
}

- (void)ck_setPositionY:()CKPopover
{
  layer = [self layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [layer setValue:v3 forKeyPath:@"position.y"];
}

- (void)ck_setScaleX:()CKPopover
{
  layer = [self layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [layer setValue:v3 forKeyPath:@"transform.scale.x"];
}

- (void)ck_setScaleY:()CKPopover
{
  layer = [self layer];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [layer setValue:v3 forKeyPath:@"transform.scale.y"];
}

@end