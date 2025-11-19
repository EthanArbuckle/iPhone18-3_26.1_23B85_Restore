@interface HKViewTableViewCell
- (HKViewTableViewCell)initWithReuseIdentifier:(id)a3;
- (void)_pinViewToContent:(id)a3;
- (void)prepareForReuse;
- (void)setHostedView:(id)a3;
@end

@implementation HKViewTableViewCell

- (HKViewTableViewCell)initWithReuseIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKViewTableViewCell;
  return [(HKViewTableViewCell *)&v4 initWithStyle:0 reuseIdentifier:a3];
}

- (void)setHostedView:(id)a3
{
  objc_storeStrong(&self->_hostedView, a3);
  v5 = a3;
  v6 = [(HKViewTableViewCell *)self contentView];
  [v6 addSubview:v5];

  [(HKViewTableViewCell *)self _pinViewToContent:v5];

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

- (void)_pinViewToContent:(id)a3
{
  v4 = a3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = [v4 leadingAnchor];
  v6 = [(HKViewTableViewCell *)self contentView];
  v7 = [v6 leadingAnchor];
  v8 = [v5 constraintEqualToAnchor:v7];
  [v8 setActive:1];

  v9 = [v4 trailingAnchor];
  v10 = [(HKViewTableViewCell *)self contentView];
  v11 = [v10 trailingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  [v12 setActive:1];

  v13 = [v4 topAnchor];
  v14 = [(HKViewTableViewCell *)self contentView];
  v15 = [v14 topAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [v16 setActive:1];

  v20 = [v4 bottomAnchor];

  v17 = [(HKViewTableViewCell *)self contentView];
  v18 = [v17 bottomAnchor];
  v19 = [v20 constraintEqualToAnchor:v18];
  [v19 setActive:1];
}

@end