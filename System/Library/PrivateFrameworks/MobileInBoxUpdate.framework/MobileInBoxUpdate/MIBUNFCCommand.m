@interface MIBUNFCCommand
+ (unsigned)expectedAPDULength:(id)a3;
- (BOOL)_deserializeAuthenticate;
- (BOOL)_deserializeChallenge;
- (BOOL)_deserializeConfigureNFC;
- (BOOL)_deserializeHeartbeat;
- (BOOL)_deserializeRetryAfter;
- (BOOL)_deserializeSSUpdate;
- (BOOL)_deserializeStartDiag;
- (BOOL)_deserializeStartUpdate;
- (BOOL)_deserializeTatsuPayload;
- (BOOL)_initWithAPDU:(id)a3;
- (BOOL)_initWithCommandCode:(int64_t)a3;
- (Class)getResponseClass;
- (MIBUNFCCommand)initWithAPDU:(id)a3;
- (MIBUNFCCommand)initWithCommandCode:(int64_t)a3 andPayload:(id)a4;
- (id)_serializeAuthenticate;
- (id)_serializeChallenge;
- (id)_serializeConfigureNFC;
- (id)_serializeHeartbeat;
- (id)_serializeRetryAfter;
- (id)_serializeSSUpdate;
- (id)_serializeStartDiag;
- (id)_serializeStartUpdate;
- (id)_serializeTatsuPayload:(id)a3;
- (void)_deserializeChallenge;
- (void)_deserializeConfigureNFC;
- (void)_deserializeHeartbeat;
- (void)_deserializeRetryAfter;
- (void)_deserializeTatsuPayload;
- (void)_serializeChallenge;
- (void)_serializeConfigureNFC;
- (void)_serializeHeartbeat;
- (void)_serializeRetryAfter;
- (void)_serializeSSUpdate;
@end

@implementation MIBUNFCCommand

+ (unsigned)expectedAPDULength:(id)a3
{
  v3 = a3;
  v4 = [v3 bytes];
  if ([v3 length] == 4 || objc_msgSend(v3, "length") == 5)
  {
    LOWORD(v5) = 4;
  }

  else
  {
    LOWORD(v5) = *(v4 + 4);
    if (!*(v4 + 4))
    {
      v5 = (bswap32(*(v4 + 5)) >> 16) + 7;
    }
  }

  return v5;
}

- (MIBUNFCCommand)initWithCommandCode:(int64_t)a3 andPayload:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = MIBUNFCCommand;
  v7 = [(MIBUNFCCommand *)&v12 init];
  v8 = v7;
  if (v7 && (v7->_code = a3, v9 = [v6 mutableCopy], -[MIBUNFCCommand setMutablePayload:](v8, "setMutablePayload:", v9), v9, !-[MIBUNFCCommand _initWithCommandCode:](v8, "_initWithCommandCode:", a3)))
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  return v10;
}

- (MIBUNFCCommand)initWithAPDU:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MIBUNFCCommand;
  v6 = [(MIBUNFCCommand *)&v11 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_apdu, a3), v8 = objc_opt_new(), [(MIBUNFCCommand *)v7 setMutablePayload:v8], v8, ![(MIBUNFCCommand *)v7 _initWithAPDU:v5]))
  {
    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

  return v9;
}

- (Class)getResponseClass
{
  v3 = off_2798E6268;
  objc_opt_class();
  v4 = [(MIBUNFCCommand *)self code]- 1;
  if (v4 <= 0xB)
  {
    v3 = off_2798E66A0[v4];
  }

  v5 = *v3;
  v6 = objc_opt_class();

  return v6;
}

