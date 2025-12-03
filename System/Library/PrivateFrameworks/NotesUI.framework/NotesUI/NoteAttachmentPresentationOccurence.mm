@interface NoteAttachmentPresentationOccurence
- (NoteAttachmentPresentationOccurence)initWithPresentation:(id)presentation element:(id)element;
- (id)previewItemTitle;
- (id)previewItemURL;
@end

@implementation NoteAttachmentPresentationOccurence

- (NoteAttachmentPresentationOccurence)initWithPresentation:(id)presentation element:(id)element
{
  presentationCopy = presentation;
  elementCopy = element;
  v12.receiver = self;
  v12.super_class = NoteAttachmentPresentationOccurence;
  v9 = [(NoteAttachmentPresentationOccurence *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presentation, presentation);
    objc_storeStrong(&v10->_element, element);
  }

  return v10;
}

- (id)previewItemURL
{
  presentation = [(NoteAttachmentPresentationOccurence *)self presentation];
  dataFileURL = [presentation dataFileURL];

  return dataFileURL;
}

- (id)previewItemTitle
{
  presentation = [(NoteAttachmentPresentationOccurence *)self presentation];
  filename = [presentation filename];
  lastPathComponent = [filename lastPathComponent];

  return lastPathComponent;
}

@end