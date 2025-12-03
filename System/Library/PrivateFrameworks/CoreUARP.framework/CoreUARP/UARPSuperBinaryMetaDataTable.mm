@interface UARPSuperBinaryMetaDataTable
- (BOOL)expandPlist:(id *)plist;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (UARPSuperBinaryMetaDataTable)initWithDictionary:(id)dictionary;
- (UARPSuperBinaryMetaDataTable)initWithPlist:(id)plist;
- (id)createTLVWithType:(unint64_t)type keyValue:(id)value payloadsURL:(id)l isFilepath:(BOOL)filepath;
- (id)initAppleSpecificWithFormatVersion:(id)version;
- (id)initVendorAgnosticWithFormatVersion:(id)version;
- (id)tlvArrayWithKey:(id)key keyValue:(id)value payloadsURL:(id)l error:(id *)error;
- (id)tlvWithKey:(id)key keyValue:(id)value payloadsURL:(id)l error:(id *)error;
- (void)addAnalyticsTLVs2;
- (void)addAppleSpecificTLVs;
- (void)addComposeTLVs2;
- (void)addDeviceSpecificTLVs2;
- (void)addHeySiriModelTLVs2;
- (void)addHostSpecificTLVs;
- (void)addHostSpecificTLVs2;
- (void)addLogsTLVs2;
- (void)addMappedAnalyticsTlvs;
- (void)addPersonalizationTLVs2;
- (void)addSysconfigTlvs;
- (void)addTLV:(unint64_t)v keyValue16:(id)value16 tlvArray:(id)array;
- (void)addTLV:(unint64_t)v keyValue32:(id)value32 tlvArray:(id)array;
- (void)addTLV:(unint64_t)v keyValue64:(id)value64 tlvArray:(id)array;
- (void)addTLV:(unint64_t)v keyValue8:(id)value8 tlvArray:(id)array;
- (void)addTLV:(unint64_t)v keyValueString:(id)string tlvArray:(id)array;
- (void)addTLV:(unint64_t)v versionString:(id)string tlvArray:(id)array;
- (void)addTLVCompressPayloadAlgorithm:(id)algorithm tlvArray:(id)array;
- (void)addTLVs:(unint64_t)vs excludedHwRevisions:(id)revisions tlvArray:(id)array;
- (void)addVoiceAssistTLVs2;
@end

@implementation UARPSuperBinaryMetaDataTable

- (UARPSuperBinaryMetaDataTable)initWithPlist:(id)plist
{
  plistCopy = plist;
  v9.receiver = self;
  v9.super_class = UARPSuperBinaryMetaDataTable;
  v5 = [(UARPSuperBinaryMetaDataTable *)&v9 init];
  if (v5)
  {
    v6 = [plistCopy copy];
    plist = v5->_plist;
    v5->_plist = v6;
  }

  return v5;
}

- (UARPSuperBinaryMetaDataTable)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = UARPSuperBinaryMetaDataTable;
  v5 = [(UARPSuperBinaryMetaDataTable *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    dict = v5->_dict;
    v5->_dict = v6;
  }

  return v5;
}

- (id)initAppleSpecificWithFormatVersion:(id)version
{
  versionCopy = version;
  v11.receiver = self;
  v11.super_class = UARPSuperBinaryMetaDataTable;
  v5 = [(UARPSuperBinaryMetaDataTable *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v5->_values;
    v5->_values = v6;

    v8 = [versionCopy copy];
    formatVersion = v5->_formatVersion;
    v5->_formatVersion = v8;

    if ([(NSNumber *)v5->_formatVersion unsignedIntegerValue]== 1)
    {
      [(UARPSuperBinaryMetaDataTable *)v5 addAppleSpecificTLVs];
      [(UARPSuperBinaryMetaDataTable *)v5 addHostSpecificTLVs];
    }

    else
    {
      [(UARPSuperBinaryMetaDataTable *)v5 addDeviceSpecificTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addHeySiriModelTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addPersonalizationTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addHostSpecificTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addVoiceAssistTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addLogsTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addAnalyticsTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addComposeTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addSysconfigTlvs];
    }
  }

  return v5;
}

- (id)initVendorAgnosticWithFormatVersion:(id)version
{
  versionCopy = version;
  v11.receiver = self;
  v11.super_class = UARPSuperBinaryMetaDataTable;
  v5 = [(UARPSuperBinaryMetaDataTable *)&v11 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    values = v5->_values;
    v5->_values = v6;

    v8 = [versionCopy copy];
    formatVersion = v5->_formatVersion;
    v5->_formatVersion = v8;

    if ([(NSNumber *)v5->_formatVersion unsignedIntegerValue]== 1)
    {
      [(UARPSuperBinaryMetaDataTable *)v5 addHostSpecificTLVs];
    }

    else
    {
      [(UARPSuperBinaryMetaDataTable *)v5 addDeviceSpecificTLVs2];
      [(UARPSuperBinaryMetaDataTable *)v5 addHostSpecificTLVs2];
    }
  }

  return v5;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v7 setObject:self->_values forKey:@"MetaData Values"];
  if ([(NSNumber *)self->_formatVersion unsignedIntegerValue]>= 2)
  {
    [v7 setObject:self->_formatVersion forKey:@"MetaData Format Version"];
  }

  v8 = [v7 writeToURL:lCopy error:error];

  return v8;
}

