@interface XRSchemaElementsRecursiveParser
- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col;
- (void)_handleStart;
- (void)elementWithName:(id)name parser:(id)parser key:(id)key finishedWithErrorReplacement:(id)replacement;
@end

@implementation XRSchemaElementsRecursiveParser

- (void)_handleStart
{
  if (!self->super.parent)
  {
    v4 = objc_opt_new();
    errorReplacementsByKey = self->_errorReplacementsByKey;
    self->_errorReplacementsByKey = v4;

    MEMORY[0x2821F96F8]();
  }
}

- (void)elementWithName:(id)name parser:(id)parser key:(id)key finishedWithErrorReplacement:(id)replacement
{
  nameCopy = name;
  parserCopy = parser;
  keyCopy = key;
  replacementCopy = replacement;
  if (self->super.parent && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    objc_msgSend_elementWithName_parser_key_finishedWithErrorReplacement_(self->super.parent, v13, nameCopy, parserCopy, keyCopy, replacementCopy);
  }

  else
  {
    v14 = self->super.context;
    v20 = objc_msgSend_objectForKeyedSubscript_(self->_errorReplacementsByKey, v15, keyCopy, v16, v17);
    if (v20)
    {
      objc_msgSend_reportProblemWithElement_failure_(v14, v18, parserCopy, @"Key: '%@' used for error replacement: '%@' is not unique", v19, keyCopy, replacementCopy);
    }

    else
    {
      v21 = [XRSchemaErrorReplacementElement alloc];
      v23 = objc_msgSend_initWithName_key_replacementString_(v21, v22, nameCopy, keyCopy, replacementCopy);
      objc_msgSend_setObject_forKeyedSubscript_(self->_errorReplacementsByKey, v24, v23, keyCopy, v25);
    }
  }
}

- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col
{
  nameCopy = name;
  attributesCopy = attributes;
  if ((objc_msgSend_isEqualToString_(nameCopy, v12, @"xs:unique", v13, v14) & 1) != 0 || objc_msgSend_isEqualToString_(nameCopy, v15, @"xs:keyref", v16, v17))
  {
    v21 = [XRSchemaAnnotationContainingElementParser alloc];
    v24 = objc_msgSend_initWithElementName_context_(v21, v22, nameCopy, 0, v23);
    v28 = objc_msgSend_objectForKeyedSubscript_(attributesCopy, v25, @"name", v26, v27);
    objc_msgSend_setDelegate_(v24, v29, self, v30, v31);
    objc_msgSend_setKey_(v24, v32, v28, v33, v34);
  }

  else if ((objc_msgSend_isEqualToString_(nameCopy, v18, @"xs:simpleType", v19, v20) & 1) != 0 || objc_msgSend_isEqualToString_(nameCopy, v40, @"xs:simpleContent", v41, v42))
  {
    v43 = [XRSchemaSimpleTypeElementParser alloc];
    v24 = objc_msgSend_initWithElementName_context_(v43, v44, nameCopy, 0, v45);
    objc_msgSend_setDelegate_(v24, v46, self, v47, v48);
    objc_msgSend_setIdentifier_(v24, v49, @"xs:pattern", v50, v51);
  }

  else
  {
    v52 = [XRSchemaElementsRecursiveParser alloc];
    v24 = objc_msgSend_initWithElementName_context_(v52, v53, nameCopy, 0, v54);
  }

  objc_storeStrong((v24 + 16), self);
  *(v24 + 24) = line;
  *(v24 + 32) = col;
  objc_msgSend__handleStart(v24, v35, v36, v37, v38);

  return v24;
}

@end