@interface KVDatasetInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDatasetInfo:(id)a3;
- (KVDatasetInfo)init;
- (KVDatasetInfo)initWithBuffer:(id)a3 error:(id *)a4;
- (KVDatasetInfo)initWithItemType:(int64_t)a3 originAppId:(id)a4 deviceId:(id)a5 userId:(id)a6 lastModifiedTime:(id)a7 capturedTime:(id)a8 itemCount:(unsigned int)a9 error:(id *)a10;
- (KVDatasetInfo)initWithSizePrefixedBuffer:(id)a3 error:(id *)a4;
- (id)JSONWithIndent:(unsigned __int8)a3;
- (id)capturedTime;
- (id)deviceId;
- (id)initFromDictionary:(id)a3 error:(id *)a4;
- (id)lastModifiedTime;
- (id)originAppId;
- (id)userId;
- (int64_t)itemType;
- (unsigned)itemCount;
@end

@implementation KVDatasetInfo

- (BOOL)isEqualToDatasetInfo:(id)a3
{
  buffer = self->_buffer;
  v7 = objc_msgSend_buffer(a3, a2, a3, v3, v4, v5);
  LOBYTE(buffer) = objc_msgSend_isEqual_(buffer, v8, v7, v9, v10, v11);

  return buffer;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    isEqualToDatasetInfo = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToDatasetInfo = objc_msgSend_isEqualToDatasetInfo_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToDatasetInfo = 0;
  }

  return isEqualToDatasetInfo;
}

- (id)initFromDictionary:(id)a3 error:(id *)a4
{
  v4 = a3;
  v52 = objc_msgSend_objectForKey_(v4, v5, @"itemType", v6, v7, v8);
  v9 = KVItemTypeFromName(v52);
  v51 = objc_msgSend_objectForKey_(v4, v10, @"originAppId", v11, v12, v13);
  v50 = objc_msgSend_objectForKey_(v4, v14, @"deviceId", v15, v16, v17);
  v49 = objc_msgSend_objectForKey_(v4, v18, @"userId", v19, v20, v21);
  v26 = objc_msgSend_objectForKey_(v4, v22, @"lastModifiedTime", v23, v24, v25);
  v27 = sub_2559A6CD4(v26);
  v32 = objc_msgSend_objectForKey_(v4, v28, @"capturedTime", v29, v30, v31);
  v33 = sub_2559A6CD4(v32);
  v38 = objc_msgSend_objectForKey_(v4, v34, @"itemCount", v35, v36, v37);
  v47 = objc_msgSend_unsignedIntValue(v38, v39, v40, v41, v42, v43);
  ModifiedTime_capturedTime_itemCount_error = objc_msgSend_initWithItemType_originAppId_deviceId_userId_lastModifiedTime_capturedTime_itemCount_error_(self, v44, v9, v51, v50, v49, v27, v33, v47, a4);

  return ModifiedTime_capturedTime_itemCount_error;
}

- (id)JSONWithIndent:(unsigned __int8)a3
{
  v5 = sub_2559C2C40(a3);
  v6 = sub_2559C2C40(a3 + 1);
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

  v32 = objc_msgSend_originAppId(self, v27, v28, v29, v30, v31);
  objc_msgSend_appendFormat_(v7, v33, @"%@%@: %@,\n", v34, v35, v36, v6, @"originAppId", v32);

  v42 = objc_msgSend_deviceId(self, v37, v38, v39, v40, v41);
  v48 = v42;
  if (v42)
  {
    v49 = sub_2559C2CC8(v42, v43, v44, v45, v46, v47);
    objc_msgSend_appendFormat_(v7, v50, @"%@%@: %@,\n", v51, v52, v53, v6, @"deviceId", v49);
  }

  v54 = objc_msgSend_userId(self, v43, v44, v45, v46, v47);
  v60 = v54;
  if (v54)
  {
    v61 = sub_2559C2CC8(v54, v55, v56, v57, v58, v59);
    objc_msgSend_appendFormat_(v7, v62, @"%@%@: %@,\n", v63, v64, v65, v6, @"userId", v61);
  }

  v66 = objc_msgSend_lastModifiedTime(self, v55, v56, v57, v58, v59);
  v72 = v66;
  if (v66)
  {
    v73 = objc_msgSend_ISO8601String(v66, v67, v68, v69, v70, v71);
    objc_msgSend_appendFormat_(v7, v74, @"%@%@: %@,\n", v75, v76, v77, v6, @"lastModifiedTime", v73);
  }

  v78 = objc_msgSend_capturedTime(self, v67, v68, v69, v70, v71);
  v84 = v78;
  if (v78)
  {
    v85 = objc_msgSend_ISO8601String(v78, v79, v80, v81, v82, v83);
    objc_msgSend_appendFormat_(v7, v86, @"%@%@: %@,\n", v87, v88, v89, v6, @"capturedTime", v85);
  }

  v90 = objc_msgSend_itemCount(self, v79, v80, v81, v82, v83);
  objc_msgSend_appendFormat_(v7, v91, @"%@%@: %u,\n", v92, v93, v94, v6, @"itemCount", v90);
  objc_msgSend_appendFormat_(v7, v95, @"%@}", v96, v97, v98, v5);

  return v7;
}

