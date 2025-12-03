@interface MFXPCEndpointService
+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error;
+ (id)sharedInstance;
- (MFXPCEndpointService)init;
- (NSString)description;
- (id)activeListeners;
- (id)copyDiagnosticInformation;
- (id)listenerForProtocolNamed:(id)named;
- (void)dealloc;
@end

@implementation MFXPCEndpointService

+ (id)sharedInstance
{
  if (qword_100185B28 != -1)
  {
    sub_1000D59F8();
  }

  v3 = qword_100185B20;

  return v3;
}

+ (BOOL)handleMessage:(id)message connectionState:(id)state replyObject:(id *)object error:(id *)error
{
  messageCopy = message;
  v9 = xpc_dictionary_get_value(messageCopy, [_MSMailServiceArguments UTF8String]);
  v10 = v9;
  if (v9 && xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    v12 = [NSString stringWithUTF8String:xpc_dictionary_get_string(v10, "protocol")];
    sharedInstance = [self sharedInstance];
    v14 = [sharedInstance listenerForProtocolNamed:v12];

    endpoint = [v14 endpoint];
    _endpoint = [endpoint _endpoint];

    if (_endpoint)
    {
      reply = xpc_dictionary_create_reply(messageCopy);
      v18 = reply;
      v11 = reply != 0;
      if (reply)
      {
        xpc_dictionary_set_value(reply, "endpoint", _endpoint);
        v19 = v18;
        *object = v18;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (MFXPCEndpointService)init
{
  v27.receiver = self;
  v27.super_class = MFXPCEndpointService;
  v2 = [(MFXPCEndpointService *)&v27 init];
  if (v2)
  {
    v3 = +[MFDSearch endpointInfo];
    v33[0] = v3;
    v26 = +[MFDAutosave endpointInfo];
    v33[1] = v26;
    v4 = +[(MFXPCServer *)MFDVIPServices];
    v33[2] = v4;
    v5 = +[(MFXPCServer *)MFDResetListUnsubscribe];
    v33[3] = v5;
    v6 = +[(MFXPCServer *)MFDMessageBodyLoader];
    v33[4] = v6;
    v7 = +[(MFXPCServer *)MFDFocusedMessages];
    v33[5] = v7;
    v8 = +[(MFXPCServer *)MFDCoreSpotlight];
    v33[6] = v8;
    v9 = +[MFDOpenCompose endpointInfo];
    v33[7] = v9;
    v10 = +[MFDOpenComposeDelegateRequest endpointInfo];
    v33[8] = v10;
    v11 = [NSArray arrayWithObjects:v33 count:9];

    v12 = +[NSMutableDictionary dictionary];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          exportedInterface = [v17 exportedInterface];
          protocol = [exportedInterface protocol];
          v20 = NSStringFromProtocol(protocol);
          [v12 setObject:v17 forKeyedSubscript:v20];
        }

        v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    v21 = [v12 copy];
    endpointInfoByProtocol = v2->_endpointInfoByProtocol;
    v2->_endpointInfoByProtocol = v21;

    v23 = +[MFDiagnostics sharedController];
    [v23 addDiagnosticsGenerator:v2];

    v24 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[MFDiagnostics sharedController];
  [v3 removeDiagnosticsGenerator:self];

  v4.receiver = self;
  v4.super_class = MFXPCEndpointService;
  [(MFXPCEndpointService *)&v4 dealloc];
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p> ", objc_opt_class(), self];
  activeListeners = [(MFXPCEndpointService *)self activeListeners];
  v5 = [activeListeners count];
  if (v5)
  {
    v6 = [activeListeners arrayByApplyingSelector:"description"];
    v7 = [v6 componentsJoinedByString:{@", \n\t"}];
    [v3 appendFormat:@"%ld active listeners: {\n\t%@\n}", v5, v7];
  }

  else
  {
    [v3 appendString:@"no active listeners"];
  }

  return v3;
}

- (id)copyDiagnosticInformation
{
  v3 = [[NSMutableString alloc] initWithFormat:@"\n==== XPC Endpoint Service ====\n"];
  [v3 appendFormat:@"  self: %p\n", self];
  [v3 appendString:@"  endpoints: "];
  v4 = [(NSDictionary *)self->_endpointInfoByProtocol count];
  if (v4)
  {
    allValues = [(NSDictionary *)self->_endpointInfoByProtocol allValues];
    v6 = [allValues ef_compactMap:&stru_10015A430];
    v7 = [v6 componentsJoinedByString:{@", \n\t"}];
    [v3 appendFormat:@"%ld exported {\n\t%@\n  }", v4, v7];
  }

  else
  {
    [v3 appendString:@"none"];
  }

  return v3;
}

- (id)activeListeners
{
  allValues = [(NSDictionary *)self->_endpointInfoByProtocol allValues];
  v3 = [allValues ef_compactMap:&stru_10015A450];

  return v3;
}

- (id)listenerForProtocolNamed:(id)named
{
  v3 = [(NSDictionary *)self->_endpointInfoByProtocol objectForKey:named];
  listener = [v3 listener];
  v4Listener = [listener listener];

  return v4Listener;
}

@end