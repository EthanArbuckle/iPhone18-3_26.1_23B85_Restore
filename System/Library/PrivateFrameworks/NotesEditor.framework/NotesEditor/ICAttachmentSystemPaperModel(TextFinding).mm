@interface ICAttachmentSystemPaperModel(TextFinding)
+ (id)systemPaperTextFindingQueue;
- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:;
@end

@implementation ICAttachmentSystemPaperModel(TextFinding)

- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:
{
  v13 = a3;
  v14 = a4;
  v15 = a9;
  attachment = [self attachment];
  shortLoggingDescription = [attachment shortLoggingDescription];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__19;
  v38 = __Block_byref_object_dispose__19;
  v18 = [ICSystemPaperIndexableTextContentHelper alloc];
  attachment2 = [self attachment];
  v39 = [(ICSystemPaperIndexableTextContentHelper *)v18 initWithPaperAttachment:attachment2];

  drawing = [v35[5] drawing];
  [drawing setRecognitionEnabled:1];
  systemPaperTextFindingQueue = [objc_opt_class() systemPaperTextFindingQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __142__ICAttachmentSystemPaperModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke;
  v26[3] = &unk_2781AF240;
  v27 = drawing;
  v28 = v13;
  v32 = a6;
  v33 = a5;
  v30 = v15;
  v31 = &v34;
  v29 = shortLoggingDescription;
  v22 = v15;
  v23 = shortLoggingDescription;
  v24 = v13;
  v25 = drawing;
  dispatch_async(systemPaperTextFindingQueue, v26);

  _Block_object_dispose(&v34, 8);
}

+ (id)systemPaperTextFindingQueue
{
  if (systemPaperTextFindingQueue_onceToken != -1)
  {
    +[ICAttachmentSystemPaperModel(TextFinding) systemPaperTextFindingQueue];
  }

  v1 = systemPaperTextFindingQueue_sSystemPaperFindingQueue;

  return v1;
}

@end