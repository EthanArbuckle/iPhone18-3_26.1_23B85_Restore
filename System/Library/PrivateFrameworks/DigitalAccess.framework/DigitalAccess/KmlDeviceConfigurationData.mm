@interface KmlDeviceConfigurationData
- (KmlDeviceConfigurationData)initWithData:(id)data outerTag:(BOOL)tag;
- (id)asData;
- (id)readerBleConfigWithTag:(void *)tag target:;
- (id)readerSupportedTransports;
- (uint64_t)parseDeviceConfigData:(int)data outerTag:;
- (unsigned)sharingConfigToSend:(unsigned __int8 *)send;
- (void)parseKeySharingConfigData:(_BYTE *)data;
- (void)parseOemSpecificContent:(uint64_t)content;
- (void)parseReaderBleConfigData:(uint64_t)data;
- (void)parseSharingInAChainDeviceConfigMailboxSettingData;
- (void)parseSupportedRadiosData:(uint64_t)data;
- (void)removeUwbSupportLocally;
- (void)updatePPIDWithServerProvidedData:(id)data;
- (void)updateSharingConfigWithData:(id)data;
- (void)updateSupportedRadiosWithData:(id)data;
@end

@implementation KmlDeviceConfigurationData

- (KmlDeviceConfigurationData)initWithData:(id)data outerTag:(BOOL)tag
{
  tagCopy = tag;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = KmlDeviceConfigurationData;
  v7 = [(KmlDeviceConfigurationData *)&v25 init];
  v8 = v7;
  if (v7)
  {
    *&v7->_readerSupportsNfc = 1;
    v7->_uwbDisabledLocally = 0;
    v7->_readerSupportsLELR = 0;
    readerBtIRK = v7->_readerBtIRK;
    v7->_readerBtIRK = 0;

    v11 = *(v8 + 40);
    *(v8 + 40) = 0;

    v12 = *(v8 + 48);
    *(v8 + 48) = 0;

    v13 = *(v8 + 56);
    *(v8 + 56) = 0;

    *(v8 + 21) = 0;
    v14 = *(v8 + 72);
    *(v8 + 72) = 0;

    v15 = *(v8 + 80);
    *(v8 + 80) = 0;

    v16 = *(v8 + 88);
    *(v8 + 88) = 0;

    v17 = *(v8 + 96);
    *(v8 + 96) = 0;

    v18 = *(v8 + 104);
    *(v8 + 104) = 0;

    v19 = *(v8 + 112);
    *(v8 + 112) = 0;

    v20 = *(v8 + 120);
    *(v8 + 120) = 0;

    *(v8 + 16) = 0;
    *(v8 + 23) = 0x1000000;
    v21 = *(v8 + 144);
    *(v8 + 144) = 0;

    v22 = *(v8 + 152);
    *(v8 + 152) = 0;

    *(v8 + 27) = 0;
    array = [MEMORY[0x277CBEB18] array];
    v24 = *(v8 + 8);
    *(v8 + 8) = array;

    *(v8 + 29) = [(KmlDeviceConfigurationData *)v8 parseDeviceConfigData:dataCopy outerTag:tagCopy];
  }

  return v8;
}

- (id)asData
{
  v29 = *MEMORY[0x277D85DE8];
  data = [MEMORY[0x277CBEB28] data];
  if (self->_supportedRadioTagParsed)
  {
    v4 = [(KmlDeviceConfigurationData *)self supportedRadiosAsDataForTarget:1];
    [data appendData:v4];
  }

  if (self->_sharingConfigTagParsed)
  {
    v17 = [(KmlDeviceConfigurationData *)self sharingConfigToSend:?];
    [data appendData:v17];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_remainingTlvs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        asData = [*(*(&v18 + 1) + 8 * i) asData];
        [data appendData:asData];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v28 count:16];
    }

    while (v7);
  }

  v11 = [KmlTlv TLVWithTag:32590 value:data];
  value = [v11 value];

  v13 = KmlLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = kmlUtilHexStringFromData(value);
    *buf = 136315650;
    v23 = "[KmlDeviceConfigurationData asData]";
    v24 = 1024;
    v25 = 95;
    v26 = 2112;
    v27 = v14;
    _os_log_impl(&dword_248BF3000, v13, OS_LOG_TYPE_INFO, "%s : %i : DeviceConfig Data : %@", buf, 0x1Cu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return value;
}

