@interface _MRNotificationMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNotification:(id)notification;
- (void)addPlayerPath:(id)path;
- (void)addUserInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRNotificationMessageProtobuf

- (void)addNotification:(id)notification
{
  notificationCopy = notification;
  notifications = self->_notifications;
  v8 = notificationCopy;
  if (!notifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_notifications;
    self->_notifications = v6;

    notificationCopy = v8;
    notifications = self->_notifications;
  }

  [(NSMutableArray *)notifications addObject:notificationCopy];
}

- (void)addUserInfo:(id)info
{
  infoCopy = info;
  userInfos = self->_userInfos;
  v8 = infoCopy;
  if (!userInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_userInfos;
    self->_userInfos = v6;

    infoCopy = v8;
    userInfos = self->_userInfos;
  }

  [(NSMutableArray *)userInfos addObject:infoCopy];
}

- (void)addPlayerPath:(id)path
{
  pathCopy = path;
  playerPaths = self->_playerPaths;
  v8 = pathCopy;
  if (!playerPaths)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_playerPaths;
    self->_playerPaths = v6;

    pathCopy = v8;
    playerPaths = self->_playerPaths;
  }

  [(NSMutableArray *)playerPaths addObject:pathCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRNotificationMessageProtobuf;
  v4 = [(_MRNotificationMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRNotificationMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  notifications = self->_notifications;
  if (notifications)
  {
    [dictionary setObject:notifications forKey:@"notification"];
  }

  userInfos = self->_userInfos;
  if (userInfos)
  {
    [v4 setObject:userInfos forKey:@"userInfo"];
  }

  if ([(NSMutableArray *)self->_playerPaths count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_playerPaths, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_playerPaths;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"playerPath"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_notifications;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_userInfos;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_playerPaths;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRNotificationMessageProtobuf *)self notificationsCount])
  {
    [toCopy clearNotifications];
    notificationsCount = [(_MRNotificationMessageProtobuf *)self notificationsCount];
    if (notificationsCount)
    {
      v5 = notificationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRNotificationMessageProtobuf *)self notificationAtIndex:i];
        [toCopy addNotification:v7];
      }
    }
  }

  if ([(_MRNotificationMessageProtobuf *)self userInfosCount])
  {
    [toCopy clearUserInfos];
    userInfosCount = [(_MRNotificationMessageProtobuf *)self userInfosCount];
    if (userInfosCount)
    {
      v9 = userInfosCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRNotificationMessageProtobuf *)self userInfoAtIndex:j];
        [toCopy addUserInfo:v11];
      }
    }
  }

  if ([(_MRNotificationMessageProtobuf *)self playerPathsCount])
  {
    [toCopy clearPlayerPaths];
    playerPathsCount = [(_MRNotificationMessageProtobuf *)self playerPathsCount];
    if (playerPathsCount)
    {
      v13 = playerPathsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(_MRNotificationMessageProtobuf *)self playerPathAtIndex:k];
        [toCopy addPlayerPath:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = self->_notifications;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v34 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addNotification:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_userInfos;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addUserInfo:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_playerPaths;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{zone, v26}];
        [v5 addPlayerPath:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((notifications = self->_notifications, !(notifications | equalCopy[1])) || -[NSMutableArray isEqual:](notifications, "isEqual:")) && ((userInfos = self->_userInfos, !(userInfos | equalCopy[3])) || -[NSMutableArray isEqual:](userInfos, "isEqual:")))
  {
    playerPaths = self->_playerPaths;
    if (playerPaths | equalCopy[2])
    {
      v8 = [(NSMutableArray *)playerPaths isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_notifications hash];
  v4 = [(NSMutableArray *)self->_userInfos hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_playerPaths hash];
}

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRNotificationMessageProtobuf *)self addNotification:*(*(&v29 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = fromCopy[3];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(_MRNotificationMessageProtobuf *)self addUserInfo:*(*(&v25 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = fromCopy[2];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(_MRNotificationMessageProtobuf *)self addPlayerPath:*(*(&v21 + 1) + 8 * v19++), v21];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end