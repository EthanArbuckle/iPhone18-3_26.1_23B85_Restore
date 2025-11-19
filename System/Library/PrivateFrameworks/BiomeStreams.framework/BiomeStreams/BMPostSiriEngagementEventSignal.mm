@interface BMPostSiriEngagementEventSignal
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMPostSiriEngagementEventSignal)initWithDomain:(id)a3 action:(id)a4 isPostSiriEngagement:(BOOL)a5 pseDelta:(id)a6 pseContents:(id)a7;
- (BMPostSiriEngagementEventSignal)initWithDomain:(id)a3 action:(id)a4 isPostSiriEngagement:(BOOL)a5 pseDelta:(id)a6 pseContentsDictionary:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPostSiriEngagementEventSignal

- (BMPostSiriEngagementEventSignal)initWithDomain:(id)a3 action:(id)a4 isPostSiriEngagement:(BOOL)a5 pseDelta:(id)a6 pseContentsDictionary:(id)a7
{
  v26 = a5;
  v34 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v27 = a4;
  v10 = a6;
  v11 = a7;
  v12 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    do
    {
      v17 = 0;
      do
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v29 + 1) + 8 * v17);
        v19 = [BMPostSiriEngagementEventSignalContent alloc];
        v20 = [v13 objectForKeyedSubscript:v18];
        v21 = [(BMPostSiriEngagementEventSignalContent *)v19 initWithKey:v18 value:v20];

        [v12 addObject:v21];
        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v15);
  }

  v22 = [(BMPostSiriEngagementEventSignal *)self initWithDomain:v28 action:v27 isPostSiriEngagement:v26 pseDelta:v10 pseContents:v12];
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BMPostSiriEngagementEventSignal)initWithDomain:(id)a3 action:(id)a4 isPostSiriEngagement:(BOOL)a5 pseDelta:(id)a6 pseContents:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMPostSiriEngagementEventSignal;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domain, a3);
    objc_storeStrong(&v18->_action, a4);
    v18->_hasIsPostSiriEngagement = 1;
    v18->_isPostSiriEngagement = a5;
    objc_storeStrong(&v18->_pseDelta, a6);
    objc_storeStrong(&v18->_pseContents, a7);
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMPostSiriEngagementEventSignal *)self domain];
  v5 = [(BMPostSiriEngagementEventSignal *)self action];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPostSiriEngagementEventSignal isPostSiriEngagement](self, "isPostSiriEngagement")}];
  v7 = [(BMPostSiriEngagementEventSignal *)self pseDelta];
  v8 = [(BMPostSiriEngagementEventSignal *)self pseContents];
  v9 = [v3 initWithFormat:@"BMPostSiriEngagementEventSignal with domain: %@, action: %@, isPostSiriEngagement: %@, pseDelta: %@, pseContents: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMPostSiriEngagementEventSignal;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_47;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v38 & 0x7F) << v8;
        if ((v38 & 0x80) == 0)
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
        goto LABEL_47;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 2)
      {
        break;
      }

      switch(v16)
      {
        case 3:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          v5->_hasIsPostSiriEngagement = 1;
          while (1)
          {
            LOBYTE(v38) = 0;
            v24 = [v4 position] + 1;
            if (v24 >= [v4 position] && (v25 = objc_msgSend(v4, "position") + 1, v25 <= objc_msgSend(v4, "length")))
            {
              v26 = [v4 data];
              [v26 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v23 |= (v38 & 0x7F) << v21;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v14 = v22++ >= 9;
            if (v14)
            {
              LOBYTE(v27) = 0;
              goto LABEL_45;
            }
          }

          v27 = (v23 != 0) & ~[v4 hasError];
LABEL_45:
          v5->_isPostSiriEngagement = v27;
          break;
        case 4:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || (v28 = [[BMPostSiriEngagementEventSignalDeltaEvent alloc] initByReadFrom:v4]) == 0)
          {
LABEL_51:

            goto LABEL_48;
          }

          pseDelta = v5->_pseDelta;
          v5->_pseDelta = v28;

          PBReaderRecallMark();
          break;
        case 5:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_51;
          }

          v17 = [[BMPostSiriEngagementEventSignalContent alloc] initByReadFrom:v4];
          if (!v17)
          {
            goto LABEL_51;
          }

          v18 = v17;
          [v6 addObject:v17];
          PBReaderRecallMark();

          break;
        default:
          goto LABEL_42;
      }

