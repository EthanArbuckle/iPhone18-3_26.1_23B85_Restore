@interface GKMatchRequest
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (NSUInteger)maxPlayersAllowedForMatchOfType:(GKMatchType)matchType;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
+ (id)sanitizeProperties:(id)properties;
- (BOOL)defaultNumberOfPlayersIsValid;
- (BOOL)hasFutureRecipientProperties;
- (BOOL)isEqual:(id)equal;
- (BOOL)isIncorrectlyInvitingPlayers;
- (BOOL)isRecipientCountValid;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKMatchRequest)init;
- (GKMatchRequest)initWithInternalRepresentation:(id)representation;
- (NSArray)playersToInvite;
- (NSArray)recipients;
- (NSDictionary)recipientProperties;
- (NSString)internalDescription;
- (NSString)inviteMessage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)guestPlayers;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)validateNumbersOfPlayersWithMax:(unint64_t)max;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)ensureValidityHosted:(BOOL)hosted;
- (void)expectFutureRecipientPropertiesForPlayers:(id)players;
- (void)loadRecipientsWithCompletionHandler:(id)handler;
- (void)playersToInvite;
- (void)removeLocalPlayerFromPlayersToInvite;
- (void)setInviteMessage:(NSString *)inviteMessage;
- (void)setPlayersToInvite:(NSArray *)playersToInvite;
- (void)setProperties:(id)properties;
- (void)setRecipientProperties:(id)properties;
- (void)setRecipients:(NSArray *)recipients;
- (void)setValue:(id)value forUndefinedKey:(id)key;
- (void)updateRecipientProperties:(id)properties forPlayer:(id)player;
- (void)updateRecipientProperties:(id)properties forPlayer:(id)player withSanitization:(BOOL)sanitization;
@end

@implementation GKMatchRequest

- (GKMatchRequest)init
{
  v3 = +[(GKInternalRepresentation *)GKMatchRequestInternal];
  v4 = +[GKLocalPlayer local];
  internal = [v4 internal];
  playerID = [internal playerID];
  [v3 setLocalPlayerID:playerID];

  v7 = [(GKMatchRequest *)self initWithInternalRepresentation:v3];
  return v7;
}

- (GKMatchRequest)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
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
    if (!representationCopy)
    {
      representationCopy = +[(GKInternalRepresentation *)GKMatchRequestInternal];
    }

    objc_storeStrong(&v7->_internal, representationCopy);
    v8 = dispatch_queue_create("com.apple.GameKit.matchRequest.serialQueue", 0);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v8;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    internal = [(GKMatchRequest *)self internal];
    internal2 = [v5 internal];

    v8 = [internal isEqual:internal2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  internal = [(GKMatchRequest *)self internal];
  v3 = [internal hash];

  return v3;
}

- (id)description
{
  inviteMessage2 = 0x277CCA000;
  v17 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  minPlayers = [(GKMatchRequest *)self minPlayers];
  maxPlayers = [(GKMatchRequest *)self maxPlayers];
  playerGroup = [(GKMatchRequest *)self playerGroup];
  recipients = [(GKMatchRequest *)self recipients];
  v9 = [recipients _gkMapWithBlock:&__block_literal_global_49];
  defaultNumberOfPlayers = [(GKMatchRequest *)self defaultNumberOfPlayers];
  inviteMessage = [(GKMatchRequest *)self inviteMessage];
  if (inviteMessage)
  {
    v12 = MEMORY[0x277CCACA8];
    inviteMessage2 = [(GKMatchRequest *)self inviteMessage];
    v13 = [v12 stringWithFormat:@"'%@'", inviteMessage2];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v17 stringWithFormat:@"<%@ %p - minPlayers:%u maxPlayers:%u playerGroup:%ld recipients:%@ defaultNumberOfPlayers:%u inviteMessage:%@ playerAttributes:0x%08X>", v5, self, minPlayers, maxPlayers, playerGroup, v9, defaultNumberOfPlayers, v13, -[GKMatchRequest playerAttributes](self, "playerAttributes")];
  if (inviteMessage)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  internal = [(GKMatchRequest *)self internal];
  v7 = [internal copyWithZone:zone];
  [v5 setInternal:v7];

  inviteeResponseHandler = [(GKMatchRequest *)self inviteeResponseHandler];
  [v5 setInviteeResponseHandler:inviteeResponseHandler];

  recipientResponseHandler = [(GKMatchRequest *)self recipientResponseHandler];
  [v5 setRecipientResponseHandler:recipientResponseHandler];

  return v5;
}

