@interface SUUIStyledButton
+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4;
+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5;
+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5 interiorPadding:(double)a6;
+ (int64_t)buttonTypeForElement:(id)a3;
- (BOOL)_usesTintColor;
- (BOOL)isUsingItemOfferAppearance;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)setValuesUsingBuyButtonDescriptor:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6;
- (CGRect)hitRect;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIItemOfferButtonDelegate)itemOfferDelegate;
- (SUUIStyledButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)bigHitInsets;
- (UIEdgeInsets)buttonPadding;
- (id)_borderColor;
- (id)_borderFillColor;
- (id)_textBackgroundColor;
- (id)_textColor;
- (void)_reloadDisclosureImage;
- (void)_reloadImageView;
- (void)_reloadOverrideTextColor;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setBorderStyle:(id)a3;
- (void)setButtonType:(int64_t)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setItemOfferDelegate:(id)a3;
- (void)setTitleLayout:(id)a3 forceRefresh:(BOOL)a4;
- (void)setUsesTintColor:(BOOL)a3;
- (void)tintColorDidChange;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation SUUIStyledButton

- (SUUIStyledButton)initWithFrame:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = SUUIStyledButton;
  result = [(SUUIStyledButton *)&v4 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_imageTextPaddingInterior = 5.0;
  }

  return result;
}

- (void)dealloc
{
  [(SUUIItemOfferButton *)self->_itemOfferButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIStyledButton;
  [(SUUIStyledButton *)&v3 dealloc];
}

+ (int64_t)buttonTypeForElement:(id)a3
{
  v3 = a3;
  v4 = [v3 children];
  v5 = [v4 count];

  if (v5 && ([v3 children], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v8 = objc_msgSend(v7, "elementType"), v7, v8 == 49))
  {
    v9 = 6;
  }

  else
  {
    v9 = 5;
  }

  return v9;
}

+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4
{
  [a1 sizeForTextSize:a4 buttonType:0 borderStyle:a3.width interiorPadding:{a3.height, -1.0}];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5
{
  [a1 sizeForTextSize:a4 buttonType:a5 borderStyle:a3.width interiorPadding:{a3.height, -1.0}];
  result.height = v6;
  result.width = v5;
  return result;
}

+ (CGSize)sizeForTextSize:(CGSize)a3 buttonType:(int64_t)a4 borderStyle:(id)a5 interiorPadding:(double)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a5;
  v11 = v10;
  if (a4 > 4)
  {
    if ((a4 - 5) < 2)
    {
      v12 = width + 5.0;
      if (a6 >= 0.0)
      {
        width = v12 + 5.0;
      }

      else
      {
        width = v12 + a6;
      }
    }

    goto LABEL_12;
  }

  if ((a4 - 3) < 2)
  {
    width = width + 7.0;
LABEL_12:
    if (a4 != 1 && v10)
    {
      [v10 borderWidth];
      *&v13 = v13 + v13;
      v14 = floorf(*&v13);
      [v11 contentInset];
      v17 = height + v16 + v15 + v14;
      width = width + v18 + v19 + v14;
      v20 = 44.0;
      if (v17 >= 44.0)
      {
        v20 = v17;
      }

      if (a4 == 7)
      {
        height = v17;
      }

      else
      {
        height = v20;
      }
    }

    goto LABEL_22;
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      width = width + 9.0;
    }

    goto LABEL_12;
  }

  if (height < 26.0)
  {
    height = 26.0;
  }

  width = width + 0.0;
LABEL_22:

  v21 = width;
  v22 = height;
  result.height = v22;
  result.width = v21;
  return result;
}

- (BOOL)isUsingItemOfferAppearance
{
  itemOfferButton = self->_itemOfferButton;
  if (itemOfferButton)
  {
    LOBYTE(itemOfferButton) = [(SUUIItemOfferButton *)itemOfferButton isHidden]^ 1;
  }

  return itemOfferButton;
}