- (id)readerSupportedTransports
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  if (self->_readerSupportsUwb)
  {
    [array addObject:&unk_285B9CD60];
  }

  if (self->_readerSupportsNfc)
  {
    [v4 addObject:&unk_285B9CD78];
  }

  if (![v4 count])
  {
    [v4 addObject:&unk_285B9CD90];
  }

  return v4;
}

- (void)updateSupportedRadiosWithData:(id)data
{
  dataCopy = data;
  if (dataCopy)
  {
    v5 = dataCopy;
    if ([dataCopy length])
    {
      [(KmlDeviceConfigurationData *)self parseSupportedRadiosData:v5];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)updateSharingConfigWithData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length])
  {
    [KmlTlv TLVsWithData:dataCopy];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v17 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([v10 tag] == 32608)
          {
            v11 = KmlLogger();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v19 = "[KmlDeviceConfigurationData updateSharingConfigWithData:]";
              v20 = 1024;
              v21 = 158;
              _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_INFO, "%s : %i : Found sharing config data", buf, 0x12u);
            }

            value = [v10 value];
            [(KmlDeviceConfigurationData *)self parseKeySharingConfigData:value];

            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updatePPIDWithServerProvidedData:(id)data
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy;
  if (self->_mfiPPID)
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[KmlDeviceConfigurationData updatePPIDWithServerProvidedData:]";
      v24 = 1024;
      v25 = 169;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : We already have car provided ppid. Ignore the server provided value", buf, 0x12u);
    }

