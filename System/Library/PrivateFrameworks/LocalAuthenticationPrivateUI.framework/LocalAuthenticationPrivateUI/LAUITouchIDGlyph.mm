@interface LAUITouchIDGlyph
- (LAUITouchIDGlyph)initWithStyle:(int64_t)a3;
- (void)dealloc;
- (void)setState:(int64_t)a3;
- (void)shake;
@end

@implementation LAUITouchIDGlyph

- (LAUITouchIDGlyph)initWithStyle:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = LAUITouchIDGlyph;
  v4 = [(LAUITouchIDGlyph *)&v10 init];
  if (v4)
  {
    v5 = [LAUIPKGlyphWrapper glyphWithStyle:a3 frame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    glyph = v4->_glyph;
    v4->_glyph = v5;

    v7 = [objc_alloc(MEMORY[0x277D755F0]) initWithStyle:2];
    hapticGenerator = v4->_hapticGenerator;
    v4->_hapticGenerator = v7;

    [(UIImpactFeedbackGenerator *)v4->_hapticGenerator prepare];
  }

  return v4;
}

- (void)dealloc
{
  v3 = [(LAUIPKGlyphWrapper *)self->_glyph view];
  [v3 removeFromSuperview];

  v4.receiver = self;
  v4.super_class = LAUITouchIDGlyph;
  [(LAUITouchIDGlyph *)&v4 dealloc];
}

- (void)setState:(int64_t)a3
{
  self->_state = a3;
  if (a3 == 2)
  {
    v3 = 11;
  }

  else
  {
    v3 = a3 == 1;
  }

  [(LAUIPKGlyphWrapper *)self->_glyph setState:v3 idleTouchID:0 animated:1 completionHandler:&__block_literal_global_4];
}

uint64_t __29__LAUITouchIDGlyph_setState___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  if (v1 == 2)
  {
    return 11;
  }

  else
  {
    return v1 == 1;
  }
}

- (void)shake
{
  [(UIImpactFeedbackGenerator *)self->_hapticGenerator impactOccurred];
  CGAffineTransformMakeTranslation(&v6, 20.0, 0.0);
  v3 = [(LAUITouchIDGlyph *)self view];
  v5 = v6;
  [v3 setTransform:&v5];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __25__LAUITouchIDGlyph_shake__block_invoke;
  v4[3] = &unk_279821740;
  v4[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:0 delay:v4 usingSpringWithDamping:0 initialSpringVelocity:0.4 options:0.0 animations:0.03 completion:1.2];
}

void __25__LAUITouchIDGlyph_shake__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  v2 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v2;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  [v1 setTransform:v3];
}

@end