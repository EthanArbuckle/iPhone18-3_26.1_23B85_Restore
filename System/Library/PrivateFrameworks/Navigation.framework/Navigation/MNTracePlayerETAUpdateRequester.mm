@interface MNTracePlayerETAUpdateRequester
- (void)triggerETAUpdateWithETARow:(id)row;
@end

@implementation MNTracePlayerETAUpdateRequester

- (void)triggerETAUpdateWithETARow:(id)row
{
  rowCopy = row;
  selfCopy = self;
  sub_1D314BFF4(rowCopy);
}

@end