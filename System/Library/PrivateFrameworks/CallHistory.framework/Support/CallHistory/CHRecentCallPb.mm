@interface CHRecentCallPb
+ (id)protoRecentCallWithRecentCall:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CHRecentCall)chRecentCall;
- (NSSet)chRemoteParticipantHandles;
- (NSUUID)localParticipantUUID;
- (NSUUID)outgoingLocalParticipantUUID;
- (NSUUID)participantGroupUUID;
- (NSUUID)relayHostDeviceParticipantUUID;
- (NSUUID)reminderUUID;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRemoteParticipantHandles:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setChRemoteParticipantHandles:(id)a3;
- (void)setHasAutoAnsweredReason:(BOOL)a3;
- (void)setHasBytesOfDataUsed:(BOOL)a3;
- (void)setHasCallCategory:(BOOL)a3;
- (void)setHasCallStatus:(BOOL)a3;
- (void)setHasCallType:(BOOL)a3;
- (void)setHasCallerIdAvailability:(BOOL)a3;
- (void)setHasCommunicationTrustScore:(BOOL)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasHandleType:(BOOL)a3;
- (void)setHasJunkConfidence:(BOOL)a3;
- (void)setHasMobileCountryCode:(BOOL)a3;
- (void)setHasMobileNetworkCode:(BOOL)a3;
- (void)setHasRead:(BOOL)a3;
- (void)setHasScreenSharingType:(BOOL)a3;
- (void)setHasTimeToEstablish:(BOOL)a3;
- (void)setHasUnreadCount:(BOOL)a3;
- (void)setHasVerificationStatus:(BOOL)a3;
- (void)setLocalParticipantUUID:(id)a3;
- (void)setOutgoingLocalParticipantUUID:(id)a3;
- (void)setParticipantGroupUUID:(id)a3;
- (void)setRelayHostDeviceParticipantUUID:(id)a3;
- (void)setReminderUUID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CHRecentCallPb

+ (id)protoRecentCallWithRecentCall:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CHRecentCallPb);
  v5 = [v3 bytesOfDataUsed];
  [v5 floatValue];
  [(CHRecentCallPb *)v4 setBytesOfDataUsed:?];

  v6 = [v3 name];
  [(CHRecentCallPb *)v4 setCallerName:v6];

  -[CHRecentCallPb setCallStatus:](v4, "setCallStatus:", [v3 callStatus]);
  v7 = [v3 date];
  [v7 timeIntervalSince1970];
  [(CHRecentCallPb *)v4 setDate:?];

  [v3 duration];
  [(CHRecentCallPb *)v4 setDuration:?];
  v8 = [v3 isoCountryCode];
  [(CHRecentCallPb *)v4 setIsoCountryCode:v8];

  v9 = [v3 localParticipantUUID];
  [(CHRecentCallPb *)v4 setLocalParticipantUUID:v9];

  v10 = [v3 outgoingLocalParticipantUUID];
  [(CHRecentCallPb *)v4 setOutgoingLocalParticipantUUID:v10];

  v11 = objc_alloc_init(CHFeatureFlags);
  if ([v11 isDualSimParityEnabled])
  {
    v12 = [v3 localParticipantUUID];
    [(CHRecentCallPb *)v4 setRelayHostDeviceParticipantUUID:v12];
  }

  v13 = [v3 participantGroupUUID];
  [(CHRecentCallPb *)v4 setParticipantGroupUUID:v13];

  v14 = [v3 serviceProvider];
  [(CHRecentCallPb *)v4 setServiceProvider:v14];

  v15 = [v3 timeToEstablish];
  [v15 doubleValue];
  [(CHRecentCallPb *)v4 setTimeToEstablish:?];

  v16 = [v3 remoteParticipantHandles];
  [(CHRecentCallPb *)v4 setChRemoteParticipantHandles:v16];

  -[CHRecentCallPb setJunkConfidence:](v4, "setJunkConfidence:", [v3 junkConfidence]);
  -[CHRecentCallPb setVerificationStatus:](v4, "setVerificationStatus:", [v3 verificationStatus]);
  v17 = [v3 conversationID];
  v18 = [v17 UUIDString];
  [(CHRecentCallPb *)v4 setConversationID:v18];

  -[CHRecentCallPb setAutoAnsweredReason:](v4, "setAutoAnsweredReason:", [v3 autoAnsweredReason]);
  -[CHRecentCallPb setScreenSharingType:](v4, "setScreenSharingType:", [v3 screenSharingType]);
  v19 = [v3 reminderUUID];
  [(CHRecentCallPb *)v4 setReminderUUID:v19];

  -[CHRecentCallPb setCommunicationTrustScore:](v4, "setCommunicationTrustScore:", [v3 communicationTrustScore]);
  -[CHRecentCallPb setCallCategory:](v4, "setCallCategory:", [v3 callCategory]);
  v20 = [v3 callerId];
  [(CHRecentCallPb *)v4 setCallerId:v20];

  -[CHRecentCallPb setCallType:](v4, "setCallType:", [v3 callType]);
  -[CHRecentCallPb setHandleType:](v4, "setHandleType:", [v3 handleType]);
  v21 = [v3 uniqueId];
  [(CHRecentCallPb *)v4 setUniqueId:v21];

  return v4;
}

- (NSUUID)localParticipantUUID
{
  v3 = [(CHRecentCallPb *)self localParticipantUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CHRecentCallPb *)self localParticipantUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setLocalParticipantUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CHRecentCallPb *)self setLocalParticipantUUIDString:v4];
}

- (NSUUID)outgoingLocalParticipantUUID
{
  v3 = [(CHRecentCallPb *)self outgoingLocalParticipantUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CHRecentCallPb *)self outgoingLocalParticipantUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setOutgoingLocalParticipantUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CHRecentCallPb *)self setOutgoingLocalParticipantUUIDString:v4];
}

- (NSUUID)relayHostDeviceParticipantUUID
{
  v3 = [(CHRecentCallPb *)self relayHostDeviceParticipantUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CHRecentCallPb *)self relayHostDeviceParticipantUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setRelayHostDeviceParticipantUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CHRecentCallPb *)self setRelayHostDeviceParticipantUUIDString:v4];
}

