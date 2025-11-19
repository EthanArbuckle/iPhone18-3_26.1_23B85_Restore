@interface model_period_10pctOutput
- (id)featureValueForName:(id)a3;
- (model_period_10pctOutput)initWithOut:(id)a3 lstm_1_h_out:(id)a4 lstm_1_c_out:(id)a5;
@end

@implementation model_period_10pctOutput

- (model_period_10pctOutput)initWithOut:(id)a3 lstm_1_h_out:(id)a4 lstm_1_c_out:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = model_period_10pctOutput;
  v12 = [(model_period_10pctOutput *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_out_, a3);
    objc_storeStrong(&v13->_lstm_1_h_out, a4);
    objc_storeStrong(&v13->_lstm_1_c_out, a5);
  }

  return v13;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"out"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(model_period_10pctOutput *)self out];
LABEL_7:
    v7 = v6;
    v8 = [v5 featureValueWithMultiArray:v6];

    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"lstm_1_h_out"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(model_period_10pctOutput *)self lstm_1_h_out];
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"lstm_1_c_out"])
  {
    v5 = MEMORY[0x277CBFEF8];
    v6 = [(model_period_10pctOutput *)self lstm_1_c_out];
    goto LABEL_7;
  }

  v8 = 0;
LABEL_8:

  return v8;
}

@end