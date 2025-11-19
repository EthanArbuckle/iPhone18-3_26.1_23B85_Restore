@interface CKGradientView
+ (id)gradientViews;
- (CGRect)gradientFrame;
- (CKGradientReferenceView)referenceView;
- (CKGradientView)initWithFrame:(CGRect)a3;
- (UIImage)gradient;
- (id)description;
- (void)_checkForInvalidLayoutIfNeeded;
- (void)_removeAllAnimations:(BOOL)a3;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setColors:(id)a3;
- (void)setMaskImage:(id)a3;
- (void)setReferenceView:(id)a3;
- (void)updateAnimation;
- (void)updateGradientImage;
@end

@implementation CKGradientView

+ (id)gradientViews
{
  if (gradientViews_once != -1)
  {
    +[CKGradientView gradientViews];
  }

  v3 = gradientViews_sGradientViews;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CKGradientView;
  v4 = [(CKGradientView *)&v8 description];
  v5 = [(CKGradientView *)self referenceView];
  v6 = [v3 stringWithFormat:@"%@ referenceView:%@", v4, v5];

  return v6;
}

- (CKGradientView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = CKGradientView;
  v3 = [(CKGradientView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[CKBaseLayer layer];
    [v4 setCkLayerDelegate:v3];
    [v4 setAnchorPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
    v5 = [MEMORY[0x1E6979398] layer];
    v6 = [(CKGradientView *)v3 layer];
    CATransform3DMakeScale(&v8, -1.0, -1.0, 1.0);
    [v5 setSublayerTransform:&v8];
    [(CKGradientView *)v3 setTrackingLayer:v5];
    [v6 addSublayer:v5];
    [(CKGradientView *)v3 setGradientLayer:v4];
    [v5 addSublayer:v4];
  }

  return v3;
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = CKGradientView;
  [(CKGradientView *)&v48 layoutSubviews];
  v3 = [(CKGradientView *)self superview];
  v4 = [(CKGradientView *)self referenceView];
  v5 = [(CKGradientView *)self window];
  v6 = v5;
  if (!v5 || !v3)
  {
    goto LABEL_8;
  }

  if (v4)
  {
    [(CKGradientView *)self bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v4 gradientFrame];
    v16 = v15;
    v18 = v17;
    v44 = v20;
    v45 = v19;
    [v4 gradientFrame];
    v42 = v21;
    v43 = v22;
    v24 = v23;
    v26 = v25;
    v49.origin.x = v8;
    v49.origin.y = v10;
    v49.size.width = v12;
    v49.size.height = v14;
    if (!CGRectIsEmpty(v49))
    {
      v50.origin.x = v16;
      v50.origin.y = v18;
      v50.size.height = v44;
      v50.size.width = v45;
      if (!CGRectIsEmpty(v50))
      {
        v51.origin.x = v42;
        v51.origin.y = v43;
        v51.size.width = v24;
        v51.size.height = v26;
        if (!CGRectIsEmpty(v51))
        {
          [(CKGradientView *)self setGradientFrame:v42, v43, v24, v26];
          v37 = v12 / v45 * (v24 / v45);
          v27 = MEMORY[0x1E6979398];
          v28 = [(CKGradientView *)self maskImage];
          [v27 extraInsetsForImage:v28];
          v38 = v30;
          v39 = v29;
          v40 = v32;
          v41 = v31;

          [MEMORY[0x1E6979518] begin];
          [MEMORY[0x1E6979518] setDisableActions:1];
          v6 = [(CKGradientView *)self trackingLayer];
          [v6 setBounds:{0.0, 0.0, v37, v14 / v44 * (v26 / v44)}];
          v52.origin.x = v8;
          v52.origin.y = v10;
          v52.size.width = v12;
          v52.size.height = v14;
          MidX = CGRectGetMidX(v52);
          v53.origin.x = v8;
          v53.origin.y = v10;
          v53.size.width = v12;
          v53.size.height = v14;
          [v6 setPosition:{MidX, CGRectGetMidY(v53)}];
          CATransform3DMakeScale(&v47, -v45, -v44, 1.0);
          [v6 setTransform:&v47];
          v34 = [(CKGradientView *)self gradientLayer];
          [v34 setContentsRect:{-v42 / v45 - v37 * (v38 / v12 + 1.0), -v43 / v44 - v14 / v44 * (v26 / v44) * (v39 / v14 + 1.0), v37 * (1.0 - (v38 + v40) / v12), v14 / v44 * (v26 / v44) * (1.0 - (v39 + v41) / v14)}];
          v35 = MEMORY[0x1E6979398];
          v36 = [(CKGradientView *)self maskImage];
          [v35 boundsForMaskImage:v36 withOriginalSize:{v12, v14}];
          [v34 setBounds:?];

          CATransform3DMakeScale(&v46, 1.0 / v45, 1.0 / v44, 1.0);
          CATransform3DTranslate(&v47, &v46, v38, v39, 0.0);
          [v34 setTransform:&v47];
          [MEMORY[0x1E6979518] commit];

LABEL_8:
        }
      }
    }
  }

  [(CKGradientView *)self _checkForInvalidLayoutIfNeeded];
}

- (void)_checkForInvalidLayoutIfNeeded
{
  v68 = *MEMORY[0x1E69E9840];
  v52 = [MEMORY[0x1E69A60F0] sharedInstance];
  if ([v52 isInternalInstall])
  {
    v3 = [(CKGradientView *)self superview];

    if (v3)
    {
      v4 = MEMORY[0x1E6979398];
      v5 = [(CKGradientView *)self maskImage];
      [(CKGradientView *)self bounds];
      [v4 boundsForMaskImage:v5 withOriginalSize:{v6, v7}];
      v9 = v8;
      v11 = v10;

      v12 = [(CKGradientView *)self gradientLayer];
      [v12 bounds];
      v14 = v13;
      v16 = v15;

      if (v14 != *MEMORY[0x1E695F060] || v16 != *(MEMORY[0x1E695F060] + 8))
      {
        v18 = +[CKUIBehavior sharedBehaviors];
        v19 = vabdd_f64(v11, v16);
        [v18 textBalloonMinHeight];
        v21 = v20 * 0.5;
        v22 = v19 < v20 * 0.5;
        v23 = [(CKGradientView *)self superview];
        [v23 bounds];
        Width = CGRectGetWidth(v74);

        [(CKGradientView *)self bounds];
        v51 = v26;
        v53 = v25;
        v49 = v28;
        v50 = v27;
        v29 = [(CKGradientView *)self referenceView];
        [v29 bounds];
        v47 = v31;
        v48 = v30;
        rect = v32;
        v34 = v33;

        if (!v22 && IMOSLoggingEnabled())
        {
          v35 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
          {
            v70.width = v14;
            v70.height = v16;
            v36 = NSStringFromCGSize(v70);
            v71.width = v9;
            v71.height = v11;
            v37 = NSStringFromCGSize(v71);
            v75.origin.y = v51;
            *&v75.origin.x = v53;
            v75.size.height = v49;
            v75.size.width = v50;
            v38 = NSStringFromCGRect(v75);
            v76.origin.y = v47;
            v76.origin.x = v48;
            v76.size.width = rect;
            v76.size.height = v34;
            v39 = NSStringFromCGRect(v76);
            *buf = 138413826;
            v55 = v36;
            v56 = 2112;
            v57 = v37;
            v58 = 2048;
            v59 = v19;
            v60 = 2048;
            v61 = v21;
            v62 = 2048;
            v63 = Width;
            v64 = 2112;
            v65 = v38;
            v66 = 2112;
            v67 = v39;
            _os_log_impl(&dword_19020E000, v35, OS_LOG_TYPE_INFO, "height incorrect – actualSize: %@, expectedSize: %@, diff: %f sig-diff: %f, maxWidth: %f - gradientViewBounds: %@ – gradientReferenceViewBounds: %@", buf, 0x48u);
          }
        }

        v40 = vabdd_f64(v9, v14);
        if (v40 >= v21 && IMOSLoggingEnabled())
        {
          v41 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v72.width = v14;
            v72.height = v16;
            v42 = NSStringFromCGSize(v72);
            v73.width = v9;
            v73.height = v11;
            v43 = NSStringFromCGSize(v73);
            v77.origin.y = v51;
            *&v77.origin.x = v53;
            v77.size.height = v49;
            v77.size.width = v50;
            v44 = NSStringFromCGRect(v77);
            v78.origin.y = v47;
            v78.origin.x = v48;
            v78.size.width = rect;
            v78.size.height = v34;
            v45 = NSStringFromCGRect(v78);
            *buf = 138413570;
            v55 = v42;
            v56 = 2112;
            v57 = v43;
            v58 = 2048;
            v59 = v40;
            v60 = 2048;
            v61 = v21;
            v62 = 2112;
            v63 = *&v44;
            v64 = 2112;
            v65 = v45;
            _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "width incorrect – actualSize: %@, expectedSize: %@, diff: %f sig-diff: %f - gradientViewBounds: %@ – gradientReferenceViewBounds: %@", buf, 0x3Eu);
          }
        }
      }
    }
  }

  else
  {
  }
}

