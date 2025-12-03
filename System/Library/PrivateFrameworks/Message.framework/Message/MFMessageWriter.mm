@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)specification;
- (id)_mimePartWithType:(id)type subtype:(id)subtype bodyData:(id)data partMap:(__CFDictionary *)map subparts:(id)subparts;
- (id)_newDataForMimePart:(id)part withPartData:(id)data andHeaders:(id)headers;
- (id)createMessageWithHTMLStringAndMIMECharset:(id)charset plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithString:(id)string headers:(id)headers;
- (id)delegate;
- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData;
- (void)setAllowsBinaryMimeParts:(BOOL)parts;
- (void)setAllowsQuotedPrintable:(BOOL)printable;
- (void)setDelegate:(id)delegate;
- (void)setMessageClassToInstantiate:(Class)instantiate;
- (void)setWriteSizeDispositionParameter:(BOOL)parameter;
@end

@implementation MFMessageWriter

void ___ef_log_MFMessageWriter_block_invoke()
{
  v0 = os_log_create("com.apple.email", "MFMessageWriter");
  v1 = _ef_log_MFMessageWriter_log;
  _ef_log_MFMessageWriter_log = v0;
}

- (MFMessageWriter)initWithCompositionSpecification:(id)specification
{
  specificationCopy = specification;
  v10.receiver = self;
  v10.super_class = MFMessageWriter;
  v5 = [(MFMessageWriter *)&v10 init];
  v6 = v5;
  if (v5)
  {
    [(MFMessageWriter *)v5 setAllowsQuotedPrintable:1];
    v6->_messageClassToInstantiate = objc_opt_class();
    v7 = [specificationCopy copy];
    compositionSpecification = v6->_compositionSpecification;
    v6->_compositionSpecification = v7;
  }

  return v6;
}

- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData
{
  key = part;
  dataCopy = data;
  partDataCopy = partData;
  type = [key type];
  v11 = [@"multipart" isEqualToString:type];

  v12 = objc_alloc_init(MEMORY[0x1E69AD698]);
  if ((v11 & 1) != 0 || CFDictionaryGetValue(partDataCopy, key) || ([key range], !v14))
  {
    _appendPartDataToConsumer(self, key, v12, partDataCopy, 1);
  }

  else
  {
    [dataCopy setLength:{objc_msgSend(dataCopy, "length") - 1}];
    _appendPartHeadersToConsumer(self, key, partDataCopy, v12);
  }

  [v12 done];
  data = [v12 data];
  [dataCopy appendData:data];
}

