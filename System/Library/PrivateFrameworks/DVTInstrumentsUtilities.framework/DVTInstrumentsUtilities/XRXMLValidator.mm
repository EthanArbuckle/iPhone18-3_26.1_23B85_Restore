@interface XRXMLValidator
- (BOOL)validate;
- (XRXMLValidator)initWithSourceURL:(id)l schemaURL:(id)rL;
- (id)findErrorMessageForErrorPtr:(_xmlError *)ptr;
@end

@implementation XRXMLValidator

- (XRXMLValidator)initWithSourceURL:(id)l schemaURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v34.receiver = self;
  v34.super_class = XRXMLValidator;
  v12 = [(XRXMLValidator *)&v34 init];
  if (v12)
  {
    v13 = objc_msgSend_copy(lCopy, v8, v9, v10, v11);
    url = v12->_url;
    v12->_url = v13;

    v19 = objc_msgSend_copy(rLCopy, v15, v16, v17, v18);
    schemaURL = v12->_schemaURL;
    v12->_schemaURL = v19;

    v25 = objc_msgSend_fileHandleWithStandardError(MEMORY[0x277CCA9F8], v21, v22, v23, v24);
    errorFile = v12->_errorFile;
    v12->_errorFile = v25;

    v31 = objc_msgSend_fileHandleWithStandardOutput(MEMORY[0x277CCA9F8], v27, v28, v29, v30);
    diagnosticFile = v12->_diagnosticFile;
    v12->_diagnosticFile = v31;

    objc_storeStrong(&v12->_log, MEMORY[0x277D86228]);
  }

  return v12;
}

- (id)findErrorMessageForErrorPtr:(_xmlError *)ptr
{
  v54 = *MEMORY[0x277D85DE8];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v4 = self->_errorReplacements;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v49, v53, 16);
  if (v6)
  {
    v11 = v6;
    v12 = *v50;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v50 != v12)
      {
        objc_enumerationMutation(v4);
      }

      v14 = *(*(&v49 + 1) + 8 * v13);
      code = ptr->code;
      if (code == 1839)
      {
        break;
      }

      if (code == 1877)
      {
        v16 = objc_msgSend_name(*(*(&v49 + 1) + 8 * v13), v7, v8, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(v16, v17, @"xs:unique", v18, v19);

        p_str2 = &ptr->str2;
        if ((isEqualToString & 1) != 0 || (objc_msgSend_name(v14, v7, v21, v9, v10), v23 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend_isEqualToString_(v23, v24, @"xs:keyref", v25, v26), v23, p_str2 = &ptr->str3, v27))
        {
          v8 = *p_str2;
          if (*p_str2)
          {
            v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v8, v9, v10);
            v33 = objc_msgSend_key(v14, v29, v30, v31, v32);
            v37 = objc_msgSend_containsString_(v28, v34, v33, v35, v36);
LABEL_13:
            v45 = v37;

            if (v45)
            {
              v46 = v14;

              goto LABEL_19;
            }
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v49, v53, 16);
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_17;
      }
    }

    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, ptr->str2, v9, v10);
    v33 = objc_msgSend_key(v14, v38, v39, v40, v41);
    v37 = objc_msgSend_isEqualToString_(v28, v42, v33, v43, v44);
    goto LABEL_13;
  }

LABEL_17:
  v46 = 0;
LABEL_19:

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (BOOL)validate
{
  self->_errorsEmittedCount = 0;
  self->_limitMessageEmitted = 0;
  v3 = objc_opt_new();
  objc_msgSend_setErrorFile_(v3, v4, self->_errorFile, v5, v6);
  objc_msgSend_setLog_(v3, v7, self->_log, v8, v9);
  objc_msgSend_setUrlBeingParsed_(v3, v10, self->_schemaURL, v11, v12);
  v13 = [XRSchemaElementsRecursiveParser alloc];
  v16 = objc_msgSend_initWithElementName_context_(v13, v14, @"xs:schema", v3, v15);
  v20 = objc_msgSend_inputStreamWithURL_(MEMORY[0x277CBEAE0], v17, self->_schemaURL, v18, v19);
  objc_msgSend_parseStream_topLevelParser_delegate_(XRXMLParser, v21, v20, v16, 0);
  if (objc_msgSend_passed(v3, v22, v23, v24, v25))
  {
    v30 = objc_msgSend_errorMessagesReplacements(v16, v26, v27, v28, v29);
    errorReplacements = self->_errorReplacements;
    self->_errorReplacements = v30;

    xmlLockLibrary();
    v36 = objc_msgSend_fileSystemRepresentation(self->_schemaURL, v32, v33, v34, v35);
    v37 = xmlSchemaNewParserCtxt(v36);
    v38 = xmlSchemaParse(v37);
    v39 = xmlSchemaNewValidCtxt(v38);
    xmlSchemaSetValidStructuredErrors(v39, sub_24809FB68, self);
    v44 = objc_msgSend_fileSystemRepresentation(self->_url, v40, v41, v42, v43);
    xmlSchemaValidateSetFilename(v39, v44);
    v45 = *__xmlStructuredError();
    v46 = *__xmlStructuredErrorContext();
    xmlSetStructuredErrorFunc(self, sub_24809FE7C);
    v47 = xmlNewParserCtxt();
    if (v47)
    {
      v52 = v47;
      v62 = v45;
      v53 = objc_msgSend_fileSystemRepresentation(self->_url, v48, v49, v50, v51);
      File = xmlCtxtReadFile(v52, v53, 0, 0);
      xmlFreeParserCtxt(v52);
      if (File)
      {
        xmlFreeDoc(File);
        v59 = objc_msgSend_fileSystemRepresentation(self->_url, v55, v56, v57, v58);
        v60 = xmlSchemaValidateFile(v39, v59, 0) == 0;
      }

      else
      {
        v60 = 0;
      }

      v45 = v62;
    }

    else
    {
      objc_msgSend_xr_writeStringWithFormat_(self->_errorFile, v48, @"Failed to create the XML parsing context", v50, v51);
      v60 = 0;
    }

    xmlSetStructuredErrorFunc(v46, v45);
    xmlSchemaFreeValidCtxt(v39);
    xmlSchemaFree(v38);
    xmlSchemaFreeParserCtxt(v37);
    xmlUnlockLibrary();
  }

  else
  {
    objc_msgSend_xr_writeStringWithFormat_(self->_errorFile, v26, @"Failed to parse the XSD schema for validation", v28, v29);
    v60 = 0;
  }

  return v60;
}

@end