@interface HKClinicalDocumentSpotlightSearchResult
- (BOOL)isEqual:(id)equal;
- (HKClinicalDocumentSpotlightSearchResult)init;
- (HKClinicalDocumentSpotlightSearchResult)initWithCoder:(id)coder;
- (HKClinicalDocumentSpotlightSearchResult)initWithTitle:(id)title medicalRecord:(id)record attachmentUUID:(id)d previewString:(id)string previewStringMatchRanges:(id)ranges;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalDocumentSpotlightSearchResult

- (HKClinicalDocumentSpotlightSearchResult)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalDocumentSpotlightSearchResult)initWithTitle:(id)title medicalRecord:(id)record attachmentUUID:(id)d previewString:(id)string previewStringMatchRanges:(id)ranges
{
  titleCopy = title;
  recordCopy = record;
  dCopy = d;
  stringCopy = string;
  rangesCopy = ranges;
  v29.receiver = self;
  v29.super_class = HKClinicalDocumentSpotlightSearchResult;
  v17 = [(HKClinicalDocumentSpotlightSearchResult *)&v29 init];
  if (v17)
  {
    v18 = [titleCopy copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [recordCopy copy];
    medicalRecord = v17->_medicalRecord;
    v17->_medicalRecord = v20;

    v22 = [dCopy copy];
    attachmentUUID = v17->_attachmentUUID;
    v17->_attachmentUUID = v22;

    v24 = [stringCopy copy];
    previewString = v17->_previewString;
    v17->_previewString = v24;

    v26 = [rangesCopy copy];
    previewStringMatchRanges = v17->_previewStringMatchRanges;
    v17->_previewStringMatchRanges = v26;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      title = self->_title;
      title = [(HKClinicalDocumentSpotlightSearchResult *)v6 title];
      if (title != title)
      {
        title2 = [(HKClinicalDocumentSpotlightSearchResult *)v6 title];
        if (!title2)
        {
          v13 = 0;
          goto LABEL_48;
        }

        v10 = title2;
        v11 = self->_title;
        title3 = [(HKClinicalDocumentSpotlightSearchResult *)v6 title];
        if (![(NSString *)v11 isEqualToString:title3])
        {
          v13 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v55 = v10;
        v54 = title3;
      }

      medicalRecord = self->_medicalRecord;
      medicalRecord = [(HKClinicalDocumentSpotlightSearchResult *)v6 medicalRecord];
      if (medicalRecord != medicalRecord)
      {
        medicalRecord2 = [(HKClinicalDocumentSpotlightSearchResult *)v6 medicalRecord];
        if (!medicalRecord2)
        {
          goto LABEL_35;
        }

        v53 = medicalRecord2;
        v17 = self->_medicalRecord;
        medicalRecord3 = [(HKClinicalDocumentSpotlightSearchResult *)v6 medicalRecord];
        if (([(HKMedicalRecord *)v17 isEqual:medicalRecord3]& 1) == 0)
        {
          goto LABEL_34;
        }
      }

      attachmentUUID = self->_attachmentUUID;
      attachmentUUID = [(HKClinicalDocumentSpotlightSearchResult *)v6 attachmentUUID];
      v52 = attachmentUUID;
      if (attachmentUUID == attachmentUUID)
      {
        v51 = medicalRecord;
        v26 = medicalRecord;
LABEL_20:
        previewString = self->_previewString;
        previewString = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewString];
        v29 = previewString;
        v48 = previewString;
        v50 = medicalRecord3;
        if (previewString == previewString)
        {
          v46 = previewString;
          v47 = attachmentUUID;
          medicalRecord = v26;
        }

        else
        {
          previewString2 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewString];
          if (!previewString2)
          {
            v13 = 0;
            medicalRecord = v26;
            medicalRecord = v51;
            goto LABEL_37;
          }

          v44 = previewString2;
          v47 = attachmentUUID;
          v31 = self->_previewString;
          previewString3 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewString];
          v33 = v31;
          v34 = previewString3;
          medicalRecord = v26;
          if (![(NSString *)v33 isEqualToString:previewString3])
          {

            v13 = 0;
            attachmentUUID = v47;
            medicalRecord = v51;
            v41 = v52;
            goto LABEL_41;
          }

          v43 = v34;
          v46 = v29;
        }

        medicalRecord = v51;
        previewStringMatchRanges = self->_previewStringMatchRanges;
        previewStringMatchRanges = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewStringMatchRanges];
        v13 = previewStringMatchRanges == previewStringMatchRanges;
        if (previewStringMatchRanges != previewStringMatchRanges)
        {
          previewStringMatchRanges2 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewStringMatchRanges];
          if (previewStringMatchRanges2)
          {
            v38 = previewStringMatchRanges2;
            v39 = self->_previewStringMatchRanges;
            previewStringMatchRanges3 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewStringMatchRanges];
            v13 = [(NSArray *)v39 isEqual:previewStringMatchRanges3];

            if (v48 != v46)
            {
            }

            goto LABEL_39;
          }
        }

        v29 = v46;
        if (v48 == v46)
        {
LABEL_39:

          attachmentUUID = v47;
          goto LABEL_40;
        }

        attachmentUUID = v47;
LABEL_37:

LABEL_40:
        v41 = v52;
LABEL_41:
        if (v41 != attachmentUUID)
        {
        }

        goto LABEL_43;
      }

      attachmentUUID2 = [(HKClinicalDocumentSpotlightSearchResult *)v6 attachmentUUID];
      if (!attachmentUUID2)
      {
        v50 = medicalRecord3;
        v13 = 0;
LABEL_43:

        if (medicalRecord != medicalRecord)
        {
        }

LABEL_46:
        title3 = v54;
        v10 = v55;
        if (title != title)
        {
          goto LABEL_47;
        }

LABEL_48:

        goto LABEL_49;
      }

      v49 = attachmentUUID2;
      v51 = medicalRecord;
      v21 = attachmentUUID;
      v22 = self->_attachmentUUID;
      attachmentUUID3 = [(HKClinicalDocumentSpotlightSearchResult *)v6 attachmentUUID];
      v24 = v22;
      v25 = attachmentUUID3;
      if (([(NSUUID *)v24 isEqual:attachmentUUID3]& 1) != 0)
      {
        v26 = medicalRecord;
        v45 = v25;
        attachmentUUID = v21;
        goto LABEL_20;
      }

      if (medicalRecord != medicalRecord)
      {
LABEL_34:
      }

LABEL_35:

      v13 = 0;
      goto LABEL_46;
    }

    v13 = 0;
  }

LABEL_49:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(HKMedicalRecord *)self->_medicalRecord hash]^ v3;
  v5 = [(NSUUID *)self->_attachmentUUID hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_previewString hash];
  return v6 ^ [(NSArray *)self->_previewStringMatchRanges hash];
}

- (HKClinicalDocumentSpotlightSearchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecord"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentUUID"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreviewString"];
  v9 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PreviewStringMatchRanges"];
  if (v5 && v6 && v7)
  {
    self = [(HKClinicalDocumentSpotlightSearchResult *)self initWithTitle:v5 medicalRecord:v6 attachmentUUID:v7 previewString:v8 previewStringMatchRanges:v9];
    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"Title"];
  [coderCopy encodeObject:self->_previewString forKey:@"PreviewString"];
  [coderCopy encodeObject:self->_attachmentUUID forKey:@"AttachmentUUID"];
  [coderCopy encodeObject:self->_medicalRecord forKey:@"MedicalRecord"];
  [coderCopy encodeObject:self->_previewStringMatchRanges forKey:@"PreviewStringMatchRanges"];
}

@end