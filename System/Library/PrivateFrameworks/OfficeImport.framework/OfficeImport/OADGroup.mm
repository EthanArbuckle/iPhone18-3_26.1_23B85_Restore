@interface OADGroup
- (CGRect)logicalBounds;
- (NSString)description;
- (OADGroup)init;
- (void)addChild:(id)child;
- (void)addChildren:(id)children;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)values;
- (void)removeChild:(id)child;
- (void)removeUnnecessaryOverrides;
- (void)replaceChild:(id)child with:(id)with;
@end

@implementation OADGroup

- (OADGroup)init
{
  v3 = objc_opt_class();
  v8.receiver = self;
  v8.super_class = OADGroup;
  v4 = [(OADDrawable *)&v8 initWithPropertiesClass:v3];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mChildren = v4->mChildren;
    v4->mChildren = v5;
  }

  return v4;
}

- (void)removeUnnecessaryOverrides
{
  v3.receiver = self;
  v3.super_class = OADGroup;
  [(OADDrawable *)&v3 removeUnnecessaryOverrides];
  [(NSMutableArray *)self->mChildren makeObjectsPerformSelector:sel_removeUnnecessaryOverrides];
}

- (CGRect)logicalBounds
{
  x = self->mLogicalBounds.origin.x;
  y = self->mLogicalBounds.origin.y;
  width = self->mLogicalBounds.size.width;
  height = self->mLogicalBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)addChild:(id)child
{
  childCopy = child;
  if (childCopy)
  {
    [(NSMutableArray *)self->mChildren addObject:childCopy];
    [childCopy setParent:self];
  }
}

- (void)addChildren:(id)children
{
  childrenCopy = children;
  v4 = [childrenCopy count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [childrenCopy objectAtIndex:i];
      [v6 setParent:self];
    }
  }

  [(NSMutableArray *)self->mChildren addObjectsFromArray:childrenCopy];
}

- (void)replaceChild:(id)child with:(id)with
{
  childCopy = child;
  withCopy = with;
  v7 = [(NSMutableArray *)self->mChildren indexOfObjectIdenticalTo:childCopy];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [childCopy setParent:0];
    [(NSMutableArray *)self->mChildren replaceObjectAtIndex:v7 withObject:withCopy];
    [withCopy setParent:self];
  }
}

- (void)removeChild:(id)child
{
  childCopy = child;
  v4 = [(NSMutableArray *)self->mChildren indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [childCopy setParent:0];
    [(NSMutableArray *)self->mChildren removeObjectAtIndex:v4];
  }
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)values
{
  v14 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->mChildren;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v9 + 1) + 8 * v8++) changeParentTextListStylePreservingEffectiveValues:{valuesCopy, v9}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = OADGroup;
  v2 = [(OADDrawable *)&v4 description];

  return v2;
}

@end