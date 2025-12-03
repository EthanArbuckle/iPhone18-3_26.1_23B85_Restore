@interface SGStructuredEventCoreMLOutputWrapper
- (SGStructuredEventCoreMLOutputWrapper)initWithLocation:(id)location time:(id)time title:(id)title core:(id)core bi_lstm_0_h_out:(id)bi_lstm_0_h_out bi_lstm_0_c_out:(id)bi_lstm_0_c_out bi_lstm_0_h_out_rev:(id)bi_lstm_0_h_out_rev bi_lstm_0_c_out_rev:(id)self0;
- (id)featureValueForName:(id)name;
@end

@implementation SGStructuredEventCoreMLOutputWrapper

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"location"])
  {
    v5 = 8;
LABEL_17:
    v6 = [MEMORY[0x277CBFEF8] featureValueWithMultiArray:*(&self->super.isa + v5)];
    goto LABEL_18;
  }

  if ([nameCopy isEqualToString:@"time"])
  {
    v5 = 16;
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"title"])
  {
    v5 = 24;
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"core"])
  {
    v5 = 32;
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_h_out"])
  {
    v5 = 40;
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_c_out"])
  {
    v5 = 48;
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_h_out_rev"])
  {
    v5 = 56;
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"bi_lstm_0_c_out_rev"])
  {
    v5 = 64;
    goto LABEL_17;
  }

  v6 = 0;
LABEL_18:

  return v6;
}

- (SGStructuredEventCoreMLOutputWrapper)initWithLocation:(id)location time:(id)time title:(id)title core:(id)core bi_lstm_0_h_out:(id)bi_lstm_0_h_out bi_lstm_0_c_out:(id)bi_lstm_0_c_out bi_lstm_0_h_out_rev:(id)bi_lstm_0_h_out_rev bi_lstm_0_c_out_rev:(id)self0
{
  locationCopy = location;
  timeCopy = time;
  titleCopy = title;
  coreCopy = core;
  bi_lstm_0_h_outCopy = bi_lstm_0_h_out;
  bi_lstm_0_c_outCopy = bi_lstm_0_c_out;
  bi_lstm_0_h_out_revCopy = bi_lstm_0_h_out_rev;
  bi_lstm_0_c_out_revCopy = bi_lstm_0_c_out_rev;
  if (self)
  {
    objc_storeStrong(&self->_location, location);
    objc_storeStrong(&self->_time, time);
    objc_storeStrong(&self->_title, title);
    objc_storeStrong(&self->_core, core);
    objc_storeStrong(&self->_bi_lstm_0_h_out, bi_lstm_0_h_out);
    objc_storeStrong(&self->_bi_lstm_0_c_out, bi_lstm_0_c_out);
    objc_storeStrong(&self->_bi_lstm_0_h_out_rev, bi_lstm_0_h_out_rev);
    objc_storeStrong(&self->_bi_lstm_0_c_out_rev, bi_lstm_0_c_out_rev);
  }

  return self;
}

@end