@interface MFAttachmentCapabilitiesService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
@end

@implementation MFAttachmentCapabilitiesService

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v11 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  if (!v11)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"MFAccountsService.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v12 = +[MFAttachmentCapabilities capabilitiesDictionary];
  if (v12 || ([NSError errorWithDomain:MSAccountsErrorDomain code:1001 userInfo:0], v19 = objc_claimAutoreleasedReturnValue(), (v16 = v19) == 0))
  {
    reply = xpc_dictionary_create_reply(messageCopy);
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSAccountsResultCapabilities UTF8String], v14);
    v15 = reply;
    *object = reply;

    v16 = 0;
    v17 = 1;
  }

  else if (error)
  {
    v20 = v19;
    v17 = 0;
    *error = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end