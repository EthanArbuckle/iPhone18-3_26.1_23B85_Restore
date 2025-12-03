@interface OSLogEventSerializer
- (NSPredicate)filterPredicate;
- (OSLogEventSerializer)initWithSource:(id)source dataProcessingBlock:(id)block completionBlock:(id)completionBlock;
- (OSLogEventSource)source;
- (OS_dispatch_queue)target;
- (id)_arrayForDecomposedMessage:(id)message indicesToRedact:(id)redact;
- (id)_dictForArg:(id)arg shouldRedactValue:(BOOL)value;
- (id)_dictForDecomposedMessage:(id)message indicesToRedact:(id)redact;
- (id)_dictForPlaceholder:(id)placeholder;
- (id)_dictionaryForProxy:(id)proxy;
- (unint64_t)flags;
- (void)_completeBatch:(id)batch;
- (void)_serializeEvent:(id)event;
- (void)invalidate;
- (void)serializeFromDate:(id)date;
- (void)serializeFromDate:(id)date toDate:(id)toDate;
- (void)serializeFromLastBoot;
- (void)serializeFromPosition:(id)position;
- (void)setFilterPredicate:(id)predicate;
- (void)setFlags:(unint64_t)flags;
- (void)setTarget:(id)target;
@end

@implementation OSLogEventSerializer

