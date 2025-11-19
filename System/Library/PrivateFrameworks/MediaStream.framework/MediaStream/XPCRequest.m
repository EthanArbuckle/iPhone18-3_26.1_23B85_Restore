@interface XPCRequest
- (XPCRequest)initWithMessage:(id)a3 sequence:(unint64_t)a4 connection:(id)a5;
@end

@implementation XPCRequest

- (XPCRequest)initWithMessage:(id)a3 sequence:(unint64_t)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = XPCRequest;
  v11 = [(XPCRequest *)&v23 init];
  if (v11)
  {
    reply = xpc_dictionary_create_reply(v9);
    objc_storeStrong(&v11->_reply, reply);
    objc_storeStrong(&v11->_message, a3);
    v11->_sequence = a4;
    objc_initWeak(&location, v11);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__XPCRequest_initWithMessage_sequence_connection___block_invoke;
    v18[3] = &unk_2798A50F8;
    v19 = reply;
    v21[1] = a4;
    v20 = v10;
    v13 = reply;
    objc_copyWeak(v21, &location);
    v14 = MEMORY[0x259C89B90](v18);
    handler = v11->_handler;
    v11->_handler = v14;

    v16 = v11;
    objc_destroyWeak(v21);

    objc_destroyWeak(&location);
  }

  return v11;
}

void __50__XPCRequest_initWithMessage_sequence_connection___block_invoke(uint64_t a1)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "__xpcseq", *(a1 + 56));
  xpc_connection_send_message(*(a1 + 40), *(a1 + 32));
  if (_shouldLogBlock && (*(_shouldLogBlock + 16))())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    _XPCLog(7, @"%@ Sent reply to request.", v2, v3, v4, v5, v6, v7, WeakRetained);
  }
}

@end