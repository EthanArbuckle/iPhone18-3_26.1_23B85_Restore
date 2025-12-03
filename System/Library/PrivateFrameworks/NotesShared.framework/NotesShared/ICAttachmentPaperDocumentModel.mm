@interface ICAttachmentPaperDocumentModel
- (id)additionalIndexableTextContentInNote;
- (unint64_t)paperPageCount;
- (void)setPaperPageCount:(unint64_t)count;
@end

@implementation ICAttachmentPaperDocumentModel

- (id)additionalIndexableTextContentInNote
{
  attachment = [(ICAttachmentModel *)self attachment];
  additionalIndexableText = [attachment additionalIndexableText];

  return additionalIndexableText;
}

- (unint64_t)paperPageCount
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v4 = [metadata objectForKeyedSubscript:@"paperPageCount"];
  unsignedIntegerValue = [v4 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setPaperPageCount:(unint64_t)count
{
  attachment = [(ICAttachmentModel *)self attachment];
  metadata = [attachment metadata];
  v7 = [metadata mutableCopy];
  v8 = v7;
  if (v7)
  {
    dictionary = v7;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v13 = dictionary;

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  [v13 setObject:v10 forKeyedSubscript:@"paperPageCount"];

  v11 = [v13 copy];
  attachment2 = [(ICAttachmentModel *)self attachment];
  [attachment2 setMetadata:v11];
}

@end