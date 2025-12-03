@interface CPParticipant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentToParticipant:(id)participant;
- (CPParticipant)initWithAccountIdentifier:(id)identifier;
- (CPParticipant)initWithCoder:(id)coder;
- (CPParticipant)initWithUUID:(id)d accountIdentifier:(id)identifier;
- (id)_localStatusDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPParticipant

- (CPParticipant)initWithAccountIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E696AFB0];
  identifierCopy = identifier;
  uUID = [v4 UUID];
  v7 = [(CPParticipant *)self initWithUUID:uUID accountIdentifier:identifierCopy];

  return v7;
}

- (CPParticipant)initWithUUID:(id)d accountIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = CPParticipant;
  v9 = [(CPParticipant *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_UUID, d);
    objc_storeStrong(&v10->_accountIdentifier, identifier);
    *&v10->_audioToken = xmmword_1AEE07AB0;
  }

  return v10;
}

- (id)_localStatusDescription
{
  localStatus = [(CPParticipant *)self localStatus];
  if (localStatus > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E7A45CC8[localStatus];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  uUID = [(CPParticipant *)self UUID];
  [v6 appendFormat:@" UUID=%@", uUID];

  accountIdentifier = [(CPParticipant *)self accountIdentifier];
  [v6 appendFormat:@" accountIdentifier=%@", accountIdentifier];

  [v6 appendFormat:@" participantID=%llu", -[CPParticipant participantIdentifier](self, "participantIdentifier")];
  [v6 appendFormat:@" streamToken=%ld", -[CPParticipant streamToken](self, "streamToken")];
  [v6 appendFormat:@" screenToken=%ld", -[CPParticipant screenToken](self, "screenToken")];
  [v6 appendFormat:@" isVideoEnabled=%d", -[CPParticipant isVideoEnabled](self, "isVideoEnabled")];
  [v6 appendFormat:@" isScreenEnabled=%d", -[CPParticipant isScreenEnabled](self, "isScreenEnabled")];
  [v6 appendFormat:@" spatialAudioSourceIdentifier=%llu", -[CPParticipant spatialAudioSourceIdentifier](self, "spatialAudioSourceIdentifier")];
  [v6 appendFormat:@" localStatus=%d", -[CPParticipant localStatus](self, "localStatus")];
  avcStreams = [(CPParticipant *)self avcStreams];
  [v6 appendFormat:@" avcStreams=%@", avcStreams];

  [v6 appendString:@">"];
  v10 = [v6 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPParticipant *)self isEquivalentToParticipant:equalCopy];

  return v5;
}

- (BOOL)isEquivalentToParticipant:(id)participant
{
  participantCopy = participant;
  accountIdentifier = [(CPParticipant *)self accountIdentifier];
  accountIdentifier2 = [participantCopy accountIdentifier];
  if ([accountIdentifier isEqual:accountIdentifier2])
  {
    participantIdentifier = [(CPParticipant *)self participantIdentifier];
    v8 = participantIdentifier == [participantCopy participantIdentifier];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  accountIdentifier = [(CPParticipant *)self accountIdentifier];
  v4 = [accountIdentifier hash];
  participantIdentifier = [(CPParticipant *)self participantIdentifier];

  return participantIdentifier ^ v4;
}

- (CPParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_UUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_accountIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = [(CPParticipant *)self initWithUUID:v7 accountIdentifier:v10];
  if (v11)
  {
    v12 = NSStringFromSelector(sel_participantIdentifier);
    v11->_participantIdentifier = [coderCopy decodeInt64ForKey:v12];

    v13 = NSStringFromSelector(sel_spatialAudioSourceIdentifier);
    v11->_spatialAudioSourceIdentifier = [coderCopy decodeInt64ForKey:v13];

    v14 = NSStringFromSelector(sel_localStatus);
    v11->_localStatus = [coderCopy decodeInt32ForKey:v14];

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}];
    v19 = NSStringFromSelector(sel_userContext);
    v20 = [coderCopy decodeObjectOfClasses:v18 forKey:v19];
    userContext = v11->_userContext;
    v11->_userContext = v20;

    v22 = NSStringFromSelector(sel_avcStreams);
    v23 = [coderCopy decodeObjectOfClasses:v18 forKey:v22];
    avcStreams = v11->_avcStreams;
    v11->_avcStreams = v23;

    v25 = NSStringFromSelector(sel_audioToken);
    v11->_audioToken = [coderCopy decodeIntegerForKey:v25];

    v26 = NSStringFromSelector(sel_streamToken);
    v11->_streamToken = [coderCopy decodeIntegerForKey:v26];

    v27 = NSStringFromSelector(sel_screenToken);
    v11->_screenToken = [coderCopy decodeIntegerForKey:v27];

    v28 = NSStringFromSelector(sel_isAudioEnabled);
    v11->_audioEnabled = [coderCopy decodeBoolForKey:v28];

    v29 = NSStringFromSelector(sel_isVideoEnabled);
    v11->_videoEnabled = [coderCopy decodeBoolForKey:v29];

    v30 = NSStringFromSelector(sel_isScreenEnabled);
    v11->_screenEnabled = [coderCopy decodeBoolForKey:v30];
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:UUID forKey:v6];

  accountIdentifier = self->_accountIdentifier;
  v8 = NSStringFromSelector(sel_accountIdentifier);
  [coderCopy encodeObject:accountIdentifier forKey:v8];

  participantIdentifier = self->_participantIdentifier;
  v10 = NSStringFromSelector(sel_participantIdentifier);
  [coderCopy encodeInt64:participantIdentifier forKey:v10];

  spatialAudioSourceIdentifier = self->_spatialAudioSourceIdentifier;
  v12 = NSStringFromSelector(sel_spatialAudioSourceIdentifier);
  [coderCopy encodeInt64:spatialAudioSourceIdentifier forKey:v12];

  localStatus = self->_localStatus;
  v14 = NSStringFromSelector(sel_localStatus);
  [coderCopy encodeInt32:localStatus forKey:v14];

  userContext = [(CPParticipant *)self userContext];
  v16 = NSStringFromSelector(sel_userContext);
  [coderCopy encodeObject:userContext forKey:v16];

  avcStreams = [(CPParticipant *)self avcStreams];
  v18 = NSStringFromSelector(sel_avcStreams);
  [coderCopy encodeObject:avcStreams forKey:v18];

  audioToken = [(CPParticipant *)self audioToken];
  v20 = NSStringFromSelector(sel_audioToken);
  [coderCopy encodeInteger:audioToken forKey:v20];

  streamToken = [(CPParticipant *)self streamToken];
  v22 = NSStringFromSelector(sel_streamToken);
  [coderCopy encodeInteger:streamToken forKey:v22];

  screenToken = [(CPParticipant *)self screenToken];
  v24 = NSStringFromSelector(sel_screenToken);
  [coderCopy encodeInteger:screenToken forKey:v24];

  isAudioEnabled = [(CPParticipant *)self isAudioEnabled];
  v26 = NSStringFromSelector(sel_isAudioEnabled);
  [coderCopy encodeBool:isAudioEnabled forKey:v26];

  isVideoEnabled = [(CPParticipant *)self isVideoEnabled];
  v28 = NSStringFromSelector(sel_isVideoEnabled);
  [coderCopy encodeBool:isVideoEnabled forKey:v28];

  isScreenEnabled = [(CPParticipant *)self isScreenEnabled];
  v30 = NSStringFromSelector(sel_isScreenEnabled);
  [coderCopy encodeBool:isScreenEnabled forKey:v30];
}

- (id)copyWithZone:(_NSZone *)zone
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