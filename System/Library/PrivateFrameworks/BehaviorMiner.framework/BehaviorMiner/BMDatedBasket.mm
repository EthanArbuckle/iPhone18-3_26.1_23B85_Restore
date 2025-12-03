@interface BMDatedBasket
- (BMDatedBasket)initWithBasket:(id)basket Date:(id)date;
@end

@implementation BMDatedBasket

- (BMDatedBasket)initWithBasket:(id)basket Date:(id)date
{
  basketCopy = basket;
  dateCopy = date;
  v12.receiver = self;
  v12.super_class = BMDatedBasket;
  v9 = [(BMDatedBasket *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_basket, basket);
    objc_storeStrong(&v10->_date, date);
  }

  return v10;
}

@end