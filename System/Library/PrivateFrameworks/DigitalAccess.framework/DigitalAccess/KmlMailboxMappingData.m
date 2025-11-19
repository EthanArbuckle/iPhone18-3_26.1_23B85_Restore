@interface KmlMailboxMappingData
- (BOOL)isKeyAttestationSetByCarInSignalingBitmap:(unsigned __int8)a3;
- (BOOL)isKeyAttestationSetByDeviceInSignalingBitmap:(unsigned __int8)a3;
- (BOOL)isOemPropDataSetByCarInSignalingBitmap:(unsigned __int8)a3;
- (BOOL)isOemPropDataSetByDeviceInSignalingBitmap:(unsigned __int8)a3;
- (BOOL)isSlotIdListSetByCarInSignalingBitmap:(unsigned __int8)a3;
- (BOOL)isValid;
- (KmlMailboxMappingData)initWithData:(id)a3 preferredVersion:(unsigned __int16)a4;
- (id)asData;
- (unsigned)getMaskToIndicateKeyAttestationConsumed;
- (unsigned)getMaskToIndicateKeyAttestationSaved;
- (unsigned)getMaskToIndicateOemPropDataConsumed;
- (unsigned)getMaskToIndicateOemPropDataSaved;
- (unsigned)getMaskToIndicateSlotIdListConsumed;
@end

@implementation KmlMailboxMappingData

- (KmlMailboxMappingData)initWithData:(id)a3 preferredVersion:(unsigned __int16)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v65.receiver = self;
  v65.super_class = KmlMailboxMappingData;
  v7 = [(KmlMailboxMappingData *)&v65 init];
  v8 = v7;
  if (v7)
  {
    preferredVersionTlvs = v7->_preferredVersionTlvs;
    v7->_preferredVersionTlvs = 0;

    *&v8->_signalingBitmapOffset = 0;
    *&v8->_mailboxVersion = 0;
    v8->_slotIdentifierLength = 0;
    *&v8->_slotIdListOffset = 0;
    *&v8->_keyAttestationListStartOffset = 0;
    v10 = v8->_preferredVersionTlvs;
    v8->_preferredVersionTlvs = 0;

    v8->_preferredVersion = a4;
    v11 = objc_opt_new();
    v8->_useOldSignalingBitmap = [v11 useOldSignalingBitmap];

    if (v6)
    {
      [KmlTlv TLVsWithData:v6];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v12 = v64 = 0u;
      v13 = [v12 countByEnumeratingWithState:&v61 objects:v68 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v62;
LABEL_5:
        v16 = 0;
        while (1)
        {
          if (*v62 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v61 + 1) + 8 * v16);
          if ([v17 tag] == 32589)
          {
            break;
          }

          if (v14 == ++v16)
          {
            v14 = [v12 countByEnumeratingWithState:&v61 objects:v68 count:16];
            if (v14)
            {
              goto LABEL_5;
            }

            goto LABEL_36;
          }
        }

        v18 = KmlLogger();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v70 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
          v71 = 1024;
          v72 = 69;
          _os_log_impl(&dword_248BF3000, v18, OS_LOG_TYPE_INFO, "%s : %i : Found Mailbox mapping data to parse", buf, 0x12u);
        }

        v19 = [v17 value];
        v20 = [KmlTlv TLVsWithData:v19];
        allMailboxMappingTlvs = v8->_allMailboxMappingTlvs;
        v8->_allMailboxMappingTlvs = v20;

        if ([KmlVersions doesVersion:v8->_preferredVersion support:768])
        {
          v22 = KmlLogger();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v70 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
            v71 = 1024;
            v72 = 73;
            _os_log_impl(&dword_248BF3000, v22, OS_LOG_TYPE_INFO, "%s : %i : We prefer SharingInAChain version", buf, 0x12u);
          }

          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v23 = v8->_allMailboxMappingTlvs;
          v24 = [(NSArray *)v23 countByEnumeratingWithState:&v57 objects:v67 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v58;
            while (2)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v58 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v57 + 1) + 8 * i);
                if ([v28 tag] == 96)
                {
                  v31 = KmlLogger();
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                  {
                    *buf = 136315394;
                    v70 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
                    v71 = 1024;
                    v72 = 76;
                    _os_log_impl(&dword_248BF3000, v31, OS_LOG_TYPE_INFO, "%s : %i : Car sent SharingInAChain version mailboxMapping Data", buf, 0x12u);
                  }

                  v32 = [v28 value];
                  v33 = [KmlTlv TLVsWithData:v32];
                  v34 = v8->_preferredVersionTlvs;
                  v8->_preferredVersionTlvs = v33;

                  goto LABEL_35;
                }
              }

              v25 = [(NSArray *)v23 countByEnumeratingWithState:&v57 objects:v67 count:16];
              if (v25)
              {
                continue;
              }

              break;
            }
          }
        }

        else
        {
          if (v8->_preferredVersion != 256)
          {
            goto LABEL_36;
          }

          v29 = KmlLogger();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v70 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
            v71 = 1024;
            v72 = 82;
            _os_log_impl(&dword_248BF3000, v29, OS_LOG_TYPE_INFO, "%s : %i : We will use spec_v1 mailboxMapping data", buf, 0x12u);
          }

          v30 = v8->_allMailboxMappingTlvs;
          v23 = v8->_preferredVersionTlvs;
          v8->_preferredVersionTlvs = v30;
        }

