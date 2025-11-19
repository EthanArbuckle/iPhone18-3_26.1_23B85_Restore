@interface CPUIGridViewBaseTableViewCell
+ (NSString)reuseIdentifier;
- (CPUIGridViewBaseStyleOptions)gridViewStyleOptions;
- (CPUIGridViewBaseTableViewCell)initWithCoder:(id)a3;
- (CPUIGridViewBaseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (unint64_t)gridViewStyle;
- (void)prepareForReuse;
- (void)setGridViewStyle:(unint64_t)a3;
- (void)setGridViewStyleOptions:(id)a3;
- (void)setViewModels:(id)a3;
- (void)updateGridViewStyleWithStyle:(unint64_t)a3 options:(id)a4;
@end

@implementation CPUIGridViewBaseTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = MEMORY[0x245D2BBE0](0xD00000000000001BLL, 0x80000002431EA6C0);

  return v2;
}

- (void)prepareForReuse
{
  v2 = self;
  CPUIGridViewBaseTableViewCell.prepareForReuse()();
}

- (void)setViewModels:(id)a3
{
  type metadata accessor for CPUIGridViewBaseViewModel(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  CPUIGridViewBaseTableViewCell.__setViewModels(_:)(v4);
}

- (unint64_t)gridViewStyle
{
  v2 = self + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle;
  swift_beginAccess();
  return *(&unk_2431E6988 + ((*(v2 + 12) >> 11) & 0x18));
}

- (void)setGridViewStyle:(unint64_t)a3
{
  v5 = self;
  v4 = [(CPUIGridViewBaseTableViewCell *)v5 gridViewStyleOptions];
  [(CPUIGridViewBaseTableViewCell *)v5 updateGridViewStyleWithStyle:a3 options:v4];
}

- (CPUIGridViewBaseStyleOptions)gridViewStyleOptions
{
  v2 = self;
  v3 = CPUIGridViewBaseTableViewCell.__gridViewStyleOptions.getter();

  return v3;
}

- (void)setGridViewStyleOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  [(CPUIGridViewBaseTableViewCell *)v5 updateGridViewStyleWithStyle:[(CPUIGridViewBaseTableViewCell *)v5 gridViewStyle] options:v4];
}

- (void)updateGridViewStyleWithStyle:(unint64_t)a3 options:(id)a4
{
  v6 = a4;
  v7 = self;
  CPUIGridViewBaseTableViewCell.updateGridViewStyle(style:options:)(a3, v6);
}

- (CPUIGridViewBaseTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CPUIGridViewBaseTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (CPUIGridViewBaseTableViewCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end