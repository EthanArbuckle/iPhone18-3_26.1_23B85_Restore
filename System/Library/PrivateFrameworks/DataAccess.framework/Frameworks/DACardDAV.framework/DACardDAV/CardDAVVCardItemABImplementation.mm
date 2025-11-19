@interface CardDAVVCardItemABImplementation
- (BOOL)deleteFromContainer:(void *)a3;
- (BOOL)deleteFromContainer:(void *)a3 account:(id)a4;
- (BOOL)loadLocalItemWithAccount:(id)a3;
- (BOOL)saveIfGroupWithLocalObject:(id)a3 toContainer:(id)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7;
- (CardDAVVCardItemABImplementation)initWithABRecord:(void *)a3 addressBook:(void *)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8 afterImageSyncFailed:(BOOL)a9;
- (CardDAVVCardItemABImplementation)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7;
- (id)cardDAVRecordItem;
- (id)convertToDAContactSearchResultElement;
- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)a3;
- (unint64_t)saveWithLocalObject:(id)a3 toContainer:(id)a4 containerURL:(id)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8 shouldSaveGroups:(BOOL)a9;
- (void)dealloc;
- (void)setLocalItem:(void *)a3;
@end

@implementation CardDAVVCardItemABImplementation

- (CardDAVVCardItemABImplementation)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v35.receiver = self;
  v35.super_class = CardDAVVCardItemABImplementation;
  v18 = [(CardDAVVCardItemABImplementation *)&v35 init];
  v19 = v18;
  if (v18)
  {
    [(CardDAVVCardItemABImplementation *)v18 setDataPayload:v15];
    [(CardDAVVCardItemABImplementation *)v19 setServerID:v13];
    [(CardDAVVCardItemABImplementation *)v19 setSyncKey:v14];
    [(CardDAVVCardItemABImplementation *)v19 setAbRecordType:0xFFFFFFFFLL];
    if (v16)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CardDAVVCardItemABImplementation initWithURL:a2 eTag:v19 dataPayload:v17 inContainerWithURL:? withAccountInfoProvider:?];
      }

      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        [CardDAVVCardItemABImplementation initWithURL:a2 eTag:v19 dataPayload:v17 inContainerWithURL:? withAccountInfoProvider:?];
      }

      v20 = v17;
      v21 = [v20 databaseHelper];
      v22 = [v21 abDBThrowOnNil:0];

      if (v22)
      {
        v23 = [v20 homeURL];
        v24 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v23];

        v25 = [v20 accountID];
        v34 = v24;
        v26 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();

        if (v26)
        {
          v33 = v13;
          ABSourceSetShouldIgnoreCapabilitiesRestrictions();
          v27 = [(CardDAVVCardItemABImplementation *)v19 serverID];
          v28 = [v27 da_leastInfoStringRepresentationRelativeToParentURL:v16];

          v29 = ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifierInSource();
          if ([v29 count])
          {
            v30 = v28;
            [(CardDAVVCardItemABImplementation *)v19 setAbRecordType:0];
          }

          else
          {
            v30 = v28;
            v31 = ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifierInSource();
            if ([v31 count])
            {
              [(CardDAVVCardItemABImplementation *)v19 setAbRecordType:1];
            }
          }

          CFRelease(v26);

          v13 = v33;
        }
      }
    }
  }

  return v19;
}