- (void)_completeBatch:(id)batch
{
  v16[2] = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v15[0] = @"Version";
  v15[1] = @"Events";
  v16[0] = &unk_2841B9228;
  curBatchDictionaries = [(OSLogEventSerializer *)self curBatchDictionaries];
  v16[1] = curBatchDictionaries;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v14 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v7 format:200 options:0 error:&v14];
  v9 = v14;
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:616 description:@"Failed to serialize to plist format"];
  }

  batchCopy[2](batchCopy, v8);
  self->_curBatchSize = 0;
  array = [MEMORY[0x277CBEB18] array];
  curBatchDictionaries = self->_curBatchDictionaries;
  self->_curBatchDictionaries = array;

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_dictionaryForProxy:(id)proxy
{
  proxyCopy = proxy;
  if (!proxyCopy)
  {
    v14 = 0;
    goto LABEL_123;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  argumentRedactionBlock = self->_argumentRedactionBlock;
  if (argumentRedactionBlock)
  {
    v7 = argumentRedactionBlock[2](argumentRedactionBlock, proxyCopy);
    v8 = v7;
    if (v7)
    {
      if ([v7 count])
      {
        firstIndex = [v8 firstIndex];
        decomposedMessage = [proxyCopy decomposedMessage];
        placeholderCount = [decomposedMessage placeholderCount];

        if (firstIndex < placeholderCount)
        {
          metadata = [(OSLogEventSerializer *)self metadata];
          composedMessage2 = [metadata indexForString:@"<value-redacted>"];
          [dictionary setObject:composedMessage2 forKeyedSubscript:@"cm"];
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  composedMessage = [proxyCopy composedMessage];

  if (!composedMessage)
  {
    goto LABEL_12;
  }

  metadata = [(OSLogEventSerializer *)self metadata];
  composedMessage2 = [proxyCopy composedMessage];
  v16 = [metadata indexForString:composedMessage2];
  [dictionary setObject:v16 forKeyedSubscript:@"cm"];

LABEL_11:
LABEL_12:
  processImagePath = [proxyCopy processImagePath];

  if (processImagePath)
  {
    metadata2 = [(OSLogEventSerializer *)self metadata];
    processImagePath2 = [proxyCopy processImagePath];
    v20 = [metadata2 indexForString:processImagePath2];
    [dictionary setObject:v20 forKeyedSubscript:@"pip"];
  }

  process = [proxyCopy process];

  if (process)
  {
    metadata3 = [(OSLogEventSerializer *)self metadata];
    process2 = [proxyCopy process];
    v24 = [metadata3 indexForString:process2];
    [dictionary setObject:v24 forKeyedSubscript:@"p"];
  }

  senderImagePath = [proxyCopy senderImagePath];

  if (senderImagePath)
  {
    metadata4 = [(OSLogEventSerializer *)self metadata];
    senderImagePath2 = [proxyCopy senderImagePath];
    v28 = [metadata4 indexForString:senderImagePath2];
    [dictionary setObject:v28 forKeyedSubscript:@"sip"];
  }

  sender = [proxyCopy sender];

  if (sender)
  {
    metadata5 = [(OSLogEventSerializer *)self metadata];
    sender2 = [proxyCopy sender];
    v32 = [metadata5 indexForString:sender2];
    [dictionary setObject:v32 forKeyedSubscript:@"send"];
  }

  if ([proxyCopy type])
  {
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(proxyCopy, "type")}];
    [dictionary setObject:v33 forKeyedSubscript:@"t"];
  }

  if ([proxyCopy logType])
  {
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(proxyCopy, "logType")}];
    [dictionary setObject:v34 forKeyedSubscript:@"lt"];
  }

  if ([proxyCopy size])
  {
    v35 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(proxyCopy, "size")}];
    [dictionary setObject:v35 forKeyedSubscript:@"s"];
  }

  if ([proxyCopy timeToLive])
  {
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "timeToLive")}];
    [dictionary setObject:v36 forKeyedSubscript:@"ttl"];
  }

  if ([proxyCopy traceIdentifier])
  {
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "traceIdentifier")}];
    [dictionary setObject:v37 forKeyedSubscript:@"ti"];
  }

  if ([proxyCopy threadIdentifier])
  {
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "threadIdentifier")}];
    [dictionary setObject:v38 forKeyedSubscript:@"tid"];
  }

  if ([proxyCopy processIdentifier])
  {
    v39 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(proxyCopy, "processIdentifier")}];
    [dictionary setObject:v39 forKeyedSubscript:@"pid"];
  }

  if ([proxyCopy activityIdentifier])
  {
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "activityIdentifier")}];
    [dictionary setObject:v40 forKeyedSubscript:@"aid"];
  }

  if ([proxyCopy parentActivityIdentifier])
  {
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "parentActivityIdentifier")}];
    [dictionary setObject:v41 forKeyedSubscript:@"paid"];
  }

  if ([proxyCopy transitionActivityIdentifier])
  {
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "transitionActivityIdentifier")}];
    [dictionary setObject:v42 forKeyedSubscript:@"tai"];
  }

  if ([proxyCopy continuousNanosecondsSinceBoot])
  {
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "continuousNanosecondsSinceBoot")}];
    [dictionary setObject:v43 forKeyedSubscript:@"ns"];
  }

  if ([proxyCopy machContinuousTimestamp])
  {
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "machContinuousTimestamp")}];
    [dictionary setObject:v44 forKeyedSubscript:@"mct"];
  }

  if ([proxyCopy senderImageOffset])
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "senderImageOffset")}];
    [dictionary setObject:v45 forKeyedSubscript:@"sio"];
  }

  bootUUID = [proxyCopy bootUUID];

  if (bootUUID)
  {
    bootUUID2 = [proxyCopy bootUUID];
    v48 = _dataForUUID(bootUUID2);
    [dictionary setObject:v48 forKeyedSubscript:@"b"];
  }

  processImageUUID = [proxyCopy processImageUUID];

  if (processImageUUID)
  {
    processImageUUID2 = [proxyCopy processImageUUID];
    v51 = _dataForUUID(processImageUUID2);
    [dictionary setObject:v51 forKeyedSubscript:@"piu"];
  }

  senderImageUUID = [proxyCopy senderImageUUID];

  if (senderImageUUID)
  {
    senderImageUUID2 = [proxyCopy senderImageUUID];
    v54 = _dataForUUID(senderImageUUID2);
    [dictionary setObject:v54 forKeyedSubscript:@"siu"];
  }

  if ([proxyCopy unixDate])
  {
    v55 = _dictForTimeval([proxyCopy unixDate]);

    if (v55)
    {
      v56 = _dictForTimeval([proxyCopy unixDate]);
      [dictionary setObject:v56 forKeyedSubscript:@"ud"];
    }
  }

  if ([proxyCopy unixTimeZone])
  {
    v57 = _dictForTimezone([proxyCopy unixTimeZone]);

    if (v57)
    {
      v58 = _dictForTimezone([proxyCopy unixTimeZone]);
      [dictionary setObject:v58 forKeyedSubscript:@"utz"];
    }
  }

  backtrace = [proxyCopy backtrace];
  if (backtrace)
  {
    v60 = backtrace;
    backtrace2 = [proxyCopy backtrace];
    frames = [backtrace2 frames];
    v63 = [frames count];

    if (v63 >= 2)
    {
      backtrace3 = [proxyCopy backtrace];
      v65 = _dictArrayForBacktrace(backtrace3);

      if (v65)
      {
        backtrace4 = [proxyCopy backtrace];
        v67 = _dictArrayForBacktrace(backtrace4);
        [dictionary setObject:v67 forKeyedSubscript:@"bt"];
      }
    }
  }

  type = [proxyCopy type];
  if (type > 1535)
  {
    if (type != 1536)
    {
      if (type != 1792)
      {
        if (type != 2048)
        {
          goto LABEL_122;
        }

        metricLabel = [proxyCopy metricLabel];

        if (metricLabel)
        {
          metadata6 = [(OSLogEventSerializer *)self metadata];
          metricLabel2 = [proxyCopy metricLabel];
          v72 = [metadata6 indexForString:metricLabel2];
          [dictionary setObject:v72 forKeyedSubscript:@"mtl"];
        }

        metricDimensions = [proxyCopy metricDimensions];

        if (metricDimensions)
        {
          metricDimensions2 = [proxyCopy metricDimensions];
          [dictionary setObject:metricDimensions2 forKeyedSubscript:@"mtdi"];
        }

        metricMetadata = [proxyCopy metricMetadata];

        if (metricMetadata)
        {
          metricMetadata2 = [proxyCopy metricMetadata];
          [dictionary setObject:metricMetadata2 forKeyedSubscript:@"mtm"];
        }

        metricData = [proxyCopy metricData];

        if (metricData)
        {
          metricData2 = [proxyCopy metricData];
          [dictionary setObject:metricData2 forKeyedSubscript:@"mtd"];
        }

        subsystem = [proxyCopy subsystem];

        if (subsystem)
        {
          metadata7 = [(OSLogEventSerializer *)self metadata];
          subsystem2 = [proxyCopy subsystem];
          v82 = [metadata7 indexForString:subsystem2];
          [dictionary setObject:v82 forKeyedSubscript:@"sub"];
        }

        category = [proxyCopy category];

        if (!category)
        {
          goto LABEL_122;
        }

        metadata8 = [(OSLogEventSerializer *)self metadata];
        category2 = [proxyCopy category];
        v86 = [metadata8 indexForString:category2];
        [dictionary setObject:v86 forKeyedSubscript:@"cat"];

        goto LABEL_121;
      }

      if ([proxyCopy lossStartMachContinuousTimestamp])
      {
        v109 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "lossStartMachContinuousTimestamp")}];
        [dictionary setObject:v109 forKeyedSubscript:@"lsmct"];
      }

      if ([proxyCopy lossEndMachContinuousTimestamp])
      {
        v110 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "lossEndMachContinuousTimestamp")}];
        [dictionary setObject:v110 forKeyedSubscript:@"lemct"];
      }

      if ([proxyCopy lossStartUnixDate])
      {
        v111 = _dictForTimeval([proxyCopy lossStartUnixDate]);

        if (v111)
        {
          v112 = _dictForTimeval([proxyCopy lossStartUnixDate]);
          [dictionary setObject:v112 forKeyedSubscript:@"lsud"];
        }
      }

      if ([proxyCopy lossEndUnixDate])
      {
        v113 = _dictForTimeval([proxyCopy lossEndUnixDate]);

        if (v113)
        {
          v114 = _dictForTimeval([proxyCopy lossEndUnixDate]);
          [dictionary setObject:v114 forKeyedSubscript:@"leud"];
        }
      }

      if ([proxyCopy lossStartUnixTimeZone])
      {
        v115 = _dictForTimezone([proxyCopy lossStartUnixTimeZone]);

        if (v115)
        {
          v116 = _dictForTimezone([proxyCopy lossStartUnixTimeZone]);
          [dictionary setObject:v116 forKeyedSubscript:@"lsutz"];
        }
      }

      if ([proxyCopy lossEndUnixTimeZone])
      {
        v117 = _dictForTimezone([proxyCopy lossEndUnixTimeZone]);

        if (v117)
        {
          v118 = _dictForTimezone([proxyCopy lossEndUnixTimeZone]);
          [dictionary setObject:v118 forKeyedSubscript:@"leutz"];
        }
      }

      v119 = _dictForLossCount([proxyCopy lossCount]);

      if (!v119)
      {
        goto LABEL_122;
      }

      metadata8 = _dictForLossCount([proxyCopy lossCount]);
      v88 = @"lc";
      goto LABEL_120;
    }

    if ([proxyCopy signpostIdentifier])
    {
      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "signpostIdentifier")}];
      [dictionary setObject:v89 forKeyedSubscript:@"si"];
    }

    if ([proxyCopy signpostType])
    {
      v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(proxyCopy, "signpostType")}];
      [dictionary setObject:v90 forKeyedSubscript:@"st"];
    }

    if ([proxyCopy signpostScope])
    {
      v91 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(proxyCopy, "signpostScope")}];
      [dictionary setObject:v91 forKeyedSubscript:@"ss"];
    }

    signpostName = [proxyCopy signpostName];

    if (signpostName)
    {
      metadata9 = [(OSLogEventSerializer *)self metadata];
      signpostName2 = [proxyCopy signpostName];
      v95 = [metadata9 indexForString:signpostName2];
      [dictionary setObject:v95 forKeyedSubscript:@"sn"];
    }

    goto LABEL_94;
  }

  if (type == 513)
  {
    if ([proxyCopy creatorActivityIdentifier])
    {
      v87 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "creatorActivityIdentifier")}];
      [dictionary setObject:v87 forKeyedSubscript:@"cai"];
    }

    if (![proxyCopy creatorProcessUniqueIdentifier])
    {
      goto LABEL_122;
    }

    metadata8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(proxyCopy, "creatorProcessUniqueIdentifier")}];
    v88 = @"cpui";
    goto LABEL_120;
  }

  if (type != 768)
  {
    if (type != 1024)
    {
      goto LABEL_122;
    }

LABEL_94:
    subsystem3 = [proxyCopy subsystem];

    if (subsystem3)
    {
      metadata10 = [(OSLogEventSerializer *)self metadata];
      subsystem4 = [proxyCopy subsystem];
      v99 = [metadata10 indexForString:subsystem4];
      [dictionary setObject:v99 forKeyedSubscript:@"sub"];
    }

    category3 = [proxyCopy category];

    if (category3)
    {
      metadata11 = [(OSLogEventSerializer *)self metadata];
      category4 = [proxyCopy category];
      v103 = [metadata11 indexForString:category4];
      [dictionary setObject:v103 forKeyedSubscript:@"cat"];
    }
  }

  formatString = [proxyCopy formatString];

  if (formatString)
  {
    metadata12 = [(OSLogEventSerializer *)self metadata];
    formatString2 = [proxyCopy formatString];
    v107 = [metadata12 indexForString:formatString2];
    [dictionary setObject:v107 forKeyedSubscript:@"f"];
  }

  decomposedMessage2 = [proxyCopy decomposedMessage];
  metadata8 = [(OSLogEventSerializer *)self _dictForDecomposedMessage:decomposedMessage2 indicesToRedact:v8];

  if (!metadata8)
  {
    goto LABEL_121;
  }

  v88 = @"dm";
