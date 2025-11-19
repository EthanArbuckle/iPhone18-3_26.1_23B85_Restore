@interface IDSReceivedInvitation
- (BOOL)isEqual:(id)a3;
- (IDSReceivedInvitation)initWithCoder:(id)a3;
- (IDSReceivedInvitation)initWithfromID:(id)a3 state:(int64_t)a4 expirationDate:(id)a5 uniqueID:(id)a6 context:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSReceivedInvitation

- (IDSReceivedInvitation)initWithfromID:(id)a3 state:(int64_t)a4 expirationDate:(id)a5 uniqueID:(id)a6 context:(id)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = IDSReceivedInvitation;
  v14 = [(IDSInvitation *)&v17 initWithState:a4 expirationDate:a5 uniqueID:a6 context:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_fromID, a3);
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSInvitation *)self uniqueID];
  v5 = [(IDSInvitation *)self selfHandle];
  v6 = [(IDSInvitation *)self senderMergeID];
  v7 = [(IDSInvitation *)self state];
  v8 = [(IDSInvitation *)self expirationDate];
  v9 = [(IDSReceivedInvitation *)self fromID];
  v10 = [v3 stringWithFormat:@"<IDSReceivedInvitation %p>: uniqueID %@ selfHandle %@ senderMergeID %@ state %ld expirationDate %@ destination %@", self, v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IDSInvitation *)self state];
    if (v6 == [v5 state])
    {
      v7 = [(IDSInvitation *)self uniqueID];
      v8 = [v5 uniqueID];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = [(IDSInvitation *)self senderMergeID];
    if (v11)
    {

      if ((v9 & 1) == 0)
      {
        v12 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v13 = [v5 senderMergeID];

      v12 = (v13 == 0) & v9;
      if (!v13 || ((v9 ^ 1) & 1) != 0)
      {
LABEL_12:
        v16 = [(IDSInvitation *)self selfHandle];
        if (v16)
        {
        }

        else
        {
          v17 = [v5 selfHandle];

          if (!v17)
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

        v18 = [(IDSInvitation *)self selfHandle];
        v19 = [v5 selfHandle];
        v20 = [v18 isEqualToString:v19];

        if ((v20 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_19:
        v21 = [(IDSInvitation *)self expirationDate];
        v22 = [v5 expirationDate];
        v23 = [v21 isEqual:v22];

        if (v23)
        {
          v24 = [(IDSReceivedInvitation *)self fromID];
          v25 = [v5 fromID];
          v26 = [v24 isEqual:v25];

          if (v26)
          {
            v27 = [(IDSInvitation *)self context];
            v28 = [v5 context];
            v10 = [v27 isEqual:v28];

LABEL_23:
            goto LABEL_24;
          }
        }

LABEL_22:
        v10 = 0;
        goto LABEL_23;
      }
    }

    v14 = [(IDSInvitation *)self senderMergeID];
    v15 = [v5 senderMergeID];
    v12 = [v14 isEqual:v15];

    goto LABEL_12;
  }

  v10 = 0;
LABEL_24:

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSInvitation *)self uniqueID];
  [v4 encodeObject:v5 forKey:*MEMORY[0x1E69A49E0]];

  v6 = [(IDSInvitation *)self selfHandle];
  [v4 encodeObject:v6 forKey:*MEMORY[0x1E69A49C8]];

  v7 = [(IDSInvitation *)self senderMergeID];
  [v4 encodeObject:v7 forKey:*MEMORY[0x1E69A49D0]];

  v8 = [(IDSInvitation *)self state];
  [v4 encodeInteger:v8 forKey:*MEMORY[0x1E69A49D8]];
  v9 = [(IDSInvitation *)self expirationDate];
  [v4 encodeObject:v9 forKey:*MEMORY[0x1E69A4C80]];

  v10 = [(IDSReceivedInvitation *)self fromID];
  [v4 encodeObject:v10 forKey:@"fromID"];

  v11 = [(IDSInvitation *)self context];
  [v4 encodeObject:v11 forKey:*MEMORY[0x1E69A49A8]];
}

- (IDSReceivedInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49E0]];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49C8]];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49D0]];
  v8 = [v4 decodeIntegerForKey:*MEMORY[0x1E69A49D8]];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A4C80]];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fromID"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E69A49A8]];

  v12 = [(IDSReceivedInvitation *)self initWithfromID:v10 state:v8 expirationDate:v9 uniqueID:v5 context:v11];
  [(IDSReceivedInvitation *)v12 setSelfHandle:v6];
  [(IDSReceivedInvitation *)v12 setSenderMergeID:v7];

  return v12;
}

@end