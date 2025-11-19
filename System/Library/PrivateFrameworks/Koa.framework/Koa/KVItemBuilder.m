@interface KVItemBuilder
+ (id)buildFieldWithType:(int64_t)a3 label:(id)a4 value:(id)a5 error:(id *)a6;
+ (void)initialize;
- (KVItemBuilder)init;
- (id).cxx_construct;
- (id)_addFieldWithType:(int64_t)a3 localeType:(int64_t)a4 label:(id)a5 value:(id)a6 error:(id *)a7;
- (id)addFieldWithType:(int64_t)a3 label:(id)a4 value:(id)a5 error:(id *)a6;
- (id)addFieldWithType:(int64_t)a3 localeType:(int64_t)a4 label:(id)a5 value:(id)a6 error:(id *)a7;
- (id)addFieldWithType:(int64_t)a3 localeType:(int64_t)a4 value:(id)a5 error:(id *)a6;
- (id)addFieldWithType:(int64_t)a3 value:(id)a4 error:(id *)a5;
- (id)buildBufferWithError:(id *)a3;
- (id)buildItemWithError:(id *)a3;
- (id)setItemType:(int64_t)a3 itemId:(id)a4 error:(id *)a5;
- (void)_reset;
@end

@implementation KVItemBuilder

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 24) = xmmword_2559D02C0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  *(self + 9) = 0;
  *(self + 10) = 1;
  *(self + 44) = 256;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  return self;
}

