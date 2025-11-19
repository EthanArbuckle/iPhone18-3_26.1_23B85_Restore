@interface MPCQueueControllerExternalSyncEdit
- (void)setTargetContentItemID:(id)a3;
@end

@implementation MPCQueueControllerExternalSyncEdit

- (void)setTargetContentItemID:(id)a3
{
  v4 = [a3 copy];
  targetContentItemID = self->_targetContentItemID;
  self->_targetContentItemID = v4;

  MEMORY[0x1EEE66BB8](v4, targetContentItemID);
}

@end