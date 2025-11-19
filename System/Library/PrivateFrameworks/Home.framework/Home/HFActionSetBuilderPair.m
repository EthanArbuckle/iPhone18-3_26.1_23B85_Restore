@interface HFActionSetBuilderPair
- (HFActionSetBuilderPair)initWithActionSet:(id)a3 builder:(id)a4;
- (id)commitActionSetInHome:(id)a3;
@end

@implementation HFActionSetBuilderPair

- (HFActionSetBuilderPair)initWithActionSet:(id)a3 builder:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFActionSetBuilderPair;
  v9 = [(HFActionSetBuilderPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionSet, a3);
    objc_storeStrong(&v10->_builder, a4);
  }

  return v10;
}

- (id)commitActionSetInHome:(id)a3
{
  v4 = a3;
  v5 = [(HFActionSetBuilderPair *)self builder];

  if (v5)
  {
    v6 = [(HFActionSetBuilderPair *)self builder];
    v7 = [(HFActionSetBuilderPair *)self actionSet];
    v8 = v7;
    v9 = MEMORY[0x277D2C900];
    if (v7)
    {
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __48__HFActionSetBuilderPair_commitActionSetInHome___block_invoke;
      v24[3] = &unk_277DF4150;
      v10 = &v25;
      v11 = v7;
      v12 = &v26;
      v25 = v11;
      v26 = v6;
      v13 = v6;
      v14 = [v9 futureWithErrorOnlyHandlerAdapterBlock:v24];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __48__HFActionSetBuilderPair_commitActionSetInHome___block_invoke_2;
      v22[3] = &unk_277DF2CE0;
      v23 = v11;
      v15 = [v14 flatMap:v22];
    }

    else
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __48__HFActionSetBuilderPair_commitActionSetInHome___block_invoke_3;
      v19[3] = &unk_277DF61F0;
      v10 = &v20;
      v12 = &v21;
      v20 = v4;
      v21 = v6;
      v17 = v6;
      v15 = [v9 futureWithCompletionHandlerAdapterBlock:v19];
    }
  }

  else
  {
    NSLog(&stru_2824B1A78.isa);
    v16 = MEMORY[0x277D2C900];
    v8 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    v15 = [v16 futureWithError:v8];
  }

  return v15;
}

@end