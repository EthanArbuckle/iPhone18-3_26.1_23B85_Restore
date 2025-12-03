@interface CCSetChangeXPCListener
- (BOOL)handlesUpdateForSet:(id)set;
- (CCSetChangeXPCListener)initWithIdentifier:(id)identifier queue:(id)queue handlerBlock:(id)block batchHandlerBlock:(id)handlerBlock useCase:(id)case;
- (id)description;
- (void)dealloc;
@end

@implementation CCSetChangeXPCListener

- (CCSetChangeXPCListener)initWithIdentifier:(id)identifier queue:(id)queue handlerBlock:(id)block batchHandlerBlock:(id)handlerBlock useCase:(id)case
{
  identifierCopy = identifier;
  queueCopy = queue;
  blockCopy = block;
  handlerBlockCopy = handlerBlock;
  caseCopy = case;
  v28.receiver = self;
  v28.super_class = CCSetChangeXPCListener;
  v18 = [(CCSetChangeXPCListener *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v19->_queue, queue);
    v20 = _Block_copy(blockCopy);
    handlerBlock = v19->_handlerBlock;
    v19->_handlerBlock = v20;

    v22 = _Block_copy(handlerBlockCopy);
    batchHandlerBlock = v19->_batchHandlerBlock;
    v19->_batchHandlerBlock = v22;

    if (v19->_batchHandlerBlock)
    {
      v24 = objc_alloc_init(CCSetChangeQueue);
      setChangeQueue = v19->_setChangeQueue;
      v19->_setChangeQueue = v24;
    }

    objc_storeStrong(&v19->_useCase, case);
    v26 = +[CCSetChangeXPCEventHandler sharedInstance];
    [v26 addListener:v19];
  }

  return v19;
}

- (BOOL)handlesUpdateForSet:(id)set
{
  setCopy = set;
  if ([(NSString *)self->_useCase isEqualToString:*MEMORY[0x1E698E948]])
  {
    v5 = 1;
  }

  else
  {
    if (!self->_listeningProcess || !self->_readableSetIdentifiers)
    {
      current = [MEMORY[0x1E698E9D8] current];
      listeningProcess = self->_listeningProcess;
      self->_listeningProcess = current;

      v8 = [MEMORY[0x1E698E970] policyForProcess:self->_listeningProcess connectionFlags:0 useCase:self->_useCase];
      v9 = [v8 explicitlyAuthorizedResourcesOfType:4 withAccessMode:1];
      readableSetIdentifiers = self->_readableSetIdentifiers;
      self->_readableSetIdentifiers = v9;
    }

    v11 = CCTypeIdentifierRegistryBridge();
    v12 = [v11 setIdentifierForItemType:{objc_msgSend(setCopy, "itemType")}];

    if (v12)
    {
      v5 = [(NSSet *)self->_readableSetIdentifiers containsObject:v12];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  v3 = +[CCSetChangeXPCEventHandler sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = CCSetChangeXPCListener;
  [(CCSetChangeXPCListener *)&v4 dealloc];
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> identifier: %@ useCase: %@", objc_opt_class(), self, self->_identifier, self->_useCase];

  return v2;
}

@end