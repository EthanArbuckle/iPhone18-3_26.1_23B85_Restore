@interface PKDiscoveryMessagesManifest
- (PKDiscoveryMessagesManifest)initWithDictionary:(id)dictionary;
@end

@implementation PKDiscoveryMessagesManifest

- (PKDiscoveryMessagesManifest)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = PKDiscoveryMessagesManifest;
  v5 = [(PKDiscoveryMessagesManifest *)&v36 init];
  if (v5)
  {
    v5->_version = [dictionaryCopy PKIntegerForKey:@"version"];
    v6 = [dictionaryCopy PKArrayForKey:@"engagementMessages"];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        do
        {
          v12 = 0;
          do
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [[PKDiscoveryEngagementMessage alloc] initWithDictionary:*(*(&v32 + 1) + 8 * v12)];
            if (v13)
            {
              [v7 addObject:v13];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v10);
      }

      v14 = [v7 copy];
      engagementMessages = v5->_engagementMessages;
      v5->_engagementMessages = v14;
    }

    v16 = [dictionaryCopy PKArrayForKey:@"notifications"];
    if (v16)
    {
      v27 = v6;
      v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v16, "count")}];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v29;
        do
        {
          v22 = 0;
          do
          {
            if (*v29 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = [[PKDiscoveryNotification alloc] initWithDictionary:*(*(&v28 + 1) + 8 * v22)];
            if (v23)
            {
              [v17 addObject:v23];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v20);
      }

      v24 = [v17 copy];
      notifications = v5->_notifications;
      v5->_notifications = v24;

      v6 = v27;
    }
  }

  return v5;
}

@end