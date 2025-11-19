@interface NBPhoneNumberUtil
@end

@implementation NBPhoneNumberUtil

uint64_t __36___NBPhoneNumberUtil_sharedInstance__block_invoke(uint64_t a1)
{
  _MergedGlobals_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

void __46___NBPhoneNumberUtil_initRegularExpressionSet__block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"^[%@]+", 0x285461668];
  v1 = qword_281346978;
  qword_281346978 = v0;

  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@%@]", 0x285461668, 0x285461688];
  v3 = qword_281346980;
  qword_281346980 = v2;

  v4 = qword_281346988;
  qword_281346988 = @"[\\\\\\/] *x";

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[^%@%@#]+$", 0x285461688, @"A-Za-z"];
  v6 = qword_281346990;
  qword_281346990 = v5;

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(?:%@)$", @"(?:ext=([0-9０-９٠-٩۰-۹]{1, 7})|[  \\t, ]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|[, xｘX#＃~～]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t, -]*([0-9０-９٠-٩۰-۹]{1, 7})#?|[- ]+([0-9０-９٠-٩۰-۹]{1, 5})#)$"];;
  v8 = qword_281346998;
  qword_281346998 = v7;

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]+", @"-x‐-―−ー－-／ ­​⁠　()（）［］.\\[\\]/~⁓∼～"];
  v10 = qword_2813469A0;
  qword_2813469A0 = v9;

  v11 = qword_2813469A8;
  qword_2813469A8 = @"^[0-9０-９٠-٩۰-۹]{2}$|^[+＋]*(?:[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*]*[0-9０-９٠-٩۰-۹]){3,}[-x‐-―−ー－-／  ­​⁠　()（）［］.\\[\\]/~⁓∼～*A-Za-z0-9０-９٠-٩۰-۹]*(?:;ext=([0-9０-９٠-٩۰-۹]{1,7})|[  \\t,]*(?:e?xt(?:ensi(?:ó?|ó))?n?|ｅ?ｘｔｎ?|[,xｘ#＃~～]|int|anexo|ｉｎｔ)[:\\.．]?[  \\t,-]*([0-9０-９٠-٩۰-۹]{1,7})#?|[- ]+([0-9０-９٠-٩۰-۹]{1,5})#)?$";
}

uint64_t __36___NBPhoneNumberUtil_DIGIT_MAPPINGS__block_invoke()
{
  qword_2813469B8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"0", @"1", @"1", @"2", @"2", @"3", @"3", @"4", @"4", @"5", @"5", @"6", @"6", @"7", @"7", @"8", @"8", @"9", @"9", @"0", @"０", @"1", @"１", @"2", @"２", @"3", @"３", @"4", @"４", @"5", @"５", @"6", @"６", @"7", @"７", @"8", @"８", @"9", @"９", @"0", @"٠", @"1", @"١", @"2", @"٢", @"3", @"٣", @"4", @"٤", @"5", @"٥", @"6", @"٦", @"7", @"٧", @"8", @"٨", @"9", @"٩", @"0", @"۰"}];

  return MEMORY[0x2821F96F8]();
}

void __47___NBPhoneNumberUtil_initNormalizationMappings__block_invoke()
{
  v10[2] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"0", @"1", @"1", @"2", @"2", @"3", @"3", @"4", @"4", @"5", @"5", @"6", @"6", @"7", @"7", @"8", @"8", @"9", @"9", @"+", @"+", @"*", @"*", @"#", @"#", 0}];
  v1 = qword_2813469C0;
  qword_2813469C0 = v0;

  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"0", @"0", @"1", @"1", @"2", @"2", @"3", @"3", @"4", @"4", @"5", @"5", @"6", @"6", @"7", @"7", @"8", @"8", @"9", @"9", @"0", @"０", @"1", @"１", @"2", @"２", @"3", @"３", @"4", @"４", @"5", @"５", @"6", @"６", @"7", @"７", @"8", @"８", @"9", @"９", @"0", @"٠", @"1", @"١", @"2", @"٢", @"3", @"٣", @"4", @"٤", @"5", @"٥", @"6", @"٦", @"7", @"٧", @"8", @"٨", @"9", @"٩", @"0"}];
  v3 = qword_2813469C8;
  qword_2813469C8 = v2;

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"0", @"1", @"1", @"2", @"2", @"3", @"3", @"4", @"4", @"5", @"5", @"6", @"6", @"7", @"7", @"8", @"8", @"9", @"9", @"A", @"A", @"B", @"B", @"C", @"C", @"D", @"D", @"E", @"E", @"F", @"F", @"G", @"G", @"H", @"H", @"I", @"I", @"J", @"J", @"K", @"K", @"L", @"L", @"M", @"M", @"N", @"N", @"O", @"O", @"P", @"P", @"Q", @"Q", @"R", @"R", @"S", @"S", @"T", @"T", @"U", @"U"}];
  v5 = qword_2813469D0;
  qword_2813469D0 = v4;

  v9[0] = &unk_285464AB8;
  v9[1] = &unk_285464AD0;
  v10[0] = @"1";
  v10[1] = @"9";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = qword_2813469D8;
  qword_2813469D8 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __42___NBPhoneNumberUtil_telephonyNetworkInfo__block_invoke()
{
  qword_2813469E8 = objc_alloc_init(MEMORY[0x277CC3790]);

  return MEMORY[0x2821F96F8]();
}

@end