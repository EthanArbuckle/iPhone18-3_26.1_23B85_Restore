@interface _BlastDoorLPMessagesPayload
+ (id)linkWithDataRepresentation:(id)a3 attachments:(id)a4;
- (BOOL)_needsWorkaroundForAppStoreTransformerCrash;
- (_BlastDoorLPMessagesPayload)initWithCoder:(id)a3;
- (id)dataRepresentationWithOutOfLineAttachments:(id *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _BlastDoorLPMessagesPayload

- (_BlastDoorLPMessagesPayload)initWithCoder:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _BlastDoorLPMessagesPayload;
  v5 = [(_BlastDoorLPMessagesPayload *)&v13 init];
  if (v5)
  {
    v5->_placeholder = [v4 decodeBoolForKey:@"richLinkIsPlaceholder"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"richLinkMetadata"];
    metadata = v5->_metadata;
    v5->_metadata = v6;

    v8 = v5->_metadata;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = v5->_metadata;
      v5->_metadata = 0;
    }

    v10 = v5;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  placeholder = self->_placeholder;
  v5 = a3;
  [v5 encodeBool:placeholder forKey:@"richLinkIsPlaceholder"];
  [v5 encodeObject:self->_metadata forKey:@"richLinkMetadata"];
}

+ (id)linkWithDataRepresentation:(id)a3 attachments:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:0];
  [v7 setClass:objc_opt_class() forClassName:@"RichLink"];
  [v7 setClass:objc_opt_class() forClassName:@"RichLinkARAssetAttachmentSubstitute"];
  [v7 setClass:objc_opt_class() forClassName:@"RichLinkImageAttachmentSubstitute"];
  [v7 setClass:objc_opt_class() forClassName:@"RichLinkVideoAttachmentSubstitute"];
  [v7 _enableStrictSecureDecodingMode];
  [v7 setDecodingFailurePolicy:1];
  v8 = objc_alloc_init(_BlastDoorRichLinkAttachmentSubstituter);
  [(_BlastDoorRichLinkAttachmentSubstituter *)v8 setAttachmentsForUnarchiving:v6];
  [v7 setDelegate:v8];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v13 = *MEMORY[0x277CCA308];
  v21[0] = 0;
  v14 = [v7 decodeTopLevelObjectOfClasses:v12 forKey:v13 error:v21];
  v15 = v21[0];

  [v7 finishDecoding];
  if (v15)
  {
    goto LABEL_2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v14;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = objc_alloc_init(_BlastDoorLPMessagesPayload);
      [(_BlastDoorLPMessagesPayload *)v16 setMetadata:v14];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_2:
        v16 = 0;
        goto LABEL_9;
      }

      v16 = objc_alloc_init(_BlastDoorLPMessagesPayload);
      v17 = v14;
      v18 = [v17 metadata];
      [(_BlastDoorLPMessagesPayload *)v16 setMetadata:v18];

      -[_BlastDoorLPMessagesPayload setNeedsSubresourceFetch:](v16, "setNeedsSubresourceFetch:", [v17 hasFetchedSubresources] ^ 1);
      -[_BlastDoorLPMessagesPayload setNeedsCompleteFetch:](v16, "setNeedsCompleteFetch:", [v17 hasCompletedFetch] ^ 1);
    }
  }

LABEL_9:

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dataRepresentationWithOutOfLineAttachments:(id *)a3
{
  v5 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v5 setClassName:@"RichLink" forClass:objc_opt_class()];
  [v5 setClassName:@"RichLinkARAssetAttachmentSubstitute" forClass:objc_opt_class()];
  [v5 setClassName:@"RichLinkImageAttachmentSubstitute" forClass:objc_opt_class()];
  [v5 setClassName:@"RichLinkVideoAttachmentSubstitute" forClass:objc_opt_class()];
  v6 = objc_alloc_init(_BlastDoorRichLinkAttachmentSubstituter);
  [(_BlastDoorRichLinkAttachmentSubstituter *)v6 setShouldSubstituteAttachments:a3 != 0];
  [(_BlastDoorRichLinkAttachmentSubstituter *)v6 setShouldIgnoreAppStoreMetadata:[(_BlastDoorLPMessagesPayload *)self _needsWorkaroundForAppStoreTransformerCrash]];
  [v5 setDelegate:v6];
  [v5 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  v7 = [v5 encodedData];
  if (a3)
  {
    *a3 = [(_BlastDoorRichLinkAttachmentSubstituter *)v6 archivedAttachments];
  }

  return v7;
}

- (BOOL)_needsWorkaroundForAppStoreTransformerCrash
{
  v3 = [(_BlastDoorLPLinkMetadata *)self->_metadata specialization];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    return 0;
  }

  v5 = [(_BlastDoorLPLinkMetadata *)self->_metadata specialization];
  v6 = [v5 screenshots];
  v7 = [v6 count] == 0;

  return v7;
}

@end