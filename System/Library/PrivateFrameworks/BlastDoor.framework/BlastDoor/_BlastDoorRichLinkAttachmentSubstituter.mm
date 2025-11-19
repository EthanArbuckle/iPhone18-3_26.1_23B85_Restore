@interface _BlastDoorRichLinkAttachmentSubstituter
- (_BlastDoorRichLinkAttachmentSubstituter)init;
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
- (id)unarchiver:(id)a3 didDecodeObject:(id)a4;
@end

@implementation _BlastDoorRichLinkAttachmentSubstituter

- (_BlastDoorRichLinkAttachmentSubstituter)init
{
  v9 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = _BlastDoorRichLinkAttachmentSubstituter;
  v2 = [(_BlastDoorRichLinkAttachmentSubstituter *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    archivedAttachments = v2->_archivedAttachments;
    v2->_archivedAttachments = v3;

    *&v2->_shouldSubstituteAttachments = 1;
    v5 = v2;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_shouldSubstituteAttachments)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [[_BlastDoorLPARAssetAttachmentSubstitute alloc] initWithARAsset:v8];
LABEL_4:
    v10 = v9;
    [(_BlastDoorLPARAssetAttachmentSubstitute *)v9 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
    archivedAttachments = self->_archivedAttachments;
    v12 = [v8 data];

    [(NSMutableArray *)archivedAttachments addObject:v12];
    goto LABEL_17;
  }

  if (!self->_shouldSubstituteAttachments)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [[_BlastDoorLPImageAttachmentSubstitute alloc] initWithImage:v8];
    goto LABEL_4;
  }

  if (!self->_shouldSubstituteAttachments || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_13:
    if (self->_shouldIgnoreAppStoreMetadata && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    goto LABEL_17;
  }

  v13 = v7;
  v14 = [v13 data];

  if (!v14)
  {

    goto LABEL_13;
  }

  v10 = [[_BlastDoorLPVideoAttachmentSubstitute alloc] initWithVideo:v13];
  [(_BlastDoorLPVideoAttachmentSubstitute *)v10 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
  v15 = self->_archivedAttachments;
  v16 = [v13 data];
  [(NSMutableArray *)v15 addObject:v16];

LABEL_17:

  return v10;
}

- (id)unarchiver:(id)a3 didDecodeObject:(id)a4
{
  v6 = a3;
  if (self->_shouldSubstituteAttachments && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || self->_shouldSubstituteAttachments && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || self->_shouldSubstituteAttachments && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))))
  {
    v7 = a4;
    v8 = [v7 index];
    if (v8 >= [(NSArray *)self->_attachmentsForUnarchiving count])
    {
      v11 = [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v9 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [v7 index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 setFileURL:v9];
        v10 = v7;
      }

      else
      {
        v10 = [MEMORY[0x277CBEB68] null];
      }

      v11 = v10;
    }
  }

  else
  {
    v11 = a4;
  }

  return v11;
}

@end