@interface HUIconContentView
+ (Class)iconContentViewClassForIconDescriptor:(id)descriptor;
- (HUIconContentView)initWithFrame:(CGRect)frame;
- (HUIconContentViewDelegate)delegate;
- (void)_updateOverrideRenderingModeForSubviewsOfView:(id)view;
- (void)setAspectRatio:(double)ratio;
- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated;
@end

@implementation HUIconContentView

+ (Class)iconContentViewClassForIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
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
        if ((objc_opt_isKindOfClass() & 1) == 0 && descriptorCopy)
        {
          NSLog(&cfstr_NoIconViewClas.isa, descriptorCopy);
        }
      }
    }
  }

  v4 = objc_opt_class();

  return v4;
}

- (HUIconContentView)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = HUIconContentView;
  result = [(HUIconContentView *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_aspectRatio = 1.0;
  }

  return result;
}

- (void)updateWithIconDescriptor:(id)descriptor displayStyle:(unint64_t)style animated:(BOOL)animated
{
  descriptorCopy = descriptor;
  [(HUIconContentView *)self setIconDescriptor:descriptorCopy];
  [(HUIconContentView *)self setDisplayStyle:style];
  if ([(HUIconContentView *)self effectiveUserInterfaceLayoutDirection]== 1 && [(HUIconContentView *)self shouldFlipForRTL])
  {
    shouldForceLTR = [descriptorCopy shouldForceLTR];
  }

  else
  {
    shouldForceLTR = 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isSystemImage = [descriptorCopy isSystemImage];
    v10 = -1.0;
    if (((isSystemImage | shouldForceLTR) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = -1.0;
  if (shouldForceLTR)
  {
LABEL_9:
    v10 = 1.0;
  }

LABEL_10:
  CGAffineTransformMakeScale(&v12, v10, 1.0);
  v11 = v12;
  [(HUIconContentView *)self setTransform:&v11];
}

- (void)setAspectRatio:(double)ratio
{
  if (vabdd_f64(ratio, self->_aspectRatio) > 0.00000011920929)
  {
    self->_aspectRatio = ratio;
    delegate = [(HUIconContentView *)self delegate];
    [delegate iconContentView:self didChangeAspectRatio:self->_aspectRatio];

    [(HUIconContentView *)self setNeedsLayout];
  }
}

- (void)_updateOverrideRenderingModeForSubviewsOfView:(id)view
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  subviews = [view subviews];
  v5 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(subviews);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          v11 = [(HUIconContentView *)self renderingModeForSubview:v10 suggestedRenderingMode:[(HUIconContentView *)self renderingMode]];
          image = [v10 image];
          v13 = [image imageWithRenderingMode:v11];
          [v10 setImage:v13];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          image = v9;
          [image _setTextColorFollowsTintColor:{-[HUIconContentView renderingMode](self, "renderingMode") == 2}];
        }

LABEL_11:
        [(HUIconContentView *)self _updateOverrideRenderingModeForSubviewsOfView:v9];
        ++v8;
      }

      while (v6 != v8);
      v6 = [subviews countByEnumeratingWithState:&v15 objects:v19 count:16];
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