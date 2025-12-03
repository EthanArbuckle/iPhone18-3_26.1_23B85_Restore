@interface MFCustomSignatureService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFCustomSignatureService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v10 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MFAccountsService.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v11 = xpc_dictionary_get_value(v10, [MSAccountsArgumentSendingEmailAddress UTF8String]);
  v12 = _CFXPCCreateCFObjectFromXPCObject();

  v13 = +[MFSignatures sharedInstance];
  v14 = [v13 signatureForSendingEmailAddress:v12];

  reply = xpc_dictionary_create_reply(messageCopy);
  v16 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(reply, [MSAccountsResultSignature UTF8String], v16);
  v17 = reply;
  *object = reply;

  return 1;
}

@end