- (BOOL)expandPlist:(id *)plist
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithContentsOfURL:self->_plist];
  v6 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"cannot expand metadata plist"];
    v14 = objc_opt_new();
    [v14 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA450]];
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.uarp" code:5 userInfo:v14];
    if (plist)
    {
      v15 = v15;
      *plist = v15;
    }

    goto LABEL_7;
  }

  v7 = MEMORY[0x277CBEB18];
  v8 = [v5 objectForKeyedSubscript:@"MetaData Values"];
  v9 = [v7 arrayWithArray:v8];
  values = self->_values;
  self->_values = v9;

  v11 = [v6 objectForKeyedSubscript:@"MetaData Format Version"];
  formatVersion = self->_formatVersion;
  self->_formatVersion = v11;

  v13 = self->_formatVersion;
  if (!v13)
  {
    self->_formatVersion = &unk_2859CA040;
LABEL_7:
  }

  return v6 != 0;
}

- (id)tlvWithKey:(id)key keyValue:(id)value payloadsURL:(id)l error:(id *)error
{
  v6 = [(UARPSuperBinaryMetaDataTable *)self tlvArrayWithKey:key keyValue:value payloadsURL:l error:error];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)tlvArrayWithKey:(id)key keyValue:(id)value payloadsURL:(id)l error:(id *)error
{
  keyCopy = key;
  valueCopy = value;
  lCopy = l;
  v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(NSMutableArray *)self->_values count];
  if (!v9)
  {
    goto LABEL_82;
  }

  v10 = v9;
  v11 = 0;
  v51 = v9;
  v12 = 0x277CCA000uLL;
  v13 = 0x277CBE000uLL;
  while (1)
  {
    v14 = [(NSMutableArray *)self->_values objectAtIndex:v11];
    v15 = *(v12 + 3240);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v14;
      bOOLValue = 0;
      v18 = 0;
      unsignedIntegerValue = v11;
    }

    else
    {
      v20 = *(v13 + 2752);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = 0;
        v16 = 0;
        goto LABEL_12;
      }

      v21 = v12;
      selfCopy = self;
      v23 = v13;
      v24 = v14;
      v25 = [v24 objectForKey:@"Filepath"];
      bOOLValue = [v25 BOOLValue];
      v16 = [v24 objectForKey:@"Name"];
      v18 = [v24 objectForKey:@"Value"];

      unsignedIntegerValue = v11;
      if (v18)
      {
        unsignedIntegerValue = [v18 unsignedIntegerValue];
      }

      v13 = v23;
      self = selfCopy;
      v12 = v21;
      v10 = v51;
    }

    if ([v16 isEqualToString:keyCopy])
    {
      break;
    }

LABEL_12:

    if (v10 == ++v11)
    {
      goto LABEL_82;
    }
  }

  if (unsignedIntegerValue > 3291140095)
  {
    if (unsignedIntegerValue > 3436347647)
    {
      switch(unsignedIntegerValue)
      {
        case 3436347648:
          selfCopy9 = self;
          v28 = 3436347648;
          v29 = 0;
          goto LABEL_80;
        case 3436347649:
          v28 = 3436347649;
          selfCopy9 = self;
          v29 = 1;
          goto LABEL_80;
        case 3436347650:
          v28 = 3436347650;
          selfCopy9 = self;
          v29 = 2;
          goto LABEL_80;
        case 3436347651:
          v28 = 3436347651;
          selfCopy9 = self;
          v29 = 3;
          goto LABEL_80;
        case 3436347652:
          v28 = 3436347652;
          selfCopy9 = self;
          v29 = 4;
          goto LABEL_80;
        case 3436347653:
          v28 = 3436347653;
          selfCopy9 = self;
          v29 = 5;
          goto LABEL_80;
        case 3436347654:
          v28 = 3436347654;
          selfCopy9 = self;
          v29 = 6;
          goto LABEL_80;
        case 3436347655:
          v28 = 3436347655;
          selfCopy9 = self;
          v29 = 7;
LABEL_80:
          [(UARPSuperBinaryMetaDataTable *)selfCopy9 addTLV:v28 legacyTLV:v29 keyValue:valueCopy tlvArray:v49 payloadsURL:lCopy isFilepath:bOOLValue];
          goto LABEL_81;
        case 3436347656:
        case 3436347657:
        case 3436347658:
        case 3436347665:
        case 3436347667:
        case 3436347668:
        case 3436347669:
        case 3436347672:
        case 3436347677:
          goto LABEL_65;
        case 3436347659:
        case 3436347661:
        case 3436347662:
        case 3436347664:
        case 3436347666:
        case 3436347671:
        case 3436347675:
          goto LABEL_57;
        case 3436347660:
          [(UARPSuperBinaryMetaDataTable *)self addTLVCompressPayloadAlgorithm:valueCopy tlvArray:v49];
          goto LABEL_81;
        case 3436347663:
        case 3436347673:
        case 3436347676:
          goto LABEL_46;
        case 3436347670:
          goto LABEL_81;
        case 3436347674:
          goto LABEL_51;
        case 3436347678:
          v39 = *(v12 + 3240);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_81;
          }

          v38 = valueCopy;
          v40 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v38 relativeToURL:lCopy];
          if (v40)
          {
            v41 = *(v12 + 3240);
            v53 = 0;
            v42 = [v41 stringWithContentsOfURL:v40 encoding:4 error:&v53];
            v43 = v53;
            if (v43)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                [UARPSuperBinaryMetaDataTable tlvArrayWithKey:v43 keyValue:? payloadsURL:? error:?];
              }
            }

            else
            {
              whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
              v47 = [v42 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

              [(UARPSuperBinaryMetaDataTable *)self addTLV:3436347678 keyValueString:v47 tlvArray:v49];
            }
          }

          break;
        default:
          if (unsignedIntegerValue == 4042160641)
          {
            goto LABEL_59;
          }

          v30 = 4042160643;
          goto LABEL_50;
      }

      goto LABEL_63;
    }

    if (unsignedIntegerValue == 3291140096 || unsignedIntegerValue == 3291140105)
    {
      goto LABEL_46;
    }

    if (unsignedIntegerValue == 3291140106)
    {
      [(UARPSuperBinaryMetaDataTable *)self addTLVs:3291140106 excludedHwRevisions:valueCopy tlvArray:v49];
      goto LABEL_81;
    }