LABEL_120:
  [dictionary setObject:metadata8 forKeyedSubscript:v88];
LABEL_121:

LABEL_122:
  v14 = dictionary;

LABEL_123:

  return v14;
}

- (id)_dictForDecomposedMessage:(id)message indicesToRedact:(id)redact
{
  v17[3] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  redactCopy = redact;
  if (messageCopy)
  {
    if ([messageCopy placeholderCount])
    {
      v16[0] = @"pc";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "placeholderCount")}];
      v17[0] = v8;
      v16[1] = @"s";
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "state")}];
      v17[1] = v9;
      v16[2] = @"seg";
      v10 = [(OSLogEventSerializer *)self _arrayForDecomposedMessage:messageCopy indicesToRedact:redactCopy];
      v17[2] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    }

    else
    {
      v14[0] = @"pc";
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "placeholderCount")}];
      v14[1] = @"s";
      v15[0] = v8;
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(messageCopy, "state")}];
      v15[1] = v9;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_arrayForDecomposedMessage:(id)message indicesToRedact:(id)redact
{
  messageCopy = message;
  redactCopy = redact;
  array = [MEMORY[0x277CBEB18] array];
  [messageCopy placeholderCount];
  v9 = 0;
  do
  {
    v10 = -[OSLogEventSerializer _dictForDecomposedMessage:index:shouldRedact:](self, "_dictForDecomposedMessage:index:shouldRedact:", messageCopy, v9, [redactCopy containsIndex:v9]);
    if (!v10)
    {
      break;
    }

    v11 = v10;
    [array addObject:v10];

    ++v9;
  }

  while (v9 <= [messageCopy placeholderCount]);

  return array;
}

