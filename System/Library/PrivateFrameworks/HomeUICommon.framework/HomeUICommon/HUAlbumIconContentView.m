@interface HUAlbumIconContentView
- (HUAlbumIconContentView)initWithFrame:(CGRect)a3;
- (void)_updateIconImage;
- (void)layoutSubviews;
- (void)setIconSize:(unint64_t)a3;
@end

@implementation HUAlbumIconContentView

- (HUAlbumIconContentView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = HUAlbumIconContentView;
  v3 = [(HUIconContentView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D755E0]);
    [(HUAlbumIconContentView *)v3 setImageView:v4];

    v5 = [(HUAlbumIconContentView *)v3 imageView];
    [v5 setContentMode:1];

    v6 = [(HUAlbumIconContentView *)v3 imageView];
    v7 = [v6 layer];
    [v7 setCornerRadius:4.0];

    v8 = [(HUAlbumIconContentView *)v3 imageView];
    v9 = [v8 layer];
    [v9 setMasksToBounds:1];

    v10 = [(HUAlbumIconContentView *)v3 imageView];
    [(HUAlbumIconContentView *)v3 addSubview:v10];
  }

  return v3;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = HUAlbumIconContentView;
  [(HUAlbumIconContentView *)&v12 layoutSubviews];
  [(HUAlbumIconContentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(HUAlbumIconContentView *)self imageView];
  [v11 setFrame:{v4, v6, v8, v10}];
}

- (void)setIconSize:(unint64_t)a3
{
  v5 = [(HUIconContentView *)self iconSize];
  v6.receiver = self;
  v6.super_class = HUAlbumIconContentView;
  [(HUIconContentView *)&v6 setIconSize:a3];
  if (v5 != a3)
  {
    [(HUAlbumIconContentView *)self _updateIconImage];
  }
}

- (void)_updateIconImage
{
  objc_opt_class();
  v3 = [(HUIconContentView *)self iconDescriptor];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v9 = v4;

  if (v9)
  {
    v5 = MEMORY[0x277D755B0];
    v6 = [v9 imageData];
    v7 = [v5 imageWithData:v6];

    v8 = [(HUAlbumIconContentView *)self imageView];
    [v8 setImage:v7];
  }

  else
  {
    v7 = [(HUAlbumIconContentView *)self imageView];
    [v7 setImage:0];
  }
}

@end