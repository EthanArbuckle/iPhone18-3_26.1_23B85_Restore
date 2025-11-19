@interface CSTrackQueuedMessage
- (CSTrackQueuedMessage)initWithMessage:(id)a3;
- (CSTrackQueuedMessage)initWithQueuedTracks:(id)a3 shouldQueueOnServer:(BOOL)a4;
- (id)dictionaryRepresentation;
@end

@implementation CSTrackQueuedMessage

- (CSTrackQueuedMessage)initWithQueuedTracks:(id)a3 shouldQueueOnServer:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CSTrackQueuedMessage;
  v7 = [(CSTrackQueuedMessage *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    queuedTracks = v7->_queuedTracks;
    v7->_queuedTracks = v8;

    v7->_shouldQueueOnServer = a4;
  }

  return v7;
}

- (CSTrackQueuedMessage)initWithMessage:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CSTrackQueuedMessage;
  v5 = [(CSTrackQueuedMessage *)&v26 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  NSDictionaryGetNSArrayOfClass();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v25 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [[CSQueuedTrack alloc] initWithDictionary:*(*(&v22 + 1) + 8 * v11)];
        if (!v12)
        {
          v18 = ContinuitySingLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [CSTrackQueuedMessage initWithMessage:];
          }

          v19 = v7;
          goto LABEL_16;
        }

        v13 = v12;
        [v6 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  if ([v6 count])
  {
    v14 = [v6 copy];
    queuedTracks = v5->_queuedTracks;
    v5->_queuedTracks = v14;

    v16 = NSDictionaryGetNSNumber();
    v5->_shouldQueueOnServer = [v16 BOOLValue];

LABEL_12:
    v17 = v5;
    goto LABEL_17;
  }

  v19 = ContinuitySingLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [CSTrackQueuedMessage initWithMessage:];
  }

LABEL_16:

  v17 = 0;
LABEL_17:

  return v17;
}

- (id)dictionaryRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_queuedTracks, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_queuedTracks;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v6);
  }

  v14.receiver = self;
  v14.super_class = CSTrackQueuedMessage;
  v10 = [(CSMessage *)&v14 dictionaryRepresentation];
  v11 = [v10 mutableCopy];

  [v11 setObject:v3 forKeyedSubscript:@"QueuedTracks"];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldQueueOnServer];
  [v11 setObject:v12 forKeyedSubscript:@"QueueOnServer"];

  return v11;
}

- (void)initWithMessage:.cold.1()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2441FB000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to decode CSTrackQueuedMessage with message: %@", v1, 0x16u);
}

- (void)initWithMessage:.cold.2()
{
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2441FB000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to decode CSTrackQueuedMessage (empty tracks array) with message: %@", v1, 0x16u);
}

@end