LABEL_35:
      }

LABEL_36:

      if ([(NSArray *)v8->_preferredVersionTlvs count])
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v35 = v8->_preferredVersionTlvs;
        v36 = [(NSArray *)v35 countByEnumeratingWithState:&v53 objects:v66 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v54;
          do
          {
            for (j = 0; j != v37; ++j)
            {
              if (*v54 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v53 + 1) + 8 * j);
              v41 = [v40 tag];
              if (v41 > 208)
              {
                if (v41 <= 210)
                {
                  if (v41 == 209)
                  {
                    v8->_mailboxEndOffset = [v40 valueAsUnsignedShort];
                  }

                  else
                  {
                    v8->_immoTokenLength = [v40 valueAsUnsignedChar];
                  }
                }

                else
                {
                  switch(v41)
                  {
                    case 211:
                      v8->_slotIdentifierLength = [v40 valueAsUnsignedChar];
                      break;
                    case 212:
                      v8->_attestationPackageLength = [v40 valueAsUnsignedShort];
                      break;
                    case 213:
                      v8->_mailboxVersion = [v40 valueAsUnsignedChar];
                      break;
                  }
                }
              }

              else if (v41 <= 193)
              {
                if (v41 == 192)
                {
                  v8->_slotIdBitmapOffset = [v40 valueAsUnsignedShort];
                  v8->_signerSlotIdListOffset = [v40 valueAsUnsignedShort];
                }

                else if (v41 == 193)
                {
                  v8->_slotIdListOffset = [v40 valueAsUnsignedShort];
                  v8->_vehicleProprietaryDataOffset_v3 = [v40 valueAsUnsignedShort];
                }
              }

              else
              {
                switch(v41)
                {
                  case 194:
                    v8->_vehicleProprietaryDataOffset = [v40 valueAsUnsignedShort];
                    v8->_keyAttestationListStartOffset = [v40 valueAsUnsignedShort];
                    break;
                  case 195:
                    v8->_keyAttestationStartOffset = [v40 valueAsUnsignedShort];
                    break;
                  case 208:
                    v8->_signalingBitmapOffset = [v40 valueAsUnsignedShort];
                    break;
                }
              }
            }

            v37 = [(NSArray *)v35 countByEnumeratingWithState:&v53 objects:v66 count:16];
          }

          while (v37);
        }

        if (v8->_mailboxVersion == 128)
        {
          *&v8->_slotIdBitmapOffset = 0;
          HIDWORD(v42) = *&v8->_keyAttestationListStartOffset;
          LODWORD(v42) = HIDWORD(v42);
          *&v8->_vehicleProprietaryDataOffset = v42 >> 16;
        }

        else
        {
          v8->_signerSlotIdListOffset = 0;
          *&v8->_keyAttestationListStartOffset = 0;
          keyAttestationStartOffset = v8->_keyAttestationStartOffset;
          mailboxEndOffset = v8->_mailboxEndOffset;
          if (!v8->_keyAttestationStartOffset)
          {
            v8->_keyAttestationStartOffset = mailboxEndOffset;
            keyAttestationStartOffset = mailboxEndOffset;
          }

          v8->_attestationPackageLength = mailboxEndOffset - keyAttestationStartOffset;
          vehicleProprietaryDataOffset = v8->_vehicleProprietaryDataOffset;
          if (!v8->_vehicleProprietaryDataOffset)
          {
            v8->_vehicleProprietaryDataOffset = keyAttestationStartOffset;
            vehicleProprietaryDataOffset = keyAttestationStartOffset;
          }

          slotIdListOffset = v8->_slotIdListOffset;
          v48 = __OFSUB__(vehicleProprietaryDataOffset, slotIdListOffset);
          v49 = vehicleProprietaryDataOffset - slotIdListOffset;
          if (v49 < 0 != v48)
          {
            v49 += 7;
          }

          v50 = (v49 >> 3);
          if (v50 <= 2)
          {
            LOBYTE(v50) = 2;
          }

          v8->_slotIdentifierLength = v50;
        }
      }

      else
      {
        v43 = KmlLogger();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v70 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
          v71 = 1024;
          v72 = 90;
          _os_log_impl(&dword_248BF3000, v43, OS_LOG_TYPE_INFO, "%s : %i : Did not find version appropriate data to initialize Mailbox mapping, using defaults", buf, 0x12u);
        }
      }
    }

    else
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v70 = "[KmlMailboxMappingData initWithData:preferredVersion:]";
        v71 = 1024;
        v72 = 62;
        _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : No Data to initalize Mailbox mapping, using defaults", buf, 0x12u);
      }
    }
  }

  v51 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)asData
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_allMailboxMappingTlvs)
  {
    v3 = [MEMORY[0x277CBEB28] data];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_allMailboxMappingTlvs;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v16 + 1) + 8 * i) asData];
          [v3 appendData:v9];
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v6);
    }

    v10 = [KmlTlv TLVWithTag:32589 value:v3];
    v11 = [v10 asData];

    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = kmlUtilHexStringFromData(v11);
      *buf = 136315650;
      v21 = "[KmlMailboxMappingData asData]";
      v22 = 1024;
      v23 = 185;
      v24 = 2112;
      v25 = v13;
      _os_log_impl(&dword_248BF3000, v12, OS_LOG_TYPE_INFO, "%s : %i : MailboxMapping Data : %@", buf, 0x1Cu);
    }
  }

  else
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v21 = "[KmlMailboxMappingData asData]";
      v22 = 1024;
      v23 = 173;
      _os_log_impl(&dword_248BF3000, v3, OS_LOG_TYPE_INFO, "%s : %i : Invalid MailboxMapping Data", buf, 0x12u);
    }

    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isValid
{
  v29 = *MEMORY[0x277D85DE8];
  if (!self->_preferredVersion)
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[KmlMailboxMappingData isValid]";
      v23 = 1024;
      v24 = 193;
      v10 = "%s : %i : Agreed KML framework version is unknown";
      v11 = v3;
      v12 = 18;
LABEL_21:
      _os_log_impl(&dword_248BF3000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
    }

LABEL_22:
    v9 = 0;
    goto LABEL_23;
  }

  if ([KmlVersions doesVersion:"doesVersion:support:" support:?]&& self->_mailboxVersion != 128)
  {
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      mailboxVersion = self->_mailboxVersion;
      *buf = 136315906;
      v22 = "[KmlMailboxMappingData isValid]";
      v23 = 1024;
      v24 = 200;
      v25 = 1024;
      v26 = 128;
      v27 = 1024;
      v28 = mailboxVersion;
      v10 = "%s : %i : Mismatch in expected mailbox version (0x%02X) and received version (0x%02X)";
      v11 = v3;
      v12 = 30;
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_preferredVersionTlvs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (!kmlUtilAddUniqueTagToSet(v3, [*(*(&v16 + 1) + 8 * i) tag]))
        {
          v9 = 0;
          goto LABEL_18;
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v4 = [MEMORY[0x277CBEB58] setWithArray:&unk_285B9CDA8];
  if ([KmlVersions doesVersion:self->_preferredVersion support:768])
  {
    [(NSArray *)v4 addObjectsFromArray:&unk_285B9CDC0];
  }

  v9 = [(NSArray *)v4 isSubsetOfSet:v3, v16];
LABEL_18:

LABEL_23:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isSlotIdListSetByCarInSignalingBitmap:(unsigned __int8)a3
{
  v3 = 1;
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  return (v3 & a3) != 0;
}

- (unsigned)getMaskToIndicateSlotIdListConsumed
{
  if (self->_mailboxVersion != 128)
  {
    return -2;
  }

  if (self->_useOldSignalingBitmap)
  {
    return -2;
  }

  return -4;
}

- (BOOL)isOemPropDataSetByCarInSignalingBitmap:(unsigned __int8)a3
{
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 2;
    }

    else
    {
      v3 = 8;
    }
  }

  else
  {
    v3 = 4;
  }

  return (v3 & a3) != 0;
}

