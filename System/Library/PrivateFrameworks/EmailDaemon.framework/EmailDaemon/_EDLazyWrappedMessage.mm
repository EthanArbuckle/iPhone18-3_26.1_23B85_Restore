@interface _EDLazyWrappedMessage
- (_EDLazyWrappedMessage)initWithMessage:(id)a3 messagePersistence:(id)a4;
- (int64_t)databaseID;
@end

@implementation _EDLazyWrappedMessage

- (_EDLazyWrappedMessage)initWithMessage:(id)a3 messagePersistence:(id)a4
{
  v7 = a4;
  v8 = *MEMORY[0x1E699A728];
  v12.receiver = self;
  v12.super_class = _EDLazyWrappedMessage;
  v9 = [(_EDWrappedMessage *)&v12 initWithMessage:a3 databaseID:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_messagePersistence, a4);
  }

  return v10;
}

- (int64_t)databaseID
{
  v12[1] = *MEMORY[0x1E69E9840];
  result = self->super._databaseID;
  if (result == *MEMORY[0x1E699A728])
  {
    v4 = [(_EDLazyWrappedMessage *)self messagePersistence];
    v5 = [(_EDWrappedMessage *)self message];
    v6 = [v5 objectID];
    v12[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v8 = [v4 databaseIDsDictionaryForMessageObjectIDs:v7];
    v9 = [v8 keyEnumerator];
    v10 = [v9 nextObject];

    if (v10)
    {
      self->super._databaseID = [v10 longLongValue];
    }

    result = self->super._databaseID;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end