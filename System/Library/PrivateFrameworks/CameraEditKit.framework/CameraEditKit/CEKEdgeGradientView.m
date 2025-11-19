@interface CEKEdgeGradientView
- ($01BB1521EC52D44A8E7628F5261DCEC8)gradientDimensions;
- (CEKEdgeGradientView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentInsets;
- (void)drawRect:(CGRect)a3;
- (void)setContentInsets:(UIEdgeInsets)a3;
- (void)setCustomEdgeGradientStyleWithColor:(id)a3;
- (void)setEdgeGradientStyleBlack;
- (void)setEdgeGradientStyleMask;
- (void)setGradientDimensions:(id)a3;
- (void)setGradientDirection:(int64_t)a3;
@end

@implementation CEKEdgeGradientView

- (CEKEdgeGradientView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CEKEdgeGradientView;
  v3 = [(CEKEdgeGradientView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] blackColor];
    customEdgeGradientColor = v3->_customEdgeGradientColor;
    v3->_customEdgeGradientColor = v4;

    v3->_gradientDirection = 0;
    [(CEKEdgeGradientView *)v3 setContentMode:3];
    [(CEKEdgeGradientView *)v3 setBackgroundColor:0];
    [(CEKEdgeGradientView *)v3 setUserInteractionEnabled:0];
  }

  return v3;
}

- (void)setGradientDimensions:(id)a3
{
  if (self->_gradientDimensions.startFadeInset != a3.var0 || self->_gradientDimensions.startFadeLength != a3.var1 || self->_gradientDimensions.endFadeLength != a3.var2 || self->_gradientDimensions.endFadeInset != a3.var3)
  {
    self->_gradientDimensions = a3;
    [(CEKEdgeGradientView *)self setNeedsDisplay];
  }
}

- (void)setContentInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = a3;
    [(CEKEdgeGradientView *)self setNeedsDisplay];
  }
}

- (void)setEdgeGradientStyleBlack
{
  if (self->_edgeGradientStyle)
  {
    self->_edgeGradientStyle = 0;
    customEdgeGradientColor = self->_customEdgeGradientColor;
    self->_customEdgeGradientColor = 0;

    [(CEKEdgeGradientView *)self setNeedsDisplay];
  }
}

- (void)setEdgeGradientStyleMask
{
  if (self->_edgeGradientStyle != 1)
  {
    self->_edgeGradientStyle = 1;
    customEdgeGradientColor = self->_customEdgeGradientColor;
    self->_customEdgeGradientColor = 0;

    [(CEKEdgeGradientView *)self setNeedsDisplay];
  }
}

