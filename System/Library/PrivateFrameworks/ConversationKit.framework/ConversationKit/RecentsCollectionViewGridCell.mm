@interface RecentsCollectionViewGridCell
- (BOOL)isSelected;
- (_TtC15ConversationKit29RecentsCollectionViewGridCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSelected:(BOOL)selected;
@end

@implementation RecentsCollectionViewGridCell

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = RecentsCollectionViewGridCell.isSelected.getter();

  return v3 & 1;
}

- (void)layoutSubviews
{
  selfCopy = self;
  RecentsCollectionViewGridCell.layoutSubviews()();
}

- (_TtC15ConversationKit29RecentsCollectionViewGridCell)initWithCoder:(id)coder
{
  coderCopy = coder;
  RecentsCollectionViewGridCell.init(coder:)();
  return result;
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  RecentsCollectionViewGridCell.isSelected.setter(selected);
}

- (void)prepareForReuse
{
  selfCopy = self;
  RecentsCollectionViewGridCell.prepareForReuse()();
}

@end