- (NSUUID)reminderUUID
{
  v3 = [(CHRecentCallPb *)self reminderUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CHRecentCallPb *)self reminderUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setReminderUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CHRecentCallPb *)self setReminderUUIDString:v4];
}

- (NSUUID)participantGroupUUID
{
  v3 = [(CHRecentCallPb *)self participantGroupUUIDString];
  if (v3)
  {
    v4 = [NSUUID alloc];
    v5 = [(CHRecentCallPb *)self participantGroupUUIDString];
    v6 = [v4 initWithUUIDString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setParticipantGroupUUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(CHRecentCallPb *)self setParticipantGroupUUIDString:v4];
}

- (NSSet)chRemoteParticipantHandles
{
  v3 = [(CHRecentCallPb *)self remoteParticipantHandles];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CHRecentCallPb *)self remoteParticipantHandles];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) chHandle];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [NSSet setWithArray:v4];

  return v11;
}

- (void)setChRemoteParticipantHandles:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [CHHandlePb handleWithCHHandle:*(*(&v13 + 1) + 8 * v10), v13];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  [(CHRecentCallPb *)self setRemoteParticipantHandles:v12];
}

- (CHRecentCall)chRecentCall
{
  v3 = objc_alloc_init(CHRecentCall);
  [(CHRecentCallPb *)self bytesOfDataUsed];
  v4 = [NSNumber numberWithFloat:?];
  [v3 setBytesOfDataUsed:v4];

  [v3 setCallStatus:{-[CHRecentCallPb callStatus](self, "callStatus")}];
  v5 = [NSDate alloc];
  [(CHRecentCallPb *)self date];
  v6 = [v5 initWithTimeIntervalSince1970:?];
  [v3 setDate:v6];

  [(CHRecentCallPb *)self duration];
  [v3 setDuration:?];
  v7 = [(CHRecentCallPb *)self isoCountryCode];
  [v3 setIsoCountryCode:v7];

  v8 = objc_alloc_init(CHFeatureFlags);
  if (![v8 isDualSimParityEnabled] || (+[TUCallCapabilities supportsPrimaryCalling](TUCallCapabilities, "supportsPrimaryCalling") & 1) != 0)
  {
    v9 = [(CHRecentCallPb *)self localParticipantUUID];
LABEL_4:
    [v3 setLocalParticipantUUID:v9];
    goto LABEL_5;
  }

  v9 = [(CHRecentCallPb *)self localParticipantUUID];
  if (v9)
  {
    goto LABEL_4;
  }

  v32 = [(CHRecentCallPb *)self relayHostDeviceParticipantUUID];
  [v3 setLocalParticipantUUID:v32];

LABEL_5:
  v10 = [(CHRecentCallPb *)self callerName];
  [v3 setName:v10];

  v11 = [(CHRecentCallPb *)self outgoingLocalParticipantUUID];
  [v3 setOutgoingLocalParticipantUUID:v11];

  v12 = [(CHRecentCallPb *)self participantGroupUUID];
  [v3 setParticipantGroupUUID:v12];

  v13 = [(CHRecentCallPb *)self chRemoteParticipantHandles];
  [v3 setRemoteParticipantHandles:v13];

  v14 = [(CHRecentCallPb *)self serviceProvider];
  [v3 setServiceProvider:v14];

  v15 = [(CHRecentCallPb *)self reminderUUID];
  [v3 setReminderUUID:v15];

  if ([(CHRecentCallPb *)self hasConversationID])
  {
    v16 = [NSUUID alloc];
    v17 = [(CHRecentCallPb *)self conversationID];
    v18 = [v16 initWithUUIDString:v17];
    [v3 setConversationID:v18];
  }

  [(CHRecentCallPb *)self timeToEstablish];
  if (v19 != 0.0)
  {
    [(CHRecentCallPb *)self timeToEstablish];
    v20 = [NSNumber numberWithDouble:?];
    [v3 setTimeToEstablish:v20];
  }

  if ([(CHRecentCallPb *)self hasJunkConfidence])
  {
    v21 = [(CHRecentCallPb *)self junkConfidence];
  }

  else
  {
    v21 = 0;
  }

  [v3 setJunkConfidence:v21];
  if ([(CHRecentCallPb *)self verificationStatus])
  {
    v22 = [(CHRecentCallPb *)self verificationStatus];
  }

  else
  {
    v22 = 0;
  }

  [v3 setVerificationStatus:v22];
  if ([(CHRecentCallPb *)self autoAnsweredReason])
  {
    v23 = [(CHRecentCallPb *)self autoAnsweredReason];
  }

  else
  {
    v23 = 0;
  }

  [v3 setAutoAnsweredReason:v23];
  if ([(CHRecentCallPb *)self screenSharingType])
  {
    v24 = [(CHRecentCallPb *)self screenSharingType];
  }

  else
  {
    v24 = 0;
  }

  [v3 setScreenSharingType:v24];
  if ([(CHRecentCallPb *)self communicationTrustScore])
  {
    v25 = [(CHRecentCallPb *)self communicationTrustScore];
  }

  else
  {
    v25 = 4;
  }

  [v3 setCommunicationTrustScore:v25];
  [v3 setCallCategory:{-[CHRecentCallPb callCategory](self, "callCategory")}];
  v26 = [(CHRecentCallPb *)self callerId];
  [v3 setCallerId:v26];

  [v3 setCallType:{-[CHRecentCallPb callType](self, "callType")}];
  v27 = [(CHRecentCallPb *)self uniqueId];
  [v3 setUniqueId:v27];

  if ([(CHRecentCallPb *)self hasHandleType])
  {
    [v3 setHandleType:{-[CHRecentCallPb handleType](self, "handleType")}];
  }

  else
  {
    v28 = [(CHRecentCallPb *)self callerId];
    [v3 setHandleType:{+[CHHandle handleTypeForValue:](CHHandle, "handleTypeForValue:", v28)}];
  }

  v29 = [v3 dictionaryRepresentation];
  v33 = v29;
  v30 = [NSArray arrayWithObjects:&v33 count:1];
  [v3 setCallOccurrences:v30];

  return v3;
}