- (BOOL)_initWithCommandCode:(int64_t)a3
{
  v5 = objc_opt_new();
  self->_cla = 0;
  serializedPayload = self->_serializedPayload;
  self->_serializedPayload = 0;

  switch(self->_code)
  {
    case 1:
      *&self->_ins = 458;
      self->_p2 = 0;
      goto LABEL_19;
    case 2:
      *&self->_ins = 474;
      self->_p2 = 1;
      v7 = [(MIBUNFCCommand *)self _serializeStartUpdate];
      goto LABEL_20;
    case 3:
      *&self->_ins = 458;
      v13 = 2;
      goto LABEL_18;
    case 4:
      *&self->_ins = 1188;
      self->_p2 = 0;
      v8 = [(MIBUNFCCommand *)self mutablePayload];
      v9 = [v8 objectForKey:@"ApplicationID"];
      v10 = self->_serializedPayload;
      self->_serializedPayload = v9;

      goto LABEL_21;
    case 6:
      *&self->_ins = 474;
      self->_p2 = 2;
      v7 = [(MIBUNFCCommand *)self _serializeRetryAfter];
      goto LABEL_20;
    case 7:
      *&self->_ins = 474;
      self->_p2 = 3;
      v7 = [(MIBUNFCCommand *)self _serializeHeartbeat];
      goto LABEL_20;
    case 8:
      *&self->_ins = 474;
      v13 = 4;
      goto LABEL_18;
    case 9:
      *&self->_ins = 458;
      v13 = 3;
LABEL_18:
      self->_p2 = v13;
LABEL_19:
      v7 = objc_opt_new();
      goto LABEL_20;
    case 0xALL:
      *&self->_ins = 474;
      self->_p2 = 5;
      v7 = [(MIBUNFCCommand *)self _serializeConfigureNFC];
      goto LABEL_20;
    case 0xBLL:
      *&self->_ins = 474;
      self->_p2 = 6;
      v7 = [(MIBUNFCCommand *)self _serializeStartDiag];
      goto LABEL_20;
    case 0xCLL:
      *&self->_ins = 474;
      self->_p2 = 7;
      v7 = [(MIBUNFCCommand *)self _serializeChallenge];
      goto LABEL_20;
    case 0xDLL:
      *&self->_ins = 474;
      self->_p2 = 8;
      v7 = [(MIBUNFCCommand *)self _serializeAuthenticate];
      goto LABEL_20;
    case 0xELL:
      *&self->_ins = 474;
      self->_p2 = 9;
      v7 = [(MIBUNFCCommand *)self _serializeSSUpdate];
LABEL_20:
      v8 = self->_serializedPayload;
      self->_serializedPayload = v7;
LABEL_21:

      v14 = self->_serializedPayload;
      if (v14)
      {
        v20 = *&self->_cla;
        if ([(NSData *)v14 length])
        {
          v15 = [(NSData *)self->_serializedPayload length];
          v16 = [(NSData *)self->_serializedPayload length];
          if (v15 > 0xFF)
          {
            v21 = 0;
            v22 = HIBYTE(v16);
            v23 = v16;
            v17 = v5;
            v18 = 7;
          }

          else
          {
            v21 = v16;
            v17 = v5;
            v18 = 5;
          }

          [v17 appendBytes:&v20 length:v18];
          [v5 appendData:self->_serializedPayload];
        }

        else
        {
          [v5 appendBytes:&v20 length:4];
        }

        objc_storeStrong(&self->_apdu, v5);
        v12 = 1;
      }

      else
      {
        [MIBUNFCCommand _initWithCommandCode:];
        v12 = v24;
      }

      break;
    default:
      if (MIBUOnceToken != -1)
      {
        [MIBUNFCCommand _initWithCommandCode:];
      }

      v11 = MIBUConnObj;
      if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
      {
        [(MIBUNFCCommand *)a3 _initWithCommandCode:v11];
      }

      v12 = 0;
      break;
  }

  return v12;
}

void __39__MIBUNFCCommand__initWithCommandCode___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __39__MIBUNFCCommand__initWithCommandCode___block_invoke_99()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_initWithAPDU:(id)a3
{
  v4 = a3;
  self->_code = 0;
  serializedPayload = self->_serializedPayload;
  self->_serializedPayload = 0;

  if ([v4 length] <= 3)
  {
    [MIBUNFCCommand _initWithAPDU:];
    v16 = v32[1];
    goto LABEL_50;
  }

  v6 = [v4 bytes];
  if (*v6)
  {
    [(MIBUNFCCommand *)*v6 _initWithAPDU:v23];
    v16 = v23[0];
    goto LABEL_50;
  }

  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[3];
  if ([v4 length] == 4)
  {
    goto LABEL_6;
  }

  v10 = [v4 length];
  v11 = v6[4];
  if (v10 == 5)
  {
    if (v6[4])
    {
      [MIBUNFCCommand _initWithAPDU:?];
      v16 = v24;
      goto LABEL_50;
    }

LABEL_6:
    v12 = objc_opt_new();
    goto LABEL_13;
  }

  if (v6[4])
  {
    v13 = 5;
  }

  else
  {
    if ([v4 length] <= 6)
    {
      [MIBUNFCCommand _initWithAPDU:];
      v16 = v23[2];
      goto LABEL_50;
    }

    v11 = bswap32(*(v6 + 5)) >> 16;
    v13 = 7;
  }

  v14 = v11;
  if (v13 + v11 > [v4 length])
  {
    [MIBUNFCCommand _initWithAPDU:v14];
    v16 = v23[1];
    goto LABEL_50;
  }

  v12 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v4 length:"bytes") + v13 freeWhenDone:{v14, 0}];