- (unsigned)itemCount
{
  datasetInfo = self->_datasetInfo;
  v3 = &datasetInfo[-*datasetInfo->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *datasetInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (id)capturedTime
{
  datasetInfo = self->_datasetInfo;
  v3 = &datasetInfo[-*datasetInfo->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    v5 = sub_2559A7178(datasetInfo[v4 + *datasetInfo[v4].var0].var0);
    v6 = sub_2559A6CD4(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)lastModifiedTime
{
  datasetInfo = self->_datasetInfo;
  v3 = &datasetInfo[-*datasetInfo->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    v5 = sub_2559A7178(datasetInfo[v4 + *datasetInfo[v4].var0].var0);
    v6 = sub_2559A6CD4(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)userId
{
  v3 = &self->_datasetInfo[-*self->_datasetInfo];
  if (*v3->var0 >= 0xBu && *v3[10].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_datasetInfo[*self->_datasetInfo[-*self->_datasetInfo + 10].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)deviceId
{
  v3 = &self->_datasetInfo[-*self->_datasetInfo];
  if (*v3->var0 >= 9u && *v3[8].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_datasetInfo[*self->_datasetInfo[-*self->_datasetInfo + 8].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)originAppId
{
  v3 = &self->_datasetInfo[-*self->_datasetInfo];
  if (*v3->var0 >= 7u && *v3[6].var0)
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v6 = &self->_datasetInfo[*self->_datasetInfo[-*self->_datasetInfo + 6].var0];
    v8 = objc_msgSend_initWithBytesNoCopy_length_encoding_freeWhenDone_(v5, v7, &v6[*v6->var0 + 4], *v6[*v6->var0].var0, 4, 0);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)itemType
{
  datasetInfo = self->_datasetInfo;
  v3 = &datasetInfo[-*datasetInfo->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *datasetInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (KVDatasetInfo)initWithBuffer:(id)a3 error:(id *)a4
{
  v76[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v72.receiver = self;
  v72.super_class = KVDatasetInfo;
  v8 = [(KVDatasetInfo *)&v72 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, a3);
    buffer = v9->_buffer;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_length(v9->_buffer, v12, v13, v14, v15, v16))
    {
      v18 = objc_msgSend_bytes(v9->_buffer, v12, v17, v14, v15, v16);
      v10->_datasetInfo = v18 + *v18;
      v24 = objc_msgSend_bytes(v10->_buffer, v19, v20, v21, v22, v23);
      v30 = objc_msgSend_length(v9->_buffer, v25, v26, v27, v28, v29);
      v67 = v24;
      v68 = v30;
      v69 = xmmword_2559D02B0;
      v70 = 0;
      v71 = 1;
      if (v30 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      datasetInfo = v10->_datasetInfo;
      if (!datasetInfo)
      {
        goto LABEL_50;
      }

      if (sub_2559A7668(&v67, v10->_datasetInfo))
      {
        v34 = (datasetInfo - *datasetInfo);
        v35 = *v34;
        if ((v35 < 5 || !v34[2] || v68 >= 3 && v68 - 2 >= datasetInfo + v34[2] - v67) && sub_2559A7720(datasetInfo, &v67, 6u))
        {
          v36 = v35 >= 7 && v34[3] ? (datasetInfo + v34[3] + *(datasetInfo + v34[3])) : 0;
          if (sub_2559A777C(&v67, v36) && sub_2559A7720(datasetInfo, &v67, 8u))
          {
            v45 = (datasetInfo - *datasetInfo);
            if (*v45 >= 9u && (v46 = v45[4]) != 0)
            {
              v47 = (datasetInfo + v46 + *(datasetInfo + v46));
            }

            else
            {
              v47 = 0;
            }

            if (sub_2559A777C(&v67, v47) && sub_2559A7720(datasetInfo, &v67, 0xAu))
            {
              v48 = (datasetInfo - *datasetInfo);
              if (*v48 >= 0xBu && (v49 = v48[5]) != 0)
              {
                v50 = (datasetInfo + v49 + *(datasetInfo + v49));
              }

              else
              {
                v50 = 0;
              }

              if (sub_2559A777C(&v67, v50) && sub_2559A7720(datasetInfo, &v67, 0xCu))
              {
                v51 = (datasetInfo - *datasetInfo);
                if (*v51 >= 0xDu && (v52 = v51[6]) != 0)
                {
                  v53 = (datasetInfo + v52 + *(datasetInfo + v52));
                }

                else
                {
                  v53 = 0;
                }

                if (sub_2559A777C(&v67, v53) && sub_2559A7720(datasetInfo, &v67, 0xEu))
                {
                  v54 = (datasetInfo - *datasetInfo);
                  if (*v54 >= 0xFu && (v55 = v54[7]) != 0)
                  {
                    v56 = (datasetInfo + v55 + *(datasetInfo + v55));
                  }

                  else
                  {
                    v56 = 0;
                  }

                  if (sub_2559A777C(&v67, v56))
                  {
                    v57 = (datasetInfo - *datasetInfo);
                    if (*v57 < 0x11u)
                    {
                      goto LABEL_50;
                    }

                    v58 = v57[8];
                    if (!v58 || v68 >= 5 && v68 - 4 >= datasetInfo + v58 - v67)
                    {
                      goto LABEL_50;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v60 = MEMORY[0x277CCA9B8];
      v73 = *MEMORY[0x277CCA450];
      v74 = @"DatasetInfo failed verification";
      v61 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v32, &v74, &v73, 1, v33);
      v64 = objc_msgSend_errorWithDomain_code_userInfo_(v60, v62, @"com.apple.koa.profile", 6, v61, v63);
      if (a4 && v64)
      {
        v64 = v64;
        *a4 = v64;
      }
    }

    else
    {
      v37 = MEMORY[0x277CCA9B8];
      v75 = *MEMORY[0x277CCA450];
      v38 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Unexpected DatasetInfo buffer: %@", v14, v15, v16, v9->_buffer);
      v76[0] = v38;
      v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v39, v76, &v75, 1, v40);
      v44 = objc_msgSend_errorWithDomain_code_userInfo_(v37, v42, @"com.apple.koa.profile", 6, v41, v43);
      if (a4 && v44)
      {
        v44 = v44;
        *a4 = v44;
      }
    }

    v59 = 0;
    goto LABEL_56;
  }

LABEL_50:
  v59 = v10;
LABEL_56:

  v65 = *MEMORY[0x277D85DE8];
  return v59;
}

- (KVDatasetInfo)initWithSizePrefixedBuffer:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_length(v6, v7, v8, v9, v10, v11))
  {
    v16 = MEMORY[0x277CBEA90];
    v17 = v6;
    v23 = objc_msgSend_bytes(v17, v18, v19, v20, v21, v22);
    v24 = v6;
    v30 = objc_msgSend_bytes(v24, v25, v26, v27, v28, v29);
    v33 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(v16, v31, v23 + 4, *v30, 0, v32);
    self = objc_msgSend_initWithBuffer_error_(self, v34, v33, a4, v35, v36);

    v37 = self;
  }

  else
  {
    v38 = MEMORY[0x277CCA9B8];
    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"Invalid size prefixed buffer: %@", v13, v14, v15, v6, *MEMORY[0x277CCA450]);
    v49[0] = v39;
    v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v49, &v48, 1, v41);
    v45 = objc_msgSend_errorWithDomain_code_userInfo_(v38, v43, @"com.apple.koa.profile", 6, v42, v44);
    if (a4 && v45)
    {
      v45 = v45;
      *a4 = v45;
    }

    v37 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v37;
}

- (KVDatasetInfo)initWithItemType:(int64_t)a3 originAppId:(id)a4 deviceId:(id)a5 userId:(id)a6 lastModifiedTime:(id)a7 capturedTime:(id)a8 itemCount:(unsigned int)a9 error:(id *)a10
{
  v14 = a3;
  v15 = a4;
  v105 = a5;
  v16 = a6;
  v104 = a7;
  v103 = a8;
  v106 = 0;
  v107 = 0;
  v108 = xmmword_2559D02C0;
  v109 = 0u;
  v110 = 0u;
  v111 = 0;
  v112 = 1;
  v113 = 256;
  v114 = 0;
  v102 = v15;
  if (objc_msgSend_length(v15, v17, v18, v19, v20, v21))
  {
    v27 = v15;
    v33 = objc_msgSend_UTF8String(v27, v28, v29, v30, v31, v32);
    v34 = strlen(v33);
    v35 = sub_2559A7B04(&v106, v33, v34);
  }

  else
  {
    v35 = 0;
  }

  if (objc_msgSend_length(v105, v22, v23, v24, v25, v26))
  {
    v41 = v105;
    v47 = objc_msgSend_UTF8String(v41, v42, v43, v44, v45, v46);
    v48 = strlen(v47);
    v49 = sub_2559A7B04(&v106, v47, v48);
    v50 = v14;
  }

  else
  {
    v50 = v14;
    v49 = 0;
  }

  if (objc_msgSend_length(v16, v36, v37, v38, v39, v40))
  {
    v56 = v16;
    v62 = objc_msgSend_UTF8String(v56, v57, v58, v59, v60, v61);
    v63 = strlen(v62);
    v64 = sub_2559A7B04(&v106, v62, v63);
  }

  else
  {
    v64 = 0;
  }

  if (v104)
  {
    v65 = objc_msgSend_ISO8601String(v104, v51, v52, v53, v54, v55);
    v66 = v65;
    v72 = objc_msgSend_UTF8String(v66, v67, v68, v69, v70, v71);
    v73 = strlen(v72);
    v74 = sub_2559A7B04(&v106, v72, v73);

    v75 = v74;
  }

  else
  {
    v75 = 0;
  }

  if (v103)
  {
    v76 = objc_msgSend_ISO8601String(v103, v51, v52, v53, v54, v55);
    v77 = v76;
    v83 = objc_msgSend_UTF8String(v77, v78, v79, v80, v81, v82);
    v84 = strlen(v83);
    LODWORD(v83) = sub_2559A7B04(&v106, v83, v84);

    v85 = v83;
  }

  else
  {
    v85 = 0;
  }

  sub_2559A7BAC(&v106);
  BYTE6(v111) = 1;
  v86 = v110;
  v87 = v109;
  v88 = DWORD2(v109);
  sub_2559A7C64(&v106, 4, v50);
  sub_2559A7C14(&v106, 6, v35);
  sub_2559A7C14(&v106, 8, v49);
  sub_2559A7C14(&v106, 10, v64);
  sub_2559A7C14(&v106, 12, v75);
  sub_2559A7C14(&v106, 14, v85);
  sub_2559A8738(&v106, 16, a9);
  v89 = sub_2559A7D18(&v106, v87 - v86 + v88);
  sub_2559A7FB4(&v106, v89, 0, 0);
  v90 = objc_alloc(MEMORY[0x277CBEA90]);
  v91 = sub_2559A80B8(&v106);
  v95 = objc_msgSend_initWithBytes_length_(v90, v92, v91, (v109 - v110 + DWORD2(v109)), v93, v94);
  v99 = objc_msgSend_initWithBuffer_error_(self, v96, v95, a10, v97, v98);

  sub_2559A811C(&v106);
  return v99;
}

- (KVDatasetInfo)init
{
  v3 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x277CBEAD8], a2, *MEMORY[0x277CBE658], @"init unsupported", MEMORY[0x277CBEC10], v2);
  objc_exception_throw(v3);
}

@end