- (void)setBorderStyle:(id)a3
{
  if (self->_borderStyle != a3)
  {
    v4 = [a3 copy];
    borderStyle = self->_borderStyle;
    self->_borderStyle = v4;

    borderView = self->_borderView;
    if (self->_borderStyle)
    {
      if (!borderView)
      {
        v7 = objc_alloc_init(SUUIShapeView);
        v8 = self->_borderView;
        self->_borderView = v7;

        v9 = self->_borderView;
        v10 = [(SUUIStyledButton *)self backgroundColor];
        [(SUUIShapeView *)v9 setBackgroundColor:v10];

        [(SUUIShapeView *)self->_borderView setUserInteractionEnabled:0];
        [(SUUIStyledButton *)self insertSubview:self->_borderView atIndex:0];
        borderView = self->_borderView;
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    [(SUUIShapeView *)borderView setHidden:v11];
    attributedStringView = self->_attributedStringView;
    v13 = [(SUUIStyledButton *)self _textBackgroundColor];
    [(SUUIAttributedStringView *)attributedStringView setBackgroundColor:v13];

    [(SUUIStyledButton *)self setNeedsLayout];
  }
}

- (void)setButtonType:(int64_t)a3
{
  if (self->_buttonType != a3)
  {
    v10 = v3;
    self->_buttonType = a3;
    if ((a3 - 5) > 1)
    {
      imageView = self->_imageView;
      if (imageView)
      {
        [(SUUIImageView *)imageView removeFromSuperview];
        v9 = self->_imageView;
        self->_imageView = 0;
      }
    }

    else
    {
      [(SUUIStyledButton *)self _reloadImageView];
    }

    [(SUUIStyledButton *)self _reloadDisclosureImage:v4];

    [(SUUIStyledButton *)self setNeedsLayout];
  }
}

- (void)setTitleLayout:(id)a3 forceRefresh:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [(SUUIStyledButton *)self titleLayout];

  v8 = v14;
  if (v6 != v14 || v4)
  {
    attributedStringView = self->_attributedStringView;
    if (!attributedStringView)
    {
      v10 = objc_alloc_init(SUUIAttributedStringView);
      v11 = self->_attributedStringView;
      self->_attributedStringView = v10;

      v12 = self->_attributedStringView;
      v13 = [(SUUIStyledButton *)self _textBackgroundColor];
      [(SUUIAttributedStringView *)v12 setBackgroundColor:v13];

      [(SUUIAttributedStringView *)self->_attributedStringView setUserInteractionEnabled:0];
      [(SUUIStyledButton *)self addSubview:self->_attributedStringView];
      attributedStringView = self->_attributedStringView;
    }

    [(SUUIAttributedStringView *)attributedStringView setLayout:v14];
    [(SUUIStyledButton *)self _reloadOverrideTextColor];
    v7 = [(SUUIStyledButton *)self _reloadDisclosureImage];
    v8 = v14;
  }

  MEMORY[0x2821F96F8](v7, v8);
}

- (void)setUsesTintColor:(BOOL)a3
{
  if (self->_usesTintColor != a3)
  {
    self->_usesTintColor = a3;
    [(SUUIStyledButton *)self _reloadOverrideTextColor];
  }
}

- (void)setItemOfferDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_itemOfferDelegate, obj);
    [(SUUIItemOfferButton *)self->_itemOfferButton setItemOfferDelegate:obj];
  }
}

