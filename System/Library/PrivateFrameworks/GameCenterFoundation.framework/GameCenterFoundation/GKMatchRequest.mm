@interface GKMatchRequest
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (NSUInteger)maxPlayersAllowedForMatchOfType:(GKMatchType)matchType;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
+ (id)sanitizeProperties:(id)a3;
- (BOOL)defaultNumberOfPlayersIsValid;
- (BOOL)hasFutureRecipientProperties;
- (BOOL)isEqual:(id)a3;
- (BOOL)isIncorrectlyInvitingPlayers;
- (BOOL)isRecipientCountValid;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKMatchRequest)init;
- (GKMatchRequest)initWithInternalRepresentation:(id)a3;
- (NSArray)playersToInvite;
- (NSArray)recipients;
- (NSDictionary)recipientProperties;
- (NSString)internalDescription;
- (NSString)inviteMessage;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)guestPlayers;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)validateNumbersOfPlayersWithMax:(unint64_t)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)ensureValidityHosted:(BOOL)a3;
- (void)expectFutureRecipientPropertiesForPlayers:(id)a3;
- (void)loadRecipientsWithCompletionHandler:(id)a3;
- (void)playersToInvite;
- (void)removeLocalPlayerFromPlayersToInvite;
- (void)setInviteMessage:(NSString *)inviteMessage;
- (void)setPlayersToInvite:(NSArray *)playersToInvite;
- (void)setProperties:(id)a3;
- (void)setRecipientProperties:(id)a3;
- (void)setRecipients:(NSArray *)recipients;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
- (void)updateRecipientProperties:(id)a3 forPlayer:(id)a4;
- (void)updateRecipientProperties:(id)a3 forPlayer:(id)a4 withSanitization:(BOOL)a5;
@end

@implementation GKMatchRequest

- (GKMatchRequest)init
{
  v3 = +[(GKInternalRepresentation *)GKMatchRequestInternal];
  v4 = +[GKLocalPlayer local];
  v5 = [v4 internal];
  v6 = [v5 playerID];
  [v3 setLocalPlayerID:v6];

  v7 = [(GKMatchRequest *)self initWithInternalRepresentation:v3];
  return v7;
}

- (GKMatchRequest)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker: initWithInternalRepresentation:", buf, 2u);
  }

  v11.receiver = self;
  v11.super_class = GKMatchRequest;
  v7 = [(GKMatchRequest *)&v11 init];
  if (v7)
  {
    if (!v4)
    {
      v4 = +[(GKInternalRepresentation *)GKMatchRequestInternal];
    }

    objc_storeStrong(&v7->_internal, v4);
    v8 = dispatch_queue_create("com.apple.GameKit.matchRequest.serialQueue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKMatchRequest *)self internal];
    v7 = [v5 internal];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(GKMatchRequest *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = 0x277CCA000;
  v17 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v16 = [(GKMatchRequest *)self minPlayers];
  v6 = [(GKMatchRequest *)self maxPlayers];
  v7 = [(GKMatchRequest *)self playerGroup];
  v8 = [(GKMatchRequest *)self recipients];
  v9 = [v8 _gkMapWithBlock:&__block_literal_global_49];
  v10 = [(GKMatchRequest *)self defaultNumberOfPlayers];
  v11 = [(GKMatchRequest *)self inviteMessage];
  if (v11)
  {
    v12 = MEMORY[0x277CCACA8];
    v3 = [(GKMatchRequest *)self inviteMessage];
    v13 = [v12 stringWithFormat:@"'%@'", v3];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v17 stringWithFormat:@"<%@ %p - minPlayers:%u maxPlayers:%u playerGroup:%ld recipients:%@ defaultNumberOfPlayers:%u inviteMessage:%@ playerAttributes:0x%08X>", v5, self, v16, v6, v7, v9, v10, v13, -[GKMatchRequest playerAttributes](self, "playerAttributes")];
  if (v11)
  {
  }

  return v14;
}

id __29__GKMatchRequest_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 internal];
  v3 = [v2 conciseDescription];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(GKMatchRequest *)self internal];
  v7 = [v6 copyWithZone:a3];
  [v5 setInternal:v7];

  v8 = [(GKMatchRequest *)self inviteeResponseHandler];
  [v5 setInviteeResponseHandler:v8];

  v9 = [(GKMatchRequest *)self recipientResponseHandler];
  [v5 setRecipientResponseHandler:v9];

  return v5;
}

