@interface DAMessageMoveRequest
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)initMoveRequestWithMessage:(id)message fromFolder:(id)folder toFolder:(id)toFolder;
- (unint64_t)hash;
@end

@implementation DAMessageMoveRequest

- (id)initMoveRequestWithMessage:(id)message fromFolder:(id)folder toFolder:(id)toFolder
{
  messageCopy = message;
  folderCopy = folder;
  toFolderCopy = toFolder;
  v16.receiver = self;
  v16.super_class = DAMessageMoveRequest;
  v11 = [(DAMessageMoveRequest *)&v16 init];
  if (v11)
  {
    v12 = [messageCopy copy];
    [(DAMessageMoveRequest *)v11 setMessage:v12];

    v13 = [folderCopy copy];
    [(DAMessageMoveRequest *)v11 setFromFolder:v13];

    v14 = [toFolderCopy copy];
    [(DAMessageMoveRequest *)v11 setToFolder:v14];
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  message = [(DAMessageMoveRequest *)self message];
  fromFolder = [(DAMessageMoveRequest *)self fromFolder];
  toFolder = [(DAMessageMoveRequest *)self toFolder];
  v7 = [v3 initWithFormat:@"%@\n%@\n%@", message, fromFolder, toFolder];

  v8 = [v7 hash];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    message = [(DAMessageMoveRequest *)self message];
    message2 = [v7 message];
    if (message != message2)
    {
      message3 = [(DAMessageMoveRequest *)self message];
      message4 = [v7 message];
      if (![message3 isEqual:message4])
      {
        v10 = 0;
        goto LABEL_17;
      }
    }

    fromFolder = [(DAMessageMoveRequest *)self fromFolder];
    fromFolder2 = [v7 fromFolder];
    v13 = fromFolder2;
    if (fromFolder == fromFolder2)
    {
      v28 = fromFolder2;
    }

    else
    {
      fromFolder3 = [(DAMessageMoveRequest *)self fromFolder];
      fromFolder4 = [v7 fromFolder];
      if (![fromFolder3 isEqual:?])
      {
        v10 = 0;
        goto LABEL_15;
      }

      v26 = fromFolder3;
      v28 = v13;
    }

    toFolder = [(DAMessageMoveRequest *)self toFolder];
    toFolder2 = [v7 toFolder];
    v17 = toFolder2;
    if (toFolder == toFolder2)
    {

      v10 = 1;
    }

    else
    {
      [(DAMessageMoveRequest *)self toFolder];
      v18 = v25 = message3;
      [v7 toFolder];
      v24 = fromFolder;
      v19 = message4;
      v20 = message2;
      v22 = v21 = message;
      v10 = [v18 isEqual:v22];

      message = v21;
      message2 = v20;
      message4 = v19;
      fromFolder = v24;

      message3 = v25;
    }

    v13 = v28;
    fromFolder3 = v26;
    if (fromFolder == v28)
    {
LABEL_16:

      if (message == message2)
      {
LABEL_18:

        goto LABEL_19;
      }

LABEL_17:

      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  v10 = 0;
LABEL_19:

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = DAMessageMoveRequest;
  v4 = [(DAMessageMoveRequest *)&v10 description];
  message = [(DAMessageMoveRequest *)self message];
  fromFolder = [(DAMessageMoveRequest *)self fromFolder];
  toFolder = [(DAMessageMoveRequest *)self toFolder];
  v8 = [v3 stringWithFormat:@"%@ message %@, fromFolder %@, toFolder %@", v4, message, fromFolder, toFolder];

  return v8;
}

@end