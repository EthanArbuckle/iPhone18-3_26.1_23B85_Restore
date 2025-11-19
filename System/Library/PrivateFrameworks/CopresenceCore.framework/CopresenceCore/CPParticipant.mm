@interface CPParticipant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentToParticipant:(id)a3;
- (CPParticipant)initWithAccountIdentifier:(id)a3;
- (CPParticipant)initWithCoder:(id)a3;
- (CPParticipant)initWithUUID:(id)a3 accountIdentifier:(id)a4;
- (id)_localStatusDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPParticipant

- (CPParticipant)initWithAccountIdentifier:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [v4 UUID];
  v7 = [(CPParticipant *)self initWithUUID:v6 accountIdentifier:v5];

  return v7;
}

- (CPParticipant)initWithUUID:(id)a3 accountIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CPParticipant;
  v9 = [(CPParticipant *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_UUID, a3);
    objc_storeStrong(&v10->_accountIdentifier, a4);
    *&v10->_audioToken = xmmword_1AEE07AB0;
  }

  return v10;
}

- (id)_localStatusDescription
{
  v2 = [(CPParticipant *)self localStatus];
  if (v2 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7A45CC8[v2];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  v7 = [(CPParticipant *)self UUID];
  [v6 appendFormat:@" UUID=%@", v7];

  v8 = [(CPParticipant *)self accountIdentifier];
  [v6 appendFormat:@" accountIdentifier=%@", v8];

  [v6 appendFormat:@" participantID=%llu", -[CPParticipant participantIdentifier](self, "participantIdentifier")];
  [v6 appendFormat:@" streamToken=%ld", -[CPParticipant streamToken](self, "streamToken")];
  [v6 appendFormat:@" screenToken=%ld", -[CPParticipant screenToken](self, "screenToken")];
  [v6 appendFormat:@" isVideoEnabled=%d", -[CPParticipant isVideoEnabled](self, "isVideoEnabled")];
  [v6 appendFormat:@" isScreenEnabled=%d", -[CPParticipant isScreenEnabled](self, "isScreenEnabled")];
  [v6 appendFormat:@" spatialAudioSourceIdentifier=%llu", -[CPParticipant spatialAudioSourceIdentifier](self, "spatialAudioSourceIdentifier")];
  [v6 appendFormat:@" localStatus=%d", -[CPParticipant localStatus](self, "localStatus")];
  v9 = [(CPParticipant *)self avcStreams];
  [v6 appendFormat:@" avcStreams=%@", v9];

  [v6 appendString:@">"];
  v10 = [v6 copy];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPParticipant *)self isEquivalentToParticipant:v4];

  return v5;
}

- (BOOL)isEquivalentToParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CPParticipant *)self accountIdentifier];
  v6 = [v4 accountIdentifier];
  if ([v5 isEqual:v6])
  {
    v7 = [(CPParticipant *)self participantIdentifier];
    v8 = v7 == [v4 participantIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CPParticipant *)self accountIdentifier];
  v4 = [v3 hash];
  v5 = [(CPParticipant *)self participantIdentifier];

  return v5 ^ v4;
}

