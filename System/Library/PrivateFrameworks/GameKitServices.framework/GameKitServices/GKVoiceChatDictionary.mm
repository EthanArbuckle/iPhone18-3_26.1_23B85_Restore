@interface GKVoiceChatDictionary
+ (BOOL)validateCancel:(id)a3;
+ (BOOL)validateDictionary:(id)a3;
+ (BOOL)validateFocus:(id)a3;
+ (BOOL)validateInvite:(id)a3;
+ (BOOL)validateReply:(id)a3;
+ (id)dictionaryFromData:(id)a3;
- (BOOL)isFocus;
- (BOOL)matchesResponse:(id)a3;
- (GKVoiceChatDictionary)initWithCoder:(id)a3;
- (id)cancelDictionary;
- (id)setLocalVCPartyID:(id)a3;
- (id)setRemoteVCPartyID:(id)a3;
- (int64_t)nonce;
- (unint64_t)response;
- (unsigned)originalCallID;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setFromParticipantID:(id)a3;
- (void)setNonce:(int64_t)a3;
@end

@implementation GKVoiceChatDictionary

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKVoiceChatDictionary;
  [(GKVoiceChatDictionary *)&v3 dealloc];
}

- (unsigned)originalCallID
{
  if (self->orignalCallID == -1)
  {
    return [(GKVoiceChatDictionary *)self callID];
  }

  else
  {
    return self->orignalCallID;
  }
}

+ (id)dictionaryFromData:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"GKVoiceChatDictionary", @"NSMutableDictionary", @"NSDictionary", @"NSObject", @"NSString", @"NSData", @"NSNumber", @"NSValue", 0}];
  v6 = [objc_alloc(MEMORY[0x277CCAD88]) initForReadingWithData:a3];
  [v6 _setAllowedClasses:v5];
  v7 = [v6 decodeObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [a1 validateDictionary:v7])
  {
    result = v7;
  }

  else
  {

    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)validateDictionary:(id)a3
{
  v3 = *(a3 + 2);
  if (v3 > 257)
  {
    if (v3 != 258)
    {
      if (v3 == 259)
      {
        return [a1 validateFocus:?];
      }

      return 0;
    }

    return [a1 validateCancel:?];
  }

  else
  {
    if (v3 != 256)
    {
      if (v3 == 257)
      {
        return [a1 validateReply:?];
      }

      return 0;
    }

    return [a1 validateInvite:?];
  }
}

+ (BOOL)validateInvite:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a3 type] == 256)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [&unk_28619C0D8 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_28619C0D8);
        }

        v8 = [*(a3 + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        if (!v8)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [&unk_28619C0D8 countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v8) = 1;
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)validateReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a3 type] == 257)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [&unk_28619C0F0 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_28619C0F0);
        }

        v8 = [*(a3 + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        if (!v8)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [&unk_28619C0F0 countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v8) = 1;
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)validateCancel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a3 type] == 258)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [&unk_28619C108 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_28619C108);
        }

        v8 = [*(a3 + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        if (!v8)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [&unk_28619C108 countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v8) = 1;
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)validateFocus:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if ([a3 type] == 259)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [&unk_28619C120 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
LABEL_4:
      v7 = 0;
      while (1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_28619C120);
        }

        v8 = [*(a3 + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
        if (!v8)
        {
          break;
        }

        if (v5 == ++v7)
        {
          v5 = [&unk_28619C120 countByEnumeratingWithState:&v11 objects:v15 count:16];
          LOBYTE(v8) = 1;
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)cancelDictionary
{
  v3 = objc_alloc_init(GKVoiceChatDictionary);
  v4 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->actualDictionary];
  v3->actualDictionary = v4;
  v3->type = 258;
  [(NSMutableDictionary *)v4 removeObjectForKey:@"connectionData"];
  [(NSMutableDictionary *)v4 setObject:@"Cancel" forKeyedSubscript:@"action"];
  v3->orignalCallID = -1;

  return v3;
}

- (BOOL)matchesResponse:(id)a3
{
  if (self->type != 256 || !-[GKVoiceChatDictionary matchesNonce:](self, "matchesNonce:", [a3 nonce]) || objc_msgSend(a3, "type") != 257)
  {
    return 0;
  }

  v5 = [(GKVoiceChatDictionary *)self participantID];
  v6 = [a3 fromParticipantID];

  return [v5 isEqualToString:v6];
}

- (unint64_t)response
{
  if (self->type != 257)
  {
    return 0;
  }

  v4 = [(NSMutableDictionary *)self->actualDictionary objectForKeyedSubscript:@"replyCode", v2];

  return [v4 integerValue];
}

- (void)setFromParticipantID:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->actualDictionary setObject:a3 forKeyedSubscript:@"fromParticipantID"];
  }
}

- (int64_t)nonce
{
  v2 = [(NSMutableDictionary *)self->actualDictionary objectForKeyedSubscript:@"nonce"];

  return [v2 integerValue];
}

- (void)setNonce:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  actualDictionary = self->actualDictionary;

  [(NSMutableDictionary *)actualDictionary setObject:v4 forKeyedSubscript:@"nonce"];
}

- (BOOL)isFocus
{
  v2 = [(NSMutableDictionary *)self->actualDictionary objectForKeyedSubscript:@"isFocus"];

  return [v2 BOOLValue];
}

- (id)setLocalVCPartyID:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->actualDictionary setObject:v4 forKeyedSubscript:@"localVCPartyID"];

  return 0;
}

- (id)setRemoteVCPartyID:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->actualDictionary setObject:v4 forKeyedSubscript:@"remoteVCPartyID"];

  return 0;
}

- (GKVoiceChatDictionary)initWithCoder:(id)a3
{
  self->actualDictionary = [a3 decodeObject];
  self->orignalCallID = -1;
  v6 = 0;
  [a3 decodeValueOfObjCType:"I" at:&v6 size:4];
  self->type = v6;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->actualDictionary];

  [a3 encodeValueOfObjCType:"I" at:&self->type];
}

+ (void)dictionaryFromData:(uint64_t)a3 .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = "+[GKVoiceChatDictionary dictionaryFromData:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 78;
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_24E50C000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d GKVoiceChatDictionary corrupted %s", buf, 0x26u);
}

@end