- (CardDAVVCardItemABImplementation)initWithABRecord:(void *)a3 addressBook:(void *)a4 outNeedsDBSave:(BOOL *)a5 maxImageSize:(int64_t)a6 maxResourceSize:(int64_t)a7 inContainerWithURL:(id)a8 afterImageSyncFailed:(BOOL)a9
{
  v73 = *MEMORY[0x277D85DE8];
  v12 = a8;
  if (a5)
  {
    *a5 = 0;
  }

  v59 = a5;
  v70.receiver = self;
  v70.super_class = CardDAVVCardItemABImplementation;
  v13 = [(CardDAVVCardItemABImplementation *)&v70 init];
  if (v13)
  {
    [(CardDAVVCardItemABImplementation *)v13 setAbRecordType:ABRecordGetRecordType(a3)];
    [(CardDAVVCardItemABImplementation *)v13 setLocalItem:a3];
    v14 = 0;
    property = *MEMORY[0x277CE97E0];
    v63 = *MEMORY[0x277CE97D8];
    v62 = *MEMORY[0x277CE9898];
    v61 = *MEMORY[0x277CE9890];
    v60 = *MEMORY[0x277CE98D8];
    v58 = *MEMORY[0x277CE98E0];
    type = *(MEMORY[0x277D03988] + 3);
    allocator = *MEMORY[0x277CBECE8];
    while (1)
    {
      v15 = [(CardDAVVCardItemABImplementation *)v13 abRecordType];
      abRecord = v13->_abRecord;
      if (!v15)
      {
        break;
      }

      v17 = ABRecordCopyValue(abRecord, property);
      [(CardDAVVCardItemABImplementation *)v13 setSyncKey:v17];

      v18 = ABRecordCopyValue(v13->_abRecord, v63);
      v19 = v18;
      if (v18)
      {
        v20 = [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v12];
        [(CardDAVVCardItemABImplementation *)v13 setServerID:v20];
        goto LABEL_33;
      }

      v26 = 0;
      v27 = 0;
LABEL_35:

      v40 = [MEMORY[0x277CCABB0] numberWithInt:ABRecordGetRecordID(v13->_abRecord)];
      [(CardDAVVCardItemABImplementation *)v13 setClientID:v40];

      v41 = [MEMORY[0x277CE9778] copyVCardRepresentationOfRecord:v13->_abRecord withPhoto:v27 extraPhotoParameters:v26];
      [(CardDAVVCardItemABImplementation *)v13 setDataPayload:v41];

      v42 = [(CardDAVVCardItemABImplementation *)v13 dataPayload];

      if (!v42)
      {
        goto LABEL_44;
      }

      v43 = [(CardDAVVCardItemABImplementation *)v13 dataPayload];
      v44 = [v43 length];

      if (!(v14 & 1 | (v44 <= a7)))
      {
        v45 = [v27 length];
        v14 = 0;
        if (v27)
        {
          if (v45 > v44 - a7)
          {
            [(CardDAVVCardItemABImplementation *)v13 setDataPayload:0, v49];
            [(CardDAVVCardItemABImplementation *)v13 setClientID:0];
            [(CardDAVVCardItemABImplementation *)v13 setServerID:0];
            [(CardDAVVCardItemABImplementation *)v13 setSyncKey:0];
            v14 = 1;
          }
        }
      }

      v46 = [(CardDAVVCardItemABImplementation *)v13 dataPayload];

      if (v46)
      {
LABEL_44:

        goto LABEL_45;
      }
    }

    v21 = ABRecordCopyValue(abRecord, v62);
    [(CardDAVVCardItemABImplementation *)v13 setSyncKey:v21];

    v22 = ABRecordCopyValue(v13->_abRecord, v61);
    v19 = v22;
    if (v22)
    {
      v23 = [v22 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v12];
      [(CardDAVVCardItemABImplementation *)v13 setServerID:v23];
    }

    v24 = ABRecordCopyValue(v13->_abRecord, v60);
    v20 = v24;
    if (a9)
    {
      v25 = [MEMORY[0x277CBEAA8] date];
      ABRecordSetValue(v13->_abRecord, v60, v25, 0);
      if (v59)
      {
        *v59 = 1;
      }
    }

    else if (!v24 || ([v24 timeIntervalSinceNow], v28 > 86400.0))
    {
      v69 = 0;
      v68 = 0;
      v67 = 0;
      v29 = ABRecordCopyValue(v13->_abRecord, v58);
      v30 = v13->_abRecord;
      v49 = &v67;
      v27 = DAGetSyncImageForPerson();
      if (v27 && v69 == 1)
      {
        v31 = v13->_abRecord;
        ABPersonSetImageDataDerivedFromFormatAndReturnError();
        if (v29)
        {
          ABRecordSetValue(v13->_abRecord, v58, v29, 0);
        }

        if (v59)
        {
          *v59 = 1;
        }
      }

      if (v29)
      {
        v32 = v13->_abRecord;
        DerivedFromFormatFromImageWithFormat = ABPersonGetDerivedFromFormatFromImageWithFormat();
        if (DerivedFromFormatFromImageWithFormat != 2)
        {
          v33 = DALoggingwithCategory();
          if (os_log_type_enabled(v33, type))
          {
            *buf = 67109120;
            v72 = DerivedFromFormatFromImageWithFormat;
            _os_log_impl(&dword_24850D000, v33, type, "[Likeness Update] SyncImage derived from unexpected format. (%u)", buf, 8u);
          }
        }
      }

      if (v27)
      {
        CC_MD5([v27 bytes], objc_msgSend(v27, "length"), buf);
        v34 = CFDataCreate(allocator, buf, 16);
        v35 = v34;
        v26 = 0;
        if (v67 && v34)
        {
          v36 = objc_alloc(MEMORY[0x277CCACA8]);
          v53 = HIDWORD(v68);
          v54 = v36;
          v52 = v68;
          v51 = HIDWORD(v67);
          v37 = v12;
          v38 = v67;
          [(__CFData *)v35 base64EncodedStringWithOptions:0];
          v39 = v55 = v29;
          v50 = v38;
          v12 = v37;
          v26 = [v54 initWithFormat:@"X-ABCROP-RECTANGLE=ABClipRect_1&%d&%d&%d&%d&%@", v53, v52, v51, v50, v39];

          v29 = v55;
        }
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_34;
    }

LABEL_33:
    v26 = 0;
    v27 = 0;
LABEL_34:

    goto LABEL_35;
  }

LABEL_45:

  v47 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)dealloc
{
  abRecord = self->_abRecord;
  if (abRecord)
  {
    CFRelease(abRecord);
    self->_abRecord = 0;
  }

  v4.receiver = self;
  v4.super_class = CardDAVVCardItemABImplementation;
  [(CardDAVVCardItemABImplementation *)&v4 dealloc];
}

- (id)cardDAVRecordItem
{
  v3 = [(CardDAVVCardItemABImplementation *)self abRecord];
  if (v3)
  {
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      if ([(CardDAVVCardItemABImplementation *)self abRecordType]== 1)
      {
        v3 = [[DAABLegacyGroup alloc] initWithGroup:[(CardDAVVCardItemABImplementation *)self abRecord]];
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      v3 = [[DAABLegacyContact alloc] initWithABPerson:[(CardDAVVCardItemABImplementation *)self abRecord]];
    }
  }

  return v3;
}

- (unint64_t)saveWithLocalObject:(id)a3 toContainer:(id)a4 containerURL:(id)a5 shouldMergeProperties:(BOOL)a6 outMergeDidChooseLocalProperties:(BOOL *)a7 account:(id)a8 shouldSaveGroups:(BOOL)a9
{
  v10 = a6;
  v121 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = [v18 databaseHelper];
  v20 = [v19 abDB];

  if (!v20)
  {
    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v25, v26))
    {
      *buf = 0;
      _os_log_impl(&dword_24850D000, v25, v26, "Couldn't get address book", buf, 2u);
    }

    v27 = 0;
    goto LABEL_116;
  }

  v117 = self;
  v21 = v18;
  v113 = a2;
  v22 = v17;
  if ([v15 isContact])
  {
    v23 = v16;
    v24 = [v15 asPerson];
  }

  else
  {
    v23 = v16;
    if (![v15 isGroup])
    {
      v28 = 0;
      goto LABEL_11;
    }

    v24 = [v15 asABGroup];
  }

  v28 = v24;