- (void)didMoveToWindow
{
  [(CKGradientView *)self updateAnimation];
  v3 = [(CKGradientView *)self window];

  v4 = +[CKGradientView gradientViews];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:self];

    [(CKGradientView *)self setNeedsLayout];
  }

  else
  {
    [v4 removeObject:self];
  }
}

- (void)didMoveToSuperview
{
  [(CKGradientView *)self updateAnimation];
  v3 = [(CKGradientView *)self superview];

  v4 = +[CKGradientView gradientViews];
  v5 = v4;
  if (v3)
  {
    [v4 addObject:self];

    [(CKGradientView *)self setNeedsLayout];
  }

  else
  {
    [v4 removeObject:self];
  }
}

- (void)_removeAllAnimations:(BOOL)a3
{
  v3 = [(CKGradientView *)self layer];
  [v3 removeAllAnimations];
}

- (void)setReferenceView:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_referenceView, obj);
    [(CKGradientView *)self updateGradientImage];
    [(CKGradientView *)self updateAnimation];
    v5 = obj;
    if (obj)
    {
      [obj gradientFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(CKGradientView *)self gradientFrame];
      v22.origin.x = v14;
      v22.origin.y = v15;
      v22.size.width = v16;
      v22.size.height = v17;
      v21.origin.x = v7;
      v21.origin.y = v9;
      v21.size.width = v11;
      v21.size.height = v13;
      v18 = CGRectEqualToRect(v21, v22);
      v5 = obj;
      if (!v18)
      {
        [(CKGradientView *)self setNeedsLayout];
        v5 = obj;
      }
    }
  }
}

