@interface KVEncodedSpanInfo
+ (id)spanInfoFromEncodedString:(id)string error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSpanInfo:(id)info;
- (KVEncodedSpanInfo)initWithBuffer:(id)buffer verify:(BOOL)verify value:(id)value error:(id *)error;
- (KVEncodedSpanInfo)initWithValue:(id)value location:(unsigned int)location length:(unsigned int)length matchScore:(float)score maxTokenCount:(unsigned int)count matchedTokenCount:(unsigned int)tokenCount maxStopWordCount:(unsigned int)wordCount matchedStopWordCount:(unsigned int)self0 maxAliasCount:(unsigned int)self1 matchedAliasCount:(unsigned int)self2 editDistance:(unsigned int)self3 aliasMatchOptions:(unsigned __int16)self4;
- (_NSRange)spanRange;
- (float)matchScore;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getAliasTypesArray;
- (unsigned)aliasMatchOptions;
- (unsigned)editDistance;
- (unsigned)matchedAliasCount;
- (unsigned)matchedStopWordCount;
- (unsigned)matchedTokenCount;
- (unsigned)maxAliasCount;
- (unsigned)maxStopWordCount;
- (unsigned)maxTokenCount;
@end

@implementation KVEncodedSpanInfo

- (id)getAliasTypesArray
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2, v3, v4, v5);
  encodedSpanInfo = self->_encodedSpanInfo;
  v13 = *encodedSpanInfo->var0;
  v14 = &encodedSpanInfo[-v13];
  if (*encodedSpanInfo[-v13].var0 >= 0x19u)
  {
    v15 = -v13;
    v16 = *v14[24].var0;
    if (v16 && (*encodedSpanInfo[v16].var0 & 1) != 0)
    {
      v17 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, 1, v8, v9, v10);
      objc_msgSend_addObject_(v11, v18, v17, v19, v20, v21);

      encodedSpanInfo = self->_encodedSpanInfo;
      v22 = *encodedSpanInfo->var0;
      if (*encodedSpanInfo[-v22].var0 < 0x19u)
      {
        goto LABEL_17;
      }

      v15 = -v22;
    }

    if (*encodedSpanInfo[v15 + 24].var0 && (*encodedSpanInfo[*encodedSpanInfo[v15 + 24].var0].var0 & 2) != 0)
    {
      v23 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, 2, v8, v9, v10);
      objc_msgSend_addObject_(v11, v24, v23, v25, v26, v27);

      encodedSpanInfo = self->_encodedSpanInfo;
      v28 = *encodedSpanInfo->var0;
      if (*encodedSpanInfo[-v28].var0 < 0x19u)
      {
        goto LABEL_17;
      }

      v15 = -v28;
    }

    if (*encodedSpanInfo[v15 + 24].var0 && (*encodedSpanInfo[*encodedSpanInfo[v15 + 24].var0].var0 & 4) != 0)
    {
      v29 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, 4, v8, v9, v10);
      objc_msgSend_addObject_(v11, v30, v29, v31, v32, v33);

      encodedSpanInfo = self->_encodedSpanInfo;
      v34 = *encodedSpanInfo->var0;
      if (*encodedSpanInfo[-v34].var0 < 0x19u)
      {
        goto LABEL_17;
      }

      v15 = -v34;
    }

    v35 = *encodedSpanInfo[v15 + 24].var0;
    if (v35 && (*encodedSpanInfo[v35].var0 & 8) != 0)
    {
      v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v7, 8, v8, v9, v10);
      objc_msgSend_addObject_(v11, v37, v36, v38, v39, v40);
    }
  }

LABEL_17:

  return v11;
}

- (unsigned)aliasMatchOptions
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0x19u && (v4 = *v3[24].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (id)description
{
  value = self->_value;
  if (value)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"value: %@ ", v3, v4, v5, value);
  }

  else
  {
    v8 = &stru_2867B5AF8;
  }

  v69 = MEMORY[0x277CCACA8];
  v9 = MEMORY[0x277CCAE60];
  v10 = objc_msgSend_spanRange(self, a2, v2, v3, v4, v5);
  v14 = objc_msgSend_valueWithRange_(v9, v11, v10, v11, v12, v13);
  v20 = objc_msgSend_matchedTokenCount(self, v15, v16, v17, v18, v19);
  v26 = objc_msgSend_maxTokenCount(self, v21, v22, v23, v24, v25);
  v32 = objc_msgSend_matchedStopWordCount(self, v27, v28, v29, v30, v31);
  v38 = objc_msgSend_maxStopWordCount(self, v33, v34, v35, v36, v37);
  v44 = objc_msgSend_matchedAliasCount(self, v39, v40, v41, v42, v43);
  v50 = objc_msgSend_maxAliasCount(self, v45, v46, v47, v48, v49);
  v56 = objc_msgSend_editDistance(self, v51, v52, v53, v54, v55);
  objc_msgSend_matchScore(self, v57, v58, v59, v60, v61);
  v67 = objc_msgSend_stringWithFormat_(v69, v63, @"%@%@ tokens matched: (%u/%u) stop words: (%u/%u) alias: (%u/%u) edit distance: %u match score: %f", v64, v65, v66, v8, v14, v20, v26, v32, v38, v44, v50, v56, v62);

  return v67;
}

