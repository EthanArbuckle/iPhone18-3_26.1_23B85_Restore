@interface HMCharacteristic(HFActionSuggestions)
+ (id)hf_suggestionVendorForCharacteristicType:()HFActionSuggestions;
@end

@implementation HMCharacteristic(HFActionSuggestions)

+ (id)hf_suggestionVendorForCharacteristicType:()HFActionSuggestions
{
  v3 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke;
  v8[3] = &unk_277DF75E8;
  v9 = v3;
  v4 = v3;
  v5 = __82__HMCharacteristic_HFActionSuggestions__hf_suggestionVendorForCharacteristicType___block_invoke(v8);
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

@end