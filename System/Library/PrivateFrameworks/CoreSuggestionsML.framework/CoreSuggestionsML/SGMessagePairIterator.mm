@interface SGMessagePairIterator
- (SGMessagePairIterator)initWithStartDate:(id)date maxBatchSize:(unint64_t)size maxReplyLength:(unint64_t)length maxReplyGap:(double)gap;
- (id)handleFromConversationId:(id)id;
- (id)nextMessagePair;
- (id)removeBreadcrumbsFromMessage:(id)message;
@end

@implementation SGMessagePairIterator

- (id)nextMessagePair
{
  if ([(SGMessagePairIterator *)self isDoneIterating])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGMessagePairIterator.m" lineNumber:159 description:@"Iterator exhausted!"];
  }

  messageEvents = self->_messageEvents;
  if (!messageEvents)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGMessagePairIterator.m" lineNumber:160 description:@"messageEvents is nil"];

    messageEvents = self->_messageEvents;
  }

  v5 = [(NSArray *)messageEvents objectAtIndexedSubscript:self->_messageEventIndex];
  ++self->_messageEventIndex;
  startDate = [v5 startDate];
  latestProcessedDate = self->_latestProcessedDate;
  self->_latestProcessedDate = startDate;

  interaction = [v5 interaction];
  v9 = INTypedInteractionWithInteraction();
  intent = [v9 intent];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    goto LABEL_24;
  }

  v11 = intent;
  conversationIdentifier = [v11 conversationIdentifier];
  if (conversationIdentifier)
  {
    v13 = conversationIdentifier;
    content = [v11 content];

    if (content)
    {
      content2 = [v11 content];
      v16 = [content2 mutableCopy];

      CFStringTrimWhitespace(v16);
      conversationIdentifier2 = [v11 conversationIdentifier];
      v18 = [(SGMessagePairIterator *)self handleFromConversationId:conversationIdentifier2];

      direction = [interaction direction];
      if (direction == 1)
      {
        startDate3 = [(NSMutableDictionary *)self->_latestPromptForHandle objectForKeyedSubscript:v18];
        [(NSMutableDictionary *)self->_latestPromptForHandle setObject:0 forKeyedSubscript:v18];
        if (!startDate3)
        {
          v23 = 0;
          goto LABEL_20;
        }

        first = [startDate3 first];
        v22 = [(SGMessagePairIterator *)self removeBreadcrumbsFromMessage:first];

        v25 = [(SGMessagePairIterator *)self removeBreadcrumbsFromMessage:v16];
        if ([v25 length] && objc_msgSend(v22, "length") && objc_msgSend(v25, "length") <= self->_maxReplyLength)
        {
          startDate2 = [v5 startDate];
          second = [startDate3 second];
          if (second)
          {
            v31 = second;
            [startDate2 timeIntervalSinceDate:second];
            if (v28 <= self->_maxReplyGap)
            {
              v23 = [[SGMessagePair alloc] initWithReply:v25 prompt:v22 handle:v18 sentAt:startDate2];
            }

            else
            {
              v23 = 0;
            }

            second = v31;
          }

          else
          {
            v23 = 0;
          }
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        if (direction != 2)
        {
          v23 = 0;
          goto LABEL_22;
        }

        v20 = MEMORY[0x277D42648];
        startDate3 = [v5 startDate];
        v22 = [v20 tupleWithFirst:v16 second:startDate3];
        [(NSMutableDictionary *)self->_latestPromptForHandle setObject:v22 forKeyedSubscript:v18];
        v23 = 0;
      }

LABEL_20:
LABEL_22:

      goto LABEL_23;
    }
  }

  v23 = 0;
LABEL_23:

LABEL_24:

  return v23;
}

- (id)removeBreadcrumbsFromMessage:(id)message
{
  v5 = objc_autoreleasePoolPush();
  v6 = [message stringByReplacingOccurrencesOfString:self->_attachmentCharacterString withString:&stru_285992FC0];
  v7 = [v6 stringByReplacingOccurrencesOfString:self->_breadcrumbCharacterString withString:&stru_285992FC0];
  objc_autoreleasePoolPop(v5);

  return v7;
}

