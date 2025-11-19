@interface CHTextCorrectionResult
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTextCorrectionResult:(id)a3;
- (CHTextCorrectionResult)initWithCoder:(id)a3;
- (CHTextCorrectionResult)initWithInputTarget:(id)a3 affectedRange:(_NSRange)a4 textResult:(id)a5 resultType:(int64_t)a6 isCharacterLevel:(BOOL)a7 error:(id)a8;
- (_NSRange)affectedRange;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHTextCorrectionResult

- (CHTextCorrectionResult)initWithInputTarget:(id)a3 affectedRange:(_NSRange)a4 textResult:(id)a5 resultType:(int64_t)a6 isCharacterLevel:(BOOL)a7 error:(id)a8
{
  length = a4.length;
  location = a4.location;
  v14 = a3;
  v15 = a5;
  v16 = a8;
  v21.receiver = self;
  v21.super_class = CHTextCorrectionResult;
  v17 = [(CHTextCorrectionResult *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_inputTarget, a3);
    v18->_affectedRange.location = location;
    v18->_affectedRange.length = length;
    objc_storeStrong(&v18->_textResult, a5);
    v18->_resultType = a6;
    v18->_characterLevel = a7;
    objc_storeStrong(&v18->_error, a8);
  }

  return v18;
}

- (id)description
{
  v7 = objc_msgSend_textResult(self, a2, v2, v3, v4, v5);

  if (v7)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_msgSend_textResult(self, v8, v9, v10, v11, v12);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v22 = objc_msgSend_textResult(self, v17, v18, v19, v20, v21);
    v28 = objc_msgSend_textResult(self, v23, v24, v25, v26, v27);
    v34 = objc_msgSend_topTranscription(v28, v29, v30, v31, v32, v33);
    v39 = objc_msgSend_stringWithFormat_(v13, v35, @"<%@: %p> %@", v36, v37, v38, v16, v22, v34);
  }

  else
  {
    v39 = @"None";
  }

  v84.receiver = self;
  v84.super_class = CHTextCorrectionResult;
  v40 = [(CHTextCorrectionResult *)&v84 description];
  v46 = objc_msgSend_inputTarget(self, v41, v42, v43, v44, v45);
  v52 = objc_msgSend_inputTargetIdentifier(v46, v47, v48, v49, v50, v51);
  v86.location = objc_msgSend_affectedRange(self, v53, v54, v55, v56, v57);
  v58 = NSStringFromRange(v86);
  v64 = objc_msgSend_resultType(self, v59, v60, v61, v62, v63);
  if (v64 > 8)
  {
    v70 = &stru_1EF1C0318;
  }

  else
  {
    v70 = off_1E6DDF8A8[v64];
  }

  if (objc_msgSend_isCharacterLevel(self, v65, v66, v67, v68, v69))
  {
    v76 = @"Yes";
  }

  else
  {
    v76 = @"No";
  }

  v77 = objc_msgSend_localizedDescription(self->_error, v71, v72, v73, v74, v75);
  v82 = objc_msgSend_stringByAppendingFormat_(v40, v78, @" inputTargetID: %@, affectedRange: %@, resultType: %@, textResult: %@, isCharacterLevel: %@, error: %@", v79, v80, v81, v52, v58, v70, v39, v76, v77);

  return v82;
}

- (void)encodeWithCoder:(id)a3
{
  inputTarget = self->_inputTarget;
  v24 = a3;
  objc_msgSend_encodeObject_forKey_(v24, v5, inputTarget, @"inputTarget", v6, v7);
  v8 = NSStringFromRange(self->_affectedRange);
  objc_msgSend_encodeObject_forKey_(v24, v9, v8, @"affectedRange", v10, v11);

  objc_msgSend_encodeObject_forKey_(v24, v12, self->_textResult, @"textResult", v13, v14);
  objc_msgSend_encodeInteger_forKey_(v24, v15, self->_resultType, @"resultType", v16, v17);
  objc_msgSend_encodeBool_forKey_(v24, v18, self->_characterLevel, @"isCharacterLevel", v19, v20);
  objc_msgSend_encodeObject_forKey_(v24, v21, self->_error, @"error", v22, v23);
}

