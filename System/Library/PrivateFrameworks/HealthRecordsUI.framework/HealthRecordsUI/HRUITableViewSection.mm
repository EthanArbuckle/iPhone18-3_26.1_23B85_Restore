@interface HRUITableViewSection
- (HRUITableViewSection)init;
- (HRUITableViewSection)initWithIdentifier:(id)identifier;
- (NSNumber)estimatedNumRows;
- (void)addRowForReuseIdentifier:(id)identifier;
- (void)setEstimatedNumRows:(id)rows;
@end

@implementation HRUITableViewSection

- (NSNumber)estimatedNumRows
{
  v3 = OBJC_IVAR___HRUITableViewSection_estimatedNumRows;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEstimatedNumRows:(id)rows
{
  v5 = OBJC_IVAR___HRUITableViewSection_estimatedNumRows;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = rows;
  rowsCopy = rows;
}

- (HRUITableViewSection)initWithIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HRUITableViewSection_identifier);
  *v7 = 0;
  v7[1] = 0;
  v8 = (self + OBJC_IVAR___HRUITableViewSection_headerString);
  *v8 = 0;
  v8[1] = 0;
  v9 = (self + OBJC_IVAR___HRUITableViewSection_footerString);
  *v9 = 0;
  v9[1] = 0;
  *(self + OBJC_IVAR___HRUITableViewSection_rows) = MEMORY[0x1E69E7CC0];
  *(self + OBJC_IVAR___HRUITableViewSection_estimatedNumRows) = 0;
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TableViewSection();
  return [(HRUITableViewSection *)&v11 init];
}

- (void)addRowForReuseIdentifier:(id)identifier
{
  v4 = sub_1D139016C();
  v6 = v5;
  selfCopy = self;
  sub_1D125CA30(v4, v6);
}

- (HRUITableViewSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end