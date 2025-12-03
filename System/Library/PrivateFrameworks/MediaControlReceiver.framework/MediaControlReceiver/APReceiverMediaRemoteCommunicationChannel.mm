@interface APReceiverMediaRemoteCommunicationChannel
- (APReceiverMediaRemoteCommunicationChannel)initWithDictionary:(id)dictionary;
- (id)debugDescription;
- (id)description;
- (void)dealloc;
- (void)sendData:(id)data completionHandler:(id)handler;
@end

@implementation APReceiverMediaRemoteCommunicationChannel

- (void)dealloc
{
  commChannel = self->_commChannel;
  if (commChannel)
  {
  }

  v4.receiver = self;
  v4.super_class = APReceiverMediaRemoteCommunicationChannel;
  [(APReceiverMediaRemoteCommunicationChannel *)&v4 dealloc];
}

- (void)sendData:(id)data completionHandler:(id)handler
{
  if (self->_commChannel->invalidated)
  {
    APSLogErrorAt();
    v8 = 0;
    v10 = -6709;
LABEL_14:
    if (!handler)
    {
      goto LABEL_17;
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v10 userInfo:0];
LABEL_16:
    (*(handler + 2))(handler, v11);
LABEL_17:
    if (!v8)
    {
      return;
    }

    goto LABEL_18;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = Mutable;
  if (!Mutable)
  {
    APSLogErrorAt();
    v10 = -6728;
    goto LABEL_14;
  }

  CFDictionarySetValue(Mutable, @"objectID", self->_commChannel->objectID);
  CFDictionarySetValue(v8, @"data", data);
  if (gLogCategory_APReceiverMediaRemoteXPCClient <= 50 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
  {
    CFDataGetLength(data);
    LogPrintF();
  }

  v9 = APSXPCClientSendCommandCreatingReply();
  if (v9)
  {
    v10 = v9;
    if (gLogCategory_APReceiverMediaRemoteXPCClient <= 90 && (gLogCategory_APReceiverMediaRemoteXPCClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_14;
  }

  if (handler)
  {
    v11 = 0;
    goto LABEL_16;
  }

LABEL_18:

  CFRelease(v8);
}

- (APReceiverMediaRemoteCommunicationChannel)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = APReceiverMediaRemoteCommunicationChannel;
  v4 = [(APReceiverMediaRemoteCommunicationChannel *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(APReceiverMediaRemoteCommunicationChannelInternal);
    v4->_commChannel = v5;
    if (v5)
    {
      v5->invalidated = 0;
      v4->_commChannel->objectID = [dictionary objectForKey:@"objectID"];
      v4->_commChannel->uuid = [dictionary objectForKey:@"clientUUID"];
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p: %@|%@>", NSStringFromClass(v4), self, -[APReceiverMediaRemoteCommunicationChannel objectID](self, "objectID"), -[APReceiverMediaRemoteCommunicationChannel uuid](self, "uuid")];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %@|%@>", NSStringFromClass(v4), -[APReceiverMediaRemoteCommunicationChannel objectID](self, "objectID"), -[APReceiverMediaRemoteCommunicationChannel uuid](self, "uuid")];
}

@end