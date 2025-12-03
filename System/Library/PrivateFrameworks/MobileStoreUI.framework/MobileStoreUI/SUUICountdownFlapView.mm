@interface SUUICountdownFlapView
- (CATransform3D)_transformForAngle:(SEL)angle isTop:(double)top;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUICountdownFlapView)initWithPosition:(int64_t)position flapTopColor:(id)color flapBottomColor:(id)bottomColor;
- (id)_newBackgroundImageForTop:(int)top;
- (id)_newLabel;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
- (void)setString:(id)string;
- (void)setTextColor:(id)color;
@end

@implementation SUUICountdownFlapView

- (SUUICountdownFlapView)initWithPosition:(int64_t)position flapTopColor:(id)color flapBottomColor:(id)bottomColor
{
  colorCopy = color;
  bottomColorCopy = bottomColor;
  v32.receiver = self;
  v32.super_class = SUUICountdownFlapView;
  v11 = [(SUUICountdownFlapView *)&v32 init];
  v12 = v11;
  if (v11)
  {
    v11->_factor = 0.0;
    v11->_position = position;
    objc_storeStrong(&v11->_flapTopColor, color);
    objc_storeStrong(&v12->_flapBottomColor, bottomColor);
    _newLabel = [(SUUICountdownFlapView *)v12 _newLabel];
    labelTop = v12->_labelTop;
    v12->_labelTop = _newLabel;

    v15 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundViewTop = v12->_backgroundViewTop;
    v12->_backgroundViewTop = v15;

    [(SUUICountdownFlapView *)v12 addSubview:v12->_backgroundViewTop];
    [(UIView *)v12->_backgroundViewTop addSubview:v12->_labelTop];
    [(UIView *)v12->_backgroundViewTop setClipsToBounds:1];
    _newLabel2 = [(SUUICountdownFlapView *)v12 _newLabel];
    labelBot = v12->_labelBot;
    v12->_labelBot = _newLabel2;

    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundViewBot = v12->_backgroundViewBot;
    v12->_backgroundViewBot = v19;

    [(SUUICountdownFlapView *)v12 addSubview:v12->_backgroundViewBot];
    [(UIView *)v12->_backgroundViewBot addSubview:v12->_labelBot];
    [(UIView *)v12->_backgroundViewBot setClipsToBounds:1];
    _newLabel3 = [(SUUICountdownFlapView *)v12 _newLabel];
    labelTransitionTop = v12->_labelTransitionTop;
    v12->_labelTransitionTop = _newLabel3;

    v23 = objc_alloc_init(MEMORY[0x277D755E8]);
    backgroundViewTransitionTop = v12->_backgroundViewTransitionTop;
    v12->_backgroundViewTransitionTop = v23;

    [(UIImageView *)v12->_backgroundViewTransitionTop addSubview:v12->_labelTransitionTop];
    [(UIImageView *)v12->_backgroundViewTransitionTop setHidden:1];
    [(UIImageView *)v12->_backgroundViewTransitionTop setClipsToBounds:1];
    layer = [(UIImageView *)v12->_backgroundViewTransitionTop layer];
    [layer setZPosition:100.0];

    [(SUUICountdownFlapView *)v12 addSubview:v12->_backgroundViewTransitionTop];
    _newLabel4 = [(SUUICountdownFlapView *)v12 _newLabel];
    labelTransitionBot = v12->_labelTransitionBot;
    v12->_labelTransitionBot = _newLabel4;

    v28 = objc_alloc_init(MEMORY[0x277D755E8]);
    backgroundViewTransitionBot = v12->_backgroundViewTransitionBot;
    v12->_backgroundViewTransitionBot = v28;

    [(UIImageView *)v12->_backgroundViewTransitionBot addSubview:v12->_labelTransitionBot];
    [(UIImageView *)v12->_backgroundViewTransitionBot setHidden:1];
    [(UIImageView *)v12->_backgroundViewTransitionBot setClipsToBounds:1];
    layer2 = [(UIImageView *)v12->_backgroundViewTransitionBot layer];
    [layer2 setZPosition:100.0];

    [(SUUICountdownFlapView *)v12 addSubview:v12->_backgroundViewTransitionBot];
  }

  return v12;
}

