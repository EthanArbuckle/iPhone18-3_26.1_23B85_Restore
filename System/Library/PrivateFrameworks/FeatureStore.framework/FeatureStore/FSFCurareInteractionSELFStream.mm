@interface FSFCurareInteractionSELFStream
- (BOOL)insert:(id)a3 error:(id *)a4;
- (id)retrieve:(id)a3;
- (void)retrieve:(id)a3 completionHandler:(id)a4;
- (void)retrieveWithCompletionHandler:(id)a3;
@end

@implementation FSFCurareInteractionSELFStream

- (BOOL)insert:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"SELF stream does not support insertion" userInfo:0];
  objc_exception_throw(v5);
}

- (id)retrieve:(id)a3
{
  v4 = a3;
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

- (void)retrieve:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__FSFCurareInteractionSELFStream_StreamSourceProtocol__retrieve_completionHandler___block_invoke;
  v7[3] = &unk_2784D34E8;
  v8 = v5;
  v6 = v5;
  [(FSFCurareInteractionSELFStream *)self retrieveWithCompletionHandler:v7];
}

- (void)retrieveWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in CurareInteractionSELFStream.retrieve(), v5);
}

@end