- (id)buildItemWithError:(id *)a3
{
  v7 = objc_msgSend_buildBufferWithError_(self, a2, a3, v3, v4, v5);
  if (v7)
  {
    v8 = [KVItem alloc];
    v10 = objc_msgSend_initWithBuffer_verify_copy_error_(v8, v9, v7, 0, 0, a3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)buildBufferWithError:(id *)a3
{
  v83[1] = *MEMORY[0x277D85DE8];
  if (self->_itemType && (itemId = self->_itemId) != 0)
  {
    v9 = objc_msgSend_UTF8String(itemId, a2, a3, v3, v4, v5);
    v10 = strlen(v9);
    v11 = sub_2559A7B04(&self->_fbb, v9, v10);
    begin = self->_fields.__begin_;
    end = self->_fields.__end_;
    v14 = end - begin;
    if (end == begin)
    {
      v15 = &unk_2559D0358;
    }

    else
    {
      v15 = self->_fields.__begin_;
    }

    v16 = v14 >> 2;
    sub_2559AD6E4(&self->_fbb, v14 >> 2, 4uLL);
    if (begin == end)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v17 = v15 - 4;
      v18 = v16;
      do
      {
        v19 = sub_2559A85F0(&self->_fbb, *&v17[4 * v18]);
        sub_2559A8660(&self->_fbb, v19);
        --v18;
      }

      while (v18);
    }

    v31 = sub_2559AD750(&self->_fbb, v16);
    sub_2559A7BAC(&self->_fbb);
    self->_fbb.nested = 1;
    reserved = self->_fbb.buf_.reserved_;
    cur = self->_fbb.buf_.cur_;
    buf = self->_fbb.buf_.buf_;
    sub_2559A7C64(&self->_fbb, 6, LOWORD(self->_itemType));
    sub_2559A7C14(&self->_fbb, 4, v11);
    if (v31)
    {
      v35 = sub_2559A85F0(&self->_fbb, v31);
      sub_2559A8738(&self->_fbb, 8, v35);
    }

    v36 = sub_2559A7D18(&self->_fbb, reserved - cur + buf);
    sub_2559A7FB4(&self->_fbb, v36, 0, 0);
    v37 = objc_alloc(MEMORY[0x277CBEA90]);
    v38 = sub_2559A80B8(&self->_fbb);
    v42 = objc_msgSend_initWithBytes_length_(v37, v39, v38, (LODWORD(self->_fbb.buf_.reserved_) - LODWORD(self->_fbb.buf_.cur_) + LODWORD(self->_fbb.buf_.buf_)), v40, v41);
    objc_msgSend__reset(self, v43, v44, v45, v46, v47);
    if (objc_msgSend_length(v42, v48, v49, v50, v51, v52) < 0xC801)
    {
      v30 = v42;
    }

    else
    {
      v58 = MEMORY[0x277CCA9B8];
      v80 = *MEMORY[0x277CCA068];
      v59 = MEMORY[0x277CCACA8];
      v60 = objc_msgSend_length(v42, v53, v54, v55, v56, v57);
      v66 = KVItemTypeDescription(self->_itemType, v61, v62, v63, v64, v65);
      v71 = objc_msgSend_stringWithFormat_(v59, v67, @"Cannot build item with size: %lu exceeding the maximum allowed size: %lu. itemType: %@ itemId: %@", v68, v69, v70, v60, 51200, v66, self->_itemId);
      v81 = v71;
      v74 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v72, &v81, &v80, 1, v73);
      v77 = objc_msgSend_errorWithDomain_code_userInfo_(v58, v75, @"com.apple.koa.item.builder", 7, v74, v76);
      if (a3 && v77)
      {
        v77 = v77;
        *a3 = v77;
      }

      v30 = 0;
    }
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v82 = *MEMORY[0x277CCA068];
    v83[0] = @"required properties itemType and itemId are not set.";
    v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v83, &v82, 1, v5);
    v24 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v22, @"com.apple.koa.item.builder", 8, v21, v23);
    if (a3 && v24)
    {
      v24 = v24;
      *a3 = v24;
    }

    objc_msgSend__reset(self, v25, v26, v27, v28, v29);
    v30 = 0;
  }

  v78 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_addFieldWithType:(int64_t)a3 localeType:(int64_t)a4 label:(id)a5 value:(id)a6 error:(id *)a7
{
  v164[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v15 = a6;
  itemType = self->_itemType;
  if (!itemType || !self->_itemId)
  {
    v45 = MEMORY[0x277CCA9B8];
    v163 = *MEMORY[0x277CCA068];
    v164[0] = @"Cannot add field before setting required fields item type and itemId.";
    v46 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, v164, &v163, 1, v14);
    v49 = objc_msgSend_errorWithDomain_code_userInfo_(v45, v47, @"com.apple.koa.item.builder", 8, v46, v48);
    v50 = v49;
    if (a7 && v49)
    {
      v51 = v49;
      *a7 = v50;
    }

    goto LABEL_27;
  }

  if (KVItemTypeFromFieldType(a3) != itemType)
  {
    v52 = MEMORY[0x277CCA9B8];
    v161 = *MEMORY[0x277CCA068];
    v53 = MEMORY[0x277CCACA8];
    v46 = KVFieldTypeDescription(a3);
    v50 = KVItemTypeDescription(self->_itemType, v54, v55, v56, v57, v58);
    v63 = objc_msgSend_stringWithFormat_(v53, v59, @"Cannot add field with invalid type: %@ to item of type: %@ itemId: %@", v60, v61, v62, v46, v50, self->_itemId);
    v162 = v63;
    v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v64, &v162, &v161, 1, v65);
    v69 = objc_msgSend_errorWithDomain_code_userInfo_(v52, v67, @"com.apple.koa.item.builder", 4, v66, v68);
    goto LABEL_22;
  }

  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v70 = MEMORY[0x277CCA9B8];
      v159 = *MEMORY[0x277CCA068];
      v71 = MEMORY[0x277CCACA8];
      v72 = objc_opt_class();
      v46 = NSStringFromClass(v72);
      v50 = KVItemTypeDescription(self->_itemType, v73, v74, v75, v76, v77);
      v63 = objc_msgSend_stringWithFormat_(v71, v78, @"Cannot add field label of unsupported class: %@ to item of type: %@ with itemId: %@", v79, v80, v81, v46, v50, self->_itemId);
      v160 = v63;
      v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, &v160, &v159, 1, v83);
      v69 = objc_msgSend_errorWithDomain_code_userInfo_(v70, v84, @"com.apple.koa.item.builder", 3, v66, v85);
      goto LABEL_22;
    }
  }

  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v98 = MEMORY[0x277CCA9B8];
      v157 = *MEMORY[0x277CCA068];
      v99 = MEMORY[0x277CCACA8];
      v100 = objc_opt_class();
      v46 = NSStringFromClass(v100);
      v50 = KVItemTypeDescription(self->_itemType, v101, v102, v103, v104, v105);
      v63 = objc_msgSend_stringWithFormat_(v99, v106, @"Cannot add field value of unsupported class: %@ to item of type: %@ with itemId: %@", v107, v108, v109, v46, v50, self->_itemId);
      v158 = v63;
      v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v110, &v158, &v157, 1, v111);
      v69 = objc_msgSend_errorWithDomain_code_userInfo_(v98, v112, @"com.apple.koa.item.builder", 3, v66, v113);
