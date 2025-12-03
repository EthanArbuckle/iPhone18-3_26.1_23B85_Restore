@interface DTUVRenderingService
- (BOOL)_launchCLIFromPath:(id)path message:(id)message arguments:(id)arguments environment:(id)environment error:(id *)error;
- (BOOL)processCommand:(id)command fromMessage:(id)message error:(id *)error;
- (BOOL)processConnectToPreviewHostFromMessage:(id)message error:(id *)error;
- (BOOL)processForwardMessageFromMessage:(id)message error:(id *)error;
- (BOOL)processMessage:(id)message error:(id *)error;
- (BOOL)processStartCLIFromMessage:(id)message error:(id *)error;
- (DTUVRenderingService)initWithChannel:(id)channel;
- (void)messageReceived:(id)received;
@end

@implementation DTUVRenderingService

- (DTUVRenderingService)initWithChannel:(id)channel
{
  channelCopy = channel;
  v10.receiver = self;
  v10.super_class = DTUVRenderingService;
  v5 = [(DTXService *)&v10 initWithChannel:channelCopy];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247F6B608;
    v8[3] = &unk_278EF1070;
    v9 = v5;
    [channelCopy registerDisconnectHandler:v8];
  }

  return v6;
}

- (BOOL)_launchCLIFromPath:(id)path message:(id)message arguments:(id)arguments environment:(id)environment error:(id *)error
{
  pathCopy = path;
  messageCopy = message;
  argumentsCopy = arguments;
  environmentCopy = environment;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_247F6B9A0;
  v45 = sub_247F6B9B0;
  v46 = 0;
  v15 = [messageCopy stringForMessageKey:@"stdoutPath"];
  v38 = a2;
  v16 = [messageCopy stringForMessageKey:@"stderrPath"];
  errorCopy = error;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = dictionary;
  if (v15)
  {
    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D03640]];
  }

  if (v16)
  {
    [v19 setObject:v16 forKeyedSubscript:*MEMORY[0x277D03638]];
  }

  v20 = DTXSpawnSubtaskWithError();
  v27 = 0;
  if (v42[5])
  {
    v28 = objc_alloc(MEMORY[0x277D03650]);
    v29 = [v28 initWithTransport:v42[5]];
    connection = self->_connection;
    self->_connection = v29;

    [(DTXConnection *)self->_connection resume];
    channel = [(DTXService *)self channel];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:v20];
    v33 = [messageCopy newReplyWithObject:v32];
    [channel sendMessageAsync:v33 replyHandler:0];
  }

  else
  {
    if (v20 >= 1)
    {
      kill(v20, 9);
    }

    if (!v27)
    {
      v27 = DTUVRenderingServiceErrorWithDescription(11, @"Failed to launch CLI: %@", v21, v22, v23, v24, v25, v26, messageCopy);
      if (!v27)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:v38 object:self file:@"DTUVRenderingService.m" lineNumber:70 description:@"rdar://98220290 False positive nil passed to a callee that requires a non-null parameter"];

        v27 = 0;
        goto LABEL_14;
      }
    }
  }

  if (errorCopy && v27)
  {
    v34 = v27;
    *errorCopy = v27;
  }

LABEL_14:
  v35 = v42[5] != 0;

  _Block_object_dispose(&v41, 8);
  return v35;
}

- (BOOL)processStartCLIFromMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v13 = messageCopy;
  if (!self->_connection)
  {
    v22 = [messageCopy stringForMessageKey:@"launchPath"];
    if (v22)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v24 = [defaultManager fileExistsAtPath:v22];

      if (v24)
      {
        object = [v13 object];
        if (!object || (v32 = object, [v13 object], v33 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v33, v32, (isKindOfClass & 1) != 0))
        {
          object2 = [v13 object];
          v42 = [object2 valueForKey:@"inheritEnvironment"];
          v43 = v42;
          if (v42 && ![v42 BOOLValue])
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
          }

          else
          {
            processInfo = [MEMORY[0x277CCAC38] processInfo];
            environment = [processInfo environment];
            dictionary = [environment mutableCopy];
          }

          v47 = [object2 valueForKey:@"environment"];
          if (v47)
          {
            [dictionary addEntriesFromDictionary:v47];
          }

          v50 = 0;
          v15 = [(DTUVRenderingService *)self _launchCLIFromPath:v22 message:v13 arguments:0 environment:dictionary error:&v50];
          v14 = v50;

LABEL_23:
          if (!error)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v14 = DTUVRenderingServiceErrorWithDescription(7, @"startCLI message payload is not a dictionary: %@", v35, v36, v37, v38, v39, v40, v13);
        if (!v14)
        {
          sub_24802B9F0();
        }
      }

      else
      {
        v14 = DTUVRenderingServiceErrorWithDescription(10, @"startCLI launchPath does not exist: %@", v25, v26, v27, v28, v29, v30, v13);
        if (!v14)
        {
          sub_24802B984();
        }
      }
    }

    else
    {
      v14 = DTUVRenderingServiceErrorWithDescription(5, @"No launchPath provided for startCLI: %@", v16, v17, v18, v19, v20, v21, v13);
      if (!v14)
      {
        sub_24802BA5C();
      }
    }

    v15 = 0;
    goto LABEL_23;
  }

  v14 = DTUVRenderingServiceErrorWithDescription(4, @"startCLI has already been called and a connection established (%@): %@", v7, v8, v9, v10, v11, v12, self->_connection);
  if (!v14)
  {
    sub_24802B918();
    v15 = 0;
    goto LABEL_26;
  }

  v15 = 0;
  if (!error)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v14)
  {
    v48 = v14;
    *error = v14;
  }

