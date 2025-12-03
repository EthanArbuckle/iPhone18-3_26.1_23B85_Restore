@interface BMSiriService
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriService)initWithDismissalReason:(int)reason unintended:(id)unintended requestSource:(int)source identifier:(id)identifier domain:(id)domain command:(id)command;
- (BMSiriService)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriService

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    dismissalReason = [(BMSiriService *)self dismissalReason];
    if (dismissalReason != [v5 dismissalReason])
    {
      goto LABEL_16;
    }

    if (-[BMSiriService hasUnintended](self, "hasUnintended") || [v5 hasUnintended])
    {
      if (![(BMSiriService *)self hasUnintended])
      {
        goto LABEL_16;
      }

      if (![v5 hasUnintended])
      {
        goto LABEL_16;
      }

      unintended = [(BMSiriService *)self unintended];
      if (unintended != [v5 unintended])
      {
        goto LABEL_16;
      }
    }

    requestSource = [(BMSiriService *)self requestSource];
    if (requestSource != [v5 requestSource])
    {
      goto LABEL_16;
    }

    identifier = [(BMSiriService *)self identifier];
    identifier2 = [v5 identifier];
    v11 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMSiriService *)self identifier];
      identifier4 = [v5 identifier];
      v14 = [identifier3 isEqual:identifier4];

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    domain = [(BMSiriService *)self domain];
    domain2 = [v5 domain];
    v18 = domain2;
    if (domain == domain2)
    {
    }

    else
    {
      domain3 = [(BMSiriService *)self domain];
      domain4 = [v5 domain];
      v21 = [domain3 isEqual:domain4];

      if (!v21)
      {
LABEL_16:
        v15 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    command = [(BMSiriService *)self command];
    command2 = [v5 command];
    if (command == command2)
    {
      v15 = 1;
    }

    else
    {
      command3 = [(BMSiriService *)self command];
      command4 = [v5 command];
      v15 = [command3 isEqual:command4];
    }

    goto LABEL_17;
  }

  v15 = 0;
LABEL_18:

  return v15;
}

- (id)jsonDictionary
{
  v23[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriService dismissalReason](self, "dismissalReason")}];
  if ([(BMSiriService *)self hasUnintended])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriService unintended](self, "unintended")}];
  }

  else
  {
    v4 = 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriService requestSource](self, "requestSource")}];
  identifier = [(BMSiriService *)self identifier];
  domain = [(BMSiriService *)self domain];
  command = [(BMSiriService *)self command];
  v22[0] = @"dismissalReason";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null;
  v23[0] = null;
  v22[1] = @"unintended";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18 = null2;
  v23[1] = null2;
  v22[2] = @"requestSource";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v3;
  v23[2] = null3;
  v22[3] = @"identifier";
  null4 = identifier;
  if (!identifier)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"domain";
  null5 = domain;
  if (!domain)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v22[5] = @"command";
  null6 = command;
  if (!command)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[5] = null6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{6, v18}];
  if (command)
  {
    if (domain)
    {
      goto LABEL_18;
    }

LABEL_26:

    if (identifier)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  if (!domain)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (identifier)
  {
    goto LABEL_19;
  }

LABEL_27:

LABEL_19:
  if (v5)
  {
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_29:

    if (v21)
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

  if (!v4)
  {
    goto LABEL_29;
  }

LABEL_21:
  if (v21)
  {
    goto LABEL_22;
  }

LABEL_30:

LABEL_22:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMSiriService)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"dismissalReason"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v44 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"unintended"];
    v41 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v18 = 0;
          goto LABEL_51;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        errorCopy = error;
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"unintended"];
        v54 = v43;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        error = 0;
        v18 = 0;
        *errorCopy = [v19 initWithDomain:v20 code:2 userInfo:v11];
        goto LABEL_50;
      }

      v40 = v10;
    }

    else
    {
      v40 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"requestSource"];
    v39 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v43 = v11;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v43 = 0;
            v18 = 0;
            error = v40;
            goto LABEL_50;
          }

          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"requestSource"];
          v52 = v42;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v43 = 0;
          v18 = 0;
          *error = [v35 initWithDomain:v36 code:2 userInfo:v12];
          goto LABEL_59;
        }

        v43 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriServiceRequestSourceFromString(v11)];
      }
    }

    else
    {
      v43 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v42 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = v12;
LABEL_18:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        selfCopy3 = self;
        v15 = 0;
        goto LABEL_21;
      }

      objc_opt_class();
      selfCopy3 = self;
      if (objc_opt_isKindOfClass())
      {
        v15 = v13;
LABEL_21:
        v16 = [dictionaryCopy objectForKeyedSubscript:@"command"];
        if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = 0;
LABEL_24:
          error = v40;
          v18 = -[BMSiriService initWithDismissalReason:unintended:requestSource:identifier:domain:command:](selfCopy3, "initWithDismissalReason:unintended:requestSource:identifier:domain:command:", [v44 intValue], v40, objc_msgSend(v43, "intValue"), v42, v15, v17);
          selfCopy3 = v18;
LABEL_47:

LABEL_48:
          self = selfCopy3;
LABEL_49:

          v7 = v39;
LABEL_50:

          v10 = v41;
          goto LABEL_51;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          goto LABEL_24;
        }

        if (error)
        {
          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v45 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"command"];
          v46 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          *error = [v38 initWithDomain:v37 code:2 userInfo:v29];
        }

        v17 = 0;
        v18 = 0;
