@interface HMDNetworkConnection
- (HMDNetworkConnection)initWithEndpoint:(id)a3 parameters:(id)a4;
- (void)cancel;
- (void)receiveMessageWithCompletion:(id)a3;
- (void)receiveWithMinLength:(unsigned int)a3 maxLength:(unsigned int)a4 completion:(id)a5;
- (void)resetTrafficClass:(unint64_t)a3;
- (void)sendData:(id)a3 context:(id)a4 isComplete:(BOOL)a5 completion:(id)a6;
- (void)setQueue:(id)a3;
- (void)setReadCloseHandler:(id)a3;
- (void)setStateChangedHandler:(id)a3;
- (void)start;
@end

@implementation HMDNetworkConnection

- (void)setQueue:(id)a3
{
  objc_storeStrong(&self->_queue, a3);
  v5 = a3;
  v6 = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_set_queue(v6, v5);
}

- (void)resetTrafficClass:(unint64_t)a3
{
  v3 = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_reset_traffic_class();
}

- (void)setReadCloseHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_set_read_close_handler();
}

- (void)setStateChangedHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkConnection *)self nwConnection];
  v6 = v5;
  if (v4)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __47__HMDNetworkConnection_setStateChangedHandler___block_invoke;
    handler[3] = &unk_27867E5E0;
    v8 = v4;
    nw_connection_set_state_changed_handler(v6, handler);
  }

  else
  {
    nw_connection_set_state_changed_handler(v5, 0);
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

- (void)receiveMessageWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(HMDNetworkConnection *)self nwConnection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __53__HMDNetworkConnection_receiveMessageWithCompletion___block_invoke;
  completion[3] = &unk_27867E5B8;
  v8 = v4;
  v6 = v4;
  nw_connection_receive_message(v5, completion);
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

- (void)receiveWithMinLength:(unsigned int)a3 maxLength:(unsigned int)a4 completion:(id)a5
{
  v8 = a5;
  v9 = [(HMDNetworkConnection *)self nwConnection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __66__HMDNetworkConnection_receiveWithMinLength_maxLength_completion___block_invoke;
  completion[3] = &unk_27867E5B8;
  v12 = v8;
  v10 = v8;
  nw_connection_receive(v9, a3, a4, completion);
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

- (void)sendData:(id)a3 context:(id)a4 isComplete:(BOOL)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [(HMDNetworkConnection *)self nwConnection];
  completion[0] = MEMORY[0x277D85DD0];
  completion[1] = 3221225472;
  completion[2] = __63__HMDNetworkConnection_sendData_context_isComplete_completion___block_invoke;
  completion[3] = &unk_27867E590;
  v16 = v10;
  v14 = v10;
  nw_connection_send(v13, v12, v11, a5, completion);
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
  v2 = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_cancel(v2);
}

- (void)start
{
  v2 = [(HMDNetworkConnection *)self nwConnection];
  nw_connection_start(v2);
}

- (HMDNetworkConnection)initWithEndpoint:(id)a3 parameters:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HMDNetworkConnection;
  v8 = [(HMDNetworkConnection *)&v12 init];
  if (v8)
  {
    v9 = nw_connection_create(v6, v7);
    nwConnection = v8->_nwConnection;
    v8->_nwConnection = v9;
  }

  return v8;
}

@end