LABEL_11:
  if (v15)
  {
    v29 = v10;
  }

  else
  {
    v29 = 0;
  }

  v115 = v29;
  v30 = !v10;
  if ([v21 supportsWallpaperSync])
  {
    v30 |= 2uLL;
  }

  v31 = objc_alloc(MEMORY[0x277CE9780]);
  v32 = [(CardDAVVCardItemABImplementation *)self dataPayload];
  v33 = [v31 initWithData:v32 importOptions:v30];

  if (v15)
  {
    v34 = v33;
    [(CardDAVVCardItemABImplementation *)self setCardDAVRecordItem:v15];
    v16 = v23;
    if ([v15 isContact])
    {
      v35 = v15;
      -[CardDAVVCardItemABImplementation setLocalItem:](self, "setLocalItem:", [v15 asPerson]);
      v17 = v22;
    }

    else
    {
      v17 = v22;
      v35 = v15;
      if ([v15 isGroup])
      {
        -[CardDAVVCardItemABImplementation setLocalItem:](self, "setLocalItem:", [v15 asABGroup]);
      }

      else
      {
        v42 = [MEMORY[0x277CCA890] currentHandler];
        [v42 handleFailureInMethod:v113 object:self file:@"CardDAVVCardItemABImplementation.m" lineNumber:330 description:@"Error: unrecognized record type"];
      }
    }

    v18 = v21;
    v43 = v28;
    if (!a9 && [(CardDAVVCardItemABImplementation *)self abRecordType]== 1)
    {
      v27 = 2;
      v15 = v35;
      v25 = v34;
      goto LABEL_116;
    }

    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      v114 = 0;
      v116 = 0;
    }

    else
    {
      v116 = ABRecordCopyValue(v28, *MEMORY[0x277CE98E0]);
      v114 = ABRecordCopyValue(v28, *MEMORY[0x277CE9A68]);
    }

    v25 = v34;
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      v44 = [v34 importToGroup:v43];
    }

    else
    {
      v44 = [v34 importToPerson:v43];
    }

    v45 = v44;
    v15 = v35;
    v46 = [v25 localRecordHasAdditionalProperties];
