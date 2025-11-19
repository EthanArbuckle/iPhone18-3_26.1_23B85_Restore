@interface CUPairedPeer
- (CUPairedPeer)initWithCoder:(id)a3;
- (NSDictionary)groupInfo;
- (id)description;
- (id)detailedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CUPairedPeer

- (NSDictionary)groupInfo
{
  info = self->_info;
  TypeID = CFDictionaryGetTypeID();

  return CFDictionaryGetTypedValue(info, @"groupInfo", TypeID, 0);
}

- (id)detailedDescription
{
  v56 = 0;
  NSAppendPrintF(&v56, "CUPairedPeer", v2, v3, v4, v5, v6, v7, v45);
  v9 = v56;
  v16 = v9;
  identifier = self->_identifier;
  if (identifier)
  {
    v55 = v9;
    NSAppendPrintF(&v55, ", ID %@", v10, v11, v12, v13, v14, v15, identifier);
    v18 = v55;

    v16 = v18;
  }

  name = self->_name;
  if (name)
  {
    v54 = v16;
    NSAppendPrintF(&v54, ", Name '%@'", v10, v11, v12, v13, v14, v15, name);
    v20 = v54;

    v16 = v20;
  }

  model = self->_model;
  if (model)
  {
    v53 = v16;
    NSAppendPrintF(&v53, ", Model '%@'", v10, v11, v12, v13, v14, v15, model);
    v22 = v53;

    v16 = v22;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    v52 = v16;
    NSAppendPrintF(&v52, ", PK <%.4@>", v10, v11, v12, v13, v14, v15, publicKey);
    v24 = v52;

    v16 = v24;
  }

  altIRK = self->_altIRK;
  if (altIRK)
  {
    v51 = v16;
    NSAppendPrintF(&v51, ", IRK %{mask}", v10, v11, v12, v13, v14, v15, altIRK);
    v26 = v51;

    v16 = v26;
  }

  dateModified = self->_dateModified;
  if (dateModified)
  {
    v50 = v16;
    NSAppendPrintF(&v50, ", Date %@", v10, v11, v12, v13, v14, v15, dateModified);
    v28 = v50;

    v16 = v28;
  }

  v49 = v16;
  NSAppendPrintF(&v49, "\n", v10, v11, v12, v13, v14, v15, v46);
  v29 = v49;

  if ([(NSDictionary *)self->_acl count])
  {
    v48 = v29;
    NSAppendPrintF(&v48, "    ACL: %##@\n", v30, v31, v32, v33, v34, v35, self->_acl);
    v36 = v48;

    v29 = v36;
  }

  if ([(NSDictionary *)self->_info count])
  {
    v47 = v29;
    NSAppendPrintF(&v47, "    Info: %##@\n", v37, v38, v39, v40, v41, v42, self->_info);
    v43 = v47;

    v29 = v43;
  }

  return v29;
}

