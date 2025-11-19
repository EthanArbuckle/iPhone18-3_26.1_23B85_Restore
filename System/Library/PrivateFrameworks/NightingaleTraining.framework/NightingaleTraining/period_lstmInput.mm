@interface period_lstmInput
- (id)featureValueForName:(id)a3;
- (period_lstmInput)initWithIn:(id)a3 lstm_1_h_in:(id)a4 lstm_1_c_in:(id)a5;
@end

@implementation period_lstmInput

- (period_lstmInput)initWithIn:(id)a3 lstm_1_h_in:(id)a4 lstm_1_c_in:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = period_lstmInput;
  v12 = [(period_lstmInput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_in_, a3);
    objc_storeStrong(&v13->_lstm_1_h_in, a4);
    objc_storeStrong(&v13->_lstm_1_c_in, a5);
  }

  return v13;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"in"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(period_lstmInput *)self in];
    v7 = [v5 featureValueWithMultiArray:v6];
LABEL_11:

    goto LABEL_12;
  }

  if ([v4 isEqualToString:@"lstm_1_h_in"])
  {
    v6 = [(period_lstmInput *)self lstm_1_h_in];
    if (v6)
    {
      v8 = MEMORY[0x277CBFEF8];
      v9 = [(period_lstmInput *)self lstm_1_h_in];
LABEL_9:
      v10 = v9;
      v7 = [v8 featureValueWithMultiArray:v9];

      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([v4 isEqualToString:@"lstm_1_c_in"])
  {
    v6 = [(period_lstmInput *)self lstm_1_c_in];
    if (v6)
    {
      v8 = MEMORY[0x277CBFEF8];
      v9 = [(period_lstmInput *)self lstm_1_c_in];
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