- (BOOL)defaultNumberOfPlayersIsValid
{
  if (![(GKMatchRequest *)self defaultNumberOfPlayers])
  {
    return 1;
  }

  defaultNumberOfPlayers = [(GKMatchRequest *)self defaultNumberOfPlayers];
  if (defaultNumberOfPlayers < [(GKMatchRequest *)self minPlayers])
  {
    return 0;
  }

  defaultNumberOfPlayers2 = [(GKMatchRequest *)self defaultNumberOfPlayers];
  return defaultNumberOfPlayers2 <= [(GKMatchRequest *)self maxPlayers];
}

- (id)validateNumbersOfPlayersWithMax:(unint64_t)max
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(GKMatchRequest *)self maxPlayers]> max)
  {
    v6 = MEMORY[0x277CCA9B8];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"The maximum number of players must be <= %lu", max];
    v8 = [v6 userErrorForCode:17 description:v7];
    [array addObject:v8];
  }

  maxPlayers = [(GKMatchRequest *)self maxPlayers];
  if (maxPlayers < [(GKMatchRequest *)self minPlayers])
  {
    v10 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The maximum number of players can't be less than the minimum number of players."];
    [array addObject:v10];
  }

  if ([(GKMatchRequest *)self minPlayers]<= 1)
  {
    v11 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The minimum number of players must be >1"];
    [array addObject:v11];
  }

  if (![(GKMatchRequest *)self defaultNumberOfPlayersIsValid])
  {
    v12 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The default number of players is invalid"];
    [array addObject:v12];
  }

  recipients = [(GKMatchRequest *)self recipients];
  v14 = [recipients count];
  maxPlayers2 = [(GKMatchRequest *)self maxPlayers];

  if (v14 >= maxPlayers2)
  {
    v16 = [MEMORY[0x277CCA9B8] userErrorForCode:17 description:@"The number of recipients must be less than the maximum number of players."];
    [array addObject:v16];
  }

  return array;
}

- (void)ensureValidityHosted:(BOOL)hosted
{
  hostedCopy = hosted;
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
  if (hostedCopy)
  {
    maxPlayersHosted = [v7 maxPlayersHosted];
  }

  else
  {
    maxPlayersHosted = [v7 maxPlayersP2P];
  }

  maxPlayers = maxPlayersHosted;
  if ([(GKMatchRequest *)self maxPlayers]<= maxPlayersHosted)
  {
    maxPlayers = [(GKMatchRequest *)self maxPlayers];
  }

  [(GKMatchRequest *)self setMaxPlayers:maxPlayers];
  if ([(GKMatchRequest *)self minPlayers])
  {
    minPlayers = [(GKMatchRequest *)self minPlayers];
  }

  else
  {
    minPlayers = 1;
  }

  [(GKMatchRequest *)self setMinPlayers:minPlayers];
  if ([(GKMatchRequest *)self defaultNumberOfPlayersIsValid])
  {
    defaultNumberOfPlayers = [(GKMatchRequest *)self defaultNumberOfPlayers];
  }

  else
  {
    defaultNumberOfPlayers = [(GKMatchRequest *)self maxPlayers];
  }

  [(GKMatchRequest *)self setDefaultNumberOfPlayers:defaultNumberOfPlayers];
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
  internal = [(GKMatchRequest *)self internal];
  recipientPlayerIDs = [internal recipientPlayerIDs];
  internal2 = [v5 internal];
  playerID = [internal2 playerID];
  v10 = [recipientPlayerIDs containsObject:playerID];

  if (v10)
  {
    v11 = MEMORY[0x277CBEB18];
    internal3 = [(GKMatchRequest *)self internal];
    recipientPlayerIDs2 = [internal3 recipientPlayerIDs];
    v14 = [v11 arrayWithArray:recipientPlayerIDs2];

    [v14 removeObject:v5];
    internal4 = [(GKMatchRequest *)self internal];
    [internal4 setRecipientPlayerIDs:v14];
  }
}

