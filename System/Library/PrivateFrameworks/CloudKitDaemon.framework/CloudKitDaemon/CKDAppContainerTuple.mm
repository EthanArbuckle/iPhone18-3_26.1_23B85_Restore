@interface CKDAppContainerTuple
- (BOOL)isEqual:(id)equal;
- (CKDAppContainerTuple)initWithApplicationID:(id)d containerID:(id)iD persona:(id)persona;
- (CKDAppContainerTuple)initWithApplicationID:(id)d containerID:(id)iD personaID:(id)personaID;
- (NSString)personaID;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
@end

@implementation CKDAppContainerTuple

- (NSString)personaID
{
  v3 = objc_msgSend_persona(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_applicationID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_containerID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_personaID(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_applicationID(self, a2, v2);
  v8 = objc_msgSend_containerID(self, v6, v7);
  v11 = objc_msgSend_personaID(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"applicationID=%@, containerID=%@, personaID=%@", v5, v8, v11);

  return v13;
}

- (CKDAppContainerTuple)initWithApplicationID:(id)d containerID:(id)iD personaID:(id)personaID
{
  dCopy = d;
  iDCopy = iD;
  personaIDCopy = personaID;
  if (!personaIDCopy)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = objc_msgSend_personaWithIdentifier_error_(MEMORY[0x277CBC558], v10, personaIDCopy, 0);
  if (v12)
  {
LABEL_5:
    v16 = objc_msgSend_initWithApplicationID_containerID_persona_(self, v10, dCopy, iDCopy, v12);
    goto LABEL_6;
  }

  v13 = objc_alloc(MEMORY[0x277CBC558]);
  v12 = objc_msgSend_initWithIdentifier_type_(v13, v14, personaIDCopy, 0);
  v16 = objc_msgSend_initWithApplicationID_containerID_persona_(self, v15, dCopy, iDCopy, v12);
LABEL_6:
  v17 = v16;

  return v17;
}

- (CKDAppContainerTuple)initWithApplicationID:(id)d containerID:(id)iD persona:(id)persona
{
  dCopy = d;
  iDCopy = iD;
  personaCopy = persona;
  v25.receiver = self;
  v25.super_class = CKDAppContainerTuple;
  v13 = [(CKDAppContainerTuple *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(dCopy, v11, v12);
    applicationID = v13->_applicationID;
    v13->_applicationID = v14;

    v18 = objc_msgSend_copy(iDCopy, v16, v17);
    containerID = v13->_containerID;
    v13->_containerID = v18;

    v22 = objc_msgSend_copy(personaCopy, v20, v21);
    persona = v13->_persona;
    v13->_persona = v22;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_applicationID(self, v6, v7);
      v11 = objc_msgSend_applicationID(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual();

      if (v12 && (objc_msgSend_containerID(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_containerID(v5, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = CKObjectsAreBothNilOrEqual(), v18, v15, v19))
      {
        v22 = objc_msgSend_personaID(self, v20, v21);
        v25 = objc_msgSend_personaID(v5, v23, v24);
        v26 = CKObjectsAreBothNilOrEqual();
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

@end