LABEL_42:
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
LABEL_101:
      if ((v115 & v46) == 1)
      {
        if ([(CardDAVVCardItemABImplementation *)self abRecordType])
        {
          v87 = MEMORY[0x277CE97E0];
        }

        else
        {
          v87 = MEMORY[0x277CE9898];
        }

        ABRecordRemoveValue(v43, *v87, 0);
      }

      else
      {
        v88 = [(CardDAVVCardItemABImplementation *)self syncKey];

        if (v88)
        {
          if ([(CardDAVVCardItemABImplementation *)self abRecordType])
          {
            v89 = MEMORY[0x277CE97E0];
          }

          else
          {
            v89 = MEMORY[0x277CE9898];
          }

          v90 = *v89;
          v91 = [(CardDAVVCardItemABImplementation *)self syncKey];
          ABRecordSetValue(v43, v90, v91, 0);
        }
      }

      v92 = [(CardDAVVCardItemABImplementation *)self serverID];

      if (v92)
      {
        v93 = [(CardDAVVCardItemABImplementation *)self serverID];
        v94 = [v93 da_leastInfoStringRepresentationRelativeToParentURL:v17];

        v95 = [(CardDAVVCardItemABImplementation *)self abRecordType];
        v96 = MEMORY[0x277CE9890];
        if (v95)
        {
          v96 = MEMORY[0x277CE97D8];
        }

        ABRecordSetValue(v43, *v96, v94, 0);
      }

      [v18 _massageAddedOrModifiedVCard:self];
      v27 = v45;

      goto LABEL_116;
    }

    v108 = v45;
    v107 = v16;
    v47 = v18;
    v48 = v116;
    v111 = v25;
    property = *MEMORY[0x277CE98E0];
    v49 = ABRecordCopyValue(v43, *MEMORY[0x277CE98E0]);
    persona = v43;
    v106 = v46;
    if (v48 != 0) == (v49 != 0) && (!v48 || ([v48 isEqualToString:v49]))
    {
LABEL_79:

      v70 = v47;
      v71 = v114;
      v72 = *MEMORY[0x277CE9A68];
      v73 = ABRecordCopyValue(v43, *MEMORY[0x277CE9A68]);
      if (v71 != 0) == (v73 != 0) && (!v71 || ([v71 isEqualToString:v73]))
      {
        goto LABEL_100;
      }

      v112 = v15;
      v74 = MEMORY[0x277CE9A60];
      propertya = v70;
      if (v73 && ([MEMORY[0x277CBEBC0] URLWithString:v73], (v75 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v76 = v75;
        v118 = 0;
        v77 = [propertya copyImageContentsAtURL:v75 outError:&v118];
        v78 = v118;

        if (v77)
        {
          v79 = ABRecordCopyValue(persona, *v74);
          v80 = v79;
          if (v79 && [v79 isEqualToData:v77])
          {
            v81 = v80;
            v82 = DALoggingwithCategory();
            v83 = *(MEMORY[0x277D03988] + 7);
            if (os_log_type_enabled(v82, v83))
            {
              *buf = 0;
              _os_log_impl(&dword_24850D000, v82, v83, "Not setting wallpaper on person, as it hasn't changed", buf, 2u);
            }

            goto LABEL_99;
          }
        }

        else
        {
          if (v78)
          {
            v84 = DALoggingwithCategory();
            v85 = *(MEMORY[0x277D03988] + 3);
            if (os_log_type_enabled(v84, v85))
            {
              *buf = 138412290;
              v120 = v78;
              _os_log_impl(&dword_24850D000, v84, v85, "Not saving wallpaper for contact, as wallpaper download failed with error %@", buf, 0xCu);
            }

            v77 = 0;
            goto LABEL_99;
          }

          v77 = 0;
        }
      }

      else
      {
        v77 = 0;
        v78 = 0;
      }

      v86 = *v74;
      ABRecordRemoveValue(persona, *v74, 0);
      v108 &= ABRecordSetValue(persona, v86, v77, 0);
      ABRecordSetValue(persona, v72, v73, 0);
LABEL_99:
      v15 = v112;
      v70 = propertya;

      self = v117;
      v43 = persona;
LABEL_100:
      v46 = v106;

      v16 = v107;
      v45 = v108;
      goto LABEL_101;
    }

    v101 = v47;
    v102 = v48;
    if (v49)
    {
      v50 = [MEMORY[0x277CBEBC0] URLWithString:v49];
      if (v50)
      {
        v51 = v50;
        v118 = 0;
        v52 = [v47 copyImageContentsAtURL:v50 outError:&v118];
        v53 = v118;

        if (v52)
        {
          v103 = v53;
          v54 = ABPersonCopyImageDataWithFormat(persona, 5u);
          v55 = v54;
          if (v54 && [(__CFData *)v54 isEqualToData:v52])
          {
            v56 = DALoggingwithCategory();
            v57 = *(MEMORY[0x277D03988] + 7);
            if (os_log_type_enabled(v56, v57))
            {
              *buf = 0;
              _os_log_impl(&dword_24850D000, v56, v57, "Not setting image on person, as it hasn't changed", buf, 2u);
            }

            goto LABEL_77;
          }

LABEL_67:
          ABPersonRemoveImageData(persona, 0);
          if ([v52 length])
          {
            v63 = [v111 lastCropRectChecksum];
            if ([v63 length])
            {
              CC_MD5([v52 bytes], objc_msgSend(v52, "length"), buf);
              v64 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:buf length:16];
              if ([v64 isEqualToData:v63])
              {
                HIDWORD(v99) = [v111 lastCropRectX];
                LODWORD(v99) = [v111 lastCropRectY];
                v65 = [v111 lastCropRectWidth];
                v66 = [v111 lastCropRectHeight];
                if (v65)
                {
                  if (v66)
                  {
                    v67 = v64;
                    v68 = persona;
                    v100 = ABPersonSetImageDataWithInvertedCropRect();
                    v108 &= ABPersonSetImageDataDerivedFromFormatAndReturnError() & v100;

LABEL_76:
                    ABRecordSetValue(v68, property, v49, 0);
                    ABRecordRemoveValue(v68, *MEMORY[0x277CE98D8], 0);
LABEL_77:
                    v47 = v101;
LABEL_78:

                    v43 = persona;
                    v48 = v102;
                    goto LABEL_79;
                  }
                }
              }
            }
          }

          v68 = persona;
          v69 = ABPersonSetImageData(persona, v52, 0);
          v108 &= ABPersonSetImageDataAndCropRect() & v69;
          goto LABEL_76;
        }

        if (v53)
        {
          v103 = v53;
          v61 = DALoggingwithCategory();
          v62 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v61, v62))
          {
            *buf = 138412290;
            v120 = v53;
            _os_log_impl(&dword_24850D000, v61, v62, "Not saving image for contact, as image download failed with error %@", buf, 0xCu);
          }

          v52 = 0;
          goto LABEL_78;
        }
      }
    }

    v52 = 0;
    v103 = 0;
    goto LABEL_67;
  }

  v16 = v23;
  v25 = v33;
  v36 = -[NSObject createRecordInSource:outRecordType:](v33, "createRecordInSource:outRecordType:", [v23 asSource], &self->_abRecordType);
  self->_abRecord = v36;
  if (v36)
  {
    CFRetain(v36);
    abRecord = self->_abRecord;
    if (abRecord)
    {
      person = v22;
      v18 = v21;
      if (a9)
      {
        goto LABEL_55;
      }

      v38 = [(CardDAVVCardItemABImplementation *)self abRecordType];
      abRecord = self->_abRecord;
      if (v38 == 1)
      {
        if (abRecord)
        {
          CFRelease(self->_abRecord);
        }

        self->_abRecord = 0;
        v27 = 2;
        v17 = person;
        v15 = 0;
        goto LABEL_116;
      }

      if (abRecord)
      {
LABEL_55:
        ABAddressBookAddRecord(v20, abRecord, 0);
        v43 = self->_abRecord;
        v45 = 1;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      abRecordType = self->_abRecordType;
      if (abRecordType == 1)
      {
        v60 = [[DAABLegacyGroup alloc] initWithGroup:self->_abRecord];
        [(CardDAVVCardItemABImplementation *)self setCardDAVRecordItem:v60];

        v114 = 0;
        v116 = 0;
        v46 = 0;
        v17 = person;
        v15 = 0;
      }

      else
      {
        v17 = person;
        if (!abRecordType)
        {
          v59 = [[DAABLegacyContact alloc] initWithABPerson:self->_abRecord];
          [(CardDAVVCardItemABImplementation *)self setCardDAVRecordItem:v59];
        }

        v114 = 0;
        v116 = 0;
        v46 = 0;
        v15 = 0;
      }

      goto LABEL_42;
    }
  }

  v39 = DALoggingwithCategory();
  v40 = *(MEMORY[0x277D03988] + 3);
  v17 = v22;
  if (os_log_type_enabled(v39, v40))
  {
    v41 = [(CardDAVVCardItemABImplementation *)self dataPayload];
    *buf = 138412290;
    v120 = v41;
    _os_log_impl(&dword_24850D000, v39, v40, "Unable to parse the contact with this data %@", buf, 0xCu);
  }

  v27 = 0;
  v18 = v21;
  v15 = 0;
LABEL_116:

  v97 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)saveIfGroupWithLocalObject:(id)a3 toContainer:(id)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7
{
  v8 = a5;
  v91 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v75 = a4;
  v13 = a7;
  v14 = v12;
  v15 = v13;
  v74 = self;
  if ([v12 isContact])
  {
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      [CardDAVVCardItemABImplementation saveIfGroupWithLocalObject:a2 toContainer:self shouldMergeProperties:? outMergeDidChooseLocalProperties:? account:?];
    }

    v16 = [v12 asPerson];
  }

  else
  {
    v17 = [v12 isGroup];
    v18 = [(CardDAVVCardItemABImplementation *)self abRecordType];
    if (!v17)
    {
      v14 = v12;
      if (v18 != 1)
      {
        v20 = 0;
        abRecord = 0;
        goto LABEL_26;
      }

LABEL_15:
      abRecord = self->_abRecord;
      goto LABEL_16;
    }

    if (v18 != 1)
    {
      [CardDAVVCardItemABImplementation saveIfGroupWithLocalObject:a2 toContainer:self shouldMergeProperties:? outMergeDidChooseLocalProperties:? account:?];
    }

    v14 = v12;
    v16 = [v12 asABGroup];
  }

  abRecord = v16;
  if ([(CardDAVVCardItemABImplementation *)self abRecordType]!= 1)
  {
    v20 = 0;
    goto LABEL_26;
  }

  if (!abRecord)
  {
    goto LABEL_15;
  }