LABEL_26:

  return v15;
}

- (BOOL)processForwardMessageFromMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v13 = messageCopy;
  connection = self->_connection;
  if (connection)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247F6BE08;
    v17[3] = &unk_278EF10C0;
    v18 = messageCopy;
    selfCopy = self;
    [(DTXConnection *)connection sendControlAsync:v18 replyHandler:v17];

LABEL_3:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = DTUVRenderingServiceErrorWithDescription(3, @"No connection has been established to the CLI yet for forwardMessage. Make sure to pass a startCLI command first. Message was: %@", v7, v8, v9, v10, v11, v12, messageCopy);
  if (!v15)
  {
    sub_24802BAC8();
    goto LABEL_3;
  }

  if (error)
  {
    v15 = v15;
    *error = v15;
  }

LABEL_7:

  return connection != 0;
}

- (BOOL)processConnectToPreviewHostFromMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v8 = [messageCopy stringForMessageKey:@"injectionPath"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [messageCopy stringForMessageKey:@"launchedPath"];
  }

  v11 = v10;

  v12 = [messageCopy integerForMessageKey:@"pid"];
  if (!v11)
  {
    v31 = DTUVRenderingServiceErrorWithDescription(15, @"No injectionPath or launchedPath provided for connectToPreviewHost: %@", v13, v14, v15, v16, v17, v18, messageCopy);
    if (v31)
    {
      goto LABEL_12;
    }

    sub_24802BC04();
LABEL_20:
    v28 = 0;
    goto LABEL_18;
  }

  v19 = v12;
  if (v12)
  {
    v34 = 0;
    v20 = DVTIFAttachToProcess(v12, v11, @"__SERVICEHUB_ATTACH_POINT__", &v34);
    v27 = v34;
    v28 = v20 != 0;
    if (v20)
    {
      [v20 resume];
      objc_storeStrong(&self->_connection, v20);
      newReply = [messageCopy newReply];
      [newReply setInteger:1 forMessageKey:@"success"];
      channel = [(DTXService *)self channel];
      [channel sendControlAsync:newReply replyHandler:0];
    }

    else
    {
      v31 = DTUVRenderingServiceErrorWithDescription(17, @"connectToPreviewHost: Failed to connect to %d: %@", v21, v22, v23, v24, v25, v26, v19);

      if (v31)
      {
LABEL_15:

        if (!error)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      sub_24802BB34(a2, self, &v35);
      v27 = 0;
      newReply = v35;
    }

    v31 = v27;
    goto LABEL_15;
  }

  v31 = DTUVRenderingServiceErrorWithDescription(16, @"No pid provided for connectToPreviewHost: %@", v13, v14, v15, v16, v17, v18, messageCopy);
  if (!v31)
  {
    sub_24802BB98();
    goto LABEL_20;
  }

LABEL_12:
  v28 = 0;
  if (!error)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v31)
  {
    v32 = v31;
    *error = v31;
  }

LABEL_18:

  return v28;
}

- (BOOL)processCommand:(id)command fromMessage:(id)message error:(id *)error
{
  commandCopy = command;
  messageCopy = message;
  if ([commandCopy isEqualToString:@"startCLI"])
  {
    v23 = 0;
    v10 = &v23;
    v11 = [(DTUVRenderingService *)self processStartCLIFromMessage:messageCopy error:&v23];
    goto LABEL_7;
  }

  if ([commandCopy isEqualToString:@"forwardMessage"])
  {
    v22 = 0;
    v10 = &v22;
    v11 = [(DTUVRenderingService *)self processForwardMessageFromMessage:messageCopy error:&v22];
    goto LABEL_7;
  }

  if ([commandCopy isEqualToString:@"connectToPreviewHost"])
  {
    v21 = 0;
    v10 = &v21;
    v11 = [(DTUVRenderingService *)self processConnectToPreviewHostFromMessage:messageCopy error:&v21];
LABEL_7:
    v18 = v11;
    v19 = *v10;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v19 = DTUVRenderingServiceErrorWithDescription(2, @"Unknown command %@: %@", v12, v13, v14, v15, v16, v17, commandCopy);
  if (!v19)
  {
    sub_24802BC70();
    v18 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  v18 = 0;
  if (!error)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v19)
  {
    v19 = v19;
    *error = v19;
  }

LABEL_10:

  return v18;
}

- (BOOL)processMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v13 = [messageCopy stringForMessageKey:@"serviceCommand"];
  if (v13)
  {
    v18 = 0;
    v14 = [(DTUVRenderingService *)self processCommand:v13 fromMessage:messageCopy error:&v18];

    v15 = v18;
    if (!error)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v15)
    {
      v16 = v15;
      *error = v15;
    }

    goto LABEL_8;
  }

  v15 = DTUVRenderingServiceErrorWithDescription(0, @"No serviceCommand specified for message: %@", v7, v8, v9, v10, v11, v12, messageCopy);

  if (!v15)
  {
    sub_24802BCDC();
    v14 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (error)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v14;
}

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  v9 = 0;
  v5 = [(DTUVRenderingService *)self processMessage:receivedCopy error:&v9];
  v6 = v9;
  if (!v5)
  {
    channel = [(DTXService *)self channel];
    v8 = [receivedCopy newReplyWithError:v6];
    [channel sendMessage:v8 replyHandler:0];
  }
}

@end