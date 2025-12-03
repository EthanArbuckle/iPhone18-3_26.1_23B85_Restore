@interface XRXMLElementParser
+ (id)_elementNameToKVCMap;
- (XRXMLElementParser)initWithElementName:(id)name context:(id)context;
- (id)endElementAtLine:(int64_t)line col:(int64_t)col;
- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col;
- (id)valueForElementName:(id)name;
- (void)setValue:(id)value forElementName:(id)name;
- (void)simulateEmptyElement:(id)element;
@end

@implementation XRXMLElementParser

+ (id)_elementNameToKVCMap
{
  if (qword_27EE86848 != -1)
  {
    sub_2480B38FC();
  }

  v3 = qword_27EE86840;

  return v3;
}

- (XRXMLElementParser)initWithElementName:(id)name context:(id)context
{
  nameCopy = name;
  contextCopy = context;
  v30.receiver = self;
  v30.super_class = XRXMLElementParser;
  v8 = [(XRXMLElementParser *)&v30 init];
  if (v8)
  {
    v9 = objc_opt_class();
    v14 = objc_msgSend__elementNameToClassMap(v9, v10, v11, v12, v13);
    elementToClass = v8->_elementToClass;
    v8->_elementToClass = v14;

    v16 = objc_opt_class();
    v21 = objc_msgSend__elementNameToKVCMap(v16, v17, v18, v19, v20);
    elementToKVC = v8->_elementToKVC;
    v8->_elementToKVC = v21;

    v27 = objc_msgSend_copy(nameCopy, v23, v24, v25, v26);
    elementName = v8->_elementName;
    v8->_elementName = v27;

    objc_storeStrong(&v8->context, context);
  }

  return v8;
}

- (id)startElementWithName:(id)name attributes:(id)attributes line:(int64_t)line col:(int64_t)col
{
  attributesCopy = attributes;
  elementToClass = self->_elementToClass;
  nameCopy = name;
  v16 = objc_msgSend_objectForKeyedSubscript_(elementToClass, v13, nameCopy, v14, v15);
  if (!v16)
  {
    v26 = [XRXMLIgnoreElementParser alloc];
    v20 = objc_msgSend_initWithElementName_context_(v26, v27, nameCopy, self->context, v28);
    goto LABEL_6;
  }

  v17 = [v16 alloc];
  v20 = objc_msgSend_initWithElementName_context_(v17, v18, nameCopy, self->context, v19);

  if (attributesCopy && objc_msgSend_count(attributesCopy, v21, v22, v23, v24))
  {
    v25 = attributesCopy;
    nameCopy = *(v20 + 80);
    *(v20 + 80) = v25;
LABEL_6:
  }

  objc_storeStrong((v20 + 16), self);
  *(v20 + 24) = line;
  *(v20 + 32) = col;
  objc_msgSend__handleStart(v20, v29, v30, v31, v32);

  return v20;
}

- (id)endElementAtLine:(int64_t)line col:(int64_t)col
{
  self->_lineOfEnd = line;
  self->_colOfEnd = col;
  objc_msgSend__handleCompletion(self, a2, line, col, v4);
  parent = self->parent;
  v7 = parent;
  v8 = self->parent;
  self->parent = 0;

  return parent;
}

- (void)setValue:(id)value forElementName:(id)name
{
  nameCopy = name;
  elementToKVC = self->_elementToKVC;
  valueCopy = value;
  v13 = objc_msgSend_objectForKeyedSubscript_(elementToKVC, v8, nameCopy, v9, v10);
  if (v13)
  {
    objc_msgSend_setValue_forKey_(self, v11, valueCopy, v13, v12);
  }

  else
  {
    objc_msgSend_setValue_forKey_(self, v11, valueCopy, nameCopy, v12);
  }
}

- (id)valueForElementName:(id)name
{
  nameCopy = name;
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_elementToKVC, v5, nameCopy, v6, v7);
  if (v11)
  {
    objc_msgSend_valueForKey_(self, v8, v11, v9, v10);
  }

  else
  {
    objc_msgSend_valueForKey_(self, v8, nameCopy, v9, v10);
  }
  v12 = ;

  return v12;
}

- (void)simulateEmptyElement:(id)element
{
  v7 = objc_msgSend_startElementWithName_attributes_line_col_(self, a2, element, 0, self->_lineOfStart, self->_colOfStart);
  v6 = objc_msgSend_endElementAtLine_col_(v7, v4, self->_lineOfStart, self->_colOfStart, v5);
}

@end