- (SGMessagePairIterator)initWithStartDate:(id)date maxBatchSize:(unint64_t)size maxReplyLength:(unint64_t)length maxReplyGap:(double)gap
{
  v69 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v56.receiver = self;
  v56.super_class = SGMessagePairIterator;
  v11 = [(SGMessagePairIterator *)&v56 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_17;
  }

  v11->_done = 0;
  v11->_maxReplyLength = length;
  v11->_maxReplyGap = gap;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  latestPromptForHandle = v12->_latestPromptForHandle;
  v12->_latestPromptForHandle = dictionary;

  latestProcessedDate = v12->_latestProcessedDate;
  v12->_latestProcessedDate = 0;

  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v16 = getIMAttachmentCharacterStringSymbolLoc_ptr;
  v60 = getIMAttachmentCharacterStringSymbolLoc_ptr;
  if (!getIMAttachmentCharacterStringSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v66 = __getIMAttachmentCharacterStringSymbolLoc_block_invoke;
    v67 = &unk_278EB8500;
    v68 = &v57;
    v17 = IMFoundationLibrary();
    v18 = dlsym(v17, "IMAttachmentCharacterString");
    *(v68[1] + 24) = v18;
    getIMAttachmentCharacterStringSymbolLoc_ptr = *(v68[1] + 24);
    v16 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v16)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v51 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMAttachmentCharacterString(void)"];
    [currentHandler handleFailureInFunction:v51 file:@"SGMessagePairIterator.m" lineNumber:26 description:{@"%s", dlerror()}];

    goto LABEL_21;
  }

  objc_storeStrong(&v12->_attachmentCharacterString, *v16);
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v19 = getIMBreadcrumbCharacterStringSymbolLoc_ptr;
  v60 = getIMBreadcrumbCharacterStringSymbolLoc_ptr;
  if (!getIMBreadcrumbCharacterStringSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x277D85DD0];
    *(&buf + 1) = 3221225472;
    v66 = __getIMBreadcrumbCharacterStringSymbolLoc_block_invoke;
    v67 = &unk_278EB8500;
    v68 = &v57;
    v20 = IMFoundationLibrary();
    v21 = dlsym(v20, "IMBreadcrumbCharacterString");
    *(v68[1] + 24) = v21;
    getIMBreadcrumbCharacterStringSymbolLoc_ptr = *(v68[1] + 24);
    v19 = v58[3];
  }

  _Block_object_dispose(&v57, 8);
  if (!v19)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v53 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getIMBreadcrumbCharacterString(void)"];
    [currentHandler2 handleFailureInFunction:v53 file:@"SGMessagePairIterator.m" lineNumber:27 description:{@"%s", dlerror()}];

LABEL_21:
    __break(1u);
  }

  objc_storeStrong(&v12->_breadcrumbCharacterString, *v19);
  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
  v22 = MEMORY[0x277CFE260];
  intentClass = [MEMORY[0x277CFE1F8] intentClass];
  v24 = [v22 predicateForObjectsWithMetadataKey:intentClass inValues:&unk_28599AFF0];

  if (dateCopy)
  {
    v25 = MEMORY[0x277CCA920];
    v64[0] = v24;
    dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"startDate > %@", dateCopy];
    v64[1] = dateCopy;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    v28 = [v25 andPredicateWithSubpredicates:v27];

    v24 = v28;
  }

  v29 = MEMORY[0x277CCA920];
  v63[0] = v24;
  v30 = MEMORY[0x277CFE260];
  intentsSourceID = [MEMORY[0x277CFE268] intentsSourceID];
  v32 = [v30 predicateForEventsWithSourceID:intentsSourceID bundleID:@"com.apple.MobileSMS"];
  v63[1] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:2];
  v34 = [v29 andPredicateWithSubpredicates:v33];

  v35 = MEMORY[0x277CFE1E0];
  appIntentsStream = [MEMORY[0x277CFE298] appIntentsStream];
  v62 = appIntentsStream;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v38 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
  v61 = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
  v40 = [v35 eventQueryWithPredicate:v34 eventStreams:v37 offset:0 limit:size sortDescriptors:v39];

  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v40 setDeviceIDs:allDevices];

  v55 = 0;
  v42 = [knowledgeStore executeQuery:v40 error:&v55];
  v43 = v55;
  messageEvents = v12->_messageEvents;
  v12->_messageEvents = v42;

  if (v43 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    v49 = [v43 description];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v49;
    _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Failed to retrieve message events from CoreDuet. Error: %@", &buf, 0xCu);
  }

  v45 = v12->_messageEvents;
  if (v45 && [(NSArray *)v45 count]>= 2)
  {
    v12->_messageEventCount = [(NSArray *)v12->_messageEvents count];
    v12->_messageEventIndex = 0;

LABEL_17:
    v46 = v12;
    goto LABEL_18;
  }

  v46 = 0;
LABEL_18:

  v47 = *MEMORY[0x277D85DE8];
  return v46;
}

- (id)handleFromConversationId:(id)id
{
  idCopy = id;
  v4 = objc_autoreleasePoolPush();
  v5 = [idCopy componentsSeparatedByString:@""];;
  if ([v5 count] == 3)
  {
    v6 = [v5 objectAtIndexedSubscript:2];
  }

  else
  {
    v6 = [idCopy copy];
  }

  v7 = v6;

  objc_autoreleasePoolPop(v4);

  return v7;
}

@end