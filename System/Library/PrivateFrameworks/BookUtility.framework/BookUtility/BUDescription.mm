@interface BUDescription
+ (id)descriptionWithCFType:(void *)type format:(id)format;
+ (id)descriptionWithObject:(id)object class:(Class)class;
+ (id)descriptionWithObject:(id)object class:(Class)class format:(id)format;
+ (id)descriptionWithObject:(id)object format:(id)format;
- (BUDescription)initWithCFType:(void *)type header:(id)header;
- (BUDescription)initWithObject:(id)object;
- (BUDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments;
- (BUDescription)initWithObject:(id)object class:(Class)class header:(id)header;
- (BUDescription)initWithObject:(id)object format:(id)format;
- (NSString)descriptionString;
- (id)p_header;
- (void)addField:(id)field format:(id)format;
- (void)addField:(id)field value:(id)value;
- (void)addFieldWithFormat:(id)format;
- (void)addSuperDescription;
@end

@implementation BUDescription

- (BUDescription)initWithObject:(id)object class:(Class)class header:(id)header
{
  objectCopy = object;
  headerCopy = header;
  ++qword_27EC72990;
  v17.receiver = self;
  v17.super_class = BUDescription;
  v10 = [(BUDescription *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_object, objectCopy);
    v11->_class = class;
    v14 = objc_msgSend_copy(headerCopy, v12, v13);
    header = v11->_header;
    v11->_header = v14;
  }

  return v11;
}

- (BUDescription)initWithCFType:(void *)type header:(id)header
{
  headerCopy = header;
  ++qword_27EC72990;
  v14.receiver = self;
  v14.super_class = BUDescription;
  v7 = [(BUDescription *)&v14 init];
  v10 = v7;
  if (v7)
  {
    v7->_cfType = type;
    v11 = objc_msgSend_copy(headerCopy, v8, v9);
    header = v10->_header;
    v10->_header = v11;
  }

  return v10;
}

- (BUDescription)initWithObject:(id)object class:(Class)class format:(id)format arguments:(char *)arguments
{
  v10 = MEMORY[0x277CCACA8];
  formatCopy = format;
  objectCopy = object;
  v13 = [v10 alloc];
  v15 = objc_msgSend_initWithFormat_arguments_(v13, v14, formatCopy, arguments);

  v17 = objc_msgSend_initWithObject_class_header_(self, v16, objectCopy, class, v15);
  return v17;
}

- (BUDescription)initWithObject:(id)object format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  Class = object_getClass(objectCopy);
  v10 = objc_msgSend_initWithObject_class_format_arguments_(self, v9, objectCopy, Class, formatCopy, &v12);

  return v10;
}

- (BUDescription)initWithObject:(id)object
{
  objectCopy = object;
  Class = object_getClass(objectCopy);
  v7 = objc_msgSend_initWithObject_class_format_(self, v6, objectCopy, Class, &stru_2853F3C08);

  return v7;
}

+ (id)descriptionWithObject:(id)object class:(Class)class format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v9 = [BUDescription alloc];
  v11 = objc_msgSend_initWithObject_class_format_arguments_(v9, v10, objectCopy, class, formatCopy, &v14);

  return v11;
}

+ (id)descriptionWithObject:(id)object class:(Class)class
{
  objectCopy = object;
  v6 = [BUDescription alloc];
  v8 = objc_msgSend_initWithObject_class_format_(v6, v7, objectCopy, class, &stru_2853F3C08);

  return v8;
}

+ (id)descriptionWithObject:(id)object format:(id)format
{
  formatCopy = format;
  objectCopy = object;
  v7 = [BUDescription alloc];
  Class = object_getClass(objectCopy);
  v10 = objc_msgSend_initWithObject_class_format_arguments_(v7, v9, objectCopy, Class, formatCopy, &v13);

  return v10;
}

+ (id)descriptionWithCFType:(void *)type format:(id)format
{
  v5 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v7 = [v5 alloc];
  v9 = objc_msgSend_initWithFormat_arguments_(v7, v8, formatCopy, &v15);

  v10 = [BUDescription alloc];
  v12 = objc_msgSend_initWithCFType_header_(v10, v11, type, v9);

  return v12;
}

- (id)p_header
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  if (WeakRetained)
  {
    v4 = MEMORY[0x277CCACA8];
    Name = class_getName(self->_class);
    v6 = objc_loadWeakRetained(&self->_object);
    v8 = objc_msgSend_stringWithFormat_(v4, v7, @"(%s*)%p%@", Name, v6, self->_header);
  }

  else
  {
    cfType = self->_cfType;
    if (cfType)
    {
      v10 = CFGetTypeID(cfType);
      v11 = CFCopyTypeIDDescription(v10);
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"(%@Ref)%p%@", v11, self->_cfType, self->_header);
      CFRelease(v11);
    }

    else
    {
      v8 = @"(void*)nil";
    }
  }

  return v8;
}

