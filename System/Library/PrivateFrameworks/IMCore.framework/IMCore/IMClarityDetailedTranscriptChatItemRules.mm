@interface IMClarityDetailedTranscriptChatItemRules
- (BOOL)_shouldAppendDateForItem:(id)a3 previousItem:(id)a4;
- (id)chatItemForIMChatItem:(id)a3;
@end

@implementation IMClarityDetailedTranscriptChatItemRules

- (id)chatItemForIMChatItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v4;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IMClarityDetailedTranscriptChatItemRules;
    v5 = [(IMClarityTranscriptChatItemRules *)&v8 chatItemForIMChatItem:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_shouldAppendDateForItem:(id)a3 previousItem:(id)a4
{
  if (a4)
  {
    v13 = a3;
    v7 = objc_msgSend_time(a4, v5, v6);
    v10 = objc_msgSend_time(v13, v8, v9);

    LOBYTE(v13) = 1;
    if (v7 && v10)
    {
      v14 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v11, v12);
      v16 = objc_msgSend_components_fromDate_(v14, v15, 30, v7);
      v18 = objc_msgSend_components_fromDate_(v14, v17, 30, v10);
      LODWORD(v13) = objc_msgSend_isEqual_(v16, v19, v18) ^ 1;
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  return v13;
}

@end