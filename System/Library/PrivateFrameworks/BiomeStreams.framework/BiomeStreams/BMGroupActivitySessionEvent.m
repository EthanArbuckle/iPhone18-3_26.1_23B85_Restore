@interface BMGroupActivitySessionEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMGroupActivitySessionEvent)initWithIsActive:(BOOL)a3 sourceBundleID:(id)a4 activitySessionID:(id)a5 activityID:(id)a6 messagesChatGuid:(id)a7 participantHandles:(id)a8 memberHandles:(id)a9 experienceType:(id)a10;
- (BMGroupActivitySessionEvent)initWithProto:(id)a3;
- (BMGroupActivitySessionEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMGroupActivitySessionEvent

- (BMGroupActivitySessionEvent)initWithIsActive:(BOOL)a3 sourceBundleID:(id)a4 activitySessionID:(id)a5 activityID:(id)a6 messagesChatGuid:(id)a7 participantHandles:(id)a8 memberHandles:(id)a9 experienceType:(id)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v40.receiver = self;
  v40.super_class = BMGroupActivitySessionEvent;
  v23 = [(BMEventBase *)&v40 init];
  v24 = v23;
  if (v23)
  {
    v23->_isActive = a3;
    v25 = [v16 copy];
    sourceBundleID = v24->_sourceBundleID;
    v24->_sourceBundleID = v25;

    v27 = [v17 copy];
    activitySessionID = v24->_activitySessionID;
    v24->_activitySessionID = v27;

    v29 = [v18 copy];
    activityID = v24->_activityID;
    v24->_activityID = v29;

    v31 = [v19 copy];
    messagesChatGuid = v24->_messagesChatGuid;
    v24->_messagesChatGuid = v31;

    v33 = [v20 copy];
    participantHandles = v24->_participantHandles;
    v24->_participantHandles = v33;

    v35 = [v21 copy];
    memberHandles = v24->_memberHandles;
    v24->_memberHandles = v35;

    v37 = [v22 copy];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v5 = a3;
  v6 = [[a1 alloc] initWithProtoData:v5];

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(BMGroupActivitySessionEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMGroupActivitySessionEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_7:
    v13 = 0;
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

  v5 = v4;
  v16 = [v5 isActive];
  v6 = [v5 sourceBundleId];
  v7 = [v5 activitySessionId];
  v8 = [v5 activityId];
  v9 = [v5 messagesChatGuid];
  v10 = [v5 participantHandles];
  v11 = [v5 memberHandles];
  v12 = [v5 experienceType];

  self = [(BMGroupActivitySessionEvent *)self initWithIsActive:v16 sourceBundleID:v6 activitySessionID:v7 activityID:v8 messagesChatGuid:v9 participantHandles:v10 memberHandles:v11 experienceType:v12];
  v13 = self;
LABEL_8:

  return v13;
}

- (BMGroupActivitySessionEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBGroupActivitySessionEvent alloc] initWithData:v4];

    self = [(BMGroupActivitySessionEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setIsActive:{-[BMGroupActivitySessionEvent isActive](self, "isActive")}];
  v4 = [(BMGroupActivitySessionEvent *)self sourceBundleID];
  [v3 setSourceBundleId:v4];

  v5 = [(BMGroupActivitySessionEvent *)self activitySessionID];
  [v3 setActivitySessionId:v5];

  v6 = [(BMGroupActivitySessionEvent *)self activityID];
  [v3 setActivityId:v6];

  v7 = [(BMGroupActivitySessionEvent *)self messagesChatGuid];
  [v3 setMessagesChatGuid:v7];

  v8 = [(BMGroupActivitySessionEvent *)self participantHandles];
  v9 = [v8 mutableCopy];
  [v3 setParticipantHandles:v9];

  v10 = [(BMGroupActivitySessionEvent *)self memberHandles];
  v11 = [v10 mutableCopy];
  [v3 setMemberHandles:v11];

  v12 = [(BMGroupActivitySessionEvent *)self experienceType];
  [v3 setExperienceType:v12];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMGroupActivitySessionEvent *)self isActive];
    if (v6 != [v5 isActive])
    {
LABEL_3:
      v7 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = [(BMGroupActivitySessionEvent *)self sourceBundleID];
    v9 = [v5 sourceBundleID];
    if ([v8 isEqualToString:v9])
    {
      v10 = [(BMGroupActivitySessionEvent *)self activitySessionID];
      v11 = [v5 activitySessionID];
      if ([v10 isEqualToString:v11])
      {
        v12 = [(BMGroupActivitySessionEvent *)self activityID];
        v13 = [v5 activityID];
        if ([v12 isEqualToString:v13])
        {
          [(BMGroupActivitySessionEvent *)self experienceType];
          v14 = v26 = v12;
          v15 = [v5 experienceType];
          v27 = [v14 isEqualToString:v15];

          if (!v27)
          {
            goto LABEL_3;
          }

          v16 = [(BMGroupActivitySessionEvent *)self messagesChatGuid];

          if (v16)
          {
            v17 = [(BMGroupActivitySessionEvent *)self messagesChatGuid];
            v18 = [v5 messagesChatGuid];
            v7 = [v17 isEqualToString:v18];
          }

          else
          {
            v7 = 0;
          }

          v20 = [(BMGroupActivitySessionEvent *)self participantHandles];
          if ([v20 count])
          {
            v21 = [v5 participantHandles];
            v22 = [v21 count];

            if (!v22)
            {
LABEL_23:
              v8 = [(BMGroupActivitySessionEvent *)self memberHandles];
              if (![v8 count])
              {
                goto LABEL_15;
              }

              v24 = [v5 memberHandles];
              v25 = [v24 count];

              if (!v25)
              {
                goto LABEL_16;
              }

              v8 = [(BMGroupActivitySessionEvent *)self memberHandles];
              v9 = [v5 memberHandles];
              v7 = [v8 isEqualToArray:v9];
LABEL_14:

LABEL_15:
              goto LABEL_16;
            }

            v20 = [(BMGroupActivitySessionEvent *)self participantHandles];
            v23 = [v5 participantHandles];
            v7 = [v20 isEqualToArray:v23];
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