- (void)addField:(id)field value:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  if (!self->_fields)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    fields = self->_fields;
    self->_fields = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fieldOrder = self->_fieldOrder;
    self->_fieldOrder = v12;
  }

  if (!valueCopy)
  {
    valueCopy = @"nil";
  }

  if (fieldCopy && objc_msgSend_length(fieldCopy, v7, v8))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@: ", fieldCopy);
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    v22 = objc_msgSend_count(self->_fields, v7, v8);
    objc_msgSend_stringWithFormat_(v14, v15, @"$$$%lu", v22);
  }
  v23 = ;

  objc_msgSend_addObject_(self->_fieldOrder, v16, v23);
  objc_msgSend_setObject_forKey_(self->_fields, v17, valueCopy, v23);
  if ((objc_msgSend_hasPrefix_(v23, v18, @"$$$") & 1) == 0)
  {
    v21 = objc_msgSend_length(v23, v19, v20);
    if (v21 > self->_fieldNameWidth)
    {
      self->_fieldNameWidth = v21;
    }
  }
}

- (void)addField:(id)field format:(id)format
{
  v6 = MEMORY[0x277CCACA8];
  formatCopy = format;
  fieldCopy = field;
  v9 = [v6 alloc];
  v11 = objc_msgSend_initWithFormat_arguments_(v9, v10, formatCopy, &v13);

  objc_msgSend_addField_value_(self, v12, fieldCopy, v11);
}

- (void)addFieldWithFormat:(id)format
{
  v4 = MEMORY[0x277CCACA8];
  formatCopy = format;
  v6 = [v4 alloc];
  v8 = objc_msgSend_initWithFormat_arguments_(v6, v7, formatCopy, &v10);

  objc_msgSend_addField_value_(self, v9, 0, v8);
}

- (void)addSuperDescription
{
  v5.receiver = objc_loadWeakRetained(&self->_object);
  v5.super_class = class_getSuperclass(self->_class);

  v3 = [(BUDescription *)&v5 description];
  objc_msgSend_addFieldValue_(self, v4, v3, v5.receiver, v5.super_class);
}

- (NSString)descriptionString
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = &OBJC_IVAR___BUTemporaryDirectory__leak;
  if (!self->_fields)
  {
    goto LABEL_5;
  }

  if (qword_27EC72990 < 5)
  {
    v11 = MEMORY[0x277CCAB68];
    v12 = objc_msgSend_p_header(self, a2, v2);
    v10 = objc_msgSend_stringWithFormat_(v11, v13, @"%@ {", v12);

    v53 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v14 = self->_fieldOrder;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v54, v58, 16);
    if (v16)
    {
      v18 = v16;
      v49 = v10;
      v19 = 0;
      v20 = 0;
      v21 = &stru_2853F3C08;
      v22 = *v55;
      v51 = *v55;
      do
      {
        v23 = 0;
        v50 = v20;
        v24 = v20 + 1;
        v25 = v21;
        v52 = v18;
        do
        {
          if (*v55 != v22)
          {
            objc_enumerationMutation(v14);
          }

          if (v24 > 0x63)
          {
            ++v19;
          }

          else
          {
            v26 = v14;
            v27 = *(*(&v54 + 1) + 8 * v23);
            v28 = objc_msgSend_objectForKey_(self->_fields, v17, v27);
            v31 = objc_msgSend_mutableCopy(v28, v29, v30);

            v32 = v27;
            objc_msgSend_bu_indentBy_(v31, v33, self->_fieldNameWidth);
            if (objc_msgSend_hasPrefix_(v32, v34, @"$$$"))
            {

              v32 = &stru_2853F3C08;
            }

            v37 = objc_msgSend_length(v32, v35, v36);
            objc_msgSend_replaceCharactersInRange_withString_(v31, v38, 0, v37, v32);
            objc_msgSend_appendFormat_(v53, v39, @"%@%@", v25, v31);

            v14 = v26;
            v22 = v51;
            v18 = v52;
          }

          v40 = @",\n";
          if (!self->_commaSeparated)
          {
            v40 = @"\n";
          }

          v21 = v40;

          ++v23;
          ++v24;
          v25 = v21;
        }

        while (v18 != v23);
        v20 = v50 + v18;
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v54, v58, 16);
      }

      while (v18);

      if (v19)
      {
        v42 = "";
        if (v19 != 1)
        {
          v42 = "s";
        }

        objc_msgSend_appendFormat_(v53, v41, @"%@...omitting %lu field%s (set to truncate after %lu field%s)", v21, v19, v42, 99, "s");
      }

      v4 = &OBJC_IVAR___BUTemporaryDirectory__leak;
      v10 = v49;
    }

    else
    {

      v21 = &stru_2853F3C08;
    }

    while ((objc_msgSend_hasSuffix_(v53, v41, @"\n") & 1) != 0 || objc_msgSend_hasSuffix_(v53, v43, @" "))
    {
      v45 = objc_msgSend_length(v53, v43, v44);
      objc_msgSend_deleteCharactersInRange_(v53, v46, v45 - 1, 1);
    }

    v7 = v53;
    objc_msgSend_bu_indentBy_(v53, v43, 2);
    objc_msgSend_appendFormat_(v10, v47, @"\n%@\n}", v53);

    goto LABEL_30;
  }

  WeakRetained = objc_loadWeakRetained(&self->_object);
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v10 = objc_msgSend_p_header(self, a2, v2);
    goto LABEL_31;
  }

  v7 = objc_loadWeakRetained(&self->_object);
  v10 = objc_msgSend_shortDescription(v7, v8, v9);
LABEL_30:

LABEL_31:
  --*(v4 + 306);

  return v10;
}

@end