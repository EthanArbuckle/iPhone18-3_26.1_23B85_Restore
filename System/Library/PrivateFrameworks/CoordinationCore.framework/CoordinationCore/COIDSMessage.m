@interface COIDSMessage
- (BOOL)checkValue:(id)a3 forKey:(id)a4 isKindOfClass:(Class)a5 error:(id *)a6;
- (BOOL)validateCommand:(id *)a3 error:(id *)a4;
- (BOOL)validateData:(id *)a3 error:(id *)a4;
- (BOOL)validateError:(id *)a3 error:(id *)a4;
- (BOOL)validateMetadata:(id *)a3 error:(id *)a4;
- (BOOL)validateType:(id *)a3 error:(id *)a4;
- (BOOL)validateVersion:(id *)a3 error:(id *)a4;
- (COIDSMessage)initWithDictionary:(id)a3 error:(id *)a4;
- (COIDSMessage)initWithError:(id)a3;
- (COIDSMessage)initWithRequest:(id)a3;
- (COIDSMessage)initWithResponse:(id)a3;
- (id)dictionaryRepresentation;
- (id)unarchivePayloadOfTypes:(id)a3 error:(id *)a4;
- (void)_commandPayload:(id)a3;
@end

@implementation COIDSMessage

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [v3 setObject:v4 forKey:@"VR"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COIDSMessage type](self, "type")}];
  [v3 setObject:v5 forKey:@"MT"];

  if ([(COIDSMessage *)self type]== 2)
  {
    v6 = [(COIDSMessage *)self error];
    v7 = _errorToDictionary(v6);
    [v3 setObject:v7 forKey:@"ER"];
  }

  else
  {
    v8 = [(COIDSMessage *)self payload];
    [v3 setObject:v8 forKey:@"PL"];

    v6 = [(COIDSMessage *)self command];
    [v3 setObject:v6 forKey:@"CM"];
  }

  v9 = [(COIDSMessage *)self metadata];

  if (v9)
  {
    v10 = [(COIDSMessage *)self metadata];
    [v3 setObject:v10 forKey:@"MK"];
  }

  return v3;
}

- (BOOL)checkValue:(id)a3 forKey:(id)a4 isKindOfClass:(Class)a5 error:(id *)a6
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    v10 = @"missing property '%@'";
LABEL_8:
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9];
    v12 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA068];
    v17[0] = v11;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a6 = [v12 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v13];

    LOBYTE(a6) = 0;
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a6)
    {
      goto LABEL_9;
    }

    v10 = @"property '%@' has wrong type";
    goto LABEL_8;
  }

  LOBYTE(a6) = 1;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
  return a6;
}