- (void)setHasCallType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasCallStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasCallerIdAvailability:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasUnreadCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasBytesOfDataUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasMobileCountryCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasMobileNetworkCode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasCallCategory:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasHandleType:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasTimeToEstablish:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)addRemoteParticipantHandles:(id)a3
{
  v4 = a3;
  remoteParticipantHandles = self->_remoteParticipantHandles;
  v8 = v4;
  if (!remoteParticipantHandles)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_remoteParticipantHandles;
    self->_remoteParticipantHandles = v6;

    v4 = v8;
    remoteParticipantHandles = self->_remoteParticipantHandles;
  }

  [(NSMutableArray *)remoteParticipantHandles addObject:v4];
}

- (void)setHasJunkConfidence:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasVerificationStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasAutoAnsweredReason:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasScreenSharingType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasCommunicationTrustScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = CHRecentCallPb;
  v3 = [(CHRecentCallPb *)&v7 description];
  v4 = [(CHRecentCallPb *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v5 = v3;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v3 setObject:uniqueId forKey:@"uniqueId"];
  }

  callerId = self->_callerId;
  if (callerId)
  {
    [v5 setObject:callerId forKey:@"callerId"];
  }

  has = self->_has;
  if (*&has)
  {
    v44 = [NSNumber numberWithDouble:self->_date];
    [v5 setObject:v44 forKey:@"date"];

    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_7:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_70;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_7;
  }

  v45 = [NSNumber numberWithUnsignedInt:self->_callType];
  [v5 setObject:v45 forKey:@"callType"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_71;
  }

LABEL_70:
  v46 = [NSNumber numberWithUnsignedInt:self->_callStatus];
  [v5 setObject:v46 forKey:@"callStatus"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_72;
  }

LABEL_71:
  v47 = [NSNumber numberWithUnsignedInt:self->_callerIdAvailability];
  [v5 setObject:v47 forKey:@"callerIdAvailability"];

  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_73;
  }

LABEL_72:
  v48 = [NSNumber numberWithBool:self->_read];
  [v5 setObject:v48 forKey:@"read"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

LABEL_73:
  v49 = [NSNumber numberWithUnsignedInt:self->_unreadCount];
  [v5 setObject:v49 forKey:@"unreadCount"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_75;
  }

LABEL_74:
  v50 = [NSNumber numberWithDouble:self->_duration];
  [v5 setObject:v50 forKey:@"duration"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_76;
  }

LABEL_75:
  *&v4 = self->_bytesOfDataUsed;
  v51 = [NSNumber numberWithFloat:v4];
  [v5 setObject:v51 forKey:@"bytesOfDataUsed"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_76:
  v52 = [NSNumber numberWithUnsignedInt:self->_mobileCountryCode];
  [v5 setObject:v52 forKey:@"mobileCountryCode"];

  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    v9 = [NSNumber numberWithUnsignedInt:self->_mobileNetworkCode];
    [v5 setObject:v9 forKey:@"mobileNetworkCode"];
  }

LABEL_16:
  devicePhoneId = self->_devicePhoneId;
  if (devicePhoneId)
  {
    [v5 setObject:devicePhoneId forKey:@"devicePhoneId"];
  }

  transaction = self->_transaction;
  if (transaction)
  {
    [v5 setObject:transaction forKey:@"transaction"];
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode)
  {
    [v5 setObject:isoCountryCode forKey:@"isoCountryCode"];
  }

  callerIdLocation = self->_callerIdLocation;
  if (callerIdLocation)
  {
    [v5 setObject:callerIdLocation forKey:@"callerIdLocation"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v14 = [NSNumber numberWithUnsignedInt:self->_callCategory];
    [v5 setObject:v14 forKey:@"callCategory"];
  }

  serviceProvider = self->_serviceProvider;
  if (serviceProvider)
  {
    [v5 setObject:serviceProvider forKey:@"serviceProvider"];
  }

  v16 = self->_has;
  if ((*&v16 & 0x400) != 0)
  {
    v17 = [NSNumber numberWithUnsignedInt:self->_handleType];
    [v5 setObject:v17 forKey:@"handleType"];

    v16 = self->_has;
  }

  if ((*&v16 & 4) != 0)
  {
    v18 = [NSNumber numberWithDouble:self->_timeToEstablish];
    [v5 setObject:v18 forKey:@"timeToEstablish"];
  }

  localParticipantHandle = self->_localParticipantHandle;
  if (localParticipantHandle)
  {
    v20 = [(CHHandlePb *)localParticipantHandle dictionaryRepresentation];
    [v5 setObject:v20 forKey:@"localParticipantHandle"];
  }

  if ([(NSMutableArray *)self->_remoteParticipantHandles count])
  {
    v21 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_remoteParticipantHandles, "count")}];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v22 = self->_remoteParticipantHandles;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v53 objects:v57 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v54;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v54 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = [*(*(&v53 + 1) + 8 * i) dictionaryRepresentation];
          [v21 addObject:v27];
        }

        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v53 objects:v57 count:16];
      }

      while (v24);
    }

    [v5 setObject:v21 forKey:@"remoteParticipantHandles"];
  }

  localParticipantUUIDString = self->_localParticipantUUIDString;
  if (localParticipantUUIDString)
  {
    [v5 setObject:localParticipantUUIDString forKey:@"localParticipantUUIDString"];
  }

  outgoingLocalParticipantUUIDString = self->_outgoingLocalParticipantUUIDString;
  if (outgoingLocalParticipantUUIDString)
  {
    [v5 setObject:outgoingLocalParticipantUUIDString forKey:@"outgoingLocalParticipantUUIDString"];
  }

  v30 = self->_has;
  if ((*&v30 & 0x800) != 0)
  {
    v31 = [NSNumber numberWithUnsignedInt:self->_junkConfidence];
    [v5 setObject:v31 forKey:@"junkConfidence"];

    v30 = self->_has;
  }

  if ((*&v30 & 0x10000) != 0)
  {
    v32 = [NSNumber numberWithUnsignedInt:self->_verificationStatus];
    [v5 setObject:v32 forKey:@"verificationStatus"];
  }

  callerName = self->_callerName;
  if (callerName)
  {
    [v5 setObject:callerName forKey:@"callerName"];
  }

  participantGroupUUIDString = self->_participantGroupUUIDString;
  if (participantGroupUUIDString)
  {
    [v5 setObject:participantGroupUUIDString forKey:@"participantGroupUUIDString"];
  }

  conversationID = self->_conversationID;
  if (conversationID)
  {
    [v5 setObject:conversationID forKey:@"conversationID"];
  }

  v36 = self->_has;
  if ((*&v36 & 8) != 0)
  {
    v37 = [NSNumber numberWithUnsignedInt:self->_autoAnsweredReason];
    [v5 setObject:v37 forKey:@"autoAnsweredReason"];

    v36 = self->_has;
  }

  if ((*&v36 & 0x4000) != 0)
  {
    v38 = [NSNumber numberWithUnsignedInt:self->_screenSharingType];
    [v5 setObject:v38 forKey:@"screenSharingType"];
  }

  relayHostDeviceParticipantUUIDString = self->_relayHostDeviceParticipantUUIDString;
  if (relayHostDeviceParticipantUUIDString)
  {
    [v5 setObject:relayHostDeviceParticipantUUIDString forKey:@"relayHostDeviceParticipantUUIDString"];
  }

  reminderUUIDString = self->_reminderUUIDString;
  if (reminderUUIDString)
  {
    [v5 setObject:reminderUUIDString forKey:@"reminderUUIDString"];
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v41 = [NSNumber numberWithUnsignedInt:self->_communicationTrustScore];
    [v5 setObject:v41 forKey:@"communicationTrustScore"];
  }

  v42 = v5;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_callerId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (*&has)
  {
    date = self->_date;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_7:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_68;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_7;
  }

  callType = self->_callType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_69;
  }