+ (NSUInteger)maxPlayersAllowedForMatchOfType:(GKMatchType)matchType
{
  v4 = +[GKPreferences shared];
  v5 = v4;
  switch(matchType)
  {
    case GKMatchTypeTurnBased:
      maxPlayersTurnBased = [v4 maxPlayersTurnBased];
      goto LABEL_7;
    case GKMatchTypeHosted:
      maxPlayersTurnBased = [v4 maxPlayersHosted];
      goto LABEL_7;
    case GKMatchTypePeerToPeer:
      maxPlayersTurnBased = [v4 maxPlayersP2P];
LABEL_7:
      v7 = maxPlayersTurnBased;
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
  selfCopy = self;
  recipients = [(GKMatchRequest *)self recipients];
  v4 = [recipients count] + 1;
  LOBYTE(selfCopy) = v4 <= [(GKMatchRequest *)selfCopy maxPlayers];

  return selfCopy;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKMatchRequest;
  v4 = objc_msgSendSuper2(&v9, sel_instanceMethodSignatureForSelector_);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [objc_opt_class() instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (id)methodSignatureForSelector:(SEL)selector
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
    v8 = [(GKMatchRequest *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKMatchRequest;
  if ([(GKMatchRequest *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKMatchRequest *)self forwardingTargetForSelector:selector];
    v5 = objc_opt_respondsToSelector();
  }

  return v5 & 1;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  if (selector)
  {
    if (class_respondsToSelector(self, selector))
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = GKApplicationLinkedOnOrAfter(393216, 0);
      if (v4)
      {

        LOBYTE(v4) = [GKMatchRequestInternal instancesRespondToSelector:selector];
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
  recipients = [(GKMatchRequest *)self recipients];
  _gkGuestPlayersFromPlayers = [recipients _gkGuestPlayersFromPlayers];

  return _gkGuestPlayersFromPlayers;
}

- (NSArray)recipients
{
  internal = [(GKMatchRequest *)self internal];
  recipients = [internal recipients];
  _gkPlayersFromInternals = [recipients _gkPlayersFromInternals];

  [_gkPlayersFromInternals _gkValidatePlayersForReturnFromAPI];

  return _gkPlayersFromInternals;
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
      lastPathComponent = [v10 lastPathComponent];
      v12 = [v8 stringWithFormat:@"%@ ([recipients count] == [[NSMutableSet setWithArray:recipients] count])\n[%s (%s:%d)]", v9, "-[GKMatchRequest setRecipients:]", objc_msgSend(lastPathComponent, "UTF8String"), 294];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
    }
  }

  _gkInternalsFromPlayers = [(NSArray *)v4 _gkInternalsFromPlayers];
  internal = [(GKMatchRequest *)self internal];
  [internal setRecipients:_gkInternalsFromPlayers];

  _gkPlayersIDsFromPlayers = [(NSArray *)v4 _gkPlayersIDsFromPlayers];
  internal2 = [(GKMatchRequest *)self internal];
  [internal2 setRecipientPlayerIDs:_gkPlayersIDsFromPlayers];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v20 = @"request";
  v21[0] = self;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  [defaultCenter postNotificationName:@"GKSetMatchRequestRecipientsNotification" object:0 userInfo:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (NSString)inviteMessage
{
  v3 = +[GKPreferences shared];
  shouldAllowCustomCommunication = [v3 shouldAllowCustomCommunication];

  if (shouldAllowCustomCommunication)
  {
    internal = [(GKMatchRequest *)self internal];
    inviteMessage = [internal inviteMessage];
  }

  else
  {
    inviteMessage = 0;
  }

  return inviteMessage;
}

- (void)setInviteMessage:(NSString *)inviteMessage
{
  v7 = inviteMessage;
  v4 = +[GKPreferences shared];
  shouldAllowCustomCommunication = [v4 shouldAllowCustomCommunication];

  if (shouldAllowCustomCommunication)
  {
    internal = [(GKMatchRequest *)self internal];
    [internal setInviteMessage:v7];
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
    recipientPlayerIDs = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  }

  else
  {
    internal = [(GKMatchRequest *)self internal];
    recipientPlayerIDs = [internal recipientPlayerIDs];
  }

  v7 = *MEMORY[0x277D85DE8];

  return recipientPlayerIDs;
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
      lastPathComponent = [v9 lastPathComponent];
      v11 = [v7 stringWithFormat:@"%@ ([playersToInvite count] == [[NSMutableSet setWithArray:playersToInvite] count])\n[%s (%s:%d)]", v8, "-[GKMatchRequest setPlayersToInvite:]", objc_msgSend(lastPathComponent, "UTF8String"), 340];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
    }
  }

  internal = [(GKMatchRequest *)self internal];
  [internal setRecipientPlayerIDs:v13];
}

+ (id)sanitizeProperties:(id)properties
{
  propertiesCopy = properties;
  if (!propertiesCopy)
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (([MEMORY[0x277CCAAA0] isValidJSONObject:propertiesCopy] & 1) == 0)
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

  v4 = [propertiesCopy objectForKeyedSubscript:@"gc"];

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

    v7 = [propertiesCopy mutableCopy];
    [v7 removeObjectForKey:@"gc"];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
  }

  else
  {
    v8 = propertiesCopy;
  }

LABEL_14:

  return v8;
}

- (void)setProperties:(id)properties
{
  propertiesCopy = properties;
  v6 = [objc_opt_class() sanitizeProperties:propertiesCopy];

  internal = [(GKMatchRequest *)self internal];
  [internal setProperties:v6];
}

- (NSDictionary)recipientProperties
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__15;
  v11 = __Block_byref_object_dispose__15;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  serialQueue = [(GKMatchRequest *)self serialQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __37__GKMatchRequest_recipientProperties__block_invoke;
  v6[3] = &unk_2785E1220;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(serialQueue, v6);

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

- (void)setRecipientProperties:(id)properties
{
  v31 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v30 = propertiesCopy;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "setRecipientProperties: %@", buf, 0xCu);
  }

  if (propertiesCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = propertiesCopy;
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
            internal = [v13 internal];
            [dictionary setObject:v16 forKey:internal];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }
  }

  else
  {
    dictionary = 0;
  }

  serialQueue = [(GKMatchRequest *)self serialQueue];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__GKMatchRequest_setRecipientProperties___block_invoke;
  v22[3] = &unk_2785DEBA8;
  v22[4] = self;
  v23 = dictionary;
  v19 = dictionary;
  dispatch_sync(serialQueue, v22);

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
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = [(GKMatchRequest *)self serialQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__GKMatchRequest_hasFutureRecipientProperties__block_invoke;
  v5[3] = &unk_2785E1220;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
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

- (void)expectFutureRecipientPropertiesForPlayers:(id)players
{
  playersCopy = players;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [GKMatchRequest expectFutureRecipientPropertiesForPlayers:];
  }

  serialQueue = [(GKMatchRequest *)self serialQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__GKMatchRequest_expectFutureRecipientPropertiesForPlayers___block_invoke;
  v8[3] = &unk_2785DEBA8;
  v9 = playersCopy;
  selfCopy = self;
  v7 = playersCopy;
  dispatch_sync(serialQueue, v8);
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

- (void)updateRecipientProperties:(id)properties forPlayer:(id)player
{
  propertiesCopy = properties;
  playerCopy = player;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [GKMatchRequest updateRecipientProperties:forPlayer:];
  }

  serialQueue = [(GKMatchRequest *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__GKMatchRequest_updateRecipientProperties_forPlayer___block_invoke;
  block[3] = &unk_2785DDB40;
  block[4] = self;
  v13 = propertiesCopy;
  v14 = playerCopy;
  v10 = playerCopy;
  v11 = propertiesCopy;
  dispatch_sync(serialQueue, block);
}

- (void)updateRecipientProperties:(id)properties forPlayer:(id)player withSanitization:(BOOL)sanitization
{
  propertiesCopy = properties;
  playerCopy = player;
  v9 = dispatch_get_current_queue();
  serialQueue = [(GKMatchRequest *)self serialQueue];

  v11 = 0x277CCA000;
  v12 = 0x277CBE000;
  if (v9 != serialQueue)
  {
    v13 = MEMORY[0x277CCACA8];
    sanitizationCopy = sanitization;
    label = dispatch_queue_get_label(v9);
    serialQueue2 = [(GKMatchRequest *)self serialQueue];
    v16 = dispatch_queue_get_label(serialQueue2);
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v18 = [v13 stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "-[GKMatchRequest updateRecipientProperties:forPlayer:withSanitization:]", label, v16, callStackSymbols];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchRequest.m"];
    lastPathComponent = [v19 lastPathComponent];
    v21 = [v13 stringWithFormat:@"%@ (_actualCurrentQueue == self.serialQueue)\n[%s (%s:%d)]", v18, "-[GKMatchRequest updateRecipientProperties:forPlayer:withSanitization:]", objc_msgSend(lastPathComponent, "UTF8String"), 446];

    sanitization = sanitizationCopy;
    v12 = 0x277CBE000uLL;

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v21}];
    v11 = 0x277CCA000uLL;
  }

  if ([playerCopy isLocalPlayer])
  {
    v22 = *(v11 + 3240);
    v23 = [v22 stringWithFormat:@"GKLocalPlayer can't have recipient properties"];
    v24 = [*(v11 + 3240) stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchRequest.m"];
    lastPathComponent2 = [v24 lastPathComponent];
    v26 = [v22 stringWithFormat:@"%@ (!player.isLocalPlayer)\n[%s (%s:%d)]", v23, "-[GKMatchRequest updateRecipientProperties:forPlayer:withSanitization:]", objc_msgSend(lastPathComponent2, "UTF8String"), 447];

    [*(v12 + 2776) raise:@"GameKit Exception" format:{@"%@", v26}];
  }

  v27 = MEMORY[0x277CBEB38];
  internal = [(GKMatchRequest *)self internal];
  recipientProperties = [internal recipientProperties];
  v30 = [v27 dictionaryWithDictionary:recipientProperties];

  if (sanitization)
  {
    v31 = [objc_opt_class() sanitizeProperties:propertiesCopy];
  }

  else
  {
    v31 = propertiesCopy;
  }

  v32 = v31;
  if ([v31 count])
  {
    [v30 setObject:v32 forKeyedSubscript:playerCopy];
  }

  else
  {
    [v30 removeObjectForKey:playerCopy];
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

  internal2 = [(GKMatchRequest *)self internal];
  [internal2 setRecipientProperties:v34];

  if (v33)
  {
  }
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  internal = [(GKMatchRequest *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKMatchRequest *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (void)loadRecipientsWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
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

  recipients = [(GKMatchRequest *)self recipients];
  v8 = [recipients count];

  if (v8)
  {
    recipients2 = [(GKMatchRequest *)self recipients];
    _gkNonGuestPlayersFromPlayers = [recipients2 _gkNonGuestPlayersFromPlayers];
    _gkPlayersIDsFromPlayers = [_gkNonGuestPlayersFromPlayers _gkPlayersIDsFromPlayers];
  }

  else
  {
    recipients2 = [(GKMatchRequest *)self internal];
    _gkPlayersIDsFromPlayers = [recipients2 recipientPlayerIDs];
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  v13 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = _gkPlayersIDsFromPlayers;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "Load recipients -- invitees:%@", buf, 0xCu);
  }

  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchRequest.m", 486, "-[GKMatchRequest loadRecipientsWithCompletionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  if ([_gkPlayersIDsFromPlayers count])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke;
    v21[3] = &unk_2785DD898;
    v22 = _gkPlayersIDsFromPlayers;
    v23 = v15;
    [v23 perform:v21];
  }

  if (handlerCopy)
  {
    v16 = dispatch_get_global_queue(0, 0);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__GKMatchRequest_loadRecipientsWithCompletionHandler___block_invoke_3;
    v18[3] = &unk_2785DDC10;
    v20 = handlerCopy;
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
  internal = [(GKMatchRequest *)self internal];
  recipientPlayerIDs = [internal recipientPlayerIDs];
  if ([recipientPlayerIDs count])
  {
  }

  else
  {
    recipients = [(GKMatchRequest *)self recipients];
    v6 = [recipients count];

    if (!v6)
    {
      return 0;
    }
  }

  return [(GKMatchRequest *)self isConfiguredForAutomatchOnly];
}

- (NSString)internalDescription
{
  internal = [(GKMatchRequest *)self internal];
  v3 = [internal description];

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