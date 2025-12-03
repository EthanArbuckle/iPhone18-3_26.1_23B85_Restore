@interface GKVoiceChatDictionary
+ (BOOL)validateCancel:(id)cancel;
+ (BOOL)validateDictionary:(id)dictionary;
+ (BOOL)validateFocus:(id)focus;
+ (BOOL)validateInvite:(id)invite;
+ (BOOL)validateReply:(id)reply;
+ (id)dictionaryFromData:(id)data;
- (BOOL)isFocus;
- (BOOL)matchesResponse:(id)response;
- (GKVoiceChatDictionary)initWithCoder:(id)coder;
- (id)cancelDictionary;
- (id)setLocalVCPartyID:(id)d;
- (id)setRemoteVCPartyID:(id)d;
- (int64_t)nonce;
- (unint64_t)response;
- (unsigned)originalCallID;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setFromParticipantID:(id)d;
- (void)setNonce:(int64_t)nonce;
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

+ (id)dictionaryFromData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"GKVoiceChatDictionary", @"NSMutableDictionary", @"NSDictionary", @"NSObject", @"NSString", @"NSData", @"NSNumber", @"NSValue", 0}];
  v6 = [objc_alloc(MEMORY[0x277CCAD88]) initForReadingWithData:data];
  [v6 _setAllowedClasses:v5];
  decodeObject = [v6 decodeObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [self validateDictionary:decodeObject])
  {
    result = decodeObject;
  }

  else
  {

    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)validateDictionary:(id)dictionary
{
  v3 = *(dictionary + 2);
  if (v3 > 257)
  {
    if (v3 != 258)
    {
      if (v3 == 259)
      {
        return [self validateFocus:?];
      }

      return 0;
    }

    return [self validateCancel:?];
  }

  else
  {
    if (v3 != 256)
    {
      if (v3 == 257)
      {
        return [self validateReply:?];
      }

      return 0;
    }

    return [self validateInvite:?];
  }
}

+ (BOOL)validateInvite:(id)invite
{
  v16 = *MEMORY[0x277D85DE8];
  if ([invite type] == 256)
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

        v8 = [*(invite + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
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

+ (BOOL)validateReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  if ([reply type] == 257)
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

        v8 = [*(reply + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
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

+ (BOOL)validateCancel:(id)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  if ([cancel type] == 258)
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

        v8 = [*(cancel + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
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

+ (BOOL)validateFocus:(id)focus
{
  v16 = *MEMORY[0x277D85DE8];
  if ([focus type] == 259)
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

        v8 = [*(focus + 1) objectForKeyedSubscript:*(*(&v11 + 1) + 8 * v7)];
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

- (BOOL)matchesResponse:(id)response
{
  if (self->type != 256 || !-[GKVoiceChatDictionary matchesNonce:](self, "matchesNonce:", [response nonce]) || objc_msgSend(response, "type") != 257)
  {
    return 0;
  }

  participantID = [(GKVoiceChatDictionary *)self participantID];
  fromParticipantID = [response fromParticipantID];

  return [participantID isEqualToString:fromParticipantID];
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

- (void)setFromParticipantID:(id)d
{
  if (d)
  {
    [(NSMutableDictionary *)self->actualDictionary setObject:d forKeyedSubscript:@"fromParticipantID"];
  }
}

- (int64_t)nonce
{
  v2 = [(NSMutableDictionary *)self->actualDictionary objectForKeyedSubscript:@"nonce"];

  return [v2 integerValue];
}

- (void)setNonce:(int64_t)nonce
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:nonce];
  actualDictionary = self->actualDictionary;

  [(NSMutableDictionary *)actualDictionary setObject:v4 forKeyedSubscript:@"nonce"];
}

- (BOOL)isFocus
{
  v2 = [(NSMutableDictionary *)self->actualDictionary objectForKeyedSubscript:@"isFocus"];

  return [v2 BOOLValue];
}

- (id)setLocalVCPartyID:(id)d
{
  v4 = [d copy];
  [(NSMutableDictionary *)self->actualDictionary setObject:v4 forKeyedSubscript:@"localVCPartyID"];

  return 0;
}

- (id)setRemoteVCPartyID:(id)d
{
  v4 = [d copy];
  [(NSMutableDictionary *)self->actualDictionary setObject:v4 forKeyedSubscript:@"remoteVCPartyID"];

  return 0;
}

- (GKVoiceChatDictionary)initWithCoder:(id)coder
{
  self->actualDictionary = [coder decodeObject];
  self->orignalCallID = -1;
  v6 = 0;
  [coder decodeValueOfObjCType:"I" at:&v6 size:4];
  self->type = v6;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->actualDictionary];

  [coder encodeValueOfObjCType:"I" at:&self->type];
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