LABEL_20:

    goto LABEL_21;
  }

  if (dataCopy && [dataCopy length])
  {
    [KmlTlv TLVsWithData:v5];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v21 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          if ([v12 tag] == 32554)
          {
            value = [v12 value];
            [(KmlDeviceConfigurationData *)self parseOemSpecificContent:value];

            asData = [v12 asData];
            oemSpecificContentAsData = self->_oemSpecificContentAsData;
            self->_oemSpecificContentAsData = asData;

            [(NSMutableArray *)self->_remainingTlvs addObject:v12];
            goto LABEL_16;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  if (KmlLogIsInternalBuild())
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v16 = kmlUtilHexStringFromData(self->_oemSpecificContentAsData);
      *buf = 136315650;
      v23 = "[KmlDeviceConfigurationData updatePPIDWithServerProvidedData:]";
      v24 = 1024;
      v25 = 184;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_248BF3000, v6, OS_LOG_TYPE_INFO, "%s : %i : Server provided PPID data: %@", buf, 0x1Cu);
    }

    goto LABEL_20;
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)removeUwbSupportLocally
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_readerSupportsUwb)
  {
    v2 = [(KmlDeviceConfigurationData *)self readerBleConfigWithTag:1 target:?];
    if (v2)
    {
      [(NSMutableArray *)self->_remainingTlvs addObject:v2];
    }

    self->_readerSupportsUwb = 0;
    self->_uwbDisabledLocally = 1;
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[KmlDeviceConfigurationData removeUwbSupportLocally]";
      v8 = 1024;
      v9 = 205;
      _os_log_impl(&dword_248BF3000, v5, OS_LOG_TYPE_INFO, "%s : %i : UWB disabled locally, config saved for sharing", &v6, 0x12u);
    }
  }

  else
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      v7 = "[KmlDeviceConfigurationData removeUwbSupportLocally]";
      v8 = 1024;
      v9 = 191;
      _os_log_impl(&dword_248BF3000, v2, OS_LOG_TYPE_INFO, "%s : %i : This reader doesn't support UWB. Nothing to disable locally.", &v6, 0x12u);
    }
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (uint64_t)parseDeviceConfigData:(int)data outerTag:
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    v41 = 0;
    goto LABEL_56;
  }

  value7 = v5;
  v8 = &off_248C29000;
  if (!data)
  {
LABEL_17:
    v20 = [KmlTlv TLVsWithData:value7];
    [*(self + 8) removeAllObjects];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v20;
    v21 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
    v18 = 1;
    if (!v21)
    {
      v10 = v17;
      goto LABEL_55;
    }

    v22 = v21;
    v44 = value7;
    v45 = v6;
    v23 = *v48;
    v46 = *(v8 + 415);
LABEL_19:
    v24 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_4_0(v48);
      if (!v15)
      {
        objc_enumerationMutation(v17);
      }

      v25 = *(*(&v47 + 1) + 8 * v24);
      v26 = [v25 tag];
      switch(v26)
      {
        case 'J':
          value = [v25 value];
          v29 = *(self + 80);
          *(self + 80) = value;
          goto LABEL_42;
        case 'K':
          value2 = [v25 value];
          v29 = *(self + 88);
          *(self + 88) = value2;
          goto LABEL_42;
        case 'T':
          asData = [v25 asData];
          v29 = *(self + 152);
          *(self + 152) = asData;
          goto LABEL_42;
        case '[':
          asData2 = [v25 asData];
          v29 = *(self + 144);
          *(self + 144) = asData2;
          goto LABEL_42;
      }

      if (v26 == 215)
      {
        break;
      }

      switch(v26)
      {
        case 216:
          *(self + 22) = [v25 valueAsUnsignedShort];
          asData3 = [v25 asData];
          v29 = *(self + 120);
          *(self + 120) = asData3;
          goto LABEL_42;
        case 217:
          value3 = [v25 value];
          v29 = *(self + 72);
          *(self + 72) = value3;
          goto LABEL_42;
        case 96:
          asData4 = [v25 asData];
          v39 = *(self + 112);
          *(self + 112) = asData4;

          [(KmlDeviceConfigurationData *)self parseSharingInAChainDeviceConfigMailboxSettingData];
          goto LABEL_43;
        case 32554:
          value4 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseOemSpecificContent:value4];

          asData5 = [v25 asData];
          v29 = *(self + 128);
          *(self + 128) = asData5;
LABEL_42:

LABEL_43:
          [*(self + 8) addObject:v25];
          break;
        case 32610:
          value5 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseReaderBleConfigData:value5];

          *(self + 28) = 1;
          [*(self + 8) addObject:v25];
          value6 = KmlLogger();
          if (os_log_type_enabled(value6, OS_LOG_TYPE_INFO))
          {
            *buf = v46;
            v58 = "[KmlDeviceConfigurationData parseDeviceConfigData:outerTag:]";
            v59 = 1024;
            v60 = 314;
            _os_log_impl(&dword_248BF3000, value6, OS_LOG_TYPE_INFO, "%s : %i : UWB is disabled for local use, but available for sharing.", buf, 0x12u);
          }

          goto LABEL_51;
        case 32608:
          value6 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseKeySharingConfigData:value6];
          goto LABEL_51;
        case 32585:
          value6 = [v25 value];
          [(KmlDeviceConfigurationData *)self parseSupportedRadiosData:value6];
LABEL_51:

          break;
      }

      if (v22 == ++v24)
      {
        v40 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
        v22 = v40;
        if (!v40)
        {
          v18 = 1;
          v10 = v17;
          value7 = v44;
          v6 = v45;
          goto LABEL_55;
        }

        goto LABEL_19;
      }
    }

    *(self + 21) = [v25 valueAsUnsignedShort] == 1;
    goto LABEL_43;
  }

  v9 = value7;
  [KmlTlv TLVsWithData:value7];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = v54 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v13 = *v52;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      OUTLINED_FUNCTION_4_0(v52);
      if (!v15)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v51 + 1) + 8 * i);
      if ([v16 tag] == 32590)
      {
        v19 = KmlLogger();
        v8 = &off_248C29000;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v58 = "[KmlDeviceConfigurationData parseDeviceConfigData:outerTag:]";
          v59 = 1024;
          v60 = 245;
          _os_log_impl(&dword_248BF3000, v19, OS_LOG_TYPE_INFO, "%s : %i : Found device config data to parse in outer tag", buf, 0x12u);
        }

        value7 = [v16 value];

        goto LABEL_17;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
  }

  while (v12);
