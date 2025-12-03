@interface HRUITableViewRow
- (HRUITableViewRow)init;
- (HRUITableViewRow)initWithReuseIdentifier:(id)identifier;
- (NSString)reuseIdentifier;
@end

@implementation HRUITableViewRow

- (NSString)reuseIdentifier
{

  v2 = sub_1D139012C();

  return v2;
}

- (HRUITableViewRow)initWithReuseIdentifier:(id)identifier
{
  v4 = sub_1D139016C();
  v5 = (self + OBJC_IVAR___HRUITableViewRow_reuseIdentifier);
  *v5 = v4;
  v5[1] = v6;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TableViewRow();
  return [(HRUITableViewRow *)&v8 init];
}

- (HRUITableViewRow)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end