- (BOOL)isEqualToSpanInfo:(id)info
{
  infoCopy = info;
  v11 = infoCopy;
  v12 = 16;
  value = self->_value;
  v14 = value;
  if (!value)
  {
    v3 = objc_msgSend_value(infoCopy, v6, v7, v8, v9, v10);
    if (!v3)
    {
      v19 = 0;
LABEL_8:
      isEqual = objc_msgSend_isEqual_(self->_buffer, v6, v11[3], v8, v9, v10);
      if (!v19)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v14 = self->_value;
  }

  v12 = objc_msgSend_value(v11, v6, v7, v8, v9, v10);
  if (objc_msgSend_isEqual_(v14, v15, v12, v16, v17, v18))
  {
    v19 = 1;
    goto LABEL_8;
  }

  isEqual = 0;
LABEL_9:

LABEL_10:
  if (!value)
  {
  }

  return isEqual;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    isEqualToSpanInfo = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    isEqualToSpanInfo = objc_msgSend_isEqualToSpanInfo_(self, v6, v5, v7, v8, v9);
  }

  else
  {
    isEqualToSpanInfo = 0;
  }

  return isEqualToSpanInfo;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v10 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8, v9);
  v15 = objc_msgSend_copyWithZone_(self->_value, v11, zone, v12, v13, v14);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  v21 = objc_msgSend_copyWithZone_(self->_buffer, v17, zone, v18, v19, v20);
  v22 = *(v10 + 24);
  *(v10 + 24) = v21;

  v28 = objc_msgSend_bytes(*(v10 + 24), v23, v24, v25, v26, v27);
  *(v10 + 32) = v28 + *v28;
  return v10;
}

- (unsigned)editDistance
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)matchedAliasCount
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)maxAliasCount
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)matchedStopWordCount
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)maxStopWordCount
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)matchedTokenCount
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unsigned)maxTokenCount
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *encodedSpanInfo[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (float)matchScore
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  result = 0.0;
  if (*v3->var0 >= 9u)
  {
    v5 = *v3[8].var0;
    if (v5)
    {
      return *encodedSpanInfo[v5].var0;
    }
  }

  return result;
}

