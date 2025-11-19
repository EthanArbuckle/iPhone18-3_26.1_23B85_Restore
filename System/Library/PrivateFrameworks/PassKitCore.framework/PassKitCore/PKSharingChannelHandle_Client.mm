@interface PKSharingChannelHandle_Client
+ (id)createHandleForDescriptor:(id)a3 queue:(id)a4;
+ (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5;
+ (void)descriptorsForAccountDevices:(id)a3;
+ (void)terminateProximityChannelForGroup:(id)a3;
- (id)_fetchTransportIdentifier;
- (id)_initWithQueue:(id)a3;
- (id)transportIdentifier;
- (void)attachWithCompletion:(id)a3;
- (void)closeWithCompletion:(id)a3;
- (void)didReceiveMessages:(id)a3 reply:(id)a4;
- (void)didReceiveUpdatedTransportIdentifier:(id)a3 reply:(id)a4;
- (void)fetchHandleTransferToken:(id)a3;
- (void)invalidateWithRemoteWithCompletion:(id)a3;
- (void)markMessageAsHandled:(id)a3;
- (void)pingWithCompletion:(id)a3;
- (void)relinquishWithCompletion:(id)a3;
- (void)remoteDeviceInformation:(id)a3;
- (void)sendMessage:(id)a3 completion:(id)a4;
- (void)startProximityAdvertisementOfType:(unint64_t)a3 completion:(id)a4;
- (void)startProximityDetectionForAdvertisement:(id)a3 completion:(id)a4;
@end

@implementation PKSharingChannelHandle_Client

+ (id)createHandleForDescriptor:(id)a3 queue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[PKSharingChannelHandle_Client alloc] _initWithQueue:v6];
  v8 = [v7 _synchronousRemoteObjectProxyWithErrorHandler:0];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__PKSharingChannelHandle_Client_createHandleForDescriptor_queue___block_invoke;
  v13[3] = &unk_1E79CA7B0;
  v13[4] = &v14;
  [v8 configureHandleWithDescriptor:v5 completion:v13];
  if (v15[3])
  {
    v9 = [v7 _fetchTransportIdentifier];
    v10 = v7[16];
    v7[16] = v9;

    v11 = v7;
  }

  else
  {
    [v7 invalidate];
    v11 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v11;
}

- (id)_initWithQueue:(id)a3
{
  v11.receiver = self;
  v11.super_class = PKSharingChannelHandle_Client;
  v3 = [(PKSharingChannelHandle *)&v11 _initWithQueue:a3];
  v4 = v3;
  if (v3)
  {
    v3[30] = 0;
    v5 = [PKXPCService alloc];
    v6 = PDSharingChannelServiceInterface_Server();
    v7 = PKSharingChannelServiceInterface_Client();
    v8 = [(PKXPCService *)v5 initWithMachServiceName:@"com.apple.passd.sharing-channel" remoteObjectInterface:v6 exportedObjectInterface:v7 exportedObject:v4];
    v9 = v4[14];
    v4[14] = v8;

    [v4[14] setDelegate:v4];
  }

  return v4;
}

- (void)pingWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__PKSharingChannelHandle_Client_pingWithCompletion___block_invoke;
    v10[3] = &unk_1E79E0050;
    v10[4] = self;
    v6 = v4;
    v12 = v6;
    v11 = v5;
    v7 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__PKSharingChannelHandle_Client_pingWithCompletion___block_invoke_3;
    v8[3] = &unk_1E79C4568;
    v8[4] = self;
    v9 = v6;
    [v7 pingWithCompletion:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)attachWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__PKSharingChannelHandle_Client_attachWithCompletion___block_invoke;
    v10[3] = &unk_1E79E0050;
    v10[4] = self;
    v6 = v4;
    v12 = v6;
    v11 = v5;
    v7 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__PKSharingChannelHandle_Client_attachWithCompletion___block_invoke_3;
    v8[3] = &unk_1E79C4568;
    v8[4] = self;
    v9 = v6;
    [v7 attachWithCompletion:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)sendMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke;
    v13[3] = &unk_1E79E0050;
    v13[4] = self;
    v9 = v7;
    v15 = v9;
    v14 = v8;
    v10 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __56__PKSharingChannelHandle_Client_sendMessage_completion___block_invoke_3;
    v11[3] = &unk_1E79C4568;
    v11[4] = self;
    v12 = v9;
    [v10 sendMessage:v6 completion:v11];
  }

  else if (v7)
  {
    (*(v7 + 2))(v7, 0, 0);
  }
}

