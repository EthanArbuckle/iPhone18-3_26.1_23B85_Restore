@interface MPCQueueControllerExternalSyncEdit
- (void)setTargetContentItemID:(id)d;
@end

@implementation MPCQueueControllerExternalSyncEdit

- (void)setTargetContentItemID:(id)d
{
  v4 = [d copy];
  targetContentItemID = self->_targetContentItemID;
  self->_targetContentItemID = v4;

  MEMORY[0x1EEE66BB8](v4, targetContentItemID);
}

@end