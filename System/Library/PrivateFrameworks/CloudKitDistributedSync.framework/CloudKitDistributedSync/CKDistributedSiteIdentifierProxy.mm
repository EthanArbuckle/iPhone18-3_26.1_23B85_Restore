@interface CKDistributedSiteIdentifierProxy
- (id)identifier;
- (id)modifier;
- (id)siteIdentifier;
- (unint64_t)identifierSize;
- (unint64_t)modifierSize;
- (void)copyIdentifierBytes:(void *)bytes length:(unint64_t *)length isNull:(BOOL *)null;
- (void)copyModifierBytes:(void *)bytes length:(unint64_t *)length isNull:(BOOL *)null;
@end

@implementation CKDistributedSiteIdentifierProxy

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
    v22 = objc_msgSend_dataForToken_(self, v17, v16[2], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copyIdentifierBytes:(void *)bytes length:(unint64_t *)length isNull:(BOOL *)null
{
  v11 = objc_msgSend_backingStore(self, a2, bytes, length, null, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, bytes, length, null, v18[2], v20);

    v11 = v21;
  }

  else
  {
    if (length)
    {
      *length = 0;
    }

    if (null)
    {
      *null = 1;
    }
  }
}

- (unint64_t)modifierSize
{
  v6 = 0;
  v5 = 0;
  objc_msgSend_copyModifierBytes_length_isNull_(self, a2, 0, &v5, &v6, v2, v3);
  if (v6)
  {
    return 0;
  }

  else
  {
    return v5 + 8;
  }
}

- (id)modifier
{
  v8 = objc_msgSend_backingStore(self, a2, v2, v3, v4, v5, v6);
  v15 = v8;
  if (v8)
  {
    v16 = objc_msgSend_binding(v8, v9, v10, v11, v12, v13, v14);
    v22 = objc_msgSend_dataForToken_(self, v17, v16[3], v18, v19, v20, v21);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (void)copyModifierBytes:(void *)bytes length:(unint64_t *)length isNull:(BOOL *)null
{
  v11 = objc_msgSend_backingStore(self, a2, bytes, length, null, v5, v6);
  if (v11)
  {
    v21 = v11;
    v18 = objc_msgSend_binding(v11, v12, v13, v14, v15, v16, v17);
    objc_msgSend_copyBytes_length_isNull_forToken_(self, v19, bytes, length, null, v18[3], v20);

    v11 = v21;
  }

  else
  {
    if (length)
    {
      *length = 0;
    }

    if (null)
    {
      *null = 1;
    }
  }
}

- (id)siteIdentifier
{
  v3 = objc_alloc(MEMORY[0x277CBC2C8]);
  v10 = objc_msgSend_identifier(self, v4, v5, v6, v7, v8, v9);
  v17 = objc_msgSend_modifier(self, v11, v12, v13, v14, v15, v16);
  v22 = objc_msgSend_initWithIdentifier_modifier_(v3, v18, v10, v17, v19, v20, v21);

  return v22;
}

@end