@interface IMAggregateAcknowledgmentChatItem
- (BOOL)isEqual:(id)equal;
- (id)_initWithAcknowledgments:(id)acknowledgments;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation IMAggregateAcknowledgmentChatItem

- (id)_initWithAcknowledgments:(id)acknowledgments
{
  v87 = *MEMORY[0x1E69E9840];
  acknowledgmentsCopy = acknowledgments;
  if (!objc_msgSend_count(acknowledgmentsCopy, v5, v6))
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = IMFileLocationTrimFileName();
    v12 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, @"acknowledgments array must be nonempty");
    v14 = objc_msgSend_stringWithFormat_(v9, v13, @"Unexpected false '%@' in %s at %s:%d. %@", @"acknowledgments.count > 0", "[IMAggregateAcknowledgmentChatItem _initWithAcknowledgments:]", v10, 5592, v12);

    v15 = IMGetAssertionFailureHandler();
    if (v15)
    {
      v15(v14);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1A84DFFFC();
      }
    }
  }

  v19 = objc_msgSend_lastObject(acknowledgmentsCopy, v7, v8);
  v22 = objc_msgSend__item(v19, v20, v21);
  v25 = objc_msgSend_sender(v19, v23, v24);
  v27 = objc_msgSend__initWithItem_sender_(self, v26, v22, v25);

  if (v27)
  {
    v30 = objc_msgSend_copy(acknowledgmentsCopy, v28, v29);
    v31 = *(v27 + 168);
    *(v27 + 168) = v30;

    v75 = v19;
    v34 = objc_msgSend_parentMessageIsFromMe(v19, v32, v33);
    objc_msgSend__setParentMessageIsFromMe_(v27, v35, v34);
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    obj = *(v27 + 168);
    v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v36, &v78, v86, 16);
    if (v37)
    {
      v40 = v37;
      v41 = *v79;
      do
      {
        v42 = 0;
        do
        {
          if (*v79 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v43 = *(*(&v78 + 1) + 8 * v42);
          v44 = objc_msgSend_associatedMessageGUID(v27, v38, v39);
          v47 = objc_msgSend_associatedMessageGUID(v43, v45, v46);
          isEqualToString = objc_msgSend_isEqualToString_(v44, v48, v47);

          if ((isEqualToString & 1) == 0)
          {
            v52 = MEMORY[0x1E696AEC0];
            v53 = IMFileLocationTrimFileName();
            v55 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v54, @"all acknowledgments must have the same associated message");
            v57 = objc_msgSend_stringWithFormat_(v52, v56, @"Unexpected false '%@' in %s at %s:%d. %@", @"[self.associatedMessageGUID isEqualToString:acknowledgment.associatedMessageGUID]", "[IMAggregateAcknowledgmentChatItem _initWithAcknowledgments:]", v53, 5599, v55);

            v58 = IMGetAssertionFailureHandler();
            if (v58)
            {
              v58(v57);
            }

            else
            {
              v61 = objc_msgSend_warning(MEMORY[0x1E69A6138], v59, v60);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                *&buf[4] = v57;
                _os_log_error_impl(&dword_1A823F000, v61, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
              }
            }
          }

          if (objc_msgSend_isFromMe(v43, v50, v51))
          {
            objc_storeStrong((v27 + 176), v43);
          }

          ++v42;
        }

        while (v40 != v42);
        v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v38, &v78, v86, 16);
      }

      while (v40);
    }

    *(v27 + 161) = objc_msgSend_count(acknowledgmentsCopy, v62, v63) > 1;
    v19 = v75;
    *(v27 + 160) = objc_msgSend_isFromMe(v75, v64, v65);
    v68 = objc_msgSend_tapback(v75, v66, v67);
    v69 = *(v27 + 184);
    *(v27 + 184) = v68;

    v77 = 0u;
    objc_msgSend_geometryDescriptor(v27, v70, v71);
    *&v77 = 10;
    *buf = v77;
    v83 = 0u;
    v84 = 0u;
    v85 = 0;
    objc_msgSend__setGeometryDescriptor_(v27, v72, buf);
  }

  v73 = *MEMORY[0x1E69E9840];
  return v27;
}

- (unint64_t)hash
{
  v3 = objc_msgSend_lastObject(self->_acknowledgments, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    if (self->_latestIsFromMe == *(v6 + 160) && objc_msgSend_isEqual_(self->_latestTapback, v5, v6[23]) && self->_includesMultiple == *(v6 + 161))
    {
      isEqual = objc_msgSend_isEqual_(self->_acknowledgments, v7, v6[21]);
    }

    else
    {
      isEqual = 0;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  acknowledgments = self->_acknowledgments;

  return objc_msgSend__initWithAcknowledgments_(v4, v5, acknowledgments);
}

@end