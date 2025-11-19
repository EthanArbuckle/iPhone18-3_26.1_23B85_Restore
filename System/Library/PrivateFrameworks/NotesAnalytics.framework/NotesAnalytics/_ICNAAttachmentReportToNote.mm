@interface _ICNAAttachmentReportToNote
- (_ICNAAttachmentReportToNote)init;
- (void)reportAttachmentTypeUTI:(id)a3;
- (void)reportDrawingWithSnapshotData:(id)a3;
@end

@implementation _ICNAAttachmentReportToNote

- (_ICNAAttachmentReportToNote)init
{
  v6.receiver = self;
  v6.super_class = _ICNAAttachmentReportToNote;
  v2 = [(_ICNAAttachmentReportToNote *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    countOfAttachmentByUTI = v2->_countOfAttachmentByUTI;
    v2->_countOfAttachmentByUTI = v3;
  }

  return v2;
}

- (void)reportAttachmentTypeUTI:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(_ICNAAttachmentReportToNote *)self countOfAttachmentByUTI];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 unsignedIntegerValue];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7 + 1];
    v9 = [(_ICNAAttachmentReportToNote *)self countOfAttachmentByUTI];
    [v9 setObject:v8 forKeyedSubscript:v4];

    v10 = [(_ICNAAttachmentReportToNote *)self countOfAttachments]+ 1;

    [(_ICNAAttachmentReportToNote *)self setCountOfAttachments:v10];
  }
}

- (void)reportDrawingWithSnapshotData:(id)a3
{
  v4 = a3;
  v5 = [v4 countOfInlineDrawingV1FingerStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV1FingerStrokes:](self, "setCountOfInlineDrawingV1FingerStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV1FingerStrokes](self, "countOfInlineDrawingV1FingerStrokes") + [v5 integerValue]);

  v6 = [v4 countOfInlineDrawingV1PencilStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV1PencilStrokes:](self, "setCountOfInlineDrawingV1PencilStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV1PencilStrokes](self, "countOfInlineDrawingV1PencilStrokes") + [v6 integerValue]);

  v7 = [v4 countOfInlineDrawingV2FingerStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV2FingerStrokes:](self, "setCountOfInlineDrawingV2FingerStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV2FingerStrokes](self, "countOfInlineDrawingV2FingerStrokes") + [v7 integerValue]);

  v8 = [v4 countOfInlineDrawingV2PencilStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV2PencilStrokes:](self, "setCountOfInlineDrawingV2PencilStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV2PencilStrokes](self, "countOfInlineDrawingV2PencilStrokes") + [v8 integerValue]);

  v9 = [v4 countOfFullscreenDrawingStrokes];

  -[_ICNAAttachmentReportToNote setCountOfFullscreenDrawingStrokes:](self, "setCountOfFullscreenDrawingStrokes:", -[_ICNAAttachmentReportToNote countOfFullscreenDrawingStrokes](self, "countOfFullscreenDrawingStrokes") + [v9 integerValue]);
}

@end