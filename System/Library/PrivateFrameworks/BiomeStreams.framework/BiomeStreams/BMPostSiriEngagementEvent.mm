@interface BMPostSiriEngagementEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPostSiriEngagementEvent)initWithUISessionID:(id)a3 taskID:(id)a4 taskType:(id)a5 conversationPath:(id)a6 taskSuccess:(int)a7 isUserAbandoned:(BOOL)a8 isUserCancelled:(BOOL)a9 pseEvents:(id)a10;
- (BMPostSiriEngagementEvent)initWithUISessionId:(id)a3 domain:(id)a4 action:(id)a5 isPostSiriEngagement:(BOOL)a6 pseDeltaDuration:(double)a7 pseDeltaSinceUIStart:(double)a8 pseDeltaSinceUIEnd:(double)a9 pseContents:(id)a10;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPostSiriEngagementEvent

- (BMPostSiriEngagementEvent)initWithUISessionID:(id)a3 taskID:(id)a4 taskType:(id)a5 conversationPath:(id)a6 taskSuccess:(int)a7 isUserAbandoned:(BOOL)a8 isUserCancelled:(BOOL)a9 pseEvents:(id)a10
{
  v15 = a3;
  v16 = a4;
  v24 = a5;
  v17 = a6;
  v18 = a10;
  v25.receiver = self;
  v25.super_class = BMPostSiriEngagementEvent;
  v19 = [(BMEventBase *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_UISessionID, a3);
    objc_storeStrong(&v20->_taskID, a4);
    objc_storeStrong(&v20->_taskType, a5);
    objc_storeStrong(&v20->_conversationPath, a6);
    v20->_hasTaskSuccess = 1;
    v20->_taskSuccess = a7;
    v20->_hasIsUserAbandoned = 1;
    v20->_isUserAbandoned = a8;
    v20->_hasIsUserCancelled = 1;
    v20->_isUserCancelled = a9;
    objc_storeStrong(&v20->_pseEvents, a10);
  }

  return v20;
}