- (id)_dictForArg:(id)arg shouldRedactValue:(BOOL)value
{
  argCopy = arg;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (value)
  {
    availability = 2;
  }

  else
  {
    availability = [argCopy availability];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:availability];
  [dictionary setObject:v9 forKeyedSubscript:@"a"];

  if ([argCopy availability])
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(argCopy, "availability")}];
    [dictionary setObject:v10 forKeyedSubscript:@"a"];
  }

  if ([argCopy privacy])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(argCopy, "privacy")}];
    [dictionary setObject:v11 forKeyedSubscript:@"p"];
  }

  if ([argCopy category])
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(argCopy, "category")}];
    [dictionary setObject:v12 forKeyedSubscript:@"c"];
  }

  if ([argCopy category] == 1)
  {
    if ([argCopy scalarCategory])
    {
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(argCopy, "scalarCategory")}];
      [dictionary setObject:v13 forKeyedSubscript:@"sc"];
    }

    if ([argCopy scalarType])
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(argCopy, "scalarType")}];
      [dictionary setObject:v14 forKeyedSubscript:@"st"];
    }
  }

  if (availability == 3 || !availability)
  {
    objectRepresentation = [argCopy objectRepresentation];
    if (objectRepresentation)
    {
      v16 = objectRepresentation;
      if ([argCopy category] != 2 || (-[OSLogEventSerializer metadata](self, "metadata"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "indexForString:", v16), v18 = objc_claimAutoreleasedReturnValue(), v16, v17, (v16 = v18) != 0))
      {
        [dictionary setObject:v16 forKeyedSubscript:@"or"];
      }
    }
  }

  return dictionary;
}

