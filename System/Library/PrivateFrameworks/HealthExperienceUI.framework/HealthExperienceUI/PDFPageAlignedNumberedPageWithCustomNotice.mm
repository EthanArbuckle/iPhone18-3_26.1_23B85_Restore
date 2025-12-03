@interface PDFPageAlignedNumberedPageWithCustomNotice
- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context;
@end

@implementation PDFPageAlignedNumberedPageWithCustomNotice

- (void)drawWithBox:(int64_t)box toContext:(CGContext *)context
{
  contextCopy = context;
  selfCopy = self;
  sub_1BA4510BC(box, contextCopy);
}

@end