@interface CPUIGridViewTableViewCell
+ (NSString)reuseIdentifier;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CPUIGridViewTableViewCell)initWithCoder:(id)a3;
- (CPUIGridViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSDirectionalEdgeInsets)contentInsets;
- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4;
- (void)layoutGridView;
- (void)prepareForReuse;
- (void)setContentInsets:(NSDirectionalEdgeInsets)a3;
@end

@implementation CPUIGridViewTableViewCell

+ (NSString)reuseIdentifier
{
  v2 = MEMORY[0x245D2BBE0](0xD000000000000016, 0x80000002431EA120);

  return v2;
}

- (NSDirectionalEdgeInsets)contentInsets
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  v3 = *(&self->super.super.super._responderFlags + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  v4 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  v5 = *(&self->super.super._cachedTraitCollection + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setContentInsets:(NSDirectionalEdgeInsets)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  v4 = *(&self->super.super.super._responderFlags + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  v5 = *(&self->super.super._constraintsExceptingSubviewAutoresizingConstraints + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  v6 = *(&self->super.super._cachedTraitCollection + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets);
  *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIGridViewTableViewCell_contentInsets) = a3;
  v7 = self;
  CPUIGridViewTableViewCell.contentInsets.didset(v3, v4, v5, v6);
}

- (CPUIGridViewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return CPUIGridViewTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

- (void)layoutGridView
{
  v2 = self;
  CPUIGridViewTableViewCell.layoutGridView()();
}

- (CPUIGridViewTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___CPUIGridViewTableViewCell_gridView;
  type metadata accessor for GridView();
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = (self + OBJC_IVAR___CPUIGridViewTableViewCell_gridViewConstraints);
  *v5 = 0u;
  v5[1] = 0u;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___CPUIGridViewTableViewCell_gridView);
  v4 = self;
  v5 = [(CPUIGridViewTableViewCell *)v4 contentView];
  [v5 bounds];

  [(CPUIGridViewTableViewCell *)v4 contentInsets];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(CPUIGridViewTableViewCell *)v4 effectiveUserInterfaceLayoutDirection];
  v23.top = v7;
  v23.leading = v9;
  v23.bottom = v11;
  v23.trailing = v13;
  v24 = UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)(v23, v14);
  v15 = CGSize.inset(by:)(v24);
  [v3 sizeThatFits_];
  v17 = v16;
  v19 = v18;

  v20 = v17;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CPUIGridViewTableViewCell;
  v2 = self;
  [(CPUIGridViewTableViewCell *)&v3 prepareForReuse];
  GridView.prepareForReuse()();
}

- (void)_setContentClipCorners:(unint64_t)a3 updateCorners:(BOOL)a4
{
  v5 = self;
  v4 = [(CPUIGridViewTableViewCell *)v5 layer];
  [v4 setMasksToBounds_];
}

@end