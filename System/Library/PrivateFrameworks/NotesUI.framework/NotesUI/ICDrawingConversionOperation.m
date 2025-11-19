@interface ICDrawingConversionOperation
- (ICDrawingConversionOperation)initWithAttachment:(id)a3 textAttachment:(id)a4 automatic:(BOOL)a5;
- (void)main;
@end

@implementation ICDrawingConversionOperation

- (ICDrawingConversionOperation)initWithAttachment:(id)a3 textAttachment:(id)a4 automatic:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = ICDrawingConversionOperation;
  v11 = [(ICDrawingConversionOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_isAutomatic = a5;
    objc_storeStrong(&v11->_attachment, a3);
    v13 = [v9 objectID];
    attachmentID = v12->_attachmentID;
    v12->_attachmentID = v13;

    objc_storeStrong(&v12->_textAttachment, a4);
  }

  return v12;
}

- (void)main
{
  v3 = +[ICDrawingPencilKitConverter sharedConverter];
  v4 = [MEMORY[0x1E69B7800] sharedContext];
  v5 = [v4 workerManagedObjectContext];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__ICDrawingConversionOperation_main__block_invoke;
  v8[3] = &unk_1E8468D98;
  v9 = v5;
  v10 = self;
  v11 = v3;
  v6 = v3;
  v7 = v5;
  [v7 performBlockAndWait:v8];
  [v6 operationComplete:self];
}

void __36__ICDrawingConversionOperation_main__block_invoke(uint64_t a1)
{
  v12 = [*(a1 + 32) existingObjectWithID:*(*(a1 + 40) + 256) error:0];
  if ([ICDrawingPencilKitConverter canUpdateFullscreenSketchAttachment:?])
  {
    v2 = [v12 rangeInNote];
    v4 = v3;
    v5 = [v12 note];
    v6 = [*(a1 + 48) convertSketchAttachment:v12 toInlineDrawingAtRange:v2 inNote:{v4, v5}];
    [*(a1 + 32) ic_saveWithLogDescription:@"saving context after updating fullscreen sketch in operation"];
    v7 = [v6 objectID];
    v8 = *(a1 + 40);
    v9 = *(v8 + 264);
    *(v8 + 264) = v7;
  }

  else
  {
    if (![ICDrawingPencilKitConverter canUpdateInlineDrawingAttachment:v12])
    {
      goto LABEL_6;
    }

    v5 = [*(a1 + 48) updateInlineDrawingAttachment:v12];
    [*(a1 + 32) ic_saveWithLogDescription:@"saving context after updating inline drawing in operation"];
    v10 = [v5 objectID];
    v11 = *(a1 + 40);
    v6 = *(v11 + 264);
    *(v11 + 264) = v10;
  }

LABEL_6:
}

@end