- (void)layoutSubviews
{
  [(SUUICountdownFlapView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  position = self->_position;
  factor = self->_factor;
  v13 = 0.0;
  *&v6 = factor + factor;
  *&v6 = roundf(*&v6);
  v14 = *&v6;
  v15 = -*&v6;
  if (position == 2)
  {
    v13 = v15;
  }

  if (position)
  {
    v16 = v13;
  }

  else
  {
    v16 = v14;
  }

  v17 = v3 * 0.5;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  *&v19 = factor * v19;
  v20 = roundf(*&v19);
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v23 = v17 - v20 / v22;

  [(UIView *)self->_backgroundViewTop setFrame:v5, v7, v9, v23];
  v24 = v5 + v16;
  [(UILabel *)self->_labelTop setFrame:v5 + v16, v7, v9, v10];
  v25 = self->_factor;
  mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen3 scale];
  *&v27 = v25 * v27;
  v28 = roundf(*&v27);
  mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen4 scale];
  v31 = v17 - v28 / v30;

  v32 = self->_factor;
  mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen5 scale];
  *&v34 = v32 * v34;
  v35 = roundf(*&v34);
  mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen6 scale];
  v38 = v17 + v35 / v37;

  [(UIView *)self->_backgroundViewBot setFrame:v5, v38, v9, v31];
  v39 = self->_factor;
  mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen7 scale];
  *&v41 = v39 * v41;
  v42 = roundf(*&v41);
  mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen8 scale];
  v45 = v7 - (v17 + v42 / v44);

  [(UILabel *)self->_labelBot setFrame:v24, v45, v9, v10];
  v46 = self->_factor;
  mainScreen9 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen9 scale];
  *&v48 = v46 * v48;
  v49 = roundf(*&v48);
  mainScreen10 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen10 scale];
  v52 = v17 - v49 / v51;

  [(UIImageView *)self->_backgroundViewTransitionTop setFrame:v5, v7, v9, v52];
  [(UILabel *)self->_labelTransitionTop setFrame:v24, v7, v9, v10];
  v53 = self->_factor;
  mainScreen11 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen11 scale];
  *&v55 = v53 * v55;
  v56 = roundf(*&v55);
  mainScreen12 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen12 scale];
  v59 = v17 - v56 / v58;

  v60 = self->_factor;
  mainScreen13 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen13 scale];
  *&v62 = v60 * v62;
  v63 = roundf(*&v62);
  mainScreen14 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen14 scale];
  v66 = v17 + v63 / v65;

  [(UIImageView *)self->_backgroundViewTransitionBot setFrame:v5, v66, v9, v59];
  v67 = self->_factor;
  mainScreen15 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen15 scale];
  *&v69 = v67 * v69;
  v70 = roundf(*&v69);
  mainScreen16 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen16 scale];
  v73 = v7 - (v17 + v70 / v72);

  labelTransitionBot = self->_labelTransitionBot;

  [(UILabel *)labelTransitionBot setFrame:v24, v73, v9, v10];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = roundf(width);
  position = self->_position;
  switch(position)
  {
    case 0:
      goto LABEL_4;
    case 3:
      v6 = 4.0;
      goto LABEL_6;
    case 2:
LABEL_4:
      v6 = 2.0;
LABEL_6:
      v4 = v4 + v4 / 14.0 * v6;
      break;
  }

  v7 = v4;
  v8 = roundf(v7);
  height = fits.height;
  v10 = roundf(height);
  result.height = v10;
  result.width = v8;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  width = frame.size.width;
  v28 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = SUUICountdownFlapView;
  [(SUUICountdownFlapView *)&v25 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  factor = self->_factor;
  position = self->_position;
  switch(position)
  {
    case 0:
      goto LABEL_4;
    case 3:
      width = width * 14.0 / 18.0;
      break;
    case 2:
LABEL_4:
      width = width * 14.0 * 0.0625;
      break;
  }

  self->_factor = width / 14.0;
  if (width / 14.0 != factor && width / 14.0 != 0.0)
  {
    backgroundViewTransitionTop = self->_backgroundViewTransitionTop;
    v8 = [(SUUICountdownFlapView *)self _newBackgroundImageForTop:1];
    [(UIImageView *)backgroundViewTransitionTop setImage:v8];

    backgroundViewTransitionBot = self->_backgroundViewTransitionBot;
    v10 = [(SUUICountdownFlapView *)self _newBackgroundImageForTop:0];
    [(UIImageView *)backgroundViewTransitionBot setImage:v10];

    v11 = [(SUUICountdownFlapView *)self _newBackgroundImageForTop:0xFFFFFFFFLL];
    [(SUUICountdownFlapView *)self setImage:v11];

    v12 = self->_factor * 24.0;
    v13 = [MEMORY[0x277D74300] fontWithName:@"HelveticaNeue-CondensedBold" size:roundf(v12)];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    labelBot = self->_labelBot;
    v26[0] = self->_labelTop;
    v26[1] = labelBot;
    labelTransitionBot = self->_labelTransitionBot;
    v26[2] = self->_labelTransitionTop;
    v26[3] = labelTransitionBot;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:{4, 0}];
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * i) setFont:v13];
        }

        v18 = [v16 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v18);
    }

    [(SUUICountdownFlapView *)self setNeedsLayout];
  }
}

