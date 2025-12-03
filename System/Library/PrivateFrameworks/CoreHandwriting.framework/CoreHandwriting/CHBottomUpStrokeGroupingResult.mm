@interface CHBottomUpStrokeGroupingResult
- (CHBottomUpStrokeGroupingResult)initWithCoder:(id)coder;
- (CHBottomUpStrokeGroupingResult)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups substrokePlacementsByStrokeIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)groupingResultUpdatedWithGroupReplacements:(id)replacements;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHBottomUpStrokeGroupingResult

- (CHBottomUpStrokeGroupingResult)initWithStrokeGroups:(id)groups createdStrokeGroups:(id)strokeGroups deletedStrokeGroups:(id)deletedStrokeGroups substrokePlacementsByStrokeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = CHBottomUpStrokeGroupingResult;
  v12 = [(CHStrokeGroupingResult *)&v15 initWithStrokeGroups:groups createdStrokeGroups:strokeGroups deletedStrokeGroups:deletedStrokeGroups];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_substrokePlacementsByStrokeIdentifier, identifier);
  }

  return v13;
}

- (id)groupingResultUpdatedWithGroupReplacements:(id)replacements
{
  selfCopy = self;
  v34.receiver = selfCopy;
  v34.super_class = CHBottomUpStrokeGroupingResult;
  v5 = [(CHStrokeGroupingResult *)&v34 groupingResultUpdatedWithGroupReplacements:replacements];
  if (v5 != selfCopy)
  {
    v6 = [CHBottomUpStrokeGroupingResult alloc];
    v12 = objc_msgSend_strokeGroups(v5, v7, v8, v9, v10, v11);
    v18 = objc_msgSend_createdStrokeGroups(v5, v13, v14, v15, v16, v17);
    v24 = objc_msgSend_deletedStrokeGroups(v5, v19, v20, v21, v22, v23);
    v30 = objc_msgSend_substrokePlacementsByStrokeIdentifier(selfCopy, v25, v26, v27, v28, v29);
    v32 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_substrokePlacementsByStrokeIdentifier_(v6, v31, v12, v18, v24, v30);

    selfCopy = v32;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = objc_msgSend_substrokePlacementsByStrokeIdentifier(self, v6, v7, v8, v9, v10);
  v15 = objc_msgSend_initWithDictionary_copyItems_(v5, v12, v11, 1, v13, v14);

  v20 = objc_msgSend_allocWithZone_(CHBottomUpStrokeGroupingResult, v16, zone, v17, v18, v19);
  v26 = objc_msgSend_strokeGroups(self, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_createdStrokeGroups(self, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_deletedStrokeGroups(self, v33, v34, v35, v36, v37);
  v40 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_substrokePlacementsByStrokeIdentifier_(v20, v39, v26, v32, v38, v15);

  return v40;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v9 = objc_msgSend_strokeGroups(self, v4, v5, v6, v7, v8);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v9, @"strokeGroups", v11, v12);

  objc_msgSend_encodeObject_forKey_(coderCopy, v13, self->_substrokePlacementsByStrokeIdentifier, @"substrokePlacementsByStrokeIdentifier", v14, v15);
}

- (CHBottomUpStrokeGroupingResult)initWithCoder:(id)coder
{
  v40[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v40[2] = objc_opt_class();
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v40, 3, v7, v8);
  v14 = objc_msgSend_setWithArray_(v5, v10, v9, v11, v12, v13);
  v18 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v14, @"strokeGroups", v16, v17);

  v19 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v23 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v20, &v36, 4, v21, v22);
  v28 = objc_msgSend_setWithArray_(v19, v24, v23, v25, v26, v27, v36, v37, v38);
  v32 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v29, v28, @"substrokePlacementsByStrokeIdentifier", v30, v31);

  v34 = objc_msgSend_initWithStrokeGroups_createdStrokeGroups_deletedStrokeGroups_substrokePlacementsByStrokeIdentifier_(self, v33, v18, v18, 0, v32);
  return v34;
}

@end