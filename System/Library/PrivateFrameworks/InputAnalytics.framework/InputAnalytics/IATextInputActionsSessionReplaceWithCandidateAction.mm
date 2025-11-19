@interface IATextInputActionsSessionReplaceWithCandidateAction
- (IATextInputActionsSessionReplaceWithCandidateAction)initWithCoder:(id)a3;
- (id)initFromDictionary:(id)a3;
- (id)toDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IATextInputActionsSessionReplaceWithCandidateAction

- (IATextInputActionsSessionReplaceWithCandidateAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  v5 = [(IATextInputActionsSessionAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"replaceWithCandidateType");
    v5->_replaceWithCandidateType = objc_msgSend_longValue(v8, v9, v10);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  v4 = a3;
  [(IATextInputActionsSessionAction *)&v8 encodeWithCoder:v4];
  v6 = objc_msgSend_numberWithLong_(MEMORY[0x1E696AD98], v5, self->_replaceWithCandidateType, v8.receiver, v8.super_class);
  objc_msgSend_encodeObject_forKey_(v4, v7, v6, @"replaceWithCandidateType");
}

- (id)initFromDictionary:(id)a3
{
  v10.receiver = self;
  v10.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  v3 = a3;
  v4 = [(IATextInputActionsSessionAction *)&v10 initFromDictionary:v3];
  v6 = objc_msgSend_objectForKeyedSubscript_(v3, v5, @"replaceWithCandidateType", v10.receiver, v10.super_class);

  v4[23] = objc_msgSend_longValue(v6, v7, v8);
  return v4;
}

- (id)toDictionary
{
  v8.receiver = self;
  v8.super_class = IATextInputActionsSessionReplaceWithCandidateAction;
  v3 = [(IATextInputActionsSessionAction *)&v8 toDictionary];
  v5 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v4, self->_replaceWithCandidateType);
  objc_msgSend_setObjectIfNotNil_forKey_(v3, v6, v5, @"replaceWithCandidateType");

  return v3;
}

@end