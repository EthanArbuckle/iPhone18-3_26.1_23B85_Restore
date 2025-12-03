@interface GKTurnBasedExchangeReply
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKTurnBasedExchangeReply)initWithInternalRepresentation:(id)representation daemonProxy:(id)proxy;
- (NSString)message;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKTurnBasedExchangeReply

- (GKTurnBasedExchangeReply)initWithInternalRepresentation:(id)representation daemonProxy:(id)proxy
{
  representationCopy = representation;
  proxyCopy = proxy;
  if (!representationCopy)
  {
    representationCopy = +[(GKInternalRepresentation *)GKTurnBasedExchangeReplyInternal];
  }

  v11.receiver = self;
  v11.super_class = GKTurnBasedExchangeReply;
  v8 = [(GKTurnBasedExchangeReply *)&v11 init];
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
  localizableMessage = [(GKTurnBasedExchangeReplyInternal *)self->_internal localizableMessage];
  match = [(GKTurnBasedExchangeReply *)self match];
  bundleID = [match bundleID];
  v7 = [(GKDaemonProxy *)daemonProxy localizedMessageFromDictionary:localizableMessage forBundleID:bundleID];

  return v7;
}

- (unint64_t)hash
{
  internal = [(GKTurnBasedExchangeReply *)self internal];
  v3 = [internal hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    internal = [(GKTurnBasedExchangeReply *)self internal];
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
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  recipient = [(GKTurnBasedExchangeReply *)self recipient];
  internal = [recipient internal];
  playerID = [internal playerID];
  recipient2 = playerID;
  if (!playerID)
  {
    recipient2 = [(GKTurnBasedExchangeReply *)self recipient];
  }

  message = [(GKTurnBasedExchangeReply *)self message];
  data = [(GKTurnBasedExchangeReply *)self data];
  v12 = [v3 stringWithFormat:@"<%@ %p - recipient:%@ message:%@ data.length:%ld>", v5, self, recipient2, message, objc_msgSend(data, "length")];

  if (!playerID)
  {
  }

  return v12;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKTurnBasedExchangeReply;
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
  v10.super_class = GKTurnBasedExchangeReply;
  v5 = [(GKTurnBasedExchangeReply *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKTurnBasedExchangeReply *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedExchangeReply;
  if ([(GKTurnBasedExchangeReply *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKTurnBasedExchangeReply *)self forwardingTargetForSelector:selector];
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

        LOBYTE(v4) = [GKTurnBasedExchangeReplyInternal instancesRespondToSelector:selector];
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
  internal = [(GKTurnBasedExchangeReply *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKTurnBasedExchangeReply *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

@end