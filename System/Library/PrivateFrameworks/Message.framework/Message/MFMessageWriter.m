@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)a3;
- (id)_mimePartWithType:(id)a3 subtype:(id)a4 bodyData:(id)a5 partMap:(__CFDictionary *)a6 subparts:(id)a7;
- (id)_newDataForMimePart:(id)a3 withPartData:(id)a4 andHeaders:(id)a5;
- (id)createMessageWithHTMLStringAndMIMECharset:(id)a3 plainTextAlternative:(id)a4 otherHtmlStringsAndAttachments:(id)a5 headers:(id)a6;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)a3 headers:(id)a4;
- (id)createMessageWithString:(id)a3 headers:(id)a4;
- (id)delegate;
- (void)appendDataForMimePart:(id)a3 toData:(id)a4 withPartData:(id)a5;
- (void)setAllowsBinaryMimeParts:(BOOL)a3;
- (void)setAllowsQuotedPrintable:(BOOL)a3;
- (void)setDelegate:(id)a3;
- (void)setMessageClassToInstantiate:(Class)a3;
- (void)setWriteSizeDispositionParameter:(BOOL)a3;
@end

@implementation MFMessageWriter

void ___ef_log_MFMessageWriter_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFMessageWriter");
  v1 = _ef_log_MFMessageWriter_log;
  _ef_log_MFMessageWriter_log = v0;
}

- (MFMessageWriter)initWithCompositionSpecification:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MFMessageWriter;
  v5 = [(MFMessageWriter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFMessageWriter *)v5 setAllowsQuotedPrintable:1];
    v6->_messageClassToInstantiate = objc_opt_class();
    v7 = [v4 copy];
    compositionSpecification = v6->_compositionSpecification;
    v6->_compositionSpecification = v7;
  }

  return v6;
}

- (void)appendDataForMimePart:(id)a3 toData:(id)a4 withPartData:(id)a5
{
  key = a3;
  v8 = a4;
  v9 = a5;
  v10 = [key type];
  v11 = [@"multipart" isEqualToString:v10];

  v12 = objc_alloc_init(MEMORY[0x1E69AD698]);
  if ((v11 & 1) != 0 || CFDictionaryGetValue(v9, key) || ([key range], !v14))
  {
    _appendPartDataToConsumer(self, key, v12, v9, 1);
  }

  else
  {
    [v8 setLength:{objc_msgSend(v8, "length") - 1}];
    _appendPartHeadersToConsumer(self, key, v9, v12);
  }

  [v12 done];
  v13 = [v12 data];
  [v8 appendData:v13];
}

- (id)createMessageWithString:(id)a3 headers:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v9 = _createPartAndDataForString(self, v6, 0, @"plain", Mutable);
  v10 = _createOutgoingMessageFromTopLevelMimePart(self, v9, v7, Mutable);

  CFRelease(Mutable);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)a3 headers:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v26 = a4;
  v25 = v6;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v27 = [v6 count];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v7)
  {

    v8 = 0;
    goto LABEL_31;
  }

  v8 = 0;
  v9 = *v31;
  do
  {
    v10 = 0;
    v11 = v8;
    do
    {
      if (*v31 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v30 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = _createPlainTextPart(self, v12, cf);
LABEL_8:
        v14 = v13;
        goto LABEL_18;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_21;
        }

        v13 = _createPartForMFAttachment(self, v12, 0, cf);
        goto LABEL_8;
      }

      v15 = self;
      v16 = v12;
      if ([v16 isPlaceholder])
      {
        v17 = [v16 mimePart];
        v18 = [v17 fileWrapperForcingDownload:1];

        v19 = [v16 fileWrapperForcingDownload:0];
        v20 = [v19 contentID];
        [v18 setContentID:v20];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      v18 = [v16 fileWrapperForcingDownload:1];
      if (v18)
      {
LABEL_13:
        v14 = _createPartForFileWrapper(v15, v18, cf);
      }

      else
      {
        v14 = 0;
      }

LABEL_18:
      if (!v14)
      {
LABEL_21:

        v14 = 0;
        v8 = 0;
        goto LABEL_22;
      }

      if (v11)
      {
        [v11 addSubpart:v14];
        v8 = v11;
      }

      else if (v27 < 2)
      {
        v14 = v14;
        v8 = v14;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x1E69AD720]);
        [v8 setType:@"multipart"];
        [v8 setSubtype:@"mixed"];
        [v8 addSubpart:v14];
      }

