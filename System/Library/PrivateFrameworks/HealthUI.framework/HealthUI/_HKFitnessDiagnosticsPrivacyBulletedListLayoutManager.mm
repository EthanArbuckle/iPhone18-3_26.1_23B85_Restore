@interface _HKFitnessDiagnosticsPrivacyBulletedListLayoutManager
- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point;
- (void)setBullet:(id)bullet;
@end

@implementation _HKFitnessDiagnosticsPrivacyBulletedListLayoutManager

- (void)setBullet:(id)bullet
{
  bulletCopy = bullet;
  v5 = [bulletCopy copy];
  bullet = self->_bullet;
  self->_bullet = v5;

  [bulletCopy size];
  v8 = v7;
  v10 = v9;

  self->_bulletSize.width = v8;
  self->_bulletSize.height = v10;
  textStorage = [(_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager *)self textStorage];
  -[_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager invalidateDisplayForCharacterRange:](self, "invalidateDisplayForCharacterRange:", 0, [textStorage length]);
}

- (void)drawGlyphsForGlyphRange:(_NSRange)range atPoint:(CGPoint)point
{
  length = range.length;
  location = range.location;
  v18.receiver = self;
  v18.super_class = _HKFitnessDiagnosticsPrivacyBulletedListLayoutManager;
  [(_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager *)&v18 drawGlyphsForGlyphRange:point.x atPoint:point.y];
  bullet = [(_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager *)self bullet];
  if (bullet)
  {
    textStorage = [(_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager *)self textStorage];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v11 = MEMORY[0x1E69DB7D0];
    v12 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];
    v13 = [v11 defaultWritingDirectionForLanguage:v12];

    if (v13 == -1)
    {
      [_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager drawGlyphsForGlyphRange:a2 atPoint:self];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __89___HKFitnessDiagnosticsPrivacyBulletedListLayoutManager_drawGlyphsForGlyphRange_atPoint___block_invoke;
    v15[3] = &unk_1E81B6ED8;
    v15[4] = self;
    v16 = textStorage;
    v17 = v13;
    v14 = textStorage;
    [(_HKFitnessDiagnosticsPrivacyBulletedListLayoutManager *)self enumerateLineFragmentsForGlyphRange:location usingBlock:length, v15];
  }
}

- (void)drawGlyphsForGlyphRange:(uint64_t)a1 atPoint:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKFitnessDiagnosticsPrivacyDetailsCell.m" lineNumber:250 description:@"Unexpectedly received unresolved writing direction"];
}

@end