LABEL_68:
  callStatus = self->_callStatus;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_70;
  }

LABEL_69:
  callerIdAvailability = self->_callerIdAvailability;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_71;
  }

LABEL_70:
  read = self->_read;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_72;
  }

LABEL_71:
  unreadCount = self->_unreadCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_73;
  }

LABEL_72:
  duration = self->_duration;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_74;
  }

LABEL_73:
  bytesOfDataUsed = self->_bytesOfDataUsed;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_74:
  mobileCountryCode = self->_mobileCountryCode;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    mobileNetworkCode = self->_mobileNetworkCode;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
  if (self->_devicePhoneId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_transaction)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_isoCountryCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_callerIdLocation)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    callCategory = self->_callCategory;
    PBDataWriterWriteUint32Field();
  }

  if (self->_serviceProvider)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((*&v8 & 0x400) != 0)
  {
    handleType = self->_handleType;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
  }

  if ((*&v8 & 4) != 0)
  {
    timeToEstablish = self->_timeToEstablish;
    PBDataWriterWriteDoubleField();
  }

  if (self->_localParticipantHandle)
  {
    PBDataWriterWriteSubmessage();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = self->_remoteParticipantHandles;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v33 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  if (self->_localParticipantUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_outgoingLocalParticipantUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  v17 = self->_has;
  if ((*&v17 & 0x800) != 0)
  {
    junkConfidence = self->_junkConfidence;
    PBDataWriterWriteUint32Field();
    v17 = self->_has;
  }

  if ((*&v17 & 0x10000) != 0)
  {
    verificationStatus = self->_verificationStatus;
    PBDataWriterWriteUint32Field();
  }

  if (self->_callerName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_participantGroupUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationID)
  {
    PBDataWriterWriteStringField();
  }

  v20 = self->_has;
  if ((*&v20 & 8) != 0)
  {
    autoAnsweredReason = self->_autoAnsweredReason;
    PBDataWriterWriteUint32Field();
    v20 = self->_has;
  }

  if ((*&v20 & 0x4000) != 0)
  {
    screenSharingType = self->_screenSharingType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_relayHostDeviceParticipantUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_reminderUUIDString)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    communicationTrustScore = self->_communicationTrustScore;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v14 = v4;
  if (self->_uniqueId)
  {
    [v4 setUniqueId:?];
    v4 = v14;
  }

  if (self->_callerId)
  {
    [v14 setCallerId:?];
    v4 = v14;
  }

  has = self->_has;
  if (*&has)
  {
    *(v4 + 1) = *&self->_date;
    *(v4 + 61) |= 1u;
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_7:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_67;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 12) = self->_callType;
  *(v4 + 61) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_8:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v4 + 11) = self->_callStatus;
  *(v4 + 61) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_9:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v4 + 16) = self->_callerIdAvailability;
  *(v4 + 61) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v4 + 240) = self->_read;
  *(v4 + 61) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v4 + 58) = self->_unreadCount;
  *(v4 + 61) |= 0x8000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v4 + 2) = *&self->_duration;
  *(v4 + 61) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v4 + 9) = LODWORD(self->_bytesOfDataUsed);
  *(v4 + 61) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_73:
  *(v4 + 38) = self->_mobileCountryCode;
  *(v4 + 61) |= 0x1000u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_15:
    *(v4 + 39) = self->_mobileNetworkCode;
    *(v4 + 61) |= 0x2000u;
  }