LABEL_13:
  v15 = self->_serializedPayload;
  self->_serializedPayload = v12;

  v16 = 1;
  if (v7 > 201)
  {
    if (v7 == 202)
    {
      if (v8 == 1 && !v9)
      {
        v16 = 1;
        self->_code = 1;
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 2)
      {
        v21 = 3;
      }

      else
      {
        v16 = 1;
        if (v8 != 1 || v9 != 3)
        {
          goto LABEL_50;
        }

        v21 = 9;
      }
    }

    else
    {
      if (v7 != 218)
      {
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 1)
      {
        self->_code = 2;
        if ([(MIBUNFCCommand *)self _deserializeStartUpdate])
        {
          goto LABEL_49;
        }

        [MIBUNFCCommand _initWithAPDU:v32];
        v16 = v32[0];
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 2)
      {
        self->_code = 6;
        if ([(MIBUNFCCommand *)self _deserializeRetryAfter])
        {
          goto LABEL_49;
        }

        [MIBUNFCCommand _initWithAPDU:?];
        v16 = v31;
        goto LABEL_50;
      }

      if (v8 == 1 && v9 == 3)
      {
        self->_code = 7;
        if ([(MIBUNFCCommand *)self _deserializeHeartbeat])
        {
          goto LABEL_49;
        }

        [MIBUNFCCommand _initWithAPDU:?];
        v16 = v30;
        goto LABEL_50;
      }

      if (v8 != 1 || v9 != 4)
      {
        if (v8 == 1 && v9 == 5)
        {
          self->_code = 10;
          if (![(MIBUNFCCommand *)self _deserializeConfigureNFC])
          {
            [MIBUNFCCommand _initWithAPDU:?];
            v16 = v29;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v8 == 1 && v9 == 6)
        {
          self->_code = 11;
          if (![(MIBUNFCCommand *)self _deserializeStartDiag])
          {
            [MIBUNFCCommand _initWithAPDU:?];
            v16 = v28;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v8 == 1 && v9 == 7)
        {
          self->_code = 12;
          if (![(MIBUNFCCommand *)self _deserializeChallenge])
          {
            [MIBUNFCCommand _initWithAPDU:?];
            v16 = v27;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        if (v8 == 1 && v9 == 8)
        {
          self->_code = 13;
          if (![(MIBUNFCCommand *)self _deserializeAuthenticate])
          {
            [MIBUNFCCommand _initWithAPDU:?];
            v16 = v26;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        v16 = 1;
        if (v8 == 1 && v9 == 9)
        {
          self->_code = 14;
          if (![(MIBUNFCCommand *)self _deserializeSSUpdate])
          {
            [MIBUNFCCommand _initWithAPDU:?];
            v16 = v25;
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        goto LABEL_50;
      }

      v21 = 8;
    }

    self->_code = v21;
    goto LABEL_49;
  }

  if (v7 == 164)
  {
    v16 = 1;
    if (v8 == 4 && !v9)
    {
      self->_code = 4;
      v17 = [(MIBUNFCCommand *)self mutablePayload];
      v18 = v17;
      v19 = self->_serializedPayload;
      v20 = @"ApplicationID";
      goto LABEL_27;
    }
  }

  else if (v7 == 194)
  {
    if (!(v8 | v9))
    {
      self->_code = 5;
      v17 = [(MIBUNFCCommand *)self mutablePayload];
      v18 = v17;
      v19 = self->_serializedPayload;
      v20 = @"EvelopedAPDU";
LABEL_27:
      [v17 setObject:v19 forKey:v20];
    }

LABEL_49:
    v16 = 1;
  }

LABEL_50:

  return v16;
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_104()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_107()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_110()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_113()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_116()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_119()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_122()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_125()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_128()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_131()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_134()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUNFCCommand__initWithAPDU___block_invoke_137()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeStartUpdate
{
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _serializeStartUpdate];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Serializing startUpdate command", v7, 2u);
  }

  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [(MIBUNFCCommand *)self _serializeTatsuPayload:v4];

  return v5;
}

void __39__MIBUNFCCommand__serializeStartUpdate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeRetryAfter
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"RetryAfter"];

  if (v5)
  {
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v3 serialize:&unk_286AC8418 withValue:v6];

    if (v7)
    {
      v8 = [v3 serializedData];
      goto LABEL_4;
    }

    [MIBUNFCCommand _serializeRetryAfter];
  }

  else
  {
    [MIBUNFCCommand _serializeRetryAfter];
  }

  v8 = v11;
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __38__MIBUNFCCommand__serializeRetryAfter__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__serializeRetryAfter__block_invoke_147()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeHeartbeat
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"HeartbeatPeriod"];

  if (v5)
  {
    v6 = [(MIBUNFCCommand *)self payload];
    v7 = [v6 objectForKey:@"HeartbeatTimeout"];

    v17[0] = v5;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v9 = [v3 serialize:&unk_286AC8430 withValue:v8];

    if (v9)
    {
      v16 = v7;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
      v11 = [v3 serialize:&unk_286AC8448 withValue:v10];

      if (v11)
      {
        v12 = [v3 serializedData];

        goto LABEL_5;
      }

      [(MIBUNFCCommand *)v7 _serializeHeartbeat];
    }

    else
    {
      [MIBUNFCCommand _serializeHeartbeat];
    }

    v12 = 0;
  }

  else
  {
    [MIBUNFCCommand _serializeHeartbeat];
    v12 = v15;
  }

LABEL_5:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __37__MIBUNFCCommand__serializeHeartbeat__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __37__MIBUNFCCommand__serializeHeartbeat__block_invoke_160()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __37__MIBUNFCCommand__serializeHeartbeat__block_invoke_168()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeConfigureNFC
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"NFCInactivityTimeout"];

  if (v5)
  {
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v3 serialize:&unk_286AC8460 withValue:v6];

    if (v7)
    {
      v8 = [v3 serializedData];
      goto LABEL_4;
    }

    [MIBUNFCCommand _serializeConfigureNFC];
  }

  else
  {
    [MIBUNFCCommand _serializeConfigureNFC];
  }

  v8 = v11;
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __40__MIBUNFCCommand__serializeConfigureNFC__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUNFCCommand__serializeConfigureNFC__block_invoke_178()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeStartDiag
{
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _serializeStartDiag];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Serializing startDiag command", v7, 2u);
  }

  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [(MIBUNFCCommand *)self _serializeTatsuPayload:v4];

  return v5;
}

