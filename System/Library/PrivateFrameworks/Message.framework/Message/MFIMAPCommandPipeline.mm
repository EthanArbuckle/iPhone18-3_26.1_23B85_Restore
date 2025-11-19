@interface MFIMAPCommandPipeline
- (id)failureResponsesFromSendingCommandsWithConnection:(id)a3;
- (void)_removeFetchUnitMatchingResponse:(id)a3;
@end

@implementation MFIMAPCommandPipeline

- (void)_removeFetchUnitMatchingResponse:(id)a3
{
  v7 = a3;
  v4 = [v7 fetchResultWithType:8];
  v5 = [v4 uid];

  if (v5 && [(NSMutableArray *)self->_fetchUnits count])
  {
    v6 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:0];
    if ([v6 uid] == v5 && objc_msgSend(v6, "matchesFetchResponse:", v7))
    {
      [(NSMutableArray *)self->_fetchUnits removeObjectAtIndex:0];
    }
  }
}

- (id)failureResponsesFromSendingCommandsWithConnection:(id)a3
{
  v67[2] = *MEMORY[0x1E69E9840];
  v52 = a3;
  v54 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(MFIMAPCommandPipeline *)self mf_lock];
  v4 = [(NSMutableArray *)self->_fetchUnits count];
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v55 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:i, v52];
      v6 = [v55 uid];
      v56 = [v55 fetchItem];
      v7 = [v55 bodyDataConsumer];
      if (!v7 || ([v55 consumerSection], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, v7, v9))
      {
        v10 = 0;
      }

      else
      {
        v10 = objc_alloc_init(MFIMAPResponseConsumer);
        v11 = [v55 bodyDataConsumer];
        v12 = [v55 consumerSection];
        [(MFIMAPResponseConsumer *)v10 addConsumer:v11 forSection:v12];
      }

      v13 = i + 1;
      if (i + 1 >= v4)
      {
        v14 = 0;
        v25 = 1;
      }

      else
      {
        v14 = 0;
        v15 = v10;
        do
        {
          v16 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:v13];
          if ([v16 uid] == v6)
          {
            [(NSMutableArray *)self->_fetchUnits removeObjectAtIndex:v13];
            [(NSMutableArray *)self->_fetchUnits insertObject:v16 atIndex:++i];
            v17 = [v16 fetchItem];
            v18 = [v17 isEqual:v56];

            if ((v18 & 1) == 0)
            {
              if (!v14)
              {
                v14 = objc_msgSend(@"("), "mutableCopyWithZone:", 0;
                [v14 appendString:v56];
              }

              [v14 appendString:@" "];
              v19 = [v16 fetchItem];
              [v14 appendString:v19];

              v20 = [v16 bodyDataConsumer];
              if (v20)
              {
                v21 = [v16 consumerSection];
                v22 = v21 == 0;

                if (!v22)
                {
                  if (!v15)
                  {
                    v15 = objc_alloc_init(MFIMAPResponseConsumer);
                  }

                  v23 = [v16 bodyDataConsumer];
                  v24 = [v16 consumerSection];
                  [(MFIMAPResponseConsumer *)v15 addConsumer:v23 forSection:v24];
                }
              }
            }
          }

          ++v13;
        }

        while (v4 != v13);
        if (v14)
        {
          [v14 appendString:@""]);
          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v10 = v15;
      }

      v26 = [_MFIMAPCommandParameters alloc];
      v27 = EFStringWithInt();
      v28 = v27;
      v29 = v56;
      if (!v25)
      {
        v29 = v14;
      }

      v67[0] = v27;
      v67[1] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:2];
      v31 = [(_MFIMAPCommandParameters *)v26 initWithCommand:21 arguments:v30];

      [(_MFIMAPCommandParameters *)v31 setResponseConsumer:v10];
      [v54 addObject:v31];
    }
  }

  if ([v54 count])
  {
    *(self + 24) |= 2u;
    [v53 mf_lock];
    Current = CFAbsoluteTimeGetCurrent();
    v33 = [v53 _responseFromSendingCommands:v54];
    [v53 setReadBufferSizeFromElapsedTime:self->_expectedSize bytesRead:CFAbsoluteTimeGetCurrent() - Current];
    [v53 mf_unlock];
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v34 = v54;
    v35 = [v34 countByEnumeratingWithState:&v61 objects:v66 count:16];
    if (v35)
    {
      v36 = *v62;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v62 != v36)
          {
            objc_enumerationMutation(v34);
          }

          v38 = [*(*(&v61 + 1) + 8 * j) untaggedResponses];
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v39 = v38;
          v40 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v40)
          {
            v41 = *v58;
            do
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v58 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = *(*(&v57 + 1) + 8 * k);
                if ([v43 isUntagged] && objc_msgSend(v43, "responseType") == 17)
                {
                  [(MFIMAPCommandPipeline *)self _removeFetchUnitMatchingResponse:v43];
                }
              }

              v40 = [v39 countByEnumeratingWithState:&v57 objects:v65 count:16];
            }

            while (v40);
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v61 objects:v66 count:16];
      }

      while (v35);
    }

    *(self + 24) &= ~2u;
  }

  if ([(NSMutableArray *)self->_fetchUnits count])
  {
    v44 = self->_fetchUnits;
    fetchUnits = self->_fetchUnits;
    self->_fetchUnits = 0;
  }

  else
  {
    v44 = 0;
  }

  self->_expectedSize = 0;
  *(self + 24) &= ~1u;
  [(MFIMAPCommandPipeline *)self mf_unlock];
  [v53 didFinishCommands:v54];
  v46 = [(NSMutableArray *)v44 count];
  if (v46)
  {
    v47 = 0;
    do
    {
      v48 = [(NSMutableArray *)v44 objectAtIndex:v47];
      v49 = [v48 copyFailedFetchResponse];
      if (v49)
      {
        [(NSMutableArray *)v44 replaceObjectAtIndex:v47++ withObject:v49];
      }

      else
      {
        [(NSMutableArray *)v44 removeObjectAtIndex:v47];
        --v46;
      }
    }

    while (v47 < v46);
  }

  if (![(NSMutableArray *)v44 count])
  {

    v44 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];

  return v44;
}

@end