LABEL_16:
  if (self->_devicePhoneId)
  {
    [v14 setDevicePhoneId:?];
    v4 = v14;
  }

  if (self->_transaction)
  {
    [v14 setTransaction:?];
    v4 = v14;
  }

  if (self->_isoCountryCode)
  {
    [v14 setIsoCountryCode:?];
    v4 = v14;
  }

  if (self->_callerIdLocation)
  {
    [v14 setCallerIdLocation:?];
    v4 = v14;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 10) = self->_callCategory;
    *(v4 + 61) |= 0x20u;
  }

  if (self->_serviceProvider)
  {
    [v14 setServiceProvider:?];
    v4 = v14;
  }

  v6 = self->_has;
  if ((*&v6 & 0x400) != 0)
  {
    *(v4 + 28) = self->_handleType;
    *(v4 + 61) |= 0x400u;
    v6 = self->_has;
  }

  if ((*&v6 & 4) != 0)
  {
    *(v4 + 3) = *&self->_timeToEstablish;
    *(v4 + 61) |= 4u;
  }

  if (self->_localParticipantHandle)
  {
    [v14 setLocalParticipantHandle:?];
  }

  if ([(CHRecentCallPb *)self remoteParticipantHandlesCount])
  {
    [v14 clearRemoteParticipantHandles];
    v7 = [(CHRecentCallPb *)self remoteParticipantHandlesCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(CHRecentCallPb *)self remoteParticipantHandlesAtIndex:i];
        [v14 addRemoteParticipantHandles:v10];
      }
    }
  }

  if (self->_localParticipantUUIDString)
  {
    [v14 setLocalParticipantUUIDString:?];
  }

  v11 = v14;
  if (self->_outgoingLocalParticipantUUIDString)
  {
    [v14 setOutgoingLocalParticipantUUIDString:?];
    v11 = v14;
  }

  v12 = self->_has;
  if ((*&v12 & 0x800) != 0)
  {
    v11[32] = self->_junkConfidence;
    v11[61] |= 0x800u;
    v12 = self->_has;
  }

  if ((*&v12 & 0x10000) != 0)
  {
    v11[59] = self->_verificationStatus;
    v11[61] |= 0x10000u;
  }

  if (self->_callerName)
  {
    [v14 setCallerName:?];
    v11 = v14;
  }

  if (self->_participantGroupUUIDString)
  {
    [v14 setParticipantGroupUUIDString:?];
    v11 = v14;
  }

  if (self->_conversationID)
  {
    [v14 setConversationID:?];
    v11 = v14;
  }

  v13 = self->_has;
  if ((*&v13 & 8) != 0)
  {
    v11[8] = self->_autoAnsweredReason;
    v11[61] |= 8u;
    v13 = self->_has;
  }

  if ((*&v13 & 0x4000) != 0)
  {
    v11[50] = self->_screenSharingType;
    v11[61] |= 0x4000u;
  }

  if (self->_relayHostDeviceParticipantUUIDString)
  {
    [v14 setRelayHostDeviceParticipantUUIDString:?];
    v11 = v14;
  }

  if (self->_reminderUUIDString)
  {
    [v14 setReminderUUIDString:?];
    v11 = v14;
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    v11[22] = self->_communicationTrustScore;
    v11[61] |= 0x200u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:a3];
  v7 = v5[28];
  v5[28] = v6;

  v8 = [(NSString *)self->_callerId copyWithZone:a3];
  v9 = v5[7];
  v5[7] = v8;

  has = self->_has;
  if (*&has)
  {
    v5[1] = *&self->_date;
    *(v5 + 61) |= 1u;
    has = self->_has;
    if ((*&has & 0x80) == 0)
    {
LABEL_3:
      if ((*&has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 12) = self->_callType;
  *(v5 + 61) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_4:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 11) = self->_callStatus;
  *(v5 + 61) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 16) = self->_callerIdAvailability;
  *(v5 + 61) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 240) = self->_read;
  *(v5 + 61) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 58) = self->_unreadCount;
  *(v5 + 61) |= 0x8000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_8:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  v5[2] = *&self->_duration;
  *(v5 + 61) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_9:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 9) = LODWORD(self->_bytesOfDataUsed);
  *(v5 + 61) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_10:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_44:
  *(v5 + 38) = self->_mobileCountryCode;
  *(v5 + 61) |= 0x1000u;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_11:
    *(v5 + 39) = self->_mobileNetworkCode;
    *(v5 + 61) |= 0x2000u;
  }