LABEL_65:
    selfCopy12 = self;
    v32 = unsignedIntegerValue;
    v34 = v49;
    v33 = valueCopy;
    v35 = lCopy;
    v36 = bOOLValue;
    goto LABEL_66;
  }

  if (unsignedIntegerValue <= 2293403931)
  {
    if (unsignedIntegerValue > 1619725823)
    {
      if (unsignedIntegerValue <= 1619725830)
      {
        if (unsignedIntegerValue == 1619725824)
        {
          goto LABEL_57;
        }

        v37 = 1619725827;
        goto LABEL_56;
      }

      if (unsignedIntegerValue == 1619725831)
      {
        goto LABEL_58;
      }

      if (unsignedIntegerValue != 1619725832)
      {
        if (unsignedIntegerValue == 2293403931)
        {
          [(UARPSuperBinaryMetaDataTable *)self addTLV:2293403931 keyValue64:valueCopy tlvArray:v49];
          goto LABEL_81;
        }

        goto LABEL_65;
      }
    }

    else
    {
      if (unsignedIntegerValue > 76079622)
      {
        if (unsignedIntegerValue != 76079623)
        {
          if (unsignedIntegerValue == 538280448)
          {
LABEL_59:
            selfCopy12 = self;
            v32 = unsignedIntegerValue;
            v34 = v49;
            v33 = valueCopy;
            v35 = lCopy;
            v36 = 0;
            goto LABEL_66;
          }

          if (unsignedIntegerValue == 538280449)
          {
            goto LABEL_46;
          }

          goto LABEL_65;
        }

LABEL_58:
        [(UARPSuperBinaryMetaDataTable *)self addTLV:unsignedIntegerValue versionString:valueCopy tlvArray:v49];
        goto LABEL_81;
      }

      if (unsignedIntegerValue != 76079616)
      {
        v37 = 76079619;
LABEL_56:
        if (unsignedIntegerValue != v37)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_57:
    [(UARPSuperBinaryMetaDataTable *)self addTLV:unsignedIntegerValue keyValue16:valueCopy tlvArray:v49];
    goto LABEL_81;
  }

  if (unsignedIntegerValue > 3166200576)
  {
    if (unsignedIntegerValue > 3166200579)
    {
      if ((unsignedIntegerValue - 3166200581) >= 2)
      {
        if (unsignedIntegerValue == 3166200580)
        {
          [(UARPSuperBinaryMetaDataTable *)self composeRequiredPersonalizationOptions:valueCopy tlvArray:v49];
          goto LABEL_81;
        }

        v30 = 3166200583;
LABEL_50:
        if (unsignedIntegerValue == v30)
        {
LABEL_51:
          [(UARPSuperBinaryMetaDataTable *)self addTLV:unsignedIntegerValue keyValue8:valueCopy tlvArray:v49];
          goto LABEL_81;
        }

        goto LABEL_65;
      }

      selfCopy12 = self;
      v32 = unsignedIntegerValue;
      v34 = v49;
      v33 = valueCopy;
      v35 = lCopy;
      v36 = 1;
LABEL_66:
      [(UARPSuperBinaryMetaDataTable *)selfCopy12 addTLV:v32 keyValue:v33 tlvArray:v34 payloadsURL:v35 isFilepath:v36];
      goto LABEL_81;
    }

    if ((unsignedIntegerValue - 3166200577) < 2)
    {
      [(UARPSuperBinaryMetaDataTable *)self composeMeasuredPayloads:valueCopy tlvType:unsignedIntegerValue tlvArray:v49 payloadsURL:lCopy];
      goto LABEL_81;
    }

    v26 = 25347;
LABEL_61:
    if (unsignedIntegerValue == (v26 | 0xBCB80000))
    {
      v38 = UARPPayloadHashAlgorithmStringToValue(valueCopy);
      [(UARPSuperBinaryMetaDataTable *)self addTLV:unsignedIntegerValue keyValue16:v38 tlvArray:v49];
LABEL_63:

      goto LABEL_81;
    }

    goto LABEL_65;
  }

  if ((unsignedIntegerValue - 2293403932) > 0x17)
  {
    goto LABEL_21;
  }

  if (((1 << (unsignedIntegerValue - 28)) & 0xE01460) != 0)
  {
    goto LABEL_51;
  }

  if (unsignedIntegerValue == 2293403932)
  {
    [(UARPSuperBinaryMetaDataTable *)self composeMatchingPayloads:valueCopy tlvArray:v49];
  }

  else
  {
    if (unsignedIntegerValue != 2293403941)
    {
LABEL_21:
      v26 = 25344;
      goto LABEL_61;
    }

LABEL_46:
    [(UARPSuperBinaryMetaDataTable *)self addTLV:unsignedIntegerValue keyValue32:valueCopy tlvArray:v49];
  }

LABEL_81:

LABEL_82:
  v44 = [MEMORY[0x277CBEA60] arrayWithArray:v49];

  return v44;
}

- (void)addAppleSpecificTLVs
{
  [(NSMutableArray *)self->_values addObject:@"Payload Filepath"];
  [(NSMutableArray *)self->_values addObject:@"Payload Long Name"];
  [(NSMutableArray *)self->_values addObject:@"Minimum Required Version"];
  [(NSMutableArray *)self->_values addObject:@"Ignore Version"];
  [(NSMutableArray *)self->_values addObject:@"Urgent Update"];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Payload Certificate" forKeyedSubscript:@"Name"];
  v4 = MEMORY[0x277CBEC38];
  [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v3];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Payload Signature" forKeyedSubscript:@"Name"];
  [v5 setObject:v4 forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"Payload Hash" forKeyedSubscript:@"Name"];
  [v6 setObject:v4 forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v6];
  [(NSMutableArray *)self->_values addObject:@"Personalization Required"];
  [(NSMutableArray *)self->_values addObject:@"Personalization Payload Tag"];
  [(NSMutableArray *)self->_values addObject:@"Personalization SuperBinary AssetID"];
  [(NSMutableArray *)self->_values addObject:@"Personalization Manifest Prefix"];
}

- (void)addDeviceSpecificTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Payload Filepath" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CA058 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Payload Long Name" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CA070 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Minimum Required Version" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CA088 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"Ignore Version" forKeyedSubscript:@"Name"];
  [v6 setObject:&unk_2859CA0A0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v7 setObject:@"Urgent Update" forKeyedSubscript:@"Name"];
  [v7 setObject:&unk_2859CA0B8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v8 setObject:@"Payload Certificate" forKeyedSubscript:@"Name"];
  [v8 setObject:&unk_2859CA0D0 forKeyedSubscript:@"Value"];
  v9 = MEMORY[0x277CBEC38];
  [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v8];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v10 setObject:@"Payload Signature" forKeyedSubscript:@"Name"];
  [v10 setObject:&unk_2859CA0E8 forKeyedSubscript:@"Value"];
  [v10 setObject:v9 forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v10];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v11 setObject:@"Payload Hash" forKeyedSubscript:@"Name"];
  [v11 setObject:&unk_2859CA100 forKeyedSubscript:@"Value"];
  [v11 setObject:v9 forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v11];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v12 setObject:@"Payload Digest" forKeyedSubscript:@"Name"];
  [v12 setObject:&unk_2859CA118 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v13 setObject:@"Minimum Battery Level" forKeyedSubscript:@"Name"];
  [v13 setObject:&unk_2859CA130 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v13];
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v14 setObject:@"Trigger Battery Level" forKeyedSubscript:@"Name"];
  [v14 setObject:&unk_2859CA148 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v14];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v15 setObject:@"Payload Compression ChunkSize" forKeyedSubscript:@"Name"];
  [v15 setObject:&unk_2859CA160 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v15];
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v16 setObject:@"Payload Compression Algorithm" forKeyedSubscript:@"Name"];
  [v16 setObject:&unk_2859CA178 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v16];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v17 setObject:@"Flash Partition Bitmap" forKeyedSubscript:@"Name"];
  [v17 setObject:&unk_2859CA190 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v17];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v18 setObject:@"Flash Partition Boot" forKeyedSubscript:@"Name"];
  [v18 setObject:&unk_2859CA1A8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v18];
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v19 setObject:@"Compressed Headers Payload Index" forKeyedSubscript:@"Name"];
  [v19 setObject:&unk_2859CA1C0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v19];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v20 setObject:@"Erase Option" forKeyedSubscript:@"Name"];
  [v20 setObject:&unk_2859CA1D8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v20];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v21 setObject:@"Payload Expand Filename" forKeyedSubscript:@"Name"];
  [v21 setObject:&unk_2859CA1F0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v21];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v22 setObject:@"Payload Hash Algorithm" forKeyedSubscript:@"Name"];
  [v22 setObject:&unk_2859CA208 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v22];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v23 setObject:@"Compressed Headers" forKeyedSubscript:@"Name"];
  [v23 setObject:&unk_2859CA220 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v23];
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v24 setObject:@"Payload Description" forKeyedSubscript:@"Name"];
  [v24 setObject:&unk_2859CA238 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v24];
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v25 setObject:@"Payload Signature (Development)" forKeyedSubscript:@"Name"];
  [v25 setObject:&unk_2859CA250 forKeyedSubscript:@"Value"];
  [v25 setObject:v9 forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v25];
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v26 setObject:@"Device Specific Data" forKeyedSubscript:@"Name"];
  [v26 setObject:&unk_2859CA268 forKeyedSubscript:@"Value"];
  [v26 setObject:v9 forKeyedSubscript:@"Filepath"];
  [(NSMutableArray *)self->_values addObject:v26];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v27 setObject:@"MetaData Hash Algorithm" forKeyedSubscript:@"Name"];
  [v27 setObject:&unk_2859CA280 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v27];
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v28 setObject:@"MetaData Hash" forKeyedSubscript:@"Name"];
  [v28 setObject:&unk_2859CA298 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v28];
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v29 setObject:@"Uncompressed Payload Length" forKeyedSubscript:@"Name"];
  [v29 setObject:&unk_2859CA2B0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v29];
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v30 setObject:@"No Compressed Headers" forKeyedSubscript:@"Name"];
  [v30 setObject:&unk_2859CA2C8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v30];
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v31 setObject:@"Payload Ordered Index" forKeyedSubscript:@"Name"];
  [v31 setObject:&unk_2859CA2E0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v31];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v32 setObject:@"Flash Section Length" forKeyedSubscript:@"Name"];
  [v32 setObject:&unk_2859CA2F8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v32];
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v33 setObject:@"Vendor Version String File" forKeyedSubscript:@"Name"];
  [v33 setObject:&unk_2859CA310 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v33];
}