- (id)_dictForPlaceholder:(id)placeholder
{
  v37 = *MEMORY[0x277D85DE8];
  placeholderCopy = placeholder;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  rawString = [placeholderCopy rawString];
  if (rawString)
  {
    metadata = [(OSLogEventSerializer *)self metadata];
    v8 = [metadata indexForString:rawString];
    [dictionary setObject:v8 forKeyedSubscript:@"rs"];
  }

  tokens = [placeholderCopy tokens];
  v10 = tokens;
  if (tokens && [tokens count])
  {
    v31 = rawString;
    array = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v30 = v10;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          metadata2 = [(OSLogEventSerializer *)self metadata];
          v19 = [metadata2 indexForString:v17];
          [array addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array forKeyedSubscript:@"t"];
    v10 = v30;
    rawString = v31;
  }

  typeNamespace = [placeholderCopy typeNamespace];
  if (typeNamespace)
  {
    metadata3 = [(OSLogEventSerializer *)self metadata];
    v22 = [metadata3 indexForString:typeNamespace];
    [dictionary setObject:v22 forKeyedSubscript:@"tn"];
  }

  type = [placeholderCopy type];
  if (type)
  {
    metadata4 = [(OSLogEventSerializer *)self metadata];
    v25 = [metadata4 indexForString:type];
    [dictionary setObject:v25 forKeyedSubscript:@"ty"];
  }

  v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(placeholderCopy, "width")}];
  [dictionary setObject:v26 forKeyedSubscript:@"w"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(placeholderCopy, "precision")}];
  [dictionary setObject:v27 forKeyedSubscript:@"p"];

  v28 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)_serializeEvent:(id)event
{
  eventCopy = event;
  metadata = [(OSLogEventSerializer *)self metadata];
  firstDate = [metadata firstDate];

  if (!firstDate)
  {
    date = [eventCopy date];
    metadata2 = [(OSLogEventSerializer *)self metadata];
    [metadata2 setFirstDate:date];
  }

  date2 = [eventCopy date];
  metadata3 = [(OSLogEventSerializer *)self metadata];
  [metadata3 setLastDate:date2];

  [(OSLogEventSerializer *)self setCurBatchSize:[(OSLogEventSerializer *)self curBatchSize]+ 1];
  ++self->_serializedEventCount;
  v11 = [(OSLogEventSerializer *)self _dictionaryForProxy:eventCopy];
  if (!v11)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EventSerializer.m" lineNumber:307 description:@"Encountered serialization failure"];
  }

  curBatchDictionaries = [(OSLogEventSerializer *)self curBatchDictionaries];
  [curBatchDictionaries addObject:v11];
}