LABEL_12:
  v11 = [(NSString *)self->_devicePhoneId copyWithZone:a3];
  v12 = v5[13];
  v5[13] = v11;

  v13 = [(NSString *)self->_transaction copyWithZone:a3];
  v14 = v5[27];
  v5[27] = v13;

  v15 = [(NSString *)self->_isoCountryCode copyWithZone:a3];
  v16 = v5[15];
  v5[15] = v15;

  v17 = [(NSString *)self->_callerIdLocation copyWithZone:a3];
  v18 = v5[9];
  v5[9] = v17;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 10) = self->_callCategory;
    *(v5 + 61) |= 0x20u;
  }

  v19 = [(NSString *)self->_serviceProvider copyWithZone:a3];
  v20 = v5[26];
  v5[26] = v19;

  v21 = self->_has;
  if ((*&v21 & 0x400) != 0)
  {
    *(v5 + 28) = self->_handleType;
    *(v5 + 61) |= 0x400u;
    v21 = self->_has;
  }

  if ((*&v21 & 4) != 0)
  {
    v5[3] = *&self->_timeToEstablish;
    *(v5 + 61) |= 4u;
  }

  v22 = [(CHHandlePb *)self->_localParticipantHandle copyWithZone:a3];
  v23 = v5[17];
  v5[17] = v22;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v24 = self->_remoteParticipantHandles;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    do
    {
      v28 = 0;
      do
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [*(*(&v47 + 1) + 8 * v28) copyWithZone:{a3, v47}];
        [v5 addRemoteParticipantHandles:v29];

        v28 = v28 + 1;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v26);
  }

  v30 = [(NSString *)self->_localParticipantUUIDString copyWithZone:a3];
  v31 = v5[18];
  v5[18] = v30;

  v32 = [(NSString *)self->_outgoingLocalParticipantUUIDString copyWithZone:a3];
  v33 = v5[20];
  v5[20] = v32;

  v34 = self->_has;
  if ((*&v34 & 0x800) != 0)
  {
    *(v5 + 32) = self->_junkConfidence;
    *(v5 + 61) |= 0x800u;
    v34 = self->_has;
  }

  if ((*&v34 & 0x10000) != 0)
  {
    *(v5 + 59) = self->_verificationStatus;
    *(v5 + 61) |= 0x10000u;
  }

  v35 = [(NSString *)self->_callerName copyWithZone:a3, v47];
  v36 = v5[10];
  v5[10] = v35;

  v37 = [(NSString *)self->_participantGroupUUIDString copyWithZone:a3];
  v38 = v5[21];
  v5[21] = v37;

  v39 = [(NSString *)self->_conversationID copyWithZone:a3];
  v40 = v5[12];
  v5[12] = v39;

  v41 = self->_has;
  if ((*&v41 & 8) != 0)
  {
    *(v5 + 8) = self->_autoAnsweredReason;
    *(v5 + 61) |= 8u;
    v41 = self->_has;
  }

  if ((*&v41 & 0x4000) != 0)
  {
    *(v5 + 50) = self->_screenSharingType;
    *(v5 + 61) |= 0x4000u;
  }

  v42 = [(NSString *)self->_relayHostDeviceParticipantUUIDString copyWithZone:a3];
  v43 = v5[22];
  v5[22] = v42;

  v44 = [(NSString *)self->_reminderUUIDString copyWithZone:a3];
  v45 = v5[23];
  v5[23] = v44;

  if ((*(&self->_has + 1) & 2) != 0)
  {
    *(v5 + 22) = self->_communicationTrustScore;
    *(v5 + 61) |= 0x200u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_128;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(v4 + 28))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_128;
    }
  }

  callerId = self->_callerId;
  if (callerId | *(v4 + 7))
  {
    if (![(NSString *)callerId isEqual:?])
    {
      goto LABEL_128;
    }
  }

  has = self->_has;
  v8 = *(v4 + 61);
  if (*&has)
  {
    if ((v8 & 1) == 0 || self->_date != *(v4 + 1))
    {
      goto LABEL_128;
    }
  }

  else if (v8)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_callType != *(v4 + 12))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_callStatus != *(v4 + 11))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0 || self->_callerIdAvailability != *(v4 + 16))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v8 & 0x20000) == 0)
    {
      goto LABEL_128;
    }

    v9 = *(v4 + 240);
    if (self->_read)
    {
      if ((*(v4 + 240) & 1) == 0)
      {
        goto LABEL_128;
      }
    }

    else if (*(v4 + 240))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x20000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v8 & 0x8000) == 0 || self->_unreadCount != *(v4 + 58))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x8000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_duration != *(v4 + 2))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_bytesOfDataUsed != *(v4 + 9))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0 || self->_mobileCountryCode != *(v4 + 38))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0 || self->_mobileNetworkCode != *(v4 + 39))
    {
      goto LABEL_128;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_128;
  }

  devicePhoneId = self->_devicePhoneId;
  if (devicePhoneId | *(v4 + 13) && ![(NSString *)devicePhoneId isEqual:?])
  {
    goto LABEL_128;
  }

  transaction = self->_transaction;
  if (transaction | *(v4 + 27))
  {
    if (![(NSString *)transaction isEqual:?])
    {
      goto LABEL_128;
    }
  }

  isoCountryCode = self->_isoCountryCode;
  if (isoCountryCode | *(v4 + 15))
  {
    if (![(NSString *)isoCountryCode isEqual:?])
    {
      goto LABEL_128;
    }
  }

  callerIdLocation = self->_callerIdLocation;
  if (callerIdLocation | *(v4 + 9))
  {
    if (![(NSString *)callerIdLocation isEqual:?])
    {
      goto LABEL_128;
    }
  }

  v14 = self->_has;
  v15 = *(v4 + 61);
  if ((*&v14 & 0x20) != 0)
  {
    if ((v15 & 0x20) == 0 || self->_callCategory != *(v4 + 10))
    {
      goto LABEL_128;
    }
  }

  else if ((v15 & 0x20) != 0)
  {
    goto LABEL_128;
  }

  serviceProvider = self->_serviceProvider;
  if (serviceProvider | *(v4 + 26))
  {
    if ([(NSString *)serviceProvider isEqual:?])
    {
      v14 = self->_has;
      goto LABEL_75;
    }

LABEL_128:
    v31 = 0;
    goto LABEL_129;
  }

LABEL_75:
  v17 = *(v4 + 61);
  if ((*&v14 & 0x400) != 0)
  {
    if ((v17 & 0x400) == 0 || self->_handleType != *(v4 + 28))
    {
      goto LABEL_128;
    }
  }

  else if ((v17 & 0x400) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v14 & 4) != 0)
  {
    if ((v17 & 4) == 0 || self->_timeToEstablish != *(v4 + 3))
    {
      goto LABEL_128;
    }
  }

  else if ((v17 & 4) != 0)
  {
    goto LABEL_128;
  }

  localParticipantHandle = self->_localParticipantHandle;
  if (localParticipantHandle | *(v4 + 17) && ![(CHHandlePb *)localParticipantHandle isEqual:?])
  {
    goto LABEL_128;
  }

  remoteParticipantHandles = self->_remoteParticipantHandles;
  if (remoteParticipantHandles | *(v4 + 24))
  {
    if (![(NSMutableArray *)remoteParticipantHandles isEqual:?])
    {
      goto LABEL_128;
    }
  }

  localParticipantUUIDString = self->_localParticipantUUIDString;
  if (localParticipantUUIDString | *(v4 + 18))
  {
    if (![(NSString *)localParticipantUUIDString isEqual:?])
    {
      goto LABEL_128;
    }
  }

  outgoingLocalParticipantUUIDString = self->_outgoingLocalParticipantUUIDString;
  if (outgoingLocalParticipantUUIDString | *(v4 + 20))
  {
    if (![(NSString *)outgoingLocalParticipantUUIDString isEqual:?])
    {
      goto LABEL_128;
    }
  }

  v22 = self->_has;
  v23 = *(v4 + 61);
  if ((*&v22 & 0x800) != 0)
  {
    if ((v23 & 0x800) == 0 || self->_junkConfidence != *(v4 + 32))
    {
      goto LABEL_128;
    }
  }

  else if ((v23 & 0x800) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v22 & 0x10000) != 0)
  {
    if ((v23 & 0x10000) == 0 || self->_verificationStatus != *(v4 + 59))
    {
      goto LABEL_128;
    }
  }

  else if ((v23 & 0x10000) != 0)
  {
    goto LABEL_128;
  }

  callerName = self->_callerName;
  if (callerName | *(v4 + 10) && ![(NSString *)callerName isEqual:?])
  {
    goto LABEL_128;
  }

  participantGroupUUIDString = self->_participantGroupUUIDString;
  if (participantGroupUUIDString | *(v4 + 21))
  {
    if (![(NSString *)participantGroupUUIDString isEqual:?])
    {
      goto LABEL_128;
    }
  }

  conversationID = self->_conversationID;
  if (conversationID | *(v4 + 12))
  {
    if (![(NSString *)conversationID isEqual:?])
    {
      goto LABEL_128;
    }
  }

  v27 = self->_has;
  v28 = *(v4 + 61);
  if ((*&v27 & 8) != 0)
  {
    if ((v28 & 8) == 0 || self->_autoAnsweredReason != *(v4 + 8))
    {
      goto LABEL_128;
    }
  }

  else if ((v28 & 8) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v27 & 0x4000) != 0)
  {
    if ((v28 & 0x4000) == 0 || self->_screenSharingType != *(v4 + 50))
    {
      goto LABEL_128;
    }
  }

  else if ((v28 & 0x4000) != 0)
  {
    goto LABEL_128;
  }

  relayHostDeviceParticipantUUIDString = self->_relayHostDeviceParticipantUUIDString;
  if (relayHostDeviceParticipantUUIDString | *(v4 + 22) && ![(NSString *)relayHostDeviceParticipantUUIDString isEqual:?])
  {
    goto LABEL_128;
  }

  reminderUUIDString = self->_reminderUUIDString;
  if (reminderUUIDString | *(v4 + 23))
  {
    if (![(NSString *)reminderUUIDString isEqual:?])
    {
      goto LABEL_128;
    }
  }

  if ((*(&self->_has + 1) & 2) != 0)
  {
    if ((*(v4 + 61) & 0x200) == 0 || self->_communicationTrustScore != *(v4 + 22))
    {
      goto LABEL_128;
    }

    v31 = 1;
  }

  else
  {
    v31 = (*(v4 + 61) & 0x200) == 0;
  }

