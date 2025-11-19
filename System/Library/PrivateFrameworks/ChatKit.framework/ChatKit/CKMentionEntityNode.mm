@interface CKMentionEntityNode
- (id)childWithKey:(id)a3;
- (void)addChild:(id)a3;
- (void)addEntity:(id)a3;
- (void)addPossibleEntity:(id)a3;
@end

@implementation CKMentionEntityNode

- (void)addEntity:(id)a3
{
  v4 = a3;
  entities = self->_entities;
  v8 = v4;
  if (!entities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_entities;
    self->_entities = v6;

    v4 = v8;
    entities = self->_entities;
  }

  [(NSMutableSet *)entities addObject:v4];
  [(CKMentionEntityNode *)self addPossibleEntity:v8];
}

- (void)addPossibleEntity:(id)a3
{
  v4 = a3;
  possibleEntities = self->_possibleEntities;
  v8 = v4;
  if (!possibleEntities)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v7 = self->_possibleEntities;
    self->_possibleEntities = v6;

    v4 = v8;
    possibleEntities = self->_possibleEntities;
  }

  [(NSMutableSet *)possibleEntities addObject:v4];
}

- (void)addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v9 = v4;
  if (!children)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v7 = self->_children;
    self->_children = v6;

    v4 = v9;
    children = self->_children;
  }

  v8 = [v4 key];
  [(NSMutableDictionary *)children setObject:v9 forKey:v8];
}

- (id)childWithKey:(id)a3
{
  v4 = a3;
  v5 = [(CKMentionEntityNode *)self children];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end