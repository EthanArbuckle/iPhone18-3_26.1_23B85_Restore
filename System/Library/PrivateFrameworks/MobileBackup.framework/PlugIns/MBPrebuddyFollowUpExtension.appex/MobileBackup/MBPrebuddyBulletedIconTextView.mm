@interface MBPrebuddyBulletedIconTextView
- (MBPrebuddyBulletedIconTextView)initWithImage:(id)image title:(id)title detail:(id)detail tappableText:(id)text;
- (MBPrebuddyBulletedIconTextViewDelegate)delegate;
- (double)_horizontalMargins;
- (void)_setUp;
- (void)didTapText:(id)text;
- (void)setTintColor:(id)color;
@end

@implementation MBPrebuddyBulletedIconTextView

- (MBPrebuddyBulletedIconTextView)initWithImage:(id)image title:(id)title detail:(id)detail tappableText:(id)text
{
  imageCopy = image;
  titleCopy = title;
  detailCopy = detail;
  textCopy = text;
  v18.receiver = self;
  v18.super_class = MBPrebuddyBulletedIconTextView;
  v15 = [(MBPrebuddyBulletedIconTextView *)&v18 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_image, image);
    objc_storeStrong(&v16->_title, title);
    objc_storeStrong(&v16->_detail, detail);
    objc_storeStrong(&v16->_tappableText, text);
    [(MBPrebuddyBulletedIconTextView *)v16 _setUp];
  }

  return v16;
}

- (void)_setUp
{
  v3 = [[UIImageView alloc] initWithImage:self->_image];
  imageView = self->_imageView;
  self->_imageView = v3;

  [(UIImageView *)self->_imageView setContentMode:1];
  [(UIImageView *)self->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MBPrebuddyBulletedIconTextView *)self addSubview:self->_imageView];
  v5 = objc_alloc_init(UILabel);
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v5 setFont:v6];

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 setNumberOfLines:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v45 = v5;
  [v5 setText:self->_title];
  v7 = objc_alloc_init(UILabel);
  v8 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightRegular];
  [v7 setFont:v8];

  v9 = +[UIColor secondaryLabelColor];
  [v7 setTextColor:v9];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setNumberOfLines:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v44 = v7;
  [v7 setText:self->_detail];
  v10 = objc_alloc_init(UILabel);
  tappableLabel = self->_tappableLabel;
  self->_tappableLabel = v10;

  [(UILabel *)self->_tappableLabel setUserInteractionEnabled:1];
  v12 = [UIFont _preferredFontForTextStyle:UIFontTextStyleHeadline weight:UIFontWeightRegular];
  [(UILabel *)self->_tappableLabel setFont:v12];

  tintColor = [(MBPrebuddyBulletedIconTextView *)self tintColor];
  [(UILabel *)self->_tappableLabel setTextColor:tintColor];

  [(UILabel *)self->_tappableLabel setAdjustsFontForContentSizeCategory:1];
  [(UILabel *)self->_tappableLabel setNumberOfLines:0];
  [(UILabel *)self->_tappableLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_tappableLabel setText:self->_tappableText];
  v14 = [UIStackView alloc];
  v47[0] = v5;
  v47[1] = v7;
  v47[2] = self->_tappableLabel;
  v15 = [NSArray arrayWithObjects:v47 count:3];
  v16 = [v14 initWithArrangedSubviews:v15];
  textStack = self->_textStack;
  self->_textStack = v16;

  [(UIStackView *)self->_textStack setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_textStack setAxis:1];
  [(MBPrebuddyBulletedIconTextView *)self addSubview:self->_textStack];
  leadingAnchor = [(UIImageView *)self->_imageView leadingAnchor];
  leadingAnchor2 = [(MBPrebuddyBulletedIconTextView *)self leadingAnchor];
  [(MBPrebuddyBulletedIconTextView *)self _leadingMargins];
  v41 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  v46[0] = v41;
  topAnchor = [(UIImageView *)self->_imageView topAnchor];
  topAnchor2 = [(MBPrebuddyBulletedIconTextView *)self topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:7.0];
  v46[1] = v38;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  v36 = [widthAnchor constraintEqualToConstant:40.0];
  v46[2] = v36;
  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  widthAnchor2 = [(UIImageView *)self->_imageView widthAnchor];
  v33 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
  v46[3] = v33;
  leadingAnchor3 = [(UIStackView *)self->_textStack leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_imageView trailingAnchor];
  v30 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
  v46[4] = v30;
  topAnchor3 = [(UIStackView *)self->_textStack topAnchor];
  topAnchor4 = [(MBPrebuddyBulletedIconTextView *)self topAnchor];
  v18 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:2.0];
  v46[5] = v18;
  trailingAnchor2 = [(UIStackView *)self->_textStack trailingAnchor];
  trailingAnchor3 = [(MBPrebuddyBulletedIconTextView *)self trailingAnchor];
  [(MBPrebuddyBulletedIconTextView *)self _trailingMargins];
  v22 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-v21];
  v46[6] = v22;
  bottomAnchor = [(UIStackView *)self->_textStack bottomAnchor];
  bottomAnchor2 = [(MBPrebuddyBulletedIconTextView *)self bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v46[7] = v25;
  v26 = [NSArray arrayWithObjects:v46 count:8];
  [NSLayoutConstraint activateConstraints:v26];

  v27 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"didTapText:"];
  [(UILabel *)self->_tappableLabel addGestureRecognizer:v27];
}

- (void)didTapText:(id)text
{
  delegate = [(MBPrebuddyBulletedIconTextView *)self delegate];
  [delegate didTapHighlightedText:self];
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  tintColor = [(MBPrebuddyBulletedIconTextView *)self tintColor];

  if (tintColor != colorCopy)
  {
    v7.receiver = self;
    v7.super_class = MBPrebuddyBulletedIconTextView;
    [(MBPrebuddyBulletedIconTextView *)&v7 setTintColor:colorCopy];
    [(UIImageView *)self->_imageView setTintColor:colorCopy];
    tintColor2 = [(MBPrebuddyBulletedIconTextView *)self tintColor];
    [(UILabel *)self->_tappableLabel setTextColor:tintColor2];
  }
}

- (double)_horizontalMargins
{
  traitCollection = [(MBPrebuddyBulletedIconTextView *)self traitCollection];
  horizontalSizeClass = [traitCollection horizontalSizeClass];

  result = 54.0;
  if (horizontalSizeClass < 2)
  {
    return 10.0;
  }

  return result;
}

- (MBPrebuddyBulletedIconTextViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end