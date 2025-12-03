@interface GKTurnBasedExchange
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKTurnBasedExchange)initWithInternalRepresentation:(id)representation daemonProxy:(id)proxy;
- (GKTurnBasedExchangeStatus)status;
- (NSString)message;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)_updateInternalFromMatchInternal:(id)internal;
- (void)cancelWithLocalizableMessageKey:(NSString *)key arguments:(NSArray *)arguments completionHandler:(void *)completionHandler;
- (void)replyWithLocalizableMessageKey:(NSString *)key arguments:(NSArray *)arguments data:(NSData *)data completionHandler:(void *)completionHandler;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKTurnBasedExchange

- (GKTurnBasedExchange)initWithInternalRepresentation:(id)representation daemonProxy:(id)proxy
{
  representationCopy = representation;
  proxyCopy = proxy;
  if (!representationCopy)
  {
    representationCopy = +[(GKInternalRepresentation *)GKTurnBasedExchangeInternal];
  }

  v11.receiver = self;
  v11.super_class = GKTurnBasedExchange;
  v8 = [(GKTurnBasedExchange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, representationCopy);
    objc_storeStrong(&v9->_daemonProxy, proxy);
  }

  return v9;
}

- (NSString)message
{
  daemonProxy = self->_daemonProxy;
  localizableMessage = [(GKTurnBasedExchangeInternal *)self->_internal localizableMessage];
  match = [(GKTurnBasedExchange *)self match];
  bundleID = [match bundleID];
  v7 = [(GKDaemonProxy *)daemonProxy localizedMessageFromDictionary:localizableMessage forBundleID:bundleID];

  return v7;
}

- (GKTurnBasedExchangeStatus)status
{
  internal = [(GKTurnBasedExchange *)self internal];
  statusString = [internal statusString];

  if (statusString)
  {
    if ([statusString isEqualToString:@"A"])
    {
      v4 = GKTurnBasedExchangeStatusActive;
    }

    else if ([statusString isEqualToString:@"C"] & 1) != 0 || (objc_msgSend(statusString, "isEqualToString:", @"T"))
    {
      v4 = GKTurnBasedExchangeStatusComplete;
    }

    else if ([statusString isEqualToString:@"X"])
    {
      v4 = GKTurnBasedExchangeStatusCanceled;
    }

    else
    {
      v4 = GKTurnBasedExchangeStatusUnknown;
    }
  }

  else
  {
    v4 = GKTurnBasedExchangeStatusUnknown;
  }

  return v4;
}