LABEL_46:
      v31 = [v4 position];
      if (v31 >= [v4 length])
      {
        goto LABEL_47;
      }
    }

    if (v16 == 1)
    {
      v19 = PBReaderReadString();
      v20 = 24;
      goto LABEL_41;
    }

    if (v16 == 2)
    {
      v19 = PBReaderReadString();
      v20 = 32;
LABEL_41:
      v30 = *(&v5->super.super.isa + v20);
      *(&v5->super.super.isa + v20) = v19;

      goto LABEL_46;
    }

LABEL_42:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_46;
  }

LABEL_47:
  v32 = [v6 copy];
  pseContents = v5->_pseContents;
  v5->_pseContents = v32;

  v34 = [v4 hasError];
  if (v34)
  {
LABEL_48:
    v35 = 0;
  }

  else
  {
LABEL_49:
    v35 = v5;
  }

  return v35;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_action)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasIsPostSiriEngagement)
  {
    isPostSiriEngagement = self->_isPostSiriEngagement;
    PBDataWriterWriteBOOLField();
  }

  if (self->_pseDelta)
  {
    v17 = 0;
    PBDataWriterPlaceMark();
    [(BMPostSiriEngagementEventSignalDeltaEvent *)self->_pseDelta writeTo:v4];
    PBDataWriterRecallMark();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_pseContents;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
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

        v11 = *(*(&v13 + 1) + 8 * v10);
        v17 = 0;
        PBDataWriterPlaceMark();
        [v11 writeTo:{v4, v13}];
        PBDataWriterRecallMark();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v4 = [[BMPostSiriEngagementEventSignal alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPostSiriEngagementEventSignal *)self writeTo:v3];
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
    v6 = [(BMPostSiriEngagementEventSignal *)self domain];
    v7 = [v5 domain];
    if (v6 == v7)
    {
      v29 = 1;
    }

    else
    {
      v8 = [(BMPostSiriEngagementEventSignal *)self domain];
      v9 = [v5 domain];
      v29 = [v8 isEqual:v9];
    }

    v11 = [(BMPostSiriEngagementEventSignal *)self action];
    v12 = [v5 action];
    if (v11 == v12)
    {
      v15 = 1;
    }

    else
    {
      v13 = [(BMPostSiriEngagementEventSignal *)self action];
      v14 = [v5 action];
      v15 = [v13 isEqual:v14];
    }

    if (-[BMPostSiriEngagementEventSignal hasIsPostSiriEngagement](self, "hasIsPostSiriEngagement") || [v5 hasIsPostSiriEngagement])
    {
      if (-[BMPostSiriEngagementEventSignal hasIsPostSiriEngagement](self, "hasIsPostSiriEngagement") && [v5 hasIsPostSiriEngagement])
      {
        v16 = [(BMPostSiriEngagementEventSignal *)self isPostSiriEngagement];
        v17 = v16 ^ [v5 isPostSiriEngagement] ^ 1;
      }

      else
      {
        LOBYTE(v17) = 0;
      }
    }

    else
    {
      LOBYTE(v17) = 1;
    }

    v18 = [(BMPostSiriEngagementEventSignal *)self pseDelta];
    v19 = [v5 pseDelta];
    if (v18 == v19)
    {
      v22 = 1;
    }

    else
    {
      v20 = [(BMPostSiriEngagementEventSignal *)self pseDelta];
      v21 = [v5 pseDelta];
      v22 = [v20 isEqual:v21];
    }

    v23 = [(BMPostSiriEngagementEventSignal *)self pseContents];
    v24 = [v5 pseContents];
    if (v23 == v24)
    {
      v27 = 1;
    }

    else
    {
      v25 = [(BMPostSiriEngagementEventSignal *)self pseContents];
      v26 = [v5 pseContents];
      v27 = [v25 isEqual:v26];
    }

    v10 = v29 & v15 & v17 & v22 & v27;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end