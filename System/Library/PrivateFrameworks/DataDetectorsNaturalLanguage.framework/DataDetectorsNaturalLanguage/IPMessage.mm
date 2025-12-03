@interface IPMessage
- (IPMessage)init;
- (IPMessage)initWithDateSent:(id)sent subject:(id)subject;
- (IPMessage)initWithHTMLContent:(id)content emailHeadersDictionary:(id)dictionary dateSent:(id)sent;
- (IPMessage)initWithIdentifier:(id)identifier subject:(id)subject sender:(id)sender recipients:(id)recipients dateSent:(id)sent type:(id)type;
- (IPMessage)initWithSGIPMessage:(id)message;
- (NSArray)messageUnits;
- (NSString)lowercaseSubject;
- (id)detectedKeywordsDictionary;
- (id)firstHeaderValueForKey:(id)key inHeaders:(id)headers;
- (void)addDetectedKeyword:(id)keyword classificationTypeIdentifier:(id)identifier;
- (void)addMessageUnit:(id)unit;
- (void)setMessageUnits:(id)units;
@end

@implementation IPMessage

- (IPMessage)init
{
  [(IPMessage *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IPMessage)initWithIdentifier:(id)identifier subject:(id)subject sender:(id)sender recipients:(id)recipients dateSent:(id)sent type:(id)type
{
  identifierCopy = identifier;
  subjectCopy = subject;
  senderCopy = sender;
  recipientsCopy = recipients;
  sentCopy = sent;
  typeCopy = type;
  v28.receiver = self;
  v28.super_class = IPMessage;
  v20 = [(IPMessage *)&v28 init];
  v21 = v20;
  if (v20)
  {
    [(IPMessage *)v20 setIdentifier:identifierCopy];
    [(IPMessage *)v21 setSubject:subjectCopy];
    [(IPMessage *)v21 setSender:senderCopy];
    [(IPMessage *)v21 setRecipients:recipientsCopy];
    [(IPMessage *)v21 setDateSent:sentCopy];
    [(IPMessage *)v21 setType:typeCopy];
    [(IPMessage *)v21 setIsReply:0];
    subject = [(IPMessage *)v21 subject];

    if (subject)
    {
      v23 = [subjectCopy length];
      if (v23 >= 0x2710)
      {
        v24 = 10000;
      }

      else
      {
        v24 = v23;
      }

      v25 = +[IPRegexToolbox emailSubjectPrefixRegex];
      v26 = [v25 numberOfMatchesInString:subjectCopy options:2 range:{0, v24}];

      [(IPMessage *)v21 setIsReply:v26 != 0];
    }
  }

  return v21;
}

- (IPMessage)initWithSGIPMessage:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  recipients = [messageCopy recipients];
  v7 = [recipients countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(recipients);
        }

        v11 = [[IPPerson alloc] initWithSGIPPerson:*(*(&v28 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [recipients countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  messageId = [messageCopy messageId];
  v12 = [messageId copy];
  subject = [messageCopy subject];
  v14 = [subject copy];
  v15 = [IPPerson alloc];
  sender = [messageCopy sender];
  v17 = [(IPPerson *)v15 initWithSGIPPerson:sender];
  dateSent = [messageCopy dateSent];
  v19 = [dateSent copy];
  v20 = [(IPMessage *)self initWithIdentifier:v12 subject:v14 sender:v17 recipients:v5 dateSent:v19 type:IPMessageTypeEmail];

  -[IPMessage setIsSent:](v20, "setIsSent:", [messageCopy isSent]);
  -[IPMessage setIsGroupConversation:](v20, "setIsGroupConversation:", [messageCopy isGroupConversation]);
  -[IPMessage setIsSenderSignificant:](v20, "setIsSenderSignificant:", [messageCopy isSenderSignificant]);
  messageUnits = [messageCopy messageUnits];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __33__IPMessage_initWithSGIPMessage___block_invoke;
  v26[3] = &unk_278F22E28;
  v22 = v20;
  v27 = v22;
  [messageUnits enumerateObjectsUsingBlock:v26];

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

void __33__IPMessage_initWithSGIPMessage___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [[IPMessageUnit alloc] initWithText:v6 originalMessage:*(a1 + 32) index:a3];

  [v5 addMessageUnit:v7];
}

- (IPMessage)initWithDateSent:(id)sent subject:(id)subject
{
  if (!subject)
  {
    subject = &stru_285AD0E88;
  }

  return [(IPMessage *)self initWithIdentifier:@"0" subject:subject sender:0 recipients:MEMORY[0x277CBEBF8] dateSent:sent type:0];
}

- (id)firstHeaderValueForKey:(id)key inHeaders:(id)headers
{
  v4 = [headers objectForKeyedSubscript:key];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IPMessage)initWithHTMLContent:(id)content emailHeadersDictionary:(id)dictionary dateSent:(id)sent
{
  sentCopy = sent;
  dictionaryCopy = dictionary;
  contentCopy = content;
  v11 = [(IPMessage *)self firstHeaderValueForKey:@"Message-Id" inHeaders:dictionaryCopy];
  v12 = [(IPMessage *)self firstHeaderValueForKey:@"Subject" inHeaders:dictionaryCopy];

  v13 = [(IPMessage *)self initWithIdentifier:v11 subject:v12 sender:0 recipients:0 dateSent:sentCopy type:IPMessageTypeEmail];
  [(IPMessage *)v13 setHtmlContent:contentCopy];

  return v13;
}

- (void)addMessageUnit:(id)unit
{
  unitCopy = unit;
  messageUnits = self->_messageUnits;
  v9 = unitCopy;
  if (!messageUnits)
  {
    v6 = objc_opt_new();
    v7 = self->_messageUnits;
    self->_messageUnits = v6;

    unitCopy = v9;
    self->_messageUnitsTextLength = 0;
    messageUnits = self->_messageUnits;
  }

  [(NSMutableArray *)messageUnits addObject:unitCopy];
  text = [v9 text];
  self->_messageUnitsTextLength += [text length];
}

- (NSArray)messageUnits
{
  v14[1] = *MEMORY[0x277D85DE8];
  messageUnits = self->_messageUnits;
  if (!messageUnits)
  {
    htmlContent = [(IPMessage *)self htmlContent];
    v5 = [IPQuoteParser strippedQuoteBlockWithHtml:htmlContent];

    v6 = [v5 dataUsingEncoding:4];
    v7 = _MDPlainTextFromHTMLData();

    v8 = [[IPMessageUnit alloc] initWithText:v7 originalMessage:self index:0];
    v14[0] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v10 = [v9 mutableCopy];
    v11 = self->_messageUnits;
    self->_messageUnits = v10;

    messageUnits = self->_messageUnits;
  }

  v12 = *MEMORY[0x277D85DE8];

  return messageUnits;
}

- (void)setMessageUnits:(id)units
{
  v17 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  messageUnits = self->_messageUnits;
  self->_messageUnits = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = unitsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(IPMessage *)self addMessageUnit:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSString)lowercaseSubject
{
  lowercaseSubject = self->_lowercaseSubject;
  if (!lowercaseSubject)
  {
    subject = [(IPMessage *)self subject];
    lowercaseString = [subject lowercaseString];
    v6 = self->_lowercaseSubject;
    self->_lowercaseSubject = lowercaseString;

    lowercaseSubject = self->_lowercaseSubject;
  }

  return lowercaseSubject;
}

- (void)addDetectedKeyword:(id)keyword classificationTypeIdentifier:(id)identifier
{
  keywordCopy = keyword;
  identifierCopy = identifier;
  if (keywordCopy && identifierCopy)
  {
    keywordsDictionary = self->_keywordsDictionary;
    if (!keywordsDictionary)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
      v9 = self->_keywordsDictionary;
      self->_keywordsDictionary = v8;

      keywordsDictionary = self->_keywordsDictionary;
    }

    [(NSMutableDictionary *)keywordsDictionary setObject:identifierCopy forKeyedSubscript:keywordCopy];
  }
}

- (id)detectedKeywordsDictionary
{
  v2 = [(NSMutableDictionary *)self->_keywordsDictionary copy];

  return v2;
}

@end