- (void)setString:(id)string
{
  stringCopy = string;
  string = self->_string;
  if (!string)
  {
    objc_storeStrong(&self->_string, string);
    [(UILabel *)self->_labelTop setText:self->_string];
    [(UILabel *)self->_labelBot setText:self->_string];
    string = self->_string;
  }

  if (([stringCopy isEqualToString:string] & 1) == 0)
  {
    v7 = self->_string;
    objc_storeStrong(&self->_string, string);
    layer = [(UIImageView *)self->_backgroundViewTransitionTop layer];
    [layer removeAllAnimations];

    layer2 = [(UIImageView *)self->_backgroundViewTransitionBot layer];
    [layer2 removeAllAnimations];

    [(UILabel *)self->_labelTop setText:self->_string];
    [(UILabel *)self->_labelBot setText:v7];
    [(UILabel *)self->_labelTransitionTop setText:v7];
    [(UILabel *)self->_labelTransitionBot setText:self->_string];
    [(UIImageView *)self->_backgroundViewTransitionTop setHidden:0];
    [(UIImageView *)self->_backgroundViewTransitionBot setHidden:1];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 11; ++i)
    {
      v13 = MEMORY[0x277CCAE60];
      [(SUUICountdownFlapView *)self _transformForAngle:1 isTop:(i / 10.0) * 3.14159265 * 0.5];
      v14 = [v13 valueWithCATransform3D:v19];
      [array addObject:v14];

      *&v15 = i / 10.0;
      v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
      [array2 addObject:v16];
    }

    v17 = objc_alloc_init(MEMORY[0x277CD9EC8]);
    [v17 setKeyPath:@"transform"];
    [v17 setValues:array];
    [v17 setKeyTimes:array2];
    [v17 setRemovedOnCompletion:0];
    [v17 setFillMode:*MEMORY[0x277CDA238]];
    [v17 setDuration:0.200000003];
    [v17 setDelegate:self];
    layer3 = [(UIImageView *)self->_backgroundViewTransitionTop layer];
    [layer3 addAnimation:v17 forKey:@"top"];
  }
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v14 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    labelTop = self->_labelTop;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelTop setTextColor:?];
    }

    else
    {
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelTop setTextColor:whiteColor];
    }

    labelBot = self->_labelBot;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelBot setTextColor:?];
    }

    else
    {
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelBot setTextColor:whiteColor2];
    }

    labelTransitionTop = self->_labelTransitionTop;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelTransitionTop setTextColor:?];
    }

    else
    {
      whiteColor3 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelTransitionTop setTextColor:whiteColor3];
    }

    labelTransitionBot = self->_labelTransitionBot;
    if (self->_textColor)
    {
      [(UILabel *)self->_labelTransitionBot setTextColor:?];
    }

    else
    {
      whiteColor4 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)labelTransitionBot setTextColor:whiteColor4];
    }

    colorCopy = v14;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  layer = [(UIImageView *)self->_backgroundViewTransitionTop layer];
  v7 = [layer animationForKey:@"top"];

  if (v7 == stopCopy)
  {
    [(UIImageView *)self->_backgroundViewTransitionTop setHidden:1];
    [(UIImageView *)self->_backgroundViewTransitionBot setHidden:0];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != 11; ++i)
    {
      v11 = MEMORY[0x277CCAE60];
      [(SUUICountdownFlapView *)self _transformForAngle:0 isTop:(1.0 - (i / 10.0)) * 3.14159265 * 0.5];
      v12 = [v11 valueWithCATransform3D:&v17];
      [array addObject:v12];

      *&v13 = i / 10.0;
      v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
      [array2 addObject:v14];
    }

    v15 = objc_alloc_init(MEMORY[0x277CD9EC8]);
    [v15 setKeyPath:@"transform"];
    [v15 setValues:array];
    [v15 setKeyTimes:array2];
    [v15 setRemovedOnCompletion:0];
    [v15 setFillMode:*MEMORY[0x277CDA238]];
    [v15 setDuration:0.200000003];
    [v15 setDelegate:self];
    layer2 = [(UIImageView *)self->_backgroundViewTransitionBot layer];
    [layer2 addAnimation:v15 forKey:@"bot"];
  }

  else
  {
    [(UILabel *)self->_labelBot setText:self->_string];
    [(UIImageView *)self->_backgroundViewTransitionTop setHidden:1];
    [(UIImageView *)self->_backgroundViewTransitionBot setHidden:1];
  }
}

