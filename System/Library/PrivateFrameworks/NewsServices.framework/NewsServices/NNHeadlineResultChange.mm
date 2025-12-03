@interface NNHeadlineResultChange
- (NNHeadlineResultChange)initWithHeadlineResult:(id)result;
- (NSString)sequencer;
@end

@implementation NNHeadlineResultChange

- (NNHeadlineResultChange)initWithHeadlineResult:(id)result
{
  resultCopy = result;
  v27.receiver = self;
  v27.super_class = NNHeadlineResultChange;
  v6 = [(NNHeadlineResultChange *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, result);
    sync_sections = [resultCopy sync_sections];
    v9 = [sync_sections count];

    if (v9)
    {
      v10 = +[NSMutableString string];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      sync_sections2 = [resultCopy sync_sections];
      v12 = [sync_sections2 copy];

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v24;
        do
        {
          v17 = 0;
          do
          {
            if (*v24 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v23 + 1) + 8 * v17);
            if (v15)
            {
              [v10 appendString:{@", "}];
            }

            sync_identifier = [v18 sync_identifier];
            [v10 appendString:sync_identifier];

            v17 = v17 + 1;
            v15 = 1;
          }

          while (v14 != v17);
          v14 = [v12 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v14);
      }

      v20 = [v10 copy];
      identifier = v7->_identifier;
      v7->_identifier = v20;
    }

    else
    {
      v10 = v7->_identifier;
      v7->_identifier = @"sync-zero-results";
    }
  }

  return v7;
}

- (NSString)sequencer
{
  result = [(NNHeadlineResultChange *)self result];
  sync_expirationDate = [result sync_expirationDate];
  [sync_expirationDate timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  stringValue = [v4 stringValue];

  return stringValue;
}

@end