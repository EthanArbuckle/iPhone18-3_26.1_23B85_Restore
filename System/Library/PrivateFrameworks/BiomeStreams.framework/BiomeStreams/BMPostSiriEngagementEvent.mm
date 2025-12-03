@interface BMPostSiriEngagementEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPostSiriEngagementEvent)initWithUISessionID:(id)d taskID:(id)iD taskType:(id)type conversationPath:(id)path taskSuccess:(int)success isUserAbandoned:(BOOL)abandoned isUserCancelled:(BOOL)cancelled pseEvents:(id)self0;
- (BMPostSiriEngagementEvent)initWithUISessionId:(id)id domain:(id)domain action:(id)action isPostSiriEngagement:(BOOL)engagement pseDeltaDuration:(double)duration pseDeltaSinceUIStart:(double)start pseDeltaSinceUIEnd:(double)end pseContents:(id)self0;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPostSiriEngagementEvent

- (BMPostSiriEngagementEvent)initWithUISessionID:(id)d taskID:(id)iD taskType:(id)type conversationPath:(id)path taskSuccess:(int)success isUserAbandoned:(BOOL)abandoned isUserCancelled:(BOOL)cancelled pseEvents:(id)self0
{
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  pathCopy = path;
  eventsCopy = events;
  v25.receiver = self;
  v25.super_class = BMPostSiriEngagementEvent;
  v19 = [(BMEventBase *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_UISessionID, d);
    objc_storeStrong(&v20->_taskID, iD);
    objc_storeStrong(&v20->_taskType, type);
    objc_storeStrong(&v20->_conversationPath, path);
    v20->_hasTaskSuccess = 1;
    v20->_taskSuccess = success;
    v20->_hasIsUserAbandoned = 1;
    v20->_isUserAbandoned = abandoned;
    v20->_hasIsUserCancelled = 1;
    v20->_isUserCancelled = cancelled;
    objc_storeStrong(&v20->_pseEvents, events);
  }

  return v20;
}

