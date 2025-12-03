@interface DTTapFactory
+ (id)defaultFactory;
- (id)createNewTapWithConfig:(id)config connection:(id)connection options:(id)options;
@end

@implementation DTTapFactory

+ (id)defaultFactory
{
  if (qword_27EE84368 != -1)
  {
    sub_24802EEAC();
  }

  v3 = sTapFactory;

  return v3;
}

- (id)createNewTapWithConfig:(id)config connection:(id)connection options:(id)options
{
  configCopy = config;
  connectionCopy = connection;
  optionsCopy = options;
  if (!configCopy)
  {
    v15 = 0;
    goto LABEL_49;
  }

  v10 = [configCopy copy];
  v11 = [optionsCopy objectForKeyedSubscript:@"DTTap_Option_MessageArchiveFileURL"];
  serviceName = [v10 serviceName];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v29 = objc_opt_new();
    if (connectionCopy)
    {
      if (serviceName)
      {
        v14 = [connectionCopy remoteCapabilityVersion:serviceName];
        if (v14 <= 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        serviceName = @"com.apple.instruments.server.services.coreprofilesessiontap";
        v14 = [connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.coreprofilesessiontap"];
        if (v14 < 1)
        {
          goto LABEL_34;
        }
      }

      if (!v11)
      {
        v23 = [DTKTraceTapMessageHandler alloc];
        v24 = v13;
LABEL_37:
        v19 = [(DTKTraceTapMessageHandler *)v23 initWithConfig:v24];
        goto LABEL_38;
      }

      goto LABEL_33;
    }

    v20 = DTKTraceTapLocalDelegate;
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v10;
    v17 = [DTProcessorTraceTapMemoHandlerDelegate alloc];
    fetchChunkSize = [v16 fetchChunkSize];
    v29 = -[DTProcessorTraceTapMemoHandlerDelegate initWithFileReadLength:](v17, "initWithFileReadLength:", [fetchChunkSize unsignedIntValue]);

    if (connectionCopy)
    {
      if (serviceName)
      {
        v14 = [connectionCopy remoteCapabilityVersion:serviceName];
        if (v14 <= 0)
        {
LABEL_12:

LABEL_34:
          v19 = 0;
          serviceName = 0;
          goto LABEL_38;
        }
      }

      else
      {
        serviceName = @"com.apple.instruments.server.services.processortrace";
        v14 = [connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.processortrace"];
        if (v14 < 1)
        {
          goto LABEL_34;
        }
      }

      if (!v11)
      {
        v23 = [DTProcessorTraceTapMessageHandler alloc];
        v24 = v16;
        goto LABEL_37;
      }

LABEL_33:
      v19 = 0;
LABEL_38:
      v25 = 0;
      goto LABEL_39;
    }

    v21 = [DTProcessorTraceTapLocalDelegate alloc];
    v22 = v16;
LABEL_29:
    v25 = [(DTProcessorTraceTapLocalDelegate *)v21 initWithConfig:v22];
    v19 = 0;
    v14 = -1;
LABEL_39:

    if (v11)
    {
      if (v19)
      {
        sub_24802EEC0();
      }

      v19 = [[DTTapMessageHandlerArchiver alloc] initWithConfig:v10 archiveURL:v11];
    }

    v26 = [[DTTapMemoHandler alloc] initWithConfig:v10 delegate:v29];
    if (connectionCopy)
    {
      if (serviceName)
      {
        [v10 setServiceName:serviceName];
        [v10 setServiceVersion:v14];
        v27 = [[DTTapRemote alloc] initWithConfig:v10 memoHandler:v26 messageHandler:v19 connection:connectionCopy];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = [[DTTapLocal alloc] initWithConfig:v10 memoHandler:v26 delegate:v25];
    }

    v15 = v27;

    goto LABEL_48;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v29 = objc_opt_new();
    if (connectionCopy)
    {

      v14 = [connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.activitytracetap"];
      if (v14 >= 1)
      {
        if (v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = [(DTTapMessageHandler *)[DTActivityTraceTapMessageHandler alloc] initWithConfig:v13];
        }

        v25 = 0;
        serviceName = @"com.apple.instruments.server.services.activitytracetap";
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v20 = DTActivityTraceTapLocalDelegate;
LABEL_19:
    v21 = [v20 alloc];
    v22 = v13;
    goto LABEL_29;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v10;
    v29 = objc_opt_new();
    if (connectionCopy)
    {

      v14 = [connectionCopy remoteCapabilityVersion:@"com.apple.instruments.server.services.sysmontap"];
      if (v14 >= 1)
      {
        if (v11)
        {
          v19 = 0;
        }

        else
        {
          v19 = [(DTTapMessageHandler *)[DTSysmonTapMessageHandler alloc] initWithConfig:v13];
        }

        v25 = 0;
        serviceName = @"com.apple.instruments.server.services.sysmontap";
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    v20 = DTSysmonTapLocalDelegate;
    goto LABEL_19;
  }

  v19 = 0;
  v29 = 0;
  v25 = 0;
  v15 = 0;
LABEL_48:

LABEL_49:

  return v15;
}

@end