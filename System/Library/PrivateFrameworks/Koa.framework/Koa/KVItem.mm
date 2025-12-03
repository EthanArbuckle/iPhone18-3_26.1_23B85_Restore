@interface KVItem
+ (id)itemFromBuffer:(id)buffer error:(id *)error;
+ (id)itemFromCascadeItem:(id)item error:(id *)error;
- (BOOL)hasFieldWithType:(int64_t)type label:(id)label value:(id)value;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToItem:(id)item;
- (KVItem)init;
- (KVItem)initWithBuffer:(id)buffer verify:(BOOL)verify copy:(BOOL)copy error:(id *)error;
- (id)JSONWithIndent:(unsigned __int8)indent;
- (id)fieldsWithType:(int64_t)type;
- (id)firstFieldWithType:(int64_t)type;
- (id)initFromDictionary:(id)dictionary error:(id *)error;
- (id)itemId;
- (int64_t)itemType;
- (void)enumerateFieldsUsingBlock:(id)block;
- (void)enumerateFieldsWithLocaleType:(int64_t)type usingBlock:(id)block;
@end

@implementation KVItem

- (BOOL)hasFieldWithType:(int64_t)type label:(id)label value:(id)value
{
  labelCopy = label;
  valueCopy = value;
  selfCopy = self;
  v10 = &self->_item[*self->_item[-*self->_item + 8].var0];
  v11 = &v10[*v10->var0];
  v12 = *v11->var0;
  if (!v12)
  {
    v42 = 0;
    goto LABEL_33;
  }

  v46 = valueCopy;
  v13 = 0;
  v14 = 4 * v12;
  while (1)
  {
    v15 = *v11[v13 + 4].var0;
    v16 = &v11[v13 + v15];
    v17 = &v11[v13 + v15 - *v16[4].var0];
    if (*v17[4].var0 >= 5u && (v18 = *v17[8].var0) != 0)
    {
      v19 = *v11[v13 + 4 + v15 + v18].var0;
    }

    else
    {
      v19 = 0;
    }

    if (v19 != type)
    {
      goto LABEL_24;
    }

    v20 = [KVField alloc];
    v24 = objc_msgSend_initWithBuffer_root_(v20, v21, selfCopy->_buffer, &v16[4], v22, v23);
    v30 = v24;
    v31 = v47;
    if (labelCopy || (objc_msgSend_label(v24, v25, v26, v27, v28, v29), (v31 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v47 = v31;
      v5 = objc_msgSend_label(v30, v25, v26, v27, v28, v29);
      if ((objc_msgSend_isEqual_(labelCopy, v32, v5, v33, v34, v35) & 1) == 0)
      {

        if (!labelCopy)
        {
        }

        goto LABEL_24;
      }

      LODWORD(v31) = 1;
    }

    else
    {
      v47 = 0;
    }

    if (v46 || (objc_msgSend_value(v30, v25, v26, v27, v28, v29), (v44 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v36 = objc_msgSend_value(v30, v25, v26, v27, v28, v29);
      isEqual = objc_msgSend_isEqual_(v46, v37, v36, v38, v39, v40);

      if (v46)
      {
        if (!v31)
        {
          goto LABEL_21;
        }

LABEL_20:

        goto LABEL_21;
      }

      if (v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v44 = 0;
      isEqual = 1;
      if (v31)
      {
        goto LABEL_20;
      }
    }

LABEL_21:
    if (!labelCopy)
    {
    }

    if (isEqual)
    {
      break;
    }

LABEL_24:
    v13 += 4;
    if (v14 == v13)
    {
      v42 = 0;
      goto LABEL_32;
    }
  }

  v42 = 1;
LABEL_32:
  valueCopy = v46;
LABEL_33:

  return v42;
}

- (id)firstFieldWithType:(int64_t)type
{
  v3 = &self->_item[*self->_item[-*self->_item + 8].var0];
  v4 = &v3[*v3->var0];
  v5 = *v4->var0;
  if (v5)
  {
    v7 = 0;
    v8 = 4 * v5;
    while (1)
    {
      v9 = *v4[v7 + 4].var0;
      v10 = &v4[v7 + v9];
      v11 = &v4[v7 + v9 - *v10[4].var0];
      if (*v11[4].var0 >= 5u && (v12 = *v11[8].var0) != 0)
      {
        v13 = *v4[v7 + 4 + v9 + v12].var0;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == type)
      {
        break;
      }

      v7 += 4;
      if (v8 == v7)
      {
        goto LABEL_9;
      }
    }

    v15 = [KVField alloc];
    v14 = objc_msgSend_initWithBuffer_root_(v15, v16, self->_buffer, &v10[4], v17, v18);
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  return v14;
}

- (id)fieldsWithType:(int64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = &self->_item[*self->_item[-*self->_item + 8].var0];
  v7 = &v6[*v6->var0];
  v8 = *v7->var0;
  if (v8)
  {
    v9 = 0;
    v10 = 4 * v8;
    do
    {
      v11 = *v7[v9 + 4].var0;
      v12 = &v7[v9 + v11];
      v13 = &v7[v9 + v11 - *v12[4].var0];
      if (*v13[4].var0 >= 5u && (v14 = *v13[8].var0) != 0)
      {
        v15 = *v7[v9 + 4 + v11 + v14].var0;
      }

      else
      {
        v15 = 0;
      }

      if (v15 == type)
      {
        v16 = [KVField alloc];
        v20 = objc_msgSend_initWithBuffer_root_(v16, v17, self->_buffer, &v12[4], v18, v19);
        objc_msgSend_addObject_(v5, v21, v20, v22, v23, v24);
      }

      v9 += 4;
    }

    while (v10 != v9);
  }

  return v5;
}

- (void)enumerateFieldsWithLocaleType:(int64_t)type usingBlock:(id)block
{
  blockCopy = block;
  v11 = blockCopy;
  if (type)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2559B569C;
    v16[3] = &unk_279803D30;
    typeCopy = type;
    v17 = blockCopy;
    objc_msgSend_enumerateFieldsUsingBlock_(self, v12, v16, v13, v14, v15);
  }

  else
  {
    objc_msgSend_enumerateFieldsUsingBlock_(self, v7, blockCopy, v8, v9, v10);
  }
}

- (void)enumerateFieldsUsingBlock:(id)block
{
  blockCopy = block;
  v18 = 0;
  item = self->_item;
  v6 = *item[-*item->var0 + 8].var0;
  v7 = *item[v6].var0;
  v8 = *item[v6 + v7].var0;
  if (v8)
  {
    v9 = 0;
    v10 = 4 * v8;
    v11 = &item[v7 + 4 + v6];
    do
    {
      if (v18)
      {
        break;
      }

      v12 = *v11->var0;
      v13 = [KVField alloc];
      v17 = objc_msgSend_initWithBuffer_root_(v13, v14, self->_buffer, &v11[v12], v15, v16);
      blockCopy[2](blockCopy, v17, v9++, &v18);

      v11 += 4;
      v10 -= 4;
    }

    while (v10);
  }
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  v10 = itemCopy;
  if (itemCopy)
  {
    buffer = self->_buffer;
    v12 = objc_msgSend_buffer(itemCopy, v5, v6, v7, v8, v9);
    isEqual = objc_msgSend_isEqual_(buffer, v13, v12, v14, v15, v16);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToItem = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToItem = objc_msgSend_isEqualToItem_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToItem = 0;
  }

  return isEqualToItem;
}

- (id)initFromDictionary:(id)dictionary error:(id *)error
{
  selfCopy = self;
  v106[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v97 = objc_alloc_init(KVItemBuilder);
  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v5, @"itemType", v6, v7, v8);
  v10 = KVItemTypeFromName(v9);

  v93 = objc_msgSend_objectForKey_(dictionaryCopy, v11, @"itemId", v12, v13, v14);
  v17 = objc_msgSend_setItemType_itemId_error_(v97, v15, v10, v93, error, v16);

  if (v17)
  {
    v94 = objc_msgSend_objectForKey_(dictionaryCopy, v18, @"fields", v19, v20, v21);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      obj = v94;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v26, &v98, v104, 16, v27);
      if (v28)
      {
        v29 = *v99;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v99 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v31 = *(*(&v98 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v84 = MEMORY[0x277CCA9B8];
              v102 = *MEMORY[0x277CCA450];
              v40 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v32, @"Unexpected field dictionary: %@ in item: %@", v33, v34, v35, v31, dictionaryCopy, selfCopy);
              v103 = v40;
              v82 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v85, &v103, &v102, 1, v86);
              v89 = objc_msgSend_errorWithDomain_code_userInfo_(v84, v87, @"com.apple.koa.item.builder", 6, v82, v88);
              if (error && v89)
              {
                v89 = v89;
                *error = v89;
              }

              goto LABEL_23;
            }

            v40 = objc_msgSend_objectForKey_(v31, v32, @"localeType", v33, v34, v35);
            if (v40)
            {
              v41 = objc_msgSend_objectForKey_(v31, v36, @"fieldType", v37, v38, v39);
              v42 = KVFieldTypeFromName(v41);
              v43 = KVLocaleTypeFromName(v40);
              v48 = objc_msgSend_objectForKey_(v31, v44, @"label", v45, v46, v47);
              v53 = objc_msgSend_objectForKey_(v31, v49, @"value", v50, v51, v52);
              v55 = objc_msgSend_addFieldWithType_localeType_label_value_error_(v97, v54, v42, v43, v48, v53, error);
              LOBYTE(v42) = v55 == 0;

              if (v42)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v56 = objc_msgSend_objectForKey_(v31, v36, @"fieldType", v37, v38, v39);
              v57 = KVFieldTypeFromName(v56);
              v62 = objc_msgSend_objectForKey_(v31, v58, @"label", v59, v60, v61);
              v67 = objc_msgSend_objectForKey_(v31, v63, @"value", v64, v65, v66);
              v69 = objc_msgSend_addFieldWithType_label_value_error_(v97, v68, v57, v62, v67, error);
              LOBYTE(v57) = v69 == 0;

              if (v57)
              {
                v40 = 0;
                goto LABEL_24;
              }
            }
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v70, &v98, v104, 16, v71);
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      v17 = objc_msgSend_buildItemWithError_(v97, v72, error, v73, v74, v75);
    }

    else
    {
      v76 = MEMORY[0x277CCA9B8];
      v105 = *MEMORY[0x277CCA450];
      obj = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"Unexpected fields array in item: %@", v23, v24, v25, dictionaryCopy);
      v106[0] = obj;
      v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v77, v106, &v105, 1, v78);
      v81 = objc_msgSend_errorWithDomain_code_userInfo_(v76, v79, @"com.apple.koa.item.builder", 6, v40, v80);
      v82 = v81;
      if (error && v81)
      {
        v83 = v81;
        *error = v82;
      }

LABEL_23:

LABEL_24:
      v17 = 0;
    }
  }

  v90 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)JSONWithIndent:(unsigned __int8)indent
{
  v5 = sub_2559C2C40(indent);
  v6 = sub_2559C2C40(indent + 1);
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  objc_msgSend_appendFormat_(v7, v8, @"%@{\n", v9, v10, v11, v5);
  v17 = objc_msgSend_itemType(self, v12, v13, v14, v15, v16);
  if (v17 - 1 >= 0x1A)
  {
    v21 = 0;
  }

  else
  {
    v21 = v17;
  }

  v22 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x277CCACA8], v18, off_279803A58[v21], 4, v19, v20);
  objc_msgSend_appendFormat_(v7, v23, @"%@%@: %@,\n", v24, v25, v26, v6, @"itemType", v22);

  v32 = objc_msgSend_itemId(self, v27, v28, v29, v30, v31);
  v38 = sub_2559C2CC8(v32, v33, v34, v35, v36, v37);
  objc_msgSend_appendFormat_(v7, v39, @"%@%@: %@,\n", v40, v41, v42, v6, @"itemId", v38);

  objc_msgSend_appendFormat_(v7, v43, @"%@%@: [\n", v44, v45, v46, v6, @"fields");
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = sub_2559B6130;
  v57[3] = &unk_279803D08;
  v47 = v7;
  v58 = v47;
  indentCopy = indent;
  objc_msgSend_enumerateFieldsUsingBlock_(self, v48, v57, v49, v50, v51);
  objc_msgSend_appendFormat_(v47, v52, @"\n%@]\n%@}", v53, v54, v55, v6, v5);

  return v47;
}