void __37__MIBUNFCCommand__serializeStartDiag__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeTatsuPayload:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKey:@"TatsuTicket"];
  v6 = [v3 objectForKey:@"TimeStamp"];

  if (v6)
  {
    if (v5)
    {
      v16[0] = v5;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v8 = [v4 serialize:&unk_286AC8478 withValue:v7];

      if (v8)
      {
        v15 = v6;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v15 count:1];
        v10 = [v4 serialize:&unk_286AC8490 withValue:v9];

        if (v10)
        {
          v11 = [v4 serializedData];
          goto LABEL_6;
        }

        [MIBUNFCCommand _serializeTatsuPayload:];
      }

      else
      {
        [MIBUNFCCommand _serializeTatsuPayload:];
      }
    }

    else
    {
      [MIBUNFCCommand _serializeTatsuPayload:];
    }
  }

  else
  {
    [MIBUNFCCommand _serializeTatsuPayload:];
  }

  v11 = v14;
LABEL_6:

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __41__MIBUNFCCommand__serializeTatsuPayload___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUNFCCommand__serializeTatsuPayload___block_invoke_185()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUNFCCommand__serializeTatsuPayload___block_invoke_193()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __41__MIBUNFCCommand__serializeTatsuPayload___block_invoke_201()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeChallenge
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [v4 objectForKey:@"ChallengeBlob"];

  if (v5)
  {
    v12[0] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v7 = [v3 serialize:&unk_286AC84A8 withValue:v6];

    if (v7)
    {
      v8 = [v3 serializedData];
      goto LABEL_4;
    }

    [MIBUNFCCommand _serializeChallenge];
  }

  else
  {
    [MIBUNFCCommand _serializeChallenge];
  }

  v8 = v11;
LABEL_4:

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __37__MIBUNFCCommand__serializeChallenge__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __37__MIBUNFCCommand__serializeChallenge__block_invoke_211()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeAuthenticate
{
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _serializeAuthenticate];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Serializing authenticate command", v7, 2u);
  }

  v4 = [(MIBUNFCCommand *)self payload];
  v5 = [(MIBUNFCCommand *)self _serializeTatsuPayload:v4];

  return v5;
}

