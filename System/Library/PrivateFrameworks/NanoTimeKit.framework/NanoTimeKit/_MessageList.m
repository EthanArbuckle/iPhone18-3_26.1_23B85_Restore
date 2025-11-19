@interface _MessageList
- (_MessageList)initWithPersistencePath:(id)a3;
- (id)_getComplicationDescriptor:(id)a3;
- (id)_getFaceUUID:(id)a3;
- (id)_messageAtIndex:(unint64_t)a3;
- (id)firstMessage;
- (id)messageEnumerator;
- (int64_t)_getMessageType:(id)a3;
- (void)_enqueueMessageDict:(id)a3;
- (void)_persistMessageDictionaries;
- (void)_pruneMessagesMadeObsoleteByNewMessageOfType:(int64_t)a3 withFaceUUID:(id)a4 clientID:(id)a5 family:(id)a6 complicationDescriptor:(id)a7 complicationCollectionIdentifier:(id)a8;
- (void)clearAllMessages;
- (void)clearMessageCount:(unint64_t)a3;
- (void)dequeueFirstMessage;
- (void)enqueueMessage:(id)a3;
- (void)resumeCoalescing;
@end

@implementation _MessageList

- (_MessageList)initWithPersistencePath:(id)a3
{
  v15 = a3;
  v21.receiver = self;
  v21.super_class = _MessageList;
  v16 = [(_MessageList *)&v21 init];
  if (v16)
  {
    objc_storeStrong(&v16->_persistencePath, a3);
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

- (void)enqueueMessage:(id)a3
{
  v4 = a3;
  v5 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "message list enqueue message %@", buf, 0xCu);
  }

  v6 = +[NSMutableDictionary dictionary];
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 messageType]);
  [v6 setObject:v7 forKey:@"message-type"];

  v8 = [v4 faceUUID];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 UUIDString];
    [v6 setObject:v10 forKey:@"face-uuid"];
  }

  v11 = [v4 complicationClientID];
  if (v11)
  {
    [v6 setObject:v11 forKey:@"complicaiton-clientID"];
  }

  v12 = [v4 complicationFamily];
  if (v12)
  {
    [v6 setObject:v12 forKey:@"complication-family"];
  }

  v13 = [v4 complicationDescriptor];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 JSONObjectRepresentation];
    [v6 setObject:v15 forKey:@"complication-descriptor"];
  }

  v16 = [v4 complicationCollectionIdentifier];
  if (v16)
  {
    [v6 setObject:v16 forKey:@"complication-collection-identifier"];
  }

  if ([v4 payloadSize])
  {
    v22 = self;
    v17 = +[NSUUID UUID];
    v18 = [v17 UUIDString];

    v19 = sub_10003C230(v18);
    v20 = [v4 getPayloadDataIntoFile:v19];

    if ((v20 & 1) == 0)
    {
      v21 = _NTKLoggingObjectForDomain();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        sub_100040098(v21);
      }
    }

    [v6 setObject:v18 forKey:@"payload-id"];

    self = v22;
  }

  [(_MessageList *)self _enqueueMessageDict:v6];
  [(_MessageList *)self _persistMessageDictionaries];
}

- (void)clearAllMessages
{
  v3 = [(NSMutableArray *)self->_messageDictionaries count];

  [(_MessageList *)self clearMessageCount:v3];
}

- (void)clearMessageCount:(unint64_t)a3
{
  messageDictionaries = self->_messageDictionaries;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10003C3CC;
  v6[3] = &unk_10005E3B8;
  v6[4] = a3;
  [(NSMutableArray *)messageDictionaries enumerateObjectsUsingBlock:v6];
  [(NSMutableArray *)self->_messageDictionaries removeObjectsInRange:0, a3];
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

- (id)_messageAtIndex:(unint64_t)a3
{
  v4 = [(NSMutableArray *)self->_messageDictionaries objectAtIndex:a3];
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

- (void)_enqueueMessageDict:(id)a3
{
  v10 = a3;
  if (!self->_coalescingSuspended)
  {
    v4 = [(_MessageList *)self _getMessageType:v10];
    v5 = [(_MessageList *)self _getFaceUUID:v10];
    v6 = [(_MessageList *)self _getClientID:v10];
    v7 = [(_MessageList *)self _getFamily:v10];
    v8 = [(_MessageList *)self _getComplicationDescriptor:v10];
    v9 = [(_MessageList *)self _getComplicationCollectionIdentifier:v10];
    [(_MessageList *)self _pruneMessagesMadeObsoleteByNewMessageOfType:v4 withFaceUUID:v5 clientID:v6 family:v7 complicationDescriptor:v8 complicationCollectionIdentifier:v9];
  }

  [(NSMutableArray *)self->_messageDictionaries addObject:v10];
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

- (void)_pruneMessagesMadeObsoleteByNewMessageOfType:(int64_t)a3 withFaceUUID:(id)a4 clientID:(id)a5 family:(id)a6 complicationDescriptor:(id)a7 complicationCollectionIdentifier:(id)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10003CD38;
  v35[3] = &unk_10005E408;
  v40 = a8;
  v41 = a3;
  v35[4] = self;
  v36 = v14;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v18 = v40;
  v19 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = objc_retainBlock(v35);
  v24 = +[NSMutableIndexSet indexSet];
  messageDictionaries = self->_messageDictionaries;
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_10003CF28;
  v31 = &unk_10005E430;
  v33 = v24;
  v34 = v23;
  v32 = self;
  v26 = v24;
  v27 = v23;
  [(NSMutableArray *)messageDictionaries enumerateObjectsUsingBlock:&v28];
  [(NSMutableArray *)self->_messageDictionaries removeObjectsAtIndexes:v26, v28, v29, v30, v31, v32];
}

- (int64_t)_getMessageType:(id)a3
{
  v3 = [a3 objectForKey:@"message-type"];
  v4 = [v3 integerValue];

  return v4;
}

- (id)_getFaceUUID:(id)a3
{
  v3 = [a3 objectForKey:@"face-uuid"];
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

- (id)_getComplicationDescriptor:(id)a3
{
  v3 = [a3 objectForKey:@"complication-descriptor"];
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