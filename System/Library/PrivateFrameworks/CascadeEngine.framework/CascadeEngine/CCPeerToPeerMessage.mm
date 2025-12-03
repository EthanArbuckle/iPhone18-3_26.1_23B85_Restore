@interface CCPeerToPeerMessage
- (CCPeerToPeerMessage)initWithSyncReason:(unsigned __int8)reason senderDeviceUUID:(id)d protocolVersion:(unint64_t)version wallTime:(double)time;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCPeerToPeerMessage

- (CCPeerToPeerMessage)initWithSyncReason:(unsigned __int8)reason senderDeviceUUID:(id)d protocolVersion:(unint64_t)version wallTime:(double)time
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CCPeerToPeerMessage;
  v12 = [(CCPeerToPeerMessage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_syncReason = reason;
    objc_storeStrong(&v12->_senderDeviceUUID, d);
    v13->_protocolVersion = version;
    v13->_walltime = time;
  }

  return v13;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = CCPeerToPeerMessage;
  v5 = [(CCPeerToPeerMessage *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"syncReason"];
    v5->_syncReason = [v6 unsignedIntegerValue];

    v7 = [dictionaryCopy objectForKeyedSubscript:@"senderDeviceUUID"];
    senderDeviceUUID = v5->_senderDeviceUUID;
    v5->_senderDeviceUUID = v7;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"protocolVersion"];
    v5->_protocolVersion = [v9 unsignedIntegerValue];

    v10 = [dictionaryCopy objectForKeyedSubscript:@"walltime"];
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