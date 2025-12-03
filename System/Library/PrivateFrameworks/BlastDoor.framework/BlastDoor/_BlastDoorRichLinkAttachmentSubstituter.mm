@interface _BlastDoorRichLinkAttachmentSubstituter
- (_BlastDoorRichLinkAttachmentSubstituter)init;
- (id)archiver:(id)archiver willEncodeObject:(id)object;
- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object;
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

- (id)archiver:(id)archiver willEncodeObject:(id)object
{
  archiverCopy = archiver;
  objectCopy = object;
  if (!self->_shouldSubstituteAttachments)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
    v9 = [[_BlastDoorLPARAssetAttachmentSubstitute alloc] initWithARAsset:v8];
LABEL_4:
    v10 = v9;
    [(_BlastDoorLPARAssetAttachmentSubstitute *)v9 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
    archivedAttachments = self->_archivedAttachments;
    data = [v8 data];

    [(NSMutableArray *)archivedAttachments addObject:data];
    goto LABEL_17;
  }

  if (!self->_shouldSubstituteAttachments)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objectCopy;
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
      v10 = objectCopy;
    }

    goto LABEL_17;
  }

  v13 = objectCopy;
  data2 = [v13 data];

  if (!data2)
  {

    goto LABEL_13;
  }

  v10 = [[_BlastDoorLPVideoAttachmentSubstitute alloc] initWithVideo:v13];
  [(_BlastDoorLPVideoAttachmentSubstitute *)v10 setIndex:[(NSMutableArray *)self->_archivedAttachments count]];
  v15 = self->_archivedAttachments;
  data3 = [v13 data];
  [(NSMutableArray *)v15 addObject:data3];

LABEL_17:

  return v10;
}

- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object
{
  unarchiverCopy = unarchiver;
  if (self->_shouldSubstituteAttachments && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || self->_shouldSubstituteAttachments && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || self->_shouldSubstituteAttachments && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))))
  {
    objectCopy = object;
    index = [objectCopy index];
    if (index >= [(NSArray *)self->_attachmentsForUnarchiving count])
    {
      objectCopy2 = [MEMORY[0x277CBEB68] null];
    }

    else
    {
      v9 = -[NSArray objectAtIndexedSubscript:](self->_attachmentsForUnarchiving, "objectAtIndexedSubscript:", [objectCopy index]);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [objectCopy setFileURL:v9];
        null = objectCopy;
      }

      else
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      objectCopy2 = null;
    }
  }

  else
  {
    objectCopy2 = object;
  }

  return objectCopy2;
}

@end