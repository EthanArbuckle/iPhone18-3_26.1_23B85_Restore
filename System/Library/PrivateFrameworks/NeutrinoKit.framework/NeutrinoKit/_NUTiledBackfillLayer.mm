@interface _NUTiledBackfillLayer
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation _NUTiledBackfillLayer

- (void)setBounds:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _NUTiledBackfillLayer;
  [(_NUTiledBackfillLayer *)&v3 setBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

- (void)setFrame:(CGRect)a3
{
  v3.receiver = self;
  v3.super_class = _NUTiledBackfillLayer;
  [(_NUTiledBackfillLayer *)&v3 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

@end