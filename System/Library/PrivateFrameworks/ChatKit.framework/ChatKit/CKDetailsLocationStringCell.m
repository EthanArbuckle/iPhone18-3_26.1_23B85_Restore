@interface CKDetailsLocationStringCell
- (CKDetailsLocationStringCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setLocationString:(id)a3;
@end

@implementation CKDetailsLocationStringCell

- (CKDetailsLocationStringCell)initWithFrame:(CGRect)a3
{
  v28.receiver = self;
  v28.super_class = CKDetailsLocationStringCell;
  v3 = [(CKDetailsLocationStringCell *)&v28 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x1E695F058], v6, v7, v8}];
    [(CKDetailsLocationStringCell *)v3 setLocationImageView:v9];

    v10 = [(CKDetailsLocationStringCell *)v3 locationImageView];
    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"location.fill"];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v13 = [v11 imageWithConfiguration:v12];
    [v10 setImage:v13];

    v14 = [(CKDetailsLocationStringCell *)v3 locationImageView];
    v15 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v14 setTintColor:v15];

    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v5, v6, v7, v8}];
    [(CKDetailsLocationStringCell *)v3 setLocationLabel:v16];

    v17 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v18 = [(CKDetailsLocationStringCell *)v3 locationLabel];
    [v18 setTextColor:v17];

    v19 = objc_alloc(MEMORY[0x1E69DD298]);
    v20 = [MEMORY[0x1E69DC730] effectWithStyle:6];
    v21 = [v19 initWithEffect:v20];

    [(CKDetailsLocationStringCell *)v3 setBlurView:v21];
    [(CKDetailsLocationStringCell *)v3 addSubview:v21];
    v22 = [(CKDetailsLocationStringCell *)v3 locationLabel];
    [(CKDetailsLocationStringCell *)v3 addSubview:v22];

    v23 = [(CKDetailsLocationStringCell *)v3 locationImageView];
    [(CKDetailsLocationStringCell *)v3 addSubview:v23];

    if (CKIsRunningInMacCatalyst())
    {
      v24 = [(CKDetailsLocationStringCell *)v3 layer];
      [v24 setMaskedCorners:12];

      v25 = [(CKDetailsLocationStringCell *)v3 layer];
      [v25 setCornerRadius:4.0];

      v26 = [(CKDetailsLocationStringCell *)v3 layer];
      [v26 setMasksToBounds:1];
    }
  }

  return v3;
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = CKDetailsLocationStringCell;
  [(CKDetailsLocationStringCell *)&v47 layoutSubviews];
  v3 = [(CKDetailsLocationStringCell *)self locationImageView];
  [v3 sizeToFit];

  v4 = [(CKDetailsLocationStringCell *)self locationImageView];
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [(CKDetailsLocationStringCell *)self layoutMargins];
  v14 = v13;
  v16 = v15;
  v17 = [*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection];
  [(CKDetailsLocationStringCell *)self bounds];
  if (!v17)
  {
    v24 = v19;
    v50.origin.x = v6;
    v50.origin.y = v8;
    v50.size.width = v10;
    v50.size.height = v12;
    v23 = v24 - CGRectGetHeight(v50);
    if (CKMainScreenScale_once_76 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  v20 = v18 - v16;
  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  v14 = v20 - CGRectGetWidth(v48);
  [(CKDetailsLocationStringCell *)self bounds];
  v22 = v21;
  v49.origin.x = v6;
  v49.origin.y = v8;
  v49.size.width = v10;
  v49.size.height = v12;
  v23 = v22 - CGRectGetHeight(v49);
  if (CKMainScreenScale_once_76 != -1)
  {
LABEL_11:
    [CKDetailsLocationStringCell layoutSubviews];
  }

LABEL_5:
  v25 = *&CKMainScreenScale_sMainScreenScale_76;
  if (*&CKMainScreenScale_sMainScreenScale_76 == 0.0)
  {
    v25 = 1.0;
  }

  v26 = floor(v14 * v25) / v25;
  v27 = floor(v23 * 0.5 * v25) / v25;
  v28 = [(CKDetailsLocationStringCell *)self locationImageView];
  [v28 setFrame:{v26, v27, v10, v12}];

  [(CKDetailsLocationStringCell *)self bounds];
  v31 = v30;
  v33 = v32;
  if (v17)
  {
    v34 = v29;
    v51.origin.x = v26;
    v51.origin.y = v27;
    v51.size.width = v10;
    v51.size.height = v12;
    v35 = CGRectGetMinX(v51) + -3.0;
  }

  else
  {
    v52.origin.x = v26;
    v52.origin.y = v27;
    v52.size.width = v10;
    v52.size.height = v12;
    v34 = CGRectGetMaxX(v52) + 3.0;
    [(CKDetailsLocationStringCell *)self bounds];
    v35 = v36 - v34;
  }

  v37 = [(CKDetailsLocationStringCell *)self locationLabel];
  [v37 setFrame:{v34, v31, v35, v33}];

  [(CKDetailsLocationStringCell *)self bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = [(CKDetailsLocationStringCell *)self blurView];
  [v46 setFrame:{v39, v41, v43, v45}];
}

- (void)setLocationString:(id)a3
{
  if (self->_locationString != a3)
  {
    [(UILabel *)self->_locationLabel setText:?];

    [(CKDetailsLocationStringCell *)self setNeedsLayout];
  }
}

@end