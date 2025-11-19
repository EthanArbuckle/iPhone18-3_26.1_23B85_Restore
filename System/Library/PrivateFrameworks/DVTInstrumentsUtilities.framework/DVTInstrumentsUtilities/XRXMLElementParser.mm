@interface XRXMLElementParser
+ (id)_elementNameToKVCMap;
- (XRXMLElementParser)initWithElementName:(id)a3 context:(id)a4;
- (id)endElementAtLine:(int64_t)a3 col:(int64_t)a4;
- (id)startElementWithName:(id)a3 attributes:(id)a4 line:(int64_t)a5 col:(int64_t)a6;
- (id)valueForElementName:(id)a3;
- (void)setValue:(id)a3 forElementName:(id)a4;
- (void)simulateEmptyElement:(id)a3;
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

- (XRXMLElementParser)initWithElementName:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
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

    v27 = objc_msgSend_copy(v6, v23, v24, v25, v26);
    elementName = v8->_elementName;
    v8->_elementName = v27;

    objc_storeStrong(&v8->context, a4);
  }

  return v8;
}

- (id)startElementWithName:(id)a3 attributes:(id)a4 line:(int64_t)a5 col:(int64_t)a6
{
  v10 = a4;
  elementToClass = self->_elementToClass;
  v12 = a3;
  v16 = objc_msgSend_objectForKeyedSubscript_(elementToClass, v13, v12, v14, v15);
  if (!v16)
  {
    v26 = [XRXMLIgnoreElementParser alloc];
    v20 = objc_msgSend_initWithElementName_context_(v26, v27, v12, self->context, v28);
    goto LABEL_6;
  }

  v17 = [v16 alloc];
  v20 = objc_msgSend_initWithElementName_context_(v17, v18, v12, self->context, v19);

  if (v10 && objc_msgSend_count(v10, v21, v22, v23, v24))
  {
    v25 = v10;
    v12 = *(v20 + 80);
    *(v20 + 80) = v25;
LABEL_6:
  }

  objc_storeStrong((v20 + 16), self);
  *(v20 + 24) = a5;
  *(v20 + 32) = a6;
  objc_msgSend__handleStart(v20, v29, v30, v31, v32);

  return v20;
}

- (id)endElementAtLine:(int64_t)a3 col:(int64_t)a4
{
  self->_lineOfEnd = a3;
  self->_colOfEnd = a4;
  objc_msgSend__handleCompletion(self, a2, a3, a4, v4);
  parent = self->parent;
  v7 = parent;
  v8 = self->parent;
  self->parent = 0;

  return parent;
}

- (void)setValue:(id)a3 forElementName:(id)a4
{
  v14 = a4;
  elementToKVC = self->_elementToKVC;
  v7 = a3;
  v13 = objc_msgSend_objectForKeyedSubscript_(elementToKVC, v8, v14, v9, v10);
  if (v13)
  {
    objc_msgSend_setValue_forKey_(self, v11, v7, v13, v12);
  }

  else
  {
    objc_msgSend_setValue_forKey_(self, v11, v7, v14, v12);
  }
}

- (id)valueForElementName:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_elementToKVC, v5, v4, v6, v7);
  if (v11)
  {
    objc_msgSend_valueForKey_(self, v8, v11, v9, v10);
  }

  else
  {
    objc_msgSend_valueForKey_(self, v8, v4, v9, v10);
  }
  v12 = ;

  return v12;
}

- (void)simulateEmptyElement:(id)a3
{
  v7 = objc_msgSend_startElementWithName_attributes_line_col_(self, a2, a3, 0, self->_lineOfStart, self->_colOfStart);
  v6 = objc_msgSend_endElementAtLine_col_(v7, v4, self->_lineOfStart, self->_colOfStart, v5);
}

@end