LABEL_22:
      if (a7 && v69)
      {
        v69 = v69;
        *a7 = v69;
      }

      goto LABEL_26;
    }
  }

  if (a4 >= 0x2D)
  {
    v86 = MEMORY[0x277CCA9B8];
    v155 = *MEMORY[0x277CCA068];
    v87 = MEMORY[0x277CCACA8];
    v46 = KVLocaleTypeDescription(a4, v17, v18, v19, v20, v21);
    v50 = objc_msgSend_stringWithFormat_(v87, v88, @"Cannot add field with invalid locale type: %@ itemId: %@", v89, v90, v91, v46, self->_itemId);
    v156 = v50;
    v63 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v92, &v156, &v155, 1, v93);
    v96 = objc_msgSend_errorWithDomain_code_userInfo_(v86, v94, @"com.apple.koa.item.builder", 9, v63, v95);
    v66 = v96;
    if (a7 && v96)
    {
      v97 = v96;
      *a7 = v66;
    }

LABEL_26:

LABEL_27:
    objc_msgSend__reset(self, v114, v115, v116, v117, v118);
    v119 = 0;
    goto LABEL_28;
  }

  v154 = objc_msgSend_copy(v12, v17, v18, v19, v20, v21);
  v153 = objc_msgSend_copy(v15, v22, v23, v24, v25, v26);
  if (objc_msgSend_length(v154, v27, v28, v29, v30, v31) || objc_msgSend_length(v153, v32, v33, v34, v35, v36))
  {
    if (objc_msgSend_length(v153, v32, v33, v34, v35, v36))
    {
      v42 = objc_msgSend_UTF8String(v153, v37, v38, v39, v40, v41);
      v43 = strlen(v42);
      v44 = sub_2559A7B04(&self->_fbb, v42, v43);
    }

    else
    {
      v44 = 0;
    }

    if (objc_msgSend_length(v154, v37, v38, v39, v40, v41))
    {
      v127 = objc_msgSend_UTF8String(v154, v122, v123, v124, v125, v126);
      v128 = strlen(v127);
      v129 = sub_2559A7B04(&self->_fbb, v127, v128);
    }

    else
    {
      v129 = 0;
    }

    sub_2559A7BAC(&self->_fbb);
    self->_fbb.nested = 1;
    reserved = self->_fbb.buf_.reserved_;
    cur = self->_fbb.buf_.cur_;
    buf = self->_fbb.buf_.buf_;
    sub_2559A7C64(&self->_fbb, 4, a3);
    sub_2559A7C14(&self->_fbb, 6, v44);
    sub_2559A7C14(&self->_fbb, 8, v129);
    if (a4 || self->_fbb.force_defaults_)
    {
      sub_2559A86B4(&self->_fbb, 1uLL);
      sub_2559A8418(&self->_fbb, 1uLL);
      v133 = self->_fbb.buf_.cur_;
      self->_fbb.buf_.cur_ = v133 - 1;
      *(v133 - 1) = a4;
      v135 = self->_fbb.buf_.buf_;
      v134 = self->_fbb.buf_.cur_;
      v136 = self->_fbb.buf_.reserved_;
      sub_2559A8418(&self->_fbb, 8uLL);
      *self->_fbb.buf_.scratch_ = (v136 - v134 + v135) | 0xA00000000;
      self->_fbb.buf_.scratch_ += 8;
      ++self->_fbb.num_field_loc;
      max_voffset = self->_fbb.max_voffset_;
      if (max_voffset <= 0xA)
      {
        LOWORD(max_voffset) = 10;
      }

      self->_fbb.max_voffset_ = max_voffset;
    }

    v138 = sub_2559A7D18(&self->_fbb, reserved - cur + buf);
    v139 = v138;
    end = self->_fields.__end_;
    cap = self->_fields.__cap_;
    if (end >= cap)
    {
      begin = self->_fields.__begin_;
      v144 = end - begin;
      v145 = (end - begin) >> 2;
      v146 = v145 + 1;
      if ((v145 + 1) >> 62)
      {
        sub_2559ADF60();
      }

      v147 = cap - begin;
      if (v147 >> 1 > v146)
      {
        v146 = v147 >> 1;
      }

      if (v147 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v148 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v148 = v146;
      }

      if (v148)
      {
        sub_2559ADF78(v148);
      }

      v149 = v145;
      v150 = (4 * v145);
      v151 = &v150[-v149];
      *v150 = v139;
      v142 = v150 + 1;
      memcpy(v151, begin, v144);
      v152 = self->_fields.__begin_;
      self->_fields.__begin_ = v151;
      self->_fields.__end_ = v142;
      self->_fields.__cap_ = 0;
      if (v152)
      {
        operator delete(v152);
      }
    }

    else
    {
      *end = v138;
      v142 = end + 4;
    }

    self->_fields.__end_ = v142;
  }

  v119 = self;

