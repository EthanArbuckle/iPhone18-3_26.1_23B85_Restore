@interface DTUVRenderingService
- (BOOL)_launchCLIFromPath:(id)a3 message:(id)a4 arguments:(id)a5 environment:(id)a6 error:(id *)a7;
- (BOOL)processCommand:(id)a3 fromMessage:(id)a4 error:(id *)a5;
- (BOOL)processConnectToPreviewHostFromMessage:(id)a3 error:(id *)a4;
- (BOOL)processForwardMessageFromMessage:(id)a3 error:(id *)a4;
- (BOOL)processMessage:(id)a3 error:(id *)a4;
- (BOOL)processStartCLIFromMessage:(id)a3 error:(id *)a4;
- (DTUVRenderingService)initWithChannel:(id)a3;
- (void)messageReceived:(id)a3;
@end

@implementation DTUVRenderingService

- (DTUVRenderingService)initWithChannel:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DTUVRenderingService;
  v5 = [(DTXService *)&v10 initWithChannel:v4];
  v6 = v5;
  if (v5)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_247F6B608;
    v8[3] = &unk_278EF1070;
    v9 = v5;
    [v4 registerDisconnectHandler:v8];
  }

  return v6;
}

- (BOOL)_launchCLIFromPath:(id)a3 message:(id)a4 arguments:(id)a5 environment:(id)a6 error:(id *)a7
{
  v40 = a3;
  v13 = a4;
  v39 = a5;
  v14 = a6;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = sub_247F6B9A0;
  v45 = sub_247F6B9B0;
  v46 = 0;
  v15 = [v13 stringForMessageKey:@"stdoutPath"];
  v38 = a2;
  v16 = [v13 stringForMessageKey:@"stderrPath"];
  v17 = a7;
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v19 = v18;
  if (v15)
  {
    [v18 setObject:v15 forKeyedSubscript:*MEMORY[0x277D03640]];
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
    v31 = [(DTXService *)self channel];
    v32 = [MEMORY[0x277CCABB0] numberWithInt:v20];
    v33 = [v13 newReplyWithObject:v32];
    [v31 sendMessageAsync:v33 replyHandler:0];
  }

  else
  {
    if (v20 >= 1)
    {
      kill(v20, 9);
    }

    if (!v27)
    {
      v27 = DTUVRenderingServiceErrorWithDescription(11, @"Failed to launch CLI: %@", v21, v22, v23, v24, v25, v26, v13);
      if (!v27)
      {
        v37 = [MEMORY[0x277CCA890] currentHandler];
        [v37 handleFailureInMethod:v38 object:self file:@"DTUVRenderingService.m" lineNumber:70 description:@"rdar://98220290 False positive nil passed to a callee that requires a non-null parameter"];

        v27 = 0;
        goto LABEL_14;
      }
    }
  }

  if (v17 && v27)
  {
    v34 = v27;
    *v17 = v27;
  }

LABEL_14:
  v35 = v42[5] != 0;

  _Block_object_dispose(&v41, 8);
  return v35;
}

