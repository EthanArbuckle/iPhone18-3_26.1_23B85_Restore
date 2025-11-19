@interface SGStructuredEventCoreMLInputWrapper
- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)a3 D:(id)a4 I:(id)a5 N:(id)a6 W:(id)a7;
- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)a3 D:(id)a4 I:(id)a5 N:(id)a6 W:(id)a7 bi_lstm_0_h_in:(id)a8 bi_lstm_0_c_in:(id)a9 bi_lstm_0_h_in_rev:(id)a10 bi_lstm_0_c_in_rev:(id)a11;
- (id)featureValueForName:(id)a3;
@end

@implementation SGStructuredEventCoreMLInputWrapper

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"L"])
  {
    v5 = 8;
LABEL_19:
    v6 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_20;
  }

  if ([v4 isEqualToString:@"D"])
  {
    v5 = 16;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"I"])
  {
    v5 = 24;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"N"])
  {
    v5 = 32;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"W"])
  {
    v5 = 40;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_h_in"])
  {
    v5 = 48;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_c_in"])
  {
    v5 = 56;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_h_in_rev"])
  {
    v5 = 64;
    goto LABEL_19;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_c_in_rev"])
  {
    v5 = 72;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  return v6;
}

- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)a3 D:(id)a4 I:(id)a5 N:(id)a6 W:(id)a7 bi_lstm_0_h_in:(id)a8 bi_lstm_0_c_in:(id)a9 bi_lstm_0_h_in_rev:(id)a10 bi_lstm_0_c_in_rev:(id)a11
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v21 = a9;
  v18 = a10;
  v19 = a11;
  if (self)
  {
    objc_storeStrong(&self->_L, a3);
    objc_storeStrong(&self->_D, a4);
    objc_storeStrong(&self->_I, a5);
    objc_storeStrong(&self->_N, a6);
    objc_storeStrong(&self->_W, a7);
    objc_storeStrong(&self->_bi_lstm_0_h_in, a8);
    objc_storeStrong(&self->_bi_lstm_0_c_in, a9);
    objc_storeStrong(&self->_bi_lstm_0_h_in_rev, a10);
    objc_storeStrong(&self->_bi_lstm_0_c_in_rev, a11);
  }

  return self;
}

- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)a3 D:(id)a4 I:(id)a5 N:(id)a6 W:(id)a7
{
  v18 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (self)
  {
    objc_storeStrong(&self->_L, a3);
    objc_storeStrong(&self->_D, a4);
    objc_storeStrong(&self->_I, a5);
    objc_storeStrong(&self->_N, a6);
    objc_storeStrong(&self->_W, a7);
  }

  return self;
}

@end