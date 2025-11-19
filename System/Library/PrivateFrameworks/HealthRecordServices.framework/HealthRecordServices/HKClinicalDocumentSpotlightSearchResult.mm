@interface HKClinicalDocumentSpotlightSearchResult
- (BOOL)isEqual:(id)a3;
- (HKClinicalDocumentSpotlightSearchResult)init;
- (HKClinicalDocumentSpotlightSearchResult)initWithCoder:(id)a3;
- (HKClinicalDocumentSpotlightSearchResult)initWithTitle:(id)a3 medicalRecord:(id)a4 attachmentUUID:(id)a5 previewString:(id)a6 previewStringMatchRanges:(id)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalDocumentSpotlightSearchResult)initWithTitle:(id)a3 medicalRecord:(id)a4 attachmentUUID:(id)a5 previewString:(id)a6 previewStringMatchRanges:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = HKClinicalDocumentSpotlightSearchResult;
  v17 = [(HKClinicalDocumentSpotlightSearchResult *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    title = v17->_title;
    v17->_title = v18;

    v20 = [v13 copy];
    medicalRecord = v17->_medicalRecord;
    v17->_medicalRecord = v20;

    v22 = [v14 copy];
    attachmentUUID = v17->_attachmentUUID;
    v17->_attachmentUUID = v22;

    v24 = [v15 copy];
    previewString = v17->_previewString;
    v17->_previewString = v24;

    v26 = [v16 copy];
    previewStringMatchRanges = v17->_previewStringMatchRanges;
    v17->_previewStringMatchRanges = v26;
  }

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      title = self->_title;
      v8 = [(HKClinicalDocumentSpotlightSearchResult *)v6 title];
      if (title != v8)
      {
        v9 = [(HKClinicalDocumentSpotlightSearchResult *)v6 title];
        if (!v9)
        {
          v13 = 0;
          goto LABEL_48;
        }

        v10 = v9;
        v11 = self->_title;
        v12 = [(HKClinicalDocumentSpotlightSearchResult *)v6 title];
        if (![(NSString *)v11 isEqualToString:v12])
        {
          v13 = 0;
LABEL_47:

          goto LABEL_48;
        }

        v55 = v10;
        v54 = v12;
      }

      medicalRecord = self->_medicalRecord;
      v15 = [(HKClinicalDocumentSpotlightSearchResult *)v6 medicalRecord];
      if (medicalRecord != v15)
      {
        v16 = [(HKClinicalDocumentSpotlightSearchResult *)v6 medicalRecord];
        if (!v16)
        {
          goto LABEL_35;
        }

        v53 = v16;
        v17 = self->_medicalRecord;
        v3 = [(HKClinicalDocumentSpotlightSearchResult *)v6 medicalRecord];
        if (([(HKMedicalRecord *)v17 isEqual:v3]& 1) == 0)
        {
          goto LABEL_34;
        }
      }

      attachmentUUID = self->_attachmentUUID;
      v19 = [(HKClinicalDocumentSpotlightSearchResult *)v6 attachmentUUID];
      v52 = attachmentUUID;
      if (attachmentUUID == v19)
      {
        v51 = medicalRecord;
        v26 = v15;
LABEL_20:
        previewString = self->_previewString;
        v28 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewString];
        v29 = v28;
        v48 = previewString;
        v50 = v3;
        if (previewString == v28)
        {
          v46 = v28;
          v47 = v19;
          v15 = v26;
        }

        else
        {
          v30 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewString];
          if (!v30)
          {
            v13 = 0;
            v15 = v26;
            medicalRecord = v51;
            goto LABEL_37;
          }

          v44 = v30;
          v47 = v19;
          v31 = self->_previewString;
          v32 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewString];
          v33 = v31;
          v34 = v32;
          v15 = v26;
          if (![(NSString *)v33 isEqualToString:v32])
          {

            v13 = 0;
            v19 = v47;
            medicalRecord = v51;
            v41 = v52;
            goto LABEL_41;
          }

          v43 = v34;
          v46 = v29;
        }

        medicalRecord = v51;
        previewStringMatchRanges = self->_previewStringMatchRanges;
        v36 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewStringMatchRanges];
        v13 = previewStringMatchRanges == v36;
        if (previewStringMatchRanges != v36)
        {
          v37 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewStringMatchRanges];
          if (v37)
          {
            v38 = v37;
            v39 = self->_previewStringMatchRanges;
            v40 = [(HKClinicalDocumentSpotlightSearchResult *)v6 previewStringMatchRanges];
            v13 = [(NSArray *)v39 isEqual:v40];

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

          v19 = v47;
          goto LABEL_40;
        }

        v19 = v47;
LABEL_37:

LABEL_40:
        v41 = v52;
LABEL_41:
        if (v41 != v19)
        {
        }

        goto LABEL_43;
      }

      v20 = [(HKClinicalDocumentSpotlightSearchResult *)v6 attachmentUUID];
      if (!v20)
      {
        v50 = v3;
        v13 = 0;
LABEL_43:

        if (medicalRecord != v15)
        {
        }

LABEL_46:
        v12 = v54;
        v10 = v55;
        if (title != v8)
        {
          goto LABEL_47;
        }

LABEL_48:

        goto LABEL_49;
      }

      v49 = v20;
      v51 = medicalRecord;
      v21 = v19;
      v22 = self->_attachmentUUID;
      v23 = [(HKClinicalDocumentSpotlightSearchResult *)v6 attachmentUUID];
      v24 = v22;
      v25 = v23;
      if (([(NSUUID *)v24 isEqual:v23]& 1) != 0)
      {
        v26 = v15;
        v45 = v25;
        v19 = v21;
        goto LABEL_20;
      }

      if (medicalRecord != v15)
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

- (HKClinicalDocumentSpotlightSearchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MedicalRecord"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AttachmentUUID"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreviewString"];
  v9 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"PreviewStringMatchRanges"];
  if (v5 && v6 && v7)
  {
    self = [(HKClinicalDocumentSpotlightSearchResult *)self initWithTitle:v5 medicalRecord:v6 attachmentUUID:v7 previewString:v8 previewStringMatchRanges:v9];
    v10 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"Title"];
  [v5 encodeObject:self->_previewString forKey:@"PreviewString"];
  [v5 encodeObject:self->_attachmentUUID forKey:@"AttachmentUUID"];
  [v5 encodeObject:self->_medicalRecord forKey:@"MedicalRecord"];
  [v5 encodeObject:self->_previewStringMatchRanges forKey:@"PreviewStringMatchRanges"];
}

@end