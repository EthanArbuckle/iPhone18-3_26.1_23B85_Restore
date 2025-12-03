@interface MFMessageSendService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFMessageSendService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v10 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v32 = +[NSAssertionHandler currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"MFDeliveryService.m" lineNumber:606 description:{@"Invalid parameter not satisfying: %@", @"args"}];
  }

  v11 = _CFXPCCreateCFObjectFromXPCObject();
  v12 = [v11 objectForKeyedSubscript:MSSendEmailArgumentKeyRFC822Data];
  v37 = [v11 objectForKeyedSubscript:MSSendEmailArgumentKeyAutosaveIdentifier];
  v13 = [v11 objectForKeyedSubscript:MSSendEmailArgumentKeyHideMyEmailMessage];
  bOOLValue = [v13 BOOLValue];

  v15 = [v11 objectForKeyedSubscript:MSSendEmailArgumentKeySendLaterDate];
  v36 = v15;
  if (v12)
  {
    v16 = [MFMailMessage messageWithRFC822Data:v12];
    if (!v16)
    {
      objectCopy5 = object;
      v23 = 0;
      v24 = 0;
LABEL_15:

      goto LABEL_16;
    }

    v17 = [MailAccount accountThatMessageIsFrom:v16 includingInactive:1];
    if (v17)
    {
      if (v15)
      {
        objectCopy5 = object;
        v35 = v16;
        v33 = v15;
        v34 = +[DaemonAppController sharedController];
        v19 = [EMOutgoingMessage alloc];
        messageData = [v35 messageData];
        v21 = [v19 initWithMessageData:messageData];

        outgoingMessageRepository = [v34 outgoingMessageRepository];
        [outgoingMessageRepository saveSendLaterMessage:v21 sendLaterDate:v33 completion:0];

        v23 = 0;
        v24 = 1;
        goto LABEL_12;
      }

      objectCopy5 = object;
      v38 = 0;
      v25 = sub_100060290(v16, v17, 0, bOOLValue, &v38);
      v23 = v38;
      v24 = v25 != 0;

      if (v25)
      {
LABEL_12:
        if (v37)
        {
          v26 = +[MSAutosave autosave];
          [v26 removeAutosavedMessageWithIdentifier:v37];

          v24 = 1;
        }
      }
    }

    else
    {
      objectCopy5 = object;
      v23 = 0;
      v24 = 0;
    }

    goto LABEL_15;
  }

  objectCopy5 = object;
  v23 = 0;
  v24 = 0;
LABEL_16:
  reply = xpc_dictionary_create_reply(messageCopy);
  uTF8String = [MSSendEmailResultKeyInAirplaneMode UTF8String];
  v29 = +[MFNetworkController sharedInstance];
  xpc_dictionary_set_BOOL(reply, uTF8String, [v29 inAirplaneMode]);

  xpc_dictionary_set_BOOL(reply, [MSSendEmailResultKeySuccess UTF8String], v24);
  v30 = reply;
  *objectCopy5 = reply;

  return 1;
}

@end