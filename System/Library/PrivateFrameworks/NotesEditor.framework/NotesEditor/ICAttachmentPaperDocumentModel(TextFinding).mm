@interface ICAttachmentPaperDocumentModel(TextFinding)
- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:;
@end

@implementation ICAttachmentPaperDocumentModel(TextFinding)

- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:
{
  v16 = a9;
  v17 = a4;
  v18 = a3;
  attachment = [self attachment];
  LOBYTE(v19) = a8;
  [_TtC11NotesEditor22ICPDFTextFindingResult resultsInAttachment:attachment matchingString:v18 textView:v17 ignoreCase:a5 wholeWords:a6 startsWith:a7 usePattern:v19 completion:v16];
}

@end