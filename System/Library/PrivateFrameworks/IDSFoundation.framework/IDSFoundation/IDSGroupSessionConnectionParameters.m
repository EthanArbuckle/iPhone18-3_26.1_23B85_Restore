@interface IDSGroupSessionConnectionParameters
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGroupSessionConnectionParameters:(id)a3;
- (IDSGroupSessionConnectionParameters)initWithStringRepresentation:(id)a3;
- (id)description;
- (id)stringRepresentation;
@end

@implementation IDSGroupSessionConnectionParameters

- (IDSGroupSessionConnectionParameters)initWithStringRepresentation:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = IDSGroupSessionConnectionParameters;
  v5 = [(IDSGroupSessionConnectionParameters *)&v31 init];
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = [v4 componentsSeparatedByString:@":"];
  if ([v6 count] <= 2)
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v6 count];
      *buf = 134217984;
      v33 = v8;
      v9 = "Parameters string doesn't have enough fields (%lu) for the three required parameters";
LABEL_5:
      v10 = v7;
      v11 = 12;
LABEL_15:
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v12 = [v6 objectAtIndexedSubscript:0];
  multiplexer = v5->_multiplexer;
  v5->_multiplexer = v12;

  v14 = [v6 objectAtIndexedSubscript:1];
  sessionID = v5->_sessionID;
  v5->_sessionID = v14;

  v16 = [v6 objectAtIndexedSubscript:2];
  v17 = [v16 length];

  if (!v17)
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "Parameters participant string needs be non-empty";
    goto LABEL_14;
  }

  v18 = [v6 objectAtIndexedSubscript:2];
  v5->_participantID = strtoull([v18 UTF8String], 0, 10);

  if ([v6 count] < 4 || (objc_msgSend(v6, "objectAtIndexedSubscript:", 3), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "containsString:", @"S"), v19, !v20))
  {
LABEL_19:

LABEL_20:
    v22 = v5;
    goto LABEL_21;
  }

  if ([v6 count] > 4)
  {
    v23 = [v6 objectAtIndexedSubscript:4];
    v24 = [v23 length];

    if (v24)
    {
      v25 = objc_alloc(MEMORY[0x1E695DEF0]);
      v26 = [v6 objectAtIndexedSubscript:4];
      v27 = [v25 initWithBase64EncodedString:v26 options:0];
      salt = v5->_salt;
      v5->_salt = v27;

      if (!v5->_salt)
      {
        v7 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v6 objectAtIndexedSubscript:4];
          *buf = 138412290;
          v33 = v30;
          _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Parameters string salt field %@ could not convert to NSData", buf, 0xCu);
        }

        goto LABEL_16;
      }

      goto LABEL_19;
    }

    v7 = +[IDSFoundationLog Multiplexer];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v9 = "Parameters salt string is empty";
LABEL_14:
    v10 = v7;
    v11 = 2;
    goto LABEL_15;
  }

  v7 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v6 count];
    *buf = 134217984;
    v33 = v21;
    v9 = "Parameters string doesn't have enough fields (%lu) for salt";
    goto LABEL_5;
  }

LABEL_16:

  v22 = 0;
LABEL_21:

  return v22;
}

- (id)stringRepresentation
{
  if ([(NSString *)self->_multiplexer length]&& [(NSString *)self->_sessionID length])
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@:%llu", self->_multiplexer, self->_sessionID, self->_participantID];
    if ([(NSData *)self->_salt length])
    {
      v4 = MEMORY[0x1E696AEC0];
      v5 = [(NSData *)self->_salt base64EncodedStringWithOptions:0];
      v6 = [v4 stringWithFormat:@"%@:S:%@", v3, v5];

      v3 = v6;
    }
  }

  else
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "Parameters need required multiplexer and sessionID to be non-empty", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)description
{
  v3 = [(NSData *)self->_salt length];
  multiplexer = self->_multiplexer;
  if (v3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"MUXConnParams: multiplexer %@ session %@ participant %llu salt %@", multiplexer, self->_sessionID, self->_participantID, self->_salt];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"MUXConnParams: multiplexer %@ session %@ participant %llu", multiplexer, self->_sessionID, self->_participantID, v7];
  }
  v5 = ;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSGroupSessionConnectionParameters *)self isEqualToGroupSessionConnectionParameters:v4];

  return v5;
}

- (BOOL)isEqualToGroupSessionConnectionParameters:(id)a3
{
  v4 = a3;
  v5 = [v4 multiplexer];
  if ([v5 isEqual:self->_multiplexer])
  {
    v6 = [v4 sessionID];
    if ([v6 isEqual:self->_sessionID] && objc_msgSend(v4, "participantID") == self->_participantID)
    {
      v7 = [v4 salt];
      if (v7 == self->_salt)
      {
        v9 = 1;
      }

      else
      {
        v8 = [v4 salt];
        v9 = [v8 isEqual:self->_salt];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end