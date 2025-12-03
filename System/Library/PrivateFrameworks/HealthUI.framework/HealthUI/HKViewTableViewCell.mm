@interface HKViewTableViewCell
- (HKViewTableViewCell)initWithReuseIdentifier:(id)identifier;
- (void)_pinViewToContent:(id)content;
- (void)prepareForReuse;
- (void)setHostedView:(id)view;
@end

@implementation HKViewTableViewCell

- (HKViewTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = HKViewTableViewCell;
  return [(HKViewTableViewCell *)&v4 initWithStyle:0 reuseIdentifier:identifier];
}

- (void)setHostedView:(id)view
{
  objc_storeStrong(&self->_hostedView, view);
  viewCopy = view;
  contentView = [(HKViewTableViewCell *)self contentView];
  [contentView addSubview:viewCopy];

  [(HKViewTableViewCell *)self _pinViewToContent:viewCopy];

  [(HKViewTableViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HKViewTableViewCell;
  [(HKViewTableViewCell *)&v4 prepareForReuse];
  hostedView = self->_hostedView;
  self->_hostedView = 0;
}

- (void)_pinViewToContent:(id)content
{
  contentCopy = content;
  [contentCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  leadingAnchor = [contentCopy leadingAnchor];
  contentView = [(HKViewTableViewCell *)self contentView];
  leadingAnchor2 = [contentView leadingAnchor];
  v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v8 setActive:1];

  trailingAnchor = [contentCopy trailingAnchor];
  contentView2 = [(HKViewTableViewCell *)self contentView];
  trailingAnchor2 = [contentView2 trailingAnchor];
  v12 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v12 setActive:1];

  topAnchor = [contentCopy topAnchor];
  contentView3 = [(HKViewTableViewCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v16 setActive:1];

  bottomAnchor = [contentCopy bottomAnchor];

  contentView4 = [(HKViewTableViewCell *)self contentView];
  bottomAnchor2 = [contentView4 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v19 setActive:1];
}

@end