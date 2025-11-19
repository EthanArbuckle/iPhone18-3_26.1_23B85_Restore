@interface IAMMessageGroup
- (IAMMessageCoordinator)messageCoordinator;
- (IAMMessageGroup)initWithGroupIdentifier:(id)a3;
- (IAMMessageGroupInternalDelegate)internalDelegate;
- (void)receiveEvent:(id)a3;
- (void)reportContextPropertiesDidChange:(id)a3;
- (void)reportModalMessagePresentationFailedWithIdentifier:(id)a3;
- (void)reportModalMessageWasDismissedWithIdentifier:(id)a3;
- (void)reportModalMessageWasPresentedWithIdentifier:(id)a3;
- (void)reportModalMessageWithIdentifier:(id)a3 actionWasPerformedWithIdentifier:(id)a4;
@end

@implementation IAMMessageGroup

- (IAMMessageGroup)initWithGroupIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IAMMessageGroup;
  v5 = [(IAMMessageGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

- (void)reportModalMessageWithIdentifier:(id)a3 actionWasPerformedWithIdentifier:(id)a4
{
  v11 = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_internalDelegate);
    v9 = [v11 copy];
    v10 = [v6 copy];
    [v8 messageGroup:self didReportModalMessageWithIdentifier:v9 actionWasPerformedWithIdentifier:v10];
  }
}

- (void)receiveEvent:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  v5 = [[IAMReceivedEventTriggerContext alloc] initWithEvent:v4 bundleIdentifier:self->_groupIdentifier];

  [WeakRetained receiveTriggerEventContext:v5];
}

- (void)reportContextPropertiesDidChange:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  v5 = [[IAMChangedContextPropertiesTriggerContext alloc] initWithContextPropertyNames:v4 bundleIdentifier:self->_groupIdentifier];

  [WeakRetained reportChangedContextPropertiesContext:v5];
}

- (void)reportModalMessagePresentationFailedWithIdentifier:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = [v7 copy];
    [v5 messageGroup:self didReportModalMessagePresentationFailedWithIdentifier:v6];
  }
}

- (void)reportModalMessageWasPresentedWithIdentifier:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = [v7 copy];
    [v5 messageGroup:self didReportModalMessageWasPresentedWithIdentifier:v6];
  }
}

- (void)reportModalMessageWasDismissedWithIdentifier:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = [v7 copy];
    [v5 messageGroup:self didReportModalMessageWasDismissedWithIdentifier:v6];
  }
}

- (IAMMessageCoordinator)messageCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);

  return WeakRetained;
}

- (IAMMessageGroupInternalDelegate)internalDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  return WeakRetained;
}

@end