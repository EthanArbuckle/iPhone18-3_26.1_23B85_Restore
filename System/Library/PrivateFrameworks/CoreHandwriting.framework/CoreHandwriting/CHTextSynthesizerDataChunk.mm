@interface CHTextSynthesizerDataChunk
- (BOOL)isEqual:(id)equal;
- (CHTextSynthesizerDataChunk)initWithChunkValueForSynthesis:(id)synthesis originalValue:(id)value range:(_NSRange)range isNotDef:(BOOL)def synthesisSuggestion:(int64_t)suggestion;
- (CHTextSynthesizerDataChunk)initWithCoder:(id)coder;
- (_NSRange)rangeInOriginalString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)compareByRangeWithDataChunk:(id)chunk;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHTextSynthesizerDataChunk

- (CHTextSynthesizerDataChunk)initWithChunkValueForSynthesis:(id)synthesis originalValue:(id)value range:(_NSRange)range isNotDef:(BOOL)def synthesisSuggestion:(int64_t)suggestion
{
  length = range.length;
  location = range.location;
  synthesisCopy = synthesis;
  valueCopy = value;
  v19.receiver = self;
  v19.super_class = CHTextSynthesizerDataChunk;
  v16 = [(CHTextSynthesizerDataChunk *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_chunkValueForSynthesis, synthesis);
    objc_storeStrong(&v17->_chunkValueOriginal, value);
    v17->_rangeInOriginalString.location = location;
    v17->_rangeInOriginalString.length = length;
    v17->_isNotDef = def;
    v17->_synthesisSuggestion = suggestion;
  }

  return v17;
}

- (int64_t)compareByRangeWithDataChunk:(id)chunk
{
  location = self->_rangeInOriginalString.location;
  v7 = objc_msgSend_rangeInOriginalString(chunk, a2, chunk, v3, v4, v5);
  if (location < v7)
  {
    return -1;
  }

  else
  {
    return location > v7;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v11 = objc_msgSend_chunkValueOriginal(self, v6, v7, v8, v9, v10);
    v17 = objc_msgSend_chunkValueOriginal(v5, v12, v13, v14, v15, v16);
    if (!objc_msgSend_isEqualToString_(v11, v18, v17, v19, v20, v21))
    {
      v55 = 0;
      goto LABEL_11;
    }

    v27 = objc_msgSend_chunkValueForSynthesis(self, v22, v23, v24, v25, v26);
    v33 = objc_msgSend_chunkValueForSynthesis(v5, v28, v29, v30, v31, v32);
    if (!objc_msgSend_isEqualToString_(v27, v34, v33, v35, v36, v37))
    {
      goto LABEL_7;
    }

    v43 = objc_msgSend_rangeInOriginalString(self, v38, v39, v40, v41, v42);
    v45 = v44;
    v55 = 0;
    if (v43 != objc_msgSend_rangeInOriginalString(v5, v44, v46, v47, v48, v49) || v45 != v50)
    {
      goto LABEL_8;
    }

    isNotDef = objc_msgSend_isNotDef(self, v50, v51, v52, v53, v54);
    if (isNotDef == objc_msgSend_isNotDef(v5, v57, v58, v59, v60, v61))
    {
      v68 = objc_msgSend_synthesisSuggestion(self, v62, v63, v64, v65, v66);
      v55 = v68 == objc_msgSend_synthesisSuggestion(v5, v69, v70, v71, v72, v73);
    }

    else
    {
LABEL_7:
      v55 = 0;
    }

LABEL_8:

LABEL_11:
    goto LABEL_12;
  }

  v55 = 0;
LABEL_12:

  return v55;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v10 = objc_msgSend_chunkValueForSynthesis(self, v5, v6, v7, v8, v9);
  v16 = objc_msgSend_chunkValueOriginal(self, v11, v12, v13, v14, v15);
  v42.location = objc_msgSend_rangeInOriginalString(self, v17, v18, v19, v20, v21);
  v22 = NSStringFromRange(v42);
  isNotDef = objc_msgSend_isNotDef(self, v23, v24, v25, v26, v27);
  v34 = objc_msgSend_synthesisSuggestion(self, v29, v30, v31, v32, v33);
  if (isNotDef)
  {
    objc_msgSend_stringWithFormat_(v3, v35, @"%@ valueSynthesis:%@, valueOriginal:%@, range:%@, isNotDef:%@, synthesisSuggestion:%d", v36, v37, v38, v4, v10, v16, v22, @"YES", v34);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v3, v35, @"%@ valueSynthesis:%@, valueOriginal:%@, range:%@, isNotDef:%@, synthesisSuggestion:%d", v36, v37, v38, v4, v10, v16, v22, @"NO", v34);
  }
  v39 = ;

  return v39;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHTextSynthesizerDataChunk alloc];
  chunkValueOriginal = self->_chunkValueOriginal;
  chunkValueForSynthesis = self->_chunkValueForSynthesis;
  location = self->_rangeInOriginalString.location;
  length = self->_rangeInOriginalString.length;
  isNotDef = self->_isNotDef;
  synthesisSuggestion = self->_synthesisSuggestion;

  return objc_msgSend_initWithChunkValueForSynthesis_originalValue_range_isNotDef_synthesisSuggestion_(v4, v5, chunkValueForSynthesis, chunkValueOriginal, location, length, isNotDef, synthesisSuggestion);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v4, self->_chunkValueForSynthesis, @"synthesis_value", v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_chunkValueOriginal, @"original_value", v8, v9);
  v10 = NSStringFromRange(self->_rangeInOriginalString);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"range", v12, v13);

  objc_msgSend_encodeBool_forKey_(coderCopy, v14, self->_isNotDef, @"isNotDef", v15, v16);
  objc_msgSend_encodeInt_forKey_(coderCopy, v17, LODWORD(self->_synthesisSuggestion), @"suggestion", v18, v19);
}

- (CHTextSynthesizerDataChunk)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v6, v5, @"synthesis_value", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"original_value", v12, v13);
  v15 = objc_opt_class();
  v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"range", v17, v18);
  v20 = NSRangeFromString(v19);
  v24 = objc_msgSend_decodeBoolForKey_(coderCopy, v20.length, @"isNotDef", v21, v22, v23);
  v29 = objc_msgSend_decodeIntForKey_(coderCopy, v25, @"suggestion", v26, v27, v28);
  isNotDef_synthesisSuggestion = objc_msgSend_initWithChunkValueForSynthesis_originalValue_range_isNotDef_synthesisSuggestion_(self, v30, v9, v14, v20.location, v20.length, v24, v29);

  return isNotDef_synthesisSuggestion;
}

- (_NSRange)rangeInOriginalString
{
  length = self->_rangeInOriginalString.length;
  location = self->_rangeInOriginalString.location;
  result.length = length;
  result.location = location;
  return result;
}

@end