@interface model_period_LstmOutput
- (id)featureValueForName:(id)name;
- (model_period_LstmOutput)initWithOut:(id)out lstm_1_h_out:(id)lstm_1_h_out lstm_1_c_out:(id)lstm_1_c_out;
@end

@implementation model_period_LstmOutput

- (model_period_LstmOutput)initWithOut:(id)out lstm_1_h_out:(id)lstm_1_h_out lstm_1_c_out:(id)lstm_1_c_out
{
  outCopy = out;
  lstm_1_h_outCopy = lstm_1_h_out;
  lstm_1_c_outCopy = lstm_1_c_out;
  v15.receiver = self;
  v15.super_class = model_period_LstmOutput;
  v12 = [(model_period_LstmOutput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_out_, out);
    objc_storeStrong(&v13->_lstm_1_h_out, lstm_1_h_out);
    objc_storeStrong(&v13->_lstm_1_c_out, lstm_1_c_out);
  }

  return v13;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"out"])
  {
    v5 = MEMORY[0x277CBFEF8];
    lstm_1_h_out = [(model_period_LstmOutput *)self out];
    v7 = [v5 featureValueWithMultiArray:lstm_1_h_out];
LABEL_7:
    v10 = v7;

    goto LABEL_8;
  }

  if ([nameCopy isEqualToString:@"lstm_1_h_out"])
  {
    v8 = MEMORY[0x277CBFEF8];
    lstm_1_h_out = [(model_period_LstmOutput *)self lstm_1_h_out];
    v7 = [v8 featureValueWithMultiArray:lstm_1_h_out];
    goto LABEL_7;
  }

  if ([nameCopy isEqualToString:@"lstm_1_c_out"])
  {
    v9 = MEMORY[0x277CBFEF8];
    lstm_1_h_out = [(model_period_LstmOutput *)self lstm_1_c_out];
    v7 = [v9 featureValueWithMultiArray:lstm_1_h_out];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_8:

  return v10;
}

@end