@interface CPUIGridViewBaseTableViewCell
+ (NSString)reuseIdentifier;
- (CPUIGridViewBaseStyleOptions)gridViewStyleOptions;
- (CPUIGridViewBaseTableViewCell)initWithCoder:(id)coder;
- (CPUIGridViewBaseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (unint64_t)gridViewStyle;
- (void)prepareForReuse;
- (void)setGridViewStyle:(unint64_t)style;
- (void)setGridViewStyleOptions:(id)options;
- (void)setViewModels:(id)models;
- (void)updateGridViewStyleWithStyle:(unint64_t)style options:(id)options;
@end

@implementation CPUIGridViewBaseTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = MEMORY[0x245D2BBE0](0xD00000000000001BLL, 0x80000002431EA6C0);

  return v2;
}

- (void)prepareForReuse
{
  selfCopy = self;
  CPUIGridViewBaseTableViewCell.prepareForReuse()();
}

- (void)setViewModels:(id)models
{
  type metadata accessor for CPUIGridViewBaseViewModel(0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CPUIGridViewBaseTableViewCell.__setViewModels(_:)(v4);
}

- (unint64_t)gridViewStyle
{
  v2 = self + OBJC_IVAR___CPUIGridViewBaseTableViewCell_gridViewStyle;
  swift_beginAccess();
  return *(&unk_2431E6988 + ((*(v2 + 12) >> 11) & 0x18));
}

- (void)setGridViewStyle:(unint64_t)style
{
  selfCopy = self;
  gridViewStyleOptions = [(CPUIGridViewBaseTableViewCell *)selfCopy gridViewStyleOptions];
  [(CPUIGridViewBaseTableViewCell *)selfCopy updateGridViewStyleWithStyle:style options:gridViewStyleOptions];
}

- (CPUIGridViewBaseStyleOptions)gridViewStyleOptions
{
  selfCopy = self;
  v3 = CPUIGridViewBaseTableViewCell.__gridViewStyleOptions.getter();

  return v3;
}

- (void)setGridViewStyleOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  [(CPUIGridViewBaseTableViewCell *)selfCopy updateGridViewStyleWithStyle:[(CPUIGridViewBaseTableViewCell *)selfCopy gridViewStyle] options:optionsCopy];
}

- (void)updateGridViewStyleWithStyle:(unint64_t)style options:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  CPUIGridViewBaseTableViewCell.updateGridViewStyle(style:options:)(style, optionsCopy);
}

- (CPUIGridViewBaseTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return CPUIGridViewBaseTableViewCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

- (CPUIGridViewBaseTableViewCell)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR___CPUIGridViewBaseTableViewCell_storedDataSource);
  *v3 = 0;
  v3[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end