- (unint64_t)hash
{
  internal = [(GKTurnBasedExchange *)self internal];
  v3 = [internal hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internal = [(GKTurnBasedExchange *)self internal];
    internal2 = [equalCopy internal];
    v7 = [internal isEqual:internal2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v46 = *MEMORY[0x277D85DE8];
  if (description_onceToken_622 != -1)
  {
    [GKTurnBasedExchange description];
  }

  v3 = description_statusEnumLookupDict;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[GKTurnBasedExchange status](self, "status")}];
  v5 = [v3 objectForKey:v4];

  v6 = @"INVALID";
  if (v5)
  {
    v6 = v5;
  }

  v35 = v6;
  array = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  recipients = [(GKTurnBasedExchange *)self recipients];
  v9 = [recipients countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(recipients);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = MEMORY[0x277CCACA8];
        internal = [v13 internal];
        playerID = [internal playerID];
        v17 = playerID;
        if (playerID)
        {
          v18 = playerID;
        }

        else
        {
          v18 = v13;
        }

        v19 = [v14 stringWithFormat:@"%@", v18];
        [array addObject:v19];
      }

      v10 = [recipients countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v10);
  }

  v33 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v40 = NSStringFromClass(v20);
  exchangeID = [(GKTurnBasedExchange *)selfCopy exchangeID];
  sendDate = [(GKTurnBasedExchange *)selfCopy sendDate];
  timeoutDate = [(GKTurnBasedExchange *)selfCopy timeoutDate];
  completionDate = [(GKTurnBasedExchange *)selfCopy completionDate];
  sender = [(GKTurnBasedExchange *)selfCopy sender];
  internal2 = [sender internal];
  player = [internal2 player];
  playerID2 = [player playerID];
  sender2 = playerID2;
  if (!playerID2)
  {
    sender2 = [(GKTurnBasedExchange *)selfCopy sender];
  }

  message = [(GKTurnBasedExchange *)selfCopy message];
  data = [(GKTurnBasedExchange *)selfCopy data];
  v27 = [data length];
  replies = [(GKTurnBasedExchange *)selfCopy replies];
  v29 = [v33 stringWithFormat:@"<%@ %p - exchangeID:%@ status:%@ sendDate:%@ timeoutDate:%@ completionDate:%@ sender:%@ recipients:%@ message:%@ data.length:%ld replies:%@>", v40, selfCopy, exchangeID, v35, sendDate, timeoutDate, completionDate, sender2, array, message, v27, replies];

  if (!playerID2)
  {
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __34__GKTurnBasedExchange_description__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_283B33298;
  v3[1] = &unk_283B332B0;
  v4[0] = @"Unknown";
  v4[1] = @"Active";
  v3[2] = &unk_283B332C8;
  v3[3] = &unk_283B332E0;
  v4[2] = @"Complete";
  v4[3] = @"X-Canceled";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = description_statusEnumLookupDict;
  description_statusEnumLookupDict = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKTurnBasedExchange;
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
  v10.super_class = GKTurnBasedExchange;
  v5 = [(GKTurnBasedExchange *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKTurnBasedExchange *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedExchange;
  if ([(GKTurnBasedExchange *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKTurnBasedExchange *)self forwardingTargetForSelector:selector];
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
      v4 = GKApplicationLinkedOnOrAfter(393216, 657920);
      if (v4)
      {

        LOBYTE(v4) = [GKTurnBasedExchangeInternal instancesRespondToSelector:selector];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)key
{
  keyCopy = key;
  internal = [(GKTurnBasedExchange *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKTurnBasedExchange *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

- (void)_updateInternalFromMatchInternal:(id)internal
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  exchanges = [internal exchanges];
  v5 = [exchanges countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(exchanges);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        exchangeID = [(GKTurnBasedExchange *)self exchangeID];
        exchangeID2 = [v9 exchangeID];
        v12 = [exchangeID isEqualToString:exchangeID2];

        if (v12)
        {
          [(GKTurnBasedExchange *)self setInternal:v9];
          goto LABEL_11;
        }
      }

      v6 = [exchanges countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cancelWithLocalizableMessageKey:(NSString *)key arguments:(NSArray *)arguments completionHandler:(void *)completionHandler
{
  v8 = key;
  v9 = arguments;
  v10 = completionHandler;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 2121, "-[GKTurnBasedExchange cancelWithLocalizableMessageKey:arguments:completionHandler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  v13 = +[GKPreferences shared];
  multiplayerAllowedPlayerType = [v13 multiplayerAllowedPlayerType];

  if (multiplayerAllowedPlayerType)
  {
    if (!v8)
    {
      v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil or invalid localizable message key" userInfo:0];
      objc_exception_throw(v20);
    }

    if (!v9)
    {
      v9 = MEMORY[0x277CBEBF8];
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v16 = [mainBundle _gkLocalizedStringForKey:v8 defaultValue:v8 arguments:v9];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __83__GKTurnBasedExchange_cancelWithLocalizableMessageKey_arguments_completionHandler___block_invoke;
    v24[3] = &unk_2785DF868;
    v25 = v8;
    v9 = v9;
    v26 = v9;
    v27 = v16;
    selfCopy = self;
    v29 = v12;
    v17 = v16;
    [v29 perform:v24];
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    [v12 setError:mainBundle];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__GKTurnBasedExchange_cancelWithLocalizableMessageKey_arguments_completionHandler___block_invoke_3;
  v21[3] = &unk_2785DE478;
  v22 = v12;
  v23 = v10;
  v21[4] = self;
  v18 = v12;
  v19 = v10;
  [v18 notifyOnMainQueueWithBlock:v21];
}

void __83__GKTurnBasedExchange_cancelWithLocalizableMessageKey_arguments_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKTurnBasedMatch _localizableMessageWithKey:*(a1 + 32) arguments:*(a1 + 40) defaultMessage:*(a1 + 48)];
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 turnBasedService];
  v7 = [*(a1 + 56) exchangeID];
  v8 = [*(a1 + 56) match];
  v9 = [v8 internal];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__GKTurnBasedExchange_cancelWithLocalizableMessageKey_arguments_completionHandler___block_invoke_2;
  v12[3] = &unk_2785E01C8;
  v10 = *(a1 + 64);
  v12[4] = *(a1 + 56);
  v13 = v10;
  v14 = v3;
  v11 = v3;
  [v6 cancelExchange:v7 withMessage:v4 match:v9 handler:v12];
}

void __83__GKTurnBasedExchange_cancelWithLocalizableMessageKey_arguments_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    [v5 _updateInternalFromMatchInternal:v6];
    v7 = [*(a1 + 32) match];
    [v7 setInternal:v6];
  }

  [*(a1 + 40) setError:v8];
  (*(*(a1 + 48) + 16))();
}

void __83__GKTurnBasedExchange_cancelWithLocalizableMessageKey_arguments_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) match];
  v4 = [v3 matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v4];

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 40) error];
    (*(v5 + 16))(v5, v6);
  }
}

