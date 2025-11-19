@interface GKInvite
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)instanceMethodSignatureForSelector:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (GKInvite)init;
- (GKInvite)initWithInternalRepresentation:(id)a3;
- (NSString)inviter;
- (id)description;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)valueForUndefinedKey:(id)a3;
- (unint64_t)hash;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation GKInvite

- (GKInvite)init
{
  v3 = +[(GKInternalRepresentation *)GKInviteInternal];
  v4 = [(GKInvite *)self initWithInternalRepresentation:v3];

  return v4;
}

- (GKInvite)initWithInternalRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = GKInvite;
  v5 = [(GKInvite *)&v13 init];
  if (v5)
  {
    if (!v4)
    {
      v4 = +[(GKInternalRepresentation *)GKInviteInternal];
    }

    objc_storeStrong(&v5->_internal, v4);
    v6 = [v4 player];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(GKInvite *)self inviteID];
    v7 = [v5 inviteID];

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
  v2 = [(GKInvite *)self inviteID];
  v3 = [v2 hash];

  return v3;
}

- (NSString)inviter
{
  v2 = [(GKPlayer *)self->_sender internal];
  v3 = [v2 playerID];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(GKInvite *)self inviteID];
  v5 = [(GKInvite *)self sender];
  v6 = [v5 internal];
  v7 = [v6 conciseDescription];
  v8 = [(GKInvite *)self message];
  v9 = [v3 stringWithFormat:@"{\n\t inviteID = %@\n\t inviter = %@\n\t message = %@\n\t hosted = %d\n\t playerGroup = %lu\n\t playerAttributes = %08X\n\t cancelled = %d\n}", v4, v7, v8, -[GKInvite isHosted](self, "isHosted"), -[GKInvite playerGroup](self, "playerGroup"), -[GKInvite playerAttributes](self, "playerAttributes"), self->_cancelled];

  return v9;
}

+ (id)instanceMethodSignatureForSelector:(SEL)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___GKInvite;
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
  v10.super_class = GKInvite;
  v5 = [(GKInvite *)&v10 methodSignatureForSelector:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(GKInvite *)self forwardingTargetForSelector:a3];
    v7 = [v8 methodSignatureForSelector:a3];
  }

  return v7;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v8.receiver = self;
  v8.super_class = GKInvite;
  if ([(GKInvite *)&v8 respondsToSelector:?])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(GKInvite *)self forwardingTargetForSelector:a3];
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

        LOBYTE(v4) = [GKInviteInternal instancesRespondToSelector:a3];
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
  v5 = [(GKInvite *)self internal];
  v6 = [v5 valueForKey:v4];

  return v6;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKInvite *)self internal];
  [v8 setValue:v7 forKey:v6];
}

@end