@interface CKAcknowledgmentGlyphView
+ (id)glyphViewForAcknowledgmentType:(int64_t)a3 glyphColor:(char)a4;
+ (id)viewCache;
- (CGPoint)glyphOffset;
- (CKAcknowledgmentGlyphView)initWithFrame:(CGRect)a3 color:(char)a4;
- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5;
@end

@implementation CKAcknowledgmentGlyphView

+ (id)viewCache
{
  if (viewCache_onceToken != -1)
  {
    +[CKAcknowledgmentGlyphView viewCache];
  }

  v3 = viewCache_sCache;

  return v3;
}

void __38__CKAcknowledgmentGlyphView_viewCache__block_invoke()
{
  v0 = objc_alloc_init(CKMultiCache);
  v1 = viewCache_sCache;
  viewCache_sCache = v0;
}

- (CKAcknowledgmentGlyphView)initWithFrame:(CGRect)a3 color:(char)a4
{
  v5.receiver = self;
  v5.super_class = CKAcknowledgmentGlyphView;
  return [(CKAcknowledgmentGlyphView *)&v5 initWithFrame:a4, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
}

+ (id)glyphViewForAcknowledgmentType:(int64_t)a3 glyphColor:(char)a4
{
  v4 = a4;
  v5 = 0;
  if (a3 > 2002)
  {
    if (a3 == 2003)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      v7 = [v6 messageAcknowledgmentImageNameForType:2003];
      [v7 hasSuffix:@"ENG"];

LABEL_12:
      v5 = objc_opt_class();
      goto LABEL_13;
    }

    if (a3 == 2004 || a3 == 2005)
    {
      goto LABEL_12;
    }
  }

  else if (a3 == 2000 || a3 == 2001 || a3 == 2002)
  {
    goto LABEL_12;
  }

LABEL_13:
  v8 = [v5 alloc];
  v9 = [v8 initWithFrame:v4 color:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v9;
}

- (void)animateWithBeginTime:(double)a3 completionDelay:(double)a4 completion:(id)a5
{
  if (a5)
  {
    (*(a5 + 2))(a5, a3, a4);
  }
}

- (CGPoint)glyphOffset
{
  x = self->_glyphOffset.x;
  y = self->_glyphOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end