- (BOOL)defaultNumberOfPlayersIsValid
{
  if (![(GKMatchRequest *)self defaultNumberOfPlayers])
  {
    return 1;
  }

  v3 = [(GKMatchRequest *)self defaultNumberOfPlayers];
  if (v3 < [(GKMatchRequest *)self minPlayers])
  {
    return 0;
  }

  v5 = [(GKMatchRequest *)self defaultNumberOfPlayers];
  return v5 <= [(GKMatchRequest *)self maxPlayers];
}

- (id)validateNumbersOfPlayersWithMax:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB18] array];
  if ([(GKMatchRequest *)self maxPlayers]> a3)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"The maximum number of players must be <= %lu", a3];
    v8 = [v6 userErrorForCode:17 description:v7];
    [v5 addObject:v8];
  }

  v9 = [(GKMatchRequest *)self maxPlayers];
  if (v9 < [(GKMatchRequest *)self minPlayers])
  {
    v10 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The maximum number of players can't be less than the minimum number of players."];
    [v5 addObject:v10];
  }

  if ([(GKMatchRequest *)self minPlayers]<= 1)
  {
    v11 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The minimum number of players must be >1"];
    [v5 addObject:v11];
  }

  if (![(GKMatchRequest *)self defaultNumberOfPlayersIsValid])
  {
    v12 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The default number of players is invalid"];
    [v5 addObject:v12];
  }

  v13 = [(GKMatchRequest *)self recipients];
  v14 = [v13 count];
  v15 = [(GKMatchRequest *)self maxPlayers];

  if (v14 >= v15)
  {
    v16 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The number of recipients must be less than the maximum number of players."];
    [v5 addObject:v16];
  }

  return v5;
}

- (void)ensureValidityHosted:(BOOL)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker: ensureValidityHosted", v13, 2u);
  }

  v7 = +[GKPreferences shared];
  v8 = v7;
  if (v3)
  {
    v9 = [v7 maxPlayersHosted];
  }

  else
  {
    v9 = [v7 maxPlayersP2P];
  }

  v10 = v9;
  if ([(GKMatchRequest *)self maxPlayers]<= v9)
  {
    v10 = [(GKMatchRequest *)self maxPlayers];
  }

  [(GKMatchRequest *)self setMaxPlayers:v10];
  if ([(GKMatchRequest *)self minPlayers])
  {
    v11 = [(GKMatchRequest *)self minPlayers];
  }

  else
  {
    v11 = 1;
  }

  [(GKMatchRequest *)self setMinPlayers:v11];
  if ([(GKMatchRequest *)self defaultNumberOfPlayersIsValid])
  {
    v12 = [(GKMatchRequest *)self defaultNumberOfPlayers];
  }

  else
  {
    v12 = [(GKMatchRequest *)self maxPlayers];
  }

  [(GKMatchRequest *)self setDefaultNumberOfPlayers:v12];
}

- (void)removeLocalPlayerFromPlayersToInvite
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v16 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatchmaker: removeLocalPlayerFromPlayersToInvite", v16, 2u);
  }

  v5 = +[GKLocalPlayer localPlayer];
  v6 = [(GKMatchRequest *)self internal];
  v7 = [v6 recipientPlayerIDs];
  v8 = [v5 internal];
  v9 = [v8 playerID];
  v10 = [v7 containsObject:v9];

  if (v10)
  {
    v11 = MEMORY[0x277CBEB18];
    v12 = [(GKMatchRequest *)self internal];
    v13 = [v12 recipientPlayerIDs];
    v14 = [v11 arrayWithArray:v13];

    [v14 removeObject:v5];
    v15 = [(GKMatchRequest *)self internal];
    [v15 setRecipientPlayerIDs:v14];
  }
}

