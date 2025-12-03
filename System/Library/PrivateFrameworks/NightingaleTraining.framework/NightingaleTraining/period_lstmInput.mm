@interface period_lstmInput
- (id)featureValueForName:(id)name;
- (period_lstmInput)initWithIn:(id)in lstm_1_h_in:(id)lstm_1_h_in lstm_1_c_in:(id)lstm_1_c_in;
@end

@implementation period_lstmInput

- (period_lstmInput)initWithIn:(id)in lstm_1_h_in:(id)lstm_1_h_in lstm_1_c_in:(id)lstm_1_c_in
{
  inCopy = in;
  lstm_1_h_inCopy = lstm_1_h_in;
  lstm_1_c_inCopy = lstm_1_c_in;
  v15.receiver = self;
  v15.super_class = period_lstmInput;
  v12 = [(period_lstmInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_in_, in);
    objc_storeStrong(&v13->_lstm_1_h_in, lstm_1_h_in);
    objc_storeStrong(&v13->_lstm_1_c_in, lstm_1_c_in);
  }

  return v13;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"in"])
  {
    v5 = MEMORY[0x277CBFEF8];
    lstm_1_h_in = [(period_lstmInput *)self in];
    v7 = [v5 featureValueWithMultiArray:lstm_1_h_in];
LABEL_11:

    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"lstm_1_h_in"])
  {
    lstm_1_h_in = [(period_lstmInput *)self lstm_1_h_in];
    if (lstm_1_h_in)
    {
      v8 = MEMORY[0x277CBFEF8];
      lstm_1_h_in2 = [(period_lstmInput *)self lstm_1_h_in];
LABEL_9:
      v10 = lstm_1_h_in2;
      v7 = [v8 featureValueWithMultiArray:lstm_1_h_in2];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([nameCopy isEqualToString:@"lstm_1_c_in"])
  {
    lstm_1_h_in = [(period_lstmInput *)self lstm_1_c_in];
    if (lstm_1_h_in)
    {
      v8 = MEMORY[0x277CBFEF8];
      lstm_1_h_in2 = [(period_lstmInput *)self lstm_1_c_in];
      goto LABEL_9;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end