@interface BrowsingAssistant.EntityCardCell
- (_TtCC12MobileSafari17BrowsingAssistant14EntityCardCell)initWithCoder:(id)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
@end

@implementation BrowsingAssistant.EntityCardCell

- (_TtCC12MobileSafari17BrowsingAssistant14EntityCardCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView) = 0;
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v11.receiver = self;
  v11.super_class = _s14EntityCardCellCMa();
  v4 = a3;
  v5 = v11.receiver;
  v6 = [(BrowsingAssistant.EntityCardCell *)&v11 preferredLayoutAttributesFittingAttributes:v4];
  [v6 size];
  v8 = *&v5[OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14EntityCardCell_entityView];
  if (v8)
  {
    v9 = v7;
    [v8 systemLayoutSizeFittingSize_];
    v7 = v9;
  }

  [v6 setSize_];

  return v6;
}

@end