LABEL_16:
  v66 = v14;
  if (v8)
  {
    v20 = objc_opt_new();
  }

  else
  {
    v20 = 0;
  }

  v21 = ABGroupCopyArrayOfAllMembers(abRecord);
  if ([(__CFArray *)v21 count])
  {
    v22 = 0;
    do
    {
      v23 = [(__CFArray *)v21 objectAtIndexedSubscript:v22];

      if (v8)
      {
        v24 = [MEMORY[0x277CCABB0] numberWithInt:ABRecordGetRecordID(v23)];
        [v20 addObject:v24];
      }

      else
      {
        ABGroupRemoveMember(abRecord, v23, 0);
      }

      ++v22;
    }

    while (v22 < [(__CFArray *)v21 count]);
  }

  v14 = v66;
LABEL_26:
  v25 = ABRecordCopyValue(abRecord, *MEMORY[0x277CE97E8]);
  if (!v25)
  {
    goto LABEL_71;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_71;
  }

  v65 = v25;
  v67 = v14;
  v26 = MEMORY[0x277CCAAC8];
  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
  v86 = 0;
  v31 = v26;
  v25 = v65;
  v32 = [v31 unarchivedObjectOfClasses:v30 fromData:v65 error:&v86];
  v63 = v86;

  record = abRecord;
  v64 = v32;
  if (v32)
  {
    v33 = [v32 objectForKeyedSubscript:@"X-ADDRESSBOOKSERVER-MEMBER"];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v77 = [v33 countByEnumeratingWithState:&v82 objects:v90 count:16];
    if (!v77)
    {
      v14 = v67;
      goto LABEL_62;
    }

    v76 = *v83;
    v73 = v33;
    v69 = v8;
    v68 = v20;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v83 != v76)
        {
          objc_enumerationMutation(v33);
        }

        v35 = *(*(&v82 + 1) + 8 * i);
        v36 = [v35 length];
        if (v36 > [@"urn:uuid:" length] && !objc_msgSend(v35, "compare:options:range:", @"urn:uuid:", 1, 0, objc_msgSend(@"urn:uuid:", "length")))
        {
          v37 = [v35 substringFromIndex:{objc_msgSend(@"urn:uuid:", "length")}];
          v38 = [(CardDAVVCardItemABImplementation *)self UUIDToPersonCache];

          if (v38)
          {
            v39 = [(CardDAVVCardItemABImplementation *)self UUIDToPersonCache];
            v40 = [v39 objectForKeyedSubscript:v37];

            if ([v40 count])
            {
              v72 = v37;
              v41 = objc_opt_new();
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v81 = 0u;
              v71 = v40;
              v42 = v40;
              v43 = [v42 countByEnumeratingWithState:&v78 objects:v89 count:16];
              if (v43)
              {
                v44 = v43;
                v45 = *v79;
                do
                {
                  for (j = 0; j != v44; ++j)
                  {
                    if (*v79 != v45)
                    {
                      objc_enumerationMutation(v42);
                    }

                    v47 = *(*(&v78 + 1) + 8 * j);
                    v48 = [v15 databaseHelper];
                    PersonWithRecordID = ABAddressBookGetPersonWithRecordID([v48 abDB], objc_msgSend(v47, "intValue"));

                    if (PersonWithRecordID)
                    {
                      [v41 addObject:PersonWithRecordID];
                    }
                  }

                  v44 = [v42 countByEnumeratingWithState:&v78 objects:v89 count:16];
                }

                while (v44);
              }

              v8 = v69;
              abRecord = record;
              v40 = v71;
              v20 = v68;
              v37 = v72;
            }
          }

          v50 = [v15 databaseHelper];
          [v50 abDB];
          [v75 asSource];
          v51 = v37;
          v52 = ABAddressBookCopyArrayOfAllPeopleWithExternalUUIDInSource();

          if ([v52 count])
          {
            v53 = 0;
            do
            {
              v54 = [v52 objectAtIndexedSubscript:v53];

              if (v8)
              {
                v55 = [MEMORY[0x277CCABB0] numberWithInt:ABRecordGetRecordID(v54)];
                [v20 removeObject:v55];
              }

              ABGroupAddMember(abRecord, v54, 0);
              ++v53;
            }

            while (v53 < [v52 count]);
          }

          v33 = v73;
          self = v74;
        }
      }

      v77 = [v33 countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v77);
  }

  else
  {
    v33 = DALoggingwithCategory();
    v56 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v33, v56))
    {
      *buf = 138412290;
      v57 = v63;
      v88 = v63;
      _os_log_impl(&dword_24850D000, v33, v56, "Unable to decode properties: %@", buf, 0xCu);
      v25 = v65;
      v14 = v67;
      goto LABEL_63;
    }
  }

  v25 = v65;
  v14 = v67;
