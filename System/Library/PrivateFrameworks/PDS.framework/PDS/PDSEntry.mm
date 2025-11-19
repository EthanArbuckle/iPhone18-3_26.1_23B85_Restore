@interface PDSEntry
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntry:(id)a3;
- (PDSEntry)initWithCoder:(id)a3;
- (PDSEntry)initWithUser:(id)a3 registration:(id)a4 clientID:(id)a5 state:(unsigned __int8)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PDSEntry

- (PDSEntry)initWithUser:(id)a3 registration:(id)a4 clientID:(id)a5 state:(unsigned __int8)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    [PDSEntry initWithUser:registration:clientID:state:];
    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [PDSEntry initWithUser:registration:clientID:state:];
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_11:
  [PDSEntry initWithUser:registration:clientID:state:];
LABEL_4:
  if (v6 >= 4)
  {
    [PDSEntry initWithUser:registration:clientID:state:];
  }

  v17.receiver = self;
  v17.super_class = PDSEntry;
  v14 = [(PDSEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_user, a3);
    objc_storeStrong(&v15->_registration, a4);
    objc_storeStrong(&v15->_clientID, a5);
    v15->_state = v6;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  user = self->_user;
  registration = self->_registration;
  clientID = self->_clientID;
  state = self->_state;

  return [v4 initWithUser:user registration:registration clientID:clientID state:state];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSEntry *)self isEqualToEntry:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(PDSEntry *)self user];
  v4 = [v3 hash];
  v5 = [(PDSEntry *)self registration];
  v6 = [v5 hash] ^ v4;
  v7 = v6 ^ [(PDSEntry *)self state];
  v8 = [(PDSEntry *)self clientID];
  v9 = [v8 hash];

  return v7 ^ v9;
}

- (BOOL)isEqualToEntry:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = [(PDSEntry *)self state];
    if (v5 == [(PDSEntry *)v4 state])
    {
      v6 = [(PDSEntry *)self user];
      v7 = [(PDSEntry *)v4 user];
      if ([v6 isEqualToUser:v7])
      {
        v8 = [(PDSEntry *)self registration];
        v9 = [(PDSEntry *)v4 registration];
        if ([v8 isEqualToRegistration:v9])
        {
          v10 = [(PDSEntry *)self clientID];
          v11 = [(PDSEntry *)v4 clientID];
          v12 = [v10 isEqualToString:v11];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(PDSEntry *)self user];
  [v7 encodeObject:v4 forKey:@"user"];

  v5 = [(PDSEntry *)self clientID];
  [v7 encodeObject:v5 forKey:@"clientID"];

  v6 = [(PDSEntry *)self registration];
  [v7 encodeObject:v6 forKey:@"registration"];

  [v7 encodeInt32:-[PDSEntry state](self forKey:{"state"), @"state"}];
}

- (PDSEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"registration"];
  v8 = [v4 decodeInt32ForKey:@"state"];

  v9 = [(PDSEntry *)self initWithUser:v5 registration:v7 clientID:v6];
  v10 = v9;
  if (v9)
  {
    v9->_state = v8;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = PDSStringForEntryState([(PDSEntry *)self state]);
  v6 = [(PDSEntry *)self user];
  v7 = [(PDSEntry *)self registration];
  v8 = [(PDSEntry *)self clientID];
  v9 = [v3 stringWithFormat:@"<%@: %p state = %@; user = %@; registration = %@; clientID = %@>", v4, self, v5, v6, v7, v8];;

  return v9;
}

- (void)initWithUser:registration:clientID:state:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)initWithUser:registration:clientID:state:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"registration" object:? file:? lineNumber:? description:?];
}

- (void)initWithUser:registration:clientID:state:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"clientID" object:? file:? lineNumber:? description:?];
}

- (void)initWithUser:registration:clientID:state:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"state <= PDSEntryStateHeartbeat" object:? file:? lineNumber:? description:?];
}

- (void)entryWithUpdatedState:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"state <= PDSEntryStateHeartbeat" object:? file:? lineNumber:? description:?];
}

@end