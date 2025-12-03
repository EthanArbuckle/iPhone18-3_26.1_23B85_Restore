@interface MUCompositionalStackLayoutGroup
- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)item;
- (BOOL)hasAlignmentForArrangedLayoutItem:(id)item;
- (MUCompositionalStackLayoutGroup)initWithAxis:(int64_t)axis;
- (MUCompositionalStackLayoutGroup)initWithIdentifier:(id)identifier axis:(int64_t)axis;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item;
- (UIOffset)offsetForArrangedLayoutItem:(id)item;
- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)alignmentForArrangedLayoutItem:(id)item;
- (void)addArrangedLayoutItem:(id)item;
- (void)disableAlignmentForArrangedLayoutItem:(id)item;
- (void)removeArrangedLayoutItem:(id)item;
- (void)resetAlignmentForArrangedLayoutItem:(id)item;
- (void)setAlignment:(int64_t)alignment forArrangedLayoutItem:(id)item;
- (void)setAlignmentFittingSizePriority:(float)priority forArrangedLayoutItem:(id)item;
- (void)setArrangedLayoutItems:(id)items;
- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item;
- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item;
@end

@implementation MUCompositionalStackLayoutGroup

- (void)setAlignmentFittingSizePriority:(float)priority forArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v7 = unwrapLayoutItem(item);
  *&v6 = priority;
  [(MUCompositionalStackLayoutGroupInternal *)internal setAlignmentFittingSizePriority:v7 forArrangedLayoutItem:v6];
}

- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal alignmentFittingSizePriorityForArrangedLayoutItem:v4];
  v6 = v5;

  return v6;
}

- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  LOBYTE(internal) = [(MUCompositionalStackLayoutGroupInternal *)internal alignmentBoundsContentForArrangedLayoutItem:v4];

  return internal;
}

- (void)setAlignment:(int64_t)alignment forArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v6 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal setAlignment:alignment forArrangedLayoutItem:v6];
}

- (int64_t)alignmentForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  v5 = [(MUCompositionalStackLayoutGroupInternal *)internal alignmentForArrangedLayoutItem:v4];

  return v5;
}

- (void)resetAlignmentForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal resetAlignmentForArrangedLayoutItem:v4];
}

- (void)disableAlignmentForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal disableAlignmentForArrangedLayoutItem:v4];
}

- (BOOL)hasAlignmentForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  LOBYTE(internal) = [(MUCompositionalStackLayoutGroupInternal *)internal hasAlignmentForArrangedLayoutItem:v4];

  return internal;
}

- (void)setOffset:(UIOffset)offset forArrangedLayoutItem:(id)item
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  internal = self->_internal;
  v7 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal setOffset:v7 forArrangedLayoutItem:horizontal, vertical];
}

- (UIOffset)offsetForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal offsetForArrangedLayoutItem:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.vertical = v10;
  result.horizontal = v9;
  return result;
}

- (void)setPadding:(NSDirectionalEdgeInsets)padding forArrangedLayoutItem:(id)item
{
  trailing = padding.trailing;
  bottom = padding.bottom;
  leading = padding.leading;
  top = padding.top;
  internal = self->_internal;
  v9 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal setPadding:v9 forArrangedLayoutItem:top, leading, bottom, trailing];
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)item
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(item);
  [(MUCompositionalStackLayoutGroupInternal *)internal paddingForArrangedLayoutItem:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.trailing = v16;
  result.bottom = v15;
  result.leading = v14;
  result.top = v13;
  return result;
}

- (void)removeArrangedLayoutItem:(id)item
{
  itemCopy = item;
  v4 = unwrapLayoutItem(itemCopy);
  v5 = [(NSArray *)self->_arrangedLayoutItems count];
  [(MUCompositionalStackLayoutGroupInternal *)self->_internal removeArrangedLayoutItem:v4];
  arrangedLayoutItems = [(MUCompositionalStackLayoutGroupInternal *)self->_internal arrangedLayoutItems];
  v7 = [arrangedLayoutItems count];

  if (v5 != v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithArray:self->_arrangedLayoutItems];
    [v8 removeObject:itemCopy];
    v9 = [v8 copy];
    arrangedLayoutItems = self->_arrangedLayoutItems;
    self->_arrangedLayoutItems = v9;
  }
}

- (void)addArrangedLayoutItem:(id)item
{
  itemCopy = item;
  v4 = unwrapLayoutItem(itemCopy);
  v5 = [(NSArray *)self->_arrangedLayoutItems count];
  [(MUCompositionalStackLayoutGroupInternal *)self->_internal addArrangedLayoutItem:v4];
  arrangedLayoutItems = [(MUCompositionalStackLayoutGroupInternal *)self->_internal arrangedLayoutItems];
  v7 = [arrangedLayoutItems count];

  if (v5 != v7)
  {
    v8 = [(NSArray *)self->_arrangedLayoutItems arrayByAddingObject:itemCopy];
    arrangedLayoutItems = self->_arrangedLayoutItems;
    self->_arrangedLayoutItems = v8;
  }
}

- (void)setArrangedLayoutItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_arrangedLayoutItems != itemsCopy)
  {
    v9 = itemsCopy;
    itemsCopy = [(NSArray *)itemsCopy isEqual:?];
    v5 = v9;
    if ((itemsCopy & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
      arrangedLayoutItems = self->_arrangedLayoutItems;
      self->_arrangedLayoutItems = v6;

      v8 = MUMap(self->_arrangedLayoutItems, &__block_literal_global_2048);
      [(MUCompositionalStackLayoutGroupInternal *)self->_internal setArrangedLayoutItems:v8];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](itemsCopy, v5);
}

- (NSDirectionalEdgeInsets)insets
{
  [(MUCompositionalStackLayoutGroupInternal *)self->_internal insets];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(MUCompositionalStackLayoutGroupInternal *)self->_internal copy];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithAxis:", -[MUCompositionalStackLayoutGroup axis](self, "axis")}];
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 8), self->_arrangedLayoutItems);
  return v6;
}

- (MUCompositionalStackLayoutGroup)initWithIdentifier:(id)identifier axis:(int64_t)axis
{
  identifierCopy = identifier;
  v7 = [[MUCompositionalStackLayoutGroupInternal alloc] initWithIdentifier:identifierCopy axis:axis];

  v12.receiver = self;
  v12.super_class = MUCompositionalStackLayoutGroup;
  v8 = [(MUCompositionalStackLayoutGroup *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, v7);
    arrangedLayoutItems = v9->_arrangedLayoutItems;
    v9->_arrangedLayoutItems = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (MUCompositionalStackLayoutGroup)initWithAxis:(int64_t)axis
{
  v4 = [[MUCompositionalStackLayoutGroupInternal alloc] initWithAxis:axis];
  v9.receiver = self;
  v9.super_class = MUCompositionalStackLayoutGroup;
  v5 = [(MUCompositionalStackLayoutGroup *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_internal, v4);
    arrangedLayoutItems = v6->_arrangedLayoutItems;
    v6->_arrangedLayoutItems = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end