LABEL_62:
  v57 = v63;
LABEL_63:

  if (v8 && [v20 count])
  {
    v58 = ABGroupCopyCompositeName();
    v59 = DALoggingwithCategory();
    v60 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v59, v60))
    {
      *buf = 138412290;
      v88 = v58;
      _os_log_impl(&dword_24850D000, v59, v60, "Found local members in the group %@ that didn't exist on the server. This group will get pushed to the server", buf, 0xCu);
    }

    if (v58)
    {
      CFRelease(v58);
    }

    ABRecordRemoveValue(record, *MEMORY[0x277CE97E0], 0);
    v25 = v65;
    v14 = v67;
  }

LABEL_71:
  v61 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)setLocalItem:(void *)a3
{
  abRecord = self->_abRecord;
  if (abRecord != a3)
  {
    if (abRecord)
    {
      CFRelease(abRecord);
    }

    self->_abRecord = a3;
    [(CardDAVVCardItemABImplementation *)self setAbRecordType:ABRecordGetRecordType([(CardDAVVCardItemABImplementation *)self abRecord])];
    v6 = self->_abRecord;
    if (v6)
    {

      CFRetain(v6);
    }
  }
}

- (BOOL)loadLocalItemWithAccount:(id)a3
{
  v4 = [a3 databaseHelper];
  v5 = [v4 abDB];

  v6 = [(CardDAVVCardItemABImplementation *)self abRecordType];
  v7 = [(CardDAVVCardItemABImplementation *)self clientID];
  v8 = [v7 intValue];
  if (v6)
  {
    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(v5, v8);
  }

  else
  {
    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(v5, v8);
  }

  v10 = GroupWithRecordID;

  if (!v10)
  {
    return 0;
  }

  [(CardDAVVCardItemABImplementation *)self setLocalItem:v10];
  return 1;
}

