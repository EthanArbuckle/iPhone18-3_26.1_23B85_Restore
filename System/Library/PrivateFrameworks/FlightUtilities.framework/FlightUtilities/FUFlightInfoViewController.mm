@interface FUFlightInfoViewController
- (FUFlightInfoViewController)initWithStyle:(unint64_t)style;
- (void)loadView;
- (void)setStyle:(unint64_t)style;
@end

@implementation FUFlightInfoViewController

- (FUFlightInfoViewController)initWithStyle:(unint64_t)style
{
  v5.receiver = self;
  v5.super_class = FUFlightInfoViewController;
  result = [(FUFlightInfoViewController *)&v5 initWithNibName:0 bundle:0];
  if (result)
  {
    result->_style = style;
  }

  return result;
}

- (void)loadView
{
  v3 = [FUFlightInfoView flightViewForStyle:self->_style compact:0];
  [(FUFlightInfoViewController *)self setView:v3];
}

- (void)setStyle:(unint64_t)style
{
  flightInfoView = [(FUFlightInfoViewController *)self flightInfoView];
  [flightInfoView setStyle:style];
}

@end