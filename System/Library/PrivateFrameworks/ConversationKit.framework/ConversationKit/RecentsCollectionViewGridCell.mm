@interface RecentsCollectionViewGridCell
- (BOOL)isSelected;
- (_TtC15ConversationKit29RecentsCollectionViewGridCell)initWithCoder:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)a3;
@end

@implementation RecentsCollectionViewGridCell

- (BOOL)isSelected
{
  v2 = self;
  v3 = RecentsCollectionViewGridCell.isSelected.getter();

  return v3 & 1;
}

- (void)layoutSubviews
{
  v2 = self;
  RecentsCollectionViewGridCell.layoutSubviews()();
}

- (_TtC15ConversationKit29RecentsCollectionViewGridCell)initWithCoder:(id)a3
{
  v3 = a3;
  RecentsCollectionViewGridCell.init(coder:)();
  return result;
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  RecentsCollectionViewGridCell.isSelected.setter(a3);
}

- (void)prepareForReuse
{
  v2 = self;
  RecentsCollectionViewGridCell.prepareForReuse()();
}

@end