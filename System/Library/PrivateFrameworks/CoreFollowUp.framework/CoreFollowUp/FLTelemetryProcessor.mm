@interface FLTelemetryProcessor
- (FLTelemetryProcessor)initWithController:(id)controller;
- (void)processCurrentItems:(id)items;
- (void)processItemAddition:(id)addition;
- (void)processItemRemoval:(id)removal;
@end

@implementation FLTelemetryProcessor

- (FLTelemetryProcessor)initWithController:(id)controller
{
  controllerCopy = controller;
  v6 = [(FLTelemetryProcessor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_telemetryController, controller);
  }

  return v7;
}

- (void)processItemRemoval:(id)removal
{
  removalCopy = removal;
  clientIdentifier = [removalCopy clientIdentifier];
  v5 = [clientIdentifier isEqualToString:@"com.apple.followup.tests"];

  if ((v5 & 1) == 0)
  {
    [(FLTelemetryController *)self->_telemetryController captureItemRemoval:removalCopy];
  }
}

- (void)processItemAddition:(id)addition
{
  additionCopy = addition;
  clientIdentifier = [additionCopy clientIdentifier];
  v5 = [clientIdentifier isEqualToString:@"com.apple.followup.tests"];

  if ((v5 & 1) == 0)
  {
    [(FLTelemetryController *)self->_telemetryController captureItemAddition:additionCopy];
  }
}

- (void)processCurrentItems:(id)items
{
  v4 = MEMORY[0x277CCAC30];
  itemsCopy = items;
  v6 = [v4 predicateWithBlock:&__block_literal_global_8];
  v7 = [itemsCopy filteredArrayUsingPredicate:v6];

  [(FLTelemetryController *)self->_telemetryController captureCurrentState:v7];
}

uint64_t __44__FLTelemetryProcessor_processCurrentItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.followup.tests"];

  return v3 ^ 1u;
}

@end