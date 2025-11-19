@interface CPLSerializedFeedbackMessage
+ (id)messagesForPlistRepresentation:(id)a3;
+ (id)plistRepresentationForMessages:(id)a3;
- (CPLSerializedFeedbackMessage)initWithDictionaryRepresentation:(id)a3;
- (CPLSerializedFeedbackMessage)initWithMessage:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CPLSerializedFeedbackMessage

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<%@ [", objc_opt_class()];
  v4 = [(CPLServerFeedbackMessage *)self->_serverMessage keysAndValuesCount];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = @"%@='%@'";
    do
    {
      v8 = [(CPLServerFeedbackMessage *)self->_serverMessage keysAndValuesAtIndex:v6];
      v9 = [v8 key];
      v10 = [v8 value];
      [v3 appendFormat:v7, v9, v10];

      ++v6;
      v7 = @", %@='%@'";
    }

    while (v5 != v6);
  }

  [v3 appendString:@"]"];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v9[2] = *MEMORY[0x1E69E9840];
  v8[0] = @"uuid";
  v3 = [(NSUUID *)self->_uuid UUIDString];
  v8[1] = @"msg";
  v9[0] = v3;
  v4 = [(CPLServerFeedbackMessage *)self->_serverMessage data];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (CPLSerializedFeedbackMessage)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKeyedSubscript:@"uuid"];
    v6 = [v4 objectForKeyedSubscript:@"msg"];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
      if (v7)
      {
        v8 = [[CPLServerFeedbackMessage alloc] initWithData:v6];
        v9 = v8;
        if (v8 && [(CPLServerFeedbackMessage *)v8 keysAndValuesCount])
        {
          v10 = [(CPLServerFeedbackMessage *)v9 keysAndValuesAtIndex:0];
          if ([v10 hasKey] && objc_msgSend(v10, "hasValue") && (objc_msgSend(v10, "key"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", @"type"), v11, v12))
          {
            v19.receiver = self;
            v19.super_class = CPLSerializedFeedbackMessage;
            v13 = [(CPLSerializedFeedbackMessage *)&v19 init];
            v14 = v13;
            if (v13)
            {
              objc_storeStrong(&v13->_uuid, v7);
              v15 = [v10 value];
              feedbackType = v14->_feedbackType;
              v14->_feedbackType = v15;

              objc_storeStrong(&v14->_serverMessage, v9);
            }

            self = v14;
            v17 = self;
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CPLSerializedFeedbackMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CPLSerializedFeedbackMessage;
  v5 = [(CPLSerializedFeedbackMessage *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 feedbackType];
    v9 = [v8 copy];
    feedbackType = v5->_feedbackType;
    v5->_feedbackType = v9;

    v11 = [v4 serverMessage];
    serverMessage = v5->_serverMessage;
    v5->_serverMessage = v11;
  }

  return v5;
}

+ (id)messagesForPlistRepresentation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [CPLSerializedFeedbackMessage alloc];
          v12 = [(CPLSerializedFeedbackMessage *)v11 initWithDictionaryRepresentation:v10, v15];
          if (v12)
          {
            [v4 addObject:v12];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E695DEC8] array];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)plistRepresentationForMessages:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

@end