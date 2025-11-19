@interface MFMimePart
+ (BOOL)isRecognizedClassForContent:(id)a3;
+ (BOOL)parseContentTypeHeader:(id)a3 type:(id *)a4 subtype:(id *)a5 info:(id *)a6;
+ (OS_os_log)log;
+ (void)initialize;
- (BOOL)_hasCompleteBodyDataToOffset:(unint64_t)a3;
- (BOOL)hasContentType:(id)a3 subtype:(id)a4;
- (BOOL)hasContents;
- (BOOL)hasSecureSubparts;
- (BOOL)hasValidMultipartSignedContentType;
- (BOOL)isAttachment;
- (BOOL)isGenerated;
- (BOOL)isHTML;
- (BOOL)isMultipartSigned;
- (BOOL)isReadableText;
- (BOOL)isRich;
- (BOOL)isSecurePart;
- (BOOL)parseIMAPPropertyList:(id)a3;
- (BOOL)parseMimeBodyFromHeaderData:(id)a3 bodyData:(id)a4 isPartial:(BOOL)a5;
- (BOOL)shouldConsiderInlineOverridingExchangeServer;
- (BOOL)usesKnownSignatureProtocol;
- (MFMimePart)init;
- (NSString)description;
- (NSString)subtype;
- (NSString)type;
- (SEL)_selectorForCString:(char *)a3;
- (_NSRange)range;
- (id)_fullMimeTypeEvenInsideAppleDouble;
- (id)_objectInOtherIvarsForKey:(id)a3;
- (id)_partThatIsAttachment;
- (id)alternativeAtIndex:(int64_t)a3;
- (id)attachmentFilename;
- (id)attachmentURLs;
- (id)attachments;
- (id)bodyData;
- (id)bodyDataToOffset:(unint64_t)a3 resultOffset:(unint64_t *)a4;
- (id)bodyParameterForKey:(id)a3;
- (id)childPartWithNumber:(id)a3;
- (id)chosenAlternativePart;
- (id)contentsForTextSystem;
- (id)decodeMultipart;
- (id)decodeMultipartAlternative;
- (id)decodeMultipartRelated;
- (id)decodeText;
- (id)decodedDataForData:(id)a3;
- (id)decryptedMessageBodyIsEncrypted:(BOOL *)a3 isSigned:(BOOL *)a4;
- (id)dispositionParameterForKey:(id)a3;
- (id)dispositionParameterKeys;
- (id)fileWrapperForDecodedObject:(id)a3 withFileData:(id *)a4;
- (id)firstChildPart;
- (id)mimeBody;
- (id)nextSiblingPart;
- (id)parentPart;
- (id)partNumber;
- (id)partURL;
- (id)signedData;
- (id)startPart;
- (id)subpartAtIndex:(int64_t)a3;
- (id)subparts;
- (id)textHtmlPart;
- (int64_t)numberOfAlternatives;
- (unint64_t)totalTextSize;
- (unsigned)numberOfAttachments;
- (unsigned)textEncoding;
- (void)_clearNextAndSibling;
- (void)_fixupDispositionParametersRFC2231Values;
- (void)_setDecryptedMessageInDictionary:(id)a3;
- (void)_setObjectInOtherIvars:(id)a3 forKey:(id)a4;
- (void)addSubpart:(id)a3;
- (void)clearCachedDescryptedMessageBody;
- (void)configureFileWrapper:(id)a3;
- (void)dealloc;
- (void)decodeIfNecessary;
- (void)getNumberOfAttachments:(unsigned int *)a3 isSigned:(BOOL *)a4 isEncrypted:(BOOL *)a5;
- (void)setBodyParameter:(id)a3 forKey:(id)a4;
- (void)setDisposition:(id)a3;
- (void)setDispositionParameter:(id)a3 forKey:(id)a4;
- (void)setIsGenerated:(BOOL)a3;
- (void)setMimeBody:(id)a3;
- (void)setRange:(_NSRange)a3;
- (void)setSubparts:(id)a3;
@end

@implementation MFMimePart

+ (void)initialize
{
  v29 = *MEMORY[0x1E69E9840];
  if (!sFore)
  {
    sFore = [[MFLock alloc] initWithName:@"fore" andDelegate:a1];
  }

  if (!sStringsCache)
  {
    v6.hash = _UniquingHash;
    v6.isEqual = _UniquingIsEqual;
    *&v6.retain = *(MEMORY[0x1E696A770] + 16);
    v6.describe = _UniquingDescribe;
    sStringsCache = NSCreateHashTable(&v6, 0x19uLL);
    v3 = @"multipart";
    v6.hash = @"multipart";
    v6.isEqual = @"message";
    v6.retain = @"text";
    v6.release = @"application";
    v6.describe = @"image";
    v7 = @"audio";
    v8 = @"video";
    v9 = @"alternative";
    v10 = @"mixed";
    v11 = @"related";
    v12 = @"x-folder";
    v13 = @"appledouble";
    v14 = @"digest";
    v15 = @"signed";
    v16 = @"plain";
    v17 = @"enriched";
    v18 = @"html";
    v19 = @"css";
    v20 = @"rfc822";
    v21 = @"applefile";
    v22 = @"filename";
    v23 = @"name";
    v24 = @"x-mac-type";
    v25 = @"x-mac-creator";
    v26 = @"format";
    v27 = @"flowed";
    v4 = 1;
    v28 = 0;
    do
    {
      NSHashInsert(sStringsCache, v3);
      v3 = *(&v6.hash + v4++);
    }

    while (v3);
  }

  if (!sNSXMLLock)
  {
    sNSXMLLock = [[MFLock alloc] initWithName:@"NSXMLLock" andDelegate:a1];
  }

  v5 = *MEMORY[0x1E69E9840];
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __17__MFMimePart_log__block_invoke;
  block[3] = &unk_1E8455220;
  block[4] = a1;
  if (log_onceToken_0 != -1)
  {
    dispatch_once(&log_onceToken_0, block);
  }

  return log_log_0;
}

os_log_t __17__MFMimePart_log__block_invoke(uint64_t a1)
{
  v1 = [NSStringFromClass(*(a1 + 32)) UTF8String];
  result = os_log_create("com.apple.email", v1);
  log_log_0 = result;
  return result;
}

- (id)_objectInOtherIvarsForKey:(id)a3
{
  os_unfair_lock_lock(&self->_otherIvarsLock);
  v5 = [(NSMutableDictionary *)self->_otherIvars objectForKeyedSubscript:a3];
  os_unfair_lock_unlock(&self->_otherIvarsLock);
  return v5;
}

- (void)_setObjectInOtherIvars:(id)a3 forKey:(id)a4
{
  os_unfair_lock_lock(&self->_otherIvarsLock);
  otherIvars = self->_otherIvars;
  if (a3)
  {
    if (!otherIvars)
    {
      otherIvars = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
      self->_otherIvars = otherIvars;
    }

    [(NSMutableDictionary *)otherIvars setObject:a3 forKey:a4];
  }

  else if (otherIvars)
  {
    [(NSMutableDictionary *)otherIvars removeObjectForKey:a4];
  }

  os_unfair_lock_unlock(&self->_otherIvarsLock);
}

- (void)dealloc
{
  v3 = objc_opt_new();
  v4 = self;
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [(MFMimePart *)v5 firstChildPart];
      if (v6)
      {
        [v3 addObject:v6];
      }

      v7 = [(MFMimePart *)v5 nextSiblingPart];
      [(MFMimePart *)v5 _clearNextAndSibling];

      if (!v7)
      {
        if (![v3 count])
        {
          break;
        }

        v7 = [v3 objectAtIndexedSubscript:0];
        [v3 removeObjectAtIndex:0];
      }

      v5 = v7;
    }

    while (v7);
  }

  v8 = [(NSMutableDictionary *)self->_otherIvars objectForKey:@"x-decrypted-message-body"];
  v9 = [(NSMutableDictionary *)self->_otherIvars objectForKey:@"x-wrapped-subject"];
  v10 = [(NSMutableDictionary *)self->_otherIvars objectForKey:@"x-decrypted-message"];
  v11 = [(NSMutableDictionary *)self->_otherIvars objectForKey:@"x-decrypted-message-store"];

  v12.receiver = self;
  v12.super_class = MFMimePart;
  [(MFMimePart *)&v12 dealloc];
}