- (id)itemId
{
  v3 = &self->_item[-*self->_item];
  if (*v3->var0 >= 5u && *v3[4].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_item[*self->_item[-*self->_item + 4].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = &stru_2867B5AF8;
  }

  return v8;
}

- (int64_t)itemType
{
  item = self->_item;
  v3 = &item[-*item->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *item[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (KVItem)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

- (KVItem)initWithBuffer:(id)buffer verify:(BOOL)verify copy:(BOOL)copy error:(id *)error
{
  copyCopy = copy;
  verifyCopy = verify;
  v162[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v150.receiver = self;
  v150.super_class = KVItem;
  v15 = [(KVItem *)&v150 init];
  if (!v15)
  {
    goto LABEL_70;
  }

  if (verifyCopy)
  {
    if (bufferCopy)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v49 = MEMORY[0x277CCA9B8];
        v159 = *MEMORY[0x277CCA450];
        v50 = MEMORY[0x277CCACA8];
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        v57 = objc_msgSend_stringWithFormat_(v50, v53, @"Buffer has unexpected class: %@ expected: NSData", v54, v55, v56, v52);
        v160 = v57;
        v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, &v160, &v159, 1, v59);
        v63 = objc_msgSend_errorWithDomain_code_userInfo_(v49, v61, @"com.apple.koa.item.builder", 6, v60, v62);
        if (error && v63)
        {
          v63 = v63;
          *error = v63;
        }

        goto LABEL_83;
      }

      if (objc_msgSend_length(bufferCopy, v16, v17, v18, v19, v20))
      {
        goto LABEL_6;
      }

      v64 = MEMORY[0x277CCA9B8];
      v157 = *MEMORY[0x277CCA450];
      v158 = @"Buffer has length of zero";
      v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, &v158, &v157, 1, v14);
      v48 = objc_msgSend_errorWithDomain_code_userInfo_(v64, v65, @"com.apple.koa.item.builder", 6, v45, v66);
      if (error && v48)
      {
        v48 = v48;
        *error = v48;
      }
    }

    else
    {
      v44 = MEMORY[0x277CCA9B8];
      v161 = *MEMORY[0x277CCA450];
      v162[0] = @"Buffer is nil";
      v45 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v162, &v161, 1, v14);
      v48 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v46, @"com.apple.koa.item.builder", 6, v45, v47);
      if (error && v48)
      {
        v48 = v48;
        *error = v48;
      }
    }

LABEL_83:
    v107 = 0;
    goto LABEL_84;
  }