- (void)addHostSpecificTLVs
{
  [(NSMutableArray *)self->_values addObject:@"Host Minimum Battery Level"];
  [(NSMutableArray *)self->_values addObject:@"Host Inactive To Stage Asset"];
  [(NSMutableArray *)self->_values addObject:@"Host Inactive To Apply Asset"];
  [(NSMutableArray *)self->_values addObject:@"Host Network Delay"];
  values = self->_values;

  [(NSMutableArray *)values addObject:@"Host Reconnect After Apply"];
}

- (void)addHeySiriModelTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"HeySiri Model Type" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CA328 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"HeySiri Model Locale" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CA340 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"HeySiri Model Hash" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CA358 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"HeySiri Model Role" forKeyedSubscript:@"Name"];
  [v6 setObject:&unk_2859CA370 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v7 setObject:@"HeySiri Model Digest" forKeyedSubscript:@"Name"];
  [v7 setObject:&unk_2859CA388 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v8 setObject:@"HeySiri Model Signature" forKeyedSubscript:@"Name"];
  [v8 setObject:&unk_2859CA3A0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v9 setObject:@"HeySiri Model Certificate" forKeyedSubscript:@"Name"];
  [v9 setObject:&unk_2859CA3B8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v10 setObject:@"HeySiri Model Engine Version" forKeyedSubscript:@"Name"];
  [v10 setObject:&unk_2859CA3D0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v10];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v11 setObject:@"HeySiri Model Engine Type" forKeyedSubscript:@"Name"];
  [v11 setObject:&unk_2859CA3E8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v11];
}

