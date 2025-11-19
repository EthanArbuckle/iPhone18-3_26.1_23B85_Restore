@interface HFObservedAccessorySettingState
@end

@implementation HFObservedAccessorySettingState

void __47___HFObservedAccessorySettingState_na_identity__block_invoke_2()
{
  v5 = [MEMORY[0x277D2C908] builder];
  v0 = [v5 appendCharacteristic:&__block_literal_global_27_0];
  v1 = [v0 appendCharacteristic:&__block_literal_global_29];
  v2 = [v1 appendCharacteristic:&__block_literal_global_31_1];
  v3 = [v2 build];
  v4 = qword_280E02CE8;
  qword_280E02CE8 = v3;
}

@end