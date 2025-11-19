@interface CKAudioProgressView
+ (float)progressForTime:(double)a3 duration:(double)a4;
+ (id)imageWithType:(unsigned __int8)a3 color:(char)a4;
+ (id)templateImageWithControlImage:(id)a3;
+ (id)templateImageWithType:(unsigned __int8)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKAudioProgressView)initWithFrame:(CGRect)a3;
- (void)prepareForDisplay;
- (void)prepareForDisplayIfNeeded;
- (void)setColor:(char)a3;
- (void)setNeedsPrepareForDisplay;
- (void)setPlayed:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setProgress:(float)a3;
@end

@implementation CKAudioProgressView

- (CKAudioProgressView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CKAudioProgressView;
  v3 = [(CKBalloonImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKAudioProgressView *)v3 setOpaque:0];
    v5 = [objc_alloc(MEMORY[0x1E69A60F8]) initWithTarget:v4 action:sel_prepareForDisplay];
    [(CKAudioProgressView *)v4 setDisplayUpdater:v5];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = [CKUIBehavior sharedBehaviors:a3.width];
  [v3 audioProgressViewSize];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

+ (float)progressForTime:(double)a3 duration:(double)a4
{
  v4 = 0.0;
  if (a3 != 0.0)
  {
    v4 = 1.0;
    if (a3 != a4)
    {
      if (a4 >= 0.05)
      {
        a3 = a3 + 0.05;
      }

      v4 = a3 / a4;
    }
  }

  v5 = v4;
  if (v4 > 1.0)
  {
    v5 = 1.0;
  }

  return fmax(v5, 0.0);
}

- (void)setProgress:(float)a3
{
  v3 = a3;
  if (v3 > 1.0)
  {
    v3 = 1.0;
  }

  v4 = fmax(v3, 0.0);
  if (self->_progress != v4)
  {
    self->_progress = v4;
    [(CKAudioProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlaying:(BOOL)a3
{
  if (self->_playing != a3)
  {
    self->_playing = a3;
    [(CKAudioProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setPlayed:(BOOL)a3
{
  if (self->_played != a3)
  {
    self->_played = a3;
    [(CKAudioProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setColor:(char)a3
{
  if (self->_color != a3)
  {
    self->_color = a3;
    [(CKAudioProgressView *)self setNeedsPrepareForDisplay];
  }
}

- (void)prepareForDisplay
{
  v3 = [(CKAudioProgressView *)self isPlaying];
  [(CKAudioProgressView *)self progress];
  v5 = v4;
  v6 = [(CKAudioProgressView *)self color];
  v7 = [CKAudioProgressView imageWithType:v3 color:v6];
  v8 = *MEMORY[0x1E695EFF8];
  v9 = *(MEMORY[0x1E695EFF8] + 8);
  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 audioProgressViewSize];
  v12 = v11;
  v14 = v13;

  v31.origin.x = v8;
  v31.origin.y = v9;
  v31.size.width = v12;
  v31.size.height = v14;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v8;
  v32.origin.y = v9;
  v32.size.width = v12;
  v32.size.height = v14;
  MidY = CGRectGetMidY(v32);
  v17 = +[CKUIBehavior sharedBehaviors];
  v18 = [v17 theme];
  v19 = [v18 progressViewColorForColorType:v6];

  v20 = [(CKAudioProgressView *)self traitCollection];
  v21 = 4.0;
  if ([v20 userInterfaceIdiom] != 6)
  {
    v22 = [(CKAudioProgressView *)self traitCollection];
    [v22 displayScale];
    v21 = v23;
  }

  v30.width = v12;
  v30.height = v14;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v21);
  if (v5 > 0.0)
  {
    v24 = [MEMORY[0x1E69DC728] bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:(v12 + -3.0) * 0.5 clockwise:{-1.57079633, v5 * 6.28318531 + -1.57079633}];
    [v19 set];
    [v24 setLineWidth:3.0];
    [v24 stroke];
  }

  [v7 size];
  v26 = MidX - v25 * 0.5;
  [v7 size];
  [v7 drawAtPoint:{v26, MidY - v27 * 0.5}];
  v28 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  [(CKBalloonImageView *)self setImage:v28];
}

- (void)prepareForDisplayIfNeeded
{
  v2 = [(CKAudioProgressView *)self displayUpdater];
  [v2 updateIfNeeded];
}

- (void)setNeedsPrepareForDisplay
{
  v2 = [(CKAudioProgressView *)self displayUpdater];
  [v2 setNeedsUpdate];
}

+ (id)imageWithType:(unsigned __int8)a3 color:(char)a4
{
  v4 = a4;
  v5 = a3;
  v7 = CKAudioProgressImageCache();
  v15[0] = v4;
  v15[1] = v5;
  v15[2] = 0;
  v8 = [MEMORY[0x1E696B098] value:v15 withObjCType:"{?=cCB}"];
  v9 = [v7 objectForKey:v8];
  if (!v9)
  {
    v10 = [a1 templateImageWithType:v5];
    v11 = +[CKUIBehavior sharedBehaviors];
    v12 = [v11 theme];
    v13 = [v12 progressViewColorForColorType:v4];
    v9 = [v10 _flatImageWithColor:v13];

    [v7 setObject:v9 forKey:v8];
  }

  return v9;
}

+ (id)templateImageWithType:(unsigned __int8)a3
{
  v3 = a3;
  v4 = CKAudioProgressImageCache();
  v14[0] = 0;
  v14[1] = v3;
  v14[2] = 1;
  v5 = [MEMORY[0x1E696B098] value:v14 withObjCType:"{?=cCB}"];
  v6 = [v4 objectForKey:v5];
  if (!v6)
  {
    v7 = +[CKUIBehavior sharedBehaviors];
    [v7 audioProgressViewSize];
    v9 = v8 + -10.0;

    v10 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:v9];
    if (v3)
    {
      v11 = @"pause.circle.fill";
    }

    else
    {
      v11 = @"play.circle.fill";
    }

    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v11];
    v6 = [v12 imageWithSymbolConfiguration:v10];

    [v4 setObject:v6 forKey:v5];
  }

  return v6;
}

+ (id)templateImageWithControlImage:(id)a3
{
  v3 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  [v4 audioProgressViewSize];
  v6 = v5;
  v8 = v7;

  v28.width = v6;
  v28.height = v8;
  UIGraphicsBeginImageContextWithOptions(v28, 0, 0.0);
  v9 = [MEMORY[0x1E69DC888] blackColor];
  [v9 set];

  if (v3)
  {
    v11 = *MEMORY[0x1E695EFF8];
    v10 = *(MEMORY[0x1E695EFF8] + 8);
    [v3 alignmentRectInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [v3 size];
    v21 = v20 - (v15 + v19);
    v23 = v22 - (v13 + v17);
    if (CKMainScreenScale_once_97 != -1)
    {
      +[CKAudioProgressView templateImageWithControlImage:];
    }

    v24 = *&CKMainScreenScale_sMainScreenScale_97;
    if (*&CKMainScreenScale_sMainScreenScale_97 == 0.0)
    {
      v24 = 1.0;
    }

    [v3 drawAtPoint:{floor((v11 + (v6 - v21) * 0.5) * v24) / v24 - v15, floor((v10 + (v8 - v23) * 0.5) * v24) / v24 - v13}];
  }

  v25 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v25;
}

@end