- (void)invalidate
{
  stream = [(OSLogEventSerializer *)self stream];
  [stream invalidate];
}

- (void)serializeFromPosition:(id)position
{
  positionCopy = position;
  stream = [(OSLogEventSerializer *)self stream];
  [stream activateStreamFromPosition:positionCopy];
}

- (void)serializeFromLastBoot
{
  stream = [(OSLogEventSerializer *)self stream];
  [stream activateStreamFromLastBoot];
}

- (void)serializeFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  stream = [(OSLogEventSerializer *)self stream];
  distantPast = dateCopy;
  if (dateCopy)
  {
    if (toDateCopy)
    {
LABEL_3:
      [stream activateStreamFromDate:distantPast toDate:toDateCopy];
      goto LABEL_6;
    }
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    if (toDateCopy)
    {
      goto LABEL_3;
    }
  }

  source = [(OSLogEventStream *)self->_stream source];
  newestDate = [source newestDate];
  [stream activateStreamFromDate:distantPast toDate:newestDate];

LABEL_6:
  if (!dateCopy)
  {
  }
}

- (void)serializeFromDate:(id)date
{
  dateCopy = date;
  stream = [(OSLogEventSerializer *)self stream];
  v5 = stream;
  if (dateCopy)
  {
    [stream activateStreamFromDate:dateCopy];
  }

  else
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    [v5 activateStreamFromDate:distantPast];
  }
}

- (OSLogEventSource)source
{
  stream = [(OSLogEventSerializer *)self stream];
  source = [stream source];

  return source;
}

