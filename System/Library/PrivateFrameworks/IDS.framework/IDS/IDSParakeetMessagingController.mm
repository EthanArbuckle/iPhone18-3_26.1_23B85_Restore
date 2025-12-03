@interface IDSParakeetMessagingController
- (IDSParakeetMessagingController)init;
- (IDSParakeetMessagingController)initWithIPServerMessagingController:(id)controller offGridServerMessagingController:(id)messagingController queue:(id)queue;
- (IDSParakeetMessagingControllerDelegate)delegate;
- (void)_noteAckTimerFiredForIdentifier:(id)identifier;
- (void)_noteAckedMessageWithMessageIdentifier:(id)identifier;
- (void)_noteReceivedStopResponseForIdentifier:(id)identifier success:(BOOL)success error:(id)error;
- (void)_noteSentStopForIdentifier:(id)identifier success:(BOOL)success error:(id)error;
- (void)cancelParakeetSessionStopWithUUID:(id)d completion:(id)completion;
- (void)controller:(id)controller receivedIncomingMessageData:(id)data context:(id)context;
- (void)sendCertifiedDeliveryReceipt:(id)receipt;
- (void)stopParakeetSessionWithUUID:(id)d completion:(id)completion;
@end

@implementation IDSParakeetMessagingController

- (IDSParakeetMessagingController)init
{
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F0A29C78, 0}];
  v4 = [[IDSServerMessagingController alloc] initWithTopic:@"com.apple.private.rupert.parakeet.ip" commands:v3];
  v5 = [[IDSServerMessagingController alloc] initWithTopic:@"com.apple.private.rupert.parakeet"];
  v6 = +[IDSInternalQueueController sharedInstance];
  queue = [v6 queue];
  v8 = [(IDSParakeetMessagingController *)self initWithIPServerMessagingController:v4 offGridServerMessagingController:v5 queue:queue];

  return v8;
}

- (IDSParakeetMessagingController)initWithIPServerMessagingController:(id)controller offGridServerMessagingController:(id)messagingController queue:(id)queue
{
  controllerCopy = controller;
  messagingControllerCopy = messagingController;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = IDSParakeetMessagingController;
  v12 = [(IDSParakeetMessagingController *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_IPServerMessagingController, controller);
    [(IDSServerMessagingController *)v13->_IPServerMessagingController addDelegate:v13];
    objc_storeStrong(&v13->_offGridServerMessagingController, messagingController);
    [(IDSServerMessagingController *)v13->_offGridServerMessagingController addDelegate:v13];
    v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    stopStateMachineByIdentifier = v13->_stopStateMachineByIdentifier;
    v13->_stopStateMachineByIdentifier = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    incomingMessagesWithoutAcks = v13->_incomingMessagesWithoutAcks;
    v13->_incomingMessagesWithoutAcks = v16;

    objc_storeStrong(&v13->_queue, queue);
  }

  return v13;
}

- (void)_noteSentStopForIdentifier:(id)identifier success:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  stopStateMachineByIdentifier = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  v11 = [stopStateMachineByIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v11)
  {
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
    {
      sub_195B40C7C();
    }

    goto LABEL_12;
  }

  if ([v11 state])
  {
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
    {
      sub_195B40BD0();
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!success)
  {
    [v11 setState:5];
    messageHandler = [v11 messageHandler];

    if (messageHandler)
    {
      messageHandler2 = [v11 messageHandler];
      (messageHandler2)[2](messageHandler2, 0, errorCopy);
    }

    iDSServerMessaging = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
    [iDSServerMessaging removeObjectForKey:identifierCopy];
    goto LABEL_12;
  }

  [v11 setState:1];
LABEL_13:
}

- (void)_noteAckTimerFiredForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  stopStateMachineByIdentifier = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  v6 = [stopStateMachineByIdentifier objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    state = [v6 state];
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    v9 = os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR);
    if (state == 4)
    {
      if (v9)
      {
        sub_195B40D90();
      }

      [v6 setState:1];
      [(IDSParakeetMessagingController *)self _noteReceivedStopResponseForIdentifier:identifierCopy success:1 error:0];
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
    iDSServerMessaging2 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging2, OS_LOG_TYPE_ERROR))
    {
      sub_195B40E28();
    }
  }
}

