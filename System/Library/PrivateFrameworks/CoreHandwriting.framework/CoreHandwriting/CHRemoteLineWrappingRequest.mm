@interface CHRemoteLineWrappingRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRemoteLineWrappingRequest:(id)request;
- (CHRemoteLineWrappingRequest)initWithCoder:(id)coder;
- (CHRemoteLineWrappingRequest)initWithLineWrappableGroups:(id)groups options:(id)options;
- (unint64_t)hash;
@end

@implementation CHRemoteLineWrappingRequest

- (CHRemoteLineWrappingRequest)initWithLineWrappableGroups:(id)groups options:(id)options
{
  groupsCopy = groups;
  v10.receiver = self;
  v10.super_class = CHRemoteLineWrappingRequest;
  v7 = [(CHRemoteLineWrappingRequest *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_lineWrappableGroups, groups);
  }

  return v8;
}

- (CHRemoteLineWrappingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CHRemoteLineWrappingRequest;
  v5 = [(CHRemoteLineWrappingRequest *)&v13 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v10 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v7, v6, @"lineWrappableGroups", v8, v9);
    lineWrappableGroups = v5->_lineWrappableGroups;
    v5->_lineWrappableGroups = v10;
  }

  return v5;
}

- (BOOL)isEqualToRemoteLineWrappingRequest:(id)request
{
  requestCopy = request;
  if (self == requestCopy)
  {
    goto LABEL_9;
  }

  v10 = objc_msgSend_enableCachingIfAvailable(self, v4, v5, v6, v7, v8);
  if (v10 != objc_msgSend_enableCachingIfAvailable(requestCopy, v11, v12, v13, v14, v15))
  {
    goto LABEL_4;
  }

  v21 = objc_msgSend_lineWrappableGroups(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_lineWrappableGroups(requestCopy, v22, v23, v24, v25, v26);

  if (v21 != v27)
  {
    goto LABEL_4;
  }

  v34 = objc_msgSend_options(self, v28, v29, v30, v31, v32);
  v40 = objc_msgSend_options(requestCopy, v35, v36, v37, v38, v39);

  if (v34 == v40)
  {
LABEL_9:
    v33 = 1;
    goto LABEL_10;
  }

  v51 = objc_msgSend_options(self, v41, v42, v43, v44, v45);
  if (v51)
  {
    v57 = objc_msgSend_options(requestCopy, v46, v47, v48, v49, v50);
    if (v57)
    {
      v58 = objc_msgSend_options(self, v52, v53, v54, v55, v56);
      v64 = objc_msgSend_options(requestCopy, v59, v60, v61, v62, v63);
      isEqualToDictionary = objc_msgSend_isEqualToDictionary_(v58, v65, v64, v66, v67, v68);

      if (isEqualToDictionary)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

LABEL_4:
  v33 = 0;
LABEL_10:

  return v33;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isEqualToRemoteLineWrappingRequest = objc_msgSend_isEqualToRemoteLineWrappingRequest_(self, v5, equalCopy, v6, v7, v8);

    return isEqualToRemoteLineWrappingRequest;
  }

  else
  {

    return 0;
  }
}

- (unint64_t)hash
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 17;
  v7 = objc_msgSend_lineWrappableGroups(self, a2, v2, v3, v4, v5);

  v8 = v42[3];
  v14 = objc_msgSend_enableCachingIfAvailable(self, v9, v10, v11, v12, v13);
  v15 = v7 + 992 * v8 + 32 * v14 - v14 + -31 * v8;
  v42[3] = v15;
  v21 = objc_msgSend_options(self, v16, v17, v18, v19, v20);
  v27 = objc_msgSend_count(v21, v22, v23, v24, v25, v26);
  v42[3] = v27 + 31 * v15;

  v33 = objc_msgSend_options(self, v28, v29, v30, v31, v32);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = sub_18386A808;
  v40[3] = &unk_1E6DDF128;
  v40[4] = &v41;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v33, v34, v40, v35, v36, v37);

  v38 = v42[3];
  _Block_object_dispose(&v41, 8);
  return v38;
}

@end