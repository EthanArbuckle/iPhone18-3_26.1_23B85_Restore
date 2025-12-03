@interface MFMessageWriter
- (MFMessageWriter)initWithCompositionSpecification:(id)specification;
- (id)createMessageWithHtmlString:(id)string attachments:(id)attachments headers:(id)headers;
- (id)createMessageWithHtmlString:(id)string plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments charsets:(id)charsets headers:(id)headers;
- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers;
- (id)createMessageWithString:(id)string headers:(id)headers;
- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData;
- (void)dealloc;
- (void)setAllowsBinaryMimeParts:(BOOL)parts;
- (void)setAllowsQuotedPrintable:(BOOL)printable;
- (void)setMessageClassToInstantiate:(Class)instantiate;
- (void)setWriteSizeDispositionParameter:(BOOL)parameter;
@end

@implementation MFMessageWriter

- (MFMessageWriter)initWithCompositionSpecification:(id)specification
{
  v7.receiver = self;
  v7.super_class = MFMessageWriter;
  v4 = [(MFMessageWriter *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MFMessageWriter *)v4 setAllowsQuotedPrintable:1];
    v5->_messageClassToInstantiate = objc_opt_class();
    v5->_compositionSpecification = [specification copy];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageWriter;
  [(MFMessageWriter *)&v3 dealloc];
}

- (void)appendDataForMimePart:(id)part toData:(id)data withPartData:(id)partData
{
  v9 = [@"multipart" isEqualToString:{objc_msgSend(part, "type")}];
  v10 = objc_alloc_init(MEMORY[0x277D24EE8]);
  v13 = v10;
  if ((v9 & 1) != 0 || (Value = CFDictionaryGetValue(partData, part), v10 = v13, Value) || ([part range], v10 = v13, !v12))
  {
    _appendPartDataToConsumer(self, part, v10, partData, 1);
  }

  else
  {
    [data setLength:{objc_msgSend(data, "length", v13) - 1}];
    _appendPartHeadersToConsumer(self, part, partData);
  }

  [v13 done];
  [data appendData:{objc_msgSend(v13, "data")}];
}

- (id)createMessageWithString:(id)string headers:(id)headers
{
  v12 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  PartAndDataForString = _createPartAndDataForString(string, 0, @"plain", Mutable);
  OutgoingMessageFromTopLevelMimePart = _createOutgoingMessageFromTopLevelMimePart(self, PartAndDataForString, headers, Mutable);

  CFRelease(Mutable);
  v10 = *MEMORY[0x277D85DE8];
  return OutgoingMessageFromTopLevelMimePart;
}

- (id)createMessageWithPlainTextDocumentsAndAttachments:(id)attachments headers:(id)headers
{
  v26 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  v20 = [attachments count];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [attachments countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v8)
  {
    goto LABEL_27;
  }

  headersCopy = headers;
  v9 = 0;
  v10 = *v22;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(attachments);
      }

      v12 = *(*(&v21 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        PlainTextPart = _createPlainTextPart(v12, Mutable);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![v12 isPlaceholder] || (v14 = objc_msgSend(objc_msgSend(v12, "mimePart"), "fileWrapperForcingDownload:", 1), objc_msgSend(v14, "setContentID:", objc_msgSend(objc_msgSend(v12, "fileWrapperForcingDownload:", 0), "contentID")), !v14))
          {
            v14 = [v12 fileWrapperForcingDownload:1];
            if (!v14)
            {
LABEL_18:

              v9 = 0;
              continue;
            }
          }

          PlainTextPart = _createPartForFileWrapper(self, v14, Mutable);
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_18;
          }

          PlainTextPart = _createPartForMFAttachment(self, v12, 0, Mutable);
        }
      }

      v15 = PlainTextPart;
      if (!PlainTextPart)
      {
        goto LABEL_18;
      }

      if (v9)
      {
        [v9 addSubpart:PlainTextPart];
      }

      else if (v20 < 2)
      {
        v9 = PlainTextPart;
      }

      else
      {
        v9 = objc_alloc_init(MEMORY[0x277D24F68]);
        [v9 setType:@"multipart"];
        [v9 setSubtype:@"mixed"];
        [v9 addSubpart:v15];
      }
    }

    v8 = [attachments countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v8);
  if (!v9)
  {
LABEL_27:
    OutgoingMessageFromTopLevelMimePart = 0;
    goto LABEL_28;
  }

  OutgoingMessageFromTopLevelMimePart = _createOutgoingMessageFromTopLevelMimePart(self, v9, headersCopy, Mutable);

