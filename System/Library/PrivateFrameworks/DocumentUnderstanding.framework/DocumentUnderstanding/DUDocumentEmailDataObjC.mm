@interface DUDocumentEmailDataObjC
- (DUDocumentEmailDataObjC)init;
- (NSArray)bccEmails;
- (NSArray)bccNames;
- (NSArray)ccEmails;
- (NSArray)ccNames;
- (NSArray)recipientEmails;
- (NSArray)recipientNames;
- (NSDictionary)headers;
- (void)setBccEmails:(id)emails;
- (void)setBccNames:(id)names;
- (void)setCcEmails:(id)emails;
- (void)setCcNames:(id)names;
- (void)setDateReceived:(id)received;
- (void)setHeaders:(id)headers;
- (void)setRecipientEmails:(id)emails;
- (void)setRecipientNames:(id)names;
- (void)setSenderDomain:(id)domain;
- (void)setSenderEmail:(id)email;
- (void)setSenderName:(id)name;
- (void)setSubject:(id)subject;
- (void)setText:(id)text;
@end

@implementation DUDocumentEmailDataObjC

- (void)setText:(id)text
{
  v9 = objc_msgSend_copy(text, a2, text, v3, v4);
  objc_msgSend_setText_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setHeaders:(id)headers
{
  v38 = *MEMORY[0x277D85DE8];
  headersCopy = headers;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = headersCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v33, v37, 16);
  if (v8)
  {
    v12 = v8;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = *(*(&v33 + 1) + 8 * i);
        v16 = objc_msgSend_objectForKeyedSubscript_(v6, v9, v15, v10, v11, v33);
        v21 = objc_msgSend_copy(v16, v17, v18, v19, v20);

        if (v21)
        {
          v26 = objc_msgSend_copy(v15, v22, v23, v24, v25);
          objc_msgSend_setObject_forKey_(v5, v27, v21, v26, v28);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v33, v37, 16);
    }

    while (v12);
  }

  objc_msgSend_setHeaders_(self->_underlyingElement, v29, v5, v30, v31);
  v32 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)headers
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_headers(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v36, v40, 16);
    if (v13)
    {
      v17 = v13;
      v18 = *v37;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v37 != v18)
          {
            objc_enumerationMutation(v11);
          }

          v20 = *(*(&v36 + 1) + 8 * i);
          v21 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v20, v15, v16, v36);
          v26 = objc_msgSend_copy(v21, v22, v23, v24, v25);

          if (v26)
          {
            v31 = objc_msgSend_copy(v20, v27, v28, v29, v30);
            objc_msgSend_setObject_forKey_(v10, v32, v26, v31, v33);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v36, v40, 16);
      }

      while (v17);
    }
  }

  else
  {
    v10 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setDateReceived:(id)received
{
  v9 = objc_msgSend_copy(received, a2, received, v3, v4);
  objc_msgSend_setDateReceived_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setBccEmails:(id)emails
{
  v29 = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = emailsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v9, v10, v11, v12, v24);
        if (v19)
        {
          objc_msgSend_addObject_(v5, v16, v19, v17, v18);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v13);
  }

  objc_msgSend_setBccEmails_(self->_underlyingElement, v20, v5, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)bccEmails
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bccEmails(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v24 = objc_msgSend_copy(*(*(&v27 + 1) + 8 * i), v14, v15, v16, v17, v27);
          if (v24)
          {
            objc_msgSend_addObject_(v10, v21, v24, v22, v23);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
      }

      while (v18);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setBccNames:(id)names
{
  v29 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = namesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v9, v10, v11, v12, v24);
        if (v19)
        {
          objc_msgSend_addObject_(v5, v16, v19, v17, v18);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v13);
  }

  objc_msgSend_setBccNames_(self->_underlyingElement, v20, v5, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)bccNames
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_bccNames(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v24 = objc_msgSend_copy(*(*(&v27 + 1) + 8 * i), v14, v15, v16, v17, v27);
          if (v24)
          {
            objc_msgSend_addObject_(v10, v21, v24, v22, v23);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
      }

      while (v18);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setCcEmails:(id)emails
{
  v29 = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = emailsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v9, v10, v11, v12, v24);
        if (v19)
        {
          objc_msgSend_addObject_(v5, v16, v19, v17, v18);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v13);
  }

  objc_msgSend_setCcEmails_(self->_underlyingElement, v20, v5, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)ccEmails
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_ccEmails(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v24 = objc_msgSend_copy(*(*(&v27 + 1) + 8 * i), v14, v15, v16, v17, v27);
          if (v24)
          {
            objc_msgSend_addObject_(v10, v21, v24, v22, v23);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
      }

      while (v18);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setCcNames:(id)names
{
  v29 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = namesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v9, v10, v11, v12, v24);
        if (v19)
        {
          objc_msgSend_addObject_(v5, v16, v19, v17, v18);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v13);
  }

  objc_msgSend_setCcNames_(self->_underlyingElement, v20, v5, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)ccNames
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_ccNames(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v24 = objc_msgSend_copy(*(*(&v27 + 1) + 8 * i), v14, v15, v16, v17, v27);
          if (v24)
          {
            objc_msgSend_addObject_(v10, v21, v24, v22, v23);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
      }

      while (v18);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setRecipientEmails:(id)emails
{
  v29 = *MEMORY[0x277D85DE8];
  emailsCopy = emails;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = emailsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v9, v10, v11, v12, v24);
        if (v19)
        {
          objc_msgSend_addObject_(v5, v16, v19, v17, v18);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v13);
  }

  objc_msgSend_setRecipientEmails_(self->_underlyingElement, v20, v5, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)recipientEmails
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_recipientEmails(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v24 = objc_msgSend_copy(*(*(&v27 + 1) + 8 * i), v14, v15, v16, v17, v27);
          if (v24)
          {
            objc_msgSend_addObject_(v10, v21, v24, v22, v23);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
      }

      while (v18);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setRecipientNames:(id)names
{
  v29 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = namesCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v13 = v8;
    v14 = *v25;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v19 = objc_msgSend_copy(*(*(&v24 + 1) + 8 * v15), v9, v10, v11, v12, v24);
        if (v19)
        {
          objc_msgSend_addObject_(v5, v16, v19, v17, v18);
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v13);
  }

  objc_msgSend_setRecipientNames_(self->_underlyingElement, v20, v5, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (NSArray)recipientNames
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_recipientNames(self->_underlyingElement, a2, v2, v3, v4);
  if (objc_msgSend_count(v5, v6, v7, v8, v9))
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v5;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v27, v31, 16);
    if (v13)
    {
      v18 = v13;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v11);
          }

          v24 = objc_msgSend_copy(*(*(&v27 + 1) + 8 * i), v14, v15, v16, v17, v27);
          if (v24)
          {
            objc_msgSend_addObject_(v10, v21, v24, v22, v23);
          }
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v27, v31, 16);
      }

      while (v18);
    }
  }

  else
  {
    v10 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)setSenderDomain:(id)domain
{
  v9 = objc_msgSend_copy(domain, a2, domain, v3, v4);
  objc_msgSend_setSenderDomain_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setSenderEmail:(id)email
{
  v9 = objc_msgSend_copy(email, a2, email, v3, v4);
  objc_msgSend_setSenderEmail_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setSenderName:(id)name
{
  v9 = objc_msgSend_copy(name, a2, name, v3, v4);
  objc_msgSend_setSenderName_(self->_underlyingElement, v6, v9, v7, v8);
}

- (void)setSubject:(id)subject
{
  v9 = objc_msgSend_copy(subject, a2, subject, v3, v4);
  objc_msgSend_setSubject_(self->_underlyingElement, v6, v9, v7, v8);
}

- (DUDocumentEmailDataObjC)init
{
  v7.receiver = self;
  v7.super_class = DUDocumentEmailDataObjC;
  v2 = [(DUDocumentEmailDataObjC *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(_TtC21DocumentUnderstanding19DUDocumentEmailData);
    underlyingElement = v2->_underlyingElement;
    v2->_underlyingElement = v3;

    v5 = v2;
  }

  return v2;
}

@end