- (BOOL)isOemPropDataSetByDeviceInSignalingBitmap:(unsigned __int8)a3
{
  v3 = 4;
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }
  }

  return (v3 & a3) != 0;
}

- (unsigned)getMaskToIndicateOemPropDataConsumed
{
  if (self->_mailboxVersion != 128)
  {
    return -5;
  }

  if (self->_useOldSignalingBitmap)
  {
    return -3;
  }

  return -13;
}

- (unsigned)getMaskToIndicateOemPropDataSaved
{
  mailboxVersion = self->_mailboxVersion;
  result = 4;
  if (mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      return 2;
    }

    else
    {
      return 4;
    }
  }

  return result;
}

- (BOOL)isKeyAttestationSetByCarInSignalingBitmap:(unsigned __int8)a3
{
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 4;
    }

    else
    {
      v3 = 32;
    }
  }

  else
  {
    v3 = 8;
  }

  return (v3 & a3) != 0;
}

- (BOOL)isKeyAttestationSetByDeviceInSignalingBitmap:(unsigned __int8)a3
{
  if (self->_mailboxVersion == 128)
  {
    if (self->_useOldSignalingBitmap)
    {
      v3 = 4;
    }

    else
    {
      v3 = 16;
    }
  }

  else
  {
    v3 = 8;
  }

  return (v3 & a3) != 0;
}

- (unsigned)getMaskToIndicateKeyAttestationConsumed
{
  if (self->_mailboxVersion != 128)
  {
    return -9;
  }

  if (self->_useOldSignalingBitmap)
  {
    return -5;
  }

  return -49;
}

- (unsigned)getMaskToIndicateKeyAttestationSaved
{
  if (self->_mailboxVersion != 128)
  {
    return 8;
  }

  if (self->_useOldSignalingBitmap)
  {
    return 4;
  }

  return 16;
}

@end