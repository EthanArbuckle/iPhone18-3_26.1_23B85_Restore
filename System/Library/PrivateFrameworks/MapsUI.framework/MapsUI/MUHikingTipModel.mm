@interface MUHikingTipModel
- (MUHikingTipModel)initWithHikingTipViewModel:(id)model;
@end

@implementation MUHikingTipModel

- (MUHikingTipModel)initWithHikingTipViewModel:(id)model
{
  modelCopy = model;
  v13.receiver = self;
  v13.super_class = MUHikingTipModel;
  v5 = [(MUHikingTipModel *)&v13 init];
  if (v5)
  {
    title = [modelCopy title];
    v7 = [title copy];
    title = v5->_title;
    v5->_title = v7;

    subtitle = [modelCopy subtitle];
    v10 = [subtitle copy];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;
  }

  return v5;
}

@end