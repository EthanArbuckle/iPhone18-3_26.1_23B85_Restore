@interface NNHeadlineResultChange
- (NNHeadlineResultChange)initWithHeadlineResult:(id)a3;
- (NSString)sequencer;
@end

@implementation NNHeadlineResultChange

- (NNHeadlineResultChange)initWithHeadlineResult:(id)a3
{
  v5 = a3;
  v27.receiver = self;
  v27.super_class = NNHeadlineResultChange;
  v6 = [(NNHeadlineResultChange *)&v27 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_result, a3);
    v8 = [v5 sync_sections];
    v9 = [v8 count];

    if (v9)
    {
      v10 = +[NSMutableString string];
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v11 = [v5 sync_sections];
      v12 = [v11 copy];

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

            v19 = [v18 sync_identifier];
            [v10 appendString:v19];

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
  v2 = [(NNHeadlineResultChange *)self result];
  v3 = [v2 sync_expirationDate];
  [v3 timeIntervalSinceReferenceDate];
  v4 = [NSNumber numberWithDouble:?];
  v5 = [v4 stringValue];

  return v5;
}

@end