- (void)closeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke;
    v10[3] = &unk_1E79E0050;
    v10[4] = self;
    v6 = v4;
    v12 = v6;
    v11 = v5;
    v7 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__PKSharingChannelHandle_Client_closeWithCompletion___block_invoke_3;
    v8[3] = &unk_1E79C4568;
    v8[4] = self;
    v9 = v6;
    [v7 closeWithCompletion:v8];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)relinquishWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke;
    v10[3] = &unk_1E79E0050;
    v10[4] = self;
    v6 = v4;
    v12 = v6;
    v11 = v5;
    v7 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__PKSharingChannelHandle_Client_relinquishWithCompletion___block_invoke_3;
    v8[3] = &unk_1E79C4568;
    v8[4] = self;
    v9 = v6;
    [v7 relinquishWithCompletion:v8];
  }

  else if (v4)
  {
    (*(v4 + 2))(v4, 0, 0);
  }
}

- (void)markMessageAsHandled:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  v6 = v5;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PKSharingChannelHandle_Client_markMessageAsHandled___block_invoke;
    v11[3] = &unk_1E79C7D08;
    v7 = v5;
    v12 = v7;
    v8 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v11];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __54__PKSharingChannelHandle_Client_markMessageAsHandled___block_invoke_2;
    v9[3] = &unk_1E79C4E28;
    v10 = v7;
    [v8 markMessageAsHandled:v4 completion:v9];
  }
}

- (void)invalidateWithRemoteWithCompletion:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__PKSharingChannelHandle_Client_invalidateWithRemoteWithCompletion___block_invoke;
  v10[3] = &unk_1E79C4450;
  v5 = v4;
  v11 = v5;
  v6 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__PKSharingChannelHandle_Client_invalidateWithRemoteWithCompletion___block_invoke_2;
  v8[3] = &unk_1E79C4428;
  v9 = v5;
  v7 = v5;
  [v6 invalidateFromRemoteWithReply:v8];
}

- (void)fetchHandleTransferToken:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertionAllowWhileTransferring:1];
  v6 = v5;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__PKSharingChannelHandle_Client_fetchHandleTransferToken___block_invoke;
    v12[3] = &unk_1E79C7D08;
    v7 = v5;
    v13 = v7;
    v8 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v12];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__PKSharingChannelHandle_Client_fetchHandleTransferToken___block_invoke_2;
    v9[3] = &unk_1E79C4AE0;
    v11 = v4;
    v10 = v7;
    [v8 fetchHandleTransferToken:v9];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)remoteDeviceInformation:(id)a3
{
  v4 = a3;
  v5 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v5)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__PKSharingChannelHandle_Client_remoteDeviceInformation___block_invoke;
    v10[3] = &unk_1E79E0050;
    v10[4] = self;
    v6 = v4;
    v12 = v6;
    v11 = v5;
    v7 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __57__PKSharingChannelHandle_Client_remoteDeviceInformation___block_invoke_3;
    v8[3] = &unk_1E79E0078;
    v8[4] = self;
    v9 = v6;
    [v7 remoteDeviceInformation:v8];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (id)transportIdentifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSString *)self->_transportIdentifier copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_fetchTransportIdentifier
{
  v2 = [(PKSharingChannelHandle_Client *)self _synchronousRemoteObjectProxyWithErrorHandler:0];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__144;
  v14 = __Block_byref_object_dispose__145;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PKSharingChannelHandle_Client__fetchTransportIdentifier__block_invoke;
  v9[3] = &unk_1E79CA878;
  v9[4] = &v10;
  [v2 transportIdentifierWithCompletion:v9];
  v3 = v11[5];
  if (!v3)
  {
    v4 = PKLogFacilityTypeGetObject(0x23uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1AD337000, v4, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to get transport identifier!", v8, 2u);
    }

    v5 = v11[5];
    v11[5] = @"UNKNOWN";

    v3 = v11[5];
  }

  v6 = v3;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (void)startProximityAdvertisementOfType:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__PKSharingChannelHandle_Client_startProximityAdvertisementOfType_completion___block_invoke;
    v12[3] = &unk_1E79C4C70;
    v12[4] = self;
    v8 = v6;
    v13 = v8;
    v9 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __78__PKSharingChannelHandle_Client_startProximityAdvertisementOfType_completion___block_invoke_3;
    v10[3] = &unk_1E79E00A0;
    v10[4] = self;
    v11 = v8;
    [v9 startProximityAdvertisementOfType:a3 completion:v10];
  }

  else
  {
    (*(v6 + 2))(v6, 0);
  }
}

