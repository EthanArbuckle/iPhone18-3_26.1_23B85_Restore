@interface ICHashtagsNode
- (NSMutableSet)hashtagSuggestions;
- (NSMutableSet)possibleHashtagSuggestions;
- (void)addChild:(id)a3;
- (void)addHashtagSuggestion:(id)a3;
- (void)addPossibleHashtagSuggestion:(id)a3;
@end

@implementation ICHashtagsNode

- (NSMutableSet)hashtagSuggestions
{
  hashtagSuggestions = self->_hashtagSuggestions;
  if (!hashtagSuggestions)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v5 = self->_hashtagSuggestions;
    self->_hashtagSuggestions = v4;

    hashtagSuggestions = self->_hashtagSuggestions;
  }

  return hashtagSuggestions;
}

- (NSMutableSet)possibleHashtagSuggestions
{
  possibleHashtagSuggestions = self->_possibleHashtagSuggestions;
  if (!possibleHashtagSuggestions)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v5 = self->_possibleHashtagSuggestions;
    self->_possibleHashtagSuggestions = v4;

    possibleHashtagSuggestions = self->_possibleHashtagSuggestions;
  }

  return possibleHashtagSuggestions;
}

- (void)addHashtagSuggestion:(id)a3
{
  v5 = a3;
  v4 = [(ICHashtagsNode *)self hashtagSuggestions];
  [v4 addObject:v5];

  [(ICHashtagsNode *)self addPossibleHashtagSuggestion:v5];
}

- (void)addPossibleHashtagSuggestion:(id)a3
{
  v4 = a3;
  v5 = [(ICHashtagsNode *)self possibleHashtagSuggestions];
  [v5 addObject:v4];
}

- (void)addChild:(id)a3
{
  v4 = a3;
  children = self->_children;
  v9 = v4;
  if (!children)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v7 = self->_children;
    self->_children = v6;

    v4 = v9;
    children = self->_children;
  }

  v8 = [v4 key];
  [(NSMutableDictionary *)children setObject:v9 forKey:v8];
}

@end