@interface BMGroupActivitySessionEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMGroupActivitySessionEvent)initWithIsActive:(BOOL)active sourceBundleID:(id)d activitySessionID:(id)iD activityID:(id)activityID messagesChatGuid:(id)guid participantHandles:(id)handles memberHandles:(id)memberHandles experienceType:(id)self0;
- (BMGroupActivitySessionEvent)initWithProto:(id)proto;
- (BMGroupActivitySessionEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMGroupActivitySessionEvent

- (BMGroupActivitySessionEvent)initWithIsActive:(BOOL)active sourceBundleID:(id)d activitySessionID:(id)iD activityID:(id)activityID messagesChatGuid:(id)guid participantHandles:(id)handles memberHandles:(id)memberHandles experienceType:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  activityIDCopy = activityID;
  guidCopy = guid;
  handlesCopy = handles;
  memberHandlesCopy = memberHandles;
  typeCopy = type;
  v40.receiver = self;
  v40.super_class = BMGroupActivitySessionEvent;
  v23 = [(BMEventBase *)&v40 init];
  v24 = v23;
  if (v23)
  {
    v23->_isActive = active;
    v25 = [dCopy copy];
    sourceBundleID = v24->_sourceBundleID;
    v24->_sourceBundleID = v25;

    v27 = [iDCopy copy];
    activitySessionID = v24->_activitySessionID;
    v24->_activitySessionID = v27;

    v29 = [activityIDCopy copy];
    activityID = v24->_activityID;
    v24->_activityID = v29;

    v31 = [guidCopy copy];
    messagesChatGuid = v24->_messagesChatGuid;
    v24->_messagesChatGuid = v31;

    v33 = [handlesCopy copy];
    participantHandles = v24->_participantHandles;
    v24->_participantHandles = v33;

    v35 = [memberHandlesCopy copy];
    memberHandles = v24->_memberHandles;
    v24->_memberHandles = v35;

    v37 = [typeCopy copy];
    experienceType = v24->_experienceType;
    v24->_experienceType = v37;
  }

  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self->_isActive)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [v3 initWithFormat:@"GroupActivitySessionEvent event with sourceBundleID: %@ activitySessionID: %@ activityID: %@ messagesChatGuid: %@ participantHandles: %@ memberHandles: %@ experienceType: %@ isActive: %@", self->_sourceBundleID, self->_activitySessionID, self->_activityID, self->_messagesChatGuid, self->_participantHandles, self->_memberHandles, self->_experienceType, v4];

  return v5;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)encodeAsProto
{
  proto = [(BMGroupActivitySessionEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMGroupActivitySessionEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [(BMGroupActivitySessionEvent *)self initWithProto:v14];
    }

    goto LABEL_7;
  }

  v5 = protoCopy;
  isActive = [v5 isActive];
  sourceBundleId = [v5 sourceBundleId];
  activitySessionId = [v5 activitySessionId];
  activityId = [v5 activityId];
  messagesChatGuid = [v5 messagesChatGuid];
  participantHandles = [v5 participantHandles];
  memberHandles = [v5 memberHandles];
  experienceType = [v5 experienceType];

  self = [(BMGroupActivitySessionEvent *)self initWithIsActive:isActive sourceBundleID:sourceBundleId activitySessionID:activitySessionId activityID:activityId messagesChatGuid:messagesChatGuid participantHandles:participantHandles memberHandles:memberHandles experienceType:experienceType];
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (BMGroupActivitySessionEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBGroupActivitySessionEvent alloc] initWithData:dataCopy];

    self = [(BMGroupActivitySessionEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setIsActive:{-[BMGroupActivitySessionEvent isActive](self, "isActive")}];
  sourceBundleID = [(BMGroupActivitySessionEvent *)self sourceBundleID];
  [v3 setSourceBundleId:sourceBundleID];

  activitySessionID = [(BMGroupActivitySessionEvent *)self activitySessionID];
  [v3 setActivitySessionId:activitySessionID];

  activityID = [(BMGroupActivitySessionEvent *)self activityID];
  [v3 setActivityId:activityID];

  messagesChatGuid = [(BMGroupActivitySessionEvent *)self messagesChatGuid];
  [v3 setMessagesChatGuid:messagesChatGuid];

  participantHandles = [(BMGroupActivitySessionEvent *)self participantHandles];
  v9 = [participantHandles mutableCopy];
  [v3 setParticipantHandles:v9];

  memberHandles = [(BMGroupActivitySessionEvent *)self memberHandles];
  v11 = [memberHandles mutableCopy];
  [v3 setMemberHandles:v11];

  experienceType = [(BMGroupActivitySessionEvent *)self experienceType];
  [v3 setExperienceType:experienceType];

  return v3;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActive];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_sourceBundleID hash];
  v6 = v5 ^ [(NSString *)self->_activitySessionID hash]^ v4;
  v7 = [(NSString *)self->_activityID hash];
  v8 = v7 ^ [(NSString *)self->_experienceType hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    isActive = [(BMGroupActivitySessionEvent *)self isActive];
    if (isActive != [v5 isActive])
    {
LABEL_3:
      v7 = 0;
LABEL_16:

      goto LABEL_17;
    }

    sourceBundleID = [(BMGroupActivitySessionEvent *)self sourceBundleID];
    sourceBundleID2 = [v5 sourceBundleID];
    if ([sourceBundleID isEqualToString:sourceBundleID2])
    {
      activitySessionID = [(BMGroupActivitySessionEvent *)self activitySessionID];
      activitySessionID2 = [v5 activitySessionID];
      if ([activitySessionID isEqualToString:activitySessionID2])
      {
        activityID = [(BMGroupActivitySessionEvent *)self activityID];
        activityID2 = [v5 activityID];
        if ([activityID isEqualToString:activityID2])
        {
          [(BMGroupActivitySessionEvent *)self experienceType];
          v14 = v26 = activityID;
          experienceType = [v5 experienceType];
          v27 = [v14 isEqualToString:experienceType];

          if (!v27)
          {
            goto LABEL_3;
          }

          messagesChatGuid = [(BMGroupActivitySessionEvent *)self messagesChatGuid];

          if (messagesChatGuid)
          {
            messagesChatGuid2 = [(BMGroupActivitySessionEvent *)self messagesChatGuid];
            messagesChatGuid3 = [v5 messagesChatGuid];
            v7 = [messagesChatGuid2 isEqualToString:messagesChatGuid3];
          }

          else
          {
            v7 = 0;
          }

          participantHandles = [(BMGroupActivitySessionEvent *)self participantHandles];
          if ([participantHandles count])
          {
            participantHandles2 = [v5 participantHandles];
            v22 = [participantHandles2 count];

            if (!v22)
            {
LABEL_23:
              sourceBundleID = [(BMGroupActivitySessionEvent *)self memberHandles];
              if (![sourceBundleID count])
              {
                goto LABEL_15;
              }

              memberHandles = [v5 memberHandles];
              v25 = [memberHandles count];

              if (!v25)
              {
                goto LABEL_16;
              }

              sourceBundleID = [(BMGroupActivitySessionEvent *)self memberHandles];
              sourceBundleID2 = [v5 memberHandles];
              v7 = [sourceBundleID isEqualToArray:sourceBundleID2];
LABEL_14:

LABEL_15:
              goto LABEL_16;
            }

            participantHandles = [(BMGroupActivitySessionEvent *)self participantHandles];
            participantHandles3 = [v5 participantHandles];
            v7 = [participantHandles isEqualToArray:participantHandles3];
          }

          goto LABEL_23;
        }
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  v7 = 0;
LABEL_17:

  return v7;
}

@end