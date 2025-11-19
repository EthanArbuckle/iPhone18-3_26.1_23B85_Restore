@interface CKMergeableValueIDProxy
- (id)identifier;
- (id)mergeableValueID;
- (id)zoneName;
- (id)zoneOwnerName;
- (unint64_t)identifierSize;
- (unint64_t)size;
- (unint64_t)zoneNameSize;
- (unint64_t)zoneOwnerNameSize;
- (void)copyIdentifierBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5;
- (void)copyZoneNameBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5;
- (void)copyZoneOwnerNameBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5;
@end

@implementation CKMergeableValueIDProxy

- (unint64_t)size
{
  v8 = objc_msgSend_identifierSize(self, a2, v2, v3, v4, v5, v6);
  v15 = objc_msgSend_zoneNameSize(self, v9, v10, v11, v12, v13, v14) + v8;
  return v15 + objc_msgSend_zoneOwnerNameSize(self, v16, v17, v18, v19, v20, v21);
}

- (unint64_t)identifierSize
{
  v6 = 0;
  v5 = 0;
  objc_msgSend_copyIdentifierBytes_length_isNull_(self, a2, 0, &v5, &v6, v2, v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5 + 8;
  }
}

- (id)identifier
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v15 = v8;
  if (v8)
  {
    v16 = objc_msgSend_binding(v8, v9, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_dataForToken_(self, v17, v16[21], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copyIdentifierBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5
{
  v11 = objc_msgSend_backingStore(self, a2, a3, a4, a5, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, a3, a4, a5, v18[21], v20);

    v11 = v21;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 1;
    }
  }
}

- (unint64_t)zoneNameSize
{
  v6 = 0;
  v5 = 0;
  objc_msgSend_copyZoneNameBytes_length_isNull_(self, a2, 0, &v5, &v6, v2, v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5 + 8;
  }
}

- (id)zoneName
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v15 = v8;
  if (v8)
  {
    v16 = objc_msgSend_binding(v8, v9, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_stringForToken_(self, v17, v16[22], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copyZoneNameBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5
{
  v11 = objc_msgSend_backingStore(self, a2, a3, a4, a5, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, a3, a4, a5, v18[22], v20);

    v11 = v21;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 1;
    }
  }
}

- (unint64_t)zoneOwnerNameSize
{
  v6 = 0;
  v5 = 0;
  objc_msgSend_copyZoneOwnerNameBytes_length_isNull_(self, a2, 0, &v5, &v6, v2, v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5 + 8;
  }
}

- (id)zoneOwnerName
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v15 = v8;
  if (v8)
  {
    v16 = objc_msgSend_binding(v8, v9, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_stringForToken_(self, v17, v16[23], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copyZoneOwnerNameBytes:(void *)a3 length:(unint64_t *)a4 isNull:(BOOL *)a5
{
  v11 = objc_msgSend_backingStore(self, a2, a3, a4, a5, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, a3, a4, a5, v18[23], v20);

    v11 = v21;
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      *a5 = 1;
    }
  }
}

- (id)mergeableValueID
{
  v3 = objc_alloc(MEMORY[0x277CBC478]);
  v10 = objc_msgSend_identifier(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_zoneName(self, v11, v12, v13, v14, v15, v16);
  v24 = objc_msgSend_zoneOwnerName(self, v18, v19, v20, v21, v22, v23);
  v28 = objc_msgSend_initWithData_zoneName_zoneOwner_(v3, v25, v10, v17, v24, v26, v27);

  return v28;
}

@end