void __40__MIBUNFCCommand__serializeAuthenticate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)_serializeSSUpdate
{
  v105[1] = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _serializeSSUpdate];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Serializing SSUpdate command", buf, 2u);
  }

  v4 = objc_opt_new();
  v5 = [(MIBUNFCCommand *)self payload];
  v6 = [v5 objectForKey:@"HostPort"];

  v7 = [(MIBUNFCCommand *)self payload];
  v8 = [v7 objectForKey:@"GroupAddress"];

  v9 = [(MIBUNFCCommand *)self payload];
  v10 = [v9 objectForKey:@"GroupPort"];

  v11 = [(MIBUNFCCommand *)self payload];
  v12 = [v11 objectForKey:@"InterfaceName"];

  v13 = [(MIBUNFCCommand *)self payload];
  v14 = [v13 objectForKey:@"ServiceName"];

  v15 = [(MIBUNFCCommand *)self payload];
  v85 = [v15 objectForKey:@"RQBasicParameters"];

  v16 = [(MIBUNFCCommand *)self payload];
  v84 = [v16 objectForKey:@"RQExtendedParameters"];

  v17 = [(MIBUNFCCommand *)self payload];
  v83 = [v17 objectForKey:@"RQThreshold"];

  v18 = [(MIBUNFCCommand *)self payload];
  v81 = [v18 objectForKey:@"TCPAddress"];

  v19 = [(MIBUNFCCommand *)self payload];
  v80 = [v19 objectForKey:@"TCPPort"];

  v20 = [(MIBUNFCCommand *)self payload];
  v82 = [v20 objectForKey:@"TCPPingInterval"];

  v21 = [(MIBUNFCCommand *)self payload];
  v79 = [v21 objectForKey:@"CountryCode"];

  v22 = [(MIBUNFCCommand *)self payload];
  v78 = [v22 objectForKey:@"ChannelName"];

  v23 = [(MIBUNFCCommand *)self payload];
  v77 = [v23 objectForKey:@"Band"];

  v24 = [(MIBUNFCCommand *)self payload];
  v76 = [v24 objectForKey:@"Bandwidth"];

  v25 = [(MIBUNFCCommand *)self payload];
  v75 = [v25 objectForKey:@"WiFiSSID"];

  v26 = [(MIBUNFCCommand *)self payload];
  v74 = [v26 objectForKey:@"WiFiChannel"];

  v27 = [(MIBUNFCCommand *)self payload];
  v28 = [v27 objectForKey:@"EnableRateAdapter"];

  v29 = [(MIBUNFCCommand *)self payload];
  v30 = [v29 objectForKey:@"OperationTimeout"];

  if (!v6)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    v70 = *buf;
    goto LABEL_45;
  }

  v31 = v82;
  if (!v8)
  {
    [MIBUNFCCommand _serializeSSUpdate];
LABEL_57:
    v70 = *buf;
    goto LABEL_46;
  }

  if (!v10)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_57;
  }

  if (!v12)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_57;
  }

  if (!v14)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_57;
  }

  if (!v85)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_57;
  }

  if (!v84)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_57;
  }

  if (!v83)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_57;
  }

  v73 = v6;
  v105[0] = v6;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:1];
  v33 = [v4 serialize:&unk_286AC84C0 withValue:v32];

  if ((v33 & 1) == 0)
  {
    v6 = v73;
    [MIBUNFCCommand _serializeSSUpdate];
    v70 = *buf;
    goto LABEL_45;
  }

  v104 = v8;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v104 count:1];
  v35 = [v4 serialize:&unk_286AC84D8 withValue:v34];

  if ((v35 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    v70 = *buf;
    v6 = v73;
    goto LABEL_45;
  }

  v103 = v10;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
  v37 = [v4 serialize:&unk_286AC84F0 withValue:v36];

  if ((v37 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_77;
  }

  v102 = v12;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v102 count:1];
  v39 = [v4 serialize:&unk_286AC8508 withValue:v38];

  if ((v39 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    v70 = *buf;
    v6 = v73;
    goto LABEL_45;
  }

  v101 = v14;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];
  v41 = [v4 serialize:&unk_286AC8520 withValue:v40];

  if ((v41 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_77;
  }

  v100 = v85;
  v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
  v43 = [v4 serialize:&unk_286AC8538 withValue:v42];

  if ((v43 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_77;
  }

  v99 = v84;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
  v45 = [v4 serialize:&unk_286AC8550 withValue:v44];

  if ((v45 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_77;
  }

  v98 = v83;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
  v47 = [v4 serialize:&unk_286AC8568 withValue:v46];

  if ((v47 & 1) == 0)
  {
    [MIBUNFCCommand _serializeSSUpdate];
    goto LABEL_77;
  }

  if (v81 && v80)
  {
    v97 = v81;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
    v49 = [v4 serialize:&unk_286AC8580 withValue:v48];

    if ((v49 & 1) == 0)
    {
      [MIBUNFCCommand _serializeSSUpdate];
      goto LABEL_77;
    }

    v96 = v80;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v96 count:1];
    v51 = [v4 serialize:&unk_286AC8598 withValue:v50];

    if ((v51 & 1) == 0)
    {
      [MIBUNFCCommand _serializeSSUpdate];
      goto LABEL_77;
    }
  }

  v31 = v82;
  if (!v82 || (v95 = v82, [MEMORY[0x277CBEA60] arrayWithObjects:&v95 count:1], v52 = objc_claimAutoreleasedReturnValue(), v53 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC85B0, v52), v52, (v53 & 1) != 0))
  {
    if (v79 && (v94 = v79, [MEMORY[0x277CBEA60] arrayWithObjects:&v94 count:1], v54 = objc_claimAutoreleasedReturnValue(), v55 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC85C8, v54), v54, (v55 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else if (v78 && (v93 = v78, [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1], v56 = objc_claimAutoreleasedReturnValue(), v57 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC85E0, v56), v56, (v57 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else if (v77 && (v92 = v77, [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1], v58 = objc_claimAutoreleasedReturnValue(), v59 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC85F8, v58), v58, (v59 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else if (v76 && (v91 = v76, [MEMORY[0x277CBEA60] arrayWithObjects:&v91 count:1], v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC8610, v60), v60, (v61 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else if (v75 && (v90 = v75, [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC8628, v62), v62, (v63 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else if (v74 && (v89 = v74, [MEMORY[0x277CBEA60] arrayWithObjects:&v89 count:1], v64 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC8640, v64), v64, (v65 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else if (v28 && (v88 = v28, [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1], v66 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC8658, v66), v66, (v67 & 1) == 0))
    {
      [MIBUNFCCommand _serializeSSUpdate];
    }

    else
    {
      if (!v30 || (v87 = v30, [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1], v68 = objc_claimAutoreleasedReturnValue(), v69 = objc_msgSend(v4, "serialize:withValue:", &unk_286AC8670, v68), v68, (v69 & 1) != 0))
      {
        v70 = [v4 serializedData];
LABEL_44:
        v6 = v73;
LABEL_45:
        v31 = v82;
        goto LABEL_46;
      }

      [MIBUNFCCommand _serializeSSUpdate];
    }

LABEL_77:
    v70 = *buf;
    goto LABEL_44;
  }

  [MIBUNFCCommand _serializeSSUpdate];
  v70 = *buf;
  v6 = v73;
LABEL_46:

  v71 = *MEMORY[0x277D85DE8];

  return v70;
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_218()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_221()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_224()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_227()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_230()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_233()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_236()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_239()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_247()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_255()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_263()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_271()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_279()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_287()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_295()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_303()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_311()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_319()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_327()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_335()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_343()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_351()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_359()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_367()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_375()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_383()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __36__MIBUNFCCommand__serializeSSUpdate__block_invoke_391()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeStartUpdate
{
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _deserializeStartUpdate];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Deserialize startUpdate command", v5, 2u);
  }

  return [(MIBUNFCCommand *)self _deserializeTatsuPayload];
}

void __41__MIBUNFCCommand__deserializeStartUpdate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeRetryAfter
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&unk_286AC80D0];
    if (v5)
    {
      v6 = v5;
      [v5 doubleValue];
      if (v7 <= 0.0 || ([v6 doubleValue], v8 >= 300.0))
      {
        [(MIBUNFCCommand *)v6 _deserializeRetryAfter];
        v10 = 0;
      }

      else
      {
        v9 = [(MIBUNFCCommand *)self mutablePayload];
        [v9 setObject:v6 forKey:@"RetryAfter"];

        v10 = 1;
      }
    }

    else
    {
      [(MIBUNFCCommand *)&v12 _deserializeRetryAfter];
      v10 = v12;
    }
  }

  else
  {
    [(MIBUNFCCommand *)&v13 _deserializeRetryAfter];
    v10 = v13;
  }

  return v10;
}

void __40__MIBUNFCCommand__deserializeRetryAfter__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUNFCCommand__deserializeRetryAfter__block_invoke_399()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __40__MIBUNFCCommand__deserializeRetryAfter__block_invoke_402()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeHeartbeat
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (!v4)
  {
    [(MIBUNFCCommand *)&v18 _deserializeHeartbeat];
    v15 = v18;
    goto LABEL_9;
  }

  v5 = [v4 objectForKey:&unk_286AC80E8];
  if (!v5)
  {
    [(MIBUNFCCommand *)&v17 _deserializeHeartbeat];
    v15 = v17;
    goto LABEL_9;
  }

  v6 = v5;
  [v5 doubleValue];
  if (v7 < 0.0 || ([v6 doubleValue], v8 >= 300.0))
  {
    [(MIBUNFCCommand *)v6 _deserializeHeartbeat];
LABEL_15:
    v15 = 0;
    goto LABEL_9;
  }

  v9 = [v4 objectForKey:&unk_286AC8100];
  if (!v9)
  {
    [(MIBUNFCCommand *)v6 _deserializeHeartbeat];
    goto LABEL_15;
  }

  v10 = v9;
  [v9 doubleValue];
  if (v11 < 0.0 || ([v6 doubleValue], v12 >= 300.0))
  {
    [MIBUNFCCommand _deserializeHeartbeat];
    goto LABEL_15;
  }

  v13 = [(MIBUNFCCommand *)self mutablePayload];
  [v13 setObject:v6 forKey:@"HeartbeatPeriod"];

  v14 = [(MIBUNFCCommand *)self mutablePayload];
  [v14 setObject:v10 forKey:@"HeartbeatTimeout"];

  v15 = 1;
LABEL_9:

  return v15;
}

void __39__MIBUNFCCommand__deserializeHeartbeat__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __39__MIBUNFCCommand__deserializeHeartbeat__block_invoke_407()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __39__MIBUNFCCommand__deserializeHeartbeat__block_invoke_410()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __39__MIBUNFCCommand__deserializeHeartbeat__block_invoke_413()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __39__MIBUNFCCommand__deserializeHeartbeat__block_invoke_416()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeConfigureNFC
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&unk_286AC8118];
    if (v5)
    {
      v6 = v5;
      [v5 doubleValue];
      if (v7 < 0.0)
      {
        [(MIBUNFCCommand *)v6 _deserializeConfigureNFC];
        v9 = 0;
      }

      else
      {
        v8 = [(MIBUNFCCommand *)self mutablePayload];
        [v8 setObject:v6 forKey:@"NFCInactivityTimeout"];

        v9 = 1;
      }
    }

    else
    {
      [(MIBUNFCCommand *)&v11 _deserializeConfigureNFC];
      v9 = v11;
    }
  }

  else
  {
    [(MIBUNFCCommand *)&v12 _deserializeConfigureNFC];
    v9 = v12;
  }

  return v9;
}

void __42__MIBUNFCCommand__deserializeConfigureNFC__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUNFCCommand__deserializeConfigureNFC__block_invoke_421()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUNFCCommand__deserializeConfigureNFC__block_invoke_424()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeStartDiag
{
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _deserializeStartDiag];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Deserialize startDiag command", v5, 2u);
  }

  return [(MIBUNFCCommand *)self _deserializeTatsuPayload];
}

void __39__MIBUNFCCommand__deserializeStartDiag__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeTatsuPayload
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&unk_286AC8130];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 objectForKey:&unk_286AC8148];
      if (v7)
      {
        v8 = v7;
        v9 = [(MIBUNFCCommand *)self mutablePayload];
        [v9 setObject:v6 forKey:@"TatsuTicket"];

        v10 = [(MIBUNFCCommand *)self mutablePayload];
        [v10 setObject:v8 forKey:@"TimeStamp"];

        v11 = 1;
      }

      else
      {
        [(MIBUNFCCommand *)v6 _deserializeTatsuPayload];
        v11 = 0;
      }
    }

    else
    {
      [(MIBUNFCCommand *)&v13 _deserializeTatsuPayload];
      v11 = v13;
    }
  }

  else
  {
    [(MIBUNFCCommand *)&v14 _deserializeTatsuPayload];
    v11 = v14;
  }

  return v11;
}

