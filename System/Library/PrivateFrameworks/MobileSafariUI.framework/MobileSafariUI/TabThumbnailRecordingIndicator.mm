@interface TabThumbnailRecordingIndicator
- (TabThumbnailRecordingIndicator)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setMediaStateIcon:(unint64_t)icon;
@end

@implementation TabThumbnailRecordingIndicator

- (TabThumbnailRecordingIndicator)initWithFrame:(CGRect)frame
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = TabThumbnailRecordingIndicator;
  v3 = [(TabThumbnailRecordingIndicator *)&v28 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TabThumbnailRecordingIndicator *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    systemRedColor = [MEMORY[0x277D75348] systemRedColor];
    [(TabThumbnailRecordingIndicator *)v4 setBackgroundColor:systemRedColor];

    [(TabThumbnailRecordingIndicator *)v4 setClipsToBounds:0];
    layer = [(TabThumbnailRecordingIndicator *)v4 layer];
    LODWORD(v6) = 0.25;
    [layer setShadowOpacity:v6];
    [layer setShadowOffset:{0.0, 0.0}];
    [layer setShadowRadius:12.0];
    [layer setShadowPathIsBounds:1];
    v7 = objc_alloc_init(MEMORY[0x277D755E8]);
    imageView = v4->_imageView;
    v4->_imageView = v7;

    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v4->_imageView setTintColor:whiteColor];

    [(UIImageView *)v4->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    v10 = MEMORY[0x277D755D0];
    v11 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76940]];
    [v11 pointSize];
    v12 = [v10 configurationWithPointSize:6 weight:2 scale:?];
    [(UIImageView *)v4->_imageView setPreferredSymbolConfiguration:v12];

    [(UIImageView *)v4->_imageView _sf_setMatchesIntrinsicContentSize];
    [(TabThumbnailRecordingIndicator *)v4 addSubview:v4->_imageView];
    v24 = MEMORY[0x277CCAAD0];
    centerXAnchor = [(UIImageView *)v4->_imageView centerXAnchor];
    centerXAnchor2 = [(TabThumbnailRecordingIndicator *)v4 centerXAnchor];
    v13 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v29[0] = v13;
    centerYAnchor = [(UIImageView *)v4->_imageView centerYAnchor];
    centerYAnchor2 = [(TabThumbnailRecordingIndicator *)v4 centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v29[1] = v16;
    widthAnchor = [(TabThumbnailRecordingIndicator *)v4 widthAnchor];
    v18 = [widthAnchor constraintEqualToConstant:22.0];
    v29[2] = v18;
    heightAnchor = [(TabThumbnailRecordingIndicator *)v4 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:22.0];
    v29[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    [v24 activateConstraints:v21];

    v22 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = TabThumbnailRecordingIndicator;
  [(TabThumbnailRecordingIndicator *)&v3 layoutSubviews];
  [(TabThumbnailRecordingIndicator *)self frame];
  [(TabThumbnailRecordingIndicator *)self _setCornerRadius:CGRectGetWidth(v4) * 0.5];
}

- (void)setMediaStateIcon:(unint64_t)icon
{
  if (self->_mediaStateIcon != icon)
  {
    self->_mediaStateIcon = icon;
    v5 = MEMORY[0x277D755B8];
    v7 = SFSystemImageNameForMediaStateIcon();
    v6 = [v5 systemImageNamed:v7];
    [(UIImageView *)self->_imageView setImage:v6];
  }
}

@end