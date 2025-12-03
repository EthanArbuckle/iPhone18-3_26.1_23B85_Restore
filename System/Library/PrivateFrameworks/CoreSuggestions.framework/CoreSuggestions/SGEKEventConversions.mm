@interface SGEKEventConversions
+ (id)urlForEKEventFromMailMessageWithId:(id)id sentAt:(id)at opaqueKey:(id)key;
+ (id)urlForEKEventFromTextMessageWithUniqueIdentifier:(id)identifier;
+ (id)urlForMailMessageWithId:(id)id;
@end

@implementation SGEKEventConversions

+ (id)urlForEKEventFromTextMessageWithUniqueIdentifier:(id)identifier
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGEKEventConversions.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];
  }

  v6 = objc_opt_new();
  [v6 setScheme:@"sms"];
  [v6 setHost:@"open"];
  v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"message-guid" value:identifierCopy];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v6 setQueryItems:v8];

  v9 = [v6 URL];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)urlForMailMessageWithId:(id)id
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGEKEventConversions.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];
  }

  v6 = objc_opt_new();
  [v6 setScheme:@"message"];
  [v6 setPath:idCopy];
  v7 = [v6 URL];

  return v7;
}

+ (id)urlForEKEventFromMailMessageWithId:(id)id sentAt:(id)at opaqueKey:(id)key
{
  v26[2] = *MEMORY[0x1E69E9840];
  idCopy = id;
  atCopy = at;
  keyCopy = key;
  if (idCopy)
  {
    if (atCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGEKEventConversions.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"sentAt"}];

    if (keyCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGEKEventConversions.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];

  if (!atCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (keyCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGEKEventConversions.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"opaqueKey"}];

LABEL_4:
  v12 = objc_opt_new();
  [v12 setScheme:@"message"];
  [v12 setPath:idCopy];
  v13 = MEMORY[0x1E696AF60];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  [atCopy timeIntervalSince1970];
  v16 = [v14 initWithFormat:@"%lu", v15];
  v17 = [v13 queryItemWithName:@"c" value:v16];
  v26[0] = v17;
  v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"k" value:keyCopy];
  v26[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [v12 setQueryItems:v19];

  v20 = [v12 URL];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end