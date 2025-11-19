@interface CATIDSServiceConnectionMetadata
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMetadata:(id)a3;
- (CATIDSServiceConnectionMetadata)initWithConnectionIdentifier:(id)a3 destinationAppleID:(id)a4 userInfo:(id)a5;
- (id)description;
- (unint64_t)hash;
@end

@implementation CATIDSServiceConnectionMetadata

- (CATIDSServiceConnectionMetadata)initWithConnectionIdentifier:(id)a3 destinationAppleID:(id)a4 userInfo:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = CATIDSServiceConnectionMetadata;
  v12 = [(CATIDSServiceConnectionMetadata *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connectionIdentifier, a3);
    v14 = [v10 copy];
    destinationAppleID = v13->_destinationAppleID;
    v13->_destinationAppleID = v14;

    v16 = [v11 copy];
    userInfo = v13->_userInfo;
    v13->_userInfo = v16;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATIDSServiceConnectionMetadata *)self connectionIdentifier];
  v6 = [(CATIDSServiceConnectionMetadata *)self destinationAppleID];
  v7 = [(CATIDSServiceConnectionMetadata *)self userInfo];
  v8 = [v3 stringWithFormat:@"<%@: %p { connectionIdentifier = %@, destinationAppleID = %@, userInfo = %@ }>", v4, self, v5, v6, v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CATIDSServiceConnectionMetadata *)self connectionIdentifier];
  v4 = [v3 hash];
  v5 = [(CATIDSServiceConnectionMetadata *)self destinationAppleID];
  v6 = [v5 hash] ^ v4;
  v7 = [(CATIDSServiceConnectionMetadata *)self userInfo];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

  if (self == v4)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ([(CATIDSServiceConnectionMetadata *)v4 isMemberOfClass:objc_opt_class()])
  {
    v6 = v5;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [CATIDSServiceConnectionMetadata isEqual:];
    }

    v7 = [(CATIDSServiceConnectionMetadata *)self isEqualToMetadata:v6];
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqualToMetadata:(id)a3
{
  v4 = a3;
  v5 = [(CATIDSServiceConnectionMetadata *)self connectionIdentifier];
  v6 = [v4 connectionIdentifier];
  v7 = v5;
  v8 = v6;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    v17 = 0;
  }

  else
  {
    v10 = [(CATIDSServiceConnectionMetadata *)self destinationAppleID];
    v11 = [v4 destinationAppleID];
    v12 = v10;
    v13 = v11;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {
      v17 = 0;
    }

    else
    {
      v15 = [(CATIDSServiceConnectionMetadata *)self userInfo];
      v16 = [v4 userInfo];
      if (v15 | v16)
      {
        v17 = [v15 isEqual:v16];
      }

      else
      {
        v17 = 1;
      }
    }
  }

  return v17;
}

- (void)isEqual:.cold.1()
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[CATIDSServiceConnectionMetadata isEqual:]"];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [v5 handleFailureInFunction:v0 file:@"CATIDSServiceConnectionMetadata.m" lineNumber:71 description:{@"expected %@, got %@", v2, v4}];
}

@end