- (CPParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_accountIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = [(CPParticipant *)self initWithUUID:v7 accountIdentifier:v10];
  if (v11)
  {
    v12 = NSStringFromSelector(sel_participantIdentifier);
    v11->_participantIdentifier = [v4 decodeInt64ForKey:v12];

    v13 = NSStringFromSelector(sel_spatialAudioSourceIdentifier);
    v11->_spatialAudioSourceIdentifier = [v4 decodeInt64ForKey:v13];

    v14 = NSStringFromSelector(sel_localStatus);
    v11->_localStatus = [v4 decodeInt32ForKey:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = NSStringFromSelector(sel_userContext);
    v20 = [v4 decodeObjectOfClasses:v18 forKey:v19];
    userContext = v11->_userContext;
    v11->_userContext = v20;

    v22 = NSStringFromSelector(sel_avcStreams);
    v23 = [v4 decodeObjectOfClasses:v18 forKey:v22];
    avcStreams = v11->_avcStreams;
    v11->_avcStreams = v23;

    v25 = NSStringFromSelector(sel_audioToken);
    v11->_audioToken = [v4 decodeIntegerForKey:v25];

    v26 = NSStringFromSelector(sel_streamToken);
    v11->_streamToken = [v4 decodeIntegerForKey:v26];

    v27 = NSStringFromSelector(sel_screenToken);
    v11->_screenToken = [v4 decodeIntegerForKey:v27];

    v28 = NSStringFromSelector(sel_isAudioEnabled);
    v11->_audioEnabled = [v4 decodeBoolForKey:v28];

    v29 = NSStringFromSelector(sel_isVideoEnabled);
    v11->_videoEnabled = [v4 decodeBoolForKey:v29];

    v30 = NSStringFromSelector(sel_isScreenEnabled);
    v11->_screenEnabled = [v4 decodeBoolForKey:v30];
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  v6 = NSStringFromSelector(sel_UUID);
  [v5 encodeObject:UUID forKey:v6];

  accountIdentifier = self->_accountIdentifier;
  v8 = NSStringFromSelector(sel_accountIdentifier);
  [v5 encodeObject:accountIdentifier forKey:v8];

  participantIdentifier = self->_participantIdentifier;
  v10 = NSStringFromSelector(sel_participantIdentifier);
  [v5 encodeInt64:participantIdentifier forKey:v10];

  spatialAudioSourceIdentifier = self->_spatialAudioSourceIdentifier;
  v12 = NSStringFromSelector(sel_spatialAudioSourceIdentifier);
  [v5 encodeInt64:spatialAudioSourceIdentifier forKey:v12];

  localStatus = self->_localStatus;
  v14 = NSStringFromSelector(sel_localStatus);
  [v5 encodeInt32:localStatus forKey:v14];

  v15 = [(CPParticipant *)self userContext];
  v16 = NSStringFromSelector(sel_userContext);
  [v5 encodeObject:v15 forKey:v16];

  v17 = [(CPParticipant *)self avcStreams];
  v18 = NSStringFromSelector(sel_avcStreams);
  [v5 encodeObject:v17 forKey:v18];

  v19 = [(CPParticipant *)self audioToken];
  v20 = NSStringFromSelector(sel_audioToken);
  [v5 encodeInteger:v19 forKey:v20];

  v21 = [(CPParticipant *)self streamToken];
  v22 = NSStringFromSelector(sel_streamToken);
  [v5 encodeInteger:v21 forKey:v22];

  v23 = [(CPParticipant *)self screenToken];
  v24 = NSStringFromSelector(sel_screenToken);
  [v5 encodeInteger:v23 forKey:v24];

  v25 = [(CPParticipant *)self isAudioEnabled];
  v26 = NSStringFromSelector(sel_isAudioEnabled);
  [v5 encodeBool:v25 forKey:v26];

  v27 = [(CPParticipant *)self isVideoEnabled];
  v28 = NSStringFromSelector(sel_isVideoEnabled);
  [v5 encodeBool:v27 forKey:v28];

  v29 = [(CPParticipant *)self isScreenEnabled];
  v30 = NSStringFromSelector(sel_isScreenEnabled);
  [v5 encodeBool:v29 forKey:v30];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CPParticipant alloc] initWithUUID:self->_UUID accountIdentifier:self->_accountIdentifier];
  v4->_participantIdentifier = self->_participantIdentifier;
  v5 = [(NSDictionary *)self->_userContext copy];
  userContext = v4->_userContext;
  v4->_userContext = v5;

  v4->_spatialAudioSourceIdentifier = self->_spatialAudioSourceIdentifier;
  v4->_localStatus = self->_localStatus;
  objc_storeStrong(&v4->_avcStreams, self->_avcStreams);
  v4->_audioToken = self->_audioToken;
  v4->_streamToken = self->_streamToken;
  v4->_screenToken = self->_screenToken;
  v4->_audioEnabled = self->_audioEnabled;
  v4->_videoEnabled = self->_videoEnabled;
  v4->_screenEnabled = self->_screenEnabled;
  return v4;
}

@end