- (OS_dispatch_queue)target
{
  stream = [(OSLogEventSerializer *)self stream];
  target = [stream target];

  return target;
}

- (void)setTarget:(id)target
{
  targetCopy = target;
  stream = [(OSLogEventSerializer *)self stream];
  [stream setTarget:targetCopy];
}

- (NSPredicate)filterPredicate
{
  stream = [(OSLogEventSerializer *)self stream];
  filterPredicate = [stream filterPredicate];

  return filterPredicate;
}

- (void)setFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  stream = [(OSLogEventSerializer *)self stream];
  [stream setFilterPredicate:predicateCopy];
}

- (unint64_t)flags
{
  stream = [(OSLogEventSerializer *)self stream];
  flags = [stream flags];

  return flags;
}

- (void)setFlags:(unint64_t)flags
{
  stream = [(OSLogEventSerializer *)self stream];
  [stream setFlags:flags];
}

- (OSLogEventSerializer)initWithSource:(id)source dataProcessingBlock:(id)block completionBlock:(id)completionBlock
{
  sourceCopy = source;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v11 = completionBlockCopy;
  selfCopy = 0;
  if (blockCopy && completionBlockCopy)
  {
    v31.receiver = self;
    v31.super_class = OSLogEventSerializer;
    self = [(OSLogEventSerializer *)&v31 init];
    if (!self)
    {
LABEL_6:
      self = self;
      selfCopy = self;
      goto LABEL_7;
    }

    v13 = [[OSLogEventStream alloc] initWithSource:sourceCopy];
    stream = self->_stream;
    self->_stream = v13;

    self->_maxLogEventBatchSize = 1000;
    array = [MEMORY[0x277CBEB18] array];
    curBatchDictionaries = self->_curBatchDictionaries;
    self->_curBatchDictionaries = array;

    v17 = objc_alloc_init(_OSLogEventSerializationMetadata);
    metadata = self->_metadata;
    self->_metadata = v17;

    selfCopy = [(OSLogEventSerializer *)self stream];

    if (selfCopy)
    {
      objc_initWeak(&location, self);
      v19 = self->_stream;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke;
      v27[3] = &unk_2787AEDD8;
      objc_copyWeak(&v29, &location);
      v20 = blockCopy;
      v28 = v20;
      [(OSLogEventStreamBase *)v19 setEventHandler:v27];
      v21 = self->_stream;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke_2;
      v23[3] = &unk_2787AEE00;
      objc_copyWeak(&v26, &location);
      v24 = v20;
      v25 = v11;
      [(OSLogEventStreamBase *)v21 setInvalidationHandler:v23];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }
  }

LABEL_7:

  return selfCopy;
}

void __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serializeEvent:v3];

  if ([WeakRetained _isBatchCompleted])
  {
    [WeakRetained _completeBatch:*(a1 + 32)];
  }
}

void __75__OSLogEventSerializer_initWithSource_dataProcessingBlock_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if ([WeakRetained curBatchSize])
  {
    [WeakRetained _completeBatch:*(a1 + 32)];
  }

  v4 = [WeakRetained flags];
  v5 = [WeakRetained metadata];
  [v5 setFlags:v4];

  v6 = [WeakRetained filterPredicate];
  v7 = [v6 description];
  v8 = [WeakRetained metadata];
  [v8 setFilterPredicateDescription:v7];

  v9 = [WeakRetained maxLogEventBatchSize];
  v10 = [WeakRetained metadata];
  [v10 setMaxLogEventBatchSize:v9];

  v11 = [WeakRetained serializedEventCount];
  v12 = [WeakRetained metadata];
  [v12 setSerializedEventCount:v11];

  v13 = *(a1 + 40);
  v14 = [WeakRetained metadata];
  v15 = [v14 dataRepresentation];
  (*(v13 + 16))(v13, v15, a2);
}

@end