LABEL_11:

  v17 = KmlLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v58 = "[KmlDeviceConfigurationData parseDeviceConfigData:outerTag:]";
    v59 = 1024;
    v60 = 253;
    _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_ERROR, "%s : %i : Expected to find outer tag, but did not", buf, 0x12u);
  }

  v18 = 0;
  value7 = v9;
LABEL_55:

  v55 = v18;
  v41 = v55;
LABEL_56:

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (unsigned)sharingConfigToSend:(unsigned __int8 *)send
{
  sendCopy = send;
  if (!send)
  {
    goto LABEL_17;
  }

  data = [MEMORY[0x277CBEB28] data];
  v6 = sendCopy[23];
  v21 = sendCopy[23];
  if (a2)
  {
    if (v6 == 5)
    {
      v7 = 3;
      goto LABEL_7;
    }

    if (v6 == 4)
    {
      v7 = 1;
LABEL_7:
      v21 = v7;
    }
  }

  v8 = [MEMORY[0x277CBEA90] dataWithBytes:&v21 length:1];
  v9 = [KmlTlv TLVWithTag:218 value:v8];
  asData = [v9 asData];
  OUTLINED_FUNCTION_5_0(asData);

  if (sendCopy[24] == 1)
  {
    v11 = [KmlTlv TLVWithJustTag:219];
    asData2 = [v11 asData];
    OUTLINED_FUNCTION_1_0(asData2);
  }

  if (sendCopy[25] == 1)
  {
    v13 = [KmlTlv TLVWithJustTag:220];
    asData3 = [v13 asData];
    OUTLINED_FUNCTION_1_0(asData3);
  }

  if (sendCopy[26] >= 2u)
  {
    v15 = [KmlTlv TLVWithTag:221 unsignedChar:?];
    asData4 = [v15 asData];
    OUTLINED_FUNCTION_1_0(asData4);
  }

  if (sendCopy[27] == 1)
  {
    v17 = [KmlTlv TLVWithJustTag:222];
    asData5 = [v17 asData];
    [data appendData:asData5];
  }

  v19 = [KmlTlv TLVWithTag:32608 value:data];
  sendCopy = [v19 asData];

LABEL_17:

  return sendCopy;
}

- (void)parseSupportedRadiosData:(uint64_t)data
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!data)
  {
    goto LABEL_21;
  }

  *(data + 18) = 0;
  *(data + 28) = 0;
  *(data + 20) = 0;
  v4 = *(data + 32);
  *(data + 32) = 0;

  v5 = *(data + 40);
  *(data + 40) = 0;

  v6 = *(data + 48);
  *(data + 48) = 0;

  v7 = *(data + 56);
  *(data + 56) = 0;

  v8 = [KmlTlv TLVsWithData:v3];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    goto LABEL_19;
  }

  v10 = v9;
  v20 = v3;
  v11 = 0;
  v12 = *v22;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      OUTLINED_FUNCTION_4_0(v22);
      if (!v14)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v21 + 1) + 8 * i);
      v16 = [v15 tag];
      switch(v16)
      {
        case 24400:
LABEL_13:
          v11 = 1;
          *(data + 18) = 1;
          continue;
        case 24401:
          goto LABEL_14;
        case 32592:
          goto LABEL_13;
        case 32593:
LABEL_14:
          v11 = 1;
          *(data + 19) = 1;
          *(data + 28) = 0;
          break;
        case 32594:
          value = [v15 value];
          [(KmlDeviceConfigurationData *)data parseReaderBleConfigData:value];

          v11 = 1;
          break;
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v10);
  v3 = v20;
  if (v11)
  {
    v18 = 1;
    goto LABEL_20;
  }

LABEL_19:
  v18 = 0;
  *(data + 18) = 1;
LABEL_20:
  *(data + 16) = v18;

