@interface IASTextInputActionsEvent
- (IASTextInputActionsEvent)initWithbundleId:(id)a3;
- (void)dispatchEvent:(id)a3;
- (void)resetMeasures;
@end

@implementation IASTextInputActionsEvent

- (IASTextInputActionsEvent)initWithbundleId:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = IASTextInputActionsEvent;
  v6 = [(IASTextInputActionsEvent *)&v16 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_netCharacters = 0u;
    *&v6->_netEmojiCharacters = 0u;
    *&v6->_source = 0u;
    sessionActions = v6->_sessionActions;
    v6->_inputActionCount = 0;
    v6->_sessionActions = @"T";

    *&v7->_isEmojiSearch = 0;
    v7->_sessionIsModeless = 0;
    language = v7->_language;
    v7->_language = @"None";

    region = v7->_region;
    v7->_region = @"None";

    keyboardVariant = v7->_keyboardVariant;
    v7->_keyboardVariant = @"None";

    keyboardLayout = v7->_keyboardLayout;
    v7->_keyboardLayout = @"None";

    keyboardType = v7->_keyboardType;
    v7->_keyboardType = @"None";

    inputModeIdentifier = v7->_inputModeIdentifier;
    v7->_inputModeIdentifier = @"None";

    objc_storeStrong(&v7->_bundleId, a3);
  }

  return v7;
}

- (void)dispatchEvent:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  isDispatchable = objc_msgSend_isDispatchable(self, v5, v6);
  if (v4 && isDispatchable)
  {
    v35[0] = @"src";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, self->_source);
    v36[0] = v34;
    v35[1] = @"type";
    v33 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, self->_type);
    v36[1] = v33;
    v35[2] = @"netChars";
    v11 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v10, self->_netCharacters);
    v36[2] = v11;
    v35[3] = @"usrRmChars";
    v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v12, self->_userRemovedCharacters);
    v36[3] = v13;
    v35[4] = @"netEmojis";
    v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v14, self->_netEmojiCharacters);
    v36[4] = v15;
    v35[5] = @"usrRmEmojis";
    v17 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v16, self->_userRemovedEmojiCharacters);
    v36[5] = v17;
    v35[6] = @"isEmojiSearch";
    v19 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v18, self->_isEmojiSearch);
    v36[6] = v19;
    v35[7] = @"isMarkedText";
    v21 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v20, self->_isMarkedText);
    v36[7] = v21;
    v35[8] = @"inputActionCount";
    v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v22, self->_inputActionCount);
    v36[8] = v23;
    v35[9] = @"sessionIsModeless";
    v25 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v24, self->_sessionIsModeless);
    sessionActions = self->_sessionActions;
    language = self->_language;
    v36[9] = v25;
    v36[10] = sessionActions;
    v35[10] = @"sessionActions";
    v35[11] = @"language";
    v36[11] = language;
    v37 = *&self->_region;
    v35[12] = @"region";
    v35[13] = @"kbVariant";
    v35[14] = @"kbLayout";
    v35[15] = @"kbType";
    keyboardType = self->_keyboardType;
    keyboardLayout = self->_keyboardLayout;
    v39 = keyboardType;
    v35[16] = @"kbConfiguration";
    v35[17] = @"bundleId";
    bundleId = self->_bundleId;
    inputModeIdentifier = self->_inputModeIdentifier;
    v41 = bundleId;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v30, v36, v35, 18);

    v4[2](v4, v31);
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)resetMeasures
{
  self->_inputActionCount = 0;
  *&self->_netCharacters = 0u;
  *&self->_netEmojiCharacters = 0u;
}

@end