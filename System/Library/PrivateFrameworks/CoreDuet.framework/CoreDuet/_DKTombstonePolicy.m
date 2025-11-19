@interface _DKTombstonePolicy
+ (id)defaultPolicy;
- (NSArray)propertiesToFetchForTombstones;
- (NSPredicate)predicateForEventsRequiredToBeTombstoned;
- (_DKTombstonePolicy)initWithRequirements:(id)a3;
- (id)tombstonesForEvents:(id)a3 resultingFromRequirementsWithIdentifiers:(id *)a4;
- (id)tombstonesForPartialEvents:(id)a3 resultingFromRequirementsWithIdentifiers:(id *)a4;
- (void)eventPredicateForEventsRequiredToBeTombstoned;
@end

@implementation _DKTombstonePolicy

- (NSArray)propertiesToFetchForTombstones
{
  v25 = *MEMORY[0x1E69E9840];
  propertiesToFetchForTombstones = self->_propertiesToFetchForTombstones;
  if (!propertiesToFetchForTombstones)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{@"objectID", @"uuid", @"streamName", 0}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [(_DKTombstonePolicy *)self requirements];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = [v10 propertiesToFetch];
          if (v11)
          {
            v12 = v11;
            v13 = [v10 propertiesToFetch];
            v14 = [v13 count];

            if (v14)
            {
              v15 = [v10 propertiesToFetch];
              [v4 addObjectsFromArray:v15];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    v16 = [v4 copy];
    v17 = self->_propertiesToFetchForTombstones;
    self->_propertiesToFetchForTombstones = v16;

    propertiesToFetchForTombstones = self->_propertiesToFetchForTombstones;
  }

  v18 = *MEMORY[0x1E69E9840];

  return propertiesToFetchForTombstones;
}

+ (id)defaultPolicy
{
  v12[5] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(objc_opt_class());
  v3 = +[(_DKTombstoneRequirement *)_DKSyncStreamsTombstoneRequirement];
  v4 = +[(_DKTombstoneRequirement *)_DKAppIntentsStreamTombstoneRequirement];
  v12[1] = v4;
  v5 = +[(_DKTombstoneRequirement *)_DKAppActivityStreamTombstoneRequirement];
  v12[2] = v5;
  v6 = +[(_DKTombstoneRequirement *)_DKEligibleForPredictionTombstoneRequirement];
  v12[3] = v6;
  v7 = +[(_DKTombstoneRequirement *)_DKAppUsageTombstoneRequirement];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:5];
  v9 = [v2 initWithRequirements:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (_DKTombstonePolicy)initWithRequirements:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _DKTombstonePolicy;
  v6 = [(_DKTombstonePolicy *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requirements, a3);
  }

  return v7;
}

- (NSPredicate)predicateForEventsRequiredToBeTombstoned
{
  v24 = *MEMORY[0x1E69E9840];
  predicateForEventsRequiredToBeTombstoned = self->_predicateForEventsRequiredToBeTombstoned;
  if (!predicateForEventsRequiredToBeTombstoned)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [MEMORY[0x1E696AE18] predicateWithValue:0];
    v6 = [v4 initWithObjects:{v5, 0}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(_DKTombstonePolicy *)self requirements];
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          v13 = [v12 predicate];

          if (v13)
          {
            v14 = [v12 predicate];
            [v6 addObject:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v6];
    v16 = self->_predicateForEventsRequiredToBeTombstoned;
    self->_predicateForEventsRequiredToBeTombstoned = v15;

    predicateForEventsRequiredToBeTombstoned = self->_predicateForEventsRequiredToBeTombstoned;
  }

  v17 = *MEMORY[0x1E69E9840];

  return predicateForEventsRequiredToBeTombstoned;
}

- (id)tombstonesForPartialEvents:(id)a3 resultingFromRequirementsWithIdentifiers:(id *)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v6 = 0;
  }

  v43 = [MEMORY[0x1E695DF00] date];
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(_DKTombstonePolicy *)self predicateForEventsRequiredToBeTombstoned];
  v39 = v5;
  v8 = [v5 filteredArrayUsingPredicate:v7];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v55;
    v40 = *v55;
    do
    {
      v12 = 0;
      v44 = v10;
      do
      {
        if (*v55 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v54 + 1) + 8 * v12);
        v14 = [v13 objectForKeyedSubscript:@"streamName"];
        v15 = [v13 objectForKeyedSubscript:@"uuid"];
        v16 = v15;
        if (v14)
        {
          v17 = v15 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v49 = v12;
          v47 = v15;
          v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
          +[_DKSystemEventStreams tombstoneStream];
          v20 = v19 = v14;
          v46 = v18;
          v21 = [_DKUUIDIdentifier withUUID:v18];
          v22 = +[_DKTombstoneMetadataKey eventStreamName];
          v59 = v22;
          v60 = v19;
          v48 = v19;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v24 = [_DKEvent eventWithStream:v20 startDate:v43 endDate:v43 value:v21 metadata:v23];

          if (v24)
          {
            v52 = 0u;
            v53 = 0u;
            v50 = 0u;
            v51 = 0u;
            v25 = [(_DKTombstonePolicy *)self requirements];
            v26 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v51;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v51 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v50 + 1) + 8 * i);
                  v31 = [v30 predicate];
                  v32 = [v31 evaluateWithObject:v13];

                  if (v32)
                  {
                    [v30 assignPropertiesToTombstone:v24 extractedFromPartialEvent:v13];
                    if (v6)
                    {
                      v33 = [v30 identifier];

                      if (v33)
                      {
                        v34 = [v30 identifier];
                        [v6 addObject:v34];
                      }
                    }
                  }
                }

                v27 = [v25 countByEnumeratingWithState:&v50 objects:v58 count:16];
              }

              while (v27);
            }

            [v41 addObject:v24];
            v11 = v40;
          }

          v10 = v44;
          v14 = v48;
          v12 = v49;
          v16 = v47;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v10);
  }

  if (v38)
  {
    *v38 = [v6 copy];
  }

  v35 = [v41 copy];

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)eventPredicateForEventsRequiredToBeTombstoned
{
  v23 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = a1;
    v2 = a1[4];
    if (!v2)
    {
      v3 = objc_alloc(MEMORY[0x1E695DF70]);
      v4 = [MEMORY[0x1E696AE18] predicateWithValue:0];
      v5 = [v3 initWithObjects:{v4, 0}];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v6 = [v1 requirements];
      v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v19;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v18 + 1) + 8 * i);
            v12 = [v11 eventPredicate];
            if (!v12)
            {
              v12 = [v11 predicate];
              if (!v12)
              {
                continue;
              }
            }

            v13 = v12;
            [v5 addObject:v12];
          }

          v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v8);
      }

      v14 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v5];
      v15 = v1[4];
      v1[4] = v14;

      v2 = v1[4];
    }

    a1 = v2;
  }

  v16 = *MEMORY[0x1E69E9840];

  return a1;
}