- (id)description
{
  v64 = 0;
  NSAppendPrintF(&v64, "CUPairedPeer", v2, v3, v4, v5, v6, v7, v54);
  v9 = v64;
  v16 = v9;
  identifierStr = self->_identifierStr;
  if (identifierStr)
  {
    v63 = v9;
    v18 = &v63;
    NSAppendPrintF(&v63, ", ID %@", v10, v11, v12, v13, v14, v15, identifierStr);
  }

  else
  {
    identifier = self->_identifier;
    if (!identifier)
    {
      goto LABEL_6;
    }

    v62 = v9;
    v18 = &v62;
    NSAppendPrintF(&v62, ", ID %@", v10, v11, v12, v13, v14, v15, identifier);
  }

  v20 = *v18;

  v16 = v20;
LABEL_6:
  name = self->_name;
  if (name)
  {
    v61 = v16;
    NSAppendPrintF(&v61, ", Name '%@'", v10, v11, v12, v13, v14, v15, name);
    v22 = v61;

    v16 = v22;
  }

  model = self->_model;
  if (model)
  {
    v60 = v16;
    NSAppendPrintF(&v60, ", Model '%@'", v10, v11, v12, v13, v14, v15, model);
    v24 = v60;

    v16 = v24;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    v59 = v16;
    NSAppendPrintF(&v59, ", PK <%.4@>", v10, v11, v12, v13, v14, v15, publicKey);
    v26 = v59;

    v16 = v26;
  }

  if ([(NSDictionary *)self->_acl count])
  {
    v58 = v16;
    v33 = [(NSDictionary *)self->_acl count];
    NSAppendPrintF(&v58, ", ACLs %ld", v34, v35, v36, v37, v38, v39, v33);
    v40 = v58;

    v16 = v40;
  }

  altIRK = self->_altIRK;
  if (altIRK)
  {
    v57 = v16;
    NSAppendPrintF(&v57, ", IRK %{mask}", v27, v28, v29, v30, v31, v32, altIRK);
    v42 = v57;

    v16 = v42;
  }

  dateModified = self->_dateModified;
  if (dateModified)
  {
    v56 = v16;
    NSAppendPrintF(&v56, ", Date %@", v27, v28, v29, v30, v31, v32, dateModified);
    v44 = v56;

    v16 = v44;
  }

  if ([(NSDictionary *)self->_info count])
  {
    v55 = v16;
    v45 = [(NSDictionary *)self->_info count];
    NSAppendPrintF(&v55, ", Info %ld", v46, v47, v48, v49, v50, v51, v45);
    v52 = v55;

    v16 = v52;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  acl = self->_acl;
  v14 = v4;
  if (acl)
  {
    [v4 encodeObject:acl forKey:@"acl"];
    v4 = v14;
  }

  altIRK = self->_altIRK;
  if (altIRK)
  {
    [v14 encodeObject:altIRK forKey:@"altIRK"];
    v4 = v14;
  }

  dateModified = self->_dateModified;
  if (dateModified)
  {
    [v14 encodeObject:dateModified forKey:@"dateModified"];
    v4 = v14;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v14 encodeObject:identifier forKey:@"ident"];
    v4 = v14;
  }

  identifierStr = self->_identifierStr;
  if (identifierStr)
  {
    [v14 encodeObject:identifierStr forKey:@"idStr"];
    v4 = v14;
  }

  info = self->_info;
  if (info)
  {
    [v14 encodeObject:info forKey:@"info"];
    v4 = v14;
  }

  if (self->_label && !self->_name)
  {
    [v14 encodeObject:? forKey:?];
    v4 = v14;
  }

  model = self->_model;
  if (model)
  {
    [v14 encodeObject:model forKey:@"model"];
    v4 = v14;
  }

  name = self->_name;
  if (name)
  {
    [v14 encodeObject:name forKey:@"name"];
    v4 = v14;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    [v14 encodeObject:publicKey forKey:@"pk"];
    v4 = v14;
  }
}

- (CUPairedPeer)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CUPairedPeer;
  v5 = [(CUPairedPeer *)&v26 init];
  if (v5)
  {
    v6 = v4;
    v7 = objc_opt_class();
    NSDecodeStandardContainerIfPresent(v6, @"acl", v7, &v5->_acl);

    v8 = v6;
    v9 = objc_opt_class();
    NSDecodeObjectIfPresent(v8, @"altIRK", v9, &v5->_altIRK);

    v10 = v8;
    v11 = objc_opt_class();
    NSDecodeObjectIfPresent(v10, @"dateModified", v11, &v5->_dateModified);

    v12 = v10;
    v13 = objc_opt_class();
    NSDecodeObjectIfPresent(v12, @"ident", v13, &v5->_identifier);

    v14 = v12;
    v15 = objc_opt_class();
    NSDecodeObjectIfPresent(v14, @"idStr", v15, &v5->_identifierStr);

    v16 = v14;
    v17 = objc_opt_class();
    NSDecodeStandardContainerIfPresent(v16, @"info", v17, &v5->_info);

    v18 = v16;
    v19 = objc_opt_class();
    NSDecodeObjectIfPresent(v18, @"model", v19, &v5->_model);

    v20 = v18;
    v21 = objc_opt_class();
    NSDecodeObjectIfPresent(v20, @"name", v21, &v5->_name);

    v22 = v20;
    v23 = objc_opt_class();
    NSDecodeObjectIfPresent(v22, @"pk", v23, &v5->_publicKey);

    objc_storeStrong(&v5->_label, v5->_name);
    v24 = v5;
  }

  return v5;
}

@end