LABEL_6:
  if (copyCopy)
  {
    v21 = objc_msgSend_dataWithData_(MEMORY[0x277CBEA90], v11, bufferCopy, v12, v13, v14);
  }

  else
  {
    v21 = bufferCopy;
  }

  v22 = *(v15 + 2);
  *(v15 + 2) = v21;

  v33 = objc_msgSend_bytes(*(v15 + 2), v23, v24, v25, v26, v27);
  *(v15 + 1) = &v33[*v33];
  if (!verifyCopy)
  {
    goto LABEL_70;
  }

  v34 = objc_msgSend_length(*(v15 + 2), v28, v29, v30, v31, v32);
  v145 = v33;
  v146 = v34;
  v147 = xmmword_2559D02B0;
  v148 = 0;
  v149 = 1;
  if (v34 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v40 = *(v15 + 1);
  if (v40)
  {
    if (sub_2559A7668(&v145, *(v15 + 1)) && sub_2559A7720(v40, &v145, 4u))
    {
      v41 = (v40 - *v40);
      if (*v41 >= 5u && (v42 = v41[2]) != 0)
      {
        v43 = (v40 + v42 + *(v40 + v42));
      }

      else
      {
        v43 = 0;
      }

      if (sub_2559A777C(&v145, v43))
      {
        v67 = *v40;
        v68 = v40 - v67;
        v69 = *(v40 - v67);
        if ((v69 < 7 || !*(v68 + 3) || v146 >= 3 && v146 - 2 >= v40 + *(v68 + 3) - v145) && sub_2559A7720(v40, &v145, 8u))
        {
          if (v69 < 9)
          {
            goto LABEL_67;
          }

          if (!*(v68 + 4))
          {
            v71 = -v67;
            goto LABEL_42;
          }

          if (sub_2559A77F8(&v145, (v40 + *(v68 + 4) + *(v40 + *(v68 + 4))), 4uLL, 0))
          {
            v70 = *v40;
            if (*(v40 - v70) >= 9u)
            {
              v71 = -v70;
LABEL_42:
              v72 = *(v40 + v71 + 8);
              if (v72)
              {
                v73 = (v40 + v72);
                v74 = *v73;
                v142 = v73;
                if (*(v73 + v74))
                {
                  v75 = 0;
                  v76 = v73;
                  v143 = v73 + 1;
                  do
                  {
                    v77 = v74;
                    v78 = v76 + v74;
                    v79 = (v76 + v74 + 4);
                    v80 = *v79;
                    if (!sub_2559A7668(&v145, (v79 + v80)))
                    {
                      goto LABEL_71;
                    }

                    v144 = &v78[v80];
                    v81 = v80 - *&v78[v80 + 4];
                    v82 = *&v78[v81 + 4];
                    if (v82 >= 5 && *(v76 + v77 + v81 + 8) && (v146 < 3 || v146 - 2 < v143 + v77 + v80 + *(v76 + v77 + v81 + 8) - v145))
                    {
                      goto LABEL_71;
                    }

                    if (!sub_2559A7720((v79 + v80), &v145, 6u))
                    {
                      goto LABEL_71;
                    }

                    if (v82 >= 7 && *(v76 + v77 + v81 + 10))
                    {
                      v83 = v80 + *(v76 + v77 + v81 + 10);
                      v84 = (v76 + v77 + v83 + *(v76 + v77 + v83 + 4) + 4);
                    }

                    else
                    {
                      v84 = 0;
                    }

                    if (!sub_2559A777C(&v145, v84) || !sub_2559A7720((v79 + v80), &v145, 8u))
                    {
                      goto LABEL_71;
                    }

                    v85 = v76 + v77 + v80 - *(v144 + 1);
                    if (*(v85 + 2) >= 9u && (v86 = *(v85 + 6)) != 0)
                    {
                      v87 = (v76 + v77 + v80 + v86 + *(v76 + v77 + v80 + v86 + 4) + 4);
                    }

                    else
                    {
                      v87 = 0;
                    }

                    if (!sub_2559A777C(&v145, v87))
                    {
                      goto LABEL_71;
                    }

                    v88 = v76 + v77 + v80 - *(v144 + 1);
                    if (*(v88 + 2) >= 0xBu)
                    {
                      v89 = *(v88 + 7);
                      if (v89)
                      {
                        if (v146 < 2 || v146 - 1 < v143 + v77 + v80 + v89 - v145)
                        {
                          goto LABEL_71;
                        }
                      }
                    }

                    LODWORD(v147) = v147 - 1;
                    ++v75;
                    v74 = v77;
                    ++v143;
                    ++v76;
                  }

                  while (v75 < *(v142 + v77));
                }
              }
            }

LABEL_67:
            LODWORD(v147) = v147 - 1;
            goto LABEL_68;
          }
        }
      }
    }

LABEL_71:
    v108 = MEMORY[0x277CCA9B8];
    v155 = *MEMORY[0x277CCA450];
    v156 = @"Buffer failed validation";
    v109 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, &v156, &v155, 1, v39);
    v112 = objc_msgSend_errorWithDomain_code_userInfo_(v108, v110, @"com.apple.koa.item.builder", 6, v109, v111);
    v113 = v112;
    if (error && v112)
    {
      v114 = v112;
      *error = v113;
    }

    goto LABEL_82;
  }

