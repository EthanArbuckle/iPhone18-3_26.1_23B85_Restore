@interface XREngineeringTypeDefinitions
+ (BOOL)registerEngineeringTypes:(id)a3;
+ (id)descriptionForImplClass:(unsigned __int8)a3;
+ (id)implementationClassByEngineeringTypeMnemonic;
+ (void)announceUsageOfEnumString:(id)a3 context:(id)a4;
- (NSDate)lastModificationDate;
- (id)checksum;
- (void)enumerateEngineeringTypeDefs:(id)a3;
- (void)parser:(id)a3 didFinishParsingElement:(id)a4;
@end

@implementation XREngineeringTypeDefinitions

+ (id)descriptionForImplClass:(unsigned __int8)a3
{
  if ((a3 - 1) > 5)
  {
    return @"invalid";
  }

  else
  {
    return off_278EFC0F0[(a3 - 1)];
  }
}

+ (id)implementationClassByEngineeringTypeMnemonic
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2480997A0;
  v9[3] = &unk_278EFBF38;
  v4 = v2;
  v10 = v4;
  objc_msgSend_enumerateEngineeringTypeDefs_(v3, v5, v9, v6, v7);

  return v4;
}

- (NSDate)lastModificationDate
{
  v2 = sub_2480998F0();
  v7 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v3, v4, v5, v6);
  v12 = objc_msgSend_path(v2, v8, v9, v10, v11);
  v15 = objc_msgSend_attributesOfItemAtPath_error_(v7, v13, v12, 0, v14);

  v19 = objc_msgSend_objectForKeyedSubscript_(v15, v16, *MEMORY[0x277CCA150], v17, v18);
  v24 = objc_msgSend_copy(v19, v20, v21, v22, v23);

  return v24;
}

- (id)checksum
{
  v2 = sub_2480998F0();
  v5 = objc_msgSend_fileHandleForReadingFromURL_error_(MEMORY[0x277CCA9F8], v3, v2, 0, v4);
  memset(&v42, 0, sizeof(v42));
  CC_MD5_Init(&v42);
  v9 = 0;
  do
  {
    v10 = v9;
    v9 = objc_msgSend_readDataOfLength_(v5, v6, 4096, v7, v8);

    if (!v9)
    {
      break;
    }

    if (objc_msgSend_length(v9, v11, v12, v13, v14))
    {
      if (objc_msgSend_length(v9, v15, v16, v17, v18) > 0x1000)
      {
        sub_2480B3924();
      }

      v19 = v9;
      v24 = objc_msgSend_bytes(v19, v20, v21, v22, v23);
      v29 = objc_msgSend_length(v9, v25, v26, v27, v28);
      CC_MD5_Update(&v42, v24, v29);
    }
  }

  while (objc_msgSend_length(v9, v15, v16, v17, v18) == 4096);
  v30 = objc_alloc(MEMORY[0x277CBEB28]);
  v34 = objc_msgSend_initWithLength_(v30, v31, 16, v32, v33);
  v35 = v34;
  v40 = objc_msgSend_mutableBytes(v35, v36, v37, v38, v39);
  CC_MD5_Final(v40, &v42);

  return v34;
}

- (void)enumerateEngineeringTypeDefs:(id)a3
{
  v4 = a3;
  v17 = sub_2480998F0();
  v5 = MEMORY[0x24C1C5B20](v4);

  etypeDefHandler = self->_etypeDefHandler;
  self->_etypeDefHandler = v5;

  v10 = objc_msgSend_inputStreamWithURL_(MEMORY[0x277CBEAE0], v7, v17, v8, v9);
  v11 = [_XREngineeringTypeDefTopLevel alloc];
  v14 = objc_msgSend_initWithElementName_context_(v11, v12, @"engineering-types", self, v13);
  objc_msgSend_parseStream_topLevelParser_delegate_(XRXMLParser, v15, v10, v14, self);
  v16 = self->_etypeDefHandler;
  self->_etypeDefHandler = 0;
}

- (void)parser:(id)a3 didFinishParsingElement:(id)a4
{
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    (*(self->_etypeDefHandler + 2))();
  }
}

+ (BOOL)registerEngineeringTypes:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_24809E208;
  v10[3] = &unk_278EFBF38;
  v11 = v3;
  v5 = v3;
  objc_msgSend_enumerateEngineeringTypeDefs_(v4, v6, v10, v7, v8);

  return 1;
}

+ (void)announceUsageOfEnumString:(id)a3 context:(id)a4
{
  v12 = a4;
  v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"com.apple.dt.etype.%@", v6, v7, a3);
  v11 = v12;
  if (!v12)
  {
    v11 = XRCapabilityContext;
  }

  objc_msgSend_announceUsedCapability_version_(v11, v8, v10, 1, v9);
}

@end