@interface CKAcknowledgmentGlyphView
+ (id)glyphViewForAcknowledgmentType:(int64_t)type glyphColor:(char)color;
+ (id)viewCache;
- (CGPoint)glyphOffset;
- (CKAcknowledgmentGlyphView)initWithFrame:(CGRect)frame color:(char)color;
- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion;
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

- (CKAcknowledgmentGlyphView)initWithFrame:(CGRect)frame color:(char)color
{
  v5.receiver = self;
  v5.super_class = CKAcknowledgmentGlyphView;
  return [(CKAcknowledgmentGlyphView *)&v5 initWithFrame:color, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
}

+ (id)glyphViewForAcknowledgmentType:(int64_t)type glyphColor:(char)color
{
  colorCopy = color;
  v5 = 0;
  if (type > 2002)
  {
    if (type == 2003)
    {
      v6 = +[CKUIBehavior sharedBehaviors];
      v7 = [v6 messageAcknowledgmentImageNameForType:2003];
      [v7 hasSuffix:@"ENG"];

LABEL_12:
      v5 = objc_opt_class();
      goto LABEL_13;
    }

    if (type == 2004 || type == 2005)
    {
      goto LABEL_12;
    }
  }

  else if (type == 2000 || type == 2001 || type == 2002)
  {
    goto LABEL_12;
  }

LABEL_13:
  v8 = [v5 alloc];
  v9 = [v8 initWithFrame:colorCopy color:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];

  return v9;
}

- (void)animateWithBeginTime:(double)time completionDelay:(double)delay completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, time, delay);
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