@interface BLTSettingsSendSerializerPassthrough
- (BLTSettingsSendSerializerDelegate)delegate;
- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout;
@end

@implementation BLTSettingsSendSerializerPassthrough

- (void)sendNowWithSent:(id)sent withAcknowledgement:(id)acknowledgement withTimeout:(id)timeout
{
  sentCopy = sent;
  acknowledgementCopy = acknowledgement;
  timeoutCopy = timeout;
  if (sentCopy)
  {
    sentCopy[2](sentCopy, 1, 0);
  }

  if (acknowledgementCopy)
  {
    acknowledgementCopy[2](acknowledgementCopy, 1.0);
  }
}

- (BLTSettingsSendSerializerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end