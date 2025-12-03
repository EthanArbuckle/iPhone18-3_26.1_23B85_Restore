@interface CKDAppContainerAccountTuple
- (BOOL)isEqual:(id)equal;
- (CKDAppContainerAccountTuple)initWithAppContainerTuple:(id)tuple accountID:(id)d;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
@end

@implementation CKDAppContainerAccountTuple

- (unint64_t)hash
{
  v4 = objc_msgSend_appContainerTuple(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_accountID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (CKDAppContainerAccountTuple)initWithAppContainerTuple:(id)tuple accountID:(id)d
{
  tupleCopy = tuple;
  dCopy = d;
  v18.receiver = self;
  v18.super_class = CKDAppContainerAccountTuple;
  v10 = [(CKDAppContainerAccountTuple *)&v18 init];
  if (v10)
  {
    v11 = objc_msgSend_copy(tupleCopy, v8, v9);
    appContainerTuple = v10->_appContainerTuple;
    v10->_appContainerTuple = v11;

    v15 = objc_msgSend_copy(dCopy, v13, v14);
    accountID = v10->_accountID;
    v10->_accountID = v15;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_accountID(self, v6, v7);
      v11 = objc_msgSend_accountID(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual();

      if (v12)
      {
        v15 = objc_msgSend_appContainerTuple(self, v13, v14);
        v18 = objc_msgSend_appContainerTuple(v5, v16, v17);
        v19 = CKObjectsAreBothNilOrEqual();
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_appContainerTuple(self, a2, v2);
  v8 = objc_msgSend_accountID(self, v6, v7);
  v10 = objc_msgSend_stringWithFormat_(v4, v9, @"%@, accountID=%@", v5, v8);

  return v10;
}

@end