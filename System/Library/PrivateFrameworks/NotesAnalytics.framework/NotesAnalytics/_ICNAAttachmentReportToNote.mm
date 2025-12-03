@interface _ICNAAttachmentReportToNote
- (_ICNAAttachmentReportToNote)init;
- (void)reportAttachmentTypeUTI:(id)i;
- (void)reportDrawingWithSnapshotData:(id)data;
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

- (void)reportAttachmentTypeUTI:(id)i
{
  if (i)
  {
    iCopy = i;
    countOfAttachmentByUTI = [(_ICNAAttachmentReportToNote *)self countOfAttachmentByUTI];
    v6 = [countOfAttachmentByUTI objectForKeyedSubscript:iCopy];
    unsignedIntegerValue = [v6 unsignedIntegerValue];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue + 1];
    countOfAttachmentByUTI2 = [(_ICNAAttachmentReportToNote *)self countOfAttachmentByUTI];
    [countOfAttachmentByUTI2 setObject:v8 forKeyedSubscript:iCopy];

    v10 = [(_ICNAAttachmentReportToNote *)self countOfAttachments]+ 1;

    [(_ICNAAttachmentReportToNote *)self setCountOfAttachments:v10];
  }
}

- (void)reportDrawingWithSnapshotData:(id)data
{
  dataCopy = data;
  countOfInlineDrawingV1FingerStrokes = [dataCopy countOfInlineDrawingV1FingerStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV1FingerStrokes:](self, "setCountOfInlineDrawingV1FingerStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV1FingerStrokes](self, "countOfInlineDrawingV1FingerStrokes") + [countOfInlineDrawingV1FingerStrokes integerValue]);

  countOfInlineDrawingV1PencilStrokes = [dataCopy countOfInlineDrawingV1PencilStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV1PencilStrokes:](self, "setCountOfInlineDrawingV1PencilStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV1PencilStrokes](self, "countOfInlineDrawingV1PencilStrokes") + [countOfInlineDrawingV1PencilStrokes integerValue]);

  countOfInlineDrawingV2FingerStrokes = [dataCopy countOfInlineDrawingV2FingerStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV2FingerStrokes:](self, "setCountOfInlineDrawingV2FingerStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV2FingerStrokes](self, "countOfInlineDrawingV2FingerStrokes") + [countOfInlineDrawingV2FingerStrokes integerValue]);

  countOfInlineDrawingV2PencilStrokes = [dataCopy countOfInlineDrawingV2PencilStrokes];
  -[_ICNAAttachmentReportToNote setCountOfInlineDrawingV2PencilStrokes:](self, "setCountOfInlineDrawingV2PencilStrokes:", -[_ICNAAttachmentReportToNote countOfInlineDrawingV2PencilStrokes](self, "countOfInlineDrawingV2PencilStrokes") + [countOfInlineDrawingV2PencilStrokes integerValue]);

  countOfFullscreenDrawingStrokes = [dataCopy countOfFullscreenDrawingStrokes];

  -[_ICNAAttachmentReportToNote setCountOfFullscreenDrawingStrokes:](self, "setCountOfFullscreenDrawingStrokes:", -[_ICNAAttachmentReportToNote countOfFullscreenDrawingStrokes](self, "countOfFullscreenDrawingStrokes") + [countOfFullscreenDrawingStrokes integerValue]);
}

@end