- (id)_newLabel
{
  v3 = objc_alloc_init(MEMORY[0x277D756B8]);
  v4 = v3;
  if (self->_textColor)
  {
    [v3 setTextColor:?];
  }

  else
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [v4 setTextColor:whiteColor];
  }

  clearColor = [MEMORY[0x277D75348] clearColor];
  [v4 setBackgroundColor:clearColor];

  [v4 setTextAlignment:1];
  return v4;
}

- (id)_newBackgroundImageForTop:(int)top
{
  v57 = *MEMORY[0x277D85DE8];
  [(SUUICountdownFlapView *)self frame];
  v7 = v6;
  v8 = v5;
  if (top == 1)
  {
    factor = self->_factor;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    *&v25 = factor * v25;
    v26 = roundf(*&v25);
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v15 = v8 * 0.5 - v26 / v28;
  }

  else
  {
    if (!top)
    {
      v9 = self->_factor;
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 scale];
      *&v11 = v9 * v11;
      v12 = roundf(*&v11);
      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 scale];
      v15 = v8 * 0.5 - v12 / v14;

      v16 = self->_factor;
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 scale];
      *&v18 = v16 * v18;
      v19 = roundf(*&v18);
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 scale];
      v22 = v8 * -0.5 - v19 / v21;

      goto LABEL_7;
    }

    v15 = v5;
  }

  v22 = 0.0;
LABEL_7:
  mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen7 scale];
  v31 = v30;
  v58.width = v7;
  v58.height = v15;
  UIGraphicsBeginImageContextWithOptions(v58, 0, v31);

  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextBeginPath(CurrentContext);
  CGContextMoveToPoint(CurrentContext, v7 * 0.5 + 0.0, v22);
  v33 = v7 + 0.0;
  if ((self->_position & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v34 = self->_factor * 5.0;
    v35 = roundf(v34);
    CGContextAddArc(CurrentContext, v33 - v35, v22 + v35, v35, 4.71238898, 6.28318531, 0);
    v36 = self->_factor * 5.0;
    v37 = roundf(v36);
    CGContextAddArc(CurrentContext, v33 - v37, v8 + v22 - v37, v37, 0.0, 1.57079633, 0);
  }

  else
  {
    CGContextAddLineToPoint(CurrentContext, v33, v22);
    CGContextAddLineToPoint(CurrentContext, v33, v8 + v22);
  }

  position = self->_position;
  if (position == 3 || position == 0)
  {
    v40 = self->_factor * 5.0;
    v41 = roundf(v40);
    CGContextAddArc(CurrentContext, v41 + 0.0, v8 + v22 - v41, v41, 1.57079633, 3.14159265, 0);
    v42 = self->_factor * 5.0;
    v43 = roundf(v42);
    CGContextAddArc(CurrentContext, v43 + 0.0, v22 + v43, v43, 3.14159265, 4.71238898, 0);
  }

  else
  {
    CGContextAddLineToPoint(CurrentContext, 0.0, v8 + v22);
    CGContextAddLineToPoint(CurrentContext, 0.0, v22);
  }

  CGContextClosePath(CurrentContext);
  CGContextClip(CurrentContext);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *locations = xmmword_259FCAE10;
  flapTopColor = self->_flapTopColor;
  blackColor = flapTopColor;
  if (!flapTopColor)
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  v47 = CGColorRetain([blackColor CGColor]);
  if (!flapTopColor)
  {
  }

  flapBottomColor = self->_flapBottomColor;
  v49 = flapBottomColor;
  if (!flapBottomColor)
  {
    v49 = [MEMORY[0x277D75348] colorWithWhite:0.4 alpha:1.0];
  }

  v50 = CGColorRetain([v49 CGColor]);
  if (!flapBottomColor)
  {
  }

  v55[0] = v47;
  v55[1] = v50;
  v51 = CFArrayCreate(0, v55, 2, MEMORY[0x277CBF128]);
  v52 = CGGradientCreateWithColors(DeviceRGB, v51, locations);
  v60.y = v8 + v22;
  v59.x = 0.0;
  v60.x = 0.0;
  v59.y = v22;
  CGContextDrawLinearGradient(CurrentContext, v52, v59, v60, 0);
  CGColorRelease(v47);
  CGColorRelease(v50);
  CGGradientRelease(v52);
  CFRelease(v51);
  CGColorSpaceRelease(DeviceRGB);
  v53 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v53;
}

