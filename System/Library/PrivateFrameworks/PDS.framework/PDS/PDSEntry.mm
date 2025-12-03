@interface PDSEntry
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEntry:(id)entry;
- (PDSEntry)initWithCoder:(id)coder;
- (PDSEntry)initWithUser:(id)user registration:(id)registration clientID:(id)d state:(unsigned __int8)state;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PDSEntry

- (PDSEntry)initWithUser:(id)user registration:(id)registration clientID:(id)d state:(unsigned __int8)state
{
  stateCopy = state;
  userCopy = user;
  registrationCopy = registration;
  dCopy = d;
  if (userCopy)
  {
    if (registrationCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [PDSEntry initWithUser:registration:clientID:state:];
    if (dCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [PDSEntry initWithUser:registration:clientID:state:];
  if (!registrationCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (dCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  [PDSEntry initWithUser:registration:clientID:state:];
LABEL_4:
  if (stateCopy >= 4)
  {
    [PDSEntry initWithUser:registration:clientID:state:];
  }

  v17.receiver = self;
  v17.super_class = PDSEntry;
  v14 = [(PDSEntry *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_user, user);
    objc_storeStrong(&v15->_registration, registration);
    objc_storeStrong(&v15->_clientID, d);
    v15->_state = stateCopy;
  }

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  user = self->_user;
  registration = self->_registration;
  clientID = self->_clientID;
  state = self->_state;

  return [v4 initWithUser:user registration:registration clientID:clientID state:state];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PDSEntry *)self isEqualToEntry:equalCopy];

  return v5;
}

- (unint64_t)hash
{
  user = [(PDSEntry *)self user];
  v4 = [user hash];
  registration = [(PDSEntry *)self registration];
  v6 = [registration hash] ^ v4;
  v7 = v6 ^ [(PDSEntry *)self state];
  clientID = [(PDSEntry *)self clientID];
  v9 = [clientID hash];

  return v7 ^ v9;
}

- (BOOL)isEqualToEntry:(id)entry
{
  entryCopy = entry;
  if (entryCopy == self)
  {
    v12 = 1;
  }

  else
  {
    state = [(PDSEntry *)self state];
    if (state == [(PDSEntry *)entryCopy state])
    {
      user = [(PDSEntry *)self user];
      user2 = [(PDSEntry *)entryCopy user];
      if ([user isEqualToUser:user2])
      {
        registration = [(PDSEntry *)self registration];
        registration2 = [(PDSEntry *)entryCopy registration];
        if ([registration isEqualToRegistration:registration2])
        {
          clientID = [(PDSEntry *)self clientID];
          clientID2 = [(PDSEntry *)entryCopy clientID];
          v12 = [clientID isEqualToString:clientID2];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  user = [(PDSEntry *)self user];
  [coderCopy encodeObject:user forKey:@"user"];

  clientID = [(PDSEntry *)self clientID];
  [coderCopy encodeObject:clientID forKey:@"clientID"];

  registration = [(PDSEntry *)self registration];
  [coderCopy encodeObject:registration forKey:@"registration"];

  [coderCopy encodeInt32:-[PDSEntry state](self forKey:{"state"), @"state"}];
}

- (PDSEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"registration"];
  v8 = [coderCopy decodeInt32ForKey:@"state"];

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
  user = [(PDSEntry *)self user];
  registration = [(PDSEntry *)self registration];
  clientID = [(PDSEntry *)self clientID];
  v9 = [v3 stringWithFormat:@"<%@: %p state = %@; user = %@; registration = %@; clientID = %@>", v4, self, v5, user, registration, clientID];;

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