LABEL_46:
        error = v40;
        goto LABEL_47;
      }

      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"domain"];
        v48 = v17;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v16];
        v15 = 0;
        v18 = 0;
        *error = v27;
        goto LABEL_46;
      }

      v15 = 0;
      v18 = 0;
LABEL_61:
      error = v40;
      goto LABEL_48;
    }

    if (error)
    {
      selfCopy3 = self;
      v22 = objc_alloc(MEMORY[0x1E696ABC0]);
      v23 = *MEMORY[0x1E698F240];
      v49 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
      v50 = v15;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v24 = [v22 initWithDomain:v23 code:2 userInfo:v13];
      v42 = 0;
      v18 = 0;
      *error = v24;
      goto LABEL_61;
    }

    v42 = 0;
    v18 = 0;
LABEL_59:
    error = v40;
    goto LABEL_49;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v44 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMSiriServiceDismissalReasonFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v44 = 0;
    v18 = 0;
    goto LABEL_52;
  }

  v32 = objc_alloc(MEMORY[0x1E696ABC0]);
  v33 = *MEMORY[0x1E698F240];
  v55 = *MEMORY[0x1E696A578];
  v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"dismissalReason"];
  v56[0] = v34;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  v44 = 0;
  v18 = 0;
  *error = [v32 initWithDomain:v33 code:2 userInfo:v10];
  error = v34;
LABEL_51:

LABEL_52:
  v30 = *MEMORY[0x1E69E9840];
  return v18;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriService *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dismissalReason = self->_dismissalReason;
  v9 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasUnintended)
  {
    unintended = self->_unintended;
    PBDataWriterWriteBOOLField();
  }

  requestSource = self->_requestSource;
  PBDataWriterWriteUint32Field();
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  v8 = v9;
  if (self->_command)
  {
    PBDataWriterWriteStringField();
    v8 = v9;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v42.receiver = self;
  v42.super_class = BMSiriService;
  v5 = [(BMEventBase *)&v42 init];
  if (!v5)
  {
    goto LABEL_72;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v43 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v43 & 0x7F) << v7;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v23 = PBReaderReadString();
            v24 = 32;
            break;
          case 5:
            v23 = PBReaderReadString();
            v24 = 40;
            break;
          case 6:
            v23 = PBReaderReadString();
            v24 = 48;
            break;
          default:
LABEL_45:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_71;
            }

            goto LABEL_69;
        }

        v37 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;
      }

      else
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v18 = 0;
            while (1)
            {
              v43 = 0;
              v27 = [fromCopy position] + 1;
              if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v43 & 0x7F) << v25;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v22 = v26++ > 8;
              if (v22)
              {
                goto LABEL_60;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 0x35)
            {
LABEL_60:
              LODWORD(v18) = 0;
            }

            v38 = 24;
            break;
          case 2:
            v30 = 0;
            v31 = 0;
            v32 = 0;
            v5->_hasUnintended = 1;
            while (1)
            {
              v43 = 0;
              v33 = [fromCopy position] + 1;
              if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v32 |= (v43 & 0x7F) << v30;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v30 += 7;
              v13 = v31++ >= 9;
              if (v13)
              {
                LOBYTE(v36) = 0;
                goto LABEL_68;
              }
            }

            v36 = (v32 != 0) & ~[fromCopy hasError];
LABEL_68:
            v5->_unintended = v36;
            goto LABEL_69;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              v43 = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:&v43 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v43 & 0x7F) << v16;
              if ((v43 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v22 = v17++ > 8;
              if (v22)
              {
                goto LABEL_64;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 0x2C)
            {
LABEL_64:
              LODWORD(v18) = 0;
            }

            v38 = 28;
            break;
          default:
            goto LABEL_45;
        }

        *(&v5->super.super.isa + v38) = v18;
      }

LABEL_69:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_71:
    v40 = 0;
  }

  else
  {
LABEL_72:
    v40 = v5;
  }

  return v40;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMSiriServiceDismissalReasonAsString([(BMSiriService *)self dismissalReason]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSiriService unintended](self, "unintended")}];
  v6 = BMSiriServiceRequestSourceAsString([(BMSiriService *)self requestSource]);
  identifier = [(BMSiriService *)self identifier];
  domain = [(BMSiriService *)self domain];
  command = [(BMSiriService *)self command];
  v10 = [v3 initWithFormat:@"BMSiriService with dismissalReason: %@, unintended: %@, requestSource: %@, identifier: %@, domain: %@, command: %@", v4, v5, v6, identifier, domain, command];

  return v10;
}

- (BMSiriService)initWithDismissalReason:(int)reason unintended:(id)unintended requestSource:(int)source identifier:(id)identifier domain:(id)domain command:(id)command
{
  unintendedCopy = unintended;
  identifierCopy = identifier;
  domainCopy = domain;
  commandCopy = command;
  v20.receiver = self;
  v20.super_class = BMSiriService;
  v18 = [(BMEventBase *)&v20 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_dismissalReason = reason;
    if (unintendedCopy)
    {
      v18->_hasUnintended = 1;
      v18->_unintended = [unintendedCopy BOOLValue];
    }

    else
    {
      v18->_hasUnintended = 0;
      v18->_unintended = 0;
    }

    v18->_requestSource = source;
    objc_storeStrong(&v18->_identifier, identifier);
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v18->_command, command);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dismissalReason" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"unintended" number:2 type:12 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"requestSource" number:3 type:4 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"domain" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"command" number:6 type:13 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dismissalReason" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"unintended" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"requestSource" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"domain" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"command" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMSiriService alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end