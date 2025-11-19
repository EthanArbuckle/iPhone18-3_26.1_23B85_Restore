@interface NoteAttachmentPresentationOccurence
- (NoteAttachmentPresentationOccurence)initWithPresentation:(id)a3 element:(id)a4;
- (id)previewItemTitle;
- (id)previewItemURL;
@end

@implementation NoteAttachmentPresentationOccurence

- (NoteAttachmentPresentationOccurence)initWithPresentation:(id)a3 element:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NoteAttachmentPresentationOccurence;
  v9 = [(NoteAttachmentPresentationOccurence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentation, a3);
    objc_storeStrong(&v10->_element, a4);
  }

  return v10;
}

- (id)previewItemURL
{
  v2 = [(NoteAttachmentPresentationOccurence *)self presentation];
  v3 = [v2 dataFileURL];

  return v3;
}

- (id)previewItemTitle
{
  v2 = [(NoteAttachmentPresentationOccurence *)self presentation];
  v3 = [v2 filename];
  v4 = [v3 lastPathComponent];

  return v4;
}

@end