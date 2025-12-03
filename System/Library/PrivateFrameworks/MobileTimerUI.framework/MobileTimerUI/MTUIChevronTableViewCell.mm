@interface MTUIChevronTableViewCell
- (MTUIChevronTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation MTUIChevronTableViewCell

- (MTUIChevronTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MTUIChevronTableViewCell;
  v4 = [(MTUIBaseTableViewCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(MTUIChevronTableViewCell *)v4 setAccessoryType:1];
  }

  return v5;
}

@end