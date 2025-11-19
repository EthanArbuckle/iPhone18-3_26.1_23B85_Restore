@interface WDStory
- (WDStory)initWithHead:(id)a3;
- (id)text;
@end

@implementation WDStory

- (WDStory)initWithHead:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WDStory;
  v6 = [(WDStory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mHead, a3);
  }

  return v7;
}

- (id)text
{
  objc_opt_class();
  v3 = [(OADDrawable *)self->mHead clientData];
  v4 = [v3 textBox];
  v5 = [v4 text];

  return v5;
}

@end