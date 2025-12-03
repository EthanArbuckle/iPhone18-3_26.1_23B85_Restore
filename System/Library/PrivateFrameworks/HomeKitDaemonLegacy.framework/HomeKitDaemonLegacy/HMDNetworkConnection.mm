@interface HMDNetworkConnection
- (HMDNetworkConnection)initWithEndpoint:(id)endpoint parameters:(id)parameters;
- (void)cancel;
- (void)receiveMessageWithCompletion:(id)completion;
- (void)receiveWithMinLength:(unsigned int)length maxLength:(unsigned int)maxLength completion:(id)completion;
- (void)resetTrafficClass:(unint64_t)class;
- (void)sendData:(id)data context:(id)context isComplete:(BOOL)complete completion:(id)completion;
- (void)setQueue:(id)queue;
- (void)setReadCloseHandler:(id)handler;
- (void)setStateChangedHandler:(id)handler;
- (void)start;
@end

@implementation HMDNetworkConnection

- (void)setQueue:(id)queue
{
  objc_storeStrong(&self->_queue, queue);
  queueCopy = queue;
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_set_queue(nwConnection, queueCopy);
}

- (void)resetTrafficClass:(unint64_t)class
{
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_reset_traffic_class();
}

- (void)setReadCloseHandler:(id)handler
{
  handlerCopy = handler;
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_set_read_close_handler();
}

- (void)setStateChangedHandler:(id)handler
{
  handlerCopy = handler;
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  v6 = nwConnection;
  if (handlerCopy)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__HMDNetworkConnection_setStateChangedHandler___block_invoke;
    handler[3] = &unk_279729C50;
    v8 = handlerCopy;
    nw_connection_set_state_changed_handler(v6, handler);
  }

  else
  {
    nw_connection_set_state_changed_handler(nwConnection, 0);
  }
}

void __47__HMDNetworkConnection_setStateChangedHandler___block_invoke(uint64_t a1, uint64_t a2, nw_error_t error)
{
  v4 = *(a1 + 32);
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v5 = error;
  (*(v4 + 16))(v4, a2);
}

- (void)receiveMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __53__HMDNetworkConnection_receiveMessageWithCompletion___block_invoke;
  completion[3] = &unk_279729C28;
  v8 = completionCopy;
  v6 = completionCopy;
  nw_connection_receive_message(nwConnection, completion);
}

void __53__HMDNetworkConnection_receiveMessageWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v11 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if (a5)
  {
    a5 = nw_error_copy_cf_error(a5);
  }

  (*(v10 + 16))(v10, v11, v9, a4, a5);
}

- (void)receiveWithMinLength:(unsigned int)length maxLength:(unsigned int)maxLength completion:(id)completion
{
  completionCopy = completion;
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __66__HMDNetworkConnection_receiveWithMinLength_maxLength_completion___block_invoke;
  completion[3] = &unk_279729C28;
  v12 = completionCopy;
  v10 = completionCopy;
  nw_connection_receive(nwConnection, length, maxLength, completion);
}

void __66__HMDNetworkConnection_receiveWithMinLength_maxLength_completion___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, NSObject *a5)
{
  v11 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  if (a5)
  {
    a5 = nw_error_copy_cf_error(a5);
  }

  (*(v10 + 16))(v10, v11, v9, a4, a5);
}

- (void)sendData:(id)data context:(id)context isComplete:(BOOL)complete completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  dataCopy = data;
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __63__HMDNetworkConnection_sendData_context_isComplete_completion___block_invoke;
  completion[3] = &unk_279729C00;
  v16 = completionCopy;
  v14 = completionCopy;
  nw_connection_send(nwConnection, dataCopy, contextCopy, complete, completion);
}

void __63__HMDNetworkConnection_sendData_context_isComplete_completion___block_invoke(uint64_t a1, nw_error_t error)
{
  v2 = *(a1 + 32);
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v3 = error;
  (*(v2 + 16))(v2);
}

- (void)cancel
{
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_cancel(nwConnection);
}

- (void)start
{
  nwConnection = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_start(nwConnection);
}

- (HMDNetworkConnection)initWithEndpoint:(id)endpoint parameters:(id)parameters
{
  endpointCopy = endpoint;
  parametersCopy = parameters;
  v12.receiver = self;
  v12.super_class = HMDNetworkConnection;
  v8 = [(HMDNetworkConnection *)&v12 init];
  if (v8)
  {
    v9 = nw_connection_create(endpointCopy, parametersCopy);
    nwConnection = v8->_nwConnection;
    v8->_nwConnection = v9;
  }

  return v8;
}

@end