- (CHTextCorrectionResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v6, v5, @"inputTarget", v7, v8);
  v10 = objc_opt_class();
  v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"affectedRange", v12, v13);
  v15 = NSRangeFromString(v14);
  v16 = objc_opt_class();
  v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v17, v16, @"textResult", v18, v19);
  v25 = objc_msgSend_decodeIntegerForKey_(v4, v21, @"resultType", v22, v23, v24);
  v30 = objc_msgSend_decodeBoolForKey_(v4, v26, @"isCharacterLevel", v27, v28, v29);
  v31 = objc_opt_class();
  v35 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v32, v31, @"error", v33, v34);

  if (v9)
  {
    self = objc_msgSend_initWithInputTarget_affectedRange_textResult_resultType_isCharacterLevel_error_(self, v36, v9, v15.location, v15.length, v20, v25, v30, v35);
  }

  return self;
}

- (BOOL)isEqualToTextCorrectionResult:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self != v4)
  {
    inputTarget = self->_inputTarget;
    v12 = objc_msgSend_inputTarget(v4, v5, v6, v7, v8, v9);
    v18 = v12;
    if (inputTarget == v12)
    {

      length = self->_affectedRange.length;
      objc_msgSend_affectedRange(v10, v38, v39, v40, v41, v42);
      if (length != v31)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (!self->_inputTarget)
      {
        goto LABEL_21;
      }

      v19 = objc_msgSend_inputTarget(v10, v13, v14, v15, v16, v17);
      isEqualToInputTarget = objc_msgSend_isEqualToInputTarget_(v19, v20, self->_inputTarget, v21, v22, v23);

      if (!isEqualToInputTarget)
      {
        goto LABEL_20;
      }

      v30 = self->_affectedRange.length;
      objc_msgSend_affectedRange(v10, v25, v26, v27, v28, v29);
      if (v30 != v31)
      {
        goto LABEL_20;
      }
    }

    location = self->_affectedRange.location;
    if (location == objc_msgSend_affectedRange(v10, v31, v32, v33, v34, v35))
    {
      textResult = self->_textResult;
      v50 = objc_msgSend_textResult(v10, v44, v45, v46, v47, v48);
      v18 = v50;
      if (textResult == v50)
      {

        goto LABEL_15;
      }

      if (!self->_textResult)
      {
        goto LABEL_21;
      }

      v56 = objc_msgSend_textResult(v10, v51, v52, v53, v54, v55);
      isEqualToTokenizedTextResult = objc_msgSend_isEqualToTokenizedTextResult_(v56, v57, self->_textResult, v58, v59, v60);

      if (isEqualToTokenizedTextResult)
      {
LABEL_15:
        resultType = self->_resultType;
        if (resultType == objc_msgSend_resultType(v10, v62, v63, v64, v65, v66))
        {
          characterLevel = self->_characterLevel;
          if (characterLevel == objc_msgSend_isCharacterLevel(v10, v68, v69, v70, v71, v72))
          {
            error = self->_error;
            v18 = objc_msgSend_error(v10, v74, v75, v76, v77, v78);
            if (error == v18)
            {
              isEqual = 1;
              goto LABEL_22;
            }

            if (self->_error)
            {
              v85 = objc_msgSend_error(v10, v80, v81, v82, v83, v84);
              isEqual = objc_msgSend_isEqual_(v85, v86, self->_error, v87, v88, v89);

LABEL_22:
              goto LABEL_23;
            }

LABEL_21:
            isEqual = 0;
            goto LABEL_22;
          }
        }
      }
    }

LABEL_20:
    isEqual = 0;
    goto LABEL_23;
  }

  isEqual = 1;
LABEL_23:

  return isEqual;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToTextCorrectionResult = objc_msgSend_isEqualToTextCorrectionResult_(self, v5, v4, v6, v7, v8);

    return isEqualToTextCorrectionResult;
  }

  else
  {

    return 0;
  }
}

- (_NSRange)affectedRange
{
  length = self->_affectedRange.length;
  location = self->_affectedRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end