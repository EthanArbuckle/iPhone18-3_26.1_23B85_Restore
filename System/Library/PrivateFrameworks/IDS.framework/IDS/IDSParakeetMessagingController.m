@interface IDSParakeetMessagingController
- (IDSParakeetMessagingController)init;
- (IDSParakeetMessagingController)initWithIPServerMessagingController:(id)a3 offGridServerMessagingController:(id)a4 queue:(id)a5;
- (IDSParakeetMessagingControllerDelegate)delegate;
- (void)_noteAckTimerFiredForIdentifier:(id)a3;
- (void)_noteAckedMessageWithMessageIdentifier:(id)a3;
- (void)_noteReceivedStopResponseForIdentifier:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)_noteSentStopForIdentifier:(id)a3 success:(BOOL)a4 error:(id)a5;
- (void)cancelParakeetSessionStopWithUUID:(id)a3 completion:(id)a4;
- (void)controller:(id)a3 receivedIncomingMessageData:(id)a4 context:(id)a5;
- (void)sendCertifiedDeliveryReceipt:(id)a3;
- (void)stopParakeetSessionWithUUID:(id)a3 completion:(id)a4;
@end

@implementation IDSParakeetMessagingController

- (IDSParakeetMessagingController)init
{
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0A29C78, 0}];
  v4 = [[IDSServerMessagingController alloc] initWithTopic:@"com.apple.private.rupert.parakeet.ip" commands:v3];
  v5 = [[IDSServerMessagingController alloc] initWithTopic:@"com.apple.private.rupert.parakeet"];
  v6 = +[IDSInternalQueueController sharedInstance];
  v7 = [v6 queue];
  v8 = [(IDSParakeetMessagingController *)self initWithIPServerMessagingController:v4 offGridServerMessagingController:v5 queue:v7];

  return v8;
}

- (IDSParakeetMessagingController)initWithIPServerMessagingController:(id)a3 offGridServerMessagingController:(id)a4 queue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = IDSParakeetMessagingController;
  v12 = [(IDSParakeetMessagingController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_IPServerMessagingController, a3);
    [(IDSServerMessagingController *)v13->_IPServerMessagingController addDelegate:v13];
    objc_storeStrong(&v13->_offGridServerMessagingController, a4);
    [(IDSServerMessagingController *)v13->_offGridServerMessagingController addDelegate:v13];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stopStateMachineByIdentifier = v13->_stopStateMachineByIdentifier;
    v13->_stopStateMachineByIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    incomingMessagesWithoutAcks = v13->_incomingMessagesWithoutAcks;
    v13->_incomingMessagesWithoutAcks = v16;

    objc_storeStrong(&v13->_queue, a5);
  }

  return v13;
}

- (void)_noteSentStopForIdentifier:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (!v11)
  {
    v12 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B40C7C();
    }

    goto LABEL_12;
  }

  if ([v11 state])
  {
    v12 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_195B40BD0();
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!a4)
  {
    [v11 setState:5];
    v13 = [v11 messageHandler];

    if (v13)
    {
      v14 = [v11 messageHandler];
      (v14)[2](v14, 0, v9);
    }

    v12 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
    [v12 removeObjectForKey:v8];
    goto LABEL_12;
  }

  [v11 setState:1];
LABEL_13:
}

- (void)_noteAckTimerFiredForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [v6 state];
    v8 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7 == 4)
    {
      if (v9)
      {
        sub_195B40D90();
      }

      [v6 setState:1];
      [(IDSParakeetMessagingController *)self _noteReceivedStopResponseForIdentifier:v4 success:1 error:0];
    }

    else
    {
      if (v9)
      {
        sub_195B40CE4();
      }
    }
  }

  else
  {
    v10 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_195B40E28();
    }
  }
}