- (id)createMessageWithString:(id)string headers:(id)headers
{
  v13 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  headersCopy = headers;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v9 = _createPartAndDataForString(self, stringCopy, 0, @"plain", Mutable);
  v10 = _createOutgoingMessageFromTopLevelMimePart(self, v9, headersCopy, Mutable);

  CFRelease(Mutable);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers
{
  v35 = *MEMORY[0x1E69E9840];
  attachmentsCopy = attachments;
  headersCopy = headers;
  v25 = attachmentsCopy;
  cf = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  v27 = [attachmentsCopy count];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = attachmentsCopy;
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

      selfCopy = self;
      v16 = v12;
      if ([v16 isPlaceholder])
      {
        mimePart = [v16 mimePart];
        v18 = [mimePart fileWrapperForcingDownload:1];

        v19 = [v16 fileWrapperForcingDownload:0];
        contentID = [v19 contentID];
        [v18 setContentID:contentID];

        if (v18)
        {
          goto LABEL_13;
        }
      }

      v18 = [v16 fileWrapperForcingDownload:1];
      if (v18)
      {
LABEL_13:
        v14 = _createPartForFileWrapper(selfCopy, v18, cf);
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

  v22 = _createOutgoingMessageFromTopLevelMimePart(self, v8, headersCopy, cf);
LABEL_32:
  CFRelease(cf);

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)createMessageWithHTMLStringAndMIMECharset:(id)charset plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments headers:(id)headers
{
  v83 = *MEMORY[0x1E69E9840];
  charsetCopy = charset;
  alternativeCopy = alternative;
  v11 = charsetCopy;
  v66 = alternativeCopy;
  attachmentsCopy = attachments;
  headersCopy = headers;
  v68 = charsetCopy;
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  if (v11)
  {
    string = [v11 string];
    charset = [v11 charset];
    v15 = _createPartAndDataForString(self, string, charset, @"html", Mutable);
  }

  else
  {
    v15 = 0;
  }

  v67 = [attachmentsCopy count];
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  obj = attachmentsCopy;
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
        string2 = [v22 string];
        charset2 = [v22 charset];
        v25 = _createPartAndDataForString(self, string2, charset2, @"html", cf);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = _ef_log_MFMessageWriter();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
            callStackReturnAddresses = [MEMORY[0x1E696AF00] callStackReturnAddresses];
            *buf = 138412802;
            v77 = v21;
            v78 = 2112;
            v79 = callStackSymbols;
            v80 = 2112;
            v81 = callStackReturnAddresses;
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
          firstChildPart = [v18 firstChildPart];
          v42 = firstChildPart;
          if (firstChildPart)
          {
            v43 = MEMORY[0x1E696AEC0];
            type = [firstChildPart type];
            subtype = [v42 subtype];
            v46 = [v43 stringWithFormat:@"%@/%@", type, subtype];
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
    lastObject = [v52 lastObject];
    [v52 removeLastObject];
    type2 = [lastObject type];
    v55 = [type2 isEqualToString:@"multipart"];

    if (v55)
    {
      subparts = [lastObject subparts];
      [v52 addObjectsFromArray:subparts];

      goto LABEL_79;
    }

    disposition = [lastObject disposition];
    if ([disposition isEqualToString:@"attachment"])
    {
    }

    else
    {
      disposition2 = [lastObject disposition];
      v59 = [disposition2 isEqualToString:@"inline"];

      if (!v59)
      {
        goto LABEL_79;
      }
    }

    [lastObject setContentID:0];
LABEL_79:
  }

LABEL_81:
  v51 = _createOutgoingMessageFromTopLevelMimePart(self, v47, headersCopy, cf);
LABEL_82:
  if (cf)
  {
    CFRelease(cf);
  }

  v60 = v51;

  v61 = *MEMORY[0x1E69E9840];
  return v60;
}

- (id)_mimePartWithType:(id)type subtype:(id)subtype bodyData:(id)data partMap:(__CFDictionary *)map subparts:(id)subparts
{
  typeCopy = type;
  subtypeCopy = subtype;
  dataCopy = data;
  subpartsCopy = subparts;
  v15 = objc_opt_new();
  [v15 setType:typeCopy];
  [v15 setSubtype:subtypeCopy];
  [v15 setSubparts:subpartsCopy];
  if (dataCopy)
  {
    CFDictionarySetValue(map, v15, dataCopy);
  }

  return v15;
}

- (id)_newDataForMimePart:(id)part withPartData:(id)data andHeaders:(id)headers
{
  partCopy = part;
  dataCopy = data;
  headersCopy = headers;
  v11 = _makeOutgoingMessageBody(self);
  message = [v11 message];
  v13 = +[MFActivityMonitor currentMonitor];
  if (!headersCopy)
  {
    headersCopy = objc_opt_new();
  }

  [message setMutableHeaders:headersCopy];
  if (_makeMimeHeadersConsistent(self, partCopy, dataCopy) && ([v13 shouldCancel] & 1) == 0)
  {
    appendHeadersToMessageHeaders(self, partCopy, headersCopy);
    _appendPartDataToConsumer(self, partCopy, v11, dataCopy, 0);
    [v11 done];
    messageData = [message messageData];
  }

  else
  {
    messageData = 0;
  }

  [message setMessageBody:0];

  return messageData;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  objc_storeWeak(&self->_delegate, 0);
  objc_storeWeak(&self->_delegate, obj);
}

- (void)setAllowsBinaryMimeParts:(BOOL)parts
{
  if (parts)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFD | v3;
}

- (void)setAllowsQuotedPrintable:(BOOL)printable
{
  if (printable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xF7 | v3;
}

- (void)setWriteSizeDispositionParameter:(BOOL)parameter
{
  if (parameter)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(self + 16) = *(self + 16) & 0xFB | v3;
}

- (void)setMessageClassToInstantiate:(Class)instantiate
{
  if (self->_messageClassToInstantiate != instantiate)
  {
    if (![(objc_class *)instantiate isSubclassOfClass:objc_opt_class()])
    {
      [MFMessageWriter setMessageClassToInstantiate:instantiate];
    }

    self->_messageClassToInstantiate = instantiate;
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