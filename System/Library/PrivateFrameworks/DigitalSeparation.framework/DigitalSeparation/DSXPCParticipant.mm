@interface DSXPCParticipant
+ (id)participants:(id)participants;
- (BOOL)isEqual:(id)equal;
- (DSXPCParticipant)initWithCoder:(id)coder;
- (DSXPCParticipant)initWithIdentity:(id)identity role:(int64_t)role permission:(int64_t)permission;
- (DSXPCParticipant)initWithParticipant:(id)participant;
- (int64_t)permission;
- (int64_t)role;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSXPCParticipant

+ (id)participants:(id)participants
{
  v21 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = participantsCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [DSXPCParticipant alloc];
        v12 = [(DSXPCParticipant *)v11 initWithParticipant:v10, v16];
        [array addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [array copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (DSXPCParticipant)initWithParticipant:(id)participant
{
  participantCopy = participant;
  v12.receiver = self;
  v12.super_class = DSXPCParticipant;
  v5 = [(DSXPCParticipant *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(participantCopy, "role")}];
    [(DSXPCParticipant *)v5 setParticipationRole:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(participantCopy, "permission")}];
    [(DSXPCParticipant *)v5 setParticipationPermission:v7];

    v8 = [DSIdentity alloc];
    identity = [participantCopy identity];
    v10 = [(DSIdentity *)v8 initWithIdentity:identity];
    [(DSXPCParticipant *)v5 setParticipantIdentity:v10];
  }

  return v5;
}

- (DSXPCParticipant)initWithIdentity:(id)identity role:(int64_t)role permission:(int64_t)permission
{
  identityCopy = identity;
  v13.receiver = self;
  v13.super_class = DSXPCParticipant;
  v9 = [(DSXPCParticipant *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:role];
    [(DSXPCParticipant *)v9 setParticipationRole:v10];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:permission];
    [(DSXPCParticipant *)v9 setParticipationPermission:v11];

    [(DSXPCParticipant *)v9 setParticipantIdentity:identityCopy];
  }

  return v9;
}

- (int64_t)role
{
  participationRole = [(DSXPCParticipant *)self participationRole];
  intValue = [participationRole intValue];

  return intValue;
}

- (int64_t)permission
{
  participationPermission = [(DSXPCParticipant *)self participationPermission];
  intValue = [participationPermission intValue];

  return intValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      role = [(DSXPCParticipant *)self role];
      if (role == [(DSXPCParticipant *)v5 role]&& (v7 = [(DSXPCParticipant *)self permission], v7 == [(DSXPCParticipant *)v5 permission]))
      {
        identity = [(DSXPCParticipant *)self identity];
        identity2 = [(DSXPCParticipant *)v5 identity];
        v10 = [identity isEqual:identity2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (DSXPCParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DSXPCParticipant;
  v5 = [(DSXPCParticipant *)&v9 init];
  if (v5)
  {
    v5->_participationRole = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"participationRole"];
    v5->_participationPermission = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"participationPermission"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"participantIdentity"];
    participantIdentity = v5->_participantIdentity;
    v5->_participantIdentity = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  participationRole = self->_participationRole;
  coderCopy = coder;
  [coderCopy encodeObject:participationRole forKey:@"participationRole"];
  [coderCopy encodeObject:self->_participationPermission forKey:@"participationPermission"];
  [coderCopy encodeObject:self->_participantIdentity forKey:@"participantIdentity"];
}

@end