- (void)_noteReceivedStopResponseForIdentifier:(id)identifier success:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  stopStateMachineByIdentifier = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  v11 = [stopStateMachineByIdentifier objectForKeyedSubscript:identifierCopy];

  if (!v11)
  {
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
    {
      sub_195B40F44();
    }

    goto LABEL_13;
  }

  if ([v11 state] && objc_msgSend(v11, "state") != 1)
  {
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
    {
      sub_195B40E90(identifierCopy, v11);
    }

    goto LABEL_13;
  }

  if (!success)
  {
    [v11 setState:5];
    messageHandler = [v11 messageHandler];

    if (messageHandler)
    {
      messageHandler2 = [v11 messageHandler];
      (messageHandler2)[2](messageHandler2, 0, errorCopy);
    }

    iDSServerMessaging = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
    [iDSServerMessaging removeObjectForKey:identifierCopy];
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
  iPServerMessagingController = [(IDSParakeetMessagingController *)self IPServerMessagingController];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = sub_195B0A600;
  v35[3] = &unk_1E7442FB0;
  v14 = identifierCopy;
  v36 = v14;
  v38 = v40;
  v39 = v42;
  v15 = v12;
  v37 = v15;
  [iPServerMessagingController sendServerStorageFetchWithCompletion:v35];

  dispatch_group_enter(v15);
  offGridServerMessagingController = [(IDSParakeetMessagingController *)self offGridServerMessagingController];
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
  [offGridServerMessagingController sendServerStorageFetchWithCompletion:v30];

  queue = [(IDSParakeetMessagingController *)self queue];
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
  dispatch_group_notify(v18, queue, v23);

  objc_destroyWeak(&v29);
  _Block_object_dispose(v40, 8);

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(v44, 8);

  _Block_object_dispose(v46, 8);
  objc_destroyWeak(location);

LABEL_14:
}

- (void)_noteAckedMessageWithMessageIdentifier:(id)identifier
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    incomingMessagesWithoutAcks = [(IDSParakeetMessagingController *)self incomingMessagesWithoutAcks];
    [incomingMessagesWithoutAcks removeObject:identifierCopy];

    incomingMessagesWithoutAcks2 = [(IDSParakeetMessagingController *)self incomingMessagesWithoutAcks];
    v7 = [incomingMessagesWithoutAcks2 count];

    if (v7)
    {
      iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
      if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
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
      stopStateMachineByIdentifier = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
      iDSServerMessaging = [stopStateMachineByIdentifier copy];

      v10 = [iDSServerMessaging countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v24 = identifierCopy;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(iDSServerMessaging);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            stopStateMachineByIdentifier2 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
            v16 = [stopStateMachineByIdentifier2 objectForKeyedSubscript:v14];

            state = [v16 state];
            iDSServerMessaging2 = [MEMORY[0x1E69A5270] IDSServerMessaging];
            v19 = os_log_type_enabled(iDSServerMessaging2, OS_LOG_TYPE_ERROR);
            if (state == 4)
            {
              if (v19)
              {
                *buf = 138412290;
                v30 = v14;
                _os_log_error_impl(&dword_1959FF000, iDSServerMessaging2, OS_LOG_TYPE_ERROR, "_noteAckedMessage - all messages have been acked, completing {identifier: %@}", buf, 0xCu);
              }

              [v16 setState:5];
              messageHandler = [v16 messageHandler];

              if (messageHandler)
              {
                messageHandler2 = [v16 messageHandler];
                messageHandler2[2](messageHandler2, 1, 0);
              }

              iDSServerMessaging2 = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
              [iDSServerMessaging2 removeObjectForKey:v14];
            }

            else if (v19)
            {
              v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "state")}];
              *buf = 138412546;
              v30 = v14;
              v31 = 2112;
              v32 = v22;
              _os_log_error_impl(&dword_1959FF000, iDSServerMessaging2, OS_LOG_TYPE_ERROR, "_noteSentCancel - state machine not in expected state {identifier: %@, stateMachine.state: %@}", buf, 0x16u);
            }
          }

          v11 = [iDSServerMessaging countByEnumeratingWithState:&v25 objects:v33 count:16];
        }

        while (v11);
        identifierCopy = v24;
      }
    }
  }

  else
  {
    iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
    if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
    {
      sub_195B41268(iDSServerMessaging);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)stopParakeetSessionWithUUID:(id)d completion:(id)completion
{
  v29[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  uUIDString = [dCopy UUIDString];
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
  [(IDSParakeetMessagingStopStateMachine *)v11 setMessageHandler:completionCopy];
  [(IDSParakeetMessagingStopStateMachine *)v11 setIdentifier:uUIDString];
  stopStateMachineByIdentifier = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  [stopStateMachineByIdentifier setObject:v11 forKey:uUIDString];

  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v24 = 2112;
    v25 = uUIDString;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client triggered stop parakeet session { self: %@, guid: %@, options: %@}", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  iPServerMessagingController = [(IDSParakeetMessagingController *)self IPServerMessagingController];
  v21 = uUIDString;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195B0B53C;
  v18[3] = &unk_1E7443028;
  objc_copyWeak(&v20, buf);
  v15 = uUIDString;
  v19 = v15;
  [iPServerMessagingController sendMessageData:0 withOptions:v9 identifier:&v21 completion:v18];
  v16 = v21;

  objc_destroyWeak(&v20);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)cancelParakeetSessionStopWithUUID:(id)d completion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  uUIDString = [dCopy UUIDString];
  v9 = objc_alloc_init(IDSParakeetMessagingStopStateMachine);
  [(IDSParakeetMessagingStopStateMachine *)v9 setState:3];
  [(IDSParakeetMessagingStopStateMachine *)v9 setMessageHandler:completionCopy];
  [(IDSParakeetMessagingStopStateMachine *)v9 setIdentifier:uUIDString];
  stopStateMachineByIdentifier = [(IDSParakeetMessagingController *)self stopStateMachineByIdentifier];
  [stopStateMachineByIdentifier setObject:v9 forKey:uUIDString];

  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Client triggered cancel of stopped parakeet session { self: %@, guid: %@ }", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  iPServerMessagingController = [(IDSParakeetMessagingController *)self IPServerMessagingController];
  uUIDString2 = [dCopy UUIDString];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195B0B8A0;
  v16[3] = &unk_1E7443050;
  objc_copyWeak(&v18, buf);
  v14 = dCopy;
  v17 = v14;
  [iPServerMessagingController cancelMessageWithIdentifier:uUIDString2 completion:v16];

  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x1E69E9840];
}

