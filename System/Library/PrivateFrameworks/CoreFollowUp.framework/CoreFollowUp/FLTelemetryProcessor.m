@interface FLTelemetryProcessor
- (FLTelemetryProcessor)initWithController:(id)a3;
- (void)processCurrentItems:(id)a3;
- (void)processItemAddition:(id)a3;
- (void)processItemRemoval:(id)a3;
@end

@implementation FLTelemetryProcessor

- (FLTelemetryProcessor)initWithController:(id)a3
{
  v5 = a3;
  v6 = [(FLTelemetryProcessor *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_telemetryController, a3);
  }

  return v7;
}

- (void)processItemRemoval:(id)a3
{
  v6 = a3;
  v4 = [v6 clientIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.followup.tests"];

  if ((v5 & 1) == 0)
  {
    [(FLTelemetryController *)self->_telemetryController captureItemRemoval:v6];
  }
}

- (void)processItemAddition:(id)a3
{
  v6 = a3;
  v4 = [v6 clientIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.followup.tests"];

  if ((v5 & 1) == 0)
  {
    [(FLTelemetryController *)self->_telemetryController captureItemAddition:v6];
  }
}

- (void)processCurrentItems:(id)a3
{
  v4 = MEMORY[0x277CCAC30];
  v5 = a3;
  v6 = [v4 predicateWithBlock:&__block_literal_global_8];
  v7 = [v5 filteredArrayUsingPredicate:v6];

  [(FLTelemetryController *)self->_telemetryController captureCurrentState:v7];
}

uint64_t __44__FLTelemetryProcessor_processCurrentItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 clientIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.followup.tests"];

  return v3 ^ 1u;
}

@end