+ (NSUInteger)maxPlayersAllowedForMatchOfType:(GKMatchType)matchType
{
  v4 = +[GKPreferences shared];
  v5 = v4;
  switch(matchType)
  {
    case GKMatchTypeTurnBased:
      v6 = [v4 maxPlayersTurnBased];
      goto LABEL_7;
    case GKMatchTypeHosted:
      v6 = [v4 maxPlayersHosted];
      goto LABEL_7;
    case GKMatchTypePeerToPeer:
      v6 = [v4 maxPlayersP2P];
LABEL_7:
      v7 = v6;
      goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    +[GKMatchRequest maxPlayersAllowedForMatchOfType:];
  }

  return v7;
}

- (BOOL)isRecipientCountValid
{
  v2 = self;
  v3 = [(GKMatchRequest *)self recipients];
  v4 = [v3 count] + 1;
  LOBYTE(v2) = v4 <= [(GKMatchRequest *)v2 maxPlayers];

  return v2;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKMatchRequest;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v10.receiver = self;
  v10.super_class = GKMatchRequest;
  v5 = [(GKMatchRequest *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKMatchRequest *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKMatchRequest;
  if ([(GKMatchRequest *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKMatchRequest *)self forwardingTargetForSelector:a3];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  if (a3)
  {
    if (class_respondsToSelector(a1, a3))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKMatchRequestInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)guestPlayers
{
  v2 = [(GKMatchRequest *)self recipients];
  v3 = [v2 _gkGuestPlayersFromPlayers];

  return v3;
}

- (NSArray)recipients
{
  v2 = [(GKMatchRequest *)self internal];
  v3 = [v2 recipients];
  v4 = [v3 _gkPlayersFromInternals];

  [v4 _gkValidatePlayersForReturnFromAPI];

  return v4;
}

- (void)setRecipients:(NSArray *)recipients
{
  v21[1] = *MEMORY[0x277D85DE8];
  v4 = recipients;
  if (GKApplicationLinkedOnOrAfter(0x80000, 657920))
  {
    v5 = [(NSArray *)v4 count];
    v6 = [MEMORY[0x277CBEB58] setWithArray:v4];
    v7 = [v6 count];

    if (v5 != v7)
    {
      v8 = MEMORY[0x277CCACA8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"All recipients must be unique %@", v4];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchRequest.m"];
      v11 = [v10 lastPathComponent];
      v12 = [v8 stringWithFormat:@"%@ ([recipients count] == [[NSMutableSet setWithArray:recipients] count])\n[%s (%s:%d)]", v9, "-[GKMatchRequest setRecipients:]", objc_msgSend(v11, "UTF8String"), 294];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
    }
  }

  v13 = [(NSArray *)v4 _gkInternalsFromPlayers];
  v14 = [(GKMatchRequest *)self internal];
  [v14 setRecipients:v13];

  v15 = [(NSArray *)v4 _gkPlayersIDsFromPlayers];
  v16 = [(GKMatchRequest *)self internal];
  [v16 setRecipientPlayerIDs:v15];

  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  v20 = @"request";
  v21[0] = self;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [v17 postNotificationName:@"GKSetMatchRequestRecipientsNotification" object:0 userInfo:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)inviteMessage
{
  v3 = +[GKPreferences shared];
  v4 = [v3 shouldAllowCustomCommunication];

  if (v4)
  {
    v5 = [(GKMatchRequest *)self internal];
    v6 = [v5 inviteMessage];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setInviteMessage:(NSString *)inviteMessage
{
  v7 = inviteMessage;
  v4 = +[GKPreferences shared];
  v5 = [v4 shouldAllowCustomCommunication];

  if (v5)
  {
    v6 = [(GKMatchRequest *)self internal];
    [v6 setInviteMessage:v7];
  }
}

- (NSArray)playersToInvite
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [(GKMatchRequest *)v4 playersToInvite];
    }

    v9[0] = @"playerID is no longer available";
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    v6 = [(GKMatchRequest *)self internal];
    v5 = [v6 recipientPlayerIDs];
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setPlayersToInvite:(NSArray *)playersToInvite
{
  v13 = playersToInvite;
  if (GKApplicationLinkedOnOrAfter(0x80000, 657920))
  {
    v4 = [(NSArray *)v13 count];
    v5 = [MEMORY[0x277CBEB58] setWithArray:v13];
    v6 = [v5 count];

    if (v4 != v6)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"All playersToInvite must be unique %@", v13];
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchRequest.m"];
      v10 = [v9 lastPathComponent];
      v11 = [v7 stringWithFormat:@"%@ ([playersToInvite count] == [[NSMutableSet setWithArray:playersToInvite] count])\n[%s (%s:%d)]", v8, "-[GKMatchRequest setPlayersToInvite:]", objc_msgSend(v10, "UTF8String"), 340];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
    }
  }

  v12 = [(GKMatchRequest *)self internal];
  [v12 setRecipientPlayerIDs:v13];
}

+ (id)sanitizeProperties:(id)a3
{
  v3 = a3;
  if (!v3)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (([MEMORY[0x277CCAAA0] isValidJSONObject:v3] & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchRequest sanitizeProperties:v10];
    }

    goto LABEL_13;
  }

  v4 = [v3 objectForKeyedSubscript:@"gc"];

  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKDeveloper;
    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchRequest sanitizeProperties:v6];
    }

    v7 = [v3 mutableCopy];
    [v7 removeObjectForKey:@"gc"];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
  }

  else
  {
    v8 = v3;
  }

LABEL_14:

  return v8;
}

