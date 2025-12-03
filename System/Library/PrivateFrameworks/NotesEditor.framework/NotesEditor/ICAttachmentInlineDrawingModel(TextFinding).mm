@interface ICAttachmentInlineDrawingModel(TextFinding)
+ (id)inlineDrawingTextFindingQueue;
- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:;
@end

@implementation ICAttachmentInlineDrawingModel(TextFinding)

- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:
{
  v43 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a9;
  v14 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ICAttachmentInlineDrawingModel(TextFinding) textFindingResultsMatchingString:self textView:v14 ignoreCase:? wholeWords:? startsWith:? usePattern:? completion:?];
  }

  handwritingRecognitionDrawing = [self handwritingRecognitionDrawing];
  if (handwritingRecognitionDrawing)
  {
    goto LABEL_7;
  }

  v16 = os_log_create("com.apple.notes", "PencilKit");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    attachment = [self attachment];
    shortLoggingDescription = [attachment shortLoggingDescription];
    *buf = 138412290;
    v42 = shortLoggingDescription;
    _os_log_impl(&dword_2151A1000, v16, OS_LOG_TYPE_DEFAULT, "No handwriting recognition drawing for %@", buf, 0xCu);
  }

  handwritingRecognitionDrawing = [self newDrawingFromMergeableData];
  if (handwritingRecognitionDrawing)
  {
LABEL_7:
    v19 = handwritingRecognitionDrawing;
    if (([handwritingRecognitionDrawing recognitionEnabled] & 1) == 0)
    {
      [v19 setRecognitionEnabled:1];
    }

    [v19 _canvasBounds];
    v21 = v20;
    v23 = v22;
    attachment2 = [self attachment];
    shortLoggingDescription2 = [attachment2 shortLoggingDescription];

    v26 = dispatch_semaphore_create(0);
    inlineDrawingTextFindingQueue = [objc_opt_class() inlineDrawingTextFindingQueue];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __144__ICAttachmentInlineDrawingModel_TextFinding__textFindingResultsMatchingString_textView_ignoreCase_wholeWords_startsWith_usePattern_completion___block_invoke;
    v31[3] = &unk_2781ADE70;
    v32 = v19;
    v39 = a6;
    v40 = a5;
    v33 = v12;
    v34 = shortLoggingDescription2;
    v37 = v21;
    v38 = v23;
    v35 = v26;
    v36 = v13;
    v28 = v26;
    v29 = shortLoggingDescription2;
    v30 = v19;
    dispatch_async(inlineDrawingTextFindingQueue, v31);
  }

  else if (v13)
  {
    (*(v13 + 2))(v13, 0);
  }
}

+ (id)inlineDrawingTextFindingQueue
{
  if (inlineDrawingTextFindingQueue_onceToken != -1)
  {
    +[ICAttachmentInlineDrawingModel(TextFinding) inlineDrawingTextFindingQueue];
  }

  v1 = inlineDrawingTextFindingQueue_sDrawingFindingQueue;

  return v1;
}

- (void)textFindingResultsMatchingString:()TextFinding textView:ignoreCase:wholeWords:startsWith:usePattern:completion:.cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 attachment];
  v4 = [v3 shortLoggingDescription];
  v5 = 138412290;
  v6 = v4;
  _os_log_debug_impl(&dword_2151A1000, a2, OS_LOG_TYPE_DEBUG, "Finding search query results in inline drawing: %@", &v5, 0xCu);
}

@end