LABEL_28:
  v120 = *MEMORY[0x277D85DE8];

  return v119;
}

- (id)addFieldWithType:(int64_t)a3 localeType:(int64_t)a4 label:(id)a5 value:(id)a6 error:(id *)a7
{
  v42[1] = *MEMORY[0x277D85DE8];
  v12 = a5;
  v18 = a6;
  if (a4)
  {
    v19 = objc_msgSend__addFieldWithType_localeType_label_value_error_(self, v13, a3, a4, v12, v18, a7);
  }

  else
  {
    v20 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA068];
    v21 = MEMORY[0x277CCACA8];
    v22 = KVLocaleTypeDescription(0, v13, v14, v15, v16, v17);
    v27 = objc_msgSend_stringWithFormat_(v21, v23, @"Cannot add field with invalid locale type: %@ itemId: %@", v24, v25, v26, v22, self->_itemId);
    v42[0] = v27;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v41, 1, v29);
    v33 = objc_msgSend_errorWithDomain_code_userInfo_(v20, v31, @"com.apple.koa.item.builder", 9, v30, v32);
    if (a7 && v33)
    {
      v33 = v33;
      *a7 = v33;
    }

    objc_msgSend__reset(self, v34, v35, v36, v37, v38);
    v19 = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)addFieldWithType:(int64_t)a3 label:(id)a4 value:(id)a5 error:(id *)a6
{
  v6 = objc_msgSend__addFieldWithType_localeType_label_value_error_(self, a2, a3, 0, a4, a5, a6);

  return v6;
}

- (id)addFieldWithType:(int64_t)a3 localeType:(int64_t)a4 value:(id)a5 error:(id *)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v15 = a5;
  if (a4)
  {
    v16 = objc_msgSend__addFieldWithType_localeType_label_value_error_(self, v10, a3, a4, 0, v15, a6);
  }

  else
  {
    v17 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA068];
    v18 = MEMORY[0x277CCACA8];
    v19 = KVLocaleTypeDescription(0, v10, v11, v12, v13, v14);
    v24 = objc_msgSend_stringWithFormat_(v18, v20, @"Cannot add field with invalid locale type: %@ itemId: %@", v21, v22, v23, v19, self->_itemId);
    v39[0] = v24;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, v39, &v38, 1, v26);
    v30 = objc_msgSend_errorWithDomain_code_userInfo_(v17, v28, @"com.apple.koa.item.builder", 9, v27, v29);
    if (a6 && v30)
    {
      v30 = v30;
      *a6 = v30;
    }

    objc_msgSend__reset(self, v31, v32, v33, v34, v35);
    v16 = 0;
  }

  v36 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)addFieldWithType:(int64_t)a3 value:(id)a4 error:(id *)a5
{
  v5 = objc_msgSend__addFieldWithType_localeType_label_value_error_(self, a2, a3, 0, 0, a4, a5);

  return v5;
}