LABEL_21:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)parseKeySharingConfigData:(_BYTE *)data
{
  v16 = *MEMORY[0x277D85DE8];
  if (data)
  {
    data[17] = 1;
    v3 = [KmlTlv TLVsWithData:a2];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          OUTLINED_FUNCTION_4_0(v15);
          if (!v9)
          {
            objc_enumerationMutation(v3);
          }

          v10 = *(v14 + 8 * i);
          switch([v10 tag])
          {
            case 0xDAu:
              data[23] = [v10 valueAsUnsignedShort];
              break;
            case 0xDBu:
              data[24] = 1;
              break;
            case 0xDCu:
              data[25] = 1;
              break;
            case 0xDDu:
              valueAsUnsignedChar = [v10 valueAsUnsignedChar];
              if (valueAsUnsignedChar >= 0x10)
              {
                v12 = 16;
              }

              else
              {
                v12 = valueAsUnsignedChar;
              }

              data[26] = v12;
              break;
            case 0xDEu:
              data[27] = 1;
              break;
            default:
              continue;
          }
        }

        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)parseOemSpecificContent:(uint64_t)content
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = a2;
  contentCopy = content;
  if (!content)
  {
    goto LABEL_61;
  }

  v90 = v4;
  v5 = [KmlTlv TLVsWithData:v4];
  v6 = [@"AAPL" dataUsingEncoding:4];
  v96 = [@"DFLT" dataUsingEncoding:4];
  v7 = KmlLogger();
  value4 = &off_248C29000;
  if (OUTLINED_FUNCTION_11(v7))
  {
    *buf = 136315906;
    OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
    v116 = 503;
    v117 = 2112;
    v118 = v6;
    v119 = 2112;
    v120 = v96;
    OUTLINED_FUNCTION_9();
    _os_log_impl(v9, v10, v11, v12, v13, 0x26u);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v14 = v5;
  v94 = [v14 countByEnumeratingWithState:&v108 objects:v114 count:16];
  if (!v94)
  {
    v66 = 0;
    v67 = v14;
    goto LABEL_59;
  }

  v99 = 0;
  v92 = 0;
  v93 = *v109;
  v91 = v14;
  while (2)
  {
    for (i = 0; i != v94; i = v53 + 1)
    {
      if (*v109 != v93)
      {
        objc_enumerationMutation(v14);
      }

      v95 = i;
      v16 = *(*(&v108 + 1) + 8 * i);
      v17 = KmlLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 tag];
        value = [v16 value];
        *buf = 136315906;
        OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
        v116 = 505;
        v117 = v20;
        LODWORD(v118) = v18;
        OUTLINED_FUNCTION_7(v21);
        _os_log_impl(&dword_248BF3000, v17, OS_LOG_TYPE_INFO, "%s : %i : TLV: %02x : %@", v22, 0x22u);
      }

      if ([v16 tag] != 97)
      {
        v53 = v95;
        continue;
      }

      value2 = [v16 value];
      v24 = [KmlTlv TLVsWithData:value2];

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v25 = v24;
      v26 = [v25 countByEnumeratingWithState:&v104 objects:v113 count:16];
      if (v26)
      {
        v98 = 0;
        HIDWORD(v97) = 0;
        v27 = *v105;
        do
        {
          for (j = 0; j != v26; j = (j + 1))
          {
            if (*v105 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v104 + 1) + 8 * j);
            v30 = KmlLogger();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [v29 tag];
              value3 = [v29 value];
              OUTLINED_FUNCTION_3_0(value3, v33, v34, v35, v36, v37, v38, v39, contentCopy, v90, v91, v92, v93, v94, v95, v96, v97, v98, v40);
              OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
              v116 = 510;
              v117 = v41;
              LODWORD(v118) = v31;
              OUTLINED_FUNCTION_7(v42);
              _os_log_impl(&dword_248BF3000, v30, OS_LOG_TYPE_INFO, "%s : %i : TLV: %02x : %@", v43, 0x22u);
            }

            if ([v29 tag] == 64)
            {
              value4 = [v29 value];
              v44 = [(__CFString *)v6 isEqualToData:value4];

              if (v44)
              {
                HIDWORD(v97) = 1;
              }

              else
              {
                value4 = [v29 value];
                v52 = [v96 isEqualToData:value4];

                v99 |= v52;
              }
            }

            else if ([v29 tag] == 49)
            {
              value5 = [v29 value];
              value4 = [KmlTlv TLVsWithData:value5];

              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v46 = value4;
              v47 = [v46 countByEnumeratingWithState:&v100 objects:v112 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = v6;
                value4 = *v101;
                while (2)
                {
                  for (k = 0; k != v48; ++k)
                  {
                    if (*v101 != value4)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v51 = *(*(&v100 + 1) + 8 * k);
                    if ([v51 tag] == 80)
                    {
                      value4 = [v51 value];

                      v98 = value4;
                      goto LABEL_34;
                    }
                  }

                  v48 = [v46 countByEnumeratingWithState:&v100 objects:v112 count:16];
                  if (v48)
                  {
                    continue;
                  }

                  break;
                }

LABEL_34:
                v6 = v49;
              }
            }
          }

          v26 = [v25 countByEnumeratingWithState:&v104 objects:v113 count:16];
        }

        while (v26);

        if ((v97 & 0x100000000) != 0)
        {
          v68 = v6;
          v69 = KmlLogger();
          v70 = v98;
          if (OUTLINED_FUNCTION_11(v69))
          {
            v71 = kmlUtilHexStringFromData(v98);
            OUTLINED_FUNCTION_3_0(v71, v72, v73, v74, v75, v76, v77, v78, contentCopy, v90, v91, v92, v93, v94, v95, v96, v97, v98, v79);
            OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
            v116 = 529;
            v117 = 2112;
            v118 = @"AAPL";
            v119 = 2112;
            v120 = v80;
            OUTLINED_FUNCTION_9();
            _os_log_impl(v81, v82, v83, v84, v85, 0x26u);
          }

          v86 = *(contentCopy + 136);
          *(contentCopy + 136) = v70;
          v87 = v70;

          v14 = v91;
          v66 = v92;
          v67 = v91;
          v6 = v68;
          goto LABEL_59;
        }

        v26 = v98;
        if (v99)
        {
          v14 = v91;
          v53 = v95;
LABEL_43:
          v54 = KmlLogger();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
          {
            v55 = kmlUtilHexStringFromData(v26);
            OUTLINED_FUNCTION_3_0(v55, v56, v57, v58, v59, v60, v61, v62, contentCopy, v90, v91, v92, v93, v94, v95, v96, v97, v98, v63);
            OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
            v116 = 533;
            v117 = 2112;
            v118 = @"DFLT";
            v119 = 2112;
            v120 = v64;
            _os_log_impl(&dword_248BF3000, v54, OS_LOG_TYPE_INFO, "%s : %i : Found default product plan data for %@ : (%@)", buf, 0x26u);
          }

          v26 = v26;
          v99 = 1;
          v92 = v26;
          goto LABEL_48;
        }

        v99 = 0;
        v14 = v91;
        v53 = v95;
      }

      else
      {

        v53 = v95;
        if (v99)
        {
          goto LABEL_43;
        }

        v99 = 0;
      }

