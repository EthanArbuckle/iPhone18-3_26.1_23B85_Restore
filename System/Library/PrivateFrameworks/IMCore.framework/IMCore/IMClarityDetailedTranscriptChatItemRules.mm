@interface IMClarityDetailedTranscriptChatItemRules
- (BOOL)_shouldAppendDateForItem:(id)item previousItem:(id)previousItem;
- (id)chatItemForIMChatItem:(id)item;
@end

@implementation IMClarityDetailedTranscriptChatItemRules

- (id)chatItemForIMChatItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = itemCopy;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IMClarityDetailedTranscriptChatItemRules;
    v5 = [(IMClarityTranscriptChatItemRules *)&v8 chatItemForIMChatItem:itemCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)_shouldAppendDateForItem:(id)item previousItem:(id)previousItem
{
  if (previousItem)
  {
    itemCopy = item;
    v7 = objc_msgSend_time(previousItem, v5, v6);
    v10 = objc_msgSend_time(itemCopy, v8, v9);

    LOBYTE(itemCopy) = 1;
    if (v7 && v10)
    {
      v14 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v11, v12);
      v16 = objc_msgSend_components_fromDate_(v14, v15, 30, v7);
      v18 = objc_msgSend_components_fromDate_(v14, v17, 30, v10);
      LODWORD(itemCopy) = objc_msgSend_isEqual_(v16, v19, v18) ^ 1;
    }
  }

  else
  {
    LOBYTE(itemCopy) = 1;
  }

  return itemCopy;
}

@end