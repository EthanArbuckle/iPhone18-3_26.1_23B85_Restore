@interface DMFConnection(MDMUtilities)
- (id)performRequest:()MDMUtilities error:;
@end

@implementation DMFConnection(MDMUtilities)

- (id)performRequest:()MDMUtilities error:
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = dispatch_semaphore_create(0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__DMFConnection_MDMUtilities__performRequest_error___block_invoke;
  v11[3] = &unk_27982B818;
  v13 = &v15;
  v14 = a4;
  v8 = v7;
  v12 = v8;
  [a1 performRequest:v6 completion:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

@end