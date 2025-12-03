@interface CKMentionEntityNode
- (id)childWithKey:(id)key;
- (void)addChild:(id)child;
- (void)addEntity:(id)entity;
- (void)addPossibleEntity:(id)entity;
@end

@implementation CKMentionEntityNode

- (void)addEntity:(id)entity
{
  entityCopy = entity;
  entities = self->_entities;
  v8 = entityCopy;
  if (!entities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_entities;
    self->_entities = v6;

    entityCopy = v8;
    entities = self->_entities;
  }

  [(NSMutableSet *)entities addObject:entityCopy];
  [(CKMentionEntityNode *)self addPossibleEntity:v8];
}

- (void)addPossibleEntity:(id)entity
{
  entityCopy = entity;
  possibleEntities = self->_possibleEntities;
  v8 = entityCopy;
  if (!possibleEntities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_possibleEntities;
    self->_possibleEntities = v6;

    entityCopy = v8;
    possibleEntities = self->_possibleEntities;
  }

  [(NSMutableSet *)possibleEntities addObject:entityCopy];
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v9 = childCopy;
  if (!children)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v7 = self->_children;
    self->_children = v6;

    childCopy = v9;
    children = self->_children;
  }

  v8 = [childCopy key];
  [(NSMutableDictionary *)children setObject:v9 forKey:v8];
}

- (id)childWithKey:(id)key
{
  keyCopy = key;
  children = [(CKMentionEntityNode *)self children];
  v6 = [children objectForKeyedSubscript:keyCopy];

  return v6;
}

@end