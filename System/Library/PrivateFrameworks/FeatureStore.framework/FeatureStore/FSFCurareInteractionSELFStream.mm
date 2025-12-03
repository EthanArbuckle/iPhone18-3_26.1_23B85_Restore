@interface FSFCurareInteractionSELFStream
- (BOOL)insert:(id)insert error:(id *)error;
- (id)retrieve:(id)retrieve;
- (void)retrieve:(id)retrieve completionHandler:(id)handler;
- (void)retrieveWithCompletionHandler:(id)handler;
@end

@implementation FSFCurareInteractionSELFStream

- (BOOL)insert:(id)insert error:(id *)error
{
  insertCopy = insert;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"SELF stream does not support insertion" userInfo:0];
  objc_exception_throw(v5);
}

- (id)retrieve:(id)retrieve
{
  retrieveCopy = retrieve;
  v5 = dispatch_semaphore_create(0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__FSFCurareInteractionSELFStream_StreamSourceProtocol__retrieve___block_invoke;
  v9[3] = &unk_2784D34C0;
  v11 = &v12;
  v6 = v5;
  v10 = v6;
  [(FSFCurareInteractionSELFStream *)self retrieveWithCompletionHandler:v9];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __65__FSFCurareInteractionSELFStream_StreamSourceProtocol__retrieve___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)retrieve:(id)retrieve completionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__FSFCurareInteractionSELFStream_StreamSourceProtocol__retrieve_completionHandler___block_invoke;
  v7[3] = &unk_2784D34E8;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [(FSFCurareInteractionSELFStream *)self retrieveWithCompletionHandler:v7];
}

- (void)retrieveWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CurareInteractionSELFStream.retrieve(), v5);
}

@end