@interface _MessageList
- (_MessageList)initWithPersistencePath:(id)path;
- (id)_getComplicationDescriptor:(id)descriptor;
- (id)_getFaceUUID:(id)d;
- (id)_messageAtIndex:(unint64_t)index;
- (id)firstMessage;
- (id)messageEnumerator;
- (int64_t)_getMessageType:(id)type;
- (void)_enqueueMessageDict:(id)dict;
- (void)_persistMessageDictionaries;
- (void)_pruneMessagesMadeObsoleteByNewMessageOfType:(int64_t)type withFaceUUID:(id)d clientID:(id)iD family:(id)family complicationDescriptor:(id)descriptor complicationCollectionIdentifier:(id)identifier;
- (void)clearAllMessages;
- (void)clearMessageCount:(unint64_t)count;
- (void)dequeueFirstMessage;
- (void)enqueueMessage:(id)message;
- (void)resumeCoalescing;
@end

@implementation _MessageList

- (_MessageList)initWithPersistencePath:(id)path
{
  pathCopy = path;
  v21.receiver = self;
  v21.super_class = _MessageList;
  v16 = [(_MessageList *)&v21 init];
  if (v16)
  {
    objc_storeStrong(&v16->_persistencePath, path);
    v5 = [NSArray arrayWithContentsOfFile:v16->_persistencePath];
    if (v5)
    {
      objc_opt_class();
      NTKValidateArray();
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = v5;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          NTKValidateDictionaryValue();
          objc_opt_class();
          NTKValidateDictionaryValue();
          objc_opt_class();
          NTKValidateDictionaryValue();
          objc_opt_class();
          NTKValidateDictionaryValue();
          objc_opt_class();
          NTKValidateDictionaryValue();
          objc_opt_class();
          NTKValidateDictionaryValue();
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v7);
    }

    if (v5)
    {
      v11 = [(NSMutableArray *)v6 mutableCopy];
      messageDictionaries = v16->_messageDictionaries;
      v16->_messageDictionaries = v11;
    }

    else
    {
      v13 = +[NSMutableArray array];
      v6 = v16->_messageDictionaries;
      v16->_messageDictionaries = v13;
    }
  }

  return v16;
}

- (void)enqueueMessage:(id)message
{
  messageCopy = message;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = messageCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "message list enqueue message %@", buf, 0xCu);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [messageCopy messageType]);
  [v6 setObject:v7 forKey:@"message-type"];

  faceUUID = [messageCopy faceUUID];
  v9 = faceUUID;
  if (faceUUID)
  {
    uUIDString = [faceUUID UUIDString];
    [v6 setObject:uUIDString forKey:@"face-uuid"];
  }

  complicationClientID = [messageCopy complicationClientID];
  if (complicationClientID)
  {
    [v6 setObject:complicationClientID forKey:@"complicaiton-clientID"];
  }

  complicationFamily = [messageCopy complicationFamily];
  if (complicationFamily)
  {
    [v6 setObject:complicationFamily forKey:@"complication-family"];
  }

  complicationDescriptor = [messageCopy complicationDescriptor];
  v14 = complicationDescriptor;
  if (complicationDescriptor)
  {
    jSONObjectRepresentation = [complicationDescriptor JSONObjectRepresentation];
    [v6 setObject:jSONObjectRepresentation forKey:@"complication-descriptor"];
  }

  complicationCollectionIdentifier = [messageCopy complicationCollectionIdentifier];
  if (complicationCollectionIdentifier)
  {
    [v6 setObject:complicationCollectionIdentifier forKey:@"complication-collection-identifier"];
  }

  if ([messageCopy payloadSize])
  {
    selfCopy = self;
    v17 = +[NSUUID UUID];
    uUIDString2 = [v17 UUIDString];

    v19 = sub_10003C230(uUIDString2);
    v20 = [messageCopy getPayloadDataIntoFile:v19];

    if ((v20 & 1) == 0)
    {
      v21 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_100040098(v21);
      }
    }

    [v6 setObject:uUIDString2 forKey:@"payload-id"];

    self = selfCopy;
  }

  [(_MessageList *)self _enqueueMessageDict:v6];
  [(_MessageList *)self _persistMessageDictionaries];
}

- (void)clearAllMessages
{
  v3 = [(NSMutableArray *)self->_messageDictionaries count];

  [(_MessageList *)self clearMessageCount:v3];
}

- (void)clearMessageCount:(unint64_t)count
{
  messageDictionaries = self->_messageDictionaries;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003C3CC;
  v6[3] = &unk_10005E3B8;
  v6[4] = count;
  [(NSMutableArray *)messageDictionaries enumerateObjectsUsingBlock:v6];
  [(NSMutableArray *)self->_messageDictionaries removeObjectsInRange:0, count];
  [(_MessageList *)self _persistMessageDictionaries];
}

- (id)messageEnumerator
{
  [(_MessageList *)self _ensureCoalescingSuspended];
  v3 = objc_alloc_init(_MessageListEnumerator);
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v6[3] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C558;
  v5[3] = &unk_10005E3E0;
  v5[4] = self;
  v5[5] = v6;
  [(_MessageListEnumerator *)v3 setNextObjectBlock:v5];
  _Block_object_dispose(v6, 8);

  return v3;
}

- (id)firstMessage
{
  v3 = [(NSMutableArray *)self->_messageDictionaries count];
  if (v3)
  {
    v3 = [(_MessageList *)self _messageAtIndex:0];
  }

  return v3;
}

