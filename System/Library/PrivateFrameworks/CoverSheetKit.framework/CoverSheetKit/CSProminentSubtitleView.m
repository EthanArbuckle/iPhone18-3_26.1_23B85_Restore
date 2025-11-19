@interface CSProminentSubtitleView
- (CSProminentSubtitleView)initWithDate:(id)a3 font:(id)a4 textColor:(id)a5;
- (void)layoutSubviews;
- (void)setDate:(id)a3;
@end

@implementation CSProminentSubtitleView

- (CSProminentSubtitleView)initWithDate:(id)a3 font:(id)a4 textColor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CSProminentSubtitleView;
  v11 = [(CSProminentTextElementView *)&v17 initWithDate:v8 font:v9 textColor:v10];
  if (v11)
  {
    v12 = [[CSProminentSubtitleDateView alloc] initWithDate:v8 font:v9 textColor:v10];
    dateView = v11->_dateView;
    v11->_dateView = v12;

    v14 = [[CSProminentSubtitleDateView alloc] initWithDate:v8 font:v9 textColor:v10];
    compactDateView = v11->_compactDateView;
    v11->_compactDateView = v14;
  }

  return v11;
}

- (void)setDate:(id)a3
{
  dateView = self->_dateView;
  v5 = a3;
  [(CSProminentSubtitleDateView *)dateView setDate:v5];
  [(CSProminentSubtitleDateView *)self->_compactDateView setDate:v5];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CSProminentSubtitleView;
  [(CSProminentTextElementView *)&v2 layoutSubviews];
}

@end