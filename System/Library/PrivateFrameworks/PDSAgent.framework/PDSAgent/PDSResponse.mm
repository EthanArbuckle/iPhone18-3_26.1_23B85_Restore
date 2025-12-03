@interface PDSResponse
- (PDSResponse)initWithStatus:(int64_t)status statusByUser:(id)user ttl:(int64_t)ttl;
- (id)description;
@end

@implementation PDSResponse

- (PDSResponse)initWithStatus:(int64_t)status statusByUser:(id)user ttl:(int64_t)ttl
{
  userCopy = user;
  if (!userCopy)
  {
    [PDSResponse initWithStatus:a2 statusByUser:self ttl:?];
  }

  v14.receiver = self;
  v14.super_class = PDSResponse;
  v11 = [(PDSResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = status;
    objc_storeStrong(&v11->_statusByUser, user);
    v12->_ttl = ttl;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  status = [(PDSResponse *)self status];
  statusByUser = [(PDSResponse *)self statusByUser];
  v7 = [v3 stringWithFormat:@"<%@: %p status = %d; statusByUser = %@>", v4, self, status, statusByUser];;

  return v7;
}

- (void)initWithStatus:(uint64_t)a1 statusByUser:(uint64_t)a2 ttl:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSResponse.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"statusByUser"}];
}

@end