void __42__MIBUNFCCommand__deserializeTatsuPayload__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUNFCCommand__deserializeTatsuPayload__block_invoke_431()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __42__MIBUNFCCommand__deserializeTatsuPayload__block_invoke_434()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeChallenge
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (v4)
  {
    v5 = [v4 objectForKey:&unk_286AC8160];
    if (v5)
    {
      v6 = v5;
      v7 = [(MIBUNFCCommand *)self mutablePayload];
      [v7 setObject:v6 forKey:@"ChallengeBlob"];

      v8 = 1;
    }

    else
    {
      [(MIBUNFCCommand *)&v10 _deserializeChallenge];
      v8 = v10;
    }
  }

  else
  {
    [(MIBUNFCCommand *)&v11 _deserializeChallenge];
    v8 = v11;
  }

  return v8;
}

void __39__MIBUNFCCommand__deserializeChallenge__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __39__MIBUNFCCommand__deserializeChallenge__block_invoke_439()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeAuthenticate
{
  if (MIBUOnceToken != -1)
  {
    [MIBUNFCCommand _deserializeAuthenticate];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Deserialize authenticate command", v5, 2u);
  }

  return [(MIBUNFCCommand *)self _deserializeTatsuPayload];
}

void __42__MIBUNFCCommand__deserializeAuthenticate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_deserializeSSUpdate
{
  v3 = [[MIBUDeserializer alloc] initWithData:self->_serializedPayload];
  v4 = [(MIBUDeserializer *)v3 deserialize];

  if (!v4)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    goto LABEL_41;
  }

  v51 = [v4 objectForKey:&unk_286AC8178];
  if (!v51)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

