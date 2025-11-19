@interface NTKAlbumEmptyView
- (id)initForDevice:(id)a3;
- (void)layoutSubviews;
- (void)setBodyLabelText:(id)a3;
@end

@implementation NTKAlbumEmptyView

- (id)initForDevice:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKAlbumEmptyView;
  v6 = [(NTKAlbumEmptyView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    NTKImageNamed(@"LargeIconPhoto");
  }

  return 0;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = NTKAlbumEmptyView;
  [(NTKAlbumEmptyView *)&v15 layoutSubviews];
  [(NTKAlbumEmptyView *)self bounds];
  [(UIImageView *)self->_iconImageView setCenter:v3 * 0.5, *&qword_27DA28378 + *&qword_27DA28380 * 0.5];
  v4 = *&layout;
  bodyLabel = self->_bodyLabel;
  [(NTKAlbumEmptyView *)self bounds];
  [(UILabel *)bodyLabel sizeThatFits:v6 + v4 * -2.0, 1.79769313e308];
  [(UILabel *)self->_bodyLabel setBounds:0.0, 0.0, v7, v8];
  [(NTKAlbumEmptyView *)self bounds];
  v10 = v9 * 0.5;
  v11 = *&qword_27DA28388;
  [(UILabel *)self->_bodyLabel _firstBaselineOffsetFromTop];
  v13 = v11 - v12;
  [(UILabel *)self->_bodyLabel bounds];
  [(UILabel *)self->_bodyLabel setCenter:v10, v13 + v14 * 0.5];
}

- (void)setBodyLabelText:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_bodyLabelText, a3);
  bodyLabelText = self->_bodyLabelText;
  if (bodyLabelText)
  {
    v6 = attributedBodyLabelText(bodyLabelText);
    [(UILabel *)self->_bodyLabel setAttributedText:v6];

    [(UILabel *)self->_bodyLabel setTextAlignment:1];
    [(NTKAlbumEmptyView *)self setNeedsLayout];
  }
}

@end