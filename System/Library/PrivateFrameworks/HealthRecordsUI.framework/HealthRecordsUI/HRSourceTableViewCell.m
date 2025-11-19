@interface HRSourceTableViewCell
+ (NSString)reuseIdentifier;
- (HRSourceTableViewCell)initWithCoder:(id)a3;
- (HRSourceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation HRSourceTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = sub_1D139012C();

  return v2;
}

- (HRSourceTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v7 = [(HRStandardTableViewCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (HRSourceTableViewCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___HRSourceTableViewCell_sourceModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SourceTableViewCell();
  v4 = a3;
  v5 = [(HRStandardTableViewCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end