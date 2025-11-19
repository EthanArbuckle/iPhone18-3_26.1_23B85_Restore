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
  v16 = [a1 attachment];
  v17 = [v16 shortLoggingDescription];

  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__19;
  v38 = __Block_byref_object_dispose__19;
  v18 = [ICSystemPaperIndexableTextContentHelper alloc];
  v19 = [a1 attachment];
  v39 = [(ICSystemPaperIndexableTextContentHelper *)v18 initWithPaperAttachment:v19];

  v20 = [v35[5] drawing];
  [v20 setRecognitionEnabled:1];
  v21 = [objc_opt_class() systemPaperTextFindingQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __142__ICAttachmentSystemPaperModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke;
  v26[3] = &unk_2781AF240;
  v27 = v20;
  v28 = v13;
  v32 = a6;
  v33 = a5;
  v30 = v15;
  v31 = &v34;
  v29 = v17;
  v22 = v15;
  v23 = v17;
  v24 = v13;
  v25 = v20;
  dispatch_async(v21, v26);

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