LABEL_28:
  CFRelease(Mutable);
  v17 = *MEMORY[0x277D85DE8];
  return OutgoingMessageFromTopLevelMimePart;
}

- (id)createMessageWithHtmlString:(id)string plainTextAlternative:(id)alternative otherHtmlStringsAndAttachments:(id)attachments charsets:(id)charsets headers:(id)headers
{
  v71 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  stringCopy = string;
  if (string)
  {
    if ([charsets count])
    {
      v11 = [charsets objectAtIndex:0];
    }

    else
    {
      v11 = 0;
    }

    if (v11 == [MEMORY[0x277CBEB68] null])
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    PartAndDataForString = _createPartAndDataForString(string, v13, @"html", Mutable);
  }

  else
  {
    PartAndDataForString = 0;
  }

  v54 = [attachments count];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v14 = [attachments countByEnumeratingWithState:&v60 objects:v70 count:16];
  if (!v14)
  {
    v17 = 0;
    v40 = 0;
    v41 = 1;
LABEL_73:
    v43 = PartAndDataForString;
    if (alternative)
    {
LABEL_74:
      v44 = _createPlainTextPart(alternative, Mutable);
      if (!((v44 == 0) | v17 & 1))
      {
        v45 = v44;
        if (v43)
        {
          v46 = objc_alloc_init(MEMORY[0x277D24F68]);
          [v46 setType:@"multipart"];
          [v46 setSubtype:@"alternative"];
          [v46 addSubpart:v45];
          [v46 addSubpart:v43];
          v43 = v46;
        }

        else
        {
          v43 = v44;
        }
      }
    }

    goto LABEL_78;
  }

  v15 = v14;
  alternativeCopy = alternative;
  cf = Mutable;
  v16 = 0;
  v17 = 0;
  v57 = 0;
  v18 = *v61;
  while (2)
  {
    v19 = 0;
    do
    {
      if (*v61 != v18)
      {
        objc_enumerationMutation(attachments);
      }

      if (v17)
      {
        v40 = v57;
        v41 = v57 == 0;
        v17 = 1;
        goto LABEL_69;
      }

      v20 = *(*(&v60 + 1) + 8 * v19);
      ++v16;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v16 >= [charsets count])
        {
          v21 = 0;
        }

        else
        {
          v21 = [charsets objectAtIndex:v16];
        }

        if (v21 == [MEMORY[0x277CBEB68] null])
        {
          v28 = 0;
        }

        else
        {
          v28 = v21;
        }

        PartForMFAttachment = _createPartAndDataForString(v20, v28, @"html", cf);
        goto LABEL_27;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = MFLogGeneral();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          callStackReturnAddresses = [MEMORY[0x277CCACC8] callStackReturnAddresses];
          *buf = 138412802;
          v65 = v20;
          v66 = 2112;
          v67 = callStackSymbols;
          v68 = 2112;
          v69 = callStackReturnAddresses;
          v25 = v22;
          v26 = "*** BAD!!! Used old attachments for %@\n\n%@\n\n%@";
          v27 = 32;
LABEL_57:
          _os_log_impl(&dword_258BDA000, v25, OS_LOG_TYPE_INFO, v26, buf, v27);
          goto LABEL_58;
        }

        goto LABEL_58;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v37 = MFLogGeneral();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          *buf = 138412546;
          v65 = v38;
          v66 = 2048;
          v67 = v20;
          v25 = v37;
          v26 = "*** Unexpected object <%@:%p>";
          v27 = 22;
          goto LABEL_57;
        }

