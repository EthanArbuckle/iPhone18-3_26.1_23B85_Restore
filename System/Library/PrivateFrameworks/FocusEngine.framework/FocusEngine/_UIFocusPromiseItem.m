@interface _UIFocusPromiseItem
- (CGRect)frame;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (UIFocusEnvironment)parentFocusEnvironment;
- (UIFocusItem)fulfilledItem;
- (_UIFocusPromiseItem)initWithParentEnvironment:(id)a3 frame:(CGRect)a4 fullfillmentHandler:(id)a5;
- (id)focusItemsInRect:(CGRect)a3;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UIFocusPromiseItem

- (_UIFocusPromiseItem)initWithParentEnvironment:(id)a3 frame:(CGRect)a4 fullfillmentHandler:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = a5;
  if (!v12)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UIFocusPromiseItem.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"parentEnvironment != nil"}];
  }

  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  if (CGRectIsNull(v21))
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"_UIFocusPromiseItem.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsNull(frame)"}];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
    goto LABEL_5;
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:a2 object:self file:@"_UIFocusPromiseItem.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"fulfillmentHandler != nil"}];

LABEL_5:
  v20.receiver = self;
  v20.super_class = _UIFocusPromiseItem;
  v14 = [(_UIFocusPromiseItem *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(_UIFocusPromiseItem *)v14 setParentFocusEnvironment:v12];
    [(_UIFocusPromiseItem *)v15 setFrame:x, y, width, height];
    [(_UIFocusPromiseItem *)v15 setFulfillmentHandler:v13];
  }

  return v15;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(_UIFocusPromiseItem *)self debugIdentifier];
  v5 = [v3 appendObject:v4 withName:@"identifier" skipIfNil:1];

  [(_UIFocusPromiseItem *)self frame];
  v6 = [v3 appendRect:@"frame" withName:?];
  v7 = [(_UIFocusPromiseItem *)self parentFocusEnvironment];
  v8 = [v3 appendObject:v7 withName:@"parentFocusEnvironment"];

  v9 = [v3 build];

  return v9;
}

- (UIFocusItem)fulfilledItem
{
  if ((*&self->_flags & 1) == 0)
  {
    v3 = [(_UIFocusPromiseItem *)self fulfillmentHandler];
    v4 = v3[2]();

    fulfilledItem = self->_fulfilledItem;
    self->_fulfilledItem = v4;

    *&self->_flags |= 1u;
  }

  v6 = self->_fulfilledItem;

  return v6;
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (id)focusItemsInRect:(CGRect)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [(_UIFocusPromiseItem *)self fulfilledItem:a3.origin.x];
  v4 = v3;
  if (v3)
  {
    v7[0] = v3;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = [(_UIFocusPromiseItem *)self parentFocusEnvironment];
  v3 = [v2 focusItemContainer];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFocusEnvironment);

  return WeakRetained;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end