- (BOOL)processStartCLIFromMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = v6;
  if (!self->_connection)
  {
    v22 = [v6 stringForMessageKey:@"launchPath"];
    if (v22)
    {
      v23 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = [v23 fileExistsAtPath:v22];

      if (v24)
      {
        v31 = [v13 object];
        if (!v31 || (v32 = v31, [v13 object], v33 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v33, v32, (isKindOfClass & 1) != 0))
        {
          v41 = [v13 object];
          v42 = [v41 valueForKey:@"inheritEnvironment"];
          v43 = v42;
          if (v42 && ![v42 BOOLValue])
          {
            v46 = [MEMORY[0x277CBEB38] dictionary];
          }

          else
          {
            v44 = [MEMORY[0x277CCAC38] processInfo];
            v45 = [v44 environment];
            v46 = [v45 mutableCopy];
          }

          v47 = [v41 valueForKey:@"environment"];
          if (v47)
          {
            [v46 addEntriesFromDictionary:v47];
          }

          v50 = 0;
          v15 = [(DTUVRenderingService *)self _launchCLIFromPath:v22 message:v13 arguments:0 environment:v46 error:&v50];
          v14 = v50;

LABEL_23:
          if (!a4)
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
  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (v14)
  {
    v48 = v14;
    *a4 = v14;
  }

LABEL_26:

  return v15;
}

- (BOOL)processForwardMessageFromMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = v6;
  connection = self->_connection;
  if (connection)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_247F6BE08;
    v17[3] = &unk_278EF10C0;
    v18 = v6;
    v19 = self;
    [(DTXConnection *)connection sendControlAsync:v18 replyHandler:v17];

LABEL_3:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = DTUVRenderingServiceErrorWithDescription(3, @"No connection has been established to the CLI yet for forwardMessage. Make sure to pass a startCLI command first. Message was: %@", v7, v8, v9, v10, v11, v12, v6);
  if (!v15)
  {
    sub_24802BAC8();
    goto LABEL_3;
  }

  if (a4)
  {
    v15 = v15;
    *a4 = v15;
  }

LABEL_7:

  return connection != 0;
}

- (BOOL)processConnectToPreviewHostFromMessage:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = [v7 stringForMessageKey:@"injectionPath"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [v7 stringForMessageKey:@"launchedPath"];
  }

  v11 = v10;

  v12 = [v7 integerForMessageKey:@"pid"];
  if (!v11)
  {
    v31 = DTUVRenderingServiceErrorWithDescription(15, @"No injectionPath or launchedPath provided for connectToPreviewHost: %@", v13, v14, v15, v16, v17, v18, v7);
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
      v29 = [v7 newReply];
      [v29 setInteger:1 forMessageKey:@"success"];
      v30 = [(DTXService *)self channel];
      [v30 sendControlAsync:v29 replyHandler:0];
    }

    else
    {
      v31 = DTUVRenderingServiceErrorWithDescription(17, @"connectToPreviewHost: Failed to connect to %d: %@", v21, v22, v23, v24, v25, v26, v19);

      if (v31)
      {
LABEL_15:

        if (!a4)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      sub_24802BB34(a2, self, &v35);
      v27 = 0;
      v29 = v35;
    }

    v31 = v27;
    goto LABEL_15;
  }

  v31 = DTUVRenderingServiceErrorWithDescription(16, @"No pid provided for connectToPreviewHost: %@", v13, v14, v15, v16, v17, v18, v7);
  if (!v31)
  {
    sub_24802BB98();
    goto LABEL_20;
  }

LABEL_12:
  v28 = 0;
  if (!a4)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v31)
  {
    v32 = v31;
    *a4 = v31;
  }

LABEL_18:

  return v28;
}

- (BOOL)processCommand:(id)a3 fromMessage:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  if ([v8 isEqualToString:@"startCLI"])
  {
    v23 = 0;
    v10 = &v23;
    v11 = [(DTUVRenderingService *)self processStartCLIFromMessage:v9 error:&v23];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"forwardMessage"])
  {
    v22 = 0;
    v10 = &v22;
    v11 = [(DTUVRenderingService *)self processForwardMessageFromMessage:v9 error:&v22];
    goto LABEL_7;
  }

  if ([v8 isEqualToString:@"connectToPreviewHost"])
  {
    v21 = 0;
    v10 = &v21;
    v11 = [(DTUVRenderingService *)self processConnectToPreviewHostFromMessage:v9 error:&v21];
LABEL_7:
    v18 = v11;
    v19 = *v10;
    if (!a5)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v19 = DTUVRenderingServiceErrorWithDescription(2, @"Unknown command %@: %@", v12, v13, v14, v15, v16, v17, v8);
  if (!v19)
  {
    sub_24802BC70();
    v18 = 0;
    v19 = 0;
    goto LABEL_10;
  }

  v18 = 0;
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v19)
  {
    v19 = v19;
    *a5 = v19;
  }

LABEL_10:

  return v18;
}

- (BOOL)processMessage:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13 = [v6 stringForMessageKey:@"serviceCommand"];
  if (v13)
  {
    v18 = 0;
    v14 = [(DTUVRenderingService *)self processCommand:v13 fromMessage:v6 error:&v18];

    v15 = v18;
    if (!a4)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v15)
    {
      v16 = v15;
      *a4 = v15;
    }

    goto LABEL_8;
  }

  v15 = DTUVRenderingServiceErrorWithDescription(0, @"No serviceCommand specified for message: %@", v7, v8, v9, v10, v11, v12, v6);

  if (!v15)
  {
    sub_24802BCDC();
    v14 = 0;
    goto LABEL_8;
  }

  v14 = 0;
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_8:

  return v14;
}

- (void)messageReceived:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(DTUVRenderingService *)self processMessage:v4 error:&v9];
  v6 = v9;
  if (!v5)
  {
    v7 = [(DTXService *)self channel];
    v8 = [v4 newReplyWithError:v6];
    [v7 sendMessage:v8 replyHandler:0];
  }
}

@end