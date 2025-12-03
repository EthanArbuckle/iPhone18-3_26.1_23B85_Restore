@interface IDSReceivedInvitation
- (BOOL)isEqual:(id)equal;
- (IDSReceivedInvitation)initWithCoder:(id)coder;
- (IDSReceivedInvitation)initWithfromID:(id)d state:(int64_t)state expirationDate:(id)date uniqueID:(id)iD context:(id)context;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSReceivedInvitation

- (IDSReceivedInvitation)initWithfromID:(id)d state:(int64_t)state expirationDate:(id)date uniqueID:(id)iD context:(id)context
{
  dCopy = d;
  v17.receiver = self;
  v17.super_class = IDSReceivedInvitation;
  v14 = [(IDSInvitation *)&v17 initWithState:state expirationDate:date uniqueID:iD context:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromID, d);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uniqueID = [(IDSInvitation *)self uniqueID];
  selfHandle = [(IDSInvitation *)self selfHandle];
  senderMergeID = [(IDSInvitation *)self senderMergeID];
  state = [(IDSInvitation *)self state];
  expirationDate = [(IDSInvitation *)self expirationDate];
  fromID = [(IDSReceivedInvitation *)self fromID];
  v10 = [v3 stringWithFormat:@"<IDSReceivedInvitation %p>: uniqueID %@ selfHandle %@ senderMergeID %@ state %ld expirationDate %@ destination %@", self, uniqueID, selfHandle, senderMergeID, state, expirationDate, fromID];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    state = [(IDSInvitation *)self state];
    if (state == [v5 state])
    {
      uniqueID = [(IDSInvitation *)self uniqueID];
      uniqueID2 = [v5 uniqueID];
      v9 = [uniqueID isEqual:uniqueID2];
    }

    else
    {
      v9 = 0;
    }

    senderMergeID = [(IDSInvitation *)self senderMergeID];
    if (senderMergeID)
    {

      if ((v9 & 1) == 0)
      {
        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      senderMergeID2 = [v5 senderMergeID];

      v12 = (senderMergeID2 == 0) & v9;
      if (!senderMergeID2 || ((v9 ^ 1) & 1) != 0)
      {
LABEL_12:
        selfHandle = [(IDSInvitation *)self selfHandle];
        if (selfHandle)
        {
        }

        else
        {
          selfHandle2 = [v5 selfHandle];

          if (!selfHandle2)
          {
            if (!v12)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }

        if (!v12)
        {
          goto LABEL_22;
        }

        selfHandle3 = [(IDSInvitation *)self selfHandle];
        selfHandle4 = [v5 selfHandle];
        v20 = [selfHandle3 isEqualToString:selfHandle4];

        if ((v20 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        expirationDate = [(IDSInvitation *)self expirationDate];
        expirationDate2 = [v5 expirationDate];
        v23 = [expirationDate isEqual:expirationDate2];

        if (v23)
        {
          fromID = [(IDSReceivedInvitation *)self fromID];
          fromID2 = [v5 fromID];
          v26 = [fromID isEqual:fromID2];

          if (v26)
          {
            context = [(IDSInvitation *)self context];
            context2 = [v5 context];
            v10 = [context isEqual:context2];

LABEL_23:
            goto LABEL_24;
          }
        }

LABEL_22:
        v10 = 0;
        goto LABEL_23;
      }
    }

    senderMergeID3 = [(IDSInvitation *)self senderMergeID];
    senderMergeID4 = [v5 senderMergeID];
    v12 = [senderMergeID3 isEqual:senderMergeID4];

    goto LABEL_12;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueID = [(IDSInvitation *)self uniqueID];
  [coderCopy encodeObject:uniqueID forKey:*MEMORY[0x1E69A49E0]];

  selfHandle = [(IDSInvitation *)self selfHandle];
  [coderCopy encodeObject:selfHandle forKey:*MEMORY[0x1E69A49C8]];

  senderMergeID = [(IDSInvitation *)self senderMergeID];
  [coderCopy encodeObject:senderMergeID forKey:*MEMORY[0x1E69A49D0]];

  state = [(IDSInvitation *)self state];
  [coderCopy encodeInteger:state forKey:*MEMORY[0x1E69A49D8]];
  expirationDate = [(IDSInvitation *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:*MEMORY[0x1E69A4C80]];

  fromID = [(IDSReceivedInvitation *)self fromID];
  [coderCopy encodeObject:fromID forKey:@"fromID"];

  context = [(IDSInvitation *)self context];
  [coderCopy encodeObject:context forKey:*MEMORY[0x1E69A49A8]];
}

- (IDSReceivedInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49E0]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49C8]];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49D0]];
  v8 = [coderCopy decodeIntegerForKey:*MEMORY[0x1E69A49D8]];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A4C80]];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fromID"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49A8]];

  v12 = [(IDSReceivedInvitation *)self initWithfromID:v10 state:v8 expirationDate:v9 uniqueID:v5 context:v11];
  [(IDSReceivedInvitation *)v12 setSelfHandle:v6];
  [(IDSReceivedInvitation *)v12 setSenderMergeID:v7];

  return v12;
}

@end