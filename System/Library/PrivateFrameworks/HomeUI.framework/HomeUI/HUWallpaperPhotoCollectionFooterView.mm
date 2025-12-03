@interface HUWallpaperPhotoCollectionFooterView
- (HUWallpaperPhotoCollectionFooterView)initWithFrame:(CGRect)frame;
@end

@implementation HUWallpaperPhotoCollectionFooterView

- (HUWallpaperPhotoCollectionFooterView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = HUWallpaperPhotoCollectionFooterView;
  v3 = [(HUWallpaperPhotoCollectionFooterView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    topAnchor = [(UILabel *)v3->_label topAnchor];
    topAnchor2 = [(HUWallpaperPhotoCollectionFooterView *)v3 topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    [v10 setActive:1];

    bottomAnchor = [(UILabel *)v3->_label bottomAnchor];
    bottomAnchor2 = [(HUWallpaperPhotoCollectionFooterView *)v3 bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    [v13 setActive:1];

    centerXAnchor = [(UILabel *)v3->_label centerXAnchor];
    centerXAnchor2 = [(HUWallpaperPhotoCollectionFooterView *)v3 centerXAnchor];
    v16 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v16 setActive:1];

    leadingAnchor = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor2 = [(HUWallpaperPhotoCollectionFooterView *)v3 leadingAnchor];
    v19 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [v19 setActive:1];

    trailingAnchor = [(UILabel *)v3->_label trailingAnchor];
    trailingAnchor2 = [(HUWallpaperPhotoCollectionFooterView *)v3 trailingAnchor];
    v22 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [v22 setActive:1];
  }

  return v3;
}

@end