- (id)setItemType:(int64_t)a3 itemId:(id)a4 error:(id *)a5
{
  v52[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v15 = v9;
  if (a3 - 1 >= 0x1A)
  {
    v21 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA068];
    v22 = MEMORY[0x277CCACA8];
    v23 = KVItemTypeDescription(a3, v10, v11, v12, v13, v14);
    v28 = objc_msgSend_stringWithFormat_(v22, v24, @"Cannot set invalid item type: %@", v25, v26, v27, v23);
    v52[0] = v28;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v29, v52, &v51, 1, v30);
    v34 = objc_msgSend_errorWithDomain_code_userInfo_(v21, v32, @"com.apple.koa.item.builder", 1, v31, v33);
    if (a5 && v34)
    {
      v34 = v34;
      *a5 = v34;
    }
  }

  else
  {
    if (objc_msgSend_length(v9, v10, v11, v12, v13, v14))
    {
      self->_itemType = a3;
      objc_storeStrong(&self->_itemId, a4);
      v20 = self;
      goto LABEL_9;
    }

    v42 = MEMORY[0x277CCA9B8];
    v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"Cannot set invalid itemId: %@", v17, v18, v19, v15, *MEMORY[0x277CCA068]);
    v50 = v23;
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v50, &v49, 1, v44);
    v47 = objc_msgSend_errorWithDomain_code_userInfo_(v42, v45, @"com.apple.koa.item.builder", 2, v28, v46);
    v31 = v47;
    if (a5 && v47)
    {
      v48 = v47;
      *a5 = v31;
    }
  }

  objc_msgSend__reset(self, v35, v36, v37, v38, v39);
  v20 = 0;
LABEL_9:

  v40 = *MEMORY[0x277D85DE8];

  return v20;
}

- (void)_reset
{
  self->_fbb.num_field_loc = 0;
  self->_fbb.max_voffset_ = 0;
  buf = self->_fbb.buf_.buf_;
  if (buf)
  {
    v4 = &buf[self->_fbb.buf_.reserved_];
  }

  else
  {
    v4 = 0;
    self->_fbb.buf_.reserved_ = 0;
  }

  self->_fbb.buf_.cur_ = v4;
  self->_fbb.buf_.scratch_ = buf;
  *&self->_fbb.nested = 0;
  self->_fbb.minalign_ = 1;
  string_pool = self->_fbb.string_pool;
  if (string_pool)
  {
    sub_2559A8230(*(string_pool + 1));
    *string_pool = string_pool + 8;
    *(string_pool + 2) = 0;
    *(string_pool + 1) = 0;
  }

  self->_fields.__end_ = self->_fields.__begin_;
  itemId = self->_itemId;
  self->_itemType = 0;
  self->_itemId = 0;
}

- (KVItemBuilder)init
{
  v3.receiver = self;
  v3.super_class = KVItemBuilder;
  result = [(KVItemBuilder *)&v3 init];
  if (result)
  {
    result->_itemType = 0;
  }

  return result;
}