- (BOOL)setValuesUsingBuyButtonDescriptor:(id)a3 itemState:(id)a4 clientContext:(id)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_opt_class() usesItemOfferAppearanceForButtonType:self->_buttonType itemState:v11];
  if (v13)
  {
    p_itemOfferButton = &self->_itemOfferButton;
    itemOfferButton = self->_itemOfferButton;
    if (itemOfferButton)
    {
      if (![(SUUIItemOfferButton *)itemOfferButton setValuesUsingBuyButtonDescriptor:v10 itemState:v11 clientContext:v12 animated:v6])
      {
        v16 = 0;
LABEL_8:
        [(SUUIAttributedStringView *)self->_attributedStringView setHidden:1];
        goto LABEL_9;
      }
    }

    else
    {
      v17 = [SUUIItemOfferButton alloc];
      [(SUUIStyledButton *)self bounds];
      v18 = [(SUUIItemOfferButton *)v17 initWithFrame:?];
      v19 = *p_itemOfferButton;
      *p_itemOfferButton = v18;

      [*p_itemOfferButton addTarget:self action:sel__cancelConfirmationAction_ forControlEvents:0x10000];
      [*p_itemOfferButton addTarget:self action:sel__itemOfferButtonAction_ forControlEvents:0x20000];
      [*p_itemOfferButton addTarget:self action:sel__showConfirmationAction_ forControlEvents:0x40000];
      v20 = *p_itemOfferButton;
      v21 = [(SUUIStyledButton *)self backgroundColor];
      [v20 setBackgroundColor:v21];

      v22 = *p_itemOfferButton;
      WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);
      [v22 setItemOfferDelegate:WeakRetained];

      [*p_itemOfferButton setValuesUsingBuyButtonDescriptor:v10 itemState:v11 clientContext:v12 animated:v6];
      [(SUUIStyledButton *)self addSubview:*p_itemOfferButton];
    }

    [(SUUIStyledButton *)self setNeedsLayout];
    v16 = 1;
    goto LABEL_8;
  }

  v16 = [(SUUIStyledButton *)self isUsingItemOfferAppearance];
  [(SUUIAttributedStringView *)self->_attributedStringView setHidden:0];
  p_itemOfferButton = &self->_itemOfferButton;
LABEL_9:
  [*p_itemOfferButton setHidden:v13 ^ 1u];

  return v16;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(SUUIStyledButton *)self isEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = SUUIStyledButton;
    [(SUUIStyledButton *)&v5 setEnabled:v3];
    [(SUUIStyledButton *)self _reloadOverrideTextColor];
    [(SUUIStyledButton *)self setNeedsLayout];
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  self->_didInitialHighlightForTouch = 0;
  v4.receiver = self;
  v4.super_class = SUUIStyledButton;
  [(SUUIStyledButton *)&v4 touchesBegan:a3 withEvent:a4];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SUUIStyledButton *)self isTouchInside])
  {
    itemOfferButton = self->_itemOfferButton;
    if (!itemOfferButton || [(SUUIItemOfferButton *)itemOfferButton isHidden])
    {
      [(SUUIStyledButton *)self sendActionsForControlEvents:0x20000];
    }
  }

  v9.receiver = self;
  v9.super_class = SUUIStyledButton;
  [(SUUIStyledButton *)&v9 touchesEnded:v6 withEvent:v7];
}

