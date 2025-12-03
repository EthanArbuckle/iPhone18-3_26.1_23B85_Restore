@interface CATIDSServiceConnectionMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMetadata:(id)metadata;
- (CATIDSServiceConnectionMetadata)initWithConnectionIdentifier:(id)identifier destinationAppleID:(id)d userInfo:(id)info;
- (id)description;
- (unint64_t)hash;
@end

@implementation CATIDSServiceConnectionMetadata

- (CATIDSServiceConnectionMetadata)initWithConnectionIdentifier:(id)identifier destinationAppleID:(id)d userInfo:(id)info
{
  identifierCopy = identifier;
  dCopy = d;
  infoCopy = info;
  v19.receiver = self;
  v19.super_class = CATIDSServiceConnectionMetadata;
  v12 = [(CATIDSServiceConnectionMetadata *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connectionIdentifier, identifier);
    v14 = [dCopy copy];
    destinationAppleID = v13->_destinationAppleID;
    v13->_destinationAppleID = v14;

    v16 = [infoCopy copy];
    userInfo = v13->_userInfo;
    v13->_userInfo = v16;
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  connectionIdentifier = [(CATIDSServiceConnectionMetadata *)self connectionIdentifier];
  destinationAppleID = [(CATIDSServiceConnectionMetadata *)self destinationAppleID];
  userInfo = [(CATIDSServiceConnectionMetadata *)self userInfo];
  v8 = [v3 stringWithFormat:@"<%@: %p { connectionIdentifier = %@, destinationAppleID = %@, userInfo = %@ }>", v4, self, connectionIdentifier, destinationAppleID, userInfo];

  return v8;
}

- (unint64_t)hash
{
  connectionIdentifier = [(CATIDSServiceConnectionMetadata *)self connectionIdentifier];
  v4 = [connectionIdentifier hash];
  destinationAppleID = [(CATIDSServiceConnectionMetadata *)self destinationAppleID];
  v6 = [destinationAppleID hash] ^ v4;
  userInfo = [(CATIDSServiceConnectionMetadata *)self userInfo];
  v8 = [userInfo hash];

  return v6 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_7;
  }

  if (self == equalCopy)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if ([(CATIDSServiceConnectionMetadata *)equalCopy isMemberOfClass:objc_opt_class()])
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

- (BOOL)isEqualToMetadata:(id)metadata
{
  metadataCopy = metadata;
  connectionIdentifier = [(CATIDSServiceConnectionMetadata *)self connectionIdentifier];
  connectionIdentifier2 = [metadataCopy connectionIdentifier];
  v7 = connectionIdentifier;
  v8 = connectionIdentifier2;
  if (v7 | v8 && (v9 = [v7 isEqual:v8], v8, v7, !v9))
  {
    v17 = 0;
  }

  else
  {
    destinationAppleID = [(CATIDSServiceConnectionMetadata *)self destinationAppleID];
    destinationAppleID2 = [metadataCopy destinationAppleID];
    v12 = destinationAppleID;
    v13 = destinationAppleID2;
    if (v12 | v13 && (v14 = [v12 isEqual:v13], v13, v12, !v14))
    {
      v17 = 0;
    }

    else
    {
      userInfo = [(CATIDSServiceConnectionMetadata *)self userInfo];
      userInfo2 = [metadataCopy userInfo];
      if (userInfo | userInfo2)
      {
        v17 = [userInfo isEqual:userInfo2];
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