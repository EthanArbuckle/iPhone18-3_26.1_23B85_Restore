@interface OspreyUnaryMethodCall
- (OspreyUnaryMethodCall)callWithRequestBuilder:(id)a3 requestMessage:(id)a4 completion:(id)a5;
@end

@implementation OspreyUnaryMethodCall

- (OspreyUnaryMethodCall)callWithRequestBuilder:(id)a3 requestMessage:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy__0;
  v18[4] = __Block_byref_object_dispose__0;
  v19 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__OspreyUnaryMethodCall_callWithRequestBuilder_requestMessage_completion___block_invoke;
  v17[3] = &unk_2799F2098;
  v17[4] = v18;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __74__OspreyUnaryMethodCall_callWithRequestBuilder_requestMessage_completion___block_invoke_2;
  v14[3] = &unk_2799F20C0;
  v11 = v10;
  v15 = v11;
  v16 = v18;
  v12 = [(OspreyMethodCall *)self callWithRequestBuilder:v8 messageReceived:v17 completion:v14];
  [v12 produceMessage:v9];
  [v12 finishProducing];

  _Block_object_dispose(v18, 8);
  return result;
}

uint64_t __74__OspreyUnaryMethodCall_callWithRequestBuilder_requestMessage_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return (*(v3 + 16))(v3, 0, a2);
  }

  else
  {
    return (*(v3 + 16))(v3, *(*(*(a1 + 40) + 8) + 40));
  }
}

@end