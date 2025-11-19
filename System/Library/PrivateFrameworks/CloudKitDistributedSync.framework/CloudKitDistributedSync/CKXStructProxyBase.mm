@interface CKXStructProxyBase
- (id)dataForToken:(unint64_t)a3;
- (id)initInternal;
- (id)stringForToken:(unint64_t)a3;
- (void)associateWithStructInstance:(id *)a3;
- (void)copyBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5 forToken:(unint64_t)a6;
- (void)reset;
@end

@implementation CKXStructProxyBase

- (id)initInternal
{
  v12.receiver = self;
  v12.super_class = CKXStructProxyBase;
  v2 = [(CKXProxyBase *)&v12 initInternal];
  if (v2)
  {
    v3 = [CKXStructProxyChildCache alloc];
    v9 = objc_msgSend_initWithProxy_(v3, v4, v2, v5, v6, v7, v8);
    v10 = v2[4];
    v2[4] = v9;
  }

  return v2;
}

- (void)associateWithStructInstance:(id *)a3
{
  var2 = a3->var2;
  *&self->_structInstance.structToken = *&a3->var0;
  self->_structInstance.offset = var2;
}

- (void)reset
{
  v9.receiver = self;
  v9.super_class = CKXStructProxyBase;
  [(CKXProxyBase *)&v9 reset];
  self->_structInstance.structToken = -1;
  objc_msgSend_reset(self->_childProxyCache, v3, v4, v5, v6, v7, v8);
}

- (void)copyBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5 forToken:(unint64_t)a6
{
  v12 = objc_msgSend_backingStore(self, a2, a3, a4, a5, a6, v6);
  v71 = 0u;
  v72 = 0u;
  v18 = objc_msgSend_readerForProxy_(v12, v13, self, v14, v15, v16, v17);
  objc_msgSend_structInstance(self, v19, v20, v21, v22, v23, v24);
  if (v18)
  {
    objc_msgSend_referencedListForReference_inStruct_(v18, v25, a6, v70, v26, v27, v28);
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  v34 = objc_msgSend_readerForProxy_(v12, v29, self, v30, v31, v32, v33);
  objc_msgSend_structInstance(self, v35, v36, v37, v38, v39, v40);
  IsNull_inStruct = objc_msgSend_referenceIsNull_inStruct_(v34, v41, a6, &v68, v42, v43, v44);

  v51 = objc_msgSend_readerForProxy_(v12, v46, self, v47, v48, v49, v50);
  v68 = v71;
  v69 = v72;
  v57 = objc_msgSend_lengthForList_(v51, v52, &v68, v53, v54, v55, v56);

  v63 = objc_msgSend_readerForProxy_(v12, v58, self, v59, v60, v61, v62);
  v68 = v71;
  v69 = v72;
  objc_msgSend_copyData_forList_(v63, v64, a3, &v68, v65, v66, v67);

  if (a4)
  {
    *a4 = v57;
  }

  if (a5)
  {
    *a5 = IsNull_inStruct;
  }
}

- (id)dataForToken:(unint64_t)a3
{
  count = 0;
  v16 = 0;
  objc_msgSend_copyBytes_length_isNull_forToken_(self, a2, 0, &count, &v16, a3, v3);
  v6 = 0;
  if ((v16 & 1) == 0)
  {
    v7 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v8, v7, 0, 0, a3, v9);
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v6 = objc_msgSend_initWithBytesNoCopy_length_(v10, v11, v7, count, v12, v13, v14);
  }

  return v6;
}

- (id)stringForToken:(unint64_t)a3
{
  count = 0;
  v14 = 0;
  objc_msgSend_copyBytes_length_isNull_forToken_(self, a2, 0, &count, &v14, a3, v3);
  v6 = 0;
  if ((v14 & 1) == 0)
  {
    v7 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v8, v7, 0, 0, a3, v9);
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v10, v11, v7, count, 4, 1, v12);
  }

  return v6;
}

@end