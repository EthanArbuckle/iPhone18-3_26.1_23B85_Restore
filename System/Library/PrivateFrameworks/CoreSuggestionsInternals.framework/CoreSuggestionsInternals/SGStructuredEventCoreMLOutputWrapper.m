@interface SGStructuredEventCoreMLOutputWrapper
- (SGStructuredEventCoreMLOutputWrapper)initWithLocation:(id)a3 time:(id)a4 title:(id)a5 core:(id)a6 bi_lstm_0_h_out:(id)a7 bi_lstm_0_c_out:(id)a8 bi_lstm_0_h_out_rev:(id)a9 bi_lstm_0_c_out_rev:(id)a10;
- (id)featureValueForName:(id)a3;
@end

@implementation SGStructuredEventCoreMLOutputWrapper

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"location"])
  {
    v5 = 8;
LABEL_17:
    v6 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_18;
  }

  if ([v4 isEqualToString:@"time"])
  {
    v5 = 16;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"title"])
  {
    v5 = 24;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"core"])
  {
    v5 = 32;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_h_out"])
  {
    v5 = 40;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_c_out"])
  {
    v5 = 48;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_h_out_rev"])
  {
    v5 = 56;
    goto LABEL_17;
  }

  if ([v4 isEqualToString:@"bi_lstm_0_c_out_rev"])
  {
    v5 = 64;
    goto LABEL_17;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

- (SGStructuredEventCoreMLOutputWrapper)initWithLocation:(id)a3 time:(id)a4 title:(id)a5 core:(id)a6 bi_lstm_0_h_out:(id)a7 bi_lstm_0_c_out:(id)a8 bi_lstm_0_h_out_rev:(id)a9 bi_lstm_0_c_out_rev:(id)a10
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v20 = a8;
  v17 = a9;
  v18 = a10;
  if (self)
  {
    objc_storeStrong(&self->_location, a3);
    objc_storeStrong(&self->_time, a4);
    objc_storeStrong(&self->_title, a5);
    objc_storeStrong(&self->_core, a6);
    objc_storeStrong(&self->_bi_lstm_0_h_out, a7);
    objc_storeStrong(&self->_bi_lstm_0_c_out, a8);
    objc_storeStrong(&self->_bi_lstm_0_h_out_rev, a9);
    objc_storeStrong(&self->_bi_lstm_0_c_out_rev, a10);
  }

  return self;
}

@end