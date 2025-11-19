@interface BWDeferredProcessorControllerInput
- (void)dealloc;
- (void)setContainer:(id)a3 photoIdentifier:(id)a4;
@end

@implementation BWDeferredProcessorControllerInput

- (void)setContainer:(id)a3 photoIdentifier:(id)a4
{
  self->_container = a3;
  self->_photoIdentifier = [a4 copy];
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