- (CATransform3D)_transformForAngle:(SEL)angle isTop:(double)top
{
  [(SUUICountdownFlapView *)self frame];
  v10 = v9;
  v12 = v11;
  if (a5)
  {
    factor = self->_factor;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    *&v15 = factor * v15;
    v16 = roundf(*&v15);
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v19 = v12 * 0.25 - v16 / v18 * 0.25;
    v20 = v10;
  }

  else
  {
    v20 = v9 * 3.0;
    v21 = self->_factor;
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    *&v22 = v21 * v22;
    v23 = roundf(*&v22);
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v19 = v12 * 3.0 * 0.25 + v23 / v24 * 3.0 * 0.25;
  }

  v25 = MEMORY[0x277CD9DE8];
  v26 = v20 * 0.25;
  v27 = v12 * 0.5;
  v28 = *(MEMORY[0x277CD9DE8] + 64);
  v29 = *(MEMORY[0x277CD9DE8] + 80);
  v30 = v10 * 0.5;
  *&retstr->m31 = v28;
  *&retstr->m33 = v29;
  v31 = v25[6];
  v32 = v25[7];
  *&retstr->m41 = v31;
  *&retstr->m43 = v32;
  v33 = *v25;
  v34 = v25[1];
  *&retstr->m11 = *v25;
  *&retstr->m13 = v34;
  v35 = v25[2];
  v36 = v25[3];
  *&retstr->m21 = v35;
  *&retstr->m23 = v36;
  *&v55.m31 = v28;
  *&v55.m33 = v29;
  *&v55.m41 = v31;
  *&v55.m43 = v32;
  *&v55.m11 = v33;
  *&v55.m13 = v34;
  *&v55.m21 = v35;
  *&v55.m23 = v36;
  CATransform3DTranslate(retstr, &v55, v30 - v26, v27 - v19, 0.0);
  v37 = *&retstr->m33;
  *&v54.m31 = *&retstr->m31;
  *&v54.m33 = v37;
  v38 = *&retstr->m43;
  *&v54.m41 = *&retstr->m41;
  *&v54.m43 = v38;
  v39 = *&retstr->m13;
  *&v54.m11 = *&retstr->m11;
  *&v54.m13 = v39;
  v40 = *&retstr->m23;
  *&v54.m21 = *&retstr->m21;
  *&v54.m23 = v40;
  CATransform3DRotate(&v55, &v54, top, 1.0, 0.0, 0.0);
  v41 = *&v55.m33;
  *&retstr->m31 = *&v55.m31;
  *&retstr->m33 = v41;
  v42 = *&v55.m43;
  *&retstr->m41 = *&v55.m41;
  *&retstr->m43 = v42;
  v43 = *&v55.m13;
  *&retstr->m11 = *&v55.m11;
  *&retstr->m13 = v43;
  v44 = *&v55.m23;
  *&retstr->m21 = *&v55.m21;
  *&retstr->m23 = v44;
  v45 = *&retstr->m33;
  *&v54.m31 = *&retstr->m31;
  *&v54.m33 = v45;
  v46 = *&retstr->m43;
  *&v54.m41 = *&retstr->m41;
  *&v54.m43 = v46;
  v47 = *&retstr->m13;
  *&v54.m11 = *&retstr->m11;
  *&v54.m13 = v47;
  v48 = *&retstr->m23;
  *&v54.m21 = *&retstr->m21;
  *&v54.m23 = v48;
  result = CATransform3DTranslate(&v55, &v54, v26 - v30, v19 - v27, 0.0);
  v50 = *&v55.m33;
  *&retstr->m31 = *&v55.m31;
  *&retstr->m33 = v50;
  v51 = *&v55.m43;
  *&retstr->m41 = *&v55.m41;
  *&retstr->m43 = v51;
  v52 = *&v55.m13;
  *&retstr->m11 = *&v55.m11;
  *&retstr->m13 = v52;
  v53 = *&v55.m23;
  *&retstr->m21 = *&v55.m21;
  *&retstr->m23 = v53;
  return result;
}

@end