- (BOOL)deleteFromContainer:(void *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"CardDAVVCardItemABImplementation.m" lineNumber:619 description:{@"Please read CardDAVVCardItem.h, and try again"}];

  return 0;
}

- (BOOL)deleteFromContainer:(void *)a3 account:(id)a4
{
  if (!self->_abRecord)
  {
    return 0;
  }

  v5 = [a4 databaseHelper];
  ABAddressBookRemoveRecord([v5 abDB], self->_abRecord, 0);

  return self->_abRecord != 0;
}

- (id)createOrphanedABRecordFromParsedVCardOutRecordType:(unsigned int *)a3
{
  v5 = [(CardDAVVCardItemABImplementation *)self dataPayload];

  if (!v5 || (v6 = objc_alloc(MEMORY[0x277CE9780]), -[CardDAVVCardItemABImplementation dataPayload](self, "dataPayload"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 initWithData:v7], v7, v9 = objc_msgSend(v8, "createRecordInSource:outRecordType:", 0, a3), v8, !v9))
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (*a3 == 1)
  {
    v10 = [[DAABLegacyGroup alloc] initWithGroup:v9];
  }

  else
  {
    if (*a3)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v10 = [[DAABLegacyContact alloc] initWithABPerson:v9];
  }

  v11 = v10;
LABEL_10:
  CFRelease(v9);
LABEL_11:

  return v11;
}

