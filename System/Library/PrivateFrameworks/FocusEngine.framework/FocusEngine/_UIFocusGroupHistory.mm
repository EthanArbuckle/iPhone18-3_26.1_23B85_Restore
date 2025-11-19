@interface _UIFocusGroupHistory
- (_UIFocusGroupHistory)init;
- (void)setLastFocusedItem:(id)a3 forGroupIdentifier:(id)a4;
@end

@implementation _UIFocusGroupHistory

- (_UIFocusGroupHistory)init
{
  v8.receiver = self;
  v8.super_class = _UIFocusGroupHistory;
  v2 = [(_UIFocusGroupHistory *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC20] pointerFunctionsWithOptions:0];
    v4 = [MEMORY[0x277CCAC20] pointerFunctionsWithOptions:517];
    v5 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyPointerFunctions:v3 valuePointerFunctions:v4 capacity:10];
    groupToItemMap = v2->_groupToItemMap;
    v2->_groupToItemMap = v5;
  }

  return v2;
}

- (void)setLastFocusedItem:(id)a3 forGroupIdentifier:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupHistory.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"item"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusGroupHistory.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"groupIdentifier"}];

LABEL_3:
  [(NSMapTable *)self->_groupToItemMap setObject:v10 forKey:v7];
}

@end