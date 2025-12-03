@interface _NUTiledBackfillLayer
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation _NUTiledBackfillLayer

- (void)setBounds:(CGRect)bounds
{
  v3.receiver = self;
  v3.super_class = _NUTiledBackfillLayer;
  [(_NUTiledBackfillLayer *)&v3 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
}

- (void)setFrame:(CGRect)frame
{
  v3.receiver = self;
  v3.super_class = _NUTiledBackfillLayer;
  [(_NUTiledBackfillLayer *)&v3 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

@end