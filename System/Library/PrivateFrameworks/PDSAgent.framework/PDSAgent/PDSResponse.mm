@interface PDSResponse
- (PDSResponse)initWithStatus:(int64_t)a3 statusByUser:(id)a4 ttl:(int64_t)a5;
- (id)description;
@end

@implementation PDSResponse

- (PDSResponse)initWithStatus:(int64_t)a3 statusByUser:(id)a4 ttl:(int64_t)a5
{
  v10 = a4;
  if (!v10)
  {
    [PDSResponse initWithStatus:a2 statusByUser:self ttl:?];
  }

  v14.receiver = self;
  v14.super_class = PDSResponse;
  v11 = [(PDSResponse *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_status = a3;
    objc_storeStrong(&v11->_statusByUser, a4);
    v12->_ttl = a5;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(PDSResponse *)self status];
  v6 = [(PDSResponse *)self statusByUser];
  v7 = [v3 stringWithFormat:@"<%@: %p status = %d; statusByUser = %@>", v4, self, v5, v6];;

  return v7;
}

- (void)initWithStatus:(uint64_t)a1 statusByUser:(uint64_t)a2 ttl:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PDSResponse.m" lineNumber:15 description:{@"Invalid parameter not satisfying: %@", @"statusByUser"}];
}

@end