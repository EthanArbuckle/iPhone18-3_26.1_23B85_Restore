@interface SGEKEventConversions
+ (id)urlForEKEventFromMailMessageWithId:(id)a3 sentAt:(id)a4 opaqueKey:(id)a5;
+ (id)urlForEKEventFromTextMessageWithUniqueIdentifier:(id)a3;
+ (id)urlForMailMessageWithId:(id)a3;
@end

@implementation SGEKEventConversions

+ (id)urlForEKEventFromTextMessageWithUniqueIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"SGEKEventConversions.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];
  }

  v6 = objc_opt_new();
  [v6 setScheme:@"sms"];
  [v6 setHost:@"open"];
  v7 = [MEMORY[0x1E696AF60] queryItemWithName:@"message-guid" value:v5];
  v13[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [v6 setQueryItems:v8];

  v9 = [v6 URL];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)urlForMailMessageWithId:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"SGEKEventConversions.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];
  }

  v6 = objc_opt_new();
  [v6 setScheme:@"message"];
  [v6 setPath:v5];
  v7 = [v6 URL];

  return v7;
}

+ (id)urlForEKEventFromMailMessageWithId:(id)a3 sentAt:(id)a4 opaqueKey:(id)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"SGEKEventConversions.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"sentAt"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:a1 file:@"SGEKEventConversions.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"messageId"}];

  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_9:
  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"SGEKEventConversions.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"opaqueKey"}];

LABEL_4:
  v12 = objc_opt_new();
  [v12 setScheme:@"message"];
  [v12 setPath:v9];
  v13 = MEMORY[0x1E696AF60];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  [v10 timeIntervalSince1970];
  v16 = [v14 initWithFormat:@"%lu", v15];
  v17 = [v13 queryItemWithName:@"c" value:v16];
  v26[0] = v17;
  v18 = [MEMORY[0x1E696AF60] queryItemWithName:@"k" value:v11];
  v26[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [v12 setQueryItems:v19];

  v20 = [v12 URL];

  v21 = *MEMORY[0x1E69E9840];

  return v20;
}

@end