+ (id)buildFieldWithType:(int64_t)a3 label:(id)a4 value:(id)a5 error:(id *)a6
{
  v120[1] = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if (KVItemTypeFromFieldType(a3))
  {
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v44 = MEMORY[0x277CCA9B8];
      v117 = *MEMORY[0x277CCA068];
      v45 = MEMORY[0x277CCACA8];
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v52 = objc_msgSend_stringWithFormat_(v45, v48, @"Cannot build field with label of unsupported class: %@", v49, v50, v51, v47);
      v118 = v52;
      v55 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, &v118, &v117, 1, v54);
      v58 = objc_msgSend_errorWithDomain_code_userInfo_(v44, v56, @"com.apple.koa.item.builder", 3, v55, v57);
      if (a6 && v58)
      {
        v58 = v58;
        *a6 = v58;
      }
    }

    else
    {
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v106 = 0;
        v107 = 0;
        v108 = xmmword_2559D02C0;
        v109 = 0u;
        v110 = 0u;
        v111 = 0;
        v112 = 1;
        v113 = 256;
        v114 = 0;
        if (objc_msgSend_length(v10, v11, v12, v13, v14, v15))
        {
          v21 = v10;
          v27 = objc_msgSend_UTF8String(v21, v22, v23, v24, v25, v26);
          v28 = strlen(v27);
          v29 = sub_2559A7B04(&v106, v27, v28);
        }

        else
        {
          v29 = 0;
        }

        if (objc_msgSend_length(v9, v16, v17, v18, v19, v20))
        {
          v75 = v9;
          v81 = objc_msgSend_UTF8String(v75, v76, v77, v78, v79, v80);
          v82 = strlen(v81);
          v83 = sub_2559A7B04(&v106, v81, v82);
        }

        else
        {
          v83 = 0;
        }

        sub_2559A7BAC(&v106);
        BYTE6(v111) = 1;
        v84 = v110;
        v85 = v109;
        v86 = DWORD2(v109);
        sub_2559A7C64(&v106, 4, a3);
        sub_2559A7C14(&v106, 6, v29);
        sub_2559A7C14(&v106, 8, v83);
        v87 = sub_2559A7D18(&v106, v85 - v84 + v86);
        sub_2559A7FB4(&v106, v87, 0, 0);
        v88 = objc_alloc(MEMORY[0x277CBEA90]);
        v89 = sub_2559A80B8(&v106);
        v93 = objc_msgSend_initWithBytes_length_(v88, v90, v89, (v109 - v110 + DWORD2(v109)), v91, v92);
        v94 = v93;
        v100 = objc_msgSend_bytes(v94, v95, v96, v97, v98, v99);
        v74 = objc_msgSend_fieldWithBuffer_root_(KVField, v101, v93, v100 + *v100, v102, v103);

        sub_2559A811C(&v106);
        goto LABEL_26;
      }

      v59 = MEMORY[0x277CCA9B8];
      v115 = *MEMORY[0x277CCA068];
      v60 = MEMORY[0x277CCACA8];
      v61 = objc_opt_class();
      v62 = NSStringFromClass(v61);
      v67 = objc_msgSend_stringWithFormat_(v60, v63, @"Cannot build field with value of unsupported class: %@", v64, v65, v66, v62);
      v116 = v67;
      v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, &v116, &v115, 1, v69);
      v73 = objc_msgSend_errorWithDomain_code_userInfo_(v59, v71, @"com.apple.koa.item.builder", 3, v70, v72);
      if (a6 && v73)
      {
        v73 = v73;
        *a6 = v73;
      }
    }
  }

  else
  {
    v30 = MEMORY[0x277CCA9B8];
    v119 = *MEMORY[0x277CCA068];
    v31 = MEMORY[0x277CCACA8];
    v32 = KVFieldTypeDescription(a3);
    v37 = objc_msgSend_stringWithFormat_(v31, v33, @"Cannot build field with invalid type: %@", v34, v35, v36, v32);
    v120[0] = v37;
    v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v38, v120, &v119, 1, v39);
    v43 = objc_msgSend_errorWithDomain_code_userInfo_(v30, v41, @"com.apple.koa.item.builder", 4, v40, v42);
    if (a6 && v43)
    {
      v43 = v43;
      *a6 = v43;
    }
  }

  v74 = 0;
LABEL_26:

  v104 = *MEMORY[0x277D85DE8];

  return v74;
}

+ (void)initialize
{
  if (qword_28106B3B8 != -1)
  {
    dispatch_once(&qword_28106B3B8, &unk_2867B56F8);
  }
}

@end