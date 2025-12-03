@interface UserNavigationDropInteraction
- (UserNavigationDropInteraction)initWithOpensNewTab:(BOOL)tab tabOrder:(int64_t)order navigationHandler:(id)handler;
- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
@end

@implementation UserNavigationDropInteraction

- (UserNavigationDropInteraction)initWithOpensNewTab:(BOOL)tab tabOrder:(int64_t)order navigationHandler:(id)handler
{
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = UserNavigationDropInteraction;
  v9 = [(UIDropInteraction *)&v14 initWithDelegate:self];
  if (v9)
  {
    v10 = _Block_copy(handlerCopy);
    navigationHandler = v9->_navigationHandler;
    v9->_navigationHandler = v10;

    v9->_opensNewTab = tab;
    v9->_tabOrder = order;
    v12 = v9;
  }

  return v9;
}

- (id)dropInteraction:(id)interaction sessionDidUpdate:(id)update
{
  v4 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v5 = MEMORY[0x277D28F40];
  dropCopy = drop;
  builder = [v5 builder];
  [builder setPrefersOpenInNewTab:self->_opensNewTab];
  [builder setPreferredTabOrder:self->_tabOrder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__UserNavigationDropInteraction_dropInteraction_performDrop___block_invoke;
  v8[3] = &unk_2781D5D00;
  v8[4] = self;
  [builder buildNavigationIntentForDropSession:dropCopy completionHandler:v8];
}

uint64_t __61__UserNavigationDropInteraction_dropInteraction_performDrop___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(*(result + 32) + 80) + 16))();
  }

  return result;
}

@end