- (_NSRange)spanRange
{
  encodedSpanInfo = self->_encodedSpanInfo;
  v3 = &encodedSpanInfo[-*encodedSpanInfo->var0];
  v4 = *v3->var0;
  if (v4 < 5)
  {
    v5 = 0;
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  if (*v3[4].var0)
  {
    v5 = *encodedSpanInfo[*v3[4].var0].var0;
  }

  else
  {
    v5 = 0;
  }

  if (v4 < 7)
  {
    goto LABEL_9;
  }

  v6 = *v3[6].var0;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *encodedSpanInfo[v6].var0;
LABEL_10:
  result.length = v7;
  result.location = v5;
  return result;
}

- (KVEncodedSpanInfo)initWithBuffer:(id)buffer verify:(BOOL)verify value:(id)value error:(id *)error
{
  verifyCopy = verify;
  v90[1] = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  valueCopy = value;
  v86.receiver = self;
  v86.super_class = KVEncodedSpanInfo;
  v13 = [(KVSpanInfo *)&v86 initWithSpanInfo:0];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_buffer, buffer);
    objc_storeStrong(&v14->_value, value);
    if (objc_msgSend_length(v14->_buffer, v15, v16, v17, v18, v19))
    {
      v25 = objc_msgSend_bytes(v14->_buffer, v20, v21, v22, v23, v24);
      v14->_encodedSpanInfo = v25 + *v25;
      if (!verifyCopy)
      {
        goto LABEL_53;
      }

      v31 = objc_msgSend_bytes(v14->_buffer, v26, v27, v28, v29, v30);
      v37 = objc_msgSend_length(v14->_buffer, v32, v33, v34, v35, v36);
      v81 = v31;
      v82 = v37;
      v83 = xmmword_2559D02B0;
      v84 = 0;
      v85 = 1;
      if (v37 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      if (v37 >= 5)
      {
        v43 = *v31;
        if (v43 >= 1 && v37 - 1 >= v43)
        {
          v44 = &v31[v43];
          if (sub_2559A7668(&v81, v44))
          {
            v45 = (v44 - *v44);
            v46 = *v45;
            if (v46 < 5)
            {
              goto LABEL_53;
            }

            if (!v45[2] || v82 >= 3 && v82 - 2 >= v44 + v45[2] - v81)
            {
              if (v46 < 7)
              {
                goto LABEL_53;
              }

              if (!v45[3] || v82 >= 3 && v82 - 2 >= v44 + v45[3] - v81)
              {
                if (v46 < 9)
                {
                  goto LABEL_53;
                }

                if (!v45[4] || v82 >= 5 && v82 - 4 >= v44 + v45[4] - v81)
                {
                  if (v46 < 0xB)
                  {
                    goto LABEL_53;
                  }

                  if (!v45[5] || v82 >= 3 && v82 - 2 >= v44 + v45[5] - v81)
                  {
                    if (v46 < 0xD)
                    {
                      goto LABEL_53;
                    }

                    if (!v45[6] || v82 >= 3 && v82 - 2 >= v44 + v45[6] - v81)
                    {
                      if (v46 < 0xF)
                      {
                        goto LABEL_53;
                      }

                      if (!v45[7] || v82 >= 3 && v82 - 2 >= v44 + v45[7] - v81)
                      {
                        if (v46 < 0x11)
                        {
                          goto LABEL_53;
                        }

                        if (!v45[8] || v82 >= 3 && v82 - 2 >= v44 + v45[8] - v81)
                        {
                          if (v46 < 0x13)
                          {
                            goto LABEL_53;
                          }

                          if (!v45[9] || v82 >= 3 && v82 - 2 >= v44 + v45[9] - v81)
                          {
                            if (v46 < 0x15)
                            {
                              goto LABEL_53;
                            }

                            if (!v45[10] || v82 >= 3 && v82 - 2 >= v44 + v45[10] - v81)
                            {
                              if (v46 < 0x17)
                              {
                                goto LABEL_53;
                              }

                              if (!v45[11] || v82 >= 3 && v82 - 2 >= v44 + v45[11] - v81)
                              {
                                if (v46 < 0x19)
                                {
                                  goto LABEL_53;
                                }

                                v47 = v45[12];
                                if (!v47 || v82 >= 3 && v82 - 2 >= v44 + v47 - v81)
                                {
                                  goto LABEL_53;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v64 = MEMORY[0x277CCA9B8];
      v87 = *MEMORY[0x277CCA450];
      v65 = MEMORY[0x277CCACA8];
      buffer = v14->_buffer;
      v67 = objc_msgSend_encodedString(v14, v38, v39, v40, v41, v42);
      v72 = objc_msgSend_stringWithFormat_(v65, v68, @"Failed to verify spanInfo buffer: %@ (encoded string: %@)", v69, v70, v71, buffer, v67);
      v88 = v72;
      v75 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v73, &v88, &v87, 1, v74);
      v78 = objc_msgSend_errorWithDomain_code_userInfo_(v64, v76, @"com.apple.koa.KVSpanInfo", -1, v75, v77);
      if (error && v78)
      {
        v78 = v78;
        *error = v78;
      }
    }

    else
    {
      v49 = MEMORY[0x277CCA9B8];
      v89 = *MEMORY[0x277CCA450];
      v50 = MEMORY[0x277CCACA8];
      v51 = v14->_buffer;
      v52 = objc_msgSend_encodedString(v14, v20, v21, v22, v23, v24);
      v57 = objc_msgSend_stringWithFormat_(v50, v53, @"Invalid spanInfo buffer: %@ (encoded string: %@)", v54, v55, v56, v51, v52);
      v90[0] = v57;
      v60 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v58, v90, &v89, 1, v59);
      v63 = objc_msgSend_errorWithDomain_code_userInfo_(v49, v61, @"com.apple.koa.KVSpanInfo", -1, v60, v62);
      if (error && v63)
      {
        v63 = v63;
        *error = v63;
      }
    }

    v48 = 0;
    goto LABEL_63;
  }

LABEL_53:
  v48 = v14;
LABEL_63:

  v79 = *MEMORY[0x277D85DE8];
  return v48;
}

- (KVEncodedSpanInfo)initWithValue:(id)value location:(unsigned int)location length:(unsigned int)length matchScore:(float)score maxTokenCount:(unsigned int)count matchedTokenCount:(unsigned int)tokenCount maxStopWordCount:(unsigned int)wordCount matchedStopWordCount:(unsigned int)self0 maxAliasCount:(unsigned int)self1 matchedAliasCount:(unsigned int)self2 editDistance:(unsigned int)self3 aliasMatchOptions:(unsigned __int16)self4
{
  wordCountCopy = wordCount;
  tokenCountCopy = tokenCount;
  countCopy = count;
  locationCopy = location;
  v55 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!objc_msgSend_length(valueCopy, v22, v23, v24, v25, v26))
  {
    v39 = qword_28106B3C0;
    if (!os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      selfCopy = 0;
      goto LABEL_13;
    }

    *v46 = 136315138;
    *&v46[4] = "[KVEncodedSpanInfo initWithValue:location:length:matchScore:maxTokenCount:matchedTokenCount:maxStopWordCount:matchedStopWordCount:maxAliasCount:matchedAliasCount:editDistance:aliasMatchOptions:]";
    v40 = "%s Cannot initialize span info with empty value";
    v41 = v39;
    v42 = 12;
LABEL_15:
    _os_log_error_impl(&dword_2559A5000, v41, OS_LOG_TYPE_ERROR, v40, v46, v42);
    goto LABEL_12;
  }

  if (!length)
  {
    v43 = qword_28106B3C0;
    if (!os_log_type_enabled(qword_28106B3C0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *v46 = 136315394;
    *&v46[4] = "[KVEncodedSpanInfo initWithValue:location:length:matchScore:maxTokenCount:matchedTokenCount:maxStopWordCount:matchedStopWordCount:maxAliasCount:matchedAliasCount:editDistance:aliasMatchOptions:]";
    v47 = 2112;
    *v48 = valueCopy;
    v40 = "%s Cannot initialize span info with zero length. value: %@";
    v41 = v43;
    v42 = 22;
    goto LABEL_15;
  }

  *v46 = 0;
  v46[8] = 0;
  *&v48[2] = xmmword_2559D02C0;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  v52 = 1;
  v53 = 256;
  v54 = 0;
  sub_2559A7BAC(v46);
  BYTE6(v51) = 1;
  sub_2559A7C64(v46, 4, locationCopy);
  sub_2559A7C64(v46, 6, length);
  if (score != 0.0 || v53 == 1)
  {
    sub_2559A86B4(v46, 4uLL);
    sub_2559A8418(v46, 4uLL);
    v27 = v50;
    *(v50 - 4) = score;
    v27 -= 4;
    *&v50 = v27;
    v28 = v49;
    sub_2559A8418(v46, 8uLL);
    **(&v50 + 1) = (v28 - v27 + DWORD2(v28)) | 0x800000000;
    *(&v50 + 1) += 8;
    LODWORD(v51) = v51 + 1;
    v29 = WORD2(v51);
    if (WORD2(v51) <= 8u)
    {
      v29 = 8;
    }

    WORD2(v51) = v29;
  }

  sub_2559A7C64(v46, 10, countCopy);
  sub_2559A7C64(v46, 12, tokenCountCopy);
  sub_2559A7C64(v46, 14, wordCountCopy);
  sub_2559A7C64(v46, 16, stopWordCount);
  sub_2559A7C64(v46, 18, aliasCount);
  sub_2559A7C64(v46, 20, matchedAliasCount);
  sub_2559A7C64(v46, 22, distance);
  sub_2559A7C64(v46, 24, options);
  v30 = sub_2559A7D18(v46, 0);
  sub_2559A7FB4(v46, v30, 0, 0);
  v31 = objc_alloc(MEMORY[0x277CBEA90]);
  v32 = sub_2559A80B8(v46);
  v36 = objc_msgSend_initWithBytes_length_(v31, v33, v32, (v49 - v50 + DWORD2(v49)), v34, v35);
  self = objc_msgSend_initWithBuffer_verify_value_error_(self, v37, v36, 0, valueCopy, 0);

  sub_2559A811C(v46);
  selfCopy = self;
LABEL_13:

  v44 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

+ (id)spanInfoFromEncodedString:(id)string error:(id *)error
{
  stringCopy = string;
  if (stringCopy)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    v10 = objc_msgSend_initWithBase64EncodedString_options_(v6, v7, stringCopy, 0, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = [KVEncodedSpanInfo alloc];
  v13 = objc_msgSend_initWithBuffer_verify_value_error_(v11, v12, v10, 1, 0, error);

  return v13;
}

@end