LABEL_48:
    }

    v94 = [v14 countByEnumeratingWithState:&v108 objects:v114 count:16];
    if (v94)
    {
      continue;
    }

    break;
  }

  if ((v99 & 1) == 0)
  {
    v66 = v92;
    goto LABEL_60;
  }

  v65 = KmlLogger();
  if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    OUTLINED_FUNCTION_0_0("[KmlDeviceConfigurationData parseOemSpecificContent:]");
    v116 = 540;
    _os_log_impl(&dword_248BF3000, v65, OS_LOG_TYPE_INFO, "%s : %i : Only found default product plan data, so using it", buf, 0x12u);
  }

  v66 = v92;
  v67 = *(contentCopy + 136);
  *(contentCopy + 136) = v66;
LABEL_59:

LABEL_60:
  v4 = v90;
LABEL_61:

  v88 = *MEMORY[0x277D85DE8];
}

- (id)readerBleConfigWithTag:(void *)tag target:
{
  if (self)
  {
    data = [MEMORY[0x277CBEB28] data];
    if (tag != 3)
    {
      if (*(self + 32))
      {
        v3 = [KmlTlv TLVWithTag:208 value:?];
        asData = [v3 asData];
        OUTLINED_FUNCTION_6_0(asData);
      }

      if (*(self + 40))
      {
        v3 = [KmlTlv TLVWithTag:209 value:?];
        asData2 = [v3 asData];
        OUTLINED_FUNCTION_6_0(asData2);
      }
    }

    if (*(self + 20) == 1)
    {
      v3 = [KmlTlv TLVWithJustTag:210];
      asData3 = [v3 asData];
      OUTLINED_FUNCTION_6_0(asData3);
    }

    if (tag != 3)
    {
      if (*(self + 48))
      {
        tag = [KmlTlv TLVWithTag:211 value:?];
        asData4 = [tag asData];
        OUTLINED_FUNCTION_5_0(asData4);
      }

      if (*(self + 56))
      {
        v13 = [KmlTlv TLVWithTag:212 value:?];
        asData5 = [v13 asData];
        OUTLINED_FUNCTION_1_0(asData5);
      }
    }

    if ([data length])
    {
      [KmlTlv TLVWithTag:a2 value:data];
    }

    else
    {
      [KmlTlv TLVWithJustTag:a2];
    }
    v15 = ;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)parseSharingInAChainDeviceConfigMailboxSettingData
{
  v44 = *MEMORY[0x277D85DE8];
  if (self)
  {
    [KmlTlv TLVsWithData:self[14]];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v3 = v38 = 0u;
    value = [v3 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (value)
    {
      v5 = *v36;
      while (2)
      {
        for (i = 0; i != value; i = i + 1)
        {
          if (*v36 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v1 = *(*(&v35 + 1) + 8 * i);
          if ([v1 tag] == 96)
          {
            value = [v1 value];
            goto LABEL_12;
          }
        }

        value = [v3 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (value)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    if (![value length])
    {
      v7 = KmlLogger();
      if (OUTLINED_FUNCTION_11(v7))
      {
        OUTLINED_FUNCTION_8();
        v40 = 592;
        OUTLINED_FUNCTION_9();
        _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
      }
    }

    v13 = KmlLogger();
    if (OUTLINED_FUNCTION_11(v13))
    {
      OUTLINED_FUNCTION_8();
      v40 = 595;
      v41 = 2112;
      v42 = value;
      OUTLINED_FUNCTION_9();
      _os_log_impl(v14, v15, v16, v17, v18, 0x1Cu);
    }

    v19 = [KmlTlv TLVsWithData:value];
    v20 = OUTLINED_FUNCTION_2_0();
    v22 = [v21 countByEnumeratingWithState:v33 objects:v39 count:{16, v20}];
    if (v22)
    {
      v23 = v22;
      v24 = *v34;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          OUTLINED_FUNCTION_4_0(v34);
          if (!v26)
          {
            objc_enumerationMutation(v19);
          }

          v27 = *(v33[1] + 8 * j);
          if ([v27 tag] == 74)
          {
            value2 = [v27 value];
            v29 = self[12];
            self[12] = value2;
          }

          if ([v27 tag] == 75)
          {
            value3 = [v27 value];
            v31 = self[13];
            self[13] = value3;
          }
        }

        v23 = [v19 countByEnumeratingWithState:v33 objects:v39 count:16];
      }

      while (v23);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)parseReaderBleConfigData:(uint64_t)data
{
  v19 = *MEMORY[0x277D85DE8];
  if (data)
  {
    v3 = [KmlTlv TLVsWithData:a2];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(v17 + 8 * i);
          switch([v9 tag])
          {
            case 0xD0u:
              value = [v9 value];
              v11 = *(data + 32);
              *(data + 32) = value;
              goto LABEL_14;
            case 0xD1u:
              value2 = [v9 value];
              v11 = *(data + 40);
              *(data + 40) = value2;
              goto LABEL_14;
            case 0xD2u:
              *(data + 20) = 1;
              continue;
            case 0xD3u:
              value3 = [v9 value];
              v11 = *(data + 48);
              *(data + 48) = value3;
              goto LABEL_14;
            case 0xD4u:
              value4 = [v9 value];
              v11 = *(data + 56);
              *(data + 56) = value4;
              goto LABEL_14;
            case 0xD5u:
              value5 = [v9 value];
              v11 = *(data + 64);
              *(data + 64) = value5;
LABEL_14:

              break;
            default:
              continue;
          }
        }

        OUTLINED_FUNCTION_0();
        v6 = [v3 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end