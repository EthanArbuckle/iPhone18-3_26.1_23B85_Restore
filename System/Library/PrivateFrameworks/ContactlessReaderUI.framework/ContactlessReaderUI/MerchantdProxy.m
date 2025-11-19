@interface MerchantdProxy
- (void)pinAuthNeeded;
- (void)pinAuthResultWithError:(id)a3 cancelsFlow:(BOOL)a4;
- (void)pinDataReceivedWithPinData:(id)a3 analyticsData:(id)a4;
- (void)pinValidateSession;
- (void)pinViewLoaded;
- (void)reportGuidanceUpdateWithVisible:(BOOL)a3 trigger:(id)a4;
- (void)reportPINErrorWithError:(int64_t)a3 analyticsData:(id)a4;
- (void)reportProxEventInRange:(BOOL)a3 inRangeTime:(unsigned int)a4;
- (void)requiresCardPIN:(id)a3;
- (void)setVoiceOverWithEnabled:(BOOL)a3;
- (void)tapUIRequestingCancel;
- (void)tapUIRequestingRetry;
- (void)uiDidLoad;
- (void)uiFinishedWithExpected:(BOOL)a3;
- (void)updateWithTransactionEvent:(int64_t)a3;
- (void)vasReadSuccessWithMerchantNames:(id)a3;
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

- (void)uiFinishedWithExpected:(BOOL)a3
{

  sub_243FEB4C4(a3);
}

- (void)pinDataReceivedWithPinData:(id)a3 analyticsData:(id)a4
{
  v12 = a3;
  v6 = a4;

  v7 = sub_2440D0680();
  v9 = v8;

  v10 = *self->remoteProxy;
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = sub_2440D0670();
    [v10 pinDataReceivedWithPinData:v12 analyticsData:v11];

    sub_243F5D81C(v7, v9);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_243F5D81C(v7, v9);
  }
}

- (void)reportPINErrorWithError:(int64_t)a3 analyticsData:(id)a4
{
  v6 = a4;

  v7 = sub_2440D0680();
  v9 = v8;

  v10 = *self->remoteProxy;
  if (v10)
  {
    swift_unknownObjectRetain();
    v11 = sub_2440D0670();
    [v10 reportPINErrorWithError:a3 analyticsData:v11];

    sub_243F5D81C(v7, v9);

    swift_unknownObjectRelease();
  }

  else
  {

    sub_243F5D81C(v7, v9);
  }
}

- (void)reportGuidanceUpdateWithVisible:(BOOL)a3 trigger:(id)a4
{
  v5 = sub_2440D2FB0();
  v7 = v6;

  sub_243FEB89C(a3, v5, v7);
}

- (void)reportProxEventInRange:(BOOL)a3 inRangeTime:(unsigned int)a4
{

  sub_243FEBC14(a3, a4);
}

- (void)setVoiceOverWithEnabled:(BOOL)a3
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

- (void)pinAuthResultWithError:(id)a3 cancelsFlow:(BOOL)a4
{
  if (a3)
  {
    v5 = sub_2440D2FB0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  sub_243FEBFC8(v5, v7, a4);
}

- (void)updateWithTransactionEvent:(int64_t)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong updateWithTransactionEvent_];

    swift_unknownObjectRelease();
  }
}

- (void)vasReadSuccessWithMerchantNames:(id)a3
{
  sub_2440D3220();

  sub_243FEC4F4();
}

- (void)requiresCardPIN:(id)a3
{
  v3 = a3;

  sub_243FEC72C(v3);
}

@end