@interface OSLogDeserializedEventStream
- (NSDate)firstDate;
- (NSDate)lastDate;
- (OSLogDeserializedEventStream)initWithDataSourceDelegate:(id)delegate;
- (id)_eventArrayFromData:(id)data;
- (id)_nextEventDictionary;
- (void)_iterateThroughEventsWithProxy:(id)proxy filter:(id)filter startingDate:(id)date;
- (void)_runInvalidationHandler:(unint64_t)handler;
- (void)_updateEventArray;
- (void)activateStreamFromDate:(id)date;
@end

@implementation OSLogDeserializedEventStream

- (void)activateStreamFromDate:(id)date
{
  dateCopy = date;
  queue = [(OSLogEventStreamBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__OSLogDeserializedEventStream_activateStreamFromDate___block_invoke;
  block[3] = &unk_2787AEE28;
  v9 = dateCopy;
  v10 = a2;
  block[4] = self;
  v7 = dateCopy;
  dispatch_async(queue, block);
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
  dataSourceDelegate = [(OSLogDeserializedEventStream *)self dataSourceDelegate];
  nextEventDataChunk = [dataSourceDelegate nextEventDataChunk];
  v5 = [(OSLogDeserializedEventStream *)self _eventArrayFromData:nextEventDataChunk];
  curEventArray = self->_curEventArray;
  self->_curEventArray = v5;

  curEventArray = [(OSLogDeserializedEventStream *)self curEventArray];
  objectEnumerator = [curEventArray objectEnumerator];
  eventDictionaryEnumerator = self->_eventDictionaryEnumerator;
  self->_eventDictionaryEnumerator = objectEnumerator;
}

- (id)_eventArrayFromData:(id)data
{
  if (data)
  {
    v9 = 0;
    v3 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v9];
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

- (void)_iterateThroughEventsWithProxy:(id)proxy filter:(id)filter startingDate:(id)date
{
  proxyCopy = proxy;
  filterCopy = filter;
  dateCopy = date;
  _nextEventDictionary = [(OSLogDeserializedEventStream *)self _nextEventDictionary];
  if (_nextEventDictionary)
  {
    v11 = _nextEventDictionary;
    LOBYTE(v12) = 0;
    while (1)
    {
      [proxyCopy setCurEventDictionary:v11];
      metadata = [(OSLogDeserializedEventStream *)self metadata];
      [proxyCopy setMetadata:metadata];

      v14 = 1;
      if (dateCopy && !v12)
      {
        date = [proxyCopy date];
        v12 = [date compare:dateCopy] != -1;

        v14 = v12;
      }

      if (filterCopy && v14)
      {
        v14 = [filterCopy evaluateWithObject:proxyCopy];
      }

      if (v14)
      {
        streamHandler = [(OSLogEventStreamBase *)self streamHandler];
        (streamHandler)[2](streamHandler, proxyCopy);

        if ([(OSLogEventStreamBase *)self invalidated])
        {
          break;
        }
      }

      _nextEventDictionary2 = [(OSLogDeserializedEventStream *)self _nextEventDictionary];

      v11 = _nextEventDictionary2;
      if (!_nextEventDictionary2)
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

- (void)_runInvalidationHandler:(unint64_t)handler
{
  invalidationHandler = [(OSLogEventStreamBase *)self invalidationHandler];

  if (invalidationHandler)
  {
    invalidationHandler2 = [(OSLogEventStreamBase *)self invalidationHandler];
    v6 = [OSLogEventStreamPosition alloc];
    invalidationHandler2[2](invalidationHandler2, handler, v6);
  }
}

- (id)_nextEventDictionary
{
  eventDictionaryEnumerator = [(OSLogDeserializedEventStream *)self eventDictionaryEnumerator];
  nextObject = [eventDictionaryEnumerator nextObject];

  if (!nextObject)
  {
    [(OSLogDeserializedEventStream *)self _updateEventArray];
    eventDictionaryEnumerator2 = [(OSLogDeserializedEventStream *)self eventDictionaryEnumerator];
    nextObject = [eventDictionaryEnumerator2 nextObject];
  }

  return nextObject;
}

- (OSLogDeserializedEventStream)initWithDataSourceDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = OSLogDeserializedEventStream;
  v6 = [(OSLogEventStreamBase *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceDelegate, delegate);
    dataSourceDelegate = [(OSLogDeserializedEventStream *)v7 dataSourceDelegate];
    metadataChunk = [dataSourceDelegate metadataChunk];

    v10 = [[_OSLogEventSerializationMetadata alloc] initWithDataRepresentation:metadataChunk];
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
  metadata = [(OSLogDeserializedEventStream *)self metadata];
  lastDate = [metadata lastDate];

  return lastDate;
}

- (NSDate)firstDate
{
  metadata = [(OSLogDeserializedEventStream *)self metadata];
  firstDate = [metadata firstDate];

  return firstDate;
}

@end