- (void)setCustomEdgeGradientStyleWithColor:(id)a3
{
  v5 = a3;
  v6 = v5;
  v7 = v5;
  if (self->_customEdgeGradientColor != v5 && (v5 = [v5 isEqual:?], v6 = v7, (v5 & 1) == 0) || self->_edgeGradientStyle != 2)
  {
    self->_edgeGradientStyle = 2;
    objc_storeStrong(&self->_customEdgeGradientColor, a3);
    v5 = [(CEKEdgeGradientView *)self setNeedsDisplay];
    v6 = v7;
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)setGradientDirection:(int64_t)a3
{
  if (self->_gradientDirection != a3)
  {
    self->_gradientDirection = a3;
    [(CEKEdgeGradientView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  v65[6] = *MEMORY[0x1E69E9840];
  [(CEKEdgeGradientView *)self bounds:a3.origin.x];
  if (v6 <= 0.0)
  {
    return;
  }

  v8 = v7;
  if (v7 <= 0.0)
  {
    return;
  }

  v9 = v4;
  v10 = v5;
  v11 = v6;
  CurrentContext = UIGraphicsGetCurrentContext();
  v68.origin.x = v9;
  v68.origin.y = v10;
  v68.size.width = v11;
  v68.size.height = v8;
  CGContextClearRect(CurrentContext, v68);
  v13 = [(CEKEdgeGradientView *)self edgeGradientStyle];
  if (!v13)
  {
    v14 = [MEMORY[0x1E69DC888] blackColor];
    v16 = MEMORY[0x1E69DC888];
    goto LABEL_9;
  }

  if (v13 == 2)
  {
    v14 = [(CEKEdgeGradientView *)self customEdgeGradientColor];
    v16 = MEMORY[0x1E69DC888];
LABEL_9:
    v15 = [v16 clearColor];
    goto LABEL_10;
  }

  if (v13 != 1)
  {
    v17 = 0;
    v14 = 0;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E69DC888] clearColor];
  v15 = [MEMORY[0x1E69DC888] blackColor];
LABEL_10:
  v17 = v15;
LABEL_12:
  [v17 set];
  v69.origin.x = v9;
  v69.origin.y = v10;
  v69.size.width = v11;
  v69.size.height = v8;
  CGContextFillRect(CurrentContext, v69);
  [(CEKEdgeGradientView *)self contentInsets];
  v19 = v9 + v18;
  v21 = v10 + v20;
  v23 = v11 - (v18 + v22);
  v25 = v8 - (v20 + v24);
  v70.origin.x = v9 + v18;
  v70.origin.y = v21;
  v70.size.width = v23;
  v70.size.height = v25;
  CGContextClearRect(CurrentContext, v70);
  v71.origin.x = v19;
  v71.origin.y = v21;
  v71.size.width = v23;
  v71.size.height = v25;
  CGContextClipToRect(CurrentContext, v71);
  v26 = [(CEKEdgeGradientView *)self gradientDirection];
  [(CEKEdgeGradientView *)self contentInsets];
  v28 = v27;
  v30 = v29;
  [(CEKEdgeGradientView *)self contentInsets];
  v62 = v9;
  v63 = v10;
  if (v26)
  {
    v33 = v28 / v8;
    v34 = v8;
    v35 = v31 / v8;
  }

  else
  {
    v33 = v30 / v11;
    v34 = v11;
    v35 = v32 / v11;
  }

  v36 = 1.0 - v35;
  v37 = [v14 CGColor];
  v38 = [v17 CGColor];
  v65[0] = v37;
  v65[1] = v37;
  v65[2] = v38;
  v65[3] = v38;
  v65[4] = v37;
  v65[5] = v37;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:6];
  [(CEKEdgeGradientView *)self gradientDimensions];
  v41 = v40 / v34;
  [(CEKEdgeGradientView *)self gradientDimensions];
  v43 = v42 / v34;
  [(CEKEdgeGradientView *)self gradientDimensions];
  v45 = v44 / v34;
  [(CEKEdgeGradientView *)self gradientDimensions];
  v47 = v46 / v34;
  if (v41 <= 0.0)
  {
    v48 = 0.05;
  }

  else
  {
    v48 = v41;
  }

  if (v43 <= 0.0)
  {
    v49 = 0.05;
  }

  else
  {
    v49 = v43;
  }

  if (v45 <= 0.0)
  {
    v50 = 0.05;
  }

  else
  {
    v50 = v45;
  }

  if (v47 <= 0.0)
  {
    v47 = 0.05;
  }

  locations[0] = v33;
  locations[1] = v33 + v48;
  v51 = v36 - v47;
  locations[2] = v33 + v48 + v49;
  locations[3] = v51 - v50;
  locations[4] = v51;
  locations[5] = v36;
  ColorSpace = CGColorGetColorSpace([v14 CGColor]);
  v53 = CGGradientCreateWithColors(ColorSpace, v39, locations);
  v72.origin.x = v62;
  v72.origin.y = v63;
  v72.size.width = v11;
  v72.size.height = v8;
  MinX = CGRectGetMinX(v72);
  v73.origin.x = v62;
  v73.origin.y = v63;
  v73.size.width = v11;
  v73.size.height = v8;
  MinY = CGRectGetMinY(v73);
  v56 = v62;
  v57 = v63;
  v58 = v11;
  v59 = v8;
  if (v26)
  {
    MaxX = CGRectGetMinX(*&v56);
    v74.origin.x = v62;
    v74.origin.y = v63;
    v74.size.width = v11;
    v74.size.height = v8;
    MaxY = CGRectGetMaxY(v74);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v56);
    v75.origin.x = v62;
    v75.origin.y = v63;
    v75.size.width = v11;
    v75.size.height = v8;
    MaxY = CGRectGetMinY(v75);
  }

  v67.y = MaxY;
  v66.x = MinX;
  v66.y = MinY;
  v67.x = MaxX;
  CGContextDrawLinearGradient(CurrentContext, v53, v66, v67, 0);
  CGGradientRelease(v53);
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)gradientDimensions
{
  startFadeInset = self->_gradientDimensions.startFadeInset;
  startFadeLength = self->_gradientDimensions.startFadeLength;
  endFadeLength = self->_gradientDimensions.endFadeLength;
  endFadeInset = self->_gradientDimensions.endFadeInset;
  result.var3 = endFadeInset;
  result.var2 = endFadeLength;
  result.var1 = startFadeLength;
  result.var0 = startFadeInset;
  return result;
}

@end