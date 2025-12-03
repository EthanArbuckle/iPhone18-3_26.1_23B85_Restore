@interface FCNetworkEventGroupKey
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation FCNetworkEventGroupKey

- (unint64_t)hash
{
  if (self)
  {
    eventType = self->_eventType;
    sessionID = self->_sessionID;
    self = self->_respondingPOP;
    v4 = sessionID ^ eventType;
  }

  else
  {
    v4 = 0;
  }

  return [(FCNetworkEventGroupKey *)self hash]^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self)
  {
    eventType = self->_eventType;
    if (equalCopy)
    {
LABEL_3:
      v7 = *(equalCopy + 2);
      goto LABEL_4;
    }
  }

  else
  {
    eventType = 0;
    if (equalCopy)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_4:
  if (eventType != v7)
  {
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (self)
  {
    sessionID = self->_sessionID;
    if (equalCopy)
    {
LABEL_7:
      v9 = equalCopy[2];
      goto LABEL_8;
    }
  }

  else
  {
    sessionID = 0;
    if (equalCopy)
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_8:
  if (sessionID != v9)
  {
    goto LABEL_13;
  }

  v10 = MEMORY[0x1E69E58C0];
  if (!self)
  {
    respondingPOP = 0;
    if (equalCopy)
    {
      goto LABEL_11;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_12;
  }

  respondingPOP = self->_respondingPOP;
  if (!equalCopy)
  {
    goto LABEL_20;
  }

LABEL_11:
  v12 = equalCopy[3];
LABEL_12:
  v13 = respondingPOP;
  v14 = [v10 nf_object:v13 isEqualToObject:v12];

LABEL_14:
  return v14;
}

@end