LABEL_129:

  return v31;
}

- (unint64_t)hash
{
  v62 = [(NSString *)self->_uniqueId hash];
  v61 = [(NSString *)self->_callerId hash];
  has = self->_has;
  if (*&has)
  {
    date = self->_date;
    if (date < 0.0)
    {
      date = -date;
    }

    *v3.i64 = floor(date + 0.5);
    v8 = (date - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((*&has & 0x80) != 0)
  {
    v59 = 2654435761 * self->_callType;
    if ((*&has & 0x40) != 0)
    {
LABEL_11:
      v58 = 2654435761 * self->_callStatus;
      if ((*&has & 0x100) != 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v59 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_11;
    }
  }

  v58 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_12:
    v57 = 2654435761 * self->_callerIdAvailability;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  v57 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_13:
    v56 = 2654435761 * self->_read;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    v55 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_15;
    }

LABEL_24:
    v13 = 0;
    goto LABEL_25;
  }

LABEL_22:
  v56 = 0;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  v55 = 2654435761 * self->_unreadCount;
  if ((*&has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_15:
  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v3.i64 = floor(duration + 0.5);
  v11 = (duration - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v12), v4, v3);
  v13 = 2654435761u * *v3.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_25:
  if ((*&has & 0x10) != 0)
  {
    bytesOfDataUsed = self->_bytesOfDataUsed;
    if (bytesOfDataUsed < 0.0)
    {
      bytesOfDataUsed = -bytesOfDataUsed;
    }

    *v3.i32 = floorf(bytesOfDataUsed + 0.5);
    v16 = (bytesOfDataUsed - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v17.i64[0] = 0x8000000080000000;
    v17.i64[1] = 0x8000000080000000;
    v14 = 2654435761u * *vbslq_s8(v17, v4, v3).i32;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabsf(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    v52 = 2654435761 * self->_mobileCountryCode;
  }

  else
  {
    v52 = 0;
  }

  v60 = v6;
  v53 = v14;
  v54 = v13;
  if ((*&has & 0x2000) != 0)
  {
    v51 = 2654435761 * self->_mobileNetworkCode;
  }

  else
  {
    v51 = 0;
  }

  v50 = [(NSString *)self->_devicePhoneId hash];
  v49 = [(NSString *)self->_transaction hash];
  v48 = [(NSString *)self->_isoCountryCode hash];
  v47 = [(NSString *)self->_callerIdLocation hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v46 = 2654435761 * self->_callCategory;
  }

  else
  {
    v46 = 0;
  }

  v45 = [(NSString *)self->_serviceProvider hash];
  v20 = self->_has;
  if ((*&v20 & 0x400) != 0)
  {
    v44 = 2654435761 * self->_handleType;
    if ((*&v20 & 4) != 0)
    {
      goto LABEL_46;
    }

LABEL_51:
    v24 = 0;
    goto LABEL_52;
  }

  v44 = 0;
  if ((*&v20 & 4) == 0)
  {
    goto LABEL_51;
  }

LABEL_46:
  timeToEstablish = self->_timeToEstablish;
  if (timeToEstablish < 0.0)
  {
    timeToEstablish = -timeToEstablish;
  }

  *v18.i64 = floor(timeToEstablish + 0.5);
  v22 = (timeToEstablish - *v18.i64) * 1.84467441e19;
  *v19.i64 = *v18.i64 - trunc(*v18.i64 * 5.42101086e-20) * 1.84467441e19;
  v23.f64[0] = NAN;
  v23.f64[1] = NAN;
  v24 = 2654435761u * *vbslq_s8(vnegq_f64(v23), v19, v18).i64;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v24 += v22;
    }
  }

  else
  {
    v24 -= fabs(v22);
  }

LABEL_52:
  v43 = v24;
  v42 = [(CHHandlePb *)self->_localParticipantHandle hash];
  v41 = [(NSMutableArray *)self->_remoteParticipantHandles hash];
  v40 = [(NSString *)self->_localParticipantUUIDString hash];
  v39 = [(NSString *)self->_outgoingLocalParticipantUUIDString hash];
  v25 = self->_has;
  if ((*&v25 & 0x800) != 0)
  {
    v37 = 2654435761 * self->_junkConfidence;
    if ((*&v25 & 0x10000) != 0)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v37 = 0;
    if ((*&v25 & 0x10000) != 0)
    {
LABEL_54:
      v26 = 2654435761 * self->_verificationStatus;
      goto LABEL_57;
    }
  }

  v26 = 0;
LABEL_57:
  v27 = [(NSString *)self->_callerName hash];
  v28 = [(NSString *)self->_participantGroupUUIDString hash];
  v29 = [(NSString *)self->_conversationID hash];
  v30 = self->_has;
  if ((*&v30 & 8) != 0)
  {
    v31 = 2654435761 * self->_autoAnsweredReason;
    if ((*&v30 & 0x4000) != 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v31 = 0;
    if ((*&v30 & 0x4000) != 0)
    {
LABEL_59:
      v32 = 2654435761 * self->_screenSharingType;
      goto LABEL_62;
    }
  }

  v32 = 0;
LABEL_62:
  v33 = [(NSString *)self->_relayHostDeviceParticipantUUIDString hash];
  v34 = [(NSString *)self->_reminderUUIDString hash];
  if ((*(&self->_has + 1) & 2) != 0)
  {
    v35 = 2654435761 * self->_communicationTrustScore;
  }

  else
  {
    v35 = 0;
  }

  return v61 ^ v62 ^ v60 ^ v59 ^ v58 ^ v57 ^ v56 ^ v55 ^ v54 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v26 ^ v27 ^ v28 ^ v29 ^ v31 ^ v32 ^ v33 ^ v34 ^ v35;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 28))
  {
    [(CHRecentCallPb *)self setUniqueId:?];
  }

  if (*(v4 + 7))
  {
    [(CHRecentCallPb *)self setCallerId:?];
  }

  v5 = *(v4 + 61);
  if (v5)
  {
    self->_date = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 61);
    if ((v5 & 0x80) == 0)
    {
LABEL_7:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_7;
  }

  self->_callType = *(v4 + 12);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 61);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_callStatus = *(v4 + 11);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 61);
  if ((v5 & 0x100) == 0)
  {
LABEL_9:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_callerIdAvailability = *(v4 + 16);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 61);
  if ((v5 & 0x20000) == 0)
  {
LABEL_10:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_read = *(v4 + 240);
  *&self->_has |= 0x20000u;
  v5 = *(v4 + 61);
  if ((v5 & 0x8000) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_unreadCount = *(v4 + 58);
  *&self->_has |= 0x8000u;
  v5 = *(v4 + 61);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_duration = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 61);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_bytesOfDataUsed = *(v4 + 9);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 61);
  if ((v5 & 0x1000) == 0)
  {
LABEL_14:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_43:
  self->_mobileCountryCode = *(v4 + 38);
  *&self->_has |= 0x1000u;
  if ((*(v4 + 61) & 0x2000) != 0)
  {
LABEL_15:
    self->_mobileNetworkCode = *(v4 + 39);
    *&self->_has |= 0x2000u;
  }

LABEL_16:
  if (*(v4 + 13))
  {
    [(CHRecentCallPb *)self setDevicePhoneId:?];
  }

  if (*(v4 + 27))
  {
    [(CHRecentCallPb *)self setTransaction:?];
  }

  if (*(v4 + 15))
  {
    [(CHRecentCallPb *)self setIsoCountryCode:?];
  }

  if (*(v4 + 9))
  {
    [(CHRecentCallPb *)self setCallerIdLocation:?];
  }

  if ((*(v4 + 244) & 0x20) != 0)
  {
    self->_callCategory = *(v4 + 10);
    *&self->_has |= 0x20u;
  }

  if (*(v4 + 26))
  {
    [(CHRecentCallPb *)self setServiceProvider:?];
  }

  v6 = *(v4 + 61);
  if ((v6 & 0x400) != 0)
  {
    self->_handleType = *(v4 + 28);
    *&self->_has |= 0x400u;
    v6 = *(v4 + 61);
  }

  if ((v6 & 4) != 0)
  {
    self->_timeToEstablish = *(v4 + 3);
    *&self->_has |= 4u;
  }

  localParticipantHandle = self->_localParticipantHandle;
  v8 = *(v4 + 17);
  if (localParticipantHandle)
  {
    if (v8)
    {
      [(CHHandlePb *)localParticipantHandle mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(CHRecentCallPb *)self setLocalParticipantHandle:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = *(v4 + 24);
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(CHRecentCallPb *)self addRemoteParticipantHandles:*(*(&v16 + 1) + 8 * i), v16];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  if (*(v4 + 18))
  {
    [(CHRecentCallPb *)self setLocalParticipantUUIDString:?];
  }

  if (*(v4 + 20))
  {
    [(CHRecentCallPb *)self setOutgoingLocalParticipantUUIDString:?];
  }

  v14 = *(v4 + 61);
  if ((v14 & 0x800) != 0)
  {
    self->_junkConfidence = *(v4 + 32);
    *&self->_has |= 0x800u;
    v14 = *(v4 + 61);
  }

  if ((v14 & 0x10000) != 0)
  {
    self->_verificationStatus = *(v4 + 59);
    *&self->_has |= 0x10000u;
  }

  if (*(v4 + 10))
  {
    [(CHRecentCallPb *)self setCallerName:?];
  }

  if (*(v4 + 21))
  {
    [(CHRecentCallPb *)self setParticipantGroupUUIDString:?];
  }

  if (*(v4 + 12))
  {
    [(CHRecentCallPb *)self setConversationID:?];
  }

  v15 = *(v4 + 61);
  if ((v15 & 8) != 0)
  {
    self->_autoAnsweredReason = *(v4 + 8);
    *&self->_has |= 8u;
    v15 = *(v4 + 61);
  }

  if ((v15 & 0x4000) != 0)
  {
    self->_screenSharingType = *(v4 + 50);
    *&self->_has |= 0x4000u;
  }

  if (*(v4 + 22))
  {
    [(CHRecentCallPb *)self setRelayHostDeviceParticipantUUIDString:?];
  }

  if (*(v4 + 23))
  {
    [(CHRecentCallPb *)self setReminderUUIDString:?];
  }

  if ((*(v4 + 245) & 2) != 0)
  {
    self->_communicationTrustScore = *(v4 + 22);
    *&self->_has |= 0x200u;
  }
}

@end