- (void)setProperties:(id)a3
{
  v4 = a3;
  v6 = [objc_opt_class() sanitizeProperties:v4];

  v5 = [(GKMatchRequest *)self internal];
  [v5 setProperties:v6];
}

- (NSDictionary)recipientProperties
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  v12 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [(GKMatchRequest *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__GKMatchRequest_recipientProperties__block_invoke;
  v6[3] = &unk_2785E1220;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  if ([v8[5] count])
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v8[5]];
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __37__GKMatchRequest_recipientProperties__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) internal];
  v3 = [v2 recipientProperties];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = [*(a1 + 32) internal];
        v10 = [v9 recipientProperties];
        v11 = [v10 objectForKeyedSubscript:v8];

        if (v11)
        {
          v12 = *(*(*(a1 + 40) + 8) + 40);
          v13 = [[GKPlayer alloc] initWithInternalRepresentation:v8];
          [v12 setObject:v11 forKey:v13];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setRecipientProperties:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "setRecipientProperties: %@", buf, 0xCu);
  }

  if (v4)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if ([v13 isLocalPlayer])
          {
            v21 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"GKLocalPlayer can't have recipient properties" userInfo:0];
            objc_exception_throw(v21);
          }

          v14 = objc_opt_class();
          v15 = [v8 objectForKeyedSubscript:v13];
          v16 = [v14 sanitizeProperties:v15];

          if (v16)
          {
            v17 = [v13 internal];
            [v7 setObject:v16 forKey:v17];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = [(GKMatchRequest *)self serialQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__GKMatchRequest_setRecipientProperties___block_invoke;
  v22[3] = &unk_2785DEBA8;
  v22[4] = self;
  v23 = v7;
  v19 = v7;
  dispatch_sync(v18, v22);

  v20 = *MEMORY[0x277D85DE8];
}

void __41__GKMatchRequest_setRecipientProperties___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) count];
  if (v2)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(a1 + 40)];
  }

  else
  {
    v4 = 0;
  }

  v3 = [*(a1 + 32) internal];
  [v3 setRecipientProperties:v4];

  if (v2)
  {
  }
}

- (BOOL)hasFutureRecipientProperties
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(GKMatchRequest *)self serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__GKMatchRequest_hasFutureRecipientProperties__block_invoke;
  v5[3] = &unk_2785E1220;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