LABEL_41:
    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
LABEL_63:
    v34 = 0;
    goto LABEL_32;
  }

  v50 = [v4 objectForKey:&unk_286AC8190];
  if (!v50)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    goto LABEL_62;
  }

  v49 = [v4 objectForKey:&unk_286AC81A8];
  if (!v49)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_62;
  }

  v48 = [v4 objectForKey:&unk_286AC81C0];
  if (!v48)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    v48 = 0;
    goto LABEL_62;
  }

  v47 = [v4 objectForKey:&unk_286AC81D8];
  if (!v47)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
LABEL_62:
    v47 = 0;
    goto LABEL_63;
  }

  v46 = [v4 objectForKey:&unk_286AC81F0];
  if (!v46)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    v46 = 0;
    goto LABEL_63;
  }

  v43 = [v4 objectForKey:&unk_286AC8208];
  if (!v43)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v9 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v36 = 0;
    goto LABEL_63;
  }

  v5 = [v4 objectForKey:&unk_286AC8220];
  if (v5)
  {
    v6 = v5;
    v7 = [v4 objectForKey:&unk_286AC8238];
    v8 = [v4 objectForKey:&unk_286AC8250];
    v9 = [v4 objectForKey:&unk_286AC8268];
    v10 = [v4 objectForKey:&unk_286AC8280];
    v11 = [v4 objectForKey:&unk_286AC8298];
    v12 = [v4 objectForKey:&unk_286AC82B0];
    v44 = [v4 objectForKey:&unk_286AC82C8];
    v42 = [v4 objectForKey:&unk_286AC82E0];
    v52 = [v4 objectForKey:&unk_286AC82F8];
    v45 = [v4 objectForKey:&unk_286AC8310];
    v38 = [v4 objectForKey:&unk_286AC8328];
    v13 = [(MIBUNFCCommand *)self mutablePayload];
    [v13 setObject:v51 forKey:@"HostPort"];

    v14 = [(MIBUNFCCommand *)self mutablePayload];
    [v14 setObject:v50 forKey:@"GroupAddress"];

    v15 = [(MIBUNFCCommand *)self mutablePayload];
    [v15 setObject:v49 forKey:@"GroupPort"];

    v16 = [(MIBUNFCCommand *)self mutablePayload];
    [v16 setObject:v48 forKey:@"InterfaceName"];

    v17 = [(MIBUNFCCommand *)self mutablePayload];
    [v17 setObject:v47 forKey:@"ServiceName"];

    v18 = [(MIBUNFCCommand *)self mutablePayload];
    [v18 setObject:v46 forKey:@"RQBasicParameters"];

    v19 = [(MIBUNFCCommand *)self mutablePayload];
    [v19 setObject:v43 forKey:@"RQExtendedParameters"];

    v20 = [(MIBUNFCCommand *)self mutablePayload];
    v39 = v6;
    [v20 setObject:v6 forKey:@"RQThreshold"];

    v41 = v7;
    if (v7 && v8)
    {
      v21 = [(MIBUNFCCommand *)self mutablePayload];
      [v21 setObject:v7 forKey:@"TCPAddress"];

      v22 = [(MIBUNFCCommand *)self mutablePayload];
      [v22 setObject:v8 forKey:@"TCPPort"];
    }

    v40 = v8;
    if (v9)
    {
      v23 = [(MIBUNFCCommand *)self mutablePayload];
      [v23 setObject:v9 forKey:@"TCPPingInterval"];
    }

    if (v10)
    {
      v24 = [(MIBUNFCCommand *)self mutablePayload];
      [v24 setObject:v10 forKey:@"CountryCode"];
    }

    if (v11)
    {
      v25 = [(MIBUNFCCommand *)self mutablePayload];
      [v25 setObject:v11 forKey:@"ChannelName"];
    }

    if (v12)
    {
      v26 = [(MIBUNFCCommand *)self mutablePayload];
      [v26 setObject:v12 forKey:@"Band"];
    }

    if (v44)
    {
      v27 = [(MIBUNFCCommand *)self mutablePayload];
      [v27 setObject:v44 forKey:@"Bandwidth"];
    }

    if (v42)
    {
      v28 = [(MIBUNFCCommand *)self mutablePayload];
      [v28 setObject:v42 forKey:@"WiFiSSID"];
    }

    v29 = v52;
    if (v52)
    {
      v30 = [(MIBUNFCCommand *)self mutablePayload];
      [v30 setObject:v52 forKey:@"WiFiChannel"];

      v29 = v52;
    }

    if (v45)
    {
      v31 = [(MIBUNFCCommand *)self mutablePayload];
      [v31 setObject:v45 forKey:@"EnableRateAdapter"];

      v29 = v52;
    }

    v32 = v38;
    if (v38)
    {
      v33 = [(MIBUNFCCommand *)self mutablePayload];
      [v33 setObject:v38 forKey:@"OperationTimeout"];
    }

    v34 = 1;
    v35 = v42;
    v36 = v43;
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
    {
      [MIBUNFCCommand _deserializeSSUpdate];
    }

    v29 = 0;
    v35 = 0;
    v44 = 0;
    v45 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v32 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v34 = 0;
    v36 = v43;
    v9 = 0;
  }

