@interface DSXPCParticipant
+ (id)participants:(id)a3;
- (BOOL)isEqual:(id)a3;
- (DSXPCParticipant)initWithCoder:(id)a3;
- (DSXPCParticipant)initWithIdentity:(id)a3 role:(int64_t)a4 permission:(int64_t)a5;
- (DSXPCParticipant)initWithParticipant:(id)a3;
- (int64_t)permission;
- (int64_t)role;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSXPCParticipant

+ (id)participants:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
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
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (DSXPCParticipant)initWithParticipant:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = DSXPCParticipant;
  v5 = [(DSXPCParticipant *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "role")}];
    [(DSXPCParticipant *)v5 setParticipationRole:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "permission")}];
    [(DSXPCParticipant *)v5 setParticipationPermission:v7];

    v8 = [DSIdentity alloc];
    v9 = [v4 identity];
    v10 = [(DSIdentity *)v8 initWithIdentity:v9];
    [(DSXPCParticipant *)v5 setParticipantIdentity:v10];
  }

  return v5;
}

- (DSXPCParticipant)initWithIdentity:(id)a3 role:(int64_t)a4 permission:(int64_t)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = DSXPCParticipant;
  v9 = [(DSXPCParticipant *)&v13 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(DSXPCParticipant *)v9 setParticipationRole:v10];

    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [(DSXPCParticipant *)v9 setParticipationPermission:v11];

    [(DSXPCParticipant *)v9 setParticipantIdentity:v8];
  }

  return v9;
}

- (int64_t)role
{
  v2 = [(DSXPCParticipant *)self participationRole];
  v3 = [v2 intValue];

  return v3;
}

- (int64_t)permission
{
  v2 = [(DSXPCParticipant *)self participationPermission];
  v3 = [v2 intValue];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DSXPCParticipant *)self role];
      if (v6 == [(DSXPCParticipant *)v5 role]&& (v7 = [(DSXPCParticipant *)self permission], v7 == [(DSXPCParticipant *)v5 permission]))
      {
        v8 = [(DSXPCParticipant *)self identity];
        v9 = [(DSXPCParticipant *)v5 identity];
        v10 = [v8 isEqual:v9];
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

- (DSXPCParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSXPCParticipant;
  v5 = [(DSXPCParticipant *)&v9 init];
  if (v5)
  {
    v5->_participationRole = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"participationRole"];
    v5->_participationPermission = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"participationPermission"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"participantIdentity"];
    participantIdentity = v5->_participantIdentity;
    v5->_participantIdentity = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  participationRole = self->_participationRole;
  v5 = a3;
  [v5 encodeObject:participationRole forKey:@"participationRole"];
  [v5 encodeObject:self->_participationPermission forKey:@"participationPermission"];
  [v5 encodeObject:self->_participantIdentity forKey:@"participantIdentity"];
}

@end