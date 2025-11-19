@interface IPMessage
- (IPMessage)init;
- (IPMessage)initWithDateSent:(id)a3 subject:(id)a4;
- (IPMessage)initWithHTMLContent:(id)a3 emailHeadersDictionary:(id)a4 dateSent:(id)a5;
- (IPMessage)initWithIdentifier:(id)a3 subject:(id)a4 sender:(id)a5 recipients:(id)a6 dateSent:(id)a7 type:(id)a8;
- (IPMessage)initWithSGIPMessage:(id)a3;
- (NSArray)messageUnits;
- (NSString)lowercaseSubject;
- (id)detectedKeywordsDictionary;
- (id)firstHeaderValueForKey:(id)a3 inHeaders:(id)a4;
- (void)addDetectedKeyword:(id)a3 classificationTypeIdentifier:(id)a4;
- (void)addMessageUnit:(id)a3;
- (void)setMessageUnits:(id)a3;
@end

@implementation IPMessage

- (IPMessage)init
{
  [(IPMessage *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (IPMessage)initWithIdentifier:(id)a3 subject:(id)a4 sender:(id)a5 recipients:(id)a6 dateSent:(id)a7 type:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = IPMessage;
  v20 = [(IPMessage *)&v28 init];
  v21 = v20;
  if (v20)
  {
    [(IPMessage *)v20 setIdentifier:v14];
    [(IPMessage *)v21 setSubject:v15];
    [(IPMessage *)v21 setSender:v16];
    [(IPMessage *)v21 setRecipients:v17];
    [(IPMessage *)v21 setDateSent:v18];
    [(IPMessage *)v21 setType:v19];
    [(IPMessage *)v21 setIsReply:0];
    v22 = [(IPMessage *)v21 subject];

    if (v22)
    {
      v23 = [v15 length];
      if (v23 >= 0x2710)
      {
        v24 = 10000;
      }

      else
      {
        v24 = v23;
      }

      v25 = +[IPRegexToolbox emailSubjectPrefixRegex];
      v26 = [v25 numberOfMatchesInString:v15 options:2 range:{0, v24}];

      [(IPMessage *)v21 setIsReply:v26 != 0];
    }
  }

  return v21;
}

- (IPMessage)initWithSGIPMessage:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v4 recipients];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [[IPPerson alloc] initWithSGIPPerson:*(*(&v28 + 1) + 8 * v10)];
        if (v11)
        {
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  v25 = [v4 messageId];
  v12 = [v25 copy];
  v13 = [v4 subject];
  v14 = [v13 copy];
  v15 = [IPPerson alloc];
  v16 = [v4 sender];
  v17 = [(IPPerson *)v15 initWithSGIPPerson:v16];
  v18 = [v4 dateSent];
  v19 = [v18 copy];
  v20 = [(IPMessage *)self initWithIdentifier:v12 subject:v14 sender:v17 recipients:v5 dateSent:v19 type:IPMessageTypeEmail];

  -[IPMessage setIsSent:](v20, "setIsSent:", [v4 isSent]);
  -[IPMessage setIsGroupConversation:](v20, "setIsGroupConversation:", [v4 isGroupConversation]);
  -[IPMessage setIsSenderSignificant:](v20, "setIsSenderSignificant:", [v4 isSenderSignificant]);
  v21 = [v4 messageUnits];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __33__IPMessage_initWithSGIPMessage___block_invoke;
  v26[3] = &unk_278F22E28;
  v22 = v20;
  v27 = v22;
  [v21 enumerateObjectsUsingBlock:v26];

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

- (IPMessage)initWithDateSent:(id)a3 subject:(id)a4
{
  if (!a4)
  {
    a4 = &stru_285AD0E88;
  }

  return [(IPMessage *)self initWithIdentifier:@"0" subject:a4 sender:0 recipients:MEMORY[0x277CBEBF8] dateSent:a3 type:0];
}

- (id)firstHeaderValueForKey:(id)a3 inHeaders:(id)a4
{
  v4 = [a4 objectForKeyedSubscript:a3];
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

- (IPMessage)initWithHTMLContent:(id)a3 emailHeadersDictionary:(id)a4 dateSent:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IPMessage *)self firstHeaderValueForKey:@"Message-Id" inHeaders:v9];
  v12 = [(IPMessage *)self firstHeaderValueForKey:@"Subject" inHeaders:v9];

  v13 = [(IPMessage *)self initWithIdentifier:v11 subject:v12 sender:0 recipients:0 dateSent:v8 type:IPMessageTypeEmail];
  [(IPMessage *)v13 setHtmlContent:v10];

  return v13;
}

- (void)addMessageUnit:(id)a3
{
  v4 = a3;
  messageUnits = self->_messageUnits;
  v9 = v4;
  if (!messageUnits)
  {
    v6 = objc_opt_new();
    v7 = self->_messageUnits;
    self->_messageUnits = v6;

    v4 = v9;
    self->_messageUnitsTextLength = 0;
    messageUnits = self->_messageUnits;
  }

  [(NSMutableArray *)messageUnits addObject:v4];
  v8 = [v9 text];
  self->_messageUnitsTextLength += [v8 length];
}

- (NSArray)messageUnits
{
  v14[1] = *MEMORY[0x277D85DE8];
  messageUnits = self->_messageUnits;
  if (!messageUnits)
  {
    v4 = [(IPMessage *)self htmlContent];
    v5 = [IPQuoteParser strippedQuoteBlockWithHtml:v4];

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

- (void)setMessageUnits:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  messageUnits = self->_messageUnits;
  self->_messageUnits = 0;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v4;
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
    v4 = [(IPMessage *)self subject];
    v5 = [v4 lowercaseString];
    v6 = self->_lowercaseSubject;
    self->_lowercaseSubject = v5;

    lowercaseSubject = self->_lowercaseSubject;
  }

  return lowercaseSubject;
}

- (void)addDetectedKeyword:(id)a3 classificationTypeIdentifier:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (v10 && v6)
  {
    keywordsDictionary = self->_keywordsDictionary;
    if (!keywordsDictionary)
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
      v9 = self->_keywordsDictionary;
      self->_keywordsDictionary = v8;

      keywordsDictionary = self->_keywordsDictionary;
    }

    [(NSMutableDictionary *)keywordsDictionary setObject:v6 forKeyedSubscript:v10];
  }
}

- (id)detectedKeywordsDictionary
{
  v2 = [(NSMutableDictionary *)self->_keywordsDictionary copy];

  return v2;
}

@end