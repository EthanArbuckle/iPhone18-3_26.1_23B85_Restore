@interface BMPostSiriEngagementEventSignal
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMPostSiriEngagementEventSignal)initWithDomain:(id)domain action:(id)action isPostSiriEngagement:(BOOL)engagement pseDelta:(id)delta pseContents:(id)contents;
- (BMPostSiriEngagementEventSignal)initWithDomain:(id)domain action:(id)action isPostSiriEngagement:(BOOL)engagement pseDelta:(id)delta pseContentsDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPostSiriEngagementEventSignal

- (BMPostSiriEngagementEventSignal)initWithDomain:(id)domain action:(id)action isPostSiriEngagement:(BOOL)engagement pseDelta:(id)delta pseContentsDictionary:(id)dictionary
{
  engagementCopy = engagement;
  v34 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  actionCopy = action;
  deltaCopy = delta;
  dictionaryCopy = dictionary;
  v12 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = dictionaryCopy;
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

  v22 = [(BMPostSiriEngagementEventSignal *)self initWithDomain:domainCopy action:actionCopy isPostSiriEngagement:engagementCopy pseDelta:deltaCopy pseContents:v12];
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (BMPostSiriEngagementEventSignal)initWithDomain:(id)domain action:(id)action isPostSiriEngagement:(BOOL)engagement pseDelta:(id)delta pseContents:(id)contents
{
  domainCopy = domain;
  actionCopy = action;
  deltaCopy = delta;
  contentsCopy = contents;
  v20.receiver = self;
  v20.super_class = BMPostSiriEngagementEventSignal;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_domain, domain);
    objc_storeStrong(&v18->_action, action);
    v18->_hasIsPostSiriEngagement = 1;
    v18->_isPostSiriEngagement = engagement;
    objc_storeStrong(&v18->_pseDelta, delta);
    objc_storeStrong(&v18->_pseContents, contents);
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  domain = [(BMPostSiriEngagementEventSignal *)self domain];
  action = [(BMPostSiriEngagementEventSignal *)self action];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPostSiriEngagementEventSignal isPostSiriEngagement](self, "isPostSiriEngagement")}];
  pseDelta = [(BMPostSiriEngagementEventSignal *)self pseDelta];
  pseContents = [(BMPostSiriEngagementEventSignal *)self pseContents];
  v9 = [v3 initWithFormat:@"BMPostSiriEngagementEventSignal with domain: %@, action: %@, isPostSiriEngagement: %@, pseDelta: %@, pseContents: %@", domain, action, v6, pseDelta, pseContents];

  return v9;
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v37.receiver = self;
  v37.super_class = BMPostSiriEngagementEventSignal;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_47;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v38) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
            v24 = [fromCopy position] + 1;
            if (v24 >= [fromCopy position] && (v25 = objc_msgSend(fromCopy, "position") + 1, v25 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v38 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v27 = (v23 != 0) & ~[fromCopy hasError];
LABEL_45:
          v5->_isPostSiriEngagement = v27;
          break;
        case 4:
          v38 = 0;
          v39 = 0;
          if (!PBReaderPlaceMark() || (v28 = [[BMPostSiriEngagementEventSignalDeltaEvent alloc] initByReadFrom:fromCopy]) == 0)
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

          v17 = [[BMPostSiriEngagementEventSignalContent alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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

  hasError = [fromCopy hasError];
  if (hasError)
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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
    [(BMPostSiriEngagementEventSignalDeltaEvent *)self->_pseDelta writeTo:toCopy];
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
        [v11 writeTo:{toCopy, v13}];
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

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v4 = [[BMPostSiriEngagementEventSignal alloc] initByReadFrom:v7];
  }

  return v4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPostSiriEngagementEventSignal *)self writeTo:v3];
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
    domain = [(BMPostSiriEngagementEventSignal *)self domain];
    domain2 = [v5 domain];
    if (domain == domain2)
    {
      v29 = 1;
    }

    else
    {
      domain3 = [(BMPostSiriEngagementEventSignal *)self domain];
      domain4 = [v5 domain];
      v29 = [domain3 isEqual:domain4];
    }

    action = [(BMPostSiriEngagementEventSignal *)self action];
    action2 = [v5 action];
    if (action == action2)
    {
      v15 = 1;
    }

    else
    {
      action3 = [(BMPostSiriEngagementEventSignal *)self action];
      action4 = [v5 action];
      v15 = [action3 isEqual:action4];
    }

    if (-[BMPostSiriEngagementEventSignal hasIsPostSiriEngagement](self, "hasIsPostSiriEngagement") || [v5 hasIsPostSiriEngagement])
    {
      if (-[BMPostSiriEngagementEventSignal hasIsPostSiriEngagement](self, "hasIsPostSiriEngagement") && [v5 hasIsPostSiriEngagement])
      {
        isPostSiriEngagement = [(BMPostSiriEngagementEventSignal *)self isPostSiriEngagement];
        v17 = isPostSiriEngagement ^ [v5 isPostSiriEngagement] ^ 1;
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

    pseDelta = [(BMPostSiriEngagementEventSignal *)self pseDelta];
    pseDelta2 = [v5 pseDelta];
    if (pseDelta == pseDelta2)
    {
      v22 = 1;
    }

    else
    {
      pseDelta3 = [(BMPostSiriEngagementEventSignal *)self pseDelta];
      pseDelta4 = [v5 pseDelta];
      v22 = [pseDelta3 isEqual:pseDelta4];
    }

    pseContents = [(BMPostSiriEngagementEventSignal *)self pseContents];
    pseContents2 = [v5 pseContents];
    if (pseContents == pseContents2)
    {
      v27 = 1;
    }

    else
    {
      pseContents3 = [(BMPostSiriEngagementEventSignal *)self pseContents];
      pseContents4 = [v5 pseContents];
      v27 = [pseContents3 isEqual:pseContents4];
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