- (void)replyWithLocalizableMessageKey:(NSString *)key arguments:(NSArray *)arguments data:(NSData *)data completionHandler:(void *)completionHandler
{
  v10 = key;
  v11 = arguments;
  v12 = data;
  v13 = completionHandler;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKTurnBasedMatch.m", 2154, "-[GKTurnBasedExchange replyWithLocalizableMessageKey:arguments:data:completionHandler:]"];
  v15 = [GKDispatchGroup dispatchGroupWithName:v14];

  v16 = +[GKPreferences shared];
  multiplayerAllowedPlayerType = [v16 multiplayerAllowedPlayerType];

  if (multiplayerAllowedPlayerType)
  {
    if (!v10)
    {
      v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"nil or invalid localizable message key" userInfo:0];
      objc_exception_throw(v23);
    }

    if (!v11)
    {
      v11 = MEMORY[0x277CBEBF8];
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v19 = [mainBundle _gkLocalizedStringForKey:v10 defaultValue:v10 arguments:v11];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__GKTurnBasedExchange_replyWithLocalizableMessageKey_arguments_data_completionHandler___block_invoke;
    v27[3] = &unk_2785DDA00;
    v28 = v10;
    v11 = v11;
    v29 = v11;
    v30 = v19;
    selfCopy = self;
    v32 = v12;
    v33 = v15;
    v20 = v19;
    [v33 perform:v27];
  }

  else
  {
    mainBundle = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    [v15 setError:mainBundle];
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __87__GKTurnBasedExchange_replyWithLocalizableMessageKey_arguments_data_completionHandler___block_invoke_3;
  v24[3] = &unk_2785DE478;
  v25 = v15;
  v26 = v13;
  v24[4] = self;
  v21 = v15;
  v22 = v13;
  [v21 notifyOnMainQueueWithBlock:v24];
}

void __87__GKTurnBasedExchange_replyWithLocalizableMessageKey_arguments_data_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [GKTurnBasedMatch _localizableMessageWithKey:*(a1 + 32) arguments:*(a1 + 40) defaultMessage:*(a1 + 48)];
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 turnBasedService];
  v7 = [*(a1 + 56) exchangeID];
  v8 = *(a1 + 64);
  v9 = [*(a1 + 56) match];
  v10 = [v9 internal];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__GKTurnBasedExchange_replyWithLocalizableMessageKey_arguments_data_completionHandler___block_invoke_2;
  v12[3] = &unk_2785E01C8;
  v12[4] = *(a1 + 56);
  v13 = *(a1 + 72);
  v14 = v3;
  v11 = v3;
  [v6 replyToExchange:v7 withMessage:v4 data:v8 match:v10 handler:v12];
}

void __87__GKTurnBasedExchange_replyWithLocalizableMessageKey_arguments_data_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = a2;
    [v5 _updateInternalFromMatchInternal:v6];
    v7 = [*(a1 + 32) match];
    [v7 setInternal:v6];
  }

  [*(a1 + 40) setError:v8];
  (*(*(a1 + 48) + 16))();
}

void __87__GKTurnBasedExchange_replyWithLocalizableMessageKey_arguments_data_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9A0] defaultCenter];
  v3 = [*(a1 + 32) match];
  v4 = [v3 matchID];
  [v2 postNotificationName:@"GKInternalTurnBasedGameEvent" object:v4];

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = [*(a1 + 40) error];
    (*(v5 + 16))(v5, v6);
  }
}

@end