- (BOOL)validateVersion:(id *)a3 error:(id *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = [(COIDSMessage *)self checkValue:*a3 forKey:@"version" isKindOfClass:objc_opt_class() error:a4];
  if (v6)
  {
    v7 = [*a3 unsignedIntegerValue];
    LOBYTE(v6) = v7 == 1;
    if (a4)
    {
      if (v7 != 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid version '%lu'", v7];
        v9 = MEMORY[0x277CCA9B8];
        v13 = *MEMORY[0x277CCA068];
        v14[0] = v8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
        *a4 = [v9 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v10];

        LOBYTE(v6) = 0;
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)validateType:(id *)a3 error:(id *)a4
{
  v4 = a4;
  v23[1] = *MEMORY[0x277D85DE8];
  if ([(COIDSMessage *)self checkValue:*a3 forKey:@"type" isKindOfClass:objc_opt_class() error:a4])
  {
    v7 = *a3;
    v8 = [v7 unsignedIntegerValue];
    if (v8 >= 3)
    {
      if (v4)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid message type '%lu'", v8];
        v10 = MEMORY[0x277CCA9B8];
        v22 = *MEMORY[0x277CCA068];
        v23[0] = v9;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
        *v4 = [v10 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v11];

LABEL_16:
        LOBYTE(v4) = 0;
      }

LABEL_17:

      goto LABEL_18;
    }

    if (v8 == 2)
    {
      if (!self->_error)
      {
        if (!v4)
        {
          goto LABEL_17;
        }

        v12 = MEMORY[0x277CCA9B8];
        v18 = *MEMORY[0x277CCA068];
        v19 = @"'error' property missing";
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v19;
        v15 = &v18;
LABEL_15:
        v9 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
        *v4 = [v12 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v9];
        goto LABEL_16;
      }
    }

    else if (self->_command && !self->_payload)
    {
      if (!v4)
      {
        goto LABEL_17;
      }

      v12 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA068];
      v21 = @"'payload' property missing";
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v21;
      v15 = &v20;
      goto LABEL_15;
    }

    LOBYTE(v4) = 1;
    goto LABEL_17;
  }

  LOBYTE(v4) = 0;
LABEL_18:
  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)validateCommand:(id *)a3 error:(id *)a4
{
  v4 = *a3;
  if (!*a3)
  {
    return 1;
  }

  v7 = objc_opt_class();

  return [(COIDSMessage *)self checkValue:v4 forKey:@"command" isKindOfClass:v7 error:a4];
}

- (BOOL)validateData:(id *)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (!*a3)
  {
    goto LABEL_4;
  }

  v6 = [(COIDSMessage *)self checkValue:*a3 forKey:@"payload" isKindOfClass:objc_opt_class() error:a4];
  if (v6)
  {
    if (self->_command)
    {
LABEL_4:
      LOBYTE(v6) = 1;
      goto LABEL_5;
    }

    if (a4)
    {
      v8 = MEMORY[0x277CCA9B8];
      v11 = *MEMORY[0x277CCA068];
      v12[0] = @"'command' property missing";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      *a4 = [v8 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v9];
    }

    LOBYTE(v6) = 0;
  }

LABEL_5:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)validateError:(id *)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (*a3)
  {
    if ([(COIDSMessage *)self checkValue:*a3 forKey:@"error" isKindOfClass:objc_opt_class() error:a4])
    {
      v6 = *a3;
      v7 = _errorFromDictionary(v6);
      v8 = v7;
      v9 = v7 != 0;
      if (v7)
      {
        v10 = v7;
        *a3 = v8;
      }

      else if (a4)
      {
        v11 = MEMORY[0x277CCA9B8];
        v15 = *MEMORY[0x277CCA068];
        v16[0] = @"'error' data invalid";
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
        *a4 = [v11 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v12];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)validateMetadata:(id *)a3 error:(id *)a4
{
  v4 = *a3;
  if (!*a3)
  {
    return 1;
  }

  v7 = objc_opt_class();

  return [(COIDSMessage *)self checkValue:v4 forKey:@"metadata" isKindOfClass:v7 error:a4];
}

- (COIDSMessage)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = COIDSMessage;
  v7 = [(COIDSMessage *)&v17 init];
  if (v7)
  {
    v8 = off_278E17DE8;
    v9 = 6;
    while (1)
    {
      v10 = [v6 objectForKey:*(v8 - 1)];
      v16 = v10;
      v11 = *v8;
      v12 = [(COIDSMessage *)v7 validateValue:&v16 forKey:*v8 error:a4];
      v13 = v16;

      if (!v12)
      {
        break;
      }

      [(COIDSMessage *)v7 setValue:v13 forKey:v11];

      v8 += 2;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 0;
  }

  else
  {
LABEL_5:
    v14 = v7;
  }

  return v14;
}

- (COIDSMessage)initWithError:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = COIDSMessage;
  v6 = [(COIDSMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = xmmword_244448750;
    objc_storeStrong(v6 + 5, a3);
  }

  return v7;
}

- (COIDSMessage)initWithRequest:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COIDSMessage;
  v5 = [(COIDSMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_244448740;
    [v5 _commandPayload:v4];
  }

  return v6;
}

- (COIDSMessage)initWithResponse:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = COIDSMessage;
  v5 = [(COIDSMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = vdupq_n_s64(1uLL);
    [v5 _commandPayload:v4];
  }

  return v6;
}

- (id)unarchivePayloadOfTypes:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(COIDSMessage *)self command];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v9 = [(COIDSMessage *)self command];
    v10 = NSClassFromString(v9);

    v11 = MEMORY[0x277CCAAC8];
    v12 = [(COIDSMessage *)self payload];
    a4 = [v11 unarchivedObjectOfClass:v10 fromData:v12 error:a4];
  }

  else if (a4)
  {
    v13 = MEMORY[0x277CCACA8];
    v14 = [(COIDSMessage *)self command];
    v15 = [v13 stringWithFormat:@"Invalid type: %@", v14];

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA050];
    v21 = *MEMORY[0x277CCA068];
    v22[0] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    *a4 = [v16 errorWithDomain:v17 code:4866 userInfo:v18];

    a4 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return a4;
}

- (void)_commandPayload:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  command = self->_command;
  self->_command = v6;

  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v4 requiringSecureCoding:1 error:0];
  payload = self->_payload;
  self->_payload = v8;

  if (!self->_payload)
  {
    if (class_getMethodImplementation(v5, sel_supportsSecureCoding) && class_getMethodImplementation(v5, sel_encodeWithCoder_))
    {
      v10 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(COIDSMessage *)v4 _commandPayload:v10];
      }
    }

    else
    {
      v10 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(COIDSMessage *)v5 _commandPayload:v10];
      }
    }

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA2A0] reason:0 userInfo:0];
    [v11 raise];
  }
}

- (void)_commandPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "Failed to properly archive for sending over IDS: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_commandPayload:(objc_class *)a1 .cold.2(objc_class *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "%@ does not appear to properly support secure coding which is required for all commands going over IDS!", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end