- (BMPostSiriEngagementEvent)initWithUISessionId:(id)a3 domain:(id)a4 action:(id)a5 isPostSiriEngagement:(BOOL)a6 pseDeltaDuration:(double)a7 pseDeltaSinceUIStart:(double)a8 pseDeltaSinceUIEnd:(double)a9 pseContents:(id)a10
{
  v14 = a6;
  v55 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a10;
  v52.receiver = self;
  v52.super_class = BMPostSiriEngagementEvent;
  v23 = [(BMEventBase *)&v52 init];
  v24 = v23;
  if (v23)
  {
    v44 = v14;
    v45 = v21;
    v46 = v20;
    v47 = v19;
    objc_storeStrong(&v23->_UISessionID, a3);
    taskID = v24->_taskID;
    v24->_taskID = 0;

    taskType = v24->_taskType;
    v24->_taskType = 0;

    conversationPath = v24->_conversationPath;
    v24->_conversationPath = 0;

    v24->_hasTaskSuccess = 0;
    v24->_hasIsUserAbandoned = 0;
    v24->_hasIsUserCancelled = 0;
    v43 = [[BMPostSiriEngagementEventSignalDeltaEvent alloc] initWithDuration:a7 sinceUIEnd:a9 sinceUIStart:a8];
    v28 = objc_opt_new();
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v29 = v22;
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

    v21 = v45;
    v20 = v46;
    v38 = [[BMPostSiriEngagementEventSignal alloc] initWithDomain:v46 action:v45 isPostSiriEngagement:v44 pseDelta:v43 pseContents:v28];
    v53 = v38;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v53 count:1];
    pseEvents = v24->_pseEvents;
    v24->_pseEvents = v39;

    v19 = v47;
  }

  v41 = *MEMORY[0x1E69E9840];
  return v24;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPostSiriEngagementEvent *)self UISessionID];
  v5 = [(BMPostSiriEngagementEvent *)self taskID];
  v6 = [(BMPostSiriEngagementEvent *)self taskType];
  v7 = [(BMPostSiriEngagementEvent *)self conversationPath];
  v8 = [(BMPostSiriEngagementEvent *)self taskSuccess];
  if (v8 >= 5)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
  }

  else
  {
    v9 = off_1E6E53768[v8];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPostSiriEngagementEvent isUserAbandoned](self, "isUserAbandoned")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPostSiriEngagementEvent isUserCancelled](self, "isUserCancelled")}];
  v12 = [(BMPostSiriEngagementEvent *)self pseEvents];
  v13 = [v3 initWithFormat:@"BMPostSiriEngagementEvent with UISessionID: %@, taskID: %@, taskType: %@, conversationPath: %@, taskSuccess: %@, isUserAbandoned: %@, isUserCancelled: %@, pseEvents: %@", v4, v5, v6, v7, v9, v10, v11, v12];

  return v13;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = BMPostSiriEngagementEvent;
  v5 = [(BMEventBase *)&v49 init];
  if (!v5)
  {
    goto LABEL_78;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_76;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v50[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v50 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
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
            v31 = [v4 position] + 1;
            if (v31 >= [v4 position] && (v32 = objc_msgSend(v4, "position") + 1, v32 <= objc_msgSend(v4, "length")))
            {
              v33 = [v4 data];
              [v33 getBytes:v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v22 = [v4 position] + 1;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
            {
              v24 = [v4 data];
              [v24 getBytes:v50 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          v25 = (v21 != 0) & ~[v4 hasError];
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
          v39 = [v4 position] + 1;
          if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 1, v40 <= objc_msgSend(v4, "length")))
          {
            v41 = [v4 data];
            [v41 getBytes:v50 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
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

        v25 = (v38 != 0) & ~[v4 hasError];
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
      if (!PBReaderPlaceMark() || (v26 = [[BMPostSiriEngagementEventSignal alloc] initByReadFrom:v4]) == 0)
      {
LABEL_80:

        goto LABEL_77;
      }

      v27 = v26;
      [v6 addObject:v26];
      PBReaderRecallMark();

LABEL_75:
      v43 = [v4 position];
      if (v43 >= [v4 length])
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

  v46 = [v4 hasError];
  if (v46)
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

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        [v13 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v4 = MEMORY[0x1E69C65B8];
    v5 = a3;
    v6 = [[v4 alloc] initWithData:v5];

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
  v4 = [v3 immutableData];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPostSiriEngagementEvent *)self UISessionID];
    v7 = [v5 UISessionID];
    if (v6 == v7)
    {
      v39 = 1;
    }

    else
    {
      v8 = [(BMPostSiriEngagementEvent *)self UISessionID];
      v9 = [v5 UISessionID];
      v39 = [v8 isEqual:v9];
    }

    v11 = [(BMPostSiriEngagementEvent *)self taskID];
    v12 = [v5 taskID];
    if (v11 == v12)
    {
      v38 = 1;
    }

    else
    {
      v13 = [(BMPostSiriEngagementEvent *)self taskID];
      v14 = [v5 taskID];
      v38 = [v13 isEqual:v14];
    }

    v15 = [(BMPostSiriEngagementEvent *)self taskType];
    v16 = [v5 taskType];
    if (v15 == v16)
    {
      HIDWORD(v35) = 1;
    }

    else
    {
      v17 = [(BMPostSiriEngagementEvent *)self taskType];
      v18 = [v5 taskType];
      HIDWORD(v35) = [v17 isEqual:v18];
    }

    v19 = [(BMPostSiriEngagementEvent *)self conversationPath];
    v20 = [v5 conversationPath];
    if (v19 == v20)
    {
      LODWORD(v35) = 1;
    }

    else
    {
      v21 = [(BMPostSiriEngagementEvent *)self conversationPath];
      v22 = [v5 conversationPath];
      LODWORD(v35) = [v21 isEqual:v22];
    }

    if (-[BMPostSiriEngagementEvent hasTaskSuccess](self, "hasTaskSuccess") || [v5 hasTaskSuccess])
    {
      if (-[BMPostSiriEngagementEvent hasTaskSuccess](self, "hasTaskSuccess", v35) && [v5 hasTaskSuccess])
      {
        v23 = [(BMPostSiriEngagementEvent *)self taskSuccess];
        v24 = v23 == [v5 taskSuccess];
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
        v25 = [(BMPostSiriEngagementEvent *)self isUserAbandoned];
        v26 = v25 ^ [v5 isUserAbandoned] ^ 1;
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
        v27 = [(BMPostSiriEngagementEvent *)self isUserCancelled];
        v28 = v27 ^ [v5 isUserCancelled] ^ 1;
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

    v29 = [(BMPostSiriEngagementEvent *)self pseEvents];
    v30 = [v5 pseEvents];
    if (v29 == v30)
    {
      v33 = 1;
    }

    else
    {
      v31 = [(BMPostSiriEngagementEvent *)self pseEvents];
      v32 = [v5 pseEvents];
      v33 = [v31 isEqual:v32];
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