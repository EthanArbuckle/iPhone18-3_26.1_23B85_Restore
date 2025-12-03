@interface CSProminentSubtitleView
- (CSProminentSubtitleView)initWithDate:(id)date font:(id)font textColor:(id)color;
- (void)layoutSubviews;
- (void)setDate:(id)date;
@end

@implementation CSProminentSubtitleView

- (CSProminentSubtitleView)initWithDate:(id)date font:(id)font textColor:(id)color
{
  dateCopy = date;
  fontCopy = font;
  colorCopy = color;
  v17.receiver = self;
  v17.super_class = CSProminentSubtitleView;
  v11 = [(CSProminentTextElementView *)&v17 initWithDate:dateCopy font:fontCopy textColor:colorCopy];
  if (v11)
  {
    v12 = [[CSProminentSubtitleDateView alloc] initWithDate:dateCopy font:fontCopy textColor:colorCopy];
    dateView = v11->_dateView;
    v11->_dateView = v12;

    v14 = [[CSProminentSubtitleDateView alloc] initWithDate:dateCopy font:fontCopy textColor:colorCopy];
    compactDateView = v11->_compactDateView;
    v11->_compactDateView = v14;
  }

  return v11;
}

- (void)setDate:(id)date
{
  dateView = self->_dateView;
  dateCopy = date;
  [(CSProminentSubtitleDateView *)dateView setDate:dateCopy];
  [(CSProminentSubtitleDateView *)self->_compactDateView setDate:dateCopy];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = CSProminentSubtitleView;
  [(CSProminentTextElementView *)&v2 layoutSubviews];
}

@end