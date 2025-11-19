@interface CHTextSynthesizerChunkedData
- (CHTextSynthesizerChunkedData)initWithCoder:(id)a3;
- (CHTextSynthesizerChunkedData)initWithDataChunks:(id)a3 originalString:(id)a4;
- (id)chunkForOneShotRefine;
- (id)chunkForOneShotReplace;
- (id)copyWithZone:(_NSZone *)a3;
- (id)koreanRefineUnsupportedCharacterSet;
- (id)latinVariantCharacterSet;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHTextSynthesizerChunkedData

- (CHTextSynthesizerChunkedData)initWithDataChunks:(id)a3 originalString:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CHTextSynthesizerChunkedData;
  v9 = [(CHTextSynthesizerChunkedData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataChunks, a3);
    objc_storeStrong(&v10->_originalString, a4);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHTextSynthesizerChunkedData alloc];
  dataChunks = self->_dataChunks;
  originalString = self->_originalString;

  return objc_msgSend_initWithDataChunks_originalString_(v4, v5, dataChunks, originalString, v6, v7);
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  objc_msgSend_encodeObject_forKey_(v10, v4, self->_dataChunks, @"dataChunks", v5, v6);
  objc_msgSend_encodeObject_forKey_(v10, v7, self->_originalString, @"originalString", v8, v9);
}

- (CHTextSynthesizerChunkedData)initWithCoder:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_decodeObjectForKey_(v4, v5, @"dataChunks", v6, v7, v8);
  v14 = objc_msgSend_decodeObjectForKey_(v4, v10, @"originalString", v11, v12, v13);
  v18 = objc_msgSend_initWithDataChunks_originalString_(self, v15, v9, v14, v16, v17);

  return v18;
}

- (id)latinVariantCharacterSet
{
  if (qword_1EA84D0E8 == -1)
  {
    v3 = qword_1EA84D0E0;
  }

  else
  {
    dispatch_once(&qword_1EA84D0E8, &unk_1EF1BEC10);
    v3 = qword_1EA84D0E0;
  }

  return v3;
}

- (id)koreanRefineUnsupportedCharacterSet
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1838AA7E0;
  block[3] = &unk_1E6DDBE10;
  block[4] = self;
  if (qword_1EA84D0F8 == -1)
  {
    return qword_1EA84D0F0;
  }

  dispatch_once(&qword_1EA84D0F8, block);
  return qword_1EA84D0F0;
}

- (id)chunkForOneShotRefine
{
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3221225472;
  v68[2] = sub_1838AAB74;
  v68[3] = &unk_1E6DDF668;
  v68[4] = self;
  v8 = MEMORY[0x1865E6810](v68, a2);
  dataChunks = self->_dataChunks;
  if (dataChunks && objc_msgSend_count(dataChunks, v3, v4, v5, v6, v7) == 1)
  {
    v14 = objc_msgSend_objectAtIndex_(self->_dataChunks, v10, 0, v11, v12, v13);
    if (objc_msgSend_isNotDef(v14, v15, v16, v17, v18, v19))
    {
      v25 = 0;
    }

    else
    {
      v26 = objc_msgSend_chunkValueOriginal(v14, v20, v21, v22, v23, v24);
      v32 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v27, v28, v29, v30, v31);
      v37 = objc_msgSend_stringByTrimmingCharactersInSet_(v26, v33, v32, v34, v35, v36);

      originalString = self->_originalString;
      v44 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x1E696AB08], v39, v40, v41, v42, v43);
      v49 = objc_msgSend_stringByTrimmingCharactersInSet_(originalString, v45, v44, v46, v47, v48);

      if (objc_msgSend_isEqualToString_(v37, v50, v49, v51, v52, v53) & 1) != 0 && (objc_msgSend_chunkValueForSynthesis(v14, v54, v55, v56, v57, v58), v59 = objc_claimAutoreleasedReturnValue(), v65 = objc_msgSend_synthesisSuggestion(v14, v60, v61, v62, v63, v64), v66 = (v8)[2](v8, v59, v65), v59, (v66))
      {
        v25 = v14;
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)chunkForOneShotReplace
{
  dataChunks = self->_dataChunks;
  if (dataChunks)
  {
    if (objc_msgSend_count(dataChunks, a2, v2, v3, v4, v5) == 1)
    {
      v12 = objc_msgSend_objectAtIndex_(self->_dataChunks, v8, 0, v9, v10, v11);
      if ((objc_msgSend_isNotDef(v12, v13, v14, v15, v16, v17) & 1) != 0 || objc_msgSend_synthesisSuggestion(v12, v18, v19, v20, v21, v22) != 2)
      {

        dataChunks = 0;
      }

      else
      {
        v23 = v12;

        dataChunks = v23;
      }

      return dataChunks;
    }

    dataChunks = 0;
  }

  return dataChunks;
}

@end