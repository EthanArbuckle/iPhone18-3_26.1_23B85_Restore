@interface EDSearchableIndexDiagnosticsSnapshot
- (EDSearchableIndexDiagnosticsSnapshot)initWithDate:(id)date indexableMessages:(id)messages messagesIndexed:(id)indexed messagesToRedonate:(id)redonate turboMode:(BOOL)mode;
- (EDSearchableIndexDiagnosticsSnapshot)initWithDictionary:(id)dictionary;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation EDSearchableIndexDiagnosticsSnapshot

- (EDSearchableIndexDiagnosticsSnapshot)initWithDate:(id)date indexableMessages:(id)messages messagesIndexed:(id)indexed messagesToRedonate:(id)redonate turboMode:(BOOL)mode
{
  dateCopy = date;
  messagesCopy = messages;
  indexedCopy = indexed;
  redonateCopy = redonate;
  v16 = redonateCopy;
  selfCopy = 0;
  if (dateCopy && messagesCopy && indexedCopy && redonateCopy)
  {
    v22.receiver = self;
    v22.super_class = EDSearchableIndexDiagnosticsSnapshot;
    v18 = [(EDSearchableIndexDiagnosticsSnapshot *)&v22 init];
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(&v18->_date, date);
      objc_storeStrong(&v19->_indexableMessages, messages);
      objc_storeStrong(&v19->_messagesIndexed, indexed);
      objc_storeStrong(&v19->_messagesToRedonate, redonate);
      v19->_turboMode = mode;
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (EDSearchableIndexDiagnosticsSnapshot)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Date"];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"IndexableMessages"];
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = [dictionaryCopy objectForKeyedSubscript:@"MessagesIndexed"];
      if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v8 = [dictionaryCopy objectForKeyedSubscript:@"MessagesToRedonate"];
        v9 = v8;
        v10 = &unk_1F45E6988;
        if (v8)
        {
          v10 = v8;
        }

        v11 = v10;

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [dictionaryCopy objectForKeyedSubscript:@"Turbo"];
          v13 = v12;
          v14 = MEMORY[0x1E695E110];
          if (v12)
          {
            v14 = v12;
          }

          v15 = v14;

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            self = -[EDSearchableIndexDiagnosticsSnapshot initWithDate:indexableMessages:messagesIndexed:messagesToRedonate:turboMode:](self, "initWithDate:indexableMessages:messagesIndexed:messagesToRedonate:turboMode:", v5, v6, v7, v11, [v15 BOOLValue]);
            selfCopy = self;
          }

          else
          {
            selfCopy = 0;
          }
        }

        else
        {
          selfCopy = 0;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  date = [(EDSearchableIndexDiagnosticsSnapshot *)self date];
  [v3 setObject:date forKeyedSubscript:@"Date"];

  indexableMessages = [(EDSearchableIndexDiagnosticsSnapshot *)self indexableMessages];
  [v3 setObject:indexableMessages forKeyedSubscript:@"IndexableMessages"];

  messagesIndexed = [(EDSearchableIndexDiagnosticsSnapshot *)self messagesIndexed];
  [v3 setObject:messagesIndexed forKeyedSubscript:@"MessagesIndexed"];

  messagesToRedonate = [(EDSearchableIndexDiagnosticsSnapshot *)self messagesToRedonate];
  [v3 setObject:messagesToRedonate forKeyedSubscript:@"MessagesToRedonate"];

  if ([(EDSearchableIndexDiagnosticsSnapshot *)self turboMode])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[EDSearchableIndexDiagnosticsSnapshot turboMode](self, "turboMode")}];
    [v3 setObject:v8 forKeyedSubscript:@"Turbo"];
  }

  return v3;
}

@end