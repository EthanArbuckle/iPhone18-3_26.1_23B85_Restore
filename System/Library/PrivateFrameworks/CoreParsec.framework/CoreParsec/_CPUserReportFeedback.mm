@interface _CPUserReportFeedback
- (BOOL)isEqual:(id)equal;
- (_CPUserReportFeedback)init;
- (_CPUserReportFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)addSections:(id)sections;
- (void)setSections:(id)sections;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_33;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_33;
  }

  result = [(_CPUserReportFeedback *)self result];
  result2 = [equalCopy result];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_32;
  }

  result3 = [(_CPUserReportFeedback *)self result];
  if (result3)
  {
    v9 = result3;
    result4 = [(_CPUserReportFeedback *)self result];
    result5 = [equalCopy result];
    v12 = [result4 isEqual:result5];

    if (!v12)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  result = [(_CPUserReportFeedback *)self userSelection];
  result2 = [equalCopy userSelection];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_32;
  }

  userSelection = [(_CPUserReportFeedback *)self userSelection];
  if (userSelection)
  {
    v14 = userSelection;
    userSelection2 = [(_CPUserReportFeedback *)self userSelection];
    userSelection3 = [equalCopy userSelection];
    v17 = [userSelection2 isEqual:userSelection3];

    if (!v17)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  result = [(_CPUserReportFeedback *)self cardSection];
  result2 = [equalCopy cardSection];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_32;
  }

  cardSection = [(_CPUserReportFeedback *)self cardSection];
  if (cardSection)
  {
    v19 = cardSection;
    cardSection2 = [(_CPUserReportFeedback *)self cardSection];
    cardSection3 = [equalCopy cardSection];
    v22 = [cardSection2 isEqual:cardSection3];

    if (!v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  result = [(_CPUserReportFeedback *)self uuidBytes];
  result2 = [equalCopy uuidBytes];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_32;
  }

  uuidBytes = [(_CPUserReportFeedback *)self uuidBytes];
  if (uuidBytes)
  {
    v24 = uuidBytes;
    uuidBytes2 = [(_CPUserReportFeedback *)self uuidBytes];
    uuidBytes3 = [equalCopy uuidBytes];
    v27 = [uuidBytes2 isEqual:uuidBytes3];

    if (!v27)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  result = [(_CPUserReportFeedback *)self sections];
  result2 = [equalCopy sections];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_32;
  }

  sections = [(_CPUserReportFeedback *)self sections];
  if (sections)
  {
    v29 = sections;
    sections2 = [(_CPUserReportFeedback *)self sections];
    sections3 = [equalCopy sections];
    v32 = [sections2 isEqual:sections3];

    if (!v32)
    {
      goto LABEL_33;
    }
  }

  else
  {
  }

  result = [(_CPUserReportFeedback *)self uploadedDataIdentifier];
  result2 = [equalCopy uploadedDataIdentifier];
  if ((result != 0) != (result2 == 0))
  {
    uploadedDataIdentifier = [(_CPUserReportFeedback *)self uploadedDataIdentifier];
    if (!uploadedDataIdentifier)
    {

LABEL_36:
      reportType = self->_reportType;
      v38 = reportType == [equalCopy reportType];
      goto LABEL_34;
    }

    v34 = uploadedDataIdentifier;
    uploadedDataIdentifier2 = [(_CPUserReportFeedback *)self uploadedDataIdentifier];
    uploadedDataIdentifier3 = [equalCopy uploadedDataIdentifier];
    v37 = [uploadedDataIdentifier2 isEqual:uploadedDataIdentifier3];

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

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPUserReportFeedback *)self timestamp])
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  result = [(_CPUserReportFeedback *)self result];

  if (result)
  {
    result2 = [(_CPUserReportFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  userSelection = [(_CPUserReportFeedback *)self userSelection];

  if (userSelection)
  {
    userSelection2 = [(_CPUserReportFeedback *)self userSelection];
    PBDataWriterWriteSubmessage();
  }

  cardSection = [(_CPUserReportFeedback *)self cardSection];

  if (cardSection)
  {
    cardSection2 = [(_CPUserReportFeedback *)self cardSection];
    PBDataWriterWriteSubmessage();
  }

  uuidBytes = [(_CPUserReportFeedback *)self uuidBytes];

  if (uuidBytes)
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

  uploadedDataIdentifier = [(_CPUserReportFeedback *)self uploadedDataIdentifier];

  if (uploadedDataIdentifier)
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

- (void)addSections:(id)sections
{
  sectionsCopy = sections;
  sections = self->_sections;
  v8 = sectionsCopy;
  if (!sections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sections;
    self->_sections = array;

    sectionsCopy = v8;
    sections = self->_sections;
  }

  [(NSArray *)sections addObject:sectionsCopy];
}

- (void)setSections:(id)sections
{
  v4 = [sections mutableCopy];
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

- (_CPUserReportFeedback)initWithFacade:(id)facade
{
  v37 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v35.receiver = self;
  v35.super_class = _CPUserReportFeedback;
  v5 = [(_CPUserReportFeedback *)&v35 init];
  if (v5)
  {
    -[_CPUserReportFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    result = [facadeCopy result];

    if (result)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      result2 = [facadeCopy result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:result2];
      [(_CPUserReportFeedback *)v5 setResult:v9];
    }

    userSelection = [facadeCopy userSelection];

    if (userSelection)
    {
      v11 = [_CPPunchoutForFeedback alloc];
      userSelection2 = [facadeCopy userSelection];
      v13 = [(_CPPunchoutForFeedback *)v11 initWithFacade:userSelection2];
      [(_CPUserReportFeedback *)v5 setUserSelection:v13];
    }

    cardSection = [facadeCopy cardSection];

    if (cardSection)
    {
      v15 = [_CPCardSectionForFeedback alloc];
      cardSection2 = [facadeCopy cardSection];
      v17 = [(_CPCardSectionForFeedback *)v15 initWithFacade:cardSection2];
      [(_CPUserReportFeedback *)v5 setCardSection:v17];
    }

    sections = [facadeCopy sections];
    if (sections)
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
    sections2 = [facadeCopy sections];
    v21 = [sections2 countByEnumeratingWithState:&v31 objects:v36 count:16];
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
            objc_enumerationMutation(sections2);
          }

          v25 = [[_CPResultSectionForFeedback alloc] initWithFacade:*(*(&v31 + 1) + 8 * i)];
          [v19 addObject:v25];
        }

        v22 = [sections2 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v22);
    }

    [(_CPUserReportFeedback *)v5 setSections:v19];
    uploadedDataIdentifier = [facadeCopy uploadedDataIdentifier];

    if (uploadedDataIdentifier)
    {
      uploadedDataIdentifier2 = [facadeCopy uploadedDataIdentifier];
      [(_CPUserReportFeedback *)v5 setUploadedDataIdentifier:uploadedDataIdentifier2];
    }

    -[_CPUserReportFeedback setReportType:](v5, "setReportType:", [facadeCopy reportType]);
    v28 = v5;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v5;
}

@end