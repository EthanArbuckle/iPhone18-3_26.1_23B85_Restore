@interface CHStrokeClassificationResultDifference
- (BOOL)hasChanges;
- (CHStrokeClassificationResultDifference)initWithStrokeIdentifiersForAddedText:(id)text removedText:(id)removedText addedNonText:(id)nonText removedNonText:(id)removedNonText transitionedText:(id)transitionedText transitionedNonText:(id)transitionedNonText;
- (NSSet)addedStrokeIdentifiers;
- (NSSet)removedStrokeIdentifiers;
- (NSSet)transitionedStrokeIdentifiers;
@end

@implementation CHStrokeClassificationResultDifference

- (CHStrokeClassificationResultDifference)initWithStrokeIdentifiersForAddedText:(id)text removedText:(id)removedText addedNonText:(id)nonText removedNonText:(id)removedNonText transitionedText:(id)transitionedText transitionedNonText:(id)transitionedNonText
{
  textCopy = text;
  removedTextCopy = removedText;
  nonTextCopy = nonText;
  removedNonTextCopy = removedNonText;
  transitionedTextCopy = transitionedText;
  transitionedNonTextCopy = transitionedNonText;
  v24.receiver = self;
  v24.super_class = CHStrokeClassificationResultDifference;
  v18 = [(CHStrokeClassificationResultDifference *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_addedTextStrokeIdentifiers, text);
    objc_storeStrong(&v19->_removedTextStrokeIdentifiers, removedText);
    objc_storeStrong(&v19->_addedNonTextStrokeIdentifiers, nonText);
    objc_storeStrong(&v19->_removedNonTextStrokeIdentifiers, removedNonText);
    objc_storeStrong(&v19->_transitionedTextStrokeIdentifiers, transitionedText);
    objc_storeStrong(&v19->_transitionedNonTextStrokeIdentifiers, transitionedNonText);
  }

  return v19;
}

- (BOOL)hasChanges
{
  v7 = objc_msgSend_count(self->_addedTextStrokeIdentifiers, a2, v2, v3, v4, v5);
  v13 = objc_msgSend_count(self->_addedNonTextStrokeIdentifiers, v8, v9, v10, v11, v12) + v7;
  v19 = objc_msgSend_count(self->_removedTextStrokeIdentifiers, v14, v15, v16, v17, v18);
  v25 = v13 + v19 + objc_msgSend_count(self->_removedNonTextStrokeIdentifiers, v20, v21, v22, v23, v24);
  v31 = v25 + objc_msgSend_count(self->_transitionedTextStrokeIdentifiers, v26, v27, v28, v29, v30);
  return v31 + objc_msgSend_count(self->_transitionedNonTextStrokeIdentifiers, v32, v33, v34, v35, v36) != 0;
}

- (NSSet)addedStrokeIdentifiers
{
  v7 = objc_msgSend_mutableCopy(self->_addedTextStrokeIdentifiers, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_setByAddingObjectsFromSet_(v7, v8, self->_addedNonTextStrokeIdentifiers, v9, v10, v11);

  return v12;
}

- (NSSet)removedStrokeIdentifiers
{
  v7 = objc_msgSend_mutableCopy(self->_removedTextStrokeIdentifiers, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_setByAddingObjectsFromSet_(v7, v8, self->_removedNonTextStrokeIdentifiers, v9, v10, v11);

  return v12;
}

- (NSSet)transitionedStrokeIdentifiers
{
  v7 = objc_msgSend_mutableCopy(self->_transitionedTextStrokeIdentifiers, a2, v2, v3, v4, v5);
  v12 = objc_msgSend_setByAddingObjectsFromSet_(v7, v8, self->_transitionedNonTextStrokeIdentifiers, v9, v10, v11);

  return v12;
}

@end