- (void)_clearNextAndSibling
{
  [-[MFMimePart _objectInOtherIvarsForKey:](self _objectInOtherIvarsForKey:{@"x-nextsibling", "_clearParent"}];
  [(MFMimePart *)self _setObjectInOtherIvars:0 forKey:@"x-nextsibling"];
  [(MFMimePart *)self->_nextPart _clearParent];

  self->_nextPart = 0;
}

- (MFMimePart)init
{
  v3.receiver = self;
  v3.super_class = MFMimePart;
  result = [(MFMimePart *)&v3 init];
  if (result)
  {
    result->_range = xmmword_1D36EFEE0;
    *&result->_ivarLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (NSString)type
{
  if (self->_type)
  {
    return self->_type;
  }

  else
  {
    return @"text";
  }
}

- (NSString)subtype
{
  result = self->_subtype;
  if (!result)
  {
    v4 = [(MFMimePart *)self type];
    if ([(NSString *)v4 isEqualToString:@"text"])
    {
      return @"plain";
    }

    else if ([(NSString *)v4 isEqualToString:@"multipart"])
    {
      return @"mixed";
    }

    else if ([(NSString *)v4 isEqualToString:@"message"])
    {
      return @"rfc822";
    }

    else if ([(NSString *)v4 isEqualToString:@"application"])
    {
      return @"octet-stream";
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (BOOL)hasContentType:(id)a3 subtype:(id)a4
{
  v6 = [(NSString *)[(MFMimePart *)self type] isEqualToString:a3];
  if (v6)
  {
    if (a4)
    {
      v7 = [(MFMimePart *)self subtype];

      LOBYTE(v6) = [(NSString *)v7 isEqualToString:a4];
    }

    else
    {
      LOBYTE(v6) = 1;
    }
  }

  return v6;
}

- (id)bodyParameterForKey:(id)a3
{
  bodyParameters = self->_bodyParameters;
  v4 = [a3 lowercaseString];

  return [(NSMutableDictionary *)bodyParameters objectForKey:v4];
}

- (void)setBodyParameter:(id)a3 forKey:(id)a4
{
  v6 = _UniqueString(a4);
  if (([(__CFString *)v6 isEqualToString:@"charset"]& 1) != 0 || [(__CFString *)v6 isEqualToString:@"format"])
  {
    a3 = _UniqueString(a3);
  }

  v7 = _UniqueString(v6);

  _MFSetValueInDictionary(self, &self->_bodyParameters, v7, a3);
}

- (void)setDisposition:(id)a3
{
  v4 = _UniqueString(a3);
  v5 = *MEMORY[0x1E699B0A8];

  [(MFMimePart *)self _setObjectInOtherIvars:v4 forKey:v5];
}

- (id)dispositionParameterForKey:(id)a3
{
  v5 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-disposition-parameters"];
  if (![a3 isEqualToString:@"filename"] || !-[NSString isEqualToString:](-[MFMimePart type](self, "type"), "isEqualToString:", @"message") || (result = -[MFMimePart contentDescription](self, "contentDescription")) == 0)
  {
    v7 = [a3 lowercaseString];

    return [v5 objectForKey:v7];
  }

  return result;
}

- (void)setDispositionParameter:(id)a3 forKey:(id)a4
{
  v7 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-disposition-parameters"];
  v10 = v7;
  v8 = _UniqueString(a4);
  v9 = _MFSetValueInDictionary(self, &v10, v8, a3);
  if (v10)
  {
    v9 = [(MFMimePart *)self _setObjectInOtherIvars:v10 forKey:@"x-disposition-parameters"];
  }

  if (!v7)
  {

    MEMORY[0x1EEE66BB8](v9);
  }
}

- (id)dispositionParameterKeys
{
  v2 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-disposition-parameters"];

  return [v2 allKeys];
}

- (id)parentPart
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = [(MFWeakReferenceHolder *)self->_parent retainedReference];
  os_unfair_lock_unlock(&self->_ivarLock);
  return v3;
}

- (id)firstChildPart
{
  if ([(NSString *)self->_type isEqualToString:@"multipart"]|| [(NSString *)self->_type isEqualToString:@"message"]&& [(NSString *)self->_subtype isEqualToString:@"rfc822"])
  {
    return self->_nextPart;
  }

  else
  {
    return 0;
  }
}

- (id)nextSiblingPart
{
  if (![(NSString *)self->_type isEqualToString:@"multipart"]&& (![(NSString *)self->_type isEqualToString:@"message"]|| ![(NSString *)self->_subtype isEqualToString:@"rfc822"]))
  {
    return self->_nextPart;
  }

  return [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-nextsibling"];
}

- (id)subparts
{
  if (![(NSString *)self->_type isEqualToString:@"multipart"]&& (![(NSString *)self->_type isEqualToString:@"message"]|| ![(NSString *)self->_subtype isEqualToString:@"rfc822"]))
  {
    return 0;
  }

  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(MFMimePart *)self firstChildPart];
  if (v4)
  {
    v5 = v4;
    do
    {
      [v3 addObject:v5];
      v5 = [v5 nextSiblingPart];
    }

    while (v5);
  }

  return v3;
}

- (id)subpartAtIndex:(int64_t)a3
{
  if (a3 < 0)
  {
    return 0;
  }

  result = [(MFMimePart *)self firstChildPart];
  if (result)
  {
    v5 = a3 + 1;
    do
    {
      if (!--v5)
      {
        break;
      }

      result = [result nextSiblingPart];
    }

    while (result);
  }

  return result;
}

- (id)childPartWithNumber:(id)a3
{
  v5 = self;
  v21 = *MEMORY[0x1E69E9840];
  if ([(MFMimePart *)self parentPart])
  {
    [(MFMimePart *)a2 childPartWithNumber:v5];
  }

  if ([(MFMimePart *)v5 firstChildPart])
  {
    v6 = [a3 componentsSeparatedByString:@"."];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
LABEL_6:
      v10 = 0;
LABEL_7:
      if (*v17 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [*(*(&v16 + 1) + 8 * v10) integerValue];
      if (v11 < 1)
      {
        v5 = 0;
      }

      else
      {
        v12 = v11;
        for (i = [(MFMimePart *)v5 firstChildPart]; ; i = [(MFMimePart *)i nextSiblingPart])
        {
          v5 = i;
          if (!i)
          {
            break;
          }

          if (!--v12)
          {
            if (++v10 != v8)
            {
              goto LABEL_7;
            }

            v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
            if (v8)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }
    }
  }

  else if (![a3 isEqualToString:@"1"])
  {
    v5 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)setSubparts:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_type isEqualToString:@"multipart"]|| [(NSString *)self->_type isEqualToString:@"message"]&& [(NSString *)self->_subtype isEqualToString:@"rfc822"])
  {
    v5 = [(MFMimePart *)self firstChildPart];
    if (v5)
    {
      v6 = v5;
      do
      {
        v7 = [v6 nextSiblingPart];
        setParent(v6, 0);
        [v6 _setObjectInOtherIvars:0 forKey:@"x-nextsibling"];

        v6 = v7;
      }

      while (v7);
    }

    self->_nextPart = 0;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a3);
          }

          [(MFMimePart *)self addSubpart:*(*(&v13 + 1) + 8 * i)];
        }

        v9 = [a3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addSubpart:(id)a3
{
  if (a3 && ([(NSString *)self->_type isEqualToString:@"multipart"]|| [(NSString *)self->_type isEqualToString:@"message"]&& [(NSString *)self->_subtype isEqualToString:@"rfc822"]))
  {
    nextPart = self->_nextPart;
    if (nextPart)
    {
      for (i = self->_nextPart; ; nextPart = i)
      {
        i = [(MFMimePart *)i nextSiblingPart];
        if (!i)
        {
          break;
        }
      }

      type = nextPart->_type;
      if (type && ([(NSString *)type isEqualToString:@"multipart"]|| [(NSString *)nextPart->_type isEqualToString:@"message"]&& [(NSString *)nextPart->_subtype isEqualToString:@"rfc822"]))
      {
        [(MFMimePart *)nextPart _setObjectInOtherIvars:a3 forKey:@"x-nextsibling"];
      }

      else
      {
        nextPart->_nextPart = a3;
      }
    }

    else
    {
      self->_nextPart = a3;
    }

    setParent(a3, self);
  }
}

- (BOOL)isSecurePart
{
  v3 = [(MFMimePart *)self type];
  if (![(NSString *)v3 ef_caseInsensitiveIsEqualToString:@"application"])
  {
    return [(NSString *)v3 ef_caseInsensitiveIsEqualToString:@"multipart"]&& [(NSString *)[(MFMimePart *)self subtype] ef_caseInsensitiveIsEqualToString:@"signed"]&& [(MFMimePart *)self usesKnownSignatureProtocol];
  }

  v4 = [(MFMimePart *)self subtype];
  if (([(NSString *)v4 ef_caseInsensitiveIsEqualToString:@"pkcs7-mime"]& 1) != 0 || ([(NSString *)v4 ef_caseInsensitiveIsEqualToString:@"pkcs7-signature"]& 1) != 0)
  {
    return 1;
  }

  if (![(NSString *)v4 ef_caseInsensitiveIsEqualToString:@"octet-stream"])
  {
    return 0;
  }

  v5 = [-[MFMimePart attachmentFilename](self "attachmentFilename")];
  if ([v5 ef_caseInsensitiveIsEqualToString:@"p7m"] & 1) != 0 || (objc_msgSend(v5, "ef_caseInsensitiveIsEqualToString:", @"p7s") & 1) != 0 || (objc_msgSend(v5, "ef_caseInsensitiveIsEqualToString:", @"p7c"))
  {
    return 1;
  }

  return [v5 ef_caseInsensitiveIsEqualToString:@"p7z"];
}

- (BOOL)hasSecureSubparts
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9 = __31__MFMimePart_hasSecureSubparts__block_invoke;
  v10 = &unk_1E8455248;
  v11 = &v12;
  v16 = 0;
  v3 = [(MFMimePart *)self firstChildPart:MEMORY[0x1E69E9820]];
  if (v3)
  {
    while (1)
    {
      v4 = v3;
      v9(&v8, v3, &v16);
      if (v16)
      {
        break;
      }

      v3 = [(MFMimePart *)v4 firstChildPart];
      if (!v3)
      {
        while (1)
        {
          v3 = [(MFMimePart *)v4 nextSiblingPart];
          if (v3)
          {
            break;
          }

          v5 = [(MFMimePart *)v4 parentPart];
          v4 = v5;
          if (v5 == self || !v5)
          {
            goto LABEL_9;
          }
        }
      }
    }
  }

LABEL_9:
  v6 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v6;
}

uint64_t __31__MFMimePart_hasSecureSubparts__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isSecurePart];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (void)setRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v12 = *MEMORY[0x1E69E9840];
  self->_range = a3;
  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13.location = location;
    v13.length = length;
    v8 = 138543618;
    v9 = NSStringFromRange(v13);
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1D36B2000, v6, OS_LOG_TYPE_INFO, "Setting range %{public}@ for part %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)decodedDataForData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    result = 0;
    goto LABEL_8;
  }

  v5 = [(MFMimePart *)self contentTransferEncoding];
  if (v5)
  {
    v6 = v5;
    if (![(NSString *)v5 isEqualToString:@"7bit"]&& ![(NSString *)v6 isEqualToString:@"8bit"]&& ![(NSString *)v6 isEqualToString:@"binary"])
    {
      if ([(NSString *)v6 isEqualToString:@"quoted-printable"])
      {
        result = [a3 mf_decodeQuotedPrintableForText:{-[NSString isEqualToString:](-[MFMimePart type](self, "type"), "isEqualToString:", @"text"}];
      }

      else if ([(NSString *)v6 isEqualToString:@"base64"])
      {
        result = [a3 mf_decodeBase64];
      }

      else
      {
        if (![(NSString *)v6 isEqualToString:@"x-uuencode"])
        {
LABEL_16:
          v9 = MFLogGeneral();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            v10 = 138412290;
            v11 = v6;
            _os_log_impl(&dword_1D36B2000, v9, OS_LOG_TYPE_INFO, "*** Failed to decode %@ data, treating as binary", &v10, 0xCu);
          }

          goto LABEL_6;
        }

        result = [a3 mf_decodeUuencoded];
      }

      if (result)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

LABEL_6:
  result = a3;
LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)mimeBody
{
  os_unfair_lock_lock(&self->_ivarLock);
  v3 = [(MFWeakReferenceHolder *)self->_body retainedReference];
  os_unfair_lock_unlock(&self->_ivarLock);
  if (v3)
  {
    return v3;
  }

  v5 = [(MFMimePart *)self parentPart];

  return [v5 mimeBody];
}

- (void)setMimeBody:(id)a3
{
  v5 = [MFWeakReferenceHolder weakReferenceWithObject:?];
  os_unfair_lock_lock(&self->_ivarLock);
  body = self->_body;
  self->_body = v5;
  os_unfair_lock_unlock(&self->_ivarLock);

  v7 = [objc_msgSend(a3 "message")];
  if (!self->_partURL)
  {
    self->_partURL = [v7 URLByAppendingPathComponent:{-[MFMimePart partNumber](self, "partNumber")}];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = [(MFMimePart *)self parentPart];
  for (i = 0; v4; v4 = [v4 parentPart])
  {
    ++i;
  }

  _appendToDescriptionWithIndent(self, v3, i);
  return v3;
}

- (id)attachmentFilename
{
  v15 = *MEMORY[0x1E69E9840];
  FilenameEncodingHint = _getFilenameEncodingHint(self);
  v4 = [(MFMimePart *)self dispositionParameterForKey:@"filename"];
  v5 = [v4 mf_decodeMimeHeaderValueWithCharsetHint:FilenameEncodingHint];
  if ([v5 isEqualToString:&stru_1F4F33820])
  {
    v5 = v4;
  }

  v6 = MFLogGeneral();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1D36B2000, v6, OS_LOG_TYPE_INFO, "---filename=%@", buf, 0xCu);
  }

  if (!v5)
  {
    if ((-[NSString isEqualToString:](-[MFMimePart type](self, "type"), "isEqualToString:", @"message") || -[NSString isEqualToString:](-[MFMimePart subtype](self, "subtype"), "isEqualToString:", @"external-body") || (v9 = [-[MFMimePart bodyParameterForKey:](self bodyParameterForKey:{@"name", "mf_decodeMimeHeaderValueWithCharsetHint:", _getFilenameEncodingHint(self)}]) == 0) && (!-[NSString isEqualToString:](self->_type, "isEqualToString:", @"multipart") || !-[NSString isEqualToString:](self->_subtype, "isEqualToString:", @"appledouble") || (v9 = objc_msgSend(-[MFMimePart firstChildPart](self, "firstChildPart"), "attachmentFilename")) == 0 && (v9 = objc_msgSend(objc_msgSend(-[MFMimePart firstChildPart](self, "firstChildPart"), "nextSiblingPart"), "attachmentFilename")) == 0))
    {
      v10 = objc_alloc_init(MFTypeInfo);
      -[MFTypeInfo setMimeType:](v10, "setMimeType:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", -[MFMimePart type](self, "type"), -[MFMimePart subtype](self, "subtype")]);
      MFGetTypeInfo(v10, 2);
      if ([(MFTypeInfo *)v10 pathExtension])
      {
        v8 = [@"mime-attachment" stringByAppendingPathExtension:{-[MFTypeInfo pathExtension](v10, "pathExtension")}];
      }

      else
      {
        v8 = @"mime-attachment";
      }

      goto LABEL_21;
    }

    v5 = v9;
  }

  v7 = [v5 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  if ([v7 length] >= 0x100)
  {
    v7 = [v7 substringToIndex:255];
  }

  v8 = [objc_msgSend(objc_msgSend(v7 stringByReplacingOccurrencesOfString:@"/" withString:{@"_", "stringByReplacingOccurrencesOfString:withString:", @"\n", @" ", "stringByReplacingOccurrencesOfString:withString:", @"\t", @" "}];
LABEL_21:
  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

- (unsigned)textEncoding
{
  SomeCharsetFromPartTree = [(MFMimePart *)self bodyParameterForKey:@"charset"];
  if (!SomeCharsetFromPartTree)
  {
    SomeCharsetFromPartTree = _getSomeCharsetFromPartTree(self);
  }

  return MFEncodingForCharsetWithFallback(SomeCharsetFromPartTree, 0xFFFFFFFFLL);
}

- (BOOL)isReadableText
{
  v3 = [(NSString *)[(MFMimePart *)self type] isEqualToString:@"text"];
  if (v3)
  {
    v4 = [(MFMimePart *)self subtype];
    if ([(NSString *)v4 isEqualToString:@"html"]|| [(NSString *)v4 isEqualToString:@"enriched"]|| [(NSString *)v4 isEqualToString:@"plain"])
    {
      LOBYTE(v3) = 1;
    }

    else if ([(NSString *)v4 isEqualToString:@"calendar"])
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      LOBYTE(v3) = ![(NSString *)v4 isEqualToString:@"directory"];
    }
  }

  return v3;
}

- (id)_partThatIsAttachment
{
  v2 = self;
  v18 = *MEMORY[0x1E69E9840];
  if ([(MFMimePart *)self isAttachment])
  {
    goto LABEL_18;
  }

  if (![(NSString *)v2->_type isEqualToString:@"multipart"])
  {
LABEL_16:
    v2 = 0;
LABEL_18:
    v12 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (![(NSString *)v2->_subtype isEqualToString:@"alternative"])
  {
    v6 = [(MFMimePart *)v2 subparts];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) _partThatIsAttachment];
          if (v11)
          {
            v2 = v11;
            goto LABEL_18;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        v2 = 0;
        if (v8)
        {
          continue;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_16;
  }

  v3 = [(MFMimePart *)v2 chosenAlternativePart];
  v4 = *MEMORY[0x1E69E9840];

  return [v3 _partThatIsAttachment];
}

- (BOOL)shouldConsiderInlineOverridingExchangeServer
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(MFMimePart *)self dispositionParameterForKey:@"filename"];
  pthread_mutex_lock(&shouldConsiderInlineOverridingExchangeServer_reg_exp_mutex);
  v7 = 0;
  if (!shouldConsiderInlineOverridingExchangeServer_regex)
  {
    shouldConsiderInlineOverridingExchangeServer_regex = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^ATT\\d{3 options:}\\.\\.?([A-z]{3}|c)$" error:{0, &v7}];
    if (!shouldConsiderInlineOverridingExchangeServer_regex)
    {
      v3 = MFLogGeneral();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v9 = v7;
        _os_log_impl(&dword_1D36B2000, v3, OS_LOG_TYPE_DEFAULT, "#Warning Could not generate regex: %@", buf, 0xCu);
      }
    }
  }

  if ([v2 length])
  {
    if ([shouldConsiderInlineOverridingExchangeServer_regex numberOfMatchesInString:v2 options:0 range:{0, objc_msgSend(v2, "length")}])
    {
      v4 = 1;
    }

    else
    {
      v4 = 1;
      if ([v2 compare:@"mime-attachment.txt" options:1])
      {
        v4 = [v2 compare:@"mime-attachment.html" options:1] == 0;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  pthread_mutex_unlock(&shouldConsiderInlineOverridingExchangeServer_reg_exp_mutex);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isAttachment
{
  v3 = [(MFMimePart *)self disposition];
  if ([(NSString *)[(MFMimePart *)self type] isEqualToString:@"text"])
  {
    if ([(MFMimePart *)self isReadableText])
    {
      if ([(MFMimePart *)self shouldConsiderInlineOverridingExchangeServer])
      {
LABEL_4:
        LOBYTE(v4) = 0;
        return v4;
      }

      if (![(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"css"])
      {
        if (!v3)
        {
          goto LABEL_4;
        }

LABEL_23:

        LOBYTE(v4) = [(NSString *)v3 isEqualToString:@"attachment"];
        return v4;
      }
    }

LABEL_19:
    LOBYTE(v4) = 1;
    return v4;
  }

  if ([(NSString *)self->_type isEqualToString:@"multipart"])
  {
    if ([(NSString *)self->_subtype isEqualToString:@"x-folder"])
    {
      goto LABEL_19;
    }

    if (![(NSString *)self->_subtype isEqualToString:@"appledouble"])
    {
      v6 = [(NSString *)self->_subtype isEqualToString:@"digest"];
      LOBYTE(v4) = 0;
      if (v6 || !v3)
      {
        return v4;
      }

      goto LABEL_23;
    }

    v5 = [-[MFMimePart firstChildPart](self "firstChildPart")];

    LOBYTE(v4) = [v5 isAttachment];
  }

  else
  {
    if ([(NSString *)self->_type isEqualToString:@"message"])
    {
      LOBYTE(v4) = ![(MFMimePart *)self isGenerated];
      return v4;
    }

    if (![(NSString *)self->_type isEqualToString:@"application"])
    {
      goto LABEL_19;
    }

    v4 = [@"pkcs7-signature" mf_caseInsensitiveCompareExcludingXDash:{-[MFMimePart subtype](self, "subtype")}];
    if (v4)
    {
      LOBYTE(v4) = [@"pkcs7-mime" mf_caseInsensitiveCompareExcludingXDash:{-[MFMimePart subtype](self, "subtype")}] != 0;
    }
  }

  return v4;
}

- (BOOL)isRich
{
  v3 = [(MFMimePart *)self type];
  if ([(NSString *)v3 isEqualToString:@"text"])
  {
    if (![(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"plain"])
    {
      return ![(MFMimePart *)self isAttachment];
    }

LABEL_18:
    LOBYTE(v4) = 0;
    return v4;
  }

  if ([(NSString *)v3 isEqualToString:@"multipart"])
  {
    if (![(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"alternative"])
    {
      v8 = [(MFMimePart *)self firstChildPart];
      if (v8)
      {
        v9 = v8;
        do
        {
          LOBYTE(v4) = [v9 isRich];
          v10 = [v9 nextSiblingPart];
          if (!v10)
          {
            break;
          }

          v9 = v10;
        }

        while ((v4 & 1) == 0);
        return v4;
      }

      goto LABEL_18;
    }

    v5 = [(MFMimePart *)self chosenAlternativePart];

    return [v5 isRich];
  }

  else
  {
    if (![(NSString *)v3 isEqualToString:@"message"])
    {
      goto LABEL_18;
    }

    v7 = [(MFMimePart *)self subtype];

    return [(NSString *)v7 isEqualToString:@"rfc822"];
  }
}

- (BOOL)isHTML
{
  v3 = [(MFMimePart *)self type];
  if ([(NSString *)v3 isEqualToString:@"text"])
  {
    if ([(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"html"])
    {
      return ![(NSString *)[(MFMimePart *)self disposition] isEqualToString:@"attachment"];
    }

LABEL_18:
    LOBYTE(v4) = 0;
    return v4;
  }

  if ([(NSString *)v3 isEqualToString:@"multipart"])
  {
    if (![(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"alternative"])
    {
      v7 = [(MFMimePart *)self firstChildPart];
      if (v7)
      {
        v8 = v7;
        do
        {
          LOBYTE(v4) = [v8 isHTML];
          v9 = [v8 nextSiblingPart];
          if (!v9)
          {
            break;
          }

          v8 = v9;
        }

        while ((v4 & 1) == 0);
        return v4;
      }

      goto LABEL_18;
    }

    v5 = [(MFMimePart *)self chosenAlternativePart];
  }

  else
  {
    if (![(NSString *)v3 isEqualToString:@"message"]|| ![(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"rfc822"])
    {
      goto LABEL_18;
    }

    v5 = [-[MFMimePart firstChildPart](self "firstChildPart")];
  }

  return [v5 isHTML];
}

- (BOOL)hasValidMultipartSignedContentType
{
  v3 = [(MFMimePart *)self hasContentType:@"multipart" subtype:@"signed"];
  if (v3)
  {

    LOBYTE(v3) = [(MFMimePart *)self usesKnownSignatureProtocol];
  }

  return v3;
}

- (BOOL)usesKnownSignatureProtocol
{
  v2 = [-[MFMimePart bodyParameterForKey:](self bodyParameterForKey:{@"protocol", "UTF8String"}];
  if (!v2)
  {
    return 0;
  }

  v8[0] = v2;
  v8[1] = &v2[strlen(v2)];
  v8[2] = 0xAAAAAAAA08000100;
  v9 = 0;
  MimeToken = _copyNextMimeToken(v8, &SLASH_SEPARATOR_MASK, 1);
  v4 = _copyNextMimeToken(v8, &SPACE_SEMICOLON_COMMA_SEPARATOR_MASK, 1);
  v5 = v4;
  v6 = 0;
  if (MimeToken && v4)
  {
    if ([@"application" caseInsensitiveCompare:{MimeToken, v8[0]}])
    {
      v6 = 0;
    }

    else
    {
      v6 = [@"pkcs7-signature" mf_caseInsensitiveCompareExcludingXDash:v5] == 0;
    }
  }

  if (v9)
  {
  }

  return v6;
}

- (BOOL)isMultipartSigned
{
  v3 = [(NSString *)[(MFMimePart *)self type] isEqualToString:@"multipart"];
  if (v3)
  {
    v4 = [(MFMimePart *)self subtype];

    LOBYTE(v3) = [(NSString *)v4 isEqualToString:@"signed"];
  }

  return v3;
}

- (unint64_t)totalTextSize
{
  v3 = [(MFMimePart *)self type];
  if (![(NSString *)v3 isEqualToString:@"multipart"])
  {
    if ([(NSString *)v3 isEqualToString:@"text"]|| [(NSString *)v3 isEqualToString:@"message"])
    {
      [(MFMimePart *)self range];
      return v7;
    }

    return 0;
  }

  v4 = [(MFMimePart *)self subtype];
  if (![(NSString *)v4 isEqualToString:@"alternative"])
  {
    v9 = [(NSString *)v4 isEqualToString:@"related"];
    v6 = [(MFMimePart *)self firstChildPart];
    v10 = v6;
    if (v9)
    {
      if (v6)
      {
        goto LABEL_10;
      }
    }

    else if (v6)
    {
      v8 = 0;
      do
      {
        if (([v10 isAttachment] & 1) == 0)
        {
          v8 += [v10 totalTextSize];
        }

        v10 = [v10 nextSiblingPart];
      }

      while (v10);
      return v8;
    }

    return 0;
  }

  v5 = [(MFMimePart *)self chosenAlternativePart];
  if ([v5 isAttachment])
  {
    return 0;
  }

  v6 = v5;
LABEL_10:

  return [v6 totalTextSize];
}

- (id)startPart
{
  if (![(NSString *)self->_type isEqualToString:@"multipart"])
  {
    return self;
  }

  v3 = [(MFMimePart *)self subtype];
  if (-[NSString isEqualToString:](v3, "isEqualToString:", @"mixed") && [-[MFMimePart subparts](self "subparts")] == 1)
  {

    return [(MFMimePart *)self firstChildPart];
  }

  if (![(NSString *)v3 isEqualToString:@"related"])
  {
    return self;
  }

  v5 = [(MFMimePart *)self bodyParameterForKey:@"start"];
  if (v5)
  {
    v6 = v5;
    v7 = [(MFMimePart *)self firstChildPart];
    if (v7)
    {
      v8 = v7;
      v9 = self;
      do
      {
        if ([(NSString *)[(MFMimePart *)v8 contentID] isEqualToString:v6])
        {
          v9 = v8;
        }

        v10 = [(MFMimePart *)v8 nextSiblingPart];
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v9 == self);
      if (v9 != self)
      {
        return v9;
      }
    }
  }

  return [(MFMimePart *)self subpartAtIndex:0];
}

- (int64_t)numberOfAlternatives
{
  if (![(NSString *)[(MFMimePart *)self type] isEqualToString:@"multipart"])
  {
    return -1;
  }

  v3 = [(MFMimePart *)self subtype];
  if ([(NSString *)v3 isEqualToString:@"alternative"])
  {
    v4 = [(MFMimePart *)self firstChildPart];
    for (i = 0; v4; v4 = [v4 nextSiblingPart])
    {
      ++i;
    }

    return i;
  }

  if ([(NSString *)v3 isEqualToString:@"mixed"])
  {
    v6 = [(MFMimePart *)self firstChildPart];
    if (v6)
    {
      v7 = v6;
      i = -1;
      do
      {
        v8 = [v7 numberOfAlternatives];
        if (i <= v8)
        {
          i = v8;
        }

        v7 = [v7 nextSiblingPart];
      }

      while (v7);
      return i;
    }

    return -1;
  }

  if (![(NSString *)v3 isEqualToString:@"signed"])
  {
    return -1;
  }

  v9 = [(MFMimePart *)self firstChildPart];
  if (!v9)
  {
    return -1;
  }

  v10 = v9;
  while (![objc_msgSend(v10 "type")])
  {
    v10 = [v10 nextSiblingPart];
    i = -1;
    if (!v10)
    {
      return i;
    }
  }

  return [v10 numberOfAlternatives];
}

- (id)alternativeAtIndex:(int64_t)a3
{
  if ([(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"alternative"])
  {
    if (a3 == -1)
    {
      v5 = [-[MFMimePart subparts](self "subparts")];
LABEL_26:
      v10 = v5;
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (![(NSString *)self->_subtype isEqualToString:@"related"])
  {
    if ([(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"signed"])
    {
      v15 = [(MFMimePart *)self firstChildPart];
      if (!v15)
      {
LABEL_23:
        v10 = 0;
        goto LABEL_27;
      }

      v16 = v15;
      while (![objc_msgSend(v16 "type")])
      {
        v16 = [v16 nextSiblingPart];
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      v5 = [v16 alternativeAtIndex:a3];
      goto LABEL_26;
    }

LABEL_24:
    v13 = self;
    v14 = a3;
    goto LABEL_25;
  }

  v6 = [(MFMimePart *)self bodyParameterForKey:@"start"];
  if (!v6)
  {
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [(MFMimePart *)self firstChildPart];
  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = v8;
  do
  {
    if ([objc_msgSend(v9 "contentID")])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v9 nextSiblingPart];
    v9 = v11;
    if (v10)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11 == 0;
    }
  }

  while (!v12);
  if (!v10)
  {
LABEL_17:
    v13 = self;
    v14 = 0;
LABEL_25:
    v5 = [(MFMimePart *)v13 subpartAtIndex:v14];
    goto LABEL_26;
  }

LABEL_27:
  if (v10)
  {
    return v10;
  }

  else
  {
    return self;
  }
}

- (id)signedData
{
  result = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-signed-data"];
  if (result)
  {
    v3 = result;

    return v3;
  }

  return result;
}

- (id)textHtmlPart
{
  if ([(NSString *)[(MFMimePart *)self type] isEqualToString:@"text"]&& [(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"html"])
  {
    return self;
  }

  v4 = [(MFMimePart *)self startPart];
  if (v4 == self || (result = [(MFMimePart *)v4 textHtmlPart]) == 0)
  {
    if ([-[MFMimePart subparts](self "subparts")] == 1)
    {
      v5 = [(MFMimePart *)self firstChildPart];

      return [v5 textHtmlPart];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (BOOL)parseContentTypeHeader:(id)a3 type:(id *)a4 subtype:(id *)a5 info:(id *)a6
{
  v18[0] = [a3 UTF8String];
  v18[1] = &v18[0][strlen(v18[0])];
  v18[2] = 0xAAAAAAAA08000100;
  v19 = 0;
  v9 = _copyNextMimeToken(v18, &SLASH_SEPARATOR_MASK, 1);
  v10 = _copyNextMimeToken(v18, &SPACE_SEMICOLON_COMMA_SEPARATOR_MASK, 1);
  v16 = 0;
  v17 = 0;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  while (_scanMimeKeyValuePair(v18, &v17, &v16))
  {
    v12 = v17;
    if (v17)
    {
      v13 = v16 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      [v11 setObject:v16 forKey:_UniqueString(v17)];
      v12 = v17;
    }
  }

  if (a4)
  {
    *a4 = v9;
  }

  if (a5)
  {
    *a5 = v10;
  }

  if (a6)
  {
    *a6 = v11;
  }

  if (v19)
  {
  }

  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  return !v14;
}

- (id)decryptedMessageBodyIsEncrypted:(BOOL *)a3 isSigned:(BOOL *)a4
{
  if (a3)
  {
    *a3 = [-[MFMimePart _objectInOtherIvarsForKey:](self _objectInOtherIvarsForKey:{@"x-is-encrypted", "BOOLValue"}];
  }

  if (a4)
  {
    *a4 = [-[MFMimePart _objectInOtherIvarsForKey:](self _objectInOtherIvarsForKey:{@"x-is-signed", "BOOLValue"}];
  }

  return [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-decrypted-message-body"];
}

- (void)clearCachedDescryptedMessageBody
{
  [(MFMimePart *)self _setObjectInOtherIvars:0 forKey:@"x-decrypted-message-body"];
  [(MFMimePart *)self _setObjectInOtherIvars:0 forKey:@"x-wrapped-subject"];
  [(MFMimePart *)self _setObjectInOtherIvars:0 forKey:@"x-is-encrypted"];
  [(MFMimePart *)self _setObjectInOtherIvars:0 forKey:@"x-is-signed"];
  [(MFMimePart *)self _setDecryptedMessageInDictionary:0];
  v3 = _UniqueString(@"x-decrypted-message-store");

  [(MFMimePart *)self _setObjectInOtherIvars:0 forKey:v3];
}

- (void)_setDecryptedMessageInDictionary:(id)a3
{
  v5 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-decrypted-message"];
  if ([v5 parentPart] == self)
  {
    [v5 setStrongParentPart:1];
  }

  [(MFMimePart *)self _setObjectInOtherIvars:a3 forKey:@"x-decrypted-message"];
  if ([a3 parentPart] == self)
  {

    [a3 setStrongParentPart:0];
  }
}

- (id)fileWrapperForDecodedObject:(id)a3 withFileData:(id *)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return a3;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  result = 0;
  if (a4 && (isKindOfClass & 1) != 0)
  {
    if ([a3 canBeConvertedToEncoding:{objc_msgSend(MEMORY[0x1E696AEC0], "defaultCStringEncoding")}])
    {
      v8 = [MEMORY[0x1E696AEC0] defaultCStringEncoding];
    }

    else
    {
      v8 = 10;
    }

    v9 = [a3 dataUsingEncoding:v8];
    result = 0;
    *a4 = v9;
  }

  return result;
}

- (void)configureFileWrapper:(id)a3
{
  v5 = [(MFMimePart *)self bodyParameterForKey:@"x-unix-mode"];
  if (![a3 preferredFilename])
  {
    [a3 setPreferredFilename:{-[MFMimePart attachmentFilename](self, "attachmentFilename")}];
  }

  if (![a3 mimeType] && -[MFMimePart subtype](self, "subtype"))
  {
    [a3 setMimeType:{-[MFMimePart _fullMimeTypeEvenInsideAppleDouble](self, "_fullMimeTypeEvenInsideAppleDouble")}];
  }

  if (v5)
  {
    v6 = strtoul([v5 ef_lossyDefaultCStringBytes], 0, 8) & 0x1FF;
    if (v6)
    {
      v7 = [a3 fileAttributes];
      if (v7)
      {
        v8 = [v7 mutableCopyWithZone:0];
      }

      else
      {
        v8 = [objc_allocWithZone(MEMORY[0x1E695DF90]) initWithCapacity:1];
      }

      v9 = v8;
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v6];
      [v9 setObject:v10 forKey:*MEMORY[0x1E696A370]];
      [a3 setFileAttributes:v9];
    }
  }

  v11 = [(MFMimePart *)self contentID];
  if (v11)
  {

    [a3 setContentID:v11];
  }
}

- (BOOL)_hasCompleteBodyDataToOffset:(unint64_t)a3
{
  v12 = 0;
  [self mf_lock];
  v5 = [(MFWeakReferenceHolder *)self->_decodedData retainedReference];
  if (v5)
  {

LABEL_10:
    v12 = 1;
    goto LABEL_11;
  }

  [(MFMimePart *)self range];
  if (v6 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = v6;
  }

  if (self->_fullData)
  {
    goto LABEL_10;
  }

  v8 = [(MFPartialNetworkDataConsumer *)self->_partialDataConsumer length];
  v9 = v7 > v8;
  v10 = v7 - v8;
  if (!v9)
  {
    goto LABEL_10;
  }

  [objc_msgSend(-[MFMimePart mimeBody](self "mimeBody")];
LABEL_11:
  [self mf_unlock];
  return v12;
}

+ (BOOL)isRecognizedClassForContent:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (unsigned)numberOfAttachments
{
  v3 = 0;
  [(MFMimePart *)self getNumberOfAttachments:&v3 isSigned:0 isEncrypted:0];
  return v3;
}

- (void)getNumberOfAttachments:(unsigned int *)a3 isSigned:(BOOL *)a4 isEncrypted:(BOOL *)a5
{
  v12 = -86;
  v11 = -86;
  v9 = [(MFMimePart *)self decryptedMessageBodyIsEncrypted:&v12 isSigned:&v11];
  if (v9)
  {
    v10 = [v9 numberOfAttachmentsSigned:a4 encrypted:a5];
    if (a3)
    {
      *a3 = v10;
    }
  }

  else
  {
    if (a3)
    {
      *a3 = 0;
      _getAttachmentsAndAddToCount(self, a3, 0);
    }

    if (a4)
    {
      *a4 = [(MFMimePart *)self hasValidMultipartSignedContentType];
    }
  }

  if (a5 && v12 == 1)
  {
    *a5 = v12;
  }

  if (a4)
  {
    if (v11 == 1)
    {
      *a4 = v11;
    }
  }
}

- (id)attachments
{
  v3 = [(MFMimePart *)self decryptedMessageBodyIsEncrypted:0 isSigned:0];
  if (v3)
  {

    return [v3 attachments];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF70] array];
    _getAttachmentsAndAddToCount(self, 0, v5);
    return v5;
  }
}

- (id)attachmentURLs
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  if ([(MFMimePart *)self isAttachment]&& [(MFMimePart *)self partURL])
  {
    [v3 addObject:{-[MFMimePart partURL](self, "partURL")}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(MFMimePart *)self subparts];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if ([v9 isAttachment] && objc_msgSend(v9, "partURL"))
        {
          [v3 addObject:{objc_msgSend(v9, "partURL")}];
        }

        if (![(NSString *)[(MFMimePart *)self type] isEqualToString:@"message"]|| ![(NSString *)[(MFMimePart *)self subtype] isEqualToString:@"rfc822"])
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          v10 = [v9 subparts];
          v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v18;
            do
            {
              for (j = 0; j != v12; ++j)
              {
                if (*v18 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                [v3 addObjectsFromArray:{objc_msgSend(*(*(&v17 + 1) + 8 * j), "attachmentURLs")}];
              }

              v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v12);
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

- (id)partURL
{
  result = self->_partURL;
  if (!result)
  {
    parentPartURL = self->_parentPartURL;
    if (!parentPartURL)
    {
      if ([(MFMimePart *)self parentPart])
      {
        v5 = [-[MFMimePart parentPart](self "parentPart")];
      }

      else
      {
        v5 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach://"];
      }

      parentPartURL = v5;
      self->_parentPartURL = parentPartURL;
    }

    v6 = [(MFMimePart *)self partNumber];
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"1";
    }

    result = [(NSURL *)parentPartURL URLByAppendingPathComponent:v7 isDirectory:0];
    self->_partURL = result;
  }

  return result;
}

- (id)chosenAlternativePart
{
  v3 = [(MFMimePart *)self subparts];
  v4 = [v3 count];
  v5 = v4 - 1;
  v6 = v4 - 2;
  if (v4 >= 2)
  {
    if ((v7 = [v3 lastObject], v8 = objc_msgSend(v7, "type"), v9 = objc_msgSend(v7, "subtype"), objc_msgSend(v8, "isEqualToString:", @"text")) && v9 && !objc_msgSend(@"calendar", "caseInsensitiveCompare:", v9) || objc_msgSend(objc_msgSend(v7, "type"), "isEqualToString:", @"text") && !objc_msgSend(@"earthlink-xml", "caseInsensitiveCompare:", objc_msgSend(v7, "subtype")))
    {
      if ([objc_msgSend(v3 objectAtIndex:{v6), "isReadableText"}])
      {
        v5 = v6;
      }
    }
  }

  v10 = [(MFMimePart *)self firstChildPart];
  v11 = 0;
  if (v10 && (v5 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      v11 = v10;
      v10 = [v10 nextSiblingPart];
      if (!v10)
      {
        break;
      }
    }

    while (v12++ < v5);
  }

  return v11;
}

- (BOOL)isGenerated
{
  v2 = [(MFMimePart *)self contentID];

  return [(NSString *)v2 isEqualToString:@"5221C4CE-204E-45C0-95FC-7E20BAA21986"];
}

- (void)setIsGenerated:(BOOL)a3
{
  if (a3)
  {

    [(MFMimePart *)self setContentID:@"5221C4CE-204E-45C0-95FC-7E20BAA21986"];
  }

  else if ([(MFMimePart *)self isGenerated])
  {
    [(MFMimePart *)a2 setIsGenerated:?];
  }
}

- (BOOL)parseMimeBodyFromHeaderData:(id)a3 bodyData:(id)a4 isPartial:(BOOL)a5
{
  v5 = a5;
  v32 = *MEMORY[0x1E69E9840];
  v9 = [(MFMimePart *)self mimeBody];
  if (v9)
  {
    v10 = [objc_msgSend(v9 "message")];
    if (a3 && a4)
    {
      v11 = v10;
      -[MFMimePart setRange:](self, "setRange:", 0, [a4 length]);
      v12 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v13 = *MEMORY[0x1E699B0D0];
      [a3 length];
      if ((ECGetNextHeaderFromDataInRange() & 1) != 0 || (v14 = _parseUuencodedParts(self, v11, a4, self->_range.location, self->_range.length)) == 0)
      {
        _parseHeaders(self, v11, a3, a4, v5);
      }

      else
      {
        v15 = v14;
        [(MFMimePart *)self setType:@"multipart"];
        [(MFMimePart *)self setSubtype:@"mixed"];
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v24;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v24 != v18)
              {
                objc_enumerationMutation(v15);
              }

              [(MFMimePart *)self addSubpart:*(*(&v23 + 1) + 8 * i)];
            }

            v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v17);
        }
      }

      [v12 drain];
      LOBYTE(v9) = 1;
    }

    else
    {
      v20 = MFLogGeneral();
      LODWORD(v9) = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
      if (v9)
      {
        *buf = 134218240;
        v28 = [a4 length];
        v29 = 2048;
        v30 = [a3 length];
        _os_log_impl(&dword_1D36B2000, v20, OS_LOG_TYPE_INFO, "Mime parsing: Failed to parse mime body!  bodyData: %lu\theaderData: %lu", buf, 0x16u);
        LOBYTE(v9) = 0;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_fixupDispositionParametersRFC2231Values
{
  v2 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-disposition-parameters"];

  [v2 mf_fixupRFC2231Values];
}

- (BOOL)parseIMAPPropertyList:(id)a3
{
  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v6 = Count;
      ValueAtIndex = CFArrayGetValueAtIndex(a3, 0);
      if (!ValueAtIndex)
      {
        return ValueAtIndex;
      }

      v8 = ValueAtIndex;
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v8))
      {
        [(MFMimePart *)self setType:@"multipart"];
        v10 = 0;
        while (1)
        {
          v11 = CFArrayGetTypeID();
          if (v11 != CFGetTypeID(v8))
          {
            break;
          }

          v12 = objc_alloc_init(objc_opt_class());
          if (v12)
          {
            v13 = v12;
            [(MFMimePart *)self addSubpart:v12];
            [v13 parseIMAPPropertyList:v8];
          }

          if (++v10 < v6)
          {
            v8 = CFArrayGetValueAtIndex(a3, v10);
            if (v8)
            {
              continue;
            }
          }

          goto LABEL_45;
        }

        v34 = CFStringGetTypeID();
        if (v34 == CFGetTypeID(v8))
        {
          [(MFMimePart *)self setSubtype:v8];
        }

LABEL_45:
        if (v10 + 1 < v6)
        {
          v35 = CFArrayGetValueAtIndex(a3, v10 + 1);
          if (v35)
          {
            v36 = v35;
            v37 = CFArrayGetTypeID();
            if (v37 == CFGetTypeID(v36))
            {
              _setupDictionaryFromArray(self, &self->_bodyParameters, v36);
            }
          }
        }

        if (v10 + 2 < v6)
        {
          v38 = CFArrayGetValueAtIndex(a3, v10 + 2);
          values = v38;
          if (v38)
          {
            v39 = v38;
            v40 = CFArrayGetTypeID();
            if (v40 == CFGetTypeID(v39))
            {
              v41 = CFArrayGetCount(v39);
              if (v41 >= 1)
              {
                v42 = v41;
                v43 = CFArrayGetValueAtIndex(v39, 0);
                if (v43)
                {
                  v44 = v43;
                  v45 = CFStringGetTypeID();
                  if (v45 == CFGetTypeID(v44))
                  {
                    [(MFMimePart *)self setDisposition:v44];
                  }
                }

                if (v42 != 1)
                {
                  v46 = CFArrayGetValueAtIndex(v39, 1);
                  if (v46)
                  {
                    v47 = v46;
                    v48 = CFArrayGetTypeID();
                    if (v48 == CFGetTypeID(v47))
                    {
                      v49 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-disposition-parameters"];
                      v83 = v49;
                      _setupDictionaryFromArray(self, &v83, v47);
                      v50 = v83;
                      if (v83)
                      {
                        [(MFMimePart *)self _setObjectInOtherIvars:v83 forKey:@"x-disposition-parameters"];
                      }

                      if (!v49)
                      {
                      }
                    }
                  }
                }
              }
            }
          }

          goto LABEL_111;
        }

LABEL_110:
        values = 0;
LABEL_111:
        [(NSMutableDictionary *)self->_bodyParameters mf_fixupRFC2231Values];
        [-[MFMimePart _objectInOtherIvarsForKey:](self _objectInOtherIvarsForKey:{@"x-disposition-parameters", "mf_fixupRFC2231Values"}];
        LOBYTE(ValueAtIndex) = 1;
        return ValueAtIndex;
      }

      v14 = CFStringGetTypeID();
      if (v14 == CFGetTypeID(v8))
      {
        [(MFMimePart *)self setType:v8];
        if (v6 == 1)
        {
          goto LABEL_39;
        }

        v15 = CFArrayGetValueAtIndex(a3, 1);
        if (v15)
        {
          v16 = v15;
          v17 = CFStringGetTypeID();
          if (v17 == CFGetTypeID(v16))
          {
            [(MFMimePart *)self setSubtype:v16];
          }
        }

        if (v6 <= 2)
        {
LABEL_39:
          values = 0;
        }

        else
        {
          v18 = CFArrayGetValueAtIndex(a3, 2);
          values = v18;
          if (v18)
          {
            v19 = v18;
            v20 = CFArrayGetTypeID();
            if (v20 == CFGetTypeID(v19))
            {
              _setupDictionaryFromArray(self, &self->_bodyParameters, v19);
            }
          }

          if (v6 != 3)
          {
            v21 = CFArrayGetValueAtIndex(a3, 3);
            if (v21)
            {
              v22 = v21;
              v23 = CFStringGetTypeID();
              if (v23 == CFGetTypeID(v22))
              {
                [(MFMimePart *)self setContentID:v22];
              }
            }

            if (v6 >= 5)
            {
              v24 = CFArrayGetValueAtIndex(a3, 4);
              if (v24)
              {
                v25 = v24;
                v26 = CFStringGetTypeID();
                if (v26 == CFGetTypeID(v25))
                {
                  [(MFMimePart *)self setContentDescription:v25];
                }
              }

              if (v6 != 5)
              {
                v27 = CFArrayGetValueAtIndex(a3, 5);
                values = v27;
                if (v27)
                {
                  v28 = v27;
                  v29 = CFStringGetTypeID();
                  if (v29 == CFGetTypeID(v28))
                  {
                    [(MFMimePart *)self setContentTransferEncoding:v28];
                  }
                }

                if (v6 >= 7)
                {
                  v30 = CFArrayGetValueAtIndex(a3, 6);
                  if (v30)
                  {
                    v31 = v30;
                    v32 = CFNumberGetTypeID();
                    if (v32 == CFGetTypeID(v31))
                    {
                      -[MFMimePart setRange:](self, "setRange:", 0x7FFFFFFFFFFFFFFFLL, [v31 unsignedIntegerValue]);
                    }
                  }
                }

LABEL_41:
                if ([(NSString *)[(MFMimePart *)self type] isEqualToString:@"text"])
                {
                  v33 = 9;
                }

                else if ([(NSString *)self->_type isEqualToString:@"message"]&& [(NSString *)self->_subtype isEqualToString:@"rfc822"])
                {
                  if (v6 <= 8)
                  {
                    values = 0;
                  }

                  else
                  {
                    v51 = CFArrayGetValueAtIndex(a3, 8);
                    if (v51)
                    {
                      v52 = v51;
                      v53 = CFArrayGetTypeID();
                      if (v53 == CFGetTypeID(v52))
                      {
                        v54 = objc_alloc_init(objc_opt_class());
                        if (v54)
                        {
                          v55 = v54;
                          [(MFMimePart *)self addSubpart:v54];
                          [v55 parseIMAPPropertyList:v52];
                        }
                      }
                    }
                  }

                  v33 = 11;
                }

                else
                {
                  v33 = 8;
                }

                if (v33 >= v6)
                {
                  values = 0;
                }

                else
                {
                  v56 = CFArrayGetValueAtIndex(a3, v33);
                  if (v56)
                  {
                    v57 = v56;
                    v58 = CFArrayGetTypeID();
                    if (v58 == CFGetTypeID(v57))
                    {
                      v59 = CFArrayGetCount(v57);
                      if (v59 >= 1)
                      {
                        v60 = v59;
                        v61 = CFArrayGetValueAtIndex(v57, 0);
                        if (v61)
                        {
                          v62 = v61;
                          v63 = CFStringGetTypeID();
                          if (v63 == CFGetTypeID(v62))
                          {
                            [(MFMimePart *)self setDisposition:v62];
                          }
                        }

                        if (v60 != 1)
                        {
                          v64 = CFArrayGetValueAtIndex(v57, 1);
                          if (v64)
                          {
                            v65 = v64;
                            v66 = CFArrayGetTypeID();
                            if (v66 == CFGetTypeID(v65))
                            {
                              v67 = [(MFMimePart *)self _objectInOtherIvarsForKey:@"x-disposition-parameters"];
                              v83 = v67;
                              _setupDictionaryFromArray(self, &v83, v65);
                              v68 = v83;
                              if (v83)
                              {
                                [(MFMimePart *)self _setObjectInOtherIvars:v83 forKey:@"x-disposition-parameters"];
                              }

                              if (!v67)
                              {
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }

                if (v33 + 1 >= v6)
                {
                  values = 0;
                  goto LABEL_105;
                }

                v69 = CFArrayGetValueAtIndex(a3, v33 + 1);
                values = v69;
                if (!v69)
                {
                  goto LABEL_105;
                }

                v70 = v69;
                v71 = CFArrayGetTypeID();
                if (v71 == CFGetTypeID(v70))
                {
                  v72 = CFArrayGetCount(v70);
                  v73 = malloc_type_malloc(8 * v72, 0xC0040B8AA526DuLL);
                  v74 = malloc_type_malloc(8 * v72, 0x80040B8603338uLL);
                  v85.location = 0;
                  v85.length = v72;
                  CFArrayGetValues(v70, v85, v73);
                  if (v72 < 1)
                  {
                    goto LABEL_101;
                  }

                  v75 = 0;
                  v76 = v73;
                  do
                  {
                    if (*v76)
                    {
                      v74[v75++] = *v76;
                    }

                    ++v76;
                    --v72;
                  }

                  while (v72);
                  if (v75)
                  {
                    v77 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v74 count:v75];
                  }

                  else
                  {
LABEL_101:
                    v77 = 0;
                  }

                  free(v73);
                  free(v74);
                }

                else
                {
                  v78 = CFStringGetTypeID();
                  if (v78 != CFGetTypeID(v70))
                  {
                    goto LABEL_105;
                  }

                  v77 = CFArrayCreate(0, &values, 1, MEMORY[0x1E695E9C0]);
                }

                if (v77)
                {
                  [(MFMimePart *)self setLanguages:v77];
                  CFRelease(v77);
                }

LABEL_105:
                if ((v33 + 2) < v6)
                {
                  values = CFArrayGetValueAtIndex(a3, v33 + 2);
                  if (values)
                  {
                    v79 = CFArrayGetTypeID();
                    if (v79 == CFGetTypeID(values) && CFArrayGetCount(values) >= 1)
                    {
                      v80 = CFArrayGetValueAtIndex(values, 0);
                      values = v80;
                    }

                    else
                    {
                      v80 = values;
                    }

                    if (v80)
                    {
                      v81 = CFStringGetTypeID();
                      if (v81 == CFGetTypeID(values))
                      {
                        [(MFMimePart *)self setContentLocation:values];
                      }
                    }
                  }

                  goto LABEL_111;
                }

                goto LABEL_110;
              }
            }
          }
        }

        values = 0;
        goto LABEL_41;
      }
    }

    LOBYTE(ValueAtIndex) = 0;
  }

  else
  {
    LOBYTE(ValueAtIndex) = 0;
  }

  return ValueAtIndex;
}

- (id)partNumber
{
  v3 = [(MFMimePart *)self parentPart];
  if (!v3)
  {
LABEL_19:
    if ([(NSString *)self->_type isEqualToString:@"multipart"])
    {
      return 0;
    }

    else
    {
      return @"1";
    }
  }

  v4 = v3;
  v5 = 0;
  v6 = self;
  while (([v4[1] isEqualToString:@"multipart"] & 1) != 0 || objc_msgSend(v4[1], "isEqualToString:", @"message") && objc_msgSend(v4[2], "isEqualToString:", @"rfc822"))
  {
    v7 = [v4 type];
    if ([v7 isEqualToString:@"multipart"])
    {
      v8 = [v4 firstChildPart];
      for (i = 1; v8; v8 = [(MFMimePart *)v8 nextSiblingPart])
      {
        if (v6 == v8)
        {
          break;
        }

        ++i;
      }

      v10 = EFStringWithInt();
      if (!v10)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (![v7 isEqualToString:@"message"])
      {
        goto LABEL_17;
      }

      v11 = [(NSString *)[(MFMimePart *)v6 type] isEqualToString:@"multipart"];
      v10 = @"1";
      if (v11)
      {
        goto LABEL_17;
      }
    }

    if (v5)
    {
      [v5 replaceCharactersInRange:0 withString:{0, @"."}];
      [v5 replaceCharactersInRange:0 withString:{0, v10}];
    }

    else
    {
      v5 = [(__CFString *)v10 mutableCopy];
    }

LABEL_17:
    v6 = v4;
    v4 = [v4 parentPart];
    if (!v4)
    {
      break;
    }
  }

  if (!v5)
  {
    goto LABEL_19;
  }

  return v5;
}

- (id)_fullMimeTypeEvenInsideAppleDouble
{
  if (!-[NSString isEqualToString:](self->_type, "isEqualToString:", @"multipart") || !-[NSString isEqualToString:](self->_subtype, "isEqualToString:", @"appledouble") || (v3 = [-[MFMimePart firstChildPart](self "firstChildPart")]) == 0)
  {
    if ([@"application" isEqualToString:{-[MFMimePart type](self, "type")}] && objc_msgSend(@"zip", "isEqualToString:", -[MFMimePart subtype](self, "subtype")))
    {
      v5 = [(MFMimePart *)self attachmentFilename];
      if ([v5 hasSuffix:@".pages.zip"])
      {
        return @"application/vnd.iwork.pages.archive";
      }

      if ([v5 hasSuffix:@".key.zip"])
      {
        return @"application/vnd.iwork.keynote.archive";
      }

      if ([v5 hasSuffix:@".numbers.zip"])
      {
        return @"application/vnd.iwork.numbers.archive";
      }
    }

    else
    {
      if (![@"application" isEqualToString:{-[MFMimePart type](self, "type")}] || !objc_msgSend(@"octet-stream", "isEqualToString:", -[MFMimePart subtype](self, "subtype")))
      {
        goto LABEL_22;
      }

      v6 = [-[MFMimePart attachmentFilename](self "attachmentFilename")];
      if ([v6 isEqualToString:@"pages"])
      {
        return @"application/x-iwork-pages-sffpages";
      }

      if ([v6 isEqualToString:@"key"])
      {
        return @"application/x-iwork-keynote-sffkey";
      }

      if ([v6 isEqualToString:@"numbers"])
      {
        return @"application/x-iwork-numbers-sffnumbers";
      }
    }

LABEL_22:
    v4 = [(NSString *)[(MFMimePart *)self type] mutableCopy];
    [v4 appendString:@"/"];
    [v4 appendString:{-[MFMimePart subtype](self, "subtype")}];
    return v4;
  }

  v4 = [v3 _fullMimeTypeEvenInsideAppleDouble];
  if (!v4)
  {
    goto LABEL_22;
  }

  return v4;
}

- (id)decodeText
{
  v2 = _MFCopyDecodeText(self, 0);

  return v2;
}

- (SEL)_selectorForCString:(char *)a3
{
  if (_selectorForCString__onceToken != -1)
  {
    [MFMimePart(DecodingSupport) _selectorForCString:];
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
  if (![_selectorForCString__allowedMethodNames containsObject:v4])
  {
    return 0;
  }

  return NSSelectorFromString(v4);
}

void *__51__MFMimePart_DecodingSupport___selectorForCString___block_invoke()
{
  result = &unk_1F4F3B368;
  _selectorForCString__allowedMethodNames = result;
  return result;
}

- (BOOL)hasContents
{
  v3 = [objc_msgSend(-[MFMimePart mimeBody](self "mimeBody")];

  return [v3 hasCompleteDataForMimePart:self];
}

- (id)contentsForTextSystem
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 1;
  }

  return [(MFMimePart *)self contentsForTextSystemForcingDownload:v4];
}

- (id)bodyDataToOffset:(unint64_t)a3 resultOffset:(unint64_t *)a4
{
  v4 = [(MFMimePart *)self copyBodyDataToOffset:a3 resultOffset:a4 downloadIfNecessary:1];

  return v4;
}

- (id)bodyData
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AF00] "currentThread")];
  if (!v3)
  {
    v3 = MEMORY[0x1E695E118];
  }

  v4 = [v3 BOOLValue];

  return [(MFMimePart *)self bodyDataForcingDownload:v4];
}

- (void)decodeIfNecessary
{
  if (![(MFMimePart *)self decryptedMessageBodyIsEncrypted:0 isSigned:0])
  {
    if ((v3 = -[MFMimePart type](self, "type"), v4 = -[MFMimePart subtype](self, "subtype"), -[NSString isEqualToString:](v3, "isEqualToString:", @"multipart")) && -[NSString isEqualToString:](v4, "isEqualToString:", @"signed") || ![@"application" mf_caseInsensitiveCompareExcludingXDash:v3] && !objc_msgSend(@"pkcs7-mime", "mf_caseInsensitiveCompareExcludingXDash:", v4))
    {

      [(MFMimePart *)self contentsForTextSystem];
    }
  }
}

- (id)decodeMultipartRelated
{
  v2 = [(MFMimePart *)self firstChildPart];
  v3 = [v2 contentsForTextSystem];

  return v3;
}

- (id)decodeMultipartAlternative
{
  v2 = [(MFMimePart *)self chosenAlternativePart];
  v3 = [v2 contentsForTextSystem];

  return v3;
}

- (id)decodeMultipart
{
  v3 = [MEMORY[0x1E696AF00] currentThread];
  v4 = [v3 threadDictionary];

  v5 = _MFOffsetFromThreadDictionary(v4);
  v6 = [v4 objectForKey:@"__MIME_PART_DECODE_AS_HTML"];
  v7 = [v6 BOOLValue];

  v8 = [v4 objectForKeyedSubscript:@"__MIME_PART_DECODE_DOWNLOAD"];

  if (v8)
  {
    v9 = [v4 objectForKeyedSubscript:@"__MIME_PART_DECODE_DOWNLOAD"];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 1;
  }

  v11 = [(MFMimePart *)self firstChildPart];
  v23 = v4;
  if (v11)
  {
    v12 = 0;
    v13 = 0;
    v14 = 1;
    while (1)
    {
      v15 = objc_autoreleasePoolPush();
      v25 = 0;
      if (v5)
      {
        v24 = 0;
        v16 = [v11 contentToOffset:v5 resultOffset:&v24 downloadIfNecessary:v10 asHTML:v7 isComplete:&v25];
        v17 = v5 - v24;
        if (v5 < v24)
        {
          v17 = 0;
        }

        if (v5 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v5 = v17;
        }

        v12 = (v12 + v24);
        if (v13)
        {
          goto LABEL_12;
        }
      }

      else if ([v11 isAttachment])
      {
        [v11 contentToOffset:0x7FFFFFFFFFFFFFFFLL resultOffset:0 downloadIfNecessary:v10 asHTML:1 isComplete:&v25];
        v16 = v5 = 0;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v24 = 0;
        v16 = [v11 contentToOffset:1 resultOffset:&v24 downloadIfNecessary:v10 asHTML:v7 isComplete:&v25];
        v5 = 0;
        v18 = v24;
        if (!v16)
        {
          v18 = 0;
        }

        v12 = (v18 + v12);
        if (v13)
        {
LABEL_12:
          if (v16)
          {
            goto LABEL_21;
          }

          goto LABEL_25;
        }
      }

      v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (v16)
      {
LABEL_21:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v13 addObjectsFromArray:v16];
        }

        else
        {
          [v13 addObject:v16];
        }

        v14 &= v25;
      }

LABEL_25:

      objc_autoreleasePoolPop(v15);
      v19 = [v11 nextSiblingPart];

      v11 = v19;
      if (!v19)
      {
        goto LABEL_28;
      }
    }
  }

  v13 = 0;
  v12 = 0;
  v14 = 1;
LABEL_28:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:v14 & 1];
  [v23 setObject:v20 forKey:@"__MIME_PART_RESULT_IS_COMPLETE"];

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
  [v23 setObject:v21 forKey:@"__MIME_PART_DECODE_RESULT_OFFSET"];

  return v13;
}

- (void)_ensureBodyDataToOffset:(os_log_t)log resultOffset:downloadIfNecessary:isComplete:decoded:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D36B2000, log, OS_LOG_TYPE_ERROR, "Detected possible race, retrying once", buf, 2u);
}

- (uint64_t)setIsGenerated:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MimePart.m" lineNumber:2217 description:@"Clearing generated state not implemented"];
}

@end