- (void)setColors:(id)a3
{
  v6 = a3;
  if ([(NSArray *)self->_colors isEqualToArray:?])
  {
    v4 = v6;
  }

  else
  {
    v5 = [v6 copy];

    objc_storeStrong(&self->_colors, v5);
    [(CKGradientView *)self updateGradientImage];
    v4 = v5;
  }
}

- (void)setMaskImage:(id)a3
{
  v5 = a3;
  if (self->_maskImage != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_maskImage, a3);
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    v6 = [(CKGradientView *)self gradientLayer];
    [v6 setMaskImage:v7];

    [(CKGradientView *)self setNeedsLayout];
    [MEMORY[0x1E6979518] commit];
    v5 = v7;
  }
}

void __31__CKGradientView_gradientViews__block_invoke()
{
  v0 = *(MEMORY[0x1E695E9F8] + 16);
  *&v3.version = *MEMORY[0x1E695E9F8];
  *&v3.release = v0;
  *&v3.equal = *(MEMORY[0x1E695E9F8] + 32);
  v3.retain = 0;
  v3.release = 0;
  v1 = CFSetCreateMutable(0, 0, &v3);
  v2 = gradientViews_sGradientViews;
  gradientViews_sGradientViews = v1;
}

- (void)updateAnimation
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKGradientView *)self gradientLayer];
  [v3 removeAnimationForKey:@"matchmove"];
  v4 = [(CKGradientView *)self superview];
  v5 = [(CKGradientView *)self referenceView];
  v6 = [(CKGradientView *)self window];
  if (v6 && v4)
  {

    if (v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E69793B8]);
      [v7 setKeyPath:@"contentsRect.origin"];
      v8 = [v5 layer];
      [v7 setSourceLayer:v8];

      [v7 setDuration:INFINITY];
      v9 = [MEMORY[0x1E696B098] valueWithCGPoint:{0.0, 0.0}];
      v11[0] = v9;
      v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
      [v7 setSourcePoints:v10];

      [v7 setBeginTimeMode:@"absolute"];
      [v7 setBeginTime:0.0];
      [v7 setAdditive:1];
      [v7 setTargetsSuperlayer:1];
      [v3 addAnimation:v7 forKey:@"matchmove"];
    }
  }

  else
  {
  }
}

