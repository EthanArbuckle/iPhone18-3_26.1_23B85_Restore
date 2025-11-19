@interface ICAttachmentWebModel
- (BOOL)showThumbnailInNoteList;
- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4;
- (id)searchableTextContent;
@end

@implementation ICAttachmentWebModel

- (BOOL)showThumbnailInNoteList
{
  v3 = [(ICAttachmentModel *)self attachment];
  v4 = [v3 previewImages];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(ICAttachmentModel *)self attachment];
    v7 = [v6 URL];

    if ([v7 ic_isMapURL] & 1) != 0 || (objc_msgSend(v7, "ic_isiTunesURL"))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v8 = [v7 ic_isAppStoreURL] ^ 1;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)searchableTextContent
{
  v3 = [MEMORY[0x277CBEB18] array];
  v11.receiver = self;
  v11.super_class = ICAttachmentWebModel;
  v4 = [(ICAttachmentModel *)&v11 searchableTextContent];
  [v3 ic_addNonNilObject:v4];

  v5 = [(ICAttachmentModel *)self attachment];
  v6 = [v5 title];
  [v3 ic_addNonNilObject:v6];

  v7 = [(ICAttachmentModel *)self attachment];
  v8 = [v7 quotedText];
  [v3 ic_addNonNilObject:v8];

  v9 = [v3 componentsJoinedByString:@" "];

  return v9;
}

- (id)attributesForSharingHTMLWithTagName:(id *)a3 textContent:(id *)a4
{
  v6 = [(ICAttachmentModel *)self attachment];
  v7 = [v6 urlString];

  *a3 = @"a";
  v8 = v7;
  *a4 = v7;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"href=%@", v7];

  return v9;
}

@end