LABEL_68:
  if (objc_msgSend_itemType(v15, v35, v36, v37, v38, v39) - 1 >= 0x1A)
  {
    v115 = MEMORY[0x277CCA9B8];
    v153 = *MEMORY[0x277CCA450];
    v116 = MEMORY[0x277CCACA8];
    v117 = objc_msgSend_itemType(v15, v90, v91, v92, v93, v94);
    v109 = objc_msgSend_stringWithFormat_(v116, v118, @"Buffer has invalid itemType: %u", v119, v120, v121, v117);
    v154 = v109;
    v113 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v122, &v154, &v153, 1, v123);
    v126 = objc_msgSend_errorWithDomain_code_userInfo_(v115, v124, @"com.apple.koa.item.builder", 1, v113, v125);
    v127 = v126;
    if (error && v126)
    {
      v128 = v126;
      *error = v127;
    }

    goto LABEL_81;
  }

  v95 = objc_msgSend_itemId(v15, v90, v91, v92, v93, v94);
  v101 = objc_msgSend_length(v95, v96, v97, v98, v99, v100) == 0;

  if (v101)
  {
    v129 = MEMORY[0x277CCA9B8];
    v151 = *MEMORY[0x277CCA450];
    v130 = MEMORY[0x277CCACA8];
    v109 = objc_msgSend_itemId(v15, v102, v103, v104, v105, v106);
    v113 = objc_msgSend_stringWithFormat_(v130, v131, @"Buffer has invalid itemId: %@", v132, v133, v134, v109);
    v152 = v113;
    v127 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v135, &v152, &v151, 1, v136);
    v139 = objc_msgSend_errorWithDomain_code_userInfo_(v129, v137, @"com.apple.koa.item.builder", 2, v127, v138);
    if (error && v139)
    {
      v139 = v139;
      *error = v139;
    }

LABEL_81:
LABEL_82:

    goto LABEL_83;
  }

LABEL_70:
  v107 = v15;
LABEL_84:

  v140 = *MEMORY[0x277D85DE8];
  return v107;
}

+ (id)itemFromCascadeItem:(id)item error:(id *)error
{
  v6 = objc_msgSend_itemFromCascadeItem_error_(KVItemConverter, a2, item, error, v4, v5);

  return v6;
}

+ (id)itemFromBuffer:(id)buffer error:(id *)error
{
  bufferCopy = buffer;
  v6 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_initWithBuffer_verify_copy_error_(v6, v7, bufferCopy, 1, 1, error);

  return v8;
}

@end