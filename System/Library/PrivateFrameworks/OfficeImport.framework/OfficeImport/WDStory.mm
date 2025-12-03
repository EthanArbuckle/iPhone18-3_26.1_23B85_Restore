@interface WDStory
- (WDStory)initWithHead:(id)head;
- (id)text;
@end

@implementation WDStory

- (WDStory)initWithHead:(id)head
{
  headCopy = head;
  v9.receiver = self;
  v9.super_class = WDStory;
  v6 = [(WDStory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mHead, head);
  }

  return v7;
}

- (id)text
{
  objc_opt_class();
  clientData = [(OADDrawable *)self->mHead clientData];
  textBox = [clientData textBox];
  text = [textBox text];

  return text;
}

@end