LABEL_22:

      ++v10;
      v11 = v8;
    }

    while (v7 != v10);
    v21 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    v7 = v21;
  }

  while (v21);

  if (!v8)
  {
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  v22 = _createOutgoingMessageFromTopLevelMimePart(self, v8, v26, cf);
LABEL_32:
  CFRelease(cf);

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)createMessageWithHTMLStringAndMIMECharset:(id)a3 plainTextAlternative:(id)a4 otherHtmlStringsAndAttachments:(id)a5 headers:(id)a6
{
  v83 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = v9;
  v66 = v10;
  v64 = a5;
  v65 = a6;
  v68 = v9;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  if (v11)
  {
    v13 = [v11 string];
    v14 = [v11 charset];
    v15 = _createPartAndDataForString(self, v13, v14, @"html", Mutable);
  }

  else
  {
    v15 = 0;
  }

  v67 = [v64 count];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = v64;
  v16 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
  cf = Mutable;
  v63 = v16 != 0;
  if (v16)
  {
    v17 = 0;
    v18 = 0;
    v19 = *v73;
LABEL_6:
    v20 = 0;
    while (1)
    {
      if (*v73 != v19)
      {
        objc_enumerationMutation(obj);
      }

      if (v17)
      {
        goto LABEL_58;
      }

      v21 = *(*(&v72 + 1) + 8 * v20);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
        v23 = [v22 string];
        v24 = [v22 charset];
        v25 = _createPartAndDataForString(self, v23, v24, @"html", cf);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = _ef_log_MFMessageWriter();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [MEMORY[0x1E696AF00] callStackSymbols];
            v28 = [MEMORY[0x1E696AF00] callStackReturnAddresses];
            *buf = 138412802;
            v77 = v21;
            v78 = 2112;
            v79 = v27;
            v80 = 2112;
            v81 = v28;
            _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "*** BAD!!! Used old attachments for %@\n\n%@\n\n%@", buf, 0x20u);
          }

LABEL_15:

          v17 = 0;
          goto LABEL_39;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v21;
          if (v68)
          {
            v30 = v15 == 0;
          }

          else
          {
            v30 = 1;
          }

          v31 = !v30;
          if (v18)
          {
            v32 = 1;
          }

          else
          {
            v32 = v31;
          }

          v33 = _createPartForMFAttachment(self, v29, v32, cf);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v26 = _ef_log_MFMessageWriter();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v36 = objc_opt_class();
              *buf = 138412546;
              v77 = v36;
              v78 = 2048;
              v79 = v21;
              v37 = v36;
              _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_DEFAULT, "*** Unexpected object <%@:%p>", buf, 0x16u);
            }

            goto LABEL_15;
          }

          v33 = _createPartForFileWrapper(self, v21, cf);
        }

        v25 = v33;
      }

      if (v25)
      {
        v17 = 0;
      }

      else
      {
        v17 = v21 != 0;
      }

      if (v25)
      {
        if (v15)
        {
          if (v68)
          {
            if (!v18)
            {
              v34 = objc_alloc_init(MEMORY[0x1E69AD720]);
              [v34 setType:@"multipart"];
              [v34 setSubtype:@"related"];
              v18 = v34;
              [v34 addSubpart:v15];
            }

            [v18 addSubpart:v25];
          }

          else
          {
            [v15 addSubpart:v25];
          }
        }

        else if (v67 < 2)
        {
          v25 = v25;
          v15 = v25;
        }

        else
        {
          v35 = objc_alloc_init(MEMORY[0x1E69AD720]);
          [v35 setType:@"multipart"];
          [v35 setSubtype:@"mixed"];
          v15 = v35;
          [v35 addSubpart:v25];
        }

        goto LABEL_40;
      }

LABEL_39:
      v25 = 0;
LABEL_40:

      if (v16 == ++v20)
      {
        v38 = [obj countByEnumeratingWithState:&v72 objects:v82 count:16];
        v16 = v38;
        if (v38)
        {
          goto LABEL_6;
        }

        v39 = v18 == 0;
        if (v18)
        {
          v40 = v18;
        }

        else
        {
          v40 = v15;
        }

        if (v18 != 0 && !v17)
        {
          v41 = [v18 firstChildPart];
          v42 = v41;
          if (v41)
          {
            v43 = MEMORY[0x1E696AEC0];
            v44 = [v41 type];
            v45 = [v42 subtype];
            v46 = [v43 stringWithFormat:@"%@/%@", v44, v45];
            [v18 setBodyParameter:v46 forKey:@"type"];
          }

          v39 = 0;
          v17 = 0;
          v40 = v18;
        }

        goto LABEL_62;
      }
    }
  }

  v18 = 0;
