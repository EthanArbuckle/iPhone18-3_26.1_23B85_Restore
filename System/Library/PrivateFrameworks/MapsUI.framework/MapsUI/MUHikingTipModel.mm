@interface MUHikingTipModel
- (MUHikingTipModel)initWithHikingTipViewModel:(id)a3;
@end

@implementation MUHikingTipModel

- (MUHikingTipModel)initWithHikingTipViewModel:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = MUHikingTipModel;
  v5 = [(MUHikingTipModel *)&v13 init];
  if (v5)
  {
    v6 = [v4 title];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 subtitle];
    v10 = [v9 copy];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;
  }

  return v5;
}

@end