- (CGRect)hitRect
{
  if (self->_useBigHitTarget)
  {
    v14.receiver = self;
    v14.super_class = SUUIStyledButton;
    [(SUUIStyledButton *)&v14 hitRect];
    top = self->_bigHitInsets.top;
    left = self->_bigHitInsets.left;
    v6 = v5 + left;
    v8 = v7 + top;
    v10 = v9 - (left + self->_bigHitInsets.right);
    v12 = v11 - (top + self->_bigHitInsets.bottom);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIStyledButton;
    [(SUUIStyledButton *)&v13 hitRect];
  }

  result.size.height = v12;
  result.size.width = v10;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (void)layoutSubviews
{
  [(SUUIStyledButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  borderView = self->_borderView;
  if (borderView && ([(SUUIShapeView *)borderView isHidden]& 1) == 0)
  {
    v12 = [(SUUIShapeView *)self->_borderView layer];
    v13 = [(SUUIStyledButton *)self _borderFillColor];
    [v12 setFillColor:{objc_msgSend(v13, "CGColor")}];

    [(SUUIButtonBorderStyle *)self->_borderStyle borderWidth];
    [v12 setLineWidth:?];
    v14 = [(SUUIButtonBorderStyle *)self->_borderStyle bezierPathWithBounds:v4, v6, v8, v10];
    [v12 setPath:{objc_msgSend(v14, "CGPath")}];

    v15 = [(SUUIStyledButton *)self _borderColor];
    [v12 setStrokeColor:{objc_msgSend(v15, "CGColor")}];

    [(SUUIShapeView *)self->_borderView setFrame:v4, v6, v8, v10];
    [(SUUIButtonBorderStyle *)self->_borderStyle contentInset];
    v4 = v4 + v16;
    v6 = v6 + v17;
    v8 = v8 - (v16 + v18);
    v10 = v10 - (v17 + v19);
  }

  buttonType = self->_buttonType;
  if (buttonType > 4)
  {
    if ((buttonType - 5) < 2)
    {
      v91 = v4;
      v95 = v6;
      [(SUUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
      v36 = v35;
      v38 = v37;
      *&v35 = (v10 - v37) * 0.5;
      v39 = floorf(*&v35);
      [(SUUIImageView *)self->_imageView sizeThatFits:v8, v10];
      v41 = v40;
      v43 = v42;
      recta = v40;
      if (self->_buttonType == 6)
      {
        v87 = v39;
        v44 = *MEMORY[0x277CBF3A0];
        v45 = *(MEMORY[0x277CBF3A0] + 8);
        v46 = *MEMORY[0x277CBF3A0];
        v47 = v45;
        v48 = v43;
        imageTextPaddingInterior = 0.0;
        if (CGRectGetMaxX(*(&v41 - 2)) > 0.0)
        {
          imageTextPaddingInterior = self->_imageTextPaddingInterior;
        }

        v97.origin.x = v44;
        v97.origin.y = v45;
        v97.size.width = recta;
        v97.size.height = v43;
        v50 = imageTextPaddingInterior + CGRectGetMaxX(v97);
        [(SUUIStyledButton *)self buttonPadding];
        v52 = v50 + v51;
        if (v36 >= v8 - (v50 + v51))
        {
          v53 = v8 - (v50 + v51);
        }

        else
        {
          v53 = v36;
        }

        [(SUUIStyledButton *)self buttonPadding];
        v55 = v54;
        v56 = v88;
      }

      else
      {
        v73 = self->_imageTextPaddingInterior;
        if (v36 >= v8 - v40 - v73)
        {
          v53 = v8 - v40 - v73;
        }

        else
        {
          v53 = v36;
        }

        [(SUUIStyledButton *)self buttonPadding];
        v52 = v74;
        v99.origin.x = v74;
        v99.origin.y = v39;
        v99.size.width = v53;
        v99.size.height = v38;
        v55 = CGRectGetMaxX(v99) + self->_imageTextPaddingInterior;
        v56 = v39;
      }

      v75 = (v10 - v43) * 0.5;
      v76 = self->_imageYAdjustment + floorf(v75);
      attributedStringView = self->_attributedStringView;
      v78 = v53;
      v6 = v95;
      v100.origin.x = SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v52, v56, v78, v38, v91, v95, v8, v10);
      v101 = CGRectIntegral(v100);
      [(SUUIAttributedStringView *)attributedStringView setFrame:v101.origin.x, v101.origin.y, v101.size.width, v101.size.height];
      imageView = self->_imageView;
      v65 = v55;
      v66 = v76;
      v62 = recta;
      v64 = v43;
      v68 = v91;
      goto LABEL_34;
    }

    if (buttonType != 7)
    {
      goto LABEL_37;
    }

LABEL_22:
    [(SUUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
    v62 = v61;
    v64 = v63;
    *&v61 = v4 + (v8 - v61) * 0.5;
    v65 = floorf(*&v61);
    *&v63 = v6 + (v10 - v63) * 0.5;
    v66 = floorf(*&v63);
    imageView = self->_attributedStringView;
    v68 = v4;
LABEL_34:
    [imageView setFrame:{SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v65, v66, v62, v64, v68, v6, v8, v10)}];
    [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:1];
    goto LABEL_37;
  }

  if ((buttonType - 2) < 3)
  {
    v94 = v6;
    v21 = MEMORY[0x277CBF3A0];
    v22 = *MEMORY[0x277CBF3A0];
    [(SUUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
    v24 = v23;
    v26 = v25;
    *&v23 = (v10 - v25) * 0.5;
    v27 = floorf(*&v23);
    [(UIImageView *)self->_disclosureImageView sizeThatFits:v8, v10];
    v29 = v28;
    v31 = v30;
    v90 = v28;
    rect = v27;
    if (self->_buttonType == 3)
    {
      v32 = *(v21 + 8);
      v33 = v22;
      v34 = v31;
      v86 = v22;
      v22 = CGRectGetMaxX(*(&v29 - 2)) + 2.0;
      if (v24 >= v8 - v22)
      {
        v24 = v8 - v22;
      }
    }

    else
    {
      if (v24 >= v8 - v28 + -2.0)
      {
        v24 = v8 - v28 + -2.0;
      }

      v98.origin.x = v22;
      v98.origin.y = v27;
      v98.size.width = v24;
      v98.size.height = v26;
      v86 = CGRectGetMaxX(v98) + 2.0;
    }

    v69 = v4;
    v70 = [(SUUIAttributedStringView *)self->_attributedStringView layout];
    if ([v70 numberOfLines] == 1 && self->_buttonType != 2)
    {
      v79 = [(SUUIAttributedStringView *)self->_attributedStringView layout];
      [v79 baselineOffset];
      *&v80 = v80 + rect - v31;
      v72 = ceilf(*&v80);
    }

    else
    {
      v71 = (v10 - v31) * 0.5;
      v72 = floorf(v71);
    }

    [(SUUIAttributedStringView *)self->_attributedStringView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v22, rect, v24, v26, v69, v94, v8, v10)];
    [(UIImageView *)self->_disclosureImageView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v89, v72, v90, v31, v69, v94, v8, v10)];
    [(SUUIItemOfferButton *)self->_itemOfferButton setHidden:1];

    goto LABEL_37;
  }

  if (!buttonType)
  {
    goto LABEL_22;
  }

  if (buttonType == 1)
  {
    [(SUUIAttributedStringView *)self->_attributedStringView sizeThatFits:v8, v10];
    v58 = v57;
    v60 = v59;
    *&v57 = (v8 - v57) * 0.5;
    *&v59 = (v10 - v59) * 0.5;
    [(SUUIAttributedStringView *)self->_attributedStringView setFrame:SUUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(floorf(*&v57), floorf(*&v59), v58, v60, v4, v6, v8, v10)];
    [(SUUIItemOfferButton *)self->_itemOfferButton setFrame:v4, v6, v8, v10];
  }

LABEL_37:
  v81 = [(SUUIStyledButton *)self isEnabled];
  v82 = 1.0;
  if (v81)
  {
    v83 = 1.0;
  }

  else
  {
    v83 = 0.25;
  }

  [(SUUIShapeView *)self->_borderView setAlpha:v83];
  if ((v81 & 1) == 0)
  {
    v84 = [(SUUIButtonBorderStyle *)self->_borderStyle fillColor];
    if (v84)
    {
      v82 = 1.0;
    }

    else
    {
      v82 = 0.25;
    }
  }

  [(SUUIAttributedStringView *)self->_attributedStringView setAlpha:v82];
  disclosureImageView = self->_disclosureImageView;

  [(UIImageView *)disclosureImageView setAlpha:v82];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  if (self->_useBigHitTarget)
  {
    [(SUUIStyledButton *)self hitRect];
    v10 = x;
    v11 = y;

    return CGRectContainsPoint(*&v6, *&v10);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SUUIStyledButton;
    return [(SUUIStyledButton *)&v13 pointInside:a4 withEvent:a3.x, a3.y];
  }
}

- (void)setBackgroundColor:(id)a3
{
  v7.receiver = self;
  v7.super_class = SUUIStyledButton;
  v4 = a3;
  [(SUUIStyledButton *)&v7 setBackgroundColor:v4];
  attributedStringView = self->_attributedStringView;
  v6 = [(SUUIStyledButton *)self _textBackgroundColor:v7.receiver];
  [(SUUIAttributedStringView *)attributedStringView setBackgroundColor:v6];

  [(SUUIShapeView *)self->_borderView setBackgroundColor:v4];
  [(UIImageView *)self->_disclosureImageView setBackgroundColor:v4];
  [(SUUIItemOfferButton *)self->_itemOfferButton setBackgroundColor:v4];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  if ([(SUUIStyledButton *)self isHighlighted]!= a3)
  {
    v18.receiver = self;
    v18.super_class = SUUIStyledButton;
    [(SUUIStyledButton *)&v18 setHighlighted:v3];
    if (self->_borderView && ([(SUUIButtonBorderStyle *)self->_borderStyle fillColor], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v7 = [(SUUIShapeView *)self->_borderView layer];
      v8 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
      [v7 setCompositingFilter:v8];

      [v7 removeAnimationForKey:@"borderAnimation"];
      v9 = [MEMORY[0x277D75348] clearColor];
      [(SUUIStyledButton *)self setBackgroundColor:v9];

      [(SUUIStyledButton *)self bringSubviewToFront:self->_borderView];
      v10 = 0.47;
      if (v3 && !self->_didInitialHighlightForTouch)
      {
        self->_didInitialHighlightForTouch = 1;
        v10 = 0.01;
      }

      v11 = [MEMORY[0x277CD9E10] animationWithKeyPath:@"fillColor"];
      [v11 setDelegate:self];
      [v11 setDuration:v10];
      [v11 setFillMode:*MEMORY[0x277CDA238]];
      [v11 setRemovedOnCompletion:0];
      UIAnimationDragCoefficient();
      *&v13 = 1.0 / v12;
      [v11 setSpeed:v13];
      if (v3)
      {
        v14 = [(SUUIShapeView *)self->_borderView backgroundColor];
        [v11 setFromValue:{objc_msgSend(v14, "CGColor")}];

        [v11 setToValue:{objc_msgSend(v7, "strokeColor")}];
      }

      else
      {
        [v11 setFromValue:{objc_msgSend(v7, "strokeColor")}];
        v16 = [(SUUIShapeView *)self->_borderView backgroundColor];
        [v11 setToValue:{objc_msgSend(v16, "CGColor")}];
      }

      [v7 addAnimation:v11 forKey:@"borderAnimation"];
    }

    else
    {
      v6 = 1.0;
      if (v3 && (v6 = 0.2, !self->_didInitialHighlightForTouch))
      {
        borderView = self->_borderView;
        if (borderView || ([(SUUIAttributedStringView *)self->_attributedStringView setAlpha:0.2], [(UIImageView *)self->_disclosureImageView setAlpha:0.2], (borderView = self->_imageView) != 0))
        {
          [borderView setAlpha:0.2];
        }

        self->_didInitialHighlightForTouch = 1;
      }

      else
      {
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __35__SUUIStyledButton_setHighlighted___block_invoke;
        v17[3] = &unk_2798F6C18;
        v17[4] = self;
        *&v17[5] = v6;
        [MEMORY[0x277D75D18] animateWithDuration:327684 delay:v17 options:0 animations:0.47 completion:0.0];
      }
    }
  }
}

void *__35__SUUIStyledButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(v2 + 504);
  if (result)
  {
    v4 = (a1 + 40);
  }

  else
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    [*(v2 + 456) setAlpha:v5];
    [*(*(v4 - 1) + 528) setAlpha:*v4];
    result = *(*(v4 - 1) + 544);
    if (!result)
    {
      return result;
    }
  }

  v6 = *v4;

  return [result setAlpha:v6];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(SUUIAttributedStringView *)self->_attributedStringView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  v10 = [(UIImageView *)self->_disclosureImageView image];

  if (v10)
  {
    [(UIImageView *)self->_disclosureImageView sizeThatFits:width, height];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x277CBF3A8];
    v14 = *(MEMORY[0x277CBF3A8] + 8);
  }

  imageView = self->_imageView;
  if (imageView)
  {
    v16 = [(SUUIImageView *)imageView image];

    if (v16)
    {
      [(SUUIImageView *)self->_imageView sizeThatFits:width, height];
      v12 = v17;
      v14 = v18;
    }
  }

  buttonType = self->_buttonType;
  if ((buttonType - 2) < 3)
  {
    if (v9 < v14)
    {
      v9 = v14;
    }

    v22 = v12 + 2.0;
  }

  else if ((buttonType - 5) >= 2)
  {
    if (buttonType != 1)
    {
      goto LABEL_16;
    }

    if ([(SUUIStyledButton *)self isUsingItemOfferAppearance])
    {
      [(SUUIItemOfferButton *)self->_itemOfferButton sizeThatFits:width, height];
      v7 = v34;
      v9 = v35;
      goto LABEL_16;
    }

    if (v9 < 26.0)
    {
      v9 = 26.0;
    }

    v22 = 0.0;
  }

  else
  {
    [(SUUIStyledButton *)self buttonPadding];
    if (v9 < v14)
    {
      v9 = v14;
    }

    v22 = v20 + v21 + v12 + self->_imageTextPaddingInterior;
  }

  v7 = v7 + v22;
LABEL_16:
  borderStyle = self->_borderStyle;
  if (borderStyle && self->_buttonType != 1)
  {
    [(SUUIButtonBorderStyle *)borderStyle borderWidth];
    *&v24 = v24 + v24;
    v25 = floorf(*&v24);
    [(SUUIButtonBorderStyle *)self->_borderStyle contentInset];
    v28 = v9 + v27 + v26 + v25;
    v7 = v7 + v29 + v30 + v25;
    v31 = 44.0;
    if (v28 >= 44.0)
    {
      v31 = v28;
    }

    if (self->_buttonType == 7)
    {
      v9 = v28;
    }

    else
    {
      v9 = v31;
    }
  }

  v32 = v7;
  v33 = v9;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)tintColorDidChange
{
  if ([(SUUIStyledButton *)self _usesTintColor])
  {
    [(SUUIStyledButton *)self _reloadOverrideTextColor];
    [(SUUIStyledButton *)self _reloadDisclosureImage];
  }

  v3 = [(SUUIShapeView *)self->_borderView layer];
  v4 = [(SUUIStyledButton *)self _borderFillColor];
  [v3 setFillColor:{objc_msgSend(v4, "CGColor")}];

  v5 = [(SUUIStyledButton *)self _borderColor];
  [v3 setStrokeColor:{objc_msgSend(v5, "CGColor")}];

  v6.receiver = self;
  v6.super_class = SUUIStyledButton;
  [(SUUIStyledButton *)&v6 tintColorDidChange];
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v8 = [(SUUIShapeView *)self->_borderView layer:a3];
  if ([(SUUIStyledButton *)self isHighlighted])
  {
    v5 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA658]];
    [v8 setCompositingFilter:v5];

    v6 = [MEMORY[0x277D75348] clearColor];
    [(SUUIStyledButton *)self setBackgroundColor:v6];

    [(SUUIStyledButton *)self bringSubviewToFront:self->_borderView];
  }

  else
  {
    [v8 setCompositingFilter:0];
    v7 = [(SUUIShapeView *)self->_borderView backgroundColor];
    [(SUUIStyledButton *)self setBackgroundColor:v7];

    [(SUUIStyledButton *)self sendSubviewToBack:self->_borderView];
  }
}

- (id)_borderColor
{
  v3 = [(SUUIButtonBorderStyle *)self->_borderStyle borderColor];
  v4 = v3;
  if (v3)
  {
    if ([v3 colorType] == 1)
    {
      [(SUUIStyledButton *)self tintColor];
    }

    else
    {
      [v4 color];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_borderFillColor
{
  v3 = [(SUUIButtonBorderStyle *)self->_borderStyle fillColor];
  v4 = v3;
  if (v3)
  {
    if ([v3 colorType] == 1)
    {
      [(SUUIStyledButton *)self tintColor];
    }

    else
    {
      [v4 color];
    }
    v5 = ;
  }

  else
  {
    v5 = [(SUUIStyledButton *)self backgroundColor];
  }

  v6 = v5;

  return v6;
}

- (void)_reloadImageView
{
  if (!self->_imageView)
  {
    v3 = [SUUIImageView alloc];
    [(SUUIStyledButton *)self bounds];
    v4 = [(SUUIImageView *)v3 initWithFrame:?];
    imageView = self->_imageView;
    self->_imageView = v4;

    [(SUUIImageView *)self->_imageView setAutoresizingMask:18];
    [(SUUIImageView *)self->_imageView setUserInteractionEnabled:0];
    v6 = self->_imageView;

    [(SUUIStyledButton *)self addSubview:v6];
  }
}

- (void)_reloadDisclosureImage
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v22.a = *MEMORY[0x277CBF2C0];
  *&v22.c = v3;
  *&v22.tx = *(MEMORY[0x277CBF2C0] + 32);
  buttonType = self->_buttonType;
  switch(buttonType)
  {
    case 4:
      v5 = MEMORY[0x277D755B8];
      v6 = SUUIBundle();
      v7 = @"ChevronSeeAll";
      goto LABEL_7;
    case 3:
      v8 = MEMORY[0x277D755B8];
      v9 = SUUIBundle();
      v10 = [v8 imageNamed:@"ChevronSeeAll" inBundle:v9];

      CGAffineTransformMakeScale(&v22, -1.0, 1.0);
      goto LABEL_9;
    case 2:
      v5 = MEMORY[0x277D755B8];
      v6 = SUUIBundle();
      v7 = @"SearchFilterDisclosureChevron";
LABEL_7:
      v10 = [v5 imageNamed:v7 inBundle:v6];

      goto LABEL_9;
  }

  v10 = 0;
LABEL_9:
  v11 = [v10 imageFlippedForRightToLeftLayoutDirection];

  disclosureImageView = self->_disclosureImageView;
  if (v11)
  {
    if (!disclosureImageView)
    {
      v13 = objc_alloc_init(MEMORY[0x277D755E8]);
      v14 = self->_disclosureImageView;
      self->_disclosureImageView = v13;

      v15 = self->_disclosureImageView;
      v16 = [(SUUIStyledButton *)self backgroundColor];
      [(UIImageView *)v15 setBackgroundColor:v16];

      v17 = self->_disclosureImageView;
      v21 = v22;
      [(UIImageView *)v17 setTransform:&v21];
      [(SUUIStyledButton *)self addSubview:self->_disclosureImageView];
    }
  }

  else
  {
    [(UIImageView *)disclosureImageView setHidden:1];
  }

  v18 = [(SUUIStyledButton *)self _textColor];
  v19 = v18;
  if (v11 && v18)
  {
    [(UIImageView *)self->_disclosureImageView setTintColor:v18];
    v20 = [v11 imageWithRenderingMode:2];

    v11 = v20;
  }

  [(UIImageView *)self->_disclosureImageView setImage:v11];
}

- (void)_reloadOverrideTextColor
{
  if ([(SUUIStyledButton *)self isEnabled]&& [(SUUIStyledButton *)self _usesTintColor])
  {
    attributedStringView = self->_attributedStringView;
    v5 = [(SUUIStyledButton *)self tintColor];
    [(SUUIAttributedStringView *)attributedStringView setTextColor:v5];
  }

  else
  {
    v4 = self->_attributedStringView;

    [(SUUIAttributedStringView *)v4 setTextColor:0];
  }
}

- (id)_textBackgroundColor
{
  if (self->_borderStyle)
  {
    [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    [(SUUIStyledButton *)self backgroundColor];
  }
  v2 = ;

  return v2;
}

- (id)_textColor
{
  if ([(SUUIStyledButton *)self isEnabled]&& [(SUUIStyledButton *)self _usesTintColor])
  {
    v3 = [(SUUIStyledButton *)self tintColor];
  }

  else
  {
    v4 = [(SUUIAttributedStringView *)self->_attributedStringView layout];
    v5 = [v4 attributedString];

    if ([v5 length])
    {
      v3 = [v5 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (BOOL)_usesTintColor
{
  if (self->_usesTintColor)
  {
    return 1;
  }

  v3 = [(SUUIAttributedStringView *)self->_attributedStringView layout];
  v4 = [v3 attributedString];

  if ([v4 length])
  {
    v5 = [v4 attribute:*MEMORY[0x277D740C0] atIndex:0 effectiveRange:0];
    v2 = v5 == 0;
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

- (UIEdgeInsets)bigHitInsets
{
  top = self->_bigHitInsets.top;
  left = self->_bigHitInsets.left;
  bottom = self->_bigHitInsets.bottom;
  right = self->_bigHitInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (SUUIItemOfferButtonDelegate)itemOfferDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_itemOfferDelegate);

  return WeakRetained;
}

- (UIEdgeInsets)buttonPadding
{
  top = self->_buttonPadding.top;
  left = self->_buttonPadding.left;
  bottom = self->_buttonPadding.bottom;
  right = self->_buttonPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end