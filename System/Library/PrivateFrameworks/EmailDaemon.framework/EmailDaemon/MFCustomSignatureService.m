@interface MFCustomSignatureService
+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6;
@end

@implementation MFCustomSignatureService

+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6
{
  v9 = a3;
  v10 = xpc_dictionary_get_value(v9, [_MSMailServiceArguments UTF8String]);
  if (!v10)
  {
    v19 = +[NSAssertionHandler currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"MFAccountsService.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v11 = xpc_dictionary_get_value(v10, [MSAccountsArgumentSendingEmailAddress UTF8String]);
  v12 = _CFXPCCreateCFObjectFromXPCObject();

  v13 = +[MFSignatures sharedInstance];
  v14 = [v13 signatureForSendingEmailAddress:v12];

  reply = xpc_dictionary_create_reply(v9);
  v16 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(reply, [MSAccountsResultSignature UTF8String], v16);
  v17 = reply;
  *a5 = reply;

  return 1;
}

@end