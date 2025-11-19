@interface MFDAMoveResponseConsumer
- (MFDAMoveResponseConsumer)initWithSourceRemoteIDs:(id)a3 destinationRemoteIDsBySourceRemoteIDs:(id)a4 failures:(id)a5;
- (void)resultsForMessageMove:(id)a3;
- (void)taskFailed:(id)a3 statusCode:(int64_t)a4 error:(id)a5;
@end

@implementation MFDAMoveResponseConsumer

- (MFDAMoveResponseConsumer)initWithSourceRemoteIDs:(id)a3 destinationRemoteIDsBySourceRemoteIDs:(id)a4 failures:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MFDAMoveResponseConsumer;
  v12 = [(MFDAMailAccountConsumer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceRemoteIDs, a3);
    objc_storeStrong(&v13->_destinationRemoteIDsBySourceRemoteIDs, a4);
    objc_storeStrong(&v13->_failures, a5);
    v13->_statusCode = 2;
  }

  return v13;
}

- (void)taskFailed:(id)a3 statusCode:(int64_t)a4 error:(id)a5
{
  v11 = a3;
  v8 = a5;
  self->_statusCode = a4;
  if (((a4 - 63) & 0xFFFFFFFFFFFFFFEFLL) != 0)
  {
    v9 = 1030;
  }

  else
  {
    v9 = 1032;
  }

  v10 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:v9 localizedDescription:0];
  if (v10)
  {
    [(NSMutableSet *)self->_failures unionSet:self->_sourceRemoteIDs];
    [(MFDAMoveResponseConsumer *)self setError:v10];
  }
}

- (void)resultsForMessageMove:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v7 = *v17;
    *&v6 = 138543362;
    v15 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [v9 sourceID];
        if (!v10 || ![(NSSet *)self->_sourceRemoteIDs containsObject:v10])
        {
          v11 = DALoggingwithCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v21 = v9;
            v22 = 2112;
            v23 = v10;
            _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "got %@ with untracked sourceID %@", buf, 0x16u);
          }

          goto LABEL_13;
        }

        if ([v9 status] == 3)
        {
          v11 = [v9 destID];
          if (v11)
          {
            [(NSMutableDictionary *)self->_destinationRemoteIDsBySourceRemoteIDs setObject:v11 forKeyedSubscript:v10];
          }

          else
          {
            v12 = DALoggingwithCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = v10;
              _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "Move succeeded but missing new remote ID for message ID: %{public}@", buf, 0xCu);
            }
          }

LABEL_13:

          goto LABEL_14;
        }

        [(NSMutableSet *)self->_failures addObject:v10];
LABEL_14:

        ++v8;
      }

      while (v5 != v8);
      v13 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      v5 = v13;
    }

    while (v13);
  }

  [(MFDAMailAccountConsumer *)self setDone:1];
  v14 = *MEMORY[0x1E69E9840];
}

@end