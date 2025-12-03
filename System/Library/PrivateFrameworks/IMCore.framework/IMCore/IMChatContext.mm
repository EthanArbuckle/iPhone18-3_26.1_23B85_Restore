@interface IMChatContext
- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation IMChatContext

- (id)_copyWithClass:(Class)class zone:(_NSZone *)zone
{
  v8 = objc_opt_class();
  if ((objc_msgSend_isSubclassOfClass_(class, v9, v8) & 1) == 0)
  {
    sub_1A84DFB20(a2, self, v11);
  }

  v12 = objc_msgSend_allocWithZone_(class, v10, zone);
  v15 = objc_msgSend_init(v12, v13, v14);
  *(v15 + 8) = objc_msgSend_serviceVariant(self, v16, v17);
  *(v15 + 16) = objc_msgSend_filterCategory(self, v18, v19);
  *(v15 + 24) = objc_msgSend_isSpam(self, v20, v21);
  *(v15 + 25) = objc_msgSend_areSendersUnknown(self, v22, v23);
  *(v15 + 26) = objc_msgSend_hasResponded(self, v24, v25);
  v28 = objc_msgSend_activeTelephonyConversationUUID(self, v26, v27);
  v29 = *(v15 + 32);
  *(v15 + 32) = v28;

  v32 = objc_msgSend_showingEditHistoryForChatItemGUIDs(self, v30, v31);
  v33 = *(v15 + 40);
  *(v15 + 40) = v32;

  *(v15 + 48) = objc_msgSend_isChatBot(self, v34, v35);
  *(v15 + 49) = objc_msgSend_showTranslationAlternateText(self, v36, v37);
  return v15;
}

- (id)description
{
  v31 = MEMORY[0x1E696AEC0];
  v30 = objc_opt_class();
  v5 = objc_msgSend_serviceVariant(self, v3, v4);
  v8 = objc_msgSend_filterCategory(self, v6, v7);
  if (objc_msgSend_isSpam(self, v9, v10))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (objc_msgSend_areSendersUnknown(self, v11, v12))
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  if (objc_msgSend_hasResponded(self, v14, v15))
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = objc_msgSend_activeTelephonyConversationUUID(self, v17, v18);
  v23 = objc_msgSend_UUIDString(v20, v21, v22);
  if (objc_msgSend_isChatBot(self, v24, v25))
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  v28 = objc_msgSend_stringWithFormat_(v31, v26, @"<%@, serviceVariant: %lu, filterCategory: %tu, spam: %@, sendersUnknown: %@, responded: %@, activeTelephonyConversationUUID: %@, isChatBot: %@>", v30, v5, v8, v13, v16, v19, v23, v27);

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return MEMORY[0x1EEE66B58](self, sel__copyWithClass_zone_, v4);
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return MEMORY[0x1EEE66B58](self, sel__copyWithClass_zone_, v4);
}

@end