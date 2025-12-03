@interface SGConversationTurn
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationTurn:(id)turn;
- (SGConversationTurn)initWithCoder:(id)coder;
- (SGConversationTurn)initWithText:(id)text senderID:(id)d timestamp:(id)timestamp;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SGConversationTurn

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<SGConversationTurn txt_sz:%tu sid_sz:%tu tsp:%@>", -[NSString length](self->_text, "length"), -[NSString length](self->_senderID, "length"), self->_timestamp];

  return v2;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_text hash];
  v4 = [(NSString *)self->_senderID hash]- v3 + 32 * v3;
  return [(NSDate *)self->_timestamp hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGConversationTurn *)self isEqualToConversationTurn:v5];
  }

  return v6;
}

- (BOOL)isEqualToConversationTurn:(id)turn
{
  turnCopy = turn;
  v6 = turnCopy;
  if (turnCopy)
  {
    v7 = turnCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"SGConversationTurn.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"[otherTurn isKindOfClass:[SGConversationTurn class]]"}];
    }

    v8 = self->_text;
    v9 = v8;
    if (v8 == v7[1])
    {
    }

    else
    {
      v10 = [(NSString *)v8 isEqual:?];

      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v12 = self->_senderID;
    v13 = v12;
    if (v12 == v7[2])
    {
    }

    else
    {
      v14 = [(NSString *)v12 isEqual:?];

      if ((v14 & 1) == 0)
      {
LABEL_11:
        v11 = 0;
LABEL_17:

        goto LABEL_18;
      }
    }

    v15 = self->_timestamp;
    v16 = v15;
    if (v15 == v7[3])
    {
      v11 = 1;
    }

    else
    {
      v11 = [(NSDate *)v15 isEqual:?];
    }

    goto LABEL_17;
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [(NSString *)self->_text copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSString *)self->_senderID copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSDate *)self->_timestamp copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"txt"];
  [coderCopy encodeObject:self->_senderID forKey:@"sid"];
  [coderCopy encodeObject:self->_timestamp forKey:@"tsp"];
}

- (SGConversationTurn)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = MEMORY[0x1E69C5D78];
  v7 = sgLogHandle();
  v8 = [v6 robustDecodeObjectOfClass:v5 forKey:@"txt" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v7];

  v9 = MEMORY[0x1E69C5D78];
  v10 = sgLogHandle();
  v11 = [v9 robustDecodeObjectOfClass:v5 forKey:@"sid" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v10];

  v12 = MEMORY[0x1E69C5D78];
  v13 = objc_opt_class();
  v14 = sgLogHandle();
  v15 = [v12 robustDecodeObjectOfClass:v13 forKey:@"tsp" withCoder:coderCopy expectNonNull:0 errorDomain:@"SGErrorDomain" errorCode:11 logHandle:v14];

  if (v8 && ([coderCopy error], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
  {
    self = [(SGConversationTurn *)self initWithText:v8 senderID:v11 timestamp:v15];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (SGConversationTurn)initWithText:(id)text senderID:(id)d timestamp:(id)timestamp
{
  textCopy = text;
  dCopy = d;
  timestampCopy = timestamp;
  if (!textCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGConversationTurn.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"text"}];
  }

  v17.receiver = self;
  v17.super_class = SGConversationTurn;
  v13 = [(SGConversationTurn *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_text, text);
    objc_storeStrong(&v14->_senderID, d);
    objc_storeStrong(&v14->_timestamp, timestamp);
  }

  return v14;
}

@end