@interface ICTodoButton(SupplementalViewSupport)
- (id)viewIdentifier;
@end

@implementation ICTodoButton(SupplementalViewSupport)

- (id)viewIdentifier
{
  trackedParagraph = [self trackedParagraph];
  paragraph = [trackedParagraph paragraph];
  todoTrackingUUID = [paragraph todoTrackingUUID];
  uUIDString = [todoTrackingUUID UUIDString];

  return uUIDString;
}

@end