- (id)convertToDAContactSearchResultElement
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CE9780]);
  v4 = [(CardDAVVCardItemABImplementation *)self dataPayload];
  v5 = [v3 initWithData:v4];

  v6 = [v5 createRecordInSource:0 outRecordType:&self->_abRecordType];
  if (v6)
  {
    v7 = v6;
    if ([(CardDAVVCardItemABImplementation *)self abRecordType])
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_opt_new();
      v54 = ABRecordCopyValue(v7, *MEMORY[0x277CE9880]);
      [v8 setDisplayName:?];
      v53 = ABRecordCopyValue(v7, *MEMORY[0x277CE98C0]);
      [v8 setFirstName:?];
      v52 = ABRecordCopyValue(v7, *MEMORY[0x277CE9980]);
      [v8 setLastName:?];
      v9 = ABRecordCopyValue(v7, *MEMORY[0x277CE9888]);
      if (v9)
      {
        v10 = v9;
        if (ABMultiValueGetCount(v9))
        {
          v11 = ABMultiValueCopyValueAtIndex(v10, 0);
          [v8 setEmailAddress:v11];
        }

        CFRelease(v10);
      }

      v12 = ABRecordCopyValue(v7, *MEMORY[0x277CE9A18]);
      if (v12)
      {
        v13 = v12;
        Count = ABMultiValueGetCount(v12);
        if (Count >= 1)
        {
          v15 = Count;
          v16 = 0;
          v17 = *MEMORY[0x277CE9AE8];
          v18 = *MEMORY[0x277CE9A08];
          v55 = *MEMORY[0x277CE9800];
          v51 = *MEMORY[0x277CE99F8];
          v50 = *MEMORY[0x277CE9A00];
          v49 = *MEMORY[0x277CE99F0];
          v48 = *MEMORY[0x277CE9A28];
          v47 = *MEMORY[0x277CE9A10];
          type = *(MEMORY[0x277D03988] + 3);
          do
          {
            v19 = ABMultiValueCopyLabelAtIndex(v13, v16);
            v20 = ABMultiValueCopyValueAtIndex(v13, v16);
            if ([(__CFString *)v19 isEqualToString:v17])
            {
              [v8 setWorkPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v18])
            {
              [v8 setMobilePhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v55])
            {
              [v8 setHomePhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v51])
            {
              [v8 setIPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v50])
            {
              [v8 setMainPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v49])
            {
              [v8 setFaxPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v48])
            {
              [v8 setWorkFaxPhone:v20];
            }

            else if ([(__CFString *)v19 isEqualToString:v47])
            {
              [v8 setPagerNumber:v20];
            }

            else
            {
              log = DALoggingwithCategory();
              if (os_log_type_enabled(log, type))
              {
                *buf = 138412290;
                v58 = v19;
                _os_log_impl(&dword_24850D000, log, type, "Unknown phone number label %@", buf, 0xCu);
              }
            }

            ++v16;
          }

          while (v15 != v16);
        }

        CFRelease(v13);
      }

      v21 = ABRecordCopyValue(v7, *MEMORY[0x277CE99C0]);
      [v8 setCompany:v21];
      v22 = ABRecordCopyValue(v7, *MEMORY[0x277CE9958]);
      [v8 setTitle:v22];
      v23 = ABRecordCopyValue(v7, *MEMORY[0x277CE99B0]);
      [v8 setAlias:v23];
      v24 = ABRecordCopyValue(v7, *MEMORY[0x277CE9828]);
      if (v24)
      {
        v25 = v24;
        if (ABMultiValueGetCount(v24))
        {
          v26 = ABMultiValueCopyValueAtIndex(v25, 0);
          v27 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9838]];
          [v8 setStreet:v27];

          v28 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9810]];
          [v8 setCity:v28];

          v29 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9830]];
          [v8 setState:v29];

          v30 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9840]];
          [v8 setZip:v30];

          v31 = [v26 objectForKeyedSubscript:*MEMORY[0x277CE9820]];
          [v8 setCountry:v31];
        }

        CFRelease(v25);
      }

      v32 = ABPersonCopyImageDataWithFormat(v7, kABPersonImageFormatThumbnail);
      v33 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v32 encoding:4];
      if ([v33 length])
      {
        v34 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v33 options:0];
        [v8 setJpegPhoto:v34];
      }

      else
      {
        [v8 setJpegPhoto:v32];
      }

      v35 = ABRecordCopyValue(v7, *MEMORY[0x277CE98E8]);
      if (v35)
      {
        v36 = v35;
        if (ABMultiValueGetCount(v35))
        {
          v37 = ABMultiValueCopyValueAtIndex(v36, 0);
          [v37 objectForKeyedSubscript:*MEMORY[0x277CE9920]];
          v56 = v23;
          v38 = v22;
          v40 = v39 = v21;
          [v8 setImService:v40];

          v41 = [v37 objectForKeyedSubscript:*MEMORY[0x277CE9948]];
          [v8 setImUsername:v41];

          v21 = v39;
          v22 = v38;
          v23 = v56;
        }

        CFRelease(v36);
      }
    }

    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  v42 = [v8 emailAddress];
  [v8 setIdentifierOnServer:v42];

  v43 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)initWithURL:(uint64_t)a3 eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:74 description:{@"%@ wasn't a CardDAVDaemonAccount", a3}];
}

- (void)initWithURL:(uint64_t)a3 eTag:dataPayload:inContainerWithURL:withAccountInfoProvider:.cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:75 description:{@"%@ wasn't a CardDAVDaemonAccount", a3}];
}

- (void)saveIfGroupWithLocalObject:(uint64_t)a1 toContainer:(uint64_t)a2 shouldMergeProperties:outMergeDidChooseLocalProperties:account:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:509 description:@"Error: abRecordType type mismatch for group"];
}

- (void)saveIfGroupWithLocalObject:(uint64_t)a1 toContainer:(uint64_t)a2 shouldMergeProperties:outMergeDidChooseLocalProperties:account:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CardDAVVCardItemABImplementation.m" lineNumber:505 description:@"Error: abRecordType type mismatch for contact"];
}

@end