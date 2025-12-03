@interface VideoMessageController
- (void)momentsController:(id)controller didFinishProcessingRawVideoMessage:(id)message;
@end

@implementation VideoMessageController

- (void)momentsController:(id)controller didFinishProcessingRawVideoMessage:(id)message
{
  controllerCopy = controller;
  messageCopy = message;
  selfCopy = self;
  VideoMessageController.momentsController(_:didFinishProcessingRawVideoMessage:)();
}

@end