- (void)updateGradientImage
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v3 = [(CKGradientView *)self gradientLayer];
  v4 = [(CKGradientView *)self gradient];
  [v3 setContents:{objc_msgSend(v4, "CGImage")}];

  v5 = MEMORY[0x1E6979518];

  [v5 commit];
}

- (UIImage)gradient
{
  v30[1] = *MEMORY[0x1E69E9840];
  v3 = [(CKGradientView *)self colors];
  v4 = [(CKGradientView *)self referenceView];
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if (gradient_once != -1)
    {
      [CKGradientView gradient];
    }

    [v5 gradientFrame];
    v8 = v7;
    if (CKMainScreenScale_once_63 != -1)
    {
      [CKGradientView gradient];
    }

    v9 = *&CKMainScreenScale_sMainScreenScale_63;
    if (*&CKMainScreenScale_sMainScreenScale_63 == 0.0)
    {
      v9 = 1.0;
    }

    v10 = floor(v8 * v9) / v9;
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v12 = [gradient_sGradients objectForKey:v11];
    if (!v12)
    {
      v12 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      [gradient_sGradients setObject:v12 forKey:v11];
    }

    v6 = [v12 objectForKey:v3];
    if (v6)
    {
      goto LABEL_20;
    }

    v13 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v13 scale];
    v15 = v10 * v14;

    v16 = fmax(v15, 1.0);
    v17 = [v3 count];
    Mutable = CFArrayCreateMutable(0, v17, MEMORY[0x1E695E9C0]);
    MEMORY[0x1EEE9AC00](Mutable);
    v20 = (v30 - v19);
    bzero(v30 - v19, v21);
    if (v17 >= 1)
    {
      for (i = 0; i != v17; ++i)
      {
        v23 = [v3 objectAtIndex:i];
        CFArrayAppendValue(Mutable, [v23 CGColor]);

        v20[i] = i / (v17 - 1);
      }
    }

    v32.width = 1.0;
    v32.height = v16;
    UIGraphicsBeginImageContextWithOptions(v32, 0, 1.0);
    CurrentContext = UIGraphicsGetCurrentContext();
    if (CurrentContext)
    {
      v25 = CurrentContext;
      v26 = *MEMORY[0x1E695EFF8];
      v27 = *(MEMORY[0x1E695EFF8] + 8);
      v28 = CGGradientCreateWithColors(0, Mutable, v20);
      v34.x = 0.0;
      v33.x = v26;
      v33.y = v27;
      v34.y = v16;
      CGContextDrawLinearGradient(v25, v28, v33, v34, 0);
      v6 = UIGraphicsGetImageFromCurrentImageContext();
      CGGradientRelease(v28);
      UIGraphicsEndImageContext();
      if (v6)
      {
        [v12 setObject:v6 forKey:v3];
      }

      if (!Mutable)
      {
        goto LABEL_20;
      }
    }

    else
    {
      NSLog(&cfstr_NilContextFail.isa);
      UIGraphicsEndImageContext();
      v6 = 0;
      if (!Mutable)
      {
        goto LABEL_20;
      }
    }

    CFRelease(Mutable);
LABEL_20:
  }

  return v6;
}

void __26__CKGradientView_gradient__block_invoke()
{
  v0 = CKDefaultCacheLimit();
  v1 = CKCreateCache(v0);
  v2 = gradient_sGradients;
  gradient_sGradients = v1;
}

- (CKGradientReferenceView)referenceView
{
  WeakRetained = objc_loadWeakRetained(&self->_referenceView);

  return WeakRetained;
}

- (CGRect)gradientFrame
{
  x = self->_gradientFrame.origin.x;
  y = self->_gradientFrame.origin.y;
  width = self->_gradientFrame.size.width;
  height = self->_gradientFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end