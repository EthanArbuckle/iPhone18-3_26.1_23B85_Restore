@interface ICAttachmentWebModel
- (BOOL)showThumbnailInNoteList;
- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content;
- (id)searchableTextContent;
@end

@implementation ICAttachmentWebModel

- (BOOL)showThumbnailInNoteList
{
  attachment = [(ICAttachmentModel *)self attachment];
  previewImages = [attachment previewImages];
  v5 = [previewImages count];

  if (v5)
  {
    attachment2 = [(ICAttachmentModel *)self attachment];
    v7 = [attachment2 URL];

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
  array = [MEMORY[0x277CBEB18] array];
  v11.receiver = self;
  v11.super_class = ICAttachmentWebModel;
  searchableTextContent = [(ICAttachmentModel *)&v11 searchableTextContent];
  [array ic_addNonNilObject:searchableTextContent];

  attachment = [(ICAttachmentModel *)self attachment];
  title = [attachment title];
  [array ic_addNonNilObject:title];

  attachment2 = [(ICAttachmentModel *)self attachment];
  quotedText = [attachment2 quotedText];
  [array ic_addNonNilObject:quotedText];

  v9 = [array componentsJoinedByString:@" "];

  return v9;
}

- (id)attributesForSharingHTMLWithTagName:(id *)name textContent:(id *)content
{
  attachment = [(ICAttachmentModel *)self attachment];
  urlString = [attachment urlString];

  *name = @"a";
  v8 = urlString;
  *content = urlString;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"href=%@", urlString];

  return v9;
}

@end