- (void)startProximityDetectionForAdvertisement:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(PKSharingChannelHandle *)self createActionAssertion];
  if (v8)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PKSharingChannelHandle_Client_startProximityDetectionForAdvertisement_completion___block_invoke;
    v13[3] = &unk_1E79C4C70;
    v13[4] = self;
    v9 = v7;
    v14 = v9;
    v10 = [(PKSharingChannelHandle_Client *)self _remoteObjectProxyWithErrorHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __84__PKSharingChannelHandle_Client_startProximityDetectionForAdvertisement_completion___block_invoke_3;
    v11[3] = &unk_1E79E00C8;
    v11[4] = self;
    v12 = v9;
    [v10 startProximityDetectionForAdvertisement:v6 completion:v11];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

+ (void)descriptorsForAccountDevices:(id)a3
{
  v3 = a3;
  v4 = [PKSharingChannelHandle_Client alloc];
  v5 = [(PKSharingChannelHandle_Client *)v4 _initWithQueue:MEMORY[0x1E69E96A0]];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 128);
    *(v5 + 128) = @"XPC-Helper";

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__PKSharingChannelHandle_Client_descriptorsForAccountDevices___block_invoke;
    v14[3] = &unk_1E79C4C70;
    v8 = v6;
    v15 = v8;
    v9 = v3;
    v16 = v9;
    v10 = [v8 _remoteObjectProxyWithErrorHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PKSharingChannelHandle_Client_descriptorsForAccountDevices___block_invoke_3;
    v11[3] = &unk_1E79C4838;
    v12 = v8;
    v13 = v9;
    [v10 descriptorsForAccountDevices:v11];
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

+ (void)bootstrapProximityChannelWithTemplateSession:(id)a3 group:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PKSharingChannelHandle_Client alloc];
  v11 = [(PKSharingChannelHandle_Client *)v10 _initWithQueue:MEMORY[0x1E69E96A0]];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 128);
    *(v11 + 128) = @"XPC-Helper";

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __95__PKSharingChannelHandle_Client_bootstrapProximityChannelWithTemplateSession_group_completion___block_invoke;
    v20[3] = &unk_1E79C4C70;
    v14 = v12;
    v21 = v14;
    v15 = v9;
    v22 = v15;
    v16 = [v14 _remoteObjectProxyWithErrorHandler:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __95__PKSharingChannelHandle_Client_bootstrapProximityChannelWithTemplateSession_group_completion___block_invoke_3;
    v17[3] = &unk_1E79C4568;
    v18 = v14;
    v19 = v15;
    [v16 bootstrapProximityChannelWithTemplateSession:v7 group:v8 completion:v17];
  }

  else
  {
    (*(v9 + 2))(v9, 0, 0);
  }
}

+ (void)terminateProximityChannelForGroup:(id)a3
{
  v8 = a3;
  v3 = [PKSharingChannelHandle_Client alloc];
  v4 = [(PKSharingChannelHandle_Client *)v3 _initWithQueue:MEMORY[0x1E69E96A0]];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 128);
    *(v4 + 128) = @"XPC-Helper";

    v7 = [v5 _remoteObjectProxy];
    [v7 terminateProximityChannelForGroup:v8];
  }
}

- (void)didReceiveMessages:(id)a3 reply:(id)a4
{
  v6.receiver = self;
  v6.super_class = PKSharingChannelHandle_Client;
  v5 = a4;
  [(PKSharingChannelHandle *)&v6 didReceiveMessages:a3];
  v5[2](v5);
}

- (void)didReceiveUpdatedTransportIdentifier:(id)a3 reply:(id)a4
{
  v9 = a4;
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  v7 = [v6 copy];

  transportIdentifier = self->_transportIdentifier;
  self->_transportIdentifier = v7;

  os_unfair_lock_unlock(&self->_lock);
  v9[2]();
}

@end