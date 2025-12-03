@interface CKAtomReference
- (BOOL)isEqual:(id)equal;
- (CKAtomReference)initWithMergeableValueID:(id)d timestamp:(id)timestamp;
- (CKAtomReference)initWithMergeableValueID:(id)d timestamp:(id)timestamp type:(unsigned __int8)type;
- (unint64_t)hash;
@end

@implementation CKAtomReference

- (CKAtomReference)initWithMergeableValueID:(id)d timestamp:(id)timestamp
{
  dCopy = d;
  timestampCopy = timestamp;
  v26.receiver = self;
  v26.super_class = CKAtomReference;
  v14 = [(CKAtomReference *)&v26 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(dCopy, v8, v9, v10, v11, v12, v13);
    mergeableValueID = v14->_mergeableValueID;
    v14->_mergeableValueID = v15;

    v23 = objc_msgSend_copy(timestampCopy, v17, v18, v19, v20, v21, v22);
    timestamp = v14->_timestamp;
    v14->_timestamp = v23;

    v14->_type = 1;
  }

  return v14;
}

- (CKAtomReference)initWithMergeableValueID:(id)d timestamp:(id)timestamp type:(unsigned __int8)type
{
  dCopy = d;
  timestampCopy = timestamp;
  v28.receiver = self;
  v28.super_class = CKAtomReference;
  v16 = [(CKAtomReference *)&v28 init];
  if (v16)
  {
    v17 = objc_msgSend_copy(dCopy, v10, v11, v12, v13, v14, v15);
    mergeableValueID = v16->_mergeableValueID;
    v16->_mergeableValueID = v17;

    v25 = objc_msgSend_copy(timestampCopy, v19, v20, v21, v22, v23, v24);
    timestamp = v16->_timestamp;
    v16->_timestamp = v25;

    v16->_type = type;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v13 = objc_msgSend_type(self, v7, v8, v9, v10, v11, v12);
      if (v13 != objc_msgSend_type(v6, v14, v15, v16, v17, v18, v19))
      {
        isEqual = 0;
LABEL_17:

        goto LABEL_18;
      }

      v26 = objc_msgSend_mergeableValueID(self, v20, v21, v22, v23, v24, v25);
      v39 = objc_msgSend_mergeableValueID(v6, v27, v28, v29, v30, v31, v32);
      if (v26 != v39)
      {
        v40 = objc_msgSend_mergeableValueID(self, v33, v34, v35, v36, v37, v38);
        v3 = objc_msgSend_mergeableValueID(v6, v41, v42, v43, v44, v45, v46);
        if (!objc_msgSend_isEqual_(v40, v47, v3, v48, v49, v50, v51))
        {
          isEqual = 0;
LABEL_15:

LABEL_16:
          goto LABEL_17;
        }

        v82 = v40;
      }

      v53 = objc_msgSend_timestamp(self, v33, v34, v35, v36, v37, v38);
      v60 = objc_msgSend_timestamp(v6, v54, v55, v56, v57, v58, v59);
      v67 = v60;
      if (v53 == v60)
      {

        isEqual = 1;
      }

      else
      {
        v68 = objc_msgSend_timestamp(self, v61, v62, v63, v64, v65, v66);
        v75 = objc_msgSend_timestamp(v6, v69, v70, v71, v72, v73, v74);
        isEqual = objc_msgSend_isEqual_(v68, v76, v75, v77, v78, v79, v80);
      }

      v40 = v82;
      if (v26 == v39)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    isEqual = 0;
  }

LABEL_18:

  return isEqual;
}

- (unint64_t)hash
{
  v8 = objc_msgSend_type(self, a2, v2, v3, v4, v5, v6);
  v15 = objc_msgSend_mergeableValueID(self, v9, v10, v11, v12, v13, v14);
  v22 = objc_msgSend_hash(v15, v16, v17, v18, v19, v20, v21);
  v29 = objc_msgSend_timestamp(self, v23, v24, v25, v26, v27, v28);
  v36 = v22 ^ objc_msgSend_hash(v29, v30, v31, v32, v33, v34, v35);

  return v36 ^ v8;
}

@end