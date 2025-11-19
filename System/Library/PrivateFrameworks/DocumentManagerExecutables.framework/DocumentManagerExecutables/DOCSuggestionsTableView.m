@interface DOCSuggestionsTableView
- (CGSize)intrinsicContentSize;
- (_TtC26DocumentManagerExecutables23DOCSuggestionsTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)reloadData;
@end

@implementation DOCSuggestionsTableView

- (_TtC26DocumentManagerExecutables23DOCSuggestionsTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_getObjectType();
  v10 = self + OBJC_IVAR____TtC26DocumentManagerExecutables23DOCSuggestionsTableView_cachedIntrinsicSize;
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17.receiver = self;
  v17.super_class = type metadata accessor for DOCSuggestionsTableView();
  v11 = [(DOCTableView *)&v17 initWithFrame:a4 style:x, y, width, height];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249B9A480;
  v13 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v14 = MEMORY[0x277D74DB8];
  *(v12 + 32) = v13;
  *(v12 + 40) = v14;
  v15 = v11;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v15;
}

- (void)reloadData
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCSuggestionsTableView();
  v2 = v3.receiver;
  [(DOCSuggestionsTableView *)&v3 reloadData];
  [v2 invalidateIntrinsicContentSize];
  [v2 layoutIfNeeded];
}

- (CGSize)intrinsicContentSize
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.isa) + 0x58);
  v4 = self;
  *&v5 = COERCE_DOUBLE(v3());
  if (v7)
  {
    v8 = *MEMORY[0x277D77260];
    DOCSuggestionsTableView.calculatedHeight()();
    v10 = v9;
  }

  else
  {
    v8 = *&v5;
    v10 = v6;
  }

  (*((*v2 & v4->super.super.super.super.super.super.isa) + 0x60))(COERCE_DOUBLE(*&v8), COERCE_DOUBLE(*&v10), 0);

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end