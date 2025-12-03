@interface ICHashtagsNode
- (NSMutableSet)hashtagSuggestions;
- (NSMutableSet)possibleHashtagSuggestions;
- (void)addChild:(id)child;
- (void)addHashtagSuggestion:(id)suggestion;
- (void)addPossibleHashtagSuggestion:(id)suggestion;
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

- (void)addHashtagSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  hashtagSuggestions = [(ICHashtagsNode *)self hashtagSuggestions];
  [hashtagSuggestions addObject:suggestionCopy];

  [(ICHashtagsNode *)self addPossibleHashtagSuggestion:suggestionCopy];
}

- (void)addPossibleHashtagSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  possibleHashtagSuggestions = [(ICHashtagsNode *)self possibleHashtagSuggestions];
  [possibleHashtagSuggestions addObject:suggestionCopy];
}

- (void)addChild:(id)child
{
  childCopy = child;
  children = self->_children;
  v9 = childCopy;
  if (!children)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    v7 = self->_children;
    self->_children = v6;

    childCopy = v9;
    children = self->_children;
  }

  v8 = [childCopy key];
  [(NSMutableDictionary *)children setObject:v9 forKey:v8];
}

@end