@interface MFDAMoveResponseConsumer
- (MFDAMoveResponseConsumer)initWithSourceRemoteIDs:(id)ds destinationRemoteIDsBySourceRemoteIDs:(id)iDs failures:(id)failures;
- (void)resultsForMessageMove:(id)move;
- (void)taskFailed:(id)failed statusCode:(int64_t)code error:(id)error;
@end

@implementation MFDAMoveResponseConsumer

- (MFDAMoveResponseConsumer)initWithSourceRemoteIDs:(id)ds destinationRemoteIDsBySourceRemoteIDs:(id)iDs failures:(id)failures
{
  dsCopy = ds;
  iDsCopy = iDs;
  failuresCopy = failures;
  v15.receiver = self;
  v15.super_class = MFDAMoveResponseConsumer;
  v12 = [(MFDAMailAccountConsumer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sourceRemoteIDs, ds);
    objc_storeStrong(&v13->_destinationRemoteIDsBySourceRemoteIDs, iDs);
    objc_storeStrong(&v13->_failures, failures);
    v13->_statusCode = 2;
  }

  return v13;
}

- (void)taskFailed:(id)failed statusCode:(int64_t)code error:(id)error
{
  failedCopy = failed;
  errorCopy = error;
  self->_statusCode = code;
  if (((code - 63) & 0xFFFFFFFFFFFFFFEFLL) != 0)
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

- (void)resultsForMessageMove:(id)move
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  moveCopy = move;
  v5 = [moveCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
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
          objc_enumerationMutation(moveCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        sourceID = [v9 sourceID];
        if (!sourceID || ![(NSSet *)self->_sourceRemoteIDs containsObject:sourceID])
        {
          destID = DALoggingwithCategory();
          if (os_log_type_enabled(destID, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v21 = v9;
            v22 = 2112;
            v23 = sourceID;
            _os_log_impl(&dword_1B0389000, destID, OS_LOG_TYPE_DEFAULT, "got %@ with untracked sourceID %@", buf, 0x16u);
          }

          goto LABEL_13;
        }

        if ([v9 status] == 3)
        {
          destID = [v9 destID];
          if (destID)
          {
            [(NSMutableDictionary *)self->_destinationRemoteIDsBySourceRemoteIDs setObject:destID forKeyedSubscript:sourceID];
          }

          else
          {
            v12 = DALoggingwithCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = sourceID;
              _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "Move succeeded but missing new remote ID for message ID: %{public}@", buf, 0xCu);
            }
          }

LABEL_13:

          goto LABEL_14;
        }

        [(NSMutableSet *)self->_failures addObject:sourceID];
LABEL_14:

        ++v8;
      }

      while (v5 != v8);
      v13 = [moveCopy countByEnumeratingWithState:&v16 objects:v24 count:16];
      v5 = v13;
    }

    while (v13);
  }

  [(MFDAMailAccountConsumer *)self setDone:1];
  v14 = *MEMORY[0x1E69E9840];
}

@end