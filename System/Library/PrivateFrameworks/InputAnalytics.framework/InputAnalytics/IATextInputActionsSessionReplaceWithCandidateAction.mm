@interface IATextInputActionsSessionReplaceWithCandidateAction
- (IATextInputActionsSessionReplaceWithCandidateAction)initWithCoder:(id)coder;
- (id)initFromDictionary:(id)dictionary;
- (id)toDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IATextInputActionsSessionReplaceWithCandidateAction

- (IATextInputActionsSessionReplaceWithCandidateAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  v5 = [(IATextInputActionsSessionAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"replaceWithCandidateType");
    v5->_replaceWithCandidateType = objc_msgSend_longValue(v8, v9, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  coderCopy = coder;
  [(IATextInputActionsSessionAction *)&v8 encodeWithCoder:coderCopy];
  v6 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v5, self->_replaceWithCandidateType, v8.receiver, v8.super_class);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, v6, @"replaceWithCandidateType");
}

- (id)initFromDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  dictionaryCopy = dictionary;
  v4 = [(IATextInputActionsSessionAction *)&v10 initFromDictionary:dictionaryCopy];
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v5, @"replaceWithCandidateType", v10.receiver, v10.super_class);

  v4[23] = objc_msgSend_longValue(v6, v7, v8);
  return v4;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  toDictionary = [(IATextInputActionsSessionAction *)&v8 toDictionary];
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v4, self->_replaceWithCandidateType);
  objc_msgSend_setObjectIfNotNil_forKey_(toDictionary, v6, v5, @"replaceWithCandidateType");

  return toDictionary;
}

@end