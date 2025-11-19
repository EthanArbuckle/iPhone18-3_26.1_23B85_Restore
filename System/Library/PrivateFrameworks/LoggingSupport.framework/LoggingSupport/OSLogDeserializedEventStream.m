@interface OSLogDeserializedEventStream
- (NSDate)firstDate;
- (NSDate)lastDate;
- (OSLogDeserializedEventStream)initWithDataSourceDelegate:(id)a3;
- (id)_eventArrayFromData:(id)a3;
- (id)_nextEventDictionary;
- (void)_iterateThroughEventsWithProxy:(id)a3 filter:(id)a4 startingDate:(id)a5;
- (void)_runInvalidationHandler:(unint64_t)a3;
- (void)_updateEventArray;
- (void)activateStreamFromDate:(id)a3;
@end

@implementation OSLogDeserializedEventStream

- (void)activateStreamFromDate:(id)a3
{
  v5 = a3;
  v6 = [(OSLogEventStreamBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__OSLogDeserializedEventStream_activateStreamFromDate___block_invoke;
  block[3] = &unk_2787AEE28;
  v9 = v5;
  v10 = a2;
  block[4] = self;
  v7 = v5;
  dispatch_async(v6, block);
}

void __55__OSLogDeserializedEventStream_activateStreamFromDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) streamHandler];

  if (!v2)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"EventSerializer.m" lineNumber:807 description:{@"Cannot activate %@ without streamHandler block", objc_opt_class()}];
  }

  if ([*(a1 + 32) hasActivated])
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"EventSerializer.m" lineNumber:808 description:{@"Cannot activate the same %@ instance twice", objc_opt_class()}];
  }

  [*(a1 + 32) setHasActivated:1];
  [*(a1 + 32) _updateEventArray];
  v6 = [*(a1 + 32) filterPredicate];
  v3 = +[(OSLogEventProxy *)_OSLogDeserializedEventProxy];
  [*(a1 + 32) _iterateThroughEventsWithProxy:v3 filter:v6 startingDate:*(a1 + 40)];
  [v3 _unmake];
}

- (void)_updateEventArray
{
  v3 = [(OSLogDeserializedEventStream *)self dataSourceDelegate];
  v4 = [v3 nextEventDataChunk];
  v5 = [(OSLogDeserializedEventStream *)self _eventArrayFromData:v4];
  curEventArray = self->_curEventArray;
  self->_curEventArray = v5;

  v9 = [(OSLogDeserializedEventStream *)self curEventArray];
  v7 = [v9 objectEnumerator];
  eventDictionaryEnumerator = self->_eventDictionaryEnumerator;
  self->_eventDictionaryEnumerator = v7;
}

- (id)_eventArrayFromData:(id)a3
{
  if (a3)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v9];
    v4 = v9;
    if (v3)
    {
      objc_opt_class();
      v5 = 0;
      if ((objc_opt_isKindOfClass() & 1) != 0 && !v4)
      {
        v6 = [v3 objectForKeyedSubscript:@"Version"];
        if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ![v6 unsignedIntValue])
        {
          v8 = [v3 objectForKeyedSubscript:@"Events"];
          if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v5 = v8;
          }

          else
          {
            v5 = 0;
          }
        }

        else
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_iterateThroughEventsWithProxy:(id)a3 filter:(id)a4 startingDate:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(OSLogDeserializedEventStream *)self _nextEventDictionary];
  if (v10)
  {
    v11 = v10;
    LOBYTE(v12) = 0;
    while (1)
    {
      [v18 setCurEventDictionary:v11];
      v13 = [(OSLogDeserializedEventStream *)self metadata];
      [v18 setMetadata:v13];

      v14 = 1;
      if (v9 && !v12)
      {
        v15 = [v18 date];
        v12 = [v15 compare:v9] != -1;

        v14 = v12;
      }

      if (v8 && v14)
      {
        v14 = [v8 evaluateWithObject:v18];
      }

      if (v14)
      {
        v16 = [(OSLogEventStreamBase *)self streamHandler];
        (v16)[2](v16, v18);

        if ([(OSLogEventStreamBase *)self invalidated])
        {
          break;
        }
      }

      v17 = [(OSLogDeserializedEventStream *)self _nextEventDictionary];

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }

    [(OSLogDeserializedEventStream *)self _runInvalidationHandler:4];
  }

  else
  {
LABEL_12:
    if (![(OSLogEventStreamBase *)self invalidated])
    {
      [(OSLogEventStreamBase *)self invalidate];
      [(OSLogDeserializedEventStream *)self _runInvalidationHandler:5];
    }
  }
}

- (void)_runInvalidationHandler:(unint64_t)a3
{
  v5 = [(OSLogEventStreamBase *)self invalidationHandler];

  if (v5)
  {
    v7 = [(OSLogEventStreamBase *)self invalidationHandler];
    v6 = [OSLogEventStreamPosition alloc];
    v7[2](v7, a3, v6);
  }
}

- (id)_nextEventDictionary
{
  v3 = [(OSLogDeserializedEventStream *)self eventDictionaryEnumerator];
  v4 = [v3 nextObject];

  if (!v4)
  {
    [(OSLogDeserializedEventStream *)self _updateEventArray];
    v5 = [(OSLogDeserializedEventStream *)self eventDictionaryEnumerator];
    v4 = [v5 nextObject];
  }

  return v4;
}

- (OSLogDeserializedEventStream)initWithDataSourceDelegate:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = OSLogDeserializedEventStream;
  v6 = [(OSLogEventStreamBase *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceDelegate, a3);
    v8 = [(OSLogDeserializedEventStream *)v7 dataSourceDelegate];
    v9 = [v8 metadataChunk];

    v10 = [[_OSLogEventSerializationMetadata alloc] initWithDataRepresentation:v9];
    if (!v10)
    {

      v12 = 0;
      goto LABEL_6;
    }

    metadata = v7->_metadata;
    v7->_metadata = v10;
  }

  v12 = v7;
LABEL_6:

  return v12;
}

- (NSDate)lastDate
{
  v2 = [(OSLogDeserializedEventStream *)self metadata];
  v3 = [v2 lastDate];

  return v3;
}

- (NSDate)firstDate
{
  v2 = [(OSLogDeserializedEventStream *)self metadata];
  v3 = [v2 firstDate];

  return v3;
}

@end