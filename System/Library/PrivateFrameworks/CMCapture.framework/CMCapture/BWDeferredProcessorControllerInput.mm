@interface BWDeferredProcessorControllerInput
- (void)dealloc;
- (void)setContainer:(id)container photoIdentifier:(id)identifier;
@end

@implementation BWDeferredProcessorControllerInput

- (void)setContainer:(id)container photoIdentifier:(id)identifier
{
  self->_container = container;
  self->_photoIdentifier = [identifier copy];
  processorController = self->_processorController;

  [(BWStillImageProcessorController *)processorController currentRequestChanged];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWDeferredProcessorControllerInput;
  [(BWStillImageProcessorControllerInput *)&v3 dealloc];
}

@end