@interface MerchantdProxy
- (void)pinAuthNeeded;
- (void)pinAuthResultWithError:(id)error cancelsFlow:(BOOL)flow;
- (void)pinDataReceivedWithPinData:(id)data analyticsData:(id)analyticsData;
- (void)pinValidateSession;
- (void)pinViewLoaded;
- (void)reportGuidanceUpdateWithVisible:(BOOL)visible trigger:(id)trigger;
- (void)reportPINErrorWithError:(int64_t)error analyticsData:(id)data;
- (void)reportProxEventInRange:(BOOL)range inRangeTime:(unsigned int)time;
- (void)requiresCardPIN:(id)n;
- (void)setVoiceOverWithEnabled:(BOOL)enabled;
- (void)tapUIRequestingCancel;
- (void)tapUIRequestingRetry;
- (void)uiDidLoad;
- (void)uiFinishedWithExpected:(BOOL)expected;
- (void)updateWithTransactionEvent:(int64_t)event;
- (void)vasReadSuccessWithMerchantNames:(id)names;
@end

@implementation MerchantdProxy

- (void)uiDidLoad
{
  v2 = *self->remoteProxy;
  if (v2)
  {
    [v2 uiDidLoad];
  }
}

- (void)tapUIRequestingCancel
{
  v2 = *self->remoteProxy;
  if (v2)
  {
    [v2 tapUIRequestingCancel];
  }
}

- (void)tapUIRequestingRetry
{
  v2 = *self->remoteProxy;
  if (v2)
  {
    [v2 tapUIRequestingRetry];
  }
}

- (void)uiFinishedWithExpected:(BOOL)expected
{

  sub_243FEB4C4(expected);
}

- (void)pinDataReceivedWithPinData:(id)data analyticsData:(id)analyticsData
{
  dataCopy = data;
  analyticsDataCopy = analyticsData;

  v7 = sub_2440D0680();
  v9 = v8;

  v10 = *self->remoteProxy;
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = sub_2440D0670();
    [v10 pinDataReceivedWithPinData:dataCopy analyticsData:v11];

    sub_243F5D81C(v7, v9);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_243F5D81C(v7, v9);
  }
}

- (void)reportPINErrorWithError:(int64_t)error analyticsData:(id)data
{
  dataCopy = data;

  v7 = sub_2440D0680();
  v9 = v8;

  v10 = *self->remoteProxy;
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = sub_2440D0670();
    [v10 reportPINErrorWithError:error analyticsData:v11];

    sub_243F5D81C(v7, v9);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_243F5D81C(v7, v9);
  }
}

- (void)reportGuidanceUpdateWithVisible:(BOOL)visible trigger:(id)trigger
{
  v5 = sub_2440D2FB0();
  v7 = v6;

  sub_243FEB89C(visible, v5, v7);
}

- (void)reportProxEventInRange:(BOOL)range inRangeTime:(unsigned int)time
{

  sub_243FEBC14(range, time);
}

- (void)setVoiceOverWithEnabled:(BOOL)enabled
{
  v3 = *self->remoteProxy;
  if (v3)
  {
    [v3 setVoiceOverWithEnabled_];
  }
}

- (void)pinViewLoaded
{
  v2 = *self->remoteProxy;
  if (v2)
  {
    [v2 pinViewLoaded];
  }
}

- (void)pinValidateSession
{
  v2 = *self->remoteProxy;
  if (v2)
  {
    [v2 pinValidateSession];
  }
}

- (void)pinAuthNeeded
{
  v2 = *self->remoteProxy;
  if (v2)
  {
    [v2 pinAuthNeeded];
  }
}

- (void)pinAuthResultWithError:(id)error cancelsFlow:(BOOL)flow
{
  if (error)
  {
    v5 = sub_2440D2FB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_243FEBFC8(v5, v7, flow);
}

- (void)updateWithTransactionEvent:(int64_t)event
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong updateWithTransactionEvent_];

    swift_unknownObjectRelease();
  }
}

- (void)vasReadSuccessWithMerchantNames:(id)names
{
  sub_2440D3220();

  sub_243FEC4F4();
}

- (void)requiresCardPIN:(id)n
{
  nCopy = n;

  sub_243FEC72C(nCopy);
}

@end