LABEL_58:
        v17 = 0;
        goto LABEL_59;
      }

      if (stringCopy)
      {
        v34 = PartAndDataForString == 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = !v34;
      if (v57)
      {
        v36 = 1;
      }

      else
      {
        v36 = v35;
      }

      PartForMFAttachment = _createPartForMFAttachment(self, v20, v36, cf);
LABEL_27:
      v30 = PartForMFAttachment;
      if (v20)
      {
        v31 = PartForMFAttachment == 0;
      }

      else
      {
        v31 = 0;
      }

      v17 = v31;
      if (PartForMFAttachment)
      {
        if (PartAndDataForString)
        {
          if (stringCopy)
          {
            v32 = v57;
            if (!v57)
            {
              v32 = objc_alloc_init(MEMORY[0x277D24F68]);
              [v32 setType:@"multipart"];
              [v32 setSubtype:@"related"];
              [v32 addSubpart:PartAndDataForString];
            }

            v57 = v32;
            v33 = v32;
LABEL_53:
            [v33 addSubpart:v30];
LABEL_54:

            goto LABEL_59;
          }
        }

        else
        {
          if (v54 < 2)
          {
            PartAndDataForString = PartForMFAttachment;
            goto LABEL_54;
          }

          PartAndDataForString = objc_alloc_init(MEMORY[0x277D24F68]);
          [PartAndDataForString setType:@"multipart"];
          [PartAndDataForString setSubtype:@"mixed"];
        }

        v33 = PartAndDataForString;
        goto LABEL_53;
      }

LABEL_59:
      ++v19;
    }

    while (v15 != v19);
    v39 = [attachments countByEnumeratingWithState:&v60 objects:v70 count:16];
    v15 = v39;
    if (v39)
    {
      continue;
    }

    break;
  }

  v40 = v57;
  v41 = v57 == 0;
  if (!(v41 | v17 & 1))
  {
    firstChildPart = [v57 firstChildPart];
    Mutable = cf;
    if (firstChildPart)
    {
      [v57 setBodyParameter:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%@/%@", objc_msgSend(firstChildPart, "type"), objc_msgSend(firstChildPart, "subtype")), @"type"}];
    }

    v17 = 0;
    v41 = 0;
    v43 = v57;
    alternative = alternativeCopy;
    if (alternativeCopy)
    {
      goto LABEL_74;
    }

    goto LABEL_78;
  }

LABEL_69:
  v43 = v40;
  Mutable = cf;
  alternative = alternativeCopy;
  if (!v40)
  {
    goto LABEL_73;
  }

  if (alternativeCopy)
  {
    goto LABEL_74;
  }

LABEL_78:
  if ((v43 == 0) | v17 & 1)
  {
    OutgoingMessageFromTopLevelMimePart = 0;
    if (!Mutable)
    {
      goto LABEL_92;
    }

LABEL_91:
    CFRelease(Mutable);
  }

  else
  {
    if (v41)
    {
      v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
      [v48 addObject:v43];
      while ([v48 count])
      {
        lastObject = [v48 lastObject];
        [v48 removeLastObject];
        if ([objc_msgSend(lastObject "type")])
        {
          [v48 addObjectsFromArray:{objc_msgSend(lastObject, "subparts")}];
        }

        else if (([objc_msgSend(lastObject "disposition")] & 1) != 0 || objc_msgSend(objc_msgSend(lastObject, "disposition"), "isEqualToString:", @"inline"))
        {
          [lastObject setContentID:0];
        }
      }
    }

    OutgoingMessageFromTopLevelMimePart = _createOutgoingMessageFromTopLevelMimePart(self, v43, headers, Mutable);
    if (Mutable)
    {
      goto LABEL_91;
    }
  }

LABEL_92:

  v50 = *MEMORY[0x277D85DE8];
  return OutgoingMessageFromTopLevelMimePart;
}

- (id)createMessageWithHtmlString:(id)string attachments:(id)attachments headers:(id)headers
{
  v24 = *MEMORY[0x277D85DE8];
  Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
  PartAndDataForString = _createPartAndDataForString(string, 0, @"html", Mutable);
  if ([attachments count])
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D24F68]) init];
    [v11 setType:@"multipart"];
    [v11 setSubtype:@"mixed"];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = [attachments countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = *v20;
      do
      {
        v14 = 0;
        do
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(attachments);
          }

          PartForFileWrapper = _createPartForFileWrapper(self, *(*(&v19 + 1) + 8 * v14), Mutable);
          if (PartForFileWrapper)
          {
            [v11 addSubpart:PartForFileWrapper];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [attachments countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v11 addSubpart:PartAndDataForString];

    if (v11)
    {
LABEL_12:
      OutgoingMessageFromTopLevelMimePart = _createOutgoingMessageFromTopLevelMimePart(self, v11, headers, Mutable);

      if (!Mutable)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v11 = PartAndDataForString;
    if (PartAndDataForString)
    {
      goto LABEL_12;
    }
  }

  OutgoingMessageFromTopLevelMimePart = 0;
  if (Mutable)
  {
LABEL_16:
    CFRelease(Mutable);
  }

LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return OutgoingMessageFromTopLevelMimePart;
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

- (void)setMessageClassToInstantiate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_impl(&dword_258BDA000, v2, OS_LOG_TYPE_DEFAULT, "#Warning Must be called with a subclass of MFOutgoingMessage.  You provided %@", &v3, 0xCu);
  }

  __assert_rtn("[MFMessageWriter setMessageClassToInstantiate:]", "MessageWriter.m", 1511, "0");
}

@end