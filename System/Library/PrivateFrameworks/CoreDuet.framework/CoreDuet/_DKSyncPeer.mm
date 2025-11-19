@interface _DKSyncPeer
- (NSString)identifier;
- (NSUUID)sourceDeviceUUID;
- (_DKSyncPeer)initWithIDSDeviceIdentifier:(id)a3 zoneName:(id)a4;
- (id)description;
@end

@implementation _DKSyncPeer

- (NSString)identifier
{
  p_sourceDeviceID = &self->_sourceDeviceID;
  if (self->_sourceDeviceID)
  {
    v3 = @"%@";
LABEL_7:
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v3, *p_sourceDeviceID];
    goto LABEL_8;
  }

  p_sourceDeviceID = &self->_idsDeviceIdentifier;
  if (self->_idsDeviceIdentifier)
  {
    v3 = @"rapport:%@";
    goto LABEL_7;
  }

  zoneName = self->_zoneName;
  p_zoneName = &self->_zoneName;
  if (zoneName)
  {
    v3 = @"cloud:%@";
    p_sourceDeviceID = p_zoneName;
    goto LABEL_7;
  }

  v6 = @"UNKNOWN";
LABEL_8:

  return v6;
}

- (_DKSyncPeer)initWithIDSDeviceIdentifier:(id)a3 zoneName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _DKSyncPeer;
  v9 = [(_DKSyncPeer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_idsDeviceIdentifier, a3);
    objc_storeStrong(&v10->_zoneName, a4);
  }

  return v10;
}

- (NSUUID)sourceDeviceUUID
{
  if (self->_sourceDeviceID)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:self->_sourceDeviceID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)description
{
  me = self->_me;
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (me)
  {
    if (self->_me)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = [(_DKSyncPeer *)self identifier];
    sourceDeviceID = self->_sourceDeviceID;
    v10 = [v4 initWithFormat:@"<%@ %p: me=%@, identifier=%@, name=%@, model=%@, sourceDeviceID=%@, zoneName=%@>", v6, self, v7, v8, self->_name, self->_model, sourceDeviceID, self->_zoneName];
  }

  else
  {
    v8 = [(_DKSyncPeer *)self identifier];
    v17 = *&self->_name;
    version = self->_version;
    v12 = self->_sourceDeviceID;
    idsDeviceIdentifier = self->_idsDeviceIdentifier;
    zoneName = self->_zoneName;
    v15 = [(NSDate *)self->_lastSeenDate dk_localtimeString];
    v10 = [v4 initWithFormat:@"<%@ %p: identifier=%@, name=%@, model=%@, version=%@, sourceDeviceID=%@, idsDeviceIdentifier=%@, zoneName=%@, lastSeenDate=%@>", v6, self, v8, v17, version, v12, idsDeviceIdentifier, zoneName, v15];
  }

  return v10;
}

@end