@interface MTUIChevronTableViewCell
- (MTUIChevronTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation MTUIChevronTableViewCell

- (MTUIChevronTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MTUIChevronTableViewCell;
  v4 = [(MTUIBaseTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(MTUIChevronTableViewCell *)v4 setAccessoryType:1];
  }

  return v5;
}

@end