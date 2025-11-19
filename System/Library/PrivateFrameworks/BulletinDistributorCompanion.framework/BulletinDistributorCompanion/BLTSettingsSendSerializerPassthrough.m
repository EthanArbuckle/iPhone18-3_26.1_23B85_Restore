@interface BLTSettingsSendSerializerPassthrough
- (BLTSettingsSendSerializerDelegate)delegate;
- (void)sendNowWithSent:(id)a3 withAcknowledgement:(id)a4 withTimeout:(id)a5;
@end

@implementation BLTSettingsSendSerializerPassthrough

- (void)sendNowWithSent:(id)a3 withAcknowledgement:(id)a4 withTimeout:(id)a5
{
  v9 = a3;
  v7 = a4;
  v8 = a5;
  if (v9)
  {
    v9[2](v9, 1, 0);
  }

  if (v7)
  {
    v7[2](v7, 1.0);
  }
}

- (BLTSettingsSendSerializerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end