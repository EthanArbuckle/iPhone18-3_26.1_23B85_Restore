@interface _EDLazyWrappedMessage
- (_EDLazyWrappedMessage)initWithMessage:(id)message messagePersistence:(id)persistence;
- (int64_t)databaseID;
@end

@implementation _EDLazyWrappedMessage

- (_EDLazyWrappedMessage)initWithMessage:(id)message messagePersistence:(id)persistence
{
  persistenceCopy = persistence;
  v8 = *MEMORY[0x1E699A728];
  v12.receiver = self;
  v12.super_class = _EDLazyWrappedMessage;
  v9 = [(_EDWrappedMessage *)&v12 initWithMessage:message databaseID:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messagePersistence, persistence);
  }

  return v10;
}

- (int64_t)databaseID
{
  v12[1] = *MEMORY[0x1E69E9840];
  result = self->super._databaseID;
  if (result == *MEMORY[0x1E699A728])
  {
    messagePersistence = [(_EDLazyWrappedMessage *)self messagePersistence];
    message = [(_EDWrappedMessage *)self message];
    objectID = [message objectID];
    v12[0] = objectID;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [messagePersistence databaseIDsDictionaryForMessageObjectIDs:v7];
    keyEnumerator = [v8 keyEnumerator];
    nextObject = [keyEnumerator nextObject];

    if (nextObject)
    {
      self->super._databaseID = [nextObject longLongValue];
    }

    result = self->super._databaseID;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end