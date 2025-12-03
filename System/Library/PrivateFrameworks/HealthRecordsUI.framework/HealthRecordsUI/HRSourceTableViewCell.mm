@interface HRSourceTableViewCell
+ (NSString)reuseIdentifier;
- (HRSourceTableViewCell)initWithCoder:(id)coder;
- (HRSourceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation HRSourceTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = sub_1D139012C();

  return v2;
}

- (HRSourceTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_1D139016C();
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___HRSourceTableViewCell_sourceModel) = 0;
    v6 = sub_1D139012C();
  }

  else
  {
    v6 = 0;
    *(&self->super.super.super.super.super.isa + OBJC_IVAR___HRSourceTableViewCell_sourceModel) = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for SourceTableViewCell();
  v7 = [(HRStandardTableViewCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (HRSourceTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HRSourceTableViewCell_sourceModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SourceTableViewCell();
  coderCopy = coder;
  v5 = [(HRStandardTableViewCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end