LABEL_32:

  return v34;
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_446()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_449()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_452()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_455()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_458()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_461()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_464()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __38__MIBUNFCCommand__deserializeSSUpdate__block_invoke_467()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_initWithCommandCode:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_101);
  }

  if (OUTLINED_FUNCTION_8())
  {
    v7 = *v0;
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  }

  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_initWithCommandCode:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_259ABF000, a2, OS_LOG_TYPE_ERROR, "Unrecognized command code %ld; failed to initialize command object", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_initWithAPDU:(uint64_t)a1 .cold.1(uint64_t a1, _BYTE *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_106);
  }

  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
  }

  *a2 = 0;
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithAPDU:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_115);
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v4 = v2;
    [OUTLINED_FUNCTION_10() length];
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
  }

  OUTLINED_FUNCTION_11();
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithAPDU:.cold.3()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_112);
  }

  v0 = MIBUConnObj;
  if (OUTLINED_FUNCTION_8())
  {
    v2 = v0;
    [OUTLINED_FUNCTION_10() length];
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.4(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_109_0);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.5(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_139);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.6(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_136);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.7(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_133);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.8(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_130);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.9(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_127);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.10(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_124);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.11(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_121);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:(_BYTE *)a1 .cold.12(_BYTE *a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_118);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_initWithAPDU:.cold.13()
{
  OUTLINED_FUNCTION_7();
  v8 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_103_0);
  }

  v0 = MIBUConnObj;
  if (OUTLINED_FUNCTION_8())
  {
    v2 = v0;
    [OUTLINED_FUNCTION_10() length];
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  OUTLINED_FUNCTION_11();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_serializeRetryAfter
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_144_0);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeHeartbeat
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_151);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeConfigureNFC
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_172);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeTatsuPayload:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_195);
  }

  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeTatsuPayload:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_203);
  }

  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_0_3();
    OUTLINED_FUNCTION_4();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeTatsuPayload:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_187);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeTatsuPayload:.cold.4()
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_184);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeChallenge
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_205);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_serializeSSUpdate
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_220);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  }

  OUTLINED_FUNCTION_4_3();
  v0 = *MEMORY[0x277D85DE8];
}

- (void)_deserializeRetryAfter
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_398);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_deserializeHeartbeat
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_406);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_deserializeConfigureNFC
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_420);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_deserializeTatsuPayload
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_430);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

- (void)_deserializeChallenge
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_438);
  }

  if (OUTLINED_FUNCTION_5_0())
  {
    OUTLINED_FUNCTION_1_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }

  *a1 = 0;
}

@end