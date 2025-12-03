@interface IAMMessageGroup
- (IAMMessageCoordinator)messageCoordinator;
- (IAMMessageGroup)initWithGroupIdentifier:(id)identifier;
- (IAMMessageGroupInternalDelegate)internalDelegate;
- (void)receiveEvent:(id)event;
- (void)reportContextPropertiesDidChange:(id)change;
- (void)reportModalMessagePresentationFailedWithIdentifier:(id)identifier;
- (void)reportModalMessageWasDismissedWithIdentifier:(id)identifier;
- (void)reportModalMessageWasPresentedWithIdentifier:(id)identifier;
- (void)reportModalMessageWithIdentifier:(id)identifier actionWasPerformedWithIdentifier:(id)withIdentifier;
@end

@implementation IAMMessageGroup

- (IAMMessageGroup)initWithGroupIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = IAMMessageGroup;
  v5 = [(IAMMessageGroup *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;
  }

  return v5;
}

- (void)reportModalMessageWithIdentifier:(id)identifier actionWasPerformedWithIdentifier:(id)withIdentifier
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v8 = objc_loadWeakRetained(&self->_internalDelegate);
    v9 = [identifierCopy copy];
    v10 = [withIdentifierCopy copy];
    [v8 messageGroup:self didReportModalMessageWithIdentifier:v9 actionWasPerformedWithIdentifier:v10];
  }
}

- (void)receiveEvent:(id)event
{
  eventCopy = event;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  v5 = [[IAMReceivedEventTriggerContext alloc] initWithEvent:eventCopy bundleIdentifier:self->_groupIdentifier];

  [WeakRetained receiveTriggerEventContext:v5];
}

- (void)reportContextPropertiesDidChange:(id)change
{
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_messageCoordinator);
  v5 = [[IAMChangedContextPropertiesTriggerContext alloc] initWithContextPropertyNames:changeCopy bundleIdentifier:self->_groupIdentifier];

  [WeakRetained reportChangedContextPropertiesContext:v5];
}

- (void)reportModalMessagePresentationFailedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = [identifierCopy copy];
    [v5 messageGroup:self didReportModalMessagePresentationFailedWithIdentifier:v6];
  }
}

- (void)reportModalMessageWasPresentedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = [identifierCopy copy];
    [v5 messageGroup:self didReportModalMessageWasPresentedWithIdentifier:v6];
  }
}

- (void)reportModalMessageWasDismissedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_internalDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_internalDelegate);
    v6 = [identifierCopy copy];
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