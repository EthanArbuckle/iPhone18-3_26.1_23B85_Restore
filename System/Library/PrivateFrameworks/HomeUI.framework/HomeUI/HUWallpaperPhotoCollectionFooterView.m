@interface HUWallpaperPhotoCollectionFooterView
- (HUWallpaperPhotoCollectionFooterView)initWithFrame:(CGRect)a3;
@end

@implementation HUWallpaperPhotoCollectionFooterView

- (HUWallpaperPhotoCollectionFooterView)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = HUWallpaperPhotoCollectionFooterView;
  v3 = [(HUWallpaperPhotoCollectionFooterView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v5;

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v3->_label setFont:v7];

    [(HUWallpaperPhotoCollectionFooterView *)v3 addSubview:v3->_label];
    v8 = [(UILabel *)v3->_label topAnchor];
    v9 = [(HUWallpaperPhotoCollectionFooterView *)v3 topAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:8.0];
    [v10 setActive:1];

    v11 = [(UILabel *)v3->_label bottomAnchor];
    v12 = [(HUWallpaperPhotoCollectionFooterView *)v3 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:-8.0];
    [v13 setActive:1];

    v14 = [(UILabel *)v3->_label centerXAnchor];
    v15 = [(HUWallpaperPhotoCollectionFooterView *)v3 centerXAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    [v16 setActive:1];

    v17 = [(UILabel *)v3->_label leadingAnchor];
    v18 = [(HUWallpaperPhotoCollectionFooterView *)v3 leadingAnchor];
    v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18];
    [v19 setActive:1];

    v20 = [(UILabel *)v3->_label trailingAnchor];
    v21 = [(HUWallpaperPhotoCollectionFooterView *)v3 trailingAnchor];
    v22 = [v20 constraintLessThanOrEqualToAnchor:v21];
    [v22 setActive:1];
  }

  return v3;
}

@end