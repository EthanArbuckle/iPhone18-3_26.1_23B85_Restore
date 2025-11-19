@interface MUCompositionalStackLayoutGroup
- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)a3;
- (BOOL)hasAlignmentForArrangedLayoutItem:(id)a3;
- (MUCompositionalStackLayoutGroup)initWithAxis:(int64_t)a3;
- (MUCompositionalStackLayoutGroup)initWithIdentifier:(id)a3 axis:(int64_t)a4;
- (NSDirectionalEdgeInsets)insets;
- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3;
- (UIOffset)offsetForArrangedLayoutItem:(id)a3;
- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)alignmentForArrangedLayoutItem:(id)a3;
- (void)addArrangedLayoutItem:(id)a3;
- (void)disableAlignmentForArrangedLayoutItem:(id)a3;
- (void)removeArrangedLayoutItem:(id)a3;
- (void)resetAlignmentForArrangedLayoutItem:(id)a3;
- (void)setAlignment:(int64_t)a3 forArrangedLayoutItem:(id)a4;
- (void)setAlignmentFittingSizePriority:(float)a3 forArrangedLayoutItem:(id)a4;
- (void)setArrangedLayoutItems:(id)a3;
- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4;
- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4;
@end

@implementation MUCompositionalStackLayoutGroup

- (void)setAlignmentFittingSizePriority:(float)a3 forArrangedLayoutItem:(id)a4
{
  internal = self->_internal;
  v7 = unwrapLayoutItem(a4);
  *&v6 = a3;
  [(MUCompositionalStackLayoutGroupInternal *)internal setAlignmentFittingSizePriority:v7 forArrangedLayoutItem:v6];
}

- (float)alignmentFittingSizePriorityForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  [(MUCompositionalStackLayoutGroupInternal *)internal alignmentFittingSizePriorityForArrangedLayoutItem:v4];
  v6 = v5;

  return v6;
}

- (BOOL)alignmentBoundsContentForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  LOBYTE(internal) = [(MUCompositionalStackLayoutGroupInternal *)internal alignmentBoundsContentForArrangedLayoutItem:v4];

  return internal;
}

- (void)setAlignment:(int64_t)a3 forArrangedLayoutItem:(id)a4
{
  internal = self->_internal;
  v6 = unwrapLayoutItem(a4);
  [(MUCompositionalStackLayoutGroupInternal *)internal setAlignment:a3 forArrangedLayoutItem:v6];
}

- (int64_t)alignmentForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  v5 = [(MUCompositionalStackLayoutGroupInternal *)internal alignmentForArrangedLayoutItem:v4];

  return v5;
}

- (void)resetAlignmentForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  [(MUCompositionalStackLayoutGroupInternal *)internal resetAlignmentForArrangedLayoutItem:v4];
}

- (void)disableAlignmentForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  [(MUCompositionalStackLayoutGroupInternal *)internal disableAlignmentForArrangedLayoutItem:v4];
}

- (BOOL)hasAlignmentForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  LOBYTE(internal) = [(MUCompositionalStackLayoutGroupInternal *)internal hasAlignmentForArrangedLayoutItem:v4];

  return internal;
}

- (void)setOffset:(UIOffset)a3 forArrangedLayoutItem:(id)a4
{
  vertical = a3.vertical;
  horizontal = a3.horizontal;
  internal = self->_internal;
  v7 = unwrapLayoutItem(a4);
  [(MUCompositionalStackLayoutGroupInternal *)internal setOffset:v7 forArrangedLayoutItem:horizontal, vertical];
}

- (UIOffset)offsetForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
  [(MUCompositionalStackLayoutGroupInternal *)internal offsetForArrangedLayoutItem:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.vertical = v10;
  result.horizontal = v9;
  return result;
}

- (void)setPadding:(NSDirectionalEdgeInsets)a3 forArrangedLayoutItem:(id)a4
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  internal = self->_internal;
  v9 = unwrapLayoutItem(a4);
  [(MUCompositionalStackLayoutGroupInternal *)internal setPadding:v9 forArrangedLayoutItem:top, leading, bottom, trailing];
}

- (NSDirectionalEdgeInsets)paddingForArrangedLayoutItem:(id)a3
{
  internal = self->_internal;
  v4 = unwrapLayoutItem(a3);
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

- (void)removeArrangedLayoutItem:(id)a3
{
  v11 = a3;
  v4 = unwrapLayoutItem(v11);
  v5 = [(NSArray *)self->_arrangedLayoutItems count];
  [(MUCompositionalStackLayoutGroupInternal *)self->_internal removeArrangedLayoutItem:v4];
  v6 = [(MUCompositionalStackLayoutGroupInternal *)self->_internal arrangedLayoutItems];
  v7 = [v6 count];

  if (v5 != v7)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithArray:self->_arrangedLayoutItems];
    [v8 removeObject:v11];
    v9 = [v8 copy];
    arrangedLayoutItems = self->_arrangedLayoutItems;
    self->_arrangedLayoutItems = v9;
  }
}

- (void)addArrangedLayoutItem:(id)a3
{
  v10 = a3;
  v4 = unwrapLayoutItem(v10);
  v5 = [(NSArray *)self->_arrangedLayoutItems count];
  [(MUCompositionalStackLayoutGroupInternal *)self->_internal addArrangedLayoutItem:v4];
  v6 = [(MUCompositionalStackLayoutGroupInternal *)self->_internal arrangedLayoutItems];
  v7 = [v6 count];

  if (v5 != v7)
  {
    v8 = [(NSArray *)self->_arrangedLayoutItems arrayByAddingObject:v10];
    arrangedLayoutItems = self->_arrangedLayoutItems;
    self->_arrangedLayoutItems = v8;
  }
}

- (void)setArrangedLayoutItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_arrangedLayoutItems != v4)
  {
    v9 = v4;
    v4 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v4 & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v9];
      arrangedLayoutItems = self->_arrangedLayoutItems;
      self->_arrangedLayoutItems = v6;

      v8 = MUMap(self->_arrangedLayoutItems, &__block_literal_global_2048);
      [(MUCompositionalStackLayoutGroupInternal *)self->_internal setArrangedLayoutItems:v8];

      v5 = v9;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(MUCompositionalStackLayoutGroupInternal *)self->_internal copy];
  v6 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithAxis:", -[MUCompositionalStackLayoutGroup axis](self, "axis")}];
  v7 = *(v6 + 16);
  *(v6 + 16) = v5;
  v8 = v5;

  objc_storeStrong((v6 + 8), self->_arrangedLayoutItems);
  return v6;
}

- (MUCompositionalStackLayoutGroup)initWithIdentifier:(id)a3 axis:(int64_t)a4
{
  v6 = a3;
  v7 = [[MUCompositionalStackLayoutGroupInternal alloc] initWithIdentifier:v6 axis:a4];

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

- (MUCompositionalStackLayoutGroup)initWithAxis:(int64_t)a3
{
  v4 = [[MUCompositionalStackLayoutGroupInternal alloc] initWithAxis:a3];
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