- (BMPostSiriEngagementEvent)initWithUISessionId:(id)id domain:(id)domain action:(id)action isPostSiriEngagement:(BOOL)engagement pseDeltaDuration:(double)duration pseDeltaSinceUIStart:(double)start pseDeltaSinceUIEnd:(double)end pseContents:(id)self0
{
  engagementCopy = engagement;
  v55 = *MEMORY[0x1E69E9840];
  idCopy = id;
  domainCopy = domain;
  actionCopy = action;
  contentsCopy = contents;
  v52.receiver = self;
  v52.super_class = BMPostSiriEngagementEvent;
  v23 = [(BMEventBase *)&v52 init];
  v24 = v23;
  if (v23)
  {
    v44 = engagementCopy;
    v45 = actionCopy;
    v46 = domainCopy;
    v47 = idCopy;
    objc_storeStrong(&v23->_UISessionID, id);
    taskID = v24->_taskID;
    v24->_taskID = 0;

    taskType = v24->_taskType;
    v24->_taskType = 0;

    conversationPath = v24->_conversationPath;
    v24->_conversationPath = 0;

    v24->_hasTaskSuccess = 0;
    v24->_hasIsUserAbandoned = 0;
    v24->_hasIsUserCancelled = 0;
    v43 = [[BMPostSiriEngagementEventSignalDeltaEvent alloc] initWithDuration:duration sinceUIEnd:end sinceUIStart:start];
    v28 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = contentsCopy;
    v30 = [v29 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v49;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v49 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v48 + 1) + 8 * i);
          v35 = [BMPostSiriEngagementEventSignalContent alloc];
          v36 = [v29 objectForKeyedSubscript:v34];
          v37 = [(BMPostSiriEngagementEventSignalContent *)v35 initWithKey:v34 value:v36];

          [v28 addObject:v37];
        }

        v31 = [v29 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v31);
    }

    actionCopy = v45;
    domainCopy = v46;
    v38 = [[BMPostSiriEngagementEventSignal alloc] initWithDomain:v46 action:v45 isPostSiriEngagement:v44 pseDelta:v43 pseContents:v28];
    v53 = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    pseEvents = v24->_pseEvents;
    v24->_pseEvents = v39;

    idCopy = v47;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  uISessionID = [(BMPostSiriEngagementEvent *)self UISessionID];
  taskID = [(BMPostSiriEngagementEvent *)self taskID];
  taskType = [(BMPostSiriEngagementEvent *)self taskType];
  conversationPath = [(BMPostSiriEngagementEvent *)self conversationPath];
  taskSuccess = [(BMPostSiriEngagementEvent *)self taskSuccess];
  if (taskSuccess >= 5)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", taskSuccess];
  }

  else
  {
    v9 = off_1E6E53768[taskSuccess];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPostSiriEngagementEvent isUserAbandoned](self, "isUserAbandoned")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPostSiriEngagementEvent isUserCancelled](self, "isUserCancelled")}];
  pseEvents = [(BMPostSiriEngagementEvent *)self pseEvents];
  v13 = [v3 initWithFormat:@"BMPostSiriEngagementEvent with UISessionID: %@, taskID: %@, taskType: %@, conversationPath: %@, taskSuccess: %@, isUserAbandoned: %@, isUserCancelled: %@, pseEvents: %@", uISessionID, taskID, taskType, conversationPath, v9, v10, v11, pseEvents];

  return v13;
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v49.receiver = self;
  v49.super_class = BMPostSiriEngagementEvent;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_76;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v50 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v50[0] & 0x7F) << v8;
        if ((v50[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_76;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 4)
      {
        break;
      }

      if (v16 <= 6)
      {
        if (v16 == 5)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v5->_hasTaskSuccess = 1;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v31 = [fromCopy position] + 1;
            if (v31 >= [fromCopy position] && (v32 = objc_msgSend(fromCopy, "position") + 1, v32 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v30 |= (v50[0] & 0x7F) << v28;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v28 += 7;
            v14 = v29++ >= 9;
            if (v14)
            {
              v34 = 0;
              goto LABEL_69;
            }
          }

          if ([fromCopy hasError])
          {
            v34 = 0;
          }

          else
          {
            v34 = v30;
          }

LABEL_69:
          v5->_taskSuccess = v34;
          goto LABEL_75;
        }

        if (v16 == 6)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          v5->_hasIsUserAbandoned = 1;
          while (1)
          {
            LOBYTE(v50[0]) = 0;
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v50 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v21 |= (v50[0] & 0x7F) << v19;
            if ((v50[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v14 = v20++ >= 9;
            if (v14)
            {
              LOBYTE(v25) = 0;
              goto LABEL_73;
            }
          }

          v25 = (v21 != 0) & ~[fromCopy hasError];
LABEL_73:
          v42 = 18;
LABEL_74:
          *(&v5->super.super.isa + v42) = v25;
          goto LABEL_75;
        }

LABEL_64:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_80;
        }

        goto LABEL_75;
      }

      if (v16 == 7)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        v5->_hasIsUserCancelled = 1;
        while (1)
        {
          LOBYTE(v50[0]) = 0;
          v39 = [fromCopy position] + 1;
          if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v50 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v38 |= (v50[0] & 0x7F) << v36;
          if ((v50[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v14 = v37++ >= 9;
          if (v14)
          {
            LOBYTE(v25) = 0;
            goto LABEL_71;
          }
        }

        v25 = (v38 != 0) & ~[fromCopy hasError];
LABEL_71:
        v42 = 20;
        goto LABEL_74;
      }

      if (v16 != 8)
      {
        goto LABEL_64;
      }

      v50[0] = 0;
      v50[1] = 0;
      if (!PBReaderPlaceMark() || (v26 = [[BMPostSiriEngagementEventSignal alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_80:

        goto LABEL_77;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_75:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_76;
      }
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = PBReaderReadString();
        v18 = 48;
        goto LABEL_54;
      }

      if (v16 == 4)
      {
        v17 = PBReaderReadString();
        v18 = 56;
        goto LABEL_54;
      }
    }

    else
    {
      if (v16 == 1)
      {
        v17 = PBReaderReadString();
        v18 = 32;
        goto LABEL_54;
      }

      if (v16 == 2)
      {
        v17 = PBReaderReadString();
        v18 = 40;
LABEL_54:
        v35 = *(&v5->super.super.isa + v18);
        *(&v5->super.super.isa + v18) = v17;

        goto LABEL_75;
      }
    }

    goto LABEL_64;
  }

LABEL_76:
  v44 = [v6 copy];
  pseEvents = v5->_pseEvents;
  v5->_pseEvents = v44;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_77:
    v47 = 0;
  }

  else
  {
LABEL_78:
    v47 = v5;
  }

  return v47;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_UISessionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_taskType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationPath)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasTaskSuccess)
  {
    taskSuccess = self->_taskSuccess;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasIsUserAbandoned)
  {
    isUserAbandoned = self->_isUserAbandoned;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsUserCancelled)
  {
    isUserCancelled = self->_isUserCancelled;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_pseEvents;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v13 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v6 = [[v4 alloc] initWithData:dataCopy];

    v7 = [[BMPostSiriEngagementEvent alloc] initByReadFrom:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPostSiriEngagementEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uISessionID = [(BMPostSiriEngagementEvent *)self UISessionID];
    uISessionID2 = [v5 UISessionID];
    if (uISessionID == uISessionID2)
    {
      v39 = 1;
    }

    else
    {
      uISessionID3 = [(BMPostSiriEngagementEvent *)self UISessionID];
      uISessionID4 = [v5 UISessionID];
      v39 = [uISessionID3 isEqual:uISessionID4];
    }

    taskID = [(BMPostSiriEngagementEvent *)self taskID];
    taskID2 = [v5 taskID];
    if (taskID == taskID2)
    {
      v38 = 1;
    }

    else
    {
      taskID3 = [(BMPostSiriEngagementEvent *)self taskID];
      taskID4 = [v5 taskID];
      v38 = [taskID3 isEqual:taskID4];
    }

    taskType = [(BMPostSiriEngagementEvent *)self taskType];
    taskType2 = [v5 taskType];
    if (taskType == taskType2)
    {
      HIDWORD(v35) = 1;
    }

    else
    {
      taskType3 = [(BMPostSiriEngagementEvent *)self taskType];
      taskType4 = [v5 taskType];
      HIDWORD(v35) = [taskType3 isEqual:taskType4];
    }

    conversationPath = [(BMPostSiriEngagementEvent *)self conversationPath];
    conversationPath2 = [v5 conversationPath];
    if (conversationPath == conversationPath2)
    {
      LODWORD(v35) = 1;
    }

    else
    {
      conversationPath3 = [(BMPostSiriEngagementEvent *)self conversationPath];
      conversationPath4 = [v5 conversationPath];
      LODWORD(v35) = [conversationPath3 isEqual:conversationPath4];
    }

    if (-[BMPostSiriEngagementEvent hasTaskSuccess](self, "hasTaskSuccess") || [v5 hasTaskSuccess])
    {
      if (-[BMPostSiriEngagementEvent hasTaskSuccess](self, "hasTaskSuccess", v35) && [v5 hasTaskSuccess])
      {
        taskSuccess = [(BMPostSiriEngagementEvent *)self taskSuccess];
        v24 = taskSuccess == [v5 taskSuccess];
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }

    if (-[BMPostSiriEngagementEvent hasIsUserAbandoned](self, "hasIsUserAbandoned", v35) || [v5 hasIsUserAbandoned])
    {
      if (-[BMPostSiriEngagementEvent hasIsUserAbandoned](self, "hasIsUserAbandoned") && [v5 hasIsUserAbandoned])
      {
        isUserAbandoned = [(BMPostSiriEngagementEvent *)self isUserAbandoned];
        v26 = isUserAbandoned ^ [v5 isUserAbandoned] ^ 1;
      }

      else
      {
        LOBYTE(v26) = 0;
      }
    }

    else
    {
      LOBYTE(v26) = 1;
    }

    if (-[BMPostSiriEngagementEvent hasIsUserCancelled](self, "hasIsUserCancelled") || [v5 hasIsUserCancelled])
    {
      if (-[BMPostSiriEngagementEvent hasIsUserCancelled](self, "hasIsUserCancelled") && [v5 hasIsUserCancelled])
      {
        isUserCancelled = [(BMPostSiriEngagementEvent *)self isUserCancelled];
        v28 = isUserCancelled ^ [v5 isUserCancelled] ^ 1;
      }

      else
      {
        LOBYTE(v28) = 0;
      }
    }

    else
    {
      LOBYTE(v28) = 1;
    }

    pseEvents = [(BMPostSiriEngagementEvent *)self pseEvents];
    pseEvents2 = [v5 pseEvents];
    if (pseEvents == pseEvents2)
    {
      v33 = 1;
    }

    else
    {
      pseEvents3 = [(BMPostSiriEngagementEvent *)self pseEvents];
      pseEvents4 = [v5 pseEvents];
      v33 = [pseEvents3 isEqual:pseEvents4];
    }

    v10 = v39 & v38 & v37 & v36 & v24 & v26 & v28 & v33;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

@end