- (void)addVoiceAssistTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Voice Assist Type" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CA400 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Voice Assist Locale" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CA418 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Voice Assist Hash" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CA430 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"Voice Assist Role" forKeyedSubscript:@"Name"];
  [v6 setObject:&unk_2859CA448 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v7 setObject:@"Voice Assist Digest" forKeyedSubscript:@"Name"];
  [v7 setObject:&unk_2859CA460 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v8 setObject:@"Voice Assist Signature" forKeyedSubscript:@"Name"];
  [v8 setObject:&unk_2859CA478 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v9 setObject:@"Voice Assist Certificate" forKeyedSubscript:@"Name"];
  [v9 setObject:&unk_2859CA490 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v10 setObject:@"Voice Assist Engine Version" forKeyedSubscript:@"Name"];
  [v10 setObject:&unk_2859CA4A8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v10];
}

- (void)addPersonalizationTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Personalization Required" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CA4C0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Personalization Payload Tag" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CA4D8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Personalization SuperBinary AssetID" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CA4F0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"Personalization Manifest Prefix" forKeyedSubscript:@"Name"];
  [v6 setObject:&unk_2859CA508 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v7 setObject:@"Personalization Board ID" forKeyedSubscript:@"Name"];
  [v7 setObject:&unk_2859CA520 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v8 setObject:@"Personalization Chip ID" forKeyedSubscript:@"Name"];
  [v8 setObject:&unk_2859CA538 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v9 setObject:@"Personalization ECID" forKeyedSubscript:@"Name"];
  [v9 setObject:&unk_2859CA550 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v10 setObject:@"Personalization ECID Data" forKeyedSubscript:@"Name"];
  [v10 setObject:&unk_2859CA568 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v10];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v11 setObject:@"Personalization Nonce" forKeyedSubscript:@"Name"];
  [v11 setObject:&unk_2859CA580 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v11];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v12 setObject:@"Personalization Nonce Hash" forKeyedSubscript:@"Name"];
  [v12 setObject:&unk_2859CA598 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v13 setObject:@"Personalization Security Domain" forKeyedSubscript:@"Name"];
  [v13 setObject:&unk_2859CA5B0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v13];
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v14 setObject:@"Personalization Security Mode" forKeyedSubscript:@"Name"];
  [v14 setObject:&unk_2859CA5C8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v14];
  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v15 setObject:@"Personalization Production Mode" forKeyedSubscript:@"Name"];
  [v15 setObject:&unk_2859CA5E0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v15];
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v16 setObject:@"Personalization Chip Epoch" forKeyedSubscript:@"Name"];
  [v16 setObject:&unk_2859CA5F8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v16];
  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v17 setObject:@"Personalization Enable Mix Match" forKeyedSubscript:@"Name"];
  [v17 setObject:&unk_2859CA610 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v17];
  v18 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v18 setObject:@"Personalization SuperBinary Payload Index" forKeyedSubscript:@"Name"];
  [v18 setObject:&unk_2859CA628 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v18];
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v19 setObject:@"Personalization Chip Revision" forKeyedSubscript:@"Name"];
  [v19 setObject:&unk_2859CA640 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v19];
  v20 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v20 setObject:@"Personalization FTAB Payload" forKeyedSubscript:@"Name"];
  [v20 setObject:&unk_2859CA658 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v20];
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v21 setObject:@"Personalization FTAB Payload Tag" forKeyedSubscript:@"Name"];
  [v21 setObject:&unk_2859CA670 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v21];
  v22 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v22 setObject:@"Personalization FTAB Payload Longname" forKeyedSubscript:@"Name"];
  [v22 setObject:&unk_2859CA688 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v22];
  v23 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v23 setObject:@"Personalization FTAB Payload Digest" forKeyedSubscript:@"Name"];
  [v23 setObject:&unk_2859CA6A0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v23];
  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v24 setObject:@"Personalization FTAB Payload Hash Algorithm" forKeyedSubscript:@"Name"];
  [v24 setObject:&unk_2859CA6B8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v24];
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v25 setObject:@"Personalization FTAB Payload Security Mode" forKeyedSubscript:@"Name"];
  [v25 setObject:&unk_2859CA6D0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v25];
  v26 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v26 setObject:@"Personalization FTAB Payload Production Mode" forKeyedSubscript:@"Name"];
  [v26 setObject:&unk_2859CA6E8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v26];
  v27 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v27 setObject:@"Personalization FTAB Payload Trusted" forKeyedSubscript:@"Name"];
  [v27 setObject:&unk_2859CA700 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v27];
  v28 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v28 setObject:@"Personalization SoC Live Nonce" forKeyedSubscript:@"Name"];
  [v28 setObject:&unk_2859CA718 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v28];
  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v29 setObject:@"Personalization FTAB Payload Security Mode Host Override" forKeyedSubscript:@"Name"];
  [v29 setObject:&unk_2859CA730 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v29];
  v30 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v30 setObject:@"Personalization FTAB Payload Production Mode Host Override" forKeyedSubscript:@"Name"];
  [v30 setObject:&unk_2859CA748 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v30];
  v31 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v31 setObject:@"Personalization Payload Hash Algorithm" forKeyedSubscript:@"Name"];
  [v31 setObject:&unk_2859CA6B8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v31];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v32 setObject:@"Personalization Payload Longname" forKeyedSubscript:@"Name"];
  [v32 setObject:&unk_2859CA688 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v32];
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v33 setObject:@"Personalization Payload Effective Security Mode" forKeyedSubscript:@"Name"];
  [v33 setObject:&unk_2859CA6D0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v33];
  v34 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v34 setObject:@"Personalization Payload Effective Production Mode" forKeyedSubscript:@"Name"];
  [v34 setObject:&unk_2859CA6E8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v34];
  v35 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v35 setObject:@"Personalization Payload Trusted" forKeyedSubscript:@"Name"];
  [v35 setObject:&unk_2859CA700 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v35];
  v36 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v36 setObject:@"Personalization Payload Digest" forKeyedSubscript:@"Name"];
  [v36 setObject:&unk_2859CA6A0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v36];
  v37 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v37 setObject:@"Personalization Board ID (64 bits)" forKeyedSubscript:@"Name"];
  [v37 setObject:&unk_2859CA760 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v37];
  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v38 setObject:@"Personalization Matching Data" forKeyedSubscript:@"Name"];
  [v38 setObject:&unk_2859CA778 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v38];
  v39 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v39 setObject:@"Personalization Matching Data Product Revision Minimum" forKeyedSubscript:@"Name"];
  [v39 setObject:&unk_2859CA790 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v39];
  v40 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v40 setObject:@"Personalization Matching Data Product Revision Maximum" forKeyedSubscript:@"Name"];
  [v40 setObject:&unk_2859CA7A8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v40];
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v41 setObject:@"Personalization Matching Data Payload Tags" forKeyedSubscript:@"Name"];
  [v41 setObject:&unk_2859CA7C0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v41];
  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v42 setObject:@"Personalization Digest List Size" forKeyedSubscript:@"Name"];
  [v42 setObject:&unk_2859CA7D8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v42];
  v43 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v43 setObject:@"Personalization Prefix Needs Logical Unit Number" forKeyedSubscript:@"Name"];
  [v43 setObject:&unk_2859CA7F0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v43];
  v44 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v44 setObject:@"Personalization Suffix Needs Logical Unit Number" forKeyedSubscript:@"Name"];
  [v44 setObject:&unk_2859CA808 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v44];
  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v45 setObject:@"Personalization Payload Demotion Security Mode" forKeyedSubscript:@"Name"];
  [v45 setObject:&unk_2859CA820 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v45];
  v46 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v46 setObject:@"Personalization Payload Demotion Production Mode" forKeyedSubscript:@"Name"];
  [v46 setObject:&unk_2859CA838 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v46];
  v47 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v47 setObject:@"Personalization Logical Unit Number" forKeyedSubscript:@"Name"];
  [v47 setObject:&unk_2859CA850 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v47];
  v48 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v48 setObject:@"Personalization Ticket Needs Logical Unit Number" forKeyedSubscript:@"Name"];
  [v48 setObject:&unk_2859CA868 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v48];
  v49 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v49 setObject:@"Personalization More Requests to Follow" forKeyedSubscript:@"Name"];
  [v49 setObject:&unk_2859CA880 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v49];
  v50 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v50 setObject:@"Host Personalization Required" forKeyedSubscript:@"Name"];
  [v50 setObject:&unk_2859CA898 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v50];
  v51 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v51 setObject:@"Required Personalization Option" forKeyedSubscript:@"Name"];
  [v51 setObject:&unk_2859CA8B0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v51];
  v52 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v52 setObject:@"Personalized Manifest" forKeyedSubscript:@"Name"];
  [v52 setObject:&unk_2859CA8C8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v52];
  v53 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v53 setObject:@"Personalization Life" forKeyedSubscript:@"Name"];
  [v53 setObject:&unk_2859CA8E0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v53];
  v54 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v54 setObject:@"Personalization Provisioning" forKeyedSubscript:@"Name"];
  [v54 setObject:&unk_2859CA8F8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v54];
  v55 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v55 setObject:@"Personalization Manifest Epoch" forKeyedSubscript:@"Name"];
  [v55 setObject:&unk_2859CA910 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v55];
  v56 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v56 setObject:@"Personalization Manifest Suffix" forKeyedSubscript:@"Name"];
  [v56 setObject:&unk_2859CA928 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v56];
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v57 setObject:@"Personalization FTAB Payload Digest Filename" forKeyedSubscript:@"Name"];
  [v57 setObject:&unk_2859CA940 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v57];
  v58 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v58 setObject:@"Personalization Payload Digest Filename" forKeyedSubscript:@"Name"];
  [v58 setObject:&unk_2859CA940 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v58];
}

