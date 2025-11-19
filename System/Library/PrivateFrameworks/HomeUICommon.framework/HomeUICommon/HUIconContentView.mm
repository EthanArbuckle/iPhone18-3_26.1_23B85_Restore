@interface HUIconContentView
+ (Class)iconContentViewClassForIconDescriptor:(id)a3;
- (HUIconContentView)initWithFrame:(CGRect)a3;
- (HUIconContentViewDelegate)delegate;
- (void)_updateOverrideRenderingModeForSubviewsOfView:(id)a3;
- (void)setAspectRatio:(double)a3;
- (void)updateWithIconDescriptor:(id)a3 displayStyle:(unint64_t)a4 animated:(BOOL)a5;
@end

@implementation HUIconContentView

+ (Class)iconContentViewClassForIconDescriptor:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [MEMORY[0x277D14678] isHomeUIService];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && v3)
        {
          NSLog(&cfstr_NoIconViewClas.isa, v3);
        }
      }
    }
  }

  v4 = objc_opt_class();

  return v4;
}

- (HUIconContentView)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = HUIconContentView;
  result = [(HUIconContentView *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_aspectRatio = 1.0;
  }

  return result;
}

- (void)updateWithIconDescriptor:(id)a3 displayStyle:(unint64_t)a4 animated:(BOOL)a5
{
  v7 = a3;
  [(HUIconContentView *)self setIconDescriptor:v7];
  [(HUIconContentView *)self setDisplayStyle:a4];
  if ([(HUIconContentView *)self effectiveUserInterfaceLayoutDirection]== 1 && [(HUIconContentView *)self shouldFlipForRTL])
  {
    v8 = [v7 shouldForceLTR];
  }

  else
  {
    v8 = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v7 isSystemImage];
    v10 = -1.0;
    if (((v9 | v8) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = -1.0;
  if (v8)
  {
LABEL_9:
    v10 = 1.0;
  }

LABEL_10:
  CGAffineTransformMakeScale(&v12, v10, 1.0);
  v11 = v12;
  [(HUIconContentView *)self setTransform:&v11];
}

- (void)setAspectRatio:(double)a3
{
  if (vabdd_f64(a3, self->_aspectRatio) > 0.00000011920929)
  {
    self->_aspectRatio = a3;
    v4 = [(HUIconContentView *)self delegate];
    [v4 iconContentView:self didChangeAspectRatio:self->_aspectRatio];

    [(HUIconContentView *)self setNeedsLayout];
  }
}

- (void)_updateOverrideRenderingModeForSubviewsOfView:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 subviews];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [(HUIconContentView *)self renderingModeForSubview:v10 suggestedRenderingMode:[(HUIconContentView *)self renderingMode]];
          v12 = [v10 image];
          v13 = [v12 imageWithRenderingMode:v11];
          [v10 setImage:v13];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          v12 = v9;
          [v12 _setTextColorFollowsTintColor:{-[HUIconContentView renderingMode](self, "renderingMode") == 2}];
        }

LABEL_11:
        [(HUIconContentView *)self _updateOverrideRenderingModeForSubviewsOfView:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HUIconContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end