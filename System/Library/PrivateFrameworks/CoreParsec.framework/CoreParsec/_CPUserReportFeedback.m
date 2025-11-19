@interface _CPUserReportFeedback
- (BOOL)isEqual:(id)a3;
- (_CPUserReportFeedback)init;
- (_CPUserReportFeedback)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)addSections:(id)a3;
- (void)setSections:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPUserReportFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPSearchResultForFeedback *)self->_result hash];
  v5 = v4 ^ [(_CPPunchoutForFeedback *)self->_userSelection hash];
  v6 = v5 ^ [(_CPCardSectionForFeedback *)self->_cardSection hash];
  v7 = v6 ^ [(NSData *)self->_uuidBytes hash];
  v8 = v7 ^ [(NSArray *)self->_sections hash]^ v3;
  return v8 ^ [(NSString *)self->_uploadedDataIdentifier hash]^ (2654435761 * self->_reportType);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  timestamp = self->_timestamp;
  if (timestamp != [v4 timestamp])
  {
    goto LABEL_33;
  }

  v6 = [(_CPUserReportFeedback *)self result];
  v7 = [v4 result];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v8 = [(_CPUserReportFeedback *)self result];
  if (v8)
  {
    v9 = v8;
    v10 = [(_CPUserReportFeedback *)self result];
    v11 = [v4 result];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(_CPUserReportFeedback *)self userSelection];
  v7 = [v4 userSelection];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v13 = [(_CPUserReportFeedback *)self userSelection];
  if (v13)
  {
    v14 = v13;
    v15 = [(_CPUserReportFeedback *)self userSelection];
    v16 = [v4 userSelection];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(_CPUserReportFeedback *)self cardSection];
  v7 = [v4 cardSection];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v18 = [(_CPUserReportFeedback *)self cardSection];
  if (v18)
  {
    v19 = v18;
    v20 = [(_CPUserReportFeedback *)self cardSection];
    v21 = [v4 cardSection];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(_CPUserReportFeedback *)self uuidBytes];
  v7 = [v4 uuidBytes];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v23 = [(_CPUserReportFeedback *)self uuidBytes];
  if (v23)
  {
    v24 = v23;
    v25 = [(_CPUserReportFeedback *)self uuidBytes];
    v26 = [v4 uuidBytes];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(_CPUserReportFeedback *)self sections];
  v7 = [v4 sections];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_32;
  }

  v28 = [(_CPUserReportFeedback *)self sections];
  if (v28)
  {
    v29 = v28;
    v30 = [(_CPUserReportFeedback *)self sections];
    v31 = [v4 sections];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  v6 = [(_CPUserReportFeedback *)self uploadedDataIdentifier];
  v7 = [v4 uploadedDataIdentifier];
  if ((v6 != 0) != (v7 == 0))
  {
    v33 = [(_CPUserReportFeedback *)self uploadedDataIdentifier];
    if (!v33)
    {

LABEL_36:
      reportType = self->_reportType;
      v38 = reportType == [v4 reportType];
      goto LABEL_34;
    }

    v34 = v33;
    v35 = [(_CPUserReportFeedback *)self uploadedDataIdentifier];
    v36 = [v4 uploadedDataIdentifier];
    v37 = [v35 isEqual:v36];

    if (v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
LABEL_32:
  }

LABEL_33:
  v38 = 0;
LABEL_34:

  return v38;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_CPUserReportFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  v6 = [(_CPUserReportFeedback *)self result];

  if (v6)
  {
    v7 = [(_CPUserReportFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_CPUserReportFeedback *)self userSelection];

  if (v8)
  {
    v9 = [(_CPUserReportFeedback *)self userSelection];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(_CPUserReportFeedback *)self cardSection];

  if (v10)
  {
    v11 = [(_CPUserReportFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(_CPUserReportFeedback *)self uuidBytes];

  if (v12)
  {
    uuidBytes = self->_uuidBytes;
    PBDataWriterWriteDataField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_sections;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = [(_CPUserReportFeedback *)self uploadedDataIdentifier];

  if (v20)
  {
    uploadedDataIdentifier = self->_uploadedDataIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_CPUserReportFeedback *)self reportType])
  {
    reportType = self->_reportType;
    PBDataWriterWriteInt32Field();
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)addSections:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  v8 = v4;
  if (!sections)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_sections;
    self->_sections = v6;

    v4 = v8;
    sections = self->_sections;
  }

  [(NSArray *)sections addObject:v4];
}

- (void)setSections:(id)a3
{
  v4 = [a3 mutableCopy];
  sections = self->_sections;
  self->_sections = v4;

  MEMORY[0x1EEE66BB8]();
}

- (_CPUserReportFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPUserReportFeedback;
  v2 = [(_CPUserReportFeedback *)&v5 init];
  if (v2)
  {
    [(_CPUserReportFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPUserReportFeedback)initWithFacade:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = _CPUserReportFeedback;
  v5 = [(_CPUserReportFeedback *)&v35 init];
  if (v5)
  {
    -[_CPUserReportFeedback setTimestamp:](v5, "setTimestamp:", [v4 timestamp]);
    v6 = [v4 result];

    if (v6)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      v8 = [v4 result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:v8];
      [(_CPUserReportFeedback *)v5 setResult:v9];
    }

    v10 = [v4 userSelection];

    if (v10)
    {
      v11 = [_CPPunchoutForFeedback alloc];
      v12 = [v4 userSelection];
      v13 = [(_CPPunchoutForFeedback *)v11 initWithFacade:v12];
      [(_CPUserReportFeedback *)v5 setUserSelection:v13];
    }

    v14 = [v4 cardSection];

    if (v14)
    {
      v15 = [_CPCardSectionForFeedback alloc];
      v16 = [v4 cardSection];
      v17 = [(_CPCardSectionForFeedback *)v15 initWithFacade:v16];
      [(_CPUserReportFeedback *)v5 setCardSection:v17];
    }

    v18 = [v4 sections];
    if (v18)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v20 = [v4 sections];
    v21 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [[_CPResultSectionForFeedback alloc] initWithFacade:*(*(&v31 + 1) + 8 * i)];
          [v19 addObject:v25];
        }

        v22 = [v20 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    [(_CPUserReportFeedback *)v5 setSections:v19];
    v26 = [v4 uploadedDataIdentifier];

    if (v26)
    {
      v27 = [v4 uploadedDataIdentifier];
      [(_CPUserReportFeedback *)v5 setUploadedDataIdentifier:v27];
    }

    -[_CPUserReportFeedback setReportType:](v5, "setReportType:", [v4 reportType]);
    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

@end