@interface ICAttachmentPaperDocumentModel
- (id)additionalIndexableTextContentInNote;
- (unint64_t)paperPageCount;
- (void)setPaperPageCount:(unint64_t)a3;
@end

@implementation ICAttachmentPaperDocumentModel

- (id)additionalIndexableTextContentInNote
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 additionalIndexableText];

  return v3;
}

- (unint64_t)paperPageCount
{
  v2 = [(ICAttachmentModel *)self attachment];
  v3 = [v2 metadata];
  v4 = [v3 objectForKeyedSubscript:@"paperPageCount"];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

- (void)setPaperPageCount:(unint64_t)a3
{
  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 metadata];
  v7 = [v6 mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
  }

  v13 = v9;

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v13 setObject:v10 forKeyedSubscript:@"paperPageCount"];

  v11 = [v13 copy];
  v12 = [(ICAttachmentModel *)self attachment];
  [v12 setMetadata:v11];
}

@end