- (id)tombstonesForEvents:(id)a3 resultingFromRequirementsWithIdentifiers:(id *)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v37 = a4;
  if (a4)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  else
  {
    v6 = 0;
  }

  v43 = [MEMORY[0x1E695DF00] date];
  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = [(_DKTombstonePolicy *)self eventPredicateForEventsRequiredToBeTombstoned];
  v38 = v5;
  v8 = [v5 filteredArrayUsingPredicate:v7];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v53;
    v39 = *v53;
    do
    {
      v12 = 0;
      v42 = v10;
      do
      {
        if (*v53 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        v14 = [v13 UUID];
        v15 = [v13 stream];
        v16 = [v15 name];

        if (v16 && v14)
        {
          v17 = +[_DKSystemEventStreams tombstoneStream];
          v47 = v14;
          v18 = [_DKUUIDIdentifier withUUID:v14];
          v19 = +[_DKTombstoneMetadataKey eventStreamName];
          v57 = v19;
          v58 = v16;
          v46 = v16;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
          v21 = [_DKEvent eventWithStream:v17 startDate:v43 endDate:v43 value:v18 metadata:v20];

          if (v21)
          {
            v45 = v12;
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v22 = [(_DKTombstonePolicy *)self requirements];
            v23 = [v22 countByEnumeratingWithState:&v48 objects:v56 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v49;
              do
              {
                for (i = 0; i != v24; ++i)
                {
                  if (*v49 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v48 + 1) + 8 * i);
                  v28 = [v27 eventPredicate];
                  v29 = v28;
                  if (v28)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = [v27 predicate];
                  }

                  v31 = v30;

                  if ([v31 evaluateWithObject:v13])
                  {
                    [v27 assignPropertiesToTombstone:v21 extractedFromEvent:v13];
                    if (v6)
                    {
                      v32 = [v27 identifier];

                      if (v32)
                      {
                        v33 = [v27 identifier];
                        [v6 addObject:v33];
                      }
                    }
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v48 objects:v56 count:16];
              }

              while (v24);
            }

            [v40 addObject:v21];
            v10 = v42;
            v11 = v39;
            v12 = v45;
          }

          v16 = v46;
          v14 = v47;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v52 objects:v59 count:16];
    }

    while (v10);
  }

  if (v37)
  {
    *v37 = [v6 copy];
  }

  v34 = [v40 copy];

  v35 = *MEMORY[0x1E69E9840];

  return v34;
}

@end