- (void)_noteReceivedStopResponseForIdentifier:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  v11 = [v10 objectForKeyedSubscript:v8];

  if (!v11)
  {
    v20 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_195B40F44();
    }

    goto LABEL_13;
  }

  if ([v11 state] && objc_msgSend(v11, "state") != 1)
  {
    v20 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_195B40E90(v8, v11);
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    [v11 setState:5];
    v21 = [v11 messageHandler];

    if (v21)
    {
      v22 = [v11 messageHandler];
      (v22)[2](v22, 0, v9);
    }

    v20 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
    [v20 removeObjectForKey:v8];
LABEL_13:

    goto LABEL_14;
  }

  [v11 setState:2];
  v12 = dispatch_group_create();
  objc_initWeak(location, self);
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v47 = 1;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3032000000;
  v44[3] = sub_195A00804;
  v44[4] = sub_195A03DA8;
  v45 = 0;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v43 = 1;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_195A00804;
  v40[4] = sub_195A03DA8;
  v41 = 0;
  dispatch_group_enter(v12);
  v13 = [(IDSParakeetMessagingController *)self IPServerMessagingController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_195B0A600;
  v35[3] = &unk_1E7442FB0;
  v14 = v8;
  v36 = v14;
  v38 = v40;
  v39 = v42;
  v15 = v12;
  v37 = v15;
  [v13 sendServerStorageFetchWithCompletion:v35];

  dispatch_group_enter(v15);
  v16 = [(IDSParakeetMessagingController *)self offGridServerMessagingController];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_195B0A724;
  v30[3] = &unk_1E7442FB0;
  v17 = v14;
  v31 = v17;
  v33 = v44;
  v34 = v46;
  v18 = v15;
  v32 = v18;
  [v16 sendServerStorageFetchWithCompletion:v30];

  v19 = [(IDSParakeetMessagingController *)self queue];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_195B0A848;
  v23[3] = &unk_1E7442FD8;
  objc_copyWeak(&v29, location);
  v25 = v46;
  v26 = v42;
  v27 = v44;
  v28 = v40;
  v24 = v17;
  dispatch_group_notify(v18, v19, v23);

  objc_destroyWeak(&v29);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v46, 8);
  objc_destroyWeak(location);

LABEL_14:
}

- (void)_noteAckedMessageWithMessageIdentifier:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [(IDSParakeetMessagingController *)self incomingMessagesWithoutAcks];
    [v5 removeObject:v4];

    v6 = [(IDSParakeetMessagingController *)self incomingMessagesWithoutAcks];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [MEMORY[0x1E69A5270] IDSServerMessaging];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_195B411DC(self);
      }
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v9 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
      v8 = [v9 copy];

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v24 = v4;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
            v16 = [v15 objectForKeyedSubscript:v14];

            v17 = [v16 state];
            v18 = [MEMORY[0x1E69A5270] IDSServerMessaging];
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
            if (v17 == 4)
            {
              if (v19)
              {
                *buf = 138412290;
                v30 = v14;
                _os_log_error_impl(&dword_1959FF000, v18, OS_LOG_TYPE_ERROR, "_noteAckedMessage - all messages have been acked, completing {identifier: %@}", buf, 0xCu);
              }

              [v16 setState:5];
              v20 = [v16 messageHandler];

              if (v20)
              {
                v21 = [v16 messageHandler];
                v21[2](v21, 1, 0);
              }

              v18 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
              [v18 removeObjectForKey:v14];
            }

            else if (v19)
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "state")}];
              *buf = 138412546;
              v30 = v14;
              v31 = 2112;
              v32 = v22;
              _os_log_error_impl(&dword_1959FF000, v18, OS_LOG_TYPE_ERROR, "_noteSentCancel - state machine not in expected state {identifier: %@, stateMachine.state: %@}", buf, 0x16u);
            }
          }

          v11 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v11);
        v4 = v24;
      }
    }
  }

  else
  {
    v8 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195B41268(v8);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)stopParakeetSessionWithUUID:(id)a3 completion:(id)a4
{
  v29[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 UUIDString];
  v9 = objc_alloc_init(IDSServerMessagingOptions);
  [(IDSServerMessagingOptions *)v9 setTimeout:&unk_1F0A29CD0];
  [(IDSServerMessagingOptions *)v9 setCommand:&unk_1F0A29C78];
  [(IDSServerMessagingOptions *)v9 setCancelOnClientCrash:MEMORY[0x1E695E118]];
  v28 = @"pmt";
  v29[0] = &unk_1F0A29C90;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  [(IDSServerMessagingOptions *)v9 setAdditionalTopLevelFields:v10];

  v11 = objc_alloc_init(IDSParakeetMessagingStopStateMachine);
  [(IDSParakeetMessagingStopStateMachine *)v11 setState:0];
  [(IDSParakeetMessagingStopStateMachine *)v11 setMessageHandler:v7];
  [(IDSParakeetMessagingStopStateMachine *)v11 setIdentifier:v8];
  v12 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  [v12 setObject:v11 forKey:v8];

  v13 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v23 = self;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "Client triggered stop parakeet session { self: %@, guid: %@, options: %@}", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  v14 = [(IDSParakeetMessagingController *)self IPServerMessagingController];
  v21 = v8;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195B0B53C;
  v18[3] = &unk_1E7443028;
  objc_copyWeak(&v20, buf);
  v15 = v8;
  v19 = v15;
  [v14 sendMessageData:0 withOptions:v9 identifier:&v21 completion:v18];
  v16 = v21;

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancelParakeetSessionStopWithUUID:(id)a3 completion:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 UUIDString];
  v9 = objc_alloc_init(IDSParakeetMessagingStopStateMachine);
  [(IDSParakeetMessagingStopStateMachine *)v9 setState:3];
  [(IDSParakeetMessagingStopStateMachine *)v9 setMessageHandler:v7];
  [(IDSParakeetMessagingStopStateMachine *)v9 setIdentifier:v8];
  v10 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  [v10 setObject:v9 forKey:v8];

  v11 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v6;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Client triggered cancel of stopped parakeet session { self: %@, guid: %@ }", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v12 = [(IDSParakeetMessagingController *)self IPServerMessagingController];
  v13 = [v6 UUIDString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195B0B8A0;
  v16[3] = &unk_1E7443050;
  objc_copyWeak(&v18, buf);
  v14 = v6;
  v17 = v14;
  [v12 cancelMessageWithIdentifier:v13 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)sendCertifiedDeliveryReceipt:(id)a3
{
  v4 = a3;
  v5 = [v4 service];
  if ([v5 isEqualToString:@"com.apple.private.rupert.parakeet.ip"])
  {
    v6 = [(IDSParakeetMessagingController *)self IPServerMessagingController];
LABEL_5:
    v7 = v6;
    [v6 sendCertifiedDeliveryReceipt:v4];
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"com.apple.private.rupert.parakeet"])
  {
    v6 = [(IDSParakeetMessagingController *)self offGridServerMessagingController];
    goto LABEL_5;
  }

  v7 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_195B412AC();
  }

