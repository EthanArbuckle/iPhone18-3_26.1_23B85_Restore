@interface OADGroup
- (CGRect)logicalBounds;
- (NSString)description;
- (OADGroup)init;
- (void)addChild:(id)a3;
- (void)addChildren:(id)a3;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3;
- (void)removeChild:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)replaceChild:(id)a3 with:(id)a4;
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

- (void)addChild:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSMutableArray *)self->mChildren addObject:v4];
    [v4 setParent:self];
  }
}

- (void)addChildren:(id)a3
{
  v7 = a3;
  v4 = [v7 count];
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = [v7 objectAtIndex:i];
      [v6 setParent:self];
    }
  }

  [(NSMutableArray *)self->mChildren addObjectsFromArray:v7];
}

- (void)replaceChild:(id)a3 with:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(NSMutableArray *)self->mChildren indexOfObjectIdenticalTo:v8];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v8 setParent:0];
    [(NSMutableArray *)self->mChildren replaceObjectAtIndex:v7 withObject:v6];
    [v6 setParent:self];
  }
}

- (void)removeChild:(id)a3
{
  v5 = a3;
  v4 = [(NSMutableArray *)self->mChildren indexOfObjectIdenticalTo:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 setParent:0];
    [(NSMutableArray *)self->mChildren removeObjectAtIndex:v4];
  }
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

        [*(*(&v9 + 1) + 8 * v8++) changeParentTextListStylePreservingEffectiveValues:{v4, v9}];
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