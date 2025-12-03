@interface GKInvite
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)instanceMethodSignatureForSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (BOOL)respondsToSelector:(SEL)selector;
- (GKInvite)init;
- (GKInvite)initWithInternalRepresentation:(id)representation;
- (NSString)inviter;
- (id)description;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)valueForUndefinedKey:(id)key;
- (unint64_t)hash;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation GKInvite

- (GKInvite)init
{
  v3 = +[(GKInternalRepresentation *)GKInviteInternal];
  v4 = [(GKInvite *)self initWithInternalRepresentation:v3];

  return v4;
}

- (GKInvite)initWithInternalRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = GKInvite;
  v5 = [(GKInvite *)&v13 init];
  if (v5)
  {
    if (!representationCopy)
    {
      representationCopy = +[(GKInternalRepresentation *)GKInviteInternal];
    }

    objc_storeStrong(&v5->_internal, representationCopy);
    player = [representationCopy player];
    v7 = player;
    if (player)
    {
      v8 = player;
    }

    else
    {
      v8 = objc_alloc_init(GKUnknownPlayerInternal);
    }

    v9 = v8;

    v10 = [GKPlayer canonicalizedPlayerForInternal:v9];
    sender = v5->_sender;
    v5->_sender = v10;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    inviteID = [(GKInvite *)self inviteID];
    inviteID2 = [v5 inviteID];

    v8 = [inviteID isEqual:inviteID2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  inviteID = [(GKInvite *)self inviteID];
  v3 = [inviteID hash];

  return v3;
}

- (NSString)inviter
{
  internal = [(GKPlayer *)self->_sender internal];
  playerID = [internal playerID];

  return playerID;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  inviteID = [(GKInvite *)self inviteID];
  sender = [(GKInvite *)self sender];
  internal = [sender internal];
  conciseDescription = [internal conciseDescription];
  message = [(GKInvite *)self message];
  v9 = [v3 stringWithFormat:@"{\n\t inviteID = %@\n\t inviter = %@\n\t message = %@\n\t hosted = %d\n\t playerGroup = %lu\n\t playerAttributes = %08X\n\t cancelled = %d\n}", inviteID, conciseDescription, message, -[GKInvite isHosted](self, "isHosted"), -[GKInvite playerGroup](self, "playerGroup"), -[GKInvite playerAttributes](self, "playerAttributes"), self->_cancelled];

  return v9;
}

+ (id)instanceMethodSignatureForSelector:(SEL)selector
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___GKInvite;
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
  v10.super_class = GKInvite;
  v5 = [(GKInvite *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKInvite *)self forwardingTargetForSelector:selector];
    v7 = [v8 methodSignatureForSelector:selector];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v8.receiver = self;
  v8.super_class = GKInvite;
  if ([(GKInvite *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKInvite *)self forwardingTargetForSelector:selector];
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

        LOBYTE(v4) = [GKInviteInternal instancesRespondToSelector:selector];
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
  internal = [(GKInvite *)self internal];
  v6 = [internal valueForKey:keyCopy];

  return v6;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  internal = [(GKInvite *)self internal];
  [internal setValue:valueCopy forKey:keyCopy];
}

@end