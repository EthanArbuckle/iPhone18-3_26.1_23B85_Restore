@interface SGStructuredEventCoreMLInputWrapper
- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)l D:(id)d I:(id)i N:(id)n W:(id)w;
- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)l D:(id)d I:(id)i N:(id)n W:(id)w bi_lstm_0_h_in:(id)bi_lstm_0_h_in bi_lstm_0_c_in:(id)bi_lstm_0_c_in bi_lstm_0_h_in_rev:(id)self0 bi_lstm_0_c_in_rev:(id)self1;
- (id)featureValueForName:(id)name;
@end

@implementation SGStructuredEventCoreMLInputWrapper

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"L"])
  {
    v5 = 8;
LABEL_19:
    v6 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_20;
  }

  if ([nameCopy isEqualToString:@"D"])
  {
    v5 = 16;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"I"])
  {
    v5 = 24;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"N"])
  {
    v5 = 32;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"W"])
  {
    v5 = 40;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_h_in"])
  {
    v5 = 48;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_c_in"])
  {
    v5 = 56;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_h_in_rev"])
  {
    v5 = 64;
    goto LABEL_19;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_c_in_rev"])
  {
    v5 = 72;
    goto LABEL_19;
  }

  v6 = 0;
LABEL_20:

  return v6;
}

- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)l D:(id)d I:(id)i N:(id)n W:(id)w bi_lstm_0_h_in:(id)bi_lstm_0_h_in bi_lstm_0_c_in:(id)bi_lstm_0_c_in bi_lstm_0_h_in_rev:(id)self0 bi_lstm_0_c_in_rev:(id)self1
{
  lCopy = l;
  dCopy = d;
  iCopy = i;
  nCopy = n;
  wCopy = w;
  bi_lstm_0_h_inCopy = bi_lstm_0_h_in;
  bi_lstm_0_c_inCopy = bi_lstm_0_c_in;
  bi_lstm_0_h_in_revCopy = bi_lstm_0_h_in_rev;
  bi_lstm_0_c_in_revCopy = bi_lstm_0_c_in_rev;
  if (self)
  {
    objc_storeStrong(&self->_L, l);
    objc_storeStrong(&self->_D, d);
    objc_storeStrong(&self->_I, i);
    objc_storeStrong(&self->_N, n);
    objc_storeStrong(&self->_W, w);
    objc_storeStrong(&self->_bi_lstm_0_h_in, bi_lstm_0_h_in);
    objc_storeStrong(&self->_bi_lstm_0_c_in, bi_lstm_0_c_in);
    objc_storeStrong(&self->_bi_lstm_0_h_in_rev, bi_lstm_0_h_in_rev);
    objc_storeStrong(&self->_bi_lstm_0_c_in_rev, bi_lstm_0_c_in_rev);
  }

  return self;
}

- (SGStructuredEventCoreMLInputWrapper)initWithL:(id)l D:(id)d I:(id)i N:(id)n W:(id)w
{
  lCopy = l;
  dCopy = d;
  iCopy = i;
  nCopy = n;
  wCopy = w;
  if (self)
  {
    objc_storeStrong(&self->_L, l);
    objc_storeStrong(&self->_D, d);
    objc_storeStrong(&self->_I, i);
    objc_storeStrong(&self->_N, n);
    objc_storeStrong(&self->_W, w);
  }

  return self;
}

@end