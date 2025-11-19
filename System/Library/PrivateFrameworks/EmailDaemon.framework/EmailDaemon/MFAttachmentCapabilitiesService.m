@interface MFAttachmentCapabilitiesService
+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6;
@end

@implementation MFAttachmentCapabilitiesService

+ (BOOL)handleMessage:(id)a3 connectionState:(id)a4 replyObject:(id *)a5 error:(id *)a6
{
  v10 = a3;
  v11 = xpc_dictionary_get_value(v10, [_MSMailServiceArguments UTF8String]);
  if (!v11)
  {
    v21 = +[NSAssertionHandler currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"MFAccountsService.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"arguments"}];
  }

  v12 = +[MFAttachmentCapabilities capabilitiesDictionary];
  if (v12 || ([NSError errorWithDomain:MSAccountsErrorDomain code:1001 userInfo:0], v19 = objc_claimAutoreleasedReturnValue(), (v16 = v19) == 0))
  {
    reply = xpc_dictionary_create_reply(v10);
    v14 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(reply, [MSAccountsResultCapabilities UTF8String], v14);
    v15 = reply;
    *a5 = reply;

    v16 = 0;
    v17 = 1;
  }

  else if (a6)
  {
    v20 = v19;
    v17 = 0;
    *a6 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end