- (void)addHostSpecificTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Host Minimum Battery Level" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CA958 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Host Inactive To Stage Asset" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CA970 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Host Inactive To Apply Asset" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CA988 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"Host Network Delay" forKeyedSubscript:@"Name"];
  [v6 setObject:&unk_2859CA9A0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v7 setObject:@"Host Reconnect After Apply" forKeyedSubscript:@"Name"];
  [v7 setObject:&unk_2859CA9B8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v8 setObject:@"Minimum iOS Version" forKeyedSubscript:@"Name"];
  [v8 setObject:&unk_2859CA9D0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v9 setObject:@"Minimum macOS Version" forKeyedSubscript:@"Name"];
  [v9 setObject:&unk_2859CA9E8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v10 setObject:@"Minimum tvOS Version" forKeyedSubscript:@"Name"];
  [v10 setObject:&unk_2859CAA00 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v10];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v11 setObject:@"Minimum watchOS Version" forKeyedSubscript:@"Name"];
  [v11 setObject:&unk_2859CAA18 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v11];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v12 setObject:@"Host Trigger Battery Level" forKeyedSubscript:@"Name"];
  [v12 setObject:&unk_2859CAA30 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v12];
  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v13 setObject:@"Excluded Hardware Version" forKeyedSubscript:@"Name"];
  [v13 setObject:&unk_2859CAA48 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v13];
}