void __46__GKMatchRequest_hasFutureRecipientProperties__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [*(a1 + 32) internal];
  v3 = [v2 recipientProperties];

  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [*(a1 + 32) internal];
        v10 = [v9 recipientProperties];
        v11 = [v10 objectForKeyedSubscript:v8];
        v12 = [v11 objectForKeyedSubscript:@"gc"];
        v13 = [v12 isEqualToString:@"<future>"];

        if (v13)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
}

- (void)expectFutureRecipientPropertiesForPlayers:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [GKMatchRequest expectFutureRecipientPropertiesForPlayers:];
  }

  v6 = [(GKMatchRequest *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__GKMatchRequest_expectFutureRecipientPropertiesForPlayers___block_invoke;
  v8[3] = &unk_2785DEBA8;
  v9 = v4;
  v10 = self;
  v7 = v4;
  dispatch_sync(v6, v8);
}

void __60__GKMatchRequest_expectFutureRecipientPropertiesForPlayers___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v12;
    do
    {
      v5 = 0;
      do
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v11 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v15 = @"gc";
        v16 = @"<future>";
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        [v7 updateRecipientProperties:v8 forPlayer:v6 withSanitization:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v3);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateRecipientProperties:(id)a3 forPlayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [GKMatchRequest updateRecipientProperties:forPlayer:];
  }

  v9 = [(GKMatchRequest *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__GKMatchRequest_updateRecipientProperties_forPlayer___block_invoke;
  block[3] = &unk_2785DDB40;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_sync(v9, block);
}

- (void)updateRecipientProperties:(id)a3 forPlayer:(id)a4 withSanitization:(BOOL)a5
{
  v37 = a3;
  v8 = a4;
  v9 = dispatch_get_current_queue();
  v10 = [(GKMatchRequest *)self serialQueue];

  v11 = 0x277CCA000;
  v12 = 0x277CBE000;
  if (v9 != v10)
  {
    v13 = MEMORY[0x277CCACA8];
    v36 = a5;
    label = dispatch_queue_get_label(v9);
    v15 = [(GKMatchRequest *)self serialQueue];
    v16 = dispatch_queue_get_label(v15);
    v17 = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v13 stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "-[GKMatchRequest updateRecipientProperties:forPlayer:withSanitization:]", label, v16, v17];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchRequest.m"];
    v20 = [v19 lastPathComponent];
    v21 = [v13 stringWithFormat:@"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v18, "-[GKMatchRequest updateRecipientProperties:forPlayer:withSanitization:]", objc_msgSend(v20, "UTF8String"), 446];

    a5 = v36;
    v12 = 0x277CBE000uLL;

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v21}];
    v11 = 0x277CCA000uLL;
  }

  if ([v8 isLocalPlayer])
  {
    v22 = *(v11 + 3240);
    v23 = [v22 stringWithFormat:@"GKLocalPlayer can't have recipient properties"];
    v24 = [*(v11 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchRequest.m"];
    v25 = [v24 lastPathComponent];
    v26 = [v22 stringWithFormat:@"%@ (!player.isLocalPlayer)\n[%s (%s:%d)]", v23, "-[GKMatchRequest updateRecipientProperties:forPlayer:withSanitization:]", objc_msgSend(v25, "UTF8String"), 447];

    [*(v12 + 2776) raise:@"GameKit Exception" format:{@"%@", v26}];
  }

  v27 = MEMORY[0x277CBEB38];
  v28 = [(GKMatchRequest *)self internal];
  v29 = [v28 recipientProperties];
  v30 = [v27 dictionaryWithDictionary:v29];

  if (a5)
  {
    v31 = [objc_opt_class() sanitizeProperties:v37];
  }

  else
  {
    v31 = v37;
  }

  v32 = v31;
  if ([v31 count])
  {
    [v30 setObject:v32 forKeyedSubscript:v8];
  }

  else
  {
    [v30 removeObjectForKey:v8];
  }

  v33 = [v30 count];
  if (v33)
  {
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v30];
  }

  else
  {
    v34 = 0;
  }

  v35 = [(GKMatchRequest *)self internal];
  [v35 setRecipientProperties:v34];

  if (v33)
  {
  }
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(GKMatchRequest *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKMatchRequest *)self internal];
  [v8 setValue:v7 forKey:v6];
}

