@interface BMPBGroupActivitySessionEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMemberHandles:(id)a3;
- (void)addParticipantHandles:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBGroupActivitySessionEvent

- (void)addParticipantHandles:(id)a3
{
  v4 = a3;
  participantHandles = self->_participantHandles;
  v8 = v4;
  if (!participantHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_participantHandles;
    self->_participantHandles = v6;

    v4 = v8;
    participantHandles = self->_participantHandles;
  }

  [(NSMutableArray *)participantHandles addObject:v4];
}

- (void)addMemberHandles:(id)a3
{
  v4 = a3;
  memberHandles = self->_memberHandles;
  v8 = v4;
  if (!memberHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_memberHandles;
    self->_memberHandles = v6;

    v4 = v8;
    memberHandles = self->_memberHandles;
  }

  [(NSMutableArray *)memberHandles addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBGroupActivitySessionEvent;
  v4 = [(BMPBGroupActivitySessionEvent *)&v8 description];
  v5 = [(BMPBGroupActivitySessionEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isActive];
    [v3 setObject:v4 forKey:@"isActive"];
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId)
  {
    [v3 setObject:sourceBundleId forKey:@"sourceBundleId"];
  }

  activitySessionId = self->_activitySessionId;
  if (activitySessionId)
  {
    [v3 setObject:activitySessionId forKey:@"activitySessionId"];
  }

  activityId = self->_activityId;
  if (activityId)
  {
    [v3 setObject:activityId forKey:@"activityId"];
  }

  messagesChatGuid = self->_messagesChatGuid;
  if (messagesChatGuid)
  {
    [v3 setObject:messagesChatGuid forKey:@"messagesChatGuid"];
  }

  experienceType = self->_experienceType;
  if (experienceType)
  {
    [v3 setObject:experienceType forKey:@"experienceType"];
  }

  participantHandles = self->_participantHandles;
  if (participantHandles)
  {
    [v3 setObject:participantHandles forKey:@"participantHandles"];
  }

  memberHandles = self->_memberHandles;
  if (memberHandles)
  {
    [v3 setObject:memberHandles forKey:@"memberHandles"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    isActive = self->_isActive;
    PBDataWriterWriteBOOLField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activitySessionId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messagesChatGuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_experienceType)
  {
    PBDataWriterWriteStringField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_participantHandles;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_memberHandles;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[64] = self->_isActive;
    v4[68] |= 1u;
  }

  v13 = v4;
  if (self->_sourceBundleId)
  {
    [v4 setSourceBundleId:?];
  }

  if (self->_activitySessionId)
  {
    [v13 setActivitySessionId:?];
  }

  if (self->_activityId)
  {
    [v13 setActivityId:?];
  }

  if (self->_messagesChatGuid)
  {
    [v13 setMessagesChatGuid:?];
  }

  if (self->_experienceType)
  {
    [v13 setExperienceType:?];
  }

  if ([(BMPBGroupActivitySessionEvent *)self participantHandlesCount])
  {
    [v13 clearParticipantHandles];
    v5 = [(BMPBGroupActivitySessionEvent *)self participantHandlesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBGroupActivitySessionEvent *)self participantHandlesAtIndex:i];
        [v13 addParticipantHandles:v8];
      }
    }
  }

  if ([(BMPBGroupActivitySessionEvent *)self memberHandlesCount])
  {
    [v13 clearMemberHandles];
    v9 = [(BMPBGroupActivitySessionEvent *)self memberHandlesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BMPBGroupActivitySessionEvent *)self memberHandlesAtIndex:j];
        [v13 addMemberHandles:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 64) = self->_isActive;
    *(v5 + 68) |= 1u;
  }

  v7 = [(NSString *)self->_sourceBundleId copyWithZone:a3];
  v8 = v6[7];
  v6[7] = v7;

  v9 = [(NSString *)self->_activitySessionId copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(NSString *)self->_activityId copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  v13 = [(NSString *)self->_messagesChatGuid copyWithZone:a3];
  v14 = v6[5];
  v6[5] = v13;

  v15 = [(NSString *)self->_experienceType copyWithZone:a3];
  v16 = v6[3];
  v6[3] = v15;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = self->_participantHandles;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v35 + 1) + 8 * v21) copyWithZone:a3];
        [v6 addParticipantHandles:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v19);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v23 = self->_memberHandles;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v32;
    do
    {
      v27 = 0;
      do
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v31 + 1) + 8 * v27) copyWithZone:{a3, v31}];
        [v6 addMemberHandles:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 68);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 68) & 1) == 0)
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 64);
  if (!self->_isActive)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if ((*(v4 + 64) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_4:
  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId | *(v4 + 7) && ![(NSString *)sourceBundleId isEqual:?])
  {
    goto LABEL_19;
  }

  activitySessionId = self->_activitySessionId;
  if (activitySessionId | *(v4 + 2))
  {
    if (![(NSString *)activitySessionId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  activityId = self->_activityId;
  if (activityId | *(v4 + 1))
  {
    if (![(NSString *)activityId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  messagesChatGuid = self->_messagesChatGuid;
  if (messagesChatGuid | *(v4 + 5))
  {
    if (![(NSString *)messagesChatGuid isEqual:?])
    {
      goto LABEL_19;
    }
  }

  experienceType = self->_experienceType;
  if (experienceType | *(v4 + 3))
  {
    if (![(NSString *)experienceType isEqual:?])
    {
      goto LABEL_19;
    }
  }

  participantHandles = self->_participantHandles;
  if (participantHandles | *(v4 + 6))
  {
    if (![(NSMutableArray *)participantHandles isEqual:?])
    {
      goto LABEL_19;
    }
  }

  memberHandles = self->_memberHandles;
  if (memberHandles | *(v4 + 4))
  {
    v13 = [(NSMutableArray *)memberHandles isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_20:

  return v13;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_isActive;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sourceBundleId hash]^ v3;
  v5 = [(NSString *)self->_activitySessionId hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_activityId hash];
  v7 = [(NSString *)self->_messagesChatGuid hash];
  v8 = v7 ^ [(NSString *)self->_experienceType hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_participantHandles hash];
  return v9 ^ [(NSMutableArray *)self->_memberHandles hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[68])
  {
    self->_isActive = v4[64];
    *&self->_has |= 1u;
  }

  if (*(v4 + 7))
  {
    [(BMPBGroupActivitySessionEvent *)self setSourceBundleId:?];
  }

  if (*(v5 + 2))
  {
    [(BMPBGroupActivitySessionEvent *)self setActivitySessionId:?];
  }

  if (*(v5 + 1))
  {
    [(BMPBGroupActivitySessionEvent *)self setActivityId:?];
  }

  if (*(v5 + 5))
  {
    [(BMPBGroupActivitySessionEvent *)self setMessagesChatGuid:?];
  }

  if (*(v5 + 3))
  {
    [(BMPBGroupActivitySessionEvent *)self setExperienceType:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v5 + 6);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBGroupActivitySessionEvent *)self addParticipantHandles:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v5 + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BMPBGroupActivitySessionEvent *)self addMemberHandles:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end