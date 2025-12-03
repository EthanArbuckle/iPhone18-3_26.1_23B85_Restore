@interface MontrealNNDescription
- (MontrealNNDescription)descriptionWithIndent:(id)indent;
- (id)description;
- (void)checkForValidity:(id)validity;
@end

@implementation MontrealNNDescription

- (MontrealNNDescription)descriptionWithIndent:(id)indent
{
  indentCopy = indent;
  v7 = objc_msgSend_indentByFactor_(indentCopy, v5, 1, v6);
  v11 = objc_msgSend_string(MEMORY[0x1E696AD60], v8, v9, v10);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, @"\r %@ {", v13, indentCopy);
  objc_msgSend_appendString_(v11, v15, v14, v16);

  if (objc_msgSend_conformsToProtocol_(self, v17, &unk_1F10C6690, v18))
  {
    objc_msgSend_description_indent_(self, v19, v11, v7);
  }

  v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"\r %@ }", v20, indentCopy);
  objc_msgSend_appendString_(v11, v22, v21, v23);

  return v11;
}

- (id)description
{
  v4 = objc_msgSend_indentWithLevel_(MontrealLogIndent, a2, @"    ", v2);
  v7 = objc_msgSend_descriptionWithIndent_(self, v5, v4, v6);

  return v7;
}

- (void)checkForValidity:(id)validity
{
  v52 = *MEMORY[0x1E69E9840];
  validityCopy = validity;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(validityCopy, v4, &v47, v51, 16);
  if (v5)
  {
    v8 = v5;
    v9 = *v48;
    v10 = 0x1E696A000uLL;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(validityCopy);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = objc_msgSend_objectAtIndexedSubscript_(v19, v6, 0, v7);
        v23 = objc_msgSend_objectAtIndexedSubscript_(v19, v21, 1, v22);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!objc_msgSend_count(v23, v24, v25, v26))
          {
            sub_19D2C78CC(@"%@ %@ has 0 elements", v12, v13, v14, v15, v16, v17, v18, self);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (!v23)
            {
              sub_19D2C78CC(@"%@ %@ is nil", v27, v28, v29, v30, v31, v32, v33, self);
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v34 = v10;
              v35 = v23;
              if (!objc_msgSend_unsignedIntegerValue(v35, v36, v37, v38))
              {
                sub_19D2C78CC(@"%@ %@: %@ is invalid", v39, v40, v41, v42, v43, v44, v45, self);
              }

              v10 = v34;
            }
          }
        }
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(validityCopy, v6, &v47, v51, 16);
    }

    while (v8);
  }
}

@end