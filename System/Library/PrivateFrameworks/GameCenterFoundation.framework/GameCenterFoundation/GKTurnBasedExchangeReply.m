@interface GKTurnBasedExchangeReply
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKTurnBasedExchangeReply)initWithInternalRepresentation:(id)a3 daemonProxy:(id)a4;
- (NSString)message;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKTurnBasedExchangeReply

- (GKTurnBasedExchangeReply)initWithInternalRepresentation:(id)a3 daemonProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[(GKInternalRepresentation *)GKTurnBasedExchangeReplyInternal];
  }

  v11.receiver = self;
  v11.super_class = GKTurnBasedExchangeReply;
  v8 = [(GKTurnBasedExchangeReply *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_internal, v6);
    objc_storeStrong(&v9->_daemonProxy, a4);
  }

  return v9;
}

- (NSString)message
{
  daemonProxy = self->_daemonProxy;
  v4 = [(GKTurnBasedExchangeReplyInternal *)self->_internal localizableMessage];
  v5 = [(GKTurnBasedExchangeReply *)self match];
  v6 = [v5 bundleID];
  v7 = [(GKDaemonProxy *)daemonProxy localizedMessageFromDictionary:v4 forBundleID:v6];

  return v7;
}

- (unint64_t)hash
{
  v2 = [(GKTurnBasedExchangeReply *)self internal];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(GKTurnBasedExchangeReply *)self internal];
    v6 = [v4 internal];
    v7 = [v5 isEqual:v6];
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
  v6 = [(GKTurnBasedExchangeReply *)self recipient];
  v7 = [v6 internal];
  v8 = [v7 playerID];
  v9 = v8;
  if (!v8)
  {
    v9 = [(GKTurnBasedExchangeReply *)self recipient];
  }

  v10 = [(GKTurnBasedExchangeReply *)self message];
  v11 = [(GKTurnBasedExchangeReply *)self data];
  v12 = [v3 stringWithFormat:@"<%@ %p - recipient:%@ message:%@ data.length:%ld>", v5, self, v9, v10, objc_msgSend(v11, "length")];

  if (!v8)
  {
  }

  return v12;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKTurnBasedExchangeReply;
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
  v10.super_class = GKTurnBasedExchangeReply;
  v5 = [(GKTurnBasedExchangeReply *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKTurnBasedExchangeReply *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKTurnBasedExchangeReply;
  if ([(GKTurnBasedExchangeReply *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKTurnBasedExchangeReply *)self forwardingTargetForSelector:a3];
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
      v4 = GKApplicationLinkedOnOrAfter(393216, 657920);
      if (v4)
      {

        LOBYTE(v4) = [GKTurnBasedExchangeReplyInternal instancesRespondToSelector:a3];
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4 = a3;
  v5 = [(GKTurnBasedExchangeReply *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKTurnBasedExchangeReply *)self internal];
  [v8 setValue:v7 forKey:v6];
}

@end