- (void)dequeueFirstMessage
{
  if ([(NSMutableArray *)self->_messageDictionaries count])
  {
    v3 = [(NSMutableArray *)self->_messageDictionaries objectAtIndex:0];
    v4 = [v3 objectForKey:@"payload-id"];
    if (v4)
    {
      v5 = +[NSFileManager defaultManager];
      v6 = sub_10003C230(v4);
      [v5 removeItemAtPath:v6 error:0];
    }

    [(NSMutableArray *)self->_messageDictionaries removeObjectAtIndex:0];
  }

  [(_MessageList *)self _persistMessageDictionaries];
}

- (void)resumeCoalescing
{
  self->_coalescingSuspended = 0;
  v3 = [(NSMutableArray *)self->_messageDictionaries copy];
  [(NSMutableArray *)self->_messageDictionaries removeAllObjects];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(_MessageList *)self _enqueueMessageDict:*(*(&v9 + 1) + 8 * v8), v9];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(_MessageList *)self _persistMessageDictionaries];
}

- (id)_messageAtIndex:(unint64_t)index
{
  v4 = [(NSMutableArray *)self->_messageDictionaries objectAtIndex:index];
  v5 = objc_alloc_init(NTKDSyncMessage);
  [v5 setMessageType:{-[_MessageList _getMessageType:](self, "_getMessageType:", v4)}];
  v6 = [(_MessageList *)self _getFaceUUID:v4];
  [v5 setFaceUUID:v6];

  v7 = [(_MessageList *)self _getClientID:v4];
  [v5 setComplicationClientID:v7];

  v8 = [(_MessageList *)self _getFamily:v4];
  [v5 setComplicationFamily:v8];

  v9 = [(_MessageList *)self _getComplicationDescriptor:v4];
  [v5 setComplicationDescriptor:v9];

  v10 = [(_MessageList *)self _getComplicationCollectionIdentifier:v4];
  [v5 setComplicationCollectionIdentifier:v10];

  v11 = [v4 objectForKey:@"payload-id"];
  v12 = v11;
  if (v11)
  {
    v13 = sub_10003C230(v11);
    [v5 setPayloadDataFromFile:v13];
  }

  return v5;
}

- (void)_enqueueMessageDict:(id)dict
{
  dictCopy = dict;
  if (!self->_coalescingSuspended)
  {
    v4 = [(_MessageList *)self _getMessageType:dictCopy];
    v5 = [(_MessageList *)self _getFaceUUID:dictCopy];
    v6 = [(_MessageList *)self _getClientID:dictCopy];
    v7 = [(_MessageList *)self _getFamily:dictCopy];
    v8 = [(_MessageList *)self _getComplicationDescriptor:dictCopy];
    v9 = [(_MessageList *)self _getComplicationCollectionIdentifier:dictCopy];
    [(_MessageList *)self _pruneMessagesMadeObsoleteByNewMessageOfType:v4 withFaceUUID:v5 clientID:v6 family:v7 complicationDescriptor:v8 complicationCollectionIdentifier:v9];
  }

  [(NSMutableArray *)self->_messageDictionaries addObject:dictCopy];
}

- (void)_persistMessageDictionaries
{
  if (self->_persistencePath)
  {
    v3 = [NSURL fileURLWithPath:?];
    messageDictionaries = self->_messageDictionaries;
    v8 = 0;
    v5 = [(NSMutableArray *)messageDictionaries writeToURL:v3 error:&v8];
    v6 = v8;
    if ((v5 & 1) == 0)
    {
      v7 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1000400F0(v6, v7);
      }
    }
  }
}

- (void)_pruneMessagesMadeObsoleteByNewMessageOfType:(int64_t)type withFaceUUID:(id)d clientID:(id)iD family:(id)family complicationDescriptor:(id)descriptor complicationCollectionIdentifier:(id)identifier
{
  dCopy = d;
  iDCopy = iD;
  familyCopy = family;
  descriptorCopy = descriptor;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10003CD38;
  v35[3] = &unk_10005E408;
  identifierCopy = identifier;
  typeCopy = type;
  v35[4] = self;
  v36 = dCopy;
  v37 = iDCopy;
  v38 = familyCopy;
  v39 = descriptorCopy;
  v18 = identifierCopy;
  v19 = descriptorCopy;
  v20 = familyCopy;
  v21 = iDCopy;
  v22 = dCopy;
  v23 = objc_retainBlock(v35);
  v24 = +[NSMutableIndexSet indexSet];
  messageDictionaries = self->_messageDictionaries;
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10003CF28;
  v31 = &unk_10005E430;
  v33 = v24;
  v34 = v23;
  selfCopy = self;
  v26 = v24;
  v27 = v23;
  [(NSMutableArray *)messageDictionaries enumerateObjectsUsingBlock:&v28];
  [(NSMutableArray *)self->_messageDictionaries removeObjectsAtIndexes:v26, v28, v29, v30, v31, selfCopy];
}

- (int64_t)_getMessageType:(id)type
{
  v3 = [type objectForKey:@"message-type"];
  integerValue = [v3 integerValue];

  return integerValue;
}

- (id)_getFaceUUID:(id)d
{
  v3 = [d objectForKey:@"face-uuid"];
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_getComplicationDescriptor:(id)descriptor
{
  v3 = [descriptor objectForKey:@"complication-descriptor"];
  if (v3)
  {
    v4 = [[CLKComplicationDescriptor alloc] initWithJSONObjectRepresentation:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end