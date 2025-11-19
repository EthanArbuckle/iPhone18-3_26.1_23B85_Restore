@interface CCPeerToPeerMessage
- (CCPeerToPeerMessage)initWithSyncReason:(unsigned __int8)a3 senderDeviceUUID:(id)a4 protocolVersion:(unint64_t)a5 wallTime:(double)a6;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)a3;
@end

@implementation CCPeerToPeerMessage

- (CCPeerToPeerMessage)initWithSyncReason:(unsigned __int8)a3 senderDeviceUUID:(id)a4 protocolVersion:(unint64_t)a5 wallTime:(double)a6
{
  v11 = a4;
  v15.receiver = self;
  v15.super_class = CCPeerToPeerMessage;
  v12 = [(CCPeerToPeerMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_syncReason = a3;
    objc_storeStrong(&v12->_senderDeviceUUID, a4);
    v13->_protocolVersion = a5;
    v13->_walltime = a6;
  }

  return v13;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CCPeerToPeerMessage;
  v5 = [(CCPeerToPeerMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"syncReason"];
    v5->_syncReason = [v6 unsignedIntegerValue];

    v7 = [v4 objectForKeyedSubscript:@"senderDeviceUUID"];
    senderDeviceUUID = v5->_senderDeviceUUID;
    v5->_senderDeviceUUID = v7;

    v9 = [v4 objectForKeyedSubscript:@"protocolVersion"];
    v5->_protocolVersion = [v9 unsignedIntegerValue];

    v10 = [v4 objectForKeyedSubscript:@"walltime"];
    [v10 doubleValue];
    v5->_walltime = v11;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"syncReason";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_syncReason];
  senderDeviceUUID = self->_senderDeviceUUID;
  protocolVersion = self->_protocolVersion;
  v12[0] = v3;
  v12[1] = senderDeviceUUID;
  v11[1] = @"senderDeviceUUID";
  v11[2] = @"protocolVersion";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:protocolVersion];
  v12[2] = v6;
  v11[3] = @"walltime";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_walltime];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

@end