@interface MFIMAPCommandPipeline
- (id)failureResponsesFromSendingCommandsWithConnection:(id)connection;
- (void)_removeFetchUnitMatchingResponse:(id)response;
- (void)dealloc;
@end

@implementation MFIMAPCommandPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPCommandPipeline;
  [(MFIMAPCommandPipeline *)&v3 dealloc];
}

- (void)_removeFetchUnitMatchingResponse:(id)response
{
  v5 = [objc_msgSend(response fetchResultWithType:{8), "uid"}];
  if (v5)
  {
    v6 = v5;
    if ([(NSMutableArray *)self->_fetchUnits count])
    {
      v7 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:0];
      if ([v7 uid] == v6)
      {
        if ([v7 matchesFetchResponse:response])
        {
          fetchUnits = self->_fetchUnits;

          [(NSMutableArray *)fetchUnits removeObjectAtIndex:0];
        }
      }
    }
  }
}

- (id)failureResponsesFromSendingCommandsWithConnection:(id)connection
{
  v45[2] = *MEMORY[0x277D85DE8];
  [(MFIMAPCommandPipeline *)self mf_lock];
  v5 = [(NSMutableArray *)self->_fetchUnits count];
  if (!v5)
  {
    v19 = 0;
    v8 = 0;
    goto LABEL_49;
  }

  v6 = v5;
  connectionCopy = connection;
  v38 = 0;
  v7 = 0;
  v8 = 0;
  for (i = 0; i < v6; ++i)
  {
    connectionCopy = [(NSMutableArray *)self->_fetchUnits objectAtIndex:i, connectionCopy];
    v11 = [connectionCopy uid];
    fetchItem = [connectionCopy fetchItem];
    v39 = v8;
    if ([connectionCopy bodyDataConsumer] && objc_msgSend(connectionCopy, "consumerSection"))
    {
      v13 = objc_alloc_init(MFIMAPResponseConsumer);
      -[MFIMAPResponseConsumer addConsumer:forSection:](v13, "addConsumer:forSection:", [connectionCopy bodyDataConsumer], objc_msgSend(connectionCopy, "consumerSection"));
    }

    else
    {
      v13 = 0;
    }

    v14 = i + 1;
    if (i + 1 >= v6)
    {
      v15 = 0;
    }

    else
    {
      v15 = 0;
      do
      {
        v16 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:v14];
        if ([v16 uid] == v11)
        {
          [(NSMutableArray *)self->_fetchUnits removeObjectAtIndex:v14];
          [(NSMutableArray *)self->_fetchUnits insertObject:v16 atIndex:++i];
          if (([objc_msgSend(v16 "fetchItem")] & 1) == 0)
          {
            if (!v15)
            {
              v15 = objc_msgSend(@"("), "mutableCopyWithZone:", 0;
              [v15 appendString:fetchItem];
            }

            [v15 appendString:@" "];
            [v15 appendString:{objc_msgSend(v16, "fetchItem")}];
            if ([v16 bodyDataConsumer] && objc_msgSend(v16, "consumerSection"))
            {
              if (!v13)
              {
                v13 = objc_alloc_init(MFIMAPResponseConsumer);
              }

              -[MFIMAPResponseConsumer addConsumer:forSection:](v13, "addConsumer:forSection:", [v16 bodyDataConsumer], objc_msgSend(v16, "consumerSection"));
            }
          }
        }

        ++v14;
      }

      while (v6 != v14);
    }

    if (v39 != v38)
    {
      if (!v15)
      {
        goto LABEL_27;
      }

LABEL_26:
      [v15 appendString:@""]);
      fetchItem = v15;
      goto LABEL_27;
    }

    v17 = v39 + 16;
    v38 = v39 + 16;
    if (v7)
    {
      v7 = malloc_type_realloc(v7, 40 * v17, 0x1080040706A240DuLL);
      bzero(&v7[40 * v39], 0x280uLL);
      if (v15)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v7 = malloc_type_calloc(0x28uLL, v17, 0xFC7FA24uLL);
      if (v15)
      {
        goto LABEL_26;
      }
    }

LABEL_27:
    v18 = &v7[40 * v39];
    *v18 = 21;
    *(v18 + 4) = v13;
    v45[0] = EFStringWithInt();
    v45[1] = fetchItem;
    *(v18 + 1) = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:v45 count:2];
    if (v15)
    {
    }

    v8 = v39 + 1;
  }

  v19 = v7;
  if (v39 != -1)
  {
    *(self + 24) |= 2u;
    [connectionCopy mf_lock];
    Current = CFAbsoluteTimeGetCurrent();
    [connectionCopy _responseFromSendingCommands:v7 count:v8];
    [connectionCopy setReadBufferSizeFromElapsedTime:self->_expectedSize bytesRead:CFAbsoluteTimeGetCurrent() - Current];
    [connectionCopy mf_unlock];
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = *&v7[40 * v21 + 16];
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v41;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v40 + 1) + 8 * j);
            if ([v28 isUntagged] && objc_msgSend(v28, "responseType") == 17)
            {
              [(MFIMAPCommandPipeline *)self _removeFetchUnitMatchingResponse:v28];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v40 objects:v44 count:16];
        }

        while (v25);
      }

      v21 = ++v22;
    }

    while (v8 > v22);
    *(self + 24) &= ~2u;
  }

  connection = connectionCopy;
LABEL_49:
  if ([(NSMutableArray *)self->_fetchUnits count])
  {
    fetchUnits = self->_fetchUnits;
    self->_fetchUnits = 0;
  }

  else
  {
    fetchUnits = 0;
  }

  self->_expectedSize = 0;
  *(self + 24) &= ~1u;
  [(MFIMAPCommandPipeline *)self mf_unlock];
  [connection didFinishCommands:v19 count:v8];
  if (v19)
  {
    free(v19);
  }

  v30 = [(NSMutableArray *)fetchUnits count];
  if (v30)
  {
    v31 = v30;
    v32 = 0;
    do
    {
      v33 = [-[NSMutableArray objectAtIndex:](fetchUnits objectAtIndex:{v32), "copyFailedFetchResponse"}];
      if (v33)
      {
        v34 = v33;
        [(NSMutableArray *)fetchUnits replaceObjectAtIndex:v32 withObject:v33];

        ++v32;
      }

      else
      {
        [(NSMutableArray *)fetchUnits removeObjectAtIndex:v32];
        --v31;
      }
    }

    while (v32 < v31);
  }

  if (![(NSMutableArray *)fetchUnits count])
  {

    fetchUnits = 0;
  }

  result = fetchUnits;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

@end