- (void)loadRecipientsWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker: loadRecipientsWithCompletionHandler", buf, 2u);
  }

  v7 = [(GKMatchRequest *)self recipients];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(GKMatchRequest *)self recipients];
    v10 = [v9 _gkNonGuestPlayersFromPlayers];
    v11 = [v10 _gkPlayersIDsFromPlayers];
  }

  else
  {
    v9 = [(GKMatchRequest *)self internal];
    v11 = [v9 recipientPlayerIDs];
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "Load recipients -- invitees:%@", buf, 0xCu);
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchRequest.m", 486, "-[GKMatchRequest loadRecipientsWithCompletionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  if ([v11 count])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke;
    v21[3] = &unk_2785DD898;
    v22 = v11;
    v23 = v15;
    [v23 perform:v21];
  }

  if (v4)
  {
    v16 = dispatch_get_global_queue(0, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke_3;
    v18[3] = &unk_2785DDC10;
    v20 = v4;
    v19 = v15;
    [v19 notifyOnQueue:v16 block:v18];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785DDC38;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [GKPlayer loadPlayersForLegacyIdentifiers:v4 withCompletionHandler:v6];
}

void __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResult:v8];
  [*(a1 + 32) setError:v6];

  if ([v8 count] && !+[GKMatchmaker canPlayMultiplayerGameWithPlayers:](GKMatchmaker, "canPlayMultiplayerGameWithPlayers:", v8))
  {
    [*(a1 + 32) setResult:MEMORY[0x277CBEBF8]];
    v7 = [MEMORY[0x277CCA9B8] userErrorForCode:10 userInfo:0];
    [*(a1 + 32) setError:v7];
  }

  (*(*(a1 + 40) + 16))();
}

void __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (BOOL)isIncorrectlyInvitingPlayers
{
  v3 = [(GKMatchRequest *)self internal];
  v4 = [v3 recipientPlayerIDs];
  if ([v4 count])
  {
  }

  else
  {
    v5 = [(GKMatchRequest *)self recipients];
    v6 = [v5 count];

    if (!v6)
    {
      return 0;
    }
  }

  return [(GKMatchRequest *)self isConfiguredForAutomatchOnly];
}

- (NSString)internalDescription
{
  v2 = [(GKMatchRequest *)self internal];
  v3 = [v2 description];

  return v3;
}

+ (void)maxPlayersAllowedForMatchOfType:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  WORD2(v4) = 2048;
  HIWORD(v4) = v0;
  OUTLINED_FUNCTION_1_7(&dword_227904000, v0, v1, "The maximum players allowed is: %lu for match type: %lu", v3, v4);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)playersToInvite
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136446722;
  v3 = "[GKMatchRequest playersToInvite]";
  v4 = 2114;
  v5 = @"14.0";
  v6 = 2114;
  v7 = @"11.0";
  _os_log_error_impl(&dword_227904000, log, OS_LOG_TYPE_ERROR, "WARNING: %{public}s is obsoleted. Game Center doesn't invoke this obsoleted method from iOS/tvOS %{public}@ and macOS %{public}@ onwards", &v2, 0x20u);
  v1 = *MEMORY[0x277D85DE8];
}

+ (void)sanitizeProperties:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = +[GKMatchRequestInternal secureCodedPropertyKeys];
  v3 = [v2 objectForKeyedSubscript:@"properties"];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "<Warning>: The provided match properties contain unsupported types (supported: %{public}@).", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)expectFutureRecipientPropertiesForPlayers:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "expectFutureRecipientPropertiesForPlayers: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)updateRecipientProperties:forPlayer:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_7(&dword_227904000, v0, v1, "updateRecipientProperties: %@ for player: %@");
  v2 = *MEMORY[0x277D85DE8];
}

@end