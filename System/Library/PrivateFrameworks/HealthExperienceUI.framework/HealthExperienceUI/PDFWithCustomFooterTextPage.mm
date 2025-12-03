@interface PDFWithCustomFooterTextPage
- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context;
@end

@implementation PDFWithCustomFooterTextPage

- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1BA4501DC(box, contextCopy);
}

@end