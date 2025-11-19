@interface UserNavigationDropInteraction
- (UserNavigationDropInteraction)initWithOpensNewTab:(BOOL)a3 tabOrder:(int64_t)a4 navigationHandler:(id)a5;
- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
@end

@implementation UserNavigationDropInteraction

- (UserNavigationDropInteraction)initWithOpensNewTab:(BOOL)a3 tabOrder:(int64_t)a4 navigationHandler:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = UserNavigationDropInteraction;
  v9 = [(UIDropInteraction *)&v14 initWithDelegate:self];
  if (v9)
  {
    v10 = _Block_copy(v8);
    navigationHandler = v9->_navigationHandler;
    v9->_navigationHandler = v10;

    v9->_opensNewTab = a3;
    v9->_tabOrder = a4;
    v12 = v9;
  }

  return v9;
}

- (id)dropInteraction:(id)a3 sessionDidUpdate:(id)a4
{
  v4 = [objc_alloc(MEMORY[0x277D754A8]) initWithDropOperation:2];

  return v4;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v5 = MEMORY[0x277D28F40];
  v6 = a4;
  v7 = [v5 builder];
  [v7 setPrefersOpenInNewTab:self->_opensNewTab];
  [v7 setPreferredTabOrder:self->_tabOrder];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__UserNavigationDropInteraction_dropInteraction_performDrop___block_invoke;
  v8[3] = &unk_2781D5D00;
  v8[4] = self;
  [v7 buildNavigationIntentForDropSession:v6 completionHandler:v8];
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