LABEL_8:

  v8 = [(IDSParakeetMessagingController *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B0BB20;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  dispatch_async(v8, v10);
}

- (void)controller:(id)a3 receivedIncomingMessageData:(id)a4 context:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218242;
    v24 = self;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "Parakeet client received incoming data { self: %p, context: %@ }", &v23, 0x16u);
  }

  v10 = [(IDSParakeetMessagingController *)v8 command];
  v11 = [v10 integerValue];

  if (v11 == 176)
  {
    v12 = [(IDSParakeetMessagingController *)self IPServerMessagingController];
    v13 = [(IDSParakeetMessagingController *)v8 certifiedDeliveryContext];
    [v12 sendCertifiedDeliveryReceipt:v13];

    v14 = [(IDSParakeetMessagingController *)v8 identifier];
    [(IDSParakeetMessagingController *)self _noteReceivedStopResponseForIdentifier:v14 success:1 error:0];
  }

  else
  {
    v15 = [(IDSParakeetMessagingController *)v8 identifier];
    if (v15)
    {
      v16 = v15;
      v17 = [(IDSParakeetMessagingController *)v8 certifiedDeliveryContext];

      if (v17)
      {
        v18 = [(IDSParakeetMessagingController *)self incomingMessagesWithoutAcks];
        v19 = [(IDSParakeetMessagingController *)v8 identifier];
        [v18 addObject:v19];
      }
    }

    v14 = [(IDSParakeetMessagingController *)self delegate];
    v20 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    v21 = v20;
    if (v14)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        v24 = v8;
        v25 = 2048;
        v26 = v14;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Forwarding server message to delegate { context: %@, delegate: %p }", &v23, 0x16u);
      }

      [(IDSParakeetMessagingController *)v14 controller:self receivedIncomingMessageData:v7 context:v8];
    }

    else
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        sub_195B41330();
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (IDSParakeetMessagingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end