- (void)sendCertifiedDeliveryReceipt:(id)receipt
{
  receiptCopy = receipt;
  service = [receiptCopy service];
  if ([service isEqualToString:@"com.apple.private.rupert.parakeet.ip"])
  {
    iPServerMessagingController = [(IDSParakeetMessagingController *)self IPServerMessagingController];
LABEL_5:
    iDSServerMessaging = iPServerMessagingController;
    [iPServerMessagingController sendCertifiedDeliveryReceipt:receiptCopy];
    goto LABEL_8;
  }

  if ([service isEqualToString:@"com.apple.private.rupert.parakeet"])
  {
    iPServerMessagingController = [(IDSParakeetMessagingController *)self offGridServerMessagingController];
    goto LABEL_5;
  }

  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_ERROR))
  {
    sub_195B412AC();
  }

LABEL_8:

  queue = [(IDSParakeetMessagingController *)self queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_195B0BB20;
  v10[3] = &unk_1E743EA30;
  v10[4] = self;
  v11 = receiptCopy;
  v9 = receiptCopy;
  dispatch_async(queue, v10);
}

- (void)controller:(id)controller receivedIncomingMessageData:(id)data context:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  contextCopy = context;
  iDSServerMessaging = [MEMORY[0x1E69A5270] IDSServerMessaging];
  if (os_log_type_enabled(iDSServerMessaging, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 134218242;
    selfCopy = self;
    v25 = 2112;
    v26 = contextCopy;
    _os_log_impl(&dword_1959FF000, iDSServerMessaging, OS_LOG_TYPE_DEFAULT, "Parakeet client received incoming data { self: %p, context: %@ }", &v23, 0x16u);
  }

  command = [(IDSParakeetMessagingController *)contextCopy command];
  integerValue = [command integerValue];

  if (integerValue == 176)
  {
    iPServerMessagingController = [(IDSParakeetMessagingController *)self IPServerMessagingController];
    certifiedDeliveryContext = [(IDSParakeetMessagingController *)contextCopy certifiedDeliveryContext];
    [iPServerMessagingController sendCertifiedDeliveryReceipt:certifiedDeliveryContext];

    identifier = [(IDSParakeetMessagingController *)contextCopy identifier];
    [(IDSParakeetMessagingController *)self _noteReceivedStopResponseForIdentifier:identifier success:1 error:0];
  }

  else
  {
    identifier2 = [(IDSParakeetMessagingController *)contextCopy identifier];
    if (identifier2)
    {
      v16 = identifier2;
      certifiedDeliveryContext2 = [(IDSParakeetMessagingController *)contextCopy certifiedDeliveryContext];

      if (certifiedDeliveryContext2)
      {
        incomingMessagesWithoutAcks = [(IDSParakeetMessagingController *)self incomingMessagesWithoutAcks];
        identifier3 = [(IDSParakeetMessagingController *)contextCopy identifier];
        [incomingMessagesWithoutAcks addObject:identifier3];
      }
    }

    identifier = [(IDSParakeetMessagingController *)self delegate];
    iDSServerMessaging2 = [MEMORY[0x1E69A5270] IDSServerMessaging];
    v21 = iDSServerMessaging2;
    if (identifier)
    {
      if (os_log_type_enabled(iDSServerMessaging2, OS_LOG_TYPE_DEFAULT))
      {
        v23 = 138412546;
        selfCopy = contextCopy;
        v25 = 2048;
        v26 = identifier;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "Forwarding server message to delegate { context: %@, delegate: %p }", &v23, 0x16u);
      }

      [(IDSParakeetMessagingController *)identifier controller:self receivedIncomingMessageData:dataCopy context:contextCopy];
    }

    else
    {
      if (os_log_type_enabled(iDSServerMessaging2, OS_LOG_TYPE_ERROR))
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