LABEL_58:

  v39 = v18 == 0;
  if (v18)
  {
    v40 = v18;
  }

  else
  {
    v40 = v15;
  }

  v17 = v63;
LABEL_62:
  v47 = v40;
  if (v66)
  {
    v48 = _createPlainTextPart(self, v66, cf);
    v49 = v48;
    if (v48 != 0 && !v17)
    {
      if (v47)
      {
        v50 = objc_alloc_init(MEMORY[0x1E69AD720]);
        [v50 setType:@"multipart"];
        [v50 setSubtype:@"alternative"];
        [v50 addSubpart:v49];
        [v50 addSubpart:v47];

        v47 = v50;
      }

      else
      {
        v47 = v48;
        v49 = v47;
      }
    }
  }

  else
  {
    v49 = 0;
  }

  if (v47 == 0 || v17)
  {
    v51 = 0;
    goto LABEL_82;
  }

  if (!v39)
  {
    goto LABEL_81;
  }

  v52 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v52 addObject:v47];
  while ([v52 count])
  {
    v53 = [v52 lastObject];
    [v52 removeLastObject];
    v54 = [v53 type];
    v55 = [v54 isEqualToString:@"multipart"];

    if (v55)
    {
      v56 = [v53 subparts];
      [v52 addObjectsFromArray:v56];

      goto LABEL_79;
    }

    v57 = [v53 disposition];
    if ([v57 isEqualToString:@"attachment"])
    {
    }

    else
    {
      v58 = [v53 disposition];
      v59 = [v58 isEqualToString:@"inline"];

      if (!v59)
      {
        goto LABEL_79;
      }
    }

    [v53 setContentID:0];
LABEL_79:
  }

LABEL_81:
  v51 = _createOutgoingMessageFromTopLevelMimePart(self, v47, v65, cf);
LABEL_82:
  if (cf)
  {
    CFRelease(cf);
  }

  v60 = v51;

  v61 = *MEMORY[0x1E69E9840];
  return v60;
}

- (id)_mimePartWithType:(id)a3 subtype:(id)a4 bodyData:(id)a5 partMap:(__CFDictionary *)a6 subparts:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = objc_opt_new();
  [v15 setType:v11];
  [v15 setSubtype:v12];
  [v15 setSubparts:v14];
  if (v13)
  {
    CFDictionarySetValue(a6, v15, v13);
  }

  return v15;
}

- (id)_newDataForMimePart:(id)a3 withPartData:(id)a4 andHeaders:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _makeOutgoingMessageBody(self);
  v12 = [v11 message];
  v13 = +[MFActivityMonitor currentMonitor];
  if (!v10)
  {
    v10 = objc_opt_new();
  }

  [v12 setMutableHeaders:v10];
  if (_makeMimeHeadersConsistent(self, v8, v9) && ([v13 shouldCancel] & 1) == 0)
  {
    appendHeadersToMessageHeaders(self, v8, v10);
    _appendPartDataToConsumer(self, v8, v11, v9, 0);
    [v11 done];
    v14 = [v12 messageData];
  }

  else
  {
    v14 = 0;
  }

  [v12 setMessageBody:0];

  return v14;
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_delegate, obj);
}

- (void)setAllowsBinaryMimeParts:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setAllowsQuotedPrintable:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setWriteSizeDispositionParameter:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setMessageClassToInstantiate:(Class)a3
{
  if (self->_messageClassToInstantiate != a3)
  {
    if (![(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
    {
      [MFMessageWriter setMessageClassToInstantiate:a3];
    }

    self->_messageClassToInstantiate = a3;
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setMessageClassToInstantiate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = _ef_log_MFMessageWriter();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Must be called with a subclass of MFOutgoingMessage.  You provided %@", &v3, 0xCu);
  }

  __assert_rtn("[MFMessageWriter setMessageClassToInstantiate:]", "MessageWriter.m", 1454, "0");
}

@end