- (void)addLogsTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Log Friendly Name" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CAA60 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Log Apple Model Number" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CAA78 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Log Serial Number" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CAA90 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
}

- (void)addAnalyticsTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Analytics Event Name" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CAAA8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Analytics Payload Type" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CAAC0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
}

- (void)addComposeTLVs2
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Compose Payload Hash Algorithm" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CAAD8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Compose Measured Payloads" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CAAF0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Compose Measured Payloads (Non-FTAB)" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CAB08 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v6 setObject:@"Compose MetaData Hash Algorithm" forKeyedSubscript:@"Name"];
  [v6 setObject:&unk_2859CAB20 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v6];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v7 setObject:@"Personalization Options Required" forKeyedSubscript:@"Name"];
  [v7 setObject:&unk_2859CAB38 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v7];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v8 setObject:@"Version File" forKeyedSubscript:@"Name"];
  [v8 setObject:&unk_2859CAB50 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v8];
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v9 setObject:@"Version BVER File" forKeyedSubscript:@"Name"];
  [v9 setObject:&unk_2859CAB68 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v9];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v10 setObject:@"Property List Payload" forKeyedSubscript:@"Name"];
  [v10 setObject:&unk_2859CAB80 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v10];
}

- (void)addMappedAnalyticsTlvs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Log Apple Model Number" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CAB98 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Mapped Analytics Event ID" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CABB0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
}

- (void)addSysconfigTlvs
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:@"Sysconfig Region Code" forKeyedSubscript:@"Name"];
  [v3 setObject:&unk_2859CABC8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v3];
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v4 setObject:@"Sysconfig Manufacturing Part Number" forKeyedSubscript:@"Name"];
  [v4 setObject:&unk_2859CABE0 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v4];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);

  [v5 setObject:@"Sysconfig Regulatory Model Number" forKeyedSubscript:@"Name"];
  [v5 setObject:&unk_2859CABF8 forKeyedSubscript:@"Value"];
  [(NSMutableArray *)self->_values addObject:v5];
}

- (id)createTLVWithType:(unint64_t)type keyValue:(id)value payloadsURL:(id)l isFilepath:(BOOL)filepath
{
  filepathCopy = filepath;
  valueCopy = value;
  lCopy = l;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && filepathCopy)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:valueCopy relativeToURL:lCopy];
    v12 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type urlValue:v11];

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type stringValue:valueCopy];
LABEL_10:
    v12 = v13;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = -[UARPSuperBinaryAssetTLV initWithType:unsignedInt32:]([UARPSuperBinaryAssetTLV alloc], "initWithType:unsignedInt32:", type, [valueCopy unsignedLongValue]);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [[UARPSuperBinaryAssetTLV alloc] initWithType:type dataValue:valueCopy];
    goto LABEL_10;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)addTLV:(unint64_t)v keyValue8:(id)value8 tlvArray:(id)array
{
  value8Copy = value8;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = -[UARPSuperBinaryAssetTLV initWithType:unsignedInt8:]([UARPSuperBinaryAssetTLV alloc], "initWithType:unsignedInt8:", v, [value8Copy unsignedCharValue]);
    [arrayCopy addObject:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLV:keyValue8:tlvArray:];
  }
}

- (void)addTLV:(unint64_t)v keyValue16:(id)value16 tlvArray:(id)array
{
  value16Copy = value16;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = -[UARPSuperBinaryAssetTLV initWithType:unsignedInt16:]([UARPSuperBinaryAssetTLV alloc], "initWithType:unsignedInt16:", v, [value16Copy unsignedShortValue]);
    [arrayCopy addObject:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLV:keyValue8:tlvArray:];
  }
}

- (void)addTLV:(unint64_t)v keyValue32:(id)value32 tlvArray:(id)array
{
  value32Copy = value32;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = -[UARPSuperBinaryAssetTLV initWithType:unsignedInt32:]([UARPSuperBinaryAssetTLV alloc], "initWithType:unsignedInt32:", v, [value32Copy unsignedLongValue]);
    [arrayCopy addObject:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLV:keyValue8:tlvArray:];
  }
}

- (void)addTLV:(unint64_t)v keyValue64:(id)value64 tlvArray:(id)array
{
  value64Copy = value64;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = -[UARPSuperBinaryAssetTLV initWithType:unsignedInt64:]([UARPSuperBinaryAssetTLV alloc], "initWithType:unsignedInt64:", v, [value64Copy unsignedLongLongValue]);
    [arrayCopy addObject:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLV:keyValue8:tlvArray:];
  }
}

- (void)addTLV:(unint64_t)v keyValueString:(id)string tlvArray:(id)array
{
  stringCopy = string;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [[UARPSuperBinaryAssetTLV alloc] initWithType:v stringValue:stringCopy];
    [arrayCopy addObject:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLV:keyValueString:tlvArray:];
  }
}

- (void)addTLVCompressPayloadAlgorithm:(id)algorithm tlvArray:(id)array
{
  algorithmCopy = algorithm;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [UARPSuperBinaryMetaDataTable compressionAlgorithmFromString:algorithmCopy];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v8];
    [(UARPSuperBinaryMetaDataTable *)self addTLV:3436347660 keyValue32:v9 tlvArray:arrayCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLVCompressPayloadAlgorithm:tlvArray:];
  }
}

- (void)addTLV:(unint64_t)v versionString:(id)string tlvArray:(id)array
{
  stringCopy = string;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10[0] = 0;
    v10[1] = 0;
    [UARPSuperBinaryAsset versionFromString:stringCopy version:v10];
    v9 = [[UARPSuperBinaryAssetTLV alloc] initWithType:v version:v10];
    [arrayCopy addObject:v9];
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLV:keyValueString:tlvArray:];
  }
}

- (void)addTLVs:(unint64_t)vs excludedHwRevisions:(id)revisions tlvArray:(id)array
{
  v23 = *MEMORY[0x277D85DE8];
  revisionsCopy = revisions;
  arrayCopy = array;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = revisionsCopy;
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        v13 = 0;
        do
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * v13);
          v15 = [UARPSuperBinaryAssetTLV alloc];
          v16 = [(UARPSuperBinaryAssetTLV *)v15 initWithType:vs stringValue:v14, v18];
          [arrayCopy addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [UARPSuperBinaryMetaDataTable addTLVs:excludedHwRevisions:tlvArray:];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)tlvArrayWithKey:(uint64_t)a1 keyValue:payloadsURL:error:.cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[UARPSuperBinaryMetaDataTable tlvArrayWithKey:keyValue:payloadsURL:error:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Failed to read vendor version string from file with error %@", &v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addTLV:keyValue8:tlvArray:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], v0, "invalid plist, trying to use non-number for TLV %lx", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addTLV:keyValueString:tlvArray:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], v0, "invalid plist, trying to use non-string for TLV %lx", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addTLVs:excludedHwRevisions:tlvArray:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_247AA7000, MEMORY[0x277D86220], v0, "invalid plist, trying to use non-array for TLV %lx", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end