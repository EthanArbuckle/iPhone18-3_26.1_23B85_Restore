@interface _HKClinicalBulletedListLayoutManager
- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4;
- (void)setBullet:(id)a3;
@end

@implementation _HKClinicalBulletedListLayoutManager

- (void)setBullet:(id)a3
{
  v4 = a3;
  v5 = [v4 copy];
  bullet = self->_bullet;
  self->_bullet = v5;

  [v4 size];
  v8 = v7;
  v10 = v9;

  self->_bulletSize.width = v8;
  self->_bulletSize.height = v10;
  v11 = [(_HKClinicalBulletedListLayoutManager *)self textStorage];
  -[_HKClinicalBulletedListLayoutManager invalidateDisplayForCharacterRange:](self, "invalidateDisplayForCharacterRange:", 0, [v11 length]);
}

- (void)drawGlyphsForGlyphRange:(_NSRange)a3 atPoint:(CGPoint)a4
{
  length = a3.length;
  location = a3.location;
  v18.receiver = self;
  v18.super_class = _HKClinicalBulletedListLayoutManager;
  [(_HKClinicalBulletedListLayoutManager *)&v18 drawGlyphsForGlyphRange:a4.x atPoint:a4.y];
  v8 = [(_HKClinicalBulletedListLayoutManager *)self bullet];
  if (v8)
  {
    v9 = [(_HKClinicalBulletedListLayoutManager *)self textStorage];
    v10 = [MEMORY[0x1E695DF58] currentLocale];
    v11 = MEMORY[0x1E69DB7D0];
    v12 = [v10 objectForKey:*MEMORY[0x1E695D9B0]];
    v13 = [v11 defaultWritingDirectionForLanguage:v12];

    if (v13 == -1)
    {
      [_HKClinicalBulletedListLayoutManager drawGlyphsForGlyphRange:a2 atPoint:self];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72___HKClinicalBulletedListLayoutManager_drawGlyphsForGlyphRange_atPoint___block_invoke;
    v15[3] = &unk_1E81B6ED8;
    v15[4] = self;
    v16 = v9;
    v17 = v13;
    v14 = v9;
    [(_HKClinicalBulletedListLayoutManager *)self enumerateLineFragmentsForGlyphRange:location usingBlock:length, v15];
  }
}

- (void)drawGlyphsForGlyphRange:(uint64_t)a1 atPoint:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKClinicalAuthorizationPrivacyDetailsCell.m" lineNumber:239 description:@"Unexpectedly received unresolved writing direction"];
}

@end