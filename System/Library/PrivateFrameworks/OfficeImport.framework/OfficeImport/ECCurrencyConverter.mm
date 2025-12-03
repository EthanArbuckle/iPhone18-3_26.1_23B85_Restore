@interface ECCurrencyConverter
+ (id)currencyConverter;
- (id)lassoCurrencyCodeForDollar;
- (id)lassoCurrencyCodeFromXl:(id)xl;
- (id)xlCurrencyCodeFromLasso:(id)lasso;
- (int)xlAccountFormatFromLasso:(id)lasso;
- (void)populateDictionaries;
@end

@implementation ECCurrencyConverter

+ (id)currencyConverter
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)lassoCurrencyCodeFromXl:(id)xl
{
  xlCopy = xl;
  if (!self->mXlToLassoCurrencyCode)
  {
    [(ECCurrencyConverter *)self populateDictionaries];
  }

  if ([xlCopy isEqualToString:@"$"])
  {
    lassoCurrencyCodeForDollar = [(ECCurrencyConverter *)self lassoCurrencyCodeForDollar];
LABEL_5:
    v6 = lassoCurrencyCodeForDollar;
    goto LABEL_13;
  }

  if ([xlCopy isEqualToString:@"$USD"])
  {
    v6 = @"USD";
    goto LABEL_13;
  }

  if ([xlCopy rangeOfString:@"€"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = @"EUR";
    goto LABEL_13;
  }

  v7 = [xlCopy rangeOfString:@"-"];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [xlCopy substringFromIndex:1];
    if ([(__CFString *)v6 length])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v10 = [xlCopy substringFromIndex:v7 + v8];
    if ([(__CFString *)v10 length])
    {
      v6 = [(NSMutableDictionary *)self->mXlToLassoCurrencyCode objectForKey:v10];
      if (v6)
      {

        goto LABEL_13;
      }
    }

    v6 = v10;
  }

  if ([xlCopy length] == 3)
  {
    uppercaseLetterCharacterSet = [MEMORY[0x277CCA900] uppercaseLetterCharacterSet];
    v12 = [xlCopy stringByTrimmingCharactersInSet:uppercaseLetterCharacterSet];
    v13 = [v12 length];

    if (!v13)
    {
      iSOCurrencyCodes = [MEMORY[0x277CBEAF8] ISOCurrencyCodes];
      v15 = [iSOCurrencyCodes containsObject:xlCopy];

      if (v15)
      {
        lassoCurrencyCodeForDollar = xlCopy;
        goto LABEL_5;
      }
    }
  }

  if ([xlCopy length])
  {
    lassoCurrencyCodeForDollar = [(NSMutableDictionary *)self->mXlToLassoCurrencyCodeBySymbol objectForKey:xlCopy];
    goto LABEL_5;
  }

  v6 = 0;
LABEL_13:

  return v6;
}

- (id)xlCurrencyCodeFromLasso:(id)lasso
{
  lassoCopy = lasso;
  if (!self->mLassoToXlCurrencyCode)
  {
    [(ECCurrencyConverter *)self populateDictionaries];
  }

  v5 = +[OITSULocale currentLocale];
  currencyCode = [v5 currencyCode];

  if (([lassoCopy isEqualToString:currencyCode] & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"KRW") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"JPY") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"TWD") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"USD") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"THB") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"INR") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"EUR") & 1) != 0 || (objc_msgSend(lassoCopy, "isEqualToString:", @"GBP") & 1) != 0 || objc_msgSend(lassoCopy, "isEqualToString:", @"BRL"))
  {
    v7 = [(NSMutableDictionary *)self->mLassoToXlCurrencyCode objectForKey:lassoCopy];
    if ([v7 isEqualToString:@"$"])
    {
      v8 = v7;
LABEL_17:
      lassoCopy = v8;

      goto LABEL_18;
    }

    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[$%@]", v7];
      goto LABEL_17;
    }
  }

  lassoCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[$%@]", lassoCopy];
LABEL_18:

  return lassoCopy;
}

- (int)xlAccountFormatFromLasso:(id)lasso
{
  lassoCopy = lasso;
  if (!self->mLassoToXlCurrencyCode)
  {
    [(ECCurrencyConverter *)self populateDictionaries];
  }

  v5 = [(NSMutableDictionary *)self->mXlAccountingFormat objectForKey:lassoCopy];
  v6 = v5;
  if (v5)
  {
    intValue = [v5 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (void)populateDictionaries
{
  v24[138] = *MEMORY[0x277D85DE8];
  v24[0] = [ECCurrencyEntry currencyWithLassoCode:@"AED" langId:14337 xlSymbol:@"د.إ.\u200F"];
  v24[1] = [ECCurrencyEntry currencyWithLassoCode:@"ALL" langId:1052 xlSymbol:@"Lek"];
  v24[2] = [ECCurrencyEntry currencyWithLassoCode:@"AMD" langId:1067 xlSymbol:@"դր"];
  v24[3] = [ECCurrencyEntry currencyWithLassoCode:@"ARS" langId:11274 xlSymbol:@"$"];
  v24[4] = [ECCurrencyEntry currencyWithLassoCode:@"AUD" langId:3081 xlSymbol:@"$" accountingFormat:1];
  v24[5] = [ECCurrencyEntry currencyWithLassoCode:@"AZM" langId:2092 xlSymbol:@"ман." isExport:0];
  v24[6] = [ECCurrencyEntry currencyWithLassoCode:@"AZM" langId:1068 xlSymbol:@"man."];
  v24[7] = [ECCurrencyEntry currencyWithLassoCode:@"BAM" langId:4122 xlSymbol:@"KM" isExport:0];
  v24[8] = [ECCurrencyEntry currencyWithLassoCode:@"BAM" langId:5146 xlSymbol:@"KM" isExport:0];
  v24[9] = [ECCurrencyEntry currencyWithLassoCode:@"BAM" langId:6170 xlSymbol:@"KM"];
  v24[10] = [ECCurrencyEntry currencyWithLassoCode:@"BGN" langId:1026 xlSymbol:@"лв"];
  v24[11] = [ECCurrencyEntry currencyWithLassoCode:@"BHD" langId:15361 xlSymbol:@"د.ب.\u200F"];
  v24[12] = [ECCurrencyEntry currencyWithLassoCode:@"BND" langId:2110 xlSymbol:@"$"];
  v24[13] = [ECCurrencyEntry currencyWithLassoCode:@"BOB" langId:1131 xlSymbol:@"$b" isExport:0];
  v24[14] = [ECCurrencyEntry currencyWithLassoCode:@"BOB" langId:16394 xlSymbol:@"$b"];
  v24[15] = [ECCurrencyEntry currencyWithLassoCode:@"BRL" langId:1046 xlSymbol:@"R$"];
  v24[16] = [ECCurrencyEntry currencyWithLassoCode:@"BYR" langId:1059 xlSymbol:@"р."];
  v24[17] = [ECCurrencyEntry currencyWithLassoCode:@"BZD" langId:10249 xlSymbol:@"BZ$"];
  v24[18] = [ECCurrencyEntry currencyWithLassoCode:@"CAD" langId:4105 xlSymbol:@"$" accountingFormat:1];
  v24[19] = [ECCurrencyEntry currencyWithLassoCode:@"CAD" langId:3084 xlSymbol:@"$" isExport:0 accountingFormat:8];
  v24[20] = [ECCurrencyEntry currencyWithLassoCode:@"CHF" langId:4108 xlSymbol:@"SFr." accountingFormat:3];
  v24[21] = [ECCurrencyEntry currencyWithLassoCode:@"CHF" langId:5127 xlSymbol:@"CHF" isExport:0];
  v24[22] = [ECCurrencyEntry currencyWithLassoCode:@"CHF" langId:2064 xlSymbol:@"SFr." isExport:0];
  v24[23] = [ECCurrencyEntry currencyWithLassoCode:@"CHF" langId:2055 xlSymbol:@"SFr." isExport:0];
  v24[24] = [ECCurrencyEntry currencyWithLassoCode:@"CLP" langId:13322 xlSymbol:@"$"];
  v24[25] = [ECCurrencyEntry currencyWithLassoCode:@"CNY" langId:2052 xlSymbol:@"￥"];
  v24[26] = [ECCurrencyEntry currencyWithLassoCode:@"COP" langId:9226 xlSymbol:@"$"];
  v24[27] = [ECCurrencyEntry currencyWithLassoCode:@"CRC" langId:5130 xlSymbol:@"₡"];
  v24[28] = [ECCurrencyEntry currencyWithLassoCode:@"CSD" langId:3098 xlSymbol:@"Дин." isExport:0];
  v24[29] = [ECCurrencyEntry currencyWithLassoCode:@"CSD" langId:2074 xlSymbol:@"Din."];
  v24[30] = [ECCurrencyEntry currencyWithLassoCode:@"CSD" langId:7194 xlSymbol:@"КМ" isExport:0];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Kč"];
  v24[31] = [ECCurrencyEntry currencyWithLassoCode:@"CZK" langId:1029 xlSymbol:v3 accountingFormat:9];
  v24[32] = [ECCurrencyEntry currencyWithLassoCode:@"DKK" langId:1030 xlSymbol:@"kr"];
  v24[33] = [ECCurrencyEntry currencyWithLassoCode:@"DKK" langId:1080 xlSymbol:@"kr" isExport:0];
  v24[34] = [ECCurrencyEntry currencyWithLassoCode:@"DOP" langId:7178 xlSymbol:@"RD$"];
  v24[35] = [ECCurrencyEntry currencyWithLassoCode:@"DZD" langId:5121 xlSymbol:@"د.ج.\u200F"];
  v24[36] = [ECCurrencyEntry currencyWithLassoCode:@"EEK" langId:1061 xlSymbol:@"kr"];
  v24[37] = [ECCurrencyEntry currencyWithLassoCode:@"EGP" langId:3073 xlSymbol:@"ج.م.\u200F"];
  v24[38] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:2 xlSymbol:@"€"];
  v24[39] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:1 xlSymbol:@"€" isExport:0 accountingFormat:8];
  v24[40] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:3079 xlSymbol:@"€" isExport:0 accountingFormat:1];
  v24[41] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:2067 xlSymbol:@"€" isExport:0 accountingFormat:9];
  v24[42] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:2077 xlSymbol:@"€" isExport:0 accountingFormat:9];
  v24[43] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:1036 xlSymbol:@"€" isExport:0 accountingFormat:9];
  v24[44] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:1031 xlSymbol:@"€" isExport:0 accountingFormat:9];
  v24[45] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:1032 xlSymbol:@"€" isExport:0 accountingFormat:9];
  v24[46] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:6153 xlSymbol:@"€" isExport:0 accountingFormat:1];
  v24[47] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:1040 xlSymbol:@"€" isExport:0 accountingFormat:1];
  v24[48] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:1043 xlSymbol:@"€" isExport:0 accountingFormat:5];
  v24[49] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:2070 xlSymbol:@"€" isExport:0 accountingFormat:1];
  v24[50] = [ECCurrencyEntry currencyWithLassoCode:@"EUR" langId:3082 xlSymbol:@"€" isExport:0 accountingFormat:1];
  v24[51] = [ECCurrencyEntry currencyWithLassoCode:@"GEL" langId:1079 xlSymbol:@"Lari"];
  v24[52] = [ECCurrencyEntry currencyWithLassoCode:@"GBP" langId:2057 xlSymbol:@"£" accountingFormat:1];
  v24[53] = [ECCurrencyEntry currencyWithLassoCode:@"GBP" langId:1106 xlSymbol:@"£" isExport:0];
  v24[54] = [ECCurrencyEntry currencyWithLassoCode:@"GTQ" langId:4106 xlSymbol:@"Q"];
  v24[55] = [ECCurrencyEntry currencyWithLassoCode:@"HKD" langId:3076 xlSymbol:@"HK$"];
  v24[56] = [ECCurrencyEntry currencyWithLassoCode:@"HNL" langId:18442 xlSymbol:@"L."];
  v24[57] = [ECCurrencyEntry currencyWithLassoCode:@"HRK" langId:1050 xlSymbol:@"kn"];
  v24[58] = [ECCurrencyEntry currencyWithLassoCode:@"HUF" langId:1038 xlSymbol:@"Ft" accountingFormat:9];
  v24[59] = [ECCurrencyEntry currencyWithLassoCode:@"IDR" langId:1057 xlSymbol:@"Rp"];
  v24[60] = [ECCurrencyEntry currencyWithLassoCode:@"ILS" langId:1037 xlSymbol:@"₪"];
  v24[61] = [ECCurrencyEntry currencyWithLassoCode:@"ILR" langId:1081 xlSymbol:@"रु"];
  v24[62] = [ECCurrencyEntry currencyWithLassoCode:@"ILR" langId:1099 xlSymbol:@"ರೂ" isExport:0];
  v24[63] = [ECCurrencyEntry currencyWithLassoCode:@"ILR" langId:1111 xlSymbol:@"रु" isExport:0];
  v24[64] = [ECCurrencyEntry currencyWithLassoCode:@"ILR" langId:1100 xlSymbol:@"ക" isExport:0];
  v24[65] = [ECCurrencyEntry currencyWithLassoCode:@"ILR" langId:1102 xlSymbol:@"रु" isExport:0];
  v24[66] = [ECCurrencyEntry currencyWithLassoCode:@"ILR" langId:1098 xlSymbol:@"రూ" isExport:0];
  v24[67] = [ECCurrencyEntry currencyWithLassoCode:@"ISK" langId:1039 xlSymbol:@"kr." accountingFormat:9];
  v24[68] = [ECCurrencyEntry currencyWithLassoCode:@"IQD" langId:2049 xlSymbol:@"د.ع.\u200F"];
  v24[69] = [ECCurrencyEntry currencyWithLassoCode:@"JMD" langId:8201 xlSymbol:@"J$"];
  v24[70] = [ECCurrencyEntry currencyWithLassoCode:@"JOD" langId:11265 xlSymbol:@"د.ا.\u200F"];
  v24[71] = [ECCurrencyEntry currencyWithLassoCode:@"JPY" langId:1041 xlSymbol:@"¥" accountingFormat:1];
  v24[72] = [ECCurrencyEntry currencyWithLassoCode:@"KGS" langId:1088 xlSymbol:@"сом"];
  v24[73] = [ECCurrencyEntry currencyWithLassoCode:@"KRW" langId:1042 xlSymbol:@"₩" accountingFormat:1];
  v24[74] = [ECCurrencyEntry currencyWithLassoCode:@"KWD" langId:13313 xlSymbol:@"د.ك.\u200F"];
  v24[75] = [ECCurrencyEntry currencyWithLassoCode:@"KZT" langId:1087 xlSymbol:@"Т"];
  v24[76] = [ECCurrencyEntry currencyWithLassoCode:@"LBP" langId:12289 xlSymbol:@"ل.ل.\u200F"];
  v24[77] = [ECCurrencyEntry currencyWithLassoCode:@"LTL" langId:1063 xlSymbol:@"Lt"];
  v24[78] = [ECCurrencyEntry currencyWithLassoCode:@"LVL" langId:1062 xlSymbol:@"Ls"];
  v24[79] = [ECCurrencyEntry currencyWithLassoCode:@"LYD" langId:4097 xlSymbol:@"د.ل.\u200F"];
  v24[80] = [ECCurrencyEntry currencyWithLassoCode:@"MAD" langId:6145 xlSymbol:@"د.م.\u200F"];
  v24[81] = [ECCurrencyEntry currencyWithLassoCode:@"MKD" langId:1071 xlSymbol:@"ден."];
  v24[82] = [ECCurrencyEntry currencyWithLassoCode:@"MNT" langId:1104 xlSymbol:@"₮"];
  v24[83] = [ECCurrencyEntry currencyWithLassoCode:@"MOP" langId:5124 xlSymbol:@"P"];
  v24[84] = [ECCurrencyEntry currencyWithLassoCode:@"MTL" langId:1082 xlSymbol:@"Lm"];
  v24[85] = [ECCurrencyEntry currencyWithLassoCode:@"MXN" langId:2058 xlSymbol:@"$"];
  v24[86] = [ECCurrencyEntry currencyWithLassoCode:@"MYR" langId:1086 xlSymbol:@"R"];
  v24[87] = [ECCurrencyEntry currencyWithLassoCode:@"NIO" langId:19466 xlSymbol:@"C$"];
  v24[88] = [ECCurrencyEntry currencyWithLassoCode:@"NOK" langId:1044 xlSymbol:@"kr" accountingFormat:3];
  v24[89] = [ECCurrencyEntry currencyWithLassoCode:@"NOK" langId:2068 xlSymbol:@"kr" isExport:0];
  v24[90] = [ECCurrencyEntry currencyWithLassoCode:@"NOK" langId:1083 xlSymbol:@"kr" isExport:0];
  v24[91] = [ECCurrencyEntry currencyWithLassoCode:@"NOK" langId:4155 xlSymbol:@"kr" isExport:0];
  v24[92] = [ECCurrencyEntry currencyWithLassoCode:@"NOK" langId:6203 xlSymbol:@"kr" isExport:0];
  v24[93] = [ECCurrencyEntry currencyWithLassoCode:@"NZD" langId:5129 xlSymbol:@"$" accountingFormat:1];
  v24[94] = [ECCurrencyEntry currencyWithLassoCode:@"NZD" langId:1153 xlSymbol:@"$" isExport:0];
  v24[95] = [ECCurrencyEntry currencyWithLassoCode:@"OMR" langId:8193 xlSymbol:@"ر.ع.\u200F"];
  v24[96] = [ECCurrencyEntry currencyWithLassoCode:@"PAB" langId:6154 xlSymbol:@"B/."];
  v24[97] = [ECCurrencyEntry currencyWithLassoCode:@"PEN" langId:10250 xlSymbol:@"S/."];
  v24[98] = [ECCurrencyEntry currencyWithLassoCode:@"PEN" langId:3179 xlSymbol:@"S/." isExport:0];
  v24[99] = [ECCurrencyEntry currencyWithLassoCode:@"PHP" langId:13321 xlSymbol:@"Php"];
  v24[100] = [ECCurrencyEntry currencyWithLassoCode:@"PLN" langId:1045 xlSymbol:@"zł" accountingFormat:9];
  v24[101] = [ECCurrencyEntry currencyWithLassoCode:@"PYG" langId:15370 xlSymbol:@"Gs"];
  v24[102] = [ECCurrencyEntry currencyWithLassoCode:@"QAR" langId:16385 xlSymbol:@"ر.ق.\u200F"];
  v24[103] = [ECCurrencyEntry currencyWithLassoCode:@"RON" langId:1048 xlSymbol:@"lei"];
  v24[104] = [ECCurrencyEntry currencyWithLassoCode:@"RUB" langId:1049 xlSymbol:@"р." accountingFormat:9];
  v24[105] = [ECCurrencyEntry currencyWithLassoCode:@"SEK" langId:5179 xlSymbol:@"kr" isExport:0];
  v24[106] = [ECCurrencyEntry currencyWithLassoCode:@"SEK" langId:2107 xlSymbol:@"kr" isExport:0];
  v24[107] = [ECCurrencyEntry currencyWithLassoCode:@"SEK" langId:7227 xlSymbol:@"kr" isExport:0];
  v24[108] = [ECCurrencyEntry currencyWithLassoCode:@"SEK" langId:1053 xlSymbol:@"kr" accountingFormat:9];
  v24[109] = [ECCurrencyEntry currencyWithLassoCode:@"SGD" langId:4100 xlSymbol:@"$"];
  v24[110] = [ECCurrencyEntry currencyWithLassoCode:@"SIT" langId:1060 xlSymbol:@"SIT"];
  v24[111] = [ECCurrencyEntry currencyWithLassoCode:@"SKK" langId:1051 xlSymbol:@"Sk" accountingFormat:9];
  v24[112] = [ECCurrencyEntry currencyWithLassoCode:@"SYP" langId:10241 xlSymbol:@"ل.س.\u200F"];
  v24[113] = [ECCurrencyEntry currencyWithLassoCode:@"THB" langId:1054 xlSymbol:@"฿"];
  v24[114] = [ECCurrencyEntry currencyWithLassoCode:@"TND" langId:7169 xlSymbol:@"د.ت.\u200F"];
  v24[115] = [ECCurrencyEntry currencyWithLassoCode:@"TRY" langId:1055 xlSymbol:@"TL" accountingFormat:9];
  v24[116] = [ECCurrencyEntry currencyWithLassoCode:@"TTD" langId:11273 xlSymbol:@"TT$"];
  v24[117] = [ECCurrencyEntry currencyWithLassoCode:@"TWD" langId:1028 xlSymbol:@"NT$"];
  v24[118] = [ECCurrencyEntry currencyWithLassoCode:@"UAH" langId:1058 xlSymbol:@"грн."];
  v24[119] = [ECCurrencyEntry currencyWithLassoCode:@"USD" langId:1033 xlSymbol:@"$"];
  v24[120] = [ECCurrencyEntry currencyWithLassoCode:@"USD" langId:2155 xlSymbol:@"$" isExport:0];
  v24[121] = [ECCurrencyEntry currencyWithLassoCode:@"USD" langId:12298 xlSymbol:@"$" isExport:0];
  v24[122] = [ECCurrencyEntry currencyWithLassoCode:@"USD" langId:17418 xlSymbol:@"$" isExport:0];
  v24[123] = [ECCurrencyEntry currencyWithLassoCode:@"USD" langId:20490 xlSymbol:@"$" isExport:0];
  v24[124] = [ECCurrencyEntry currencyWithLassoCode:@"UYU" langId:14346 xlSymbol:@"$U"];
  v24[125] = [ECCurrencyEntry currencyWithLassoCode:@"UZS" langId:2115 xlSymbol:@"сўм" isExport:0];
  v24[126] = [ECCurrencyEntry currencyWithLassoCode:@"UZS" langId:1091 xlSymbol:@"su'm"];
  v24[127] = [ECCurrencyEntry currencyWithLassoCode:@"VEB" langId:8202 xlSymbol:@"Bs"];
  v24[128] = [ECCurrencyEntry currencyWithLassoCode:@"VND" langId:1066 xlSymbol:@"₫"];
  v24[129] = [ECCurrencyEntry currencyWithLassoCode:@"XCD" langId:9225 xlSymbol:@"$"];
  v24[130] = [ECCurrencyEntry currencyWithLassoCode:@"YER" langId:9217 xlSymbol:@"ر.ي.\u200F"];
  v24[131] = [ECCurrencyEntry currencyWithLassoCode:@"ZAR" langId:1078 xlSymbol:@"R" isExport:0];
  v24[132] = [ECCurrencyEntry currencyWithLassoCode:@"ZAR" langId:7177 xlSymbol:@"R"];
  v24[133] = [ECCurrencyEntry currencyWithLassoCode:@"ZAR" langId:1132 xlSymbol:@"R" isExport:0];
  v24[134] = [ECCurrencyEntry currencyWithLassoCode:@"ZAR" langId:1074 xlSymbol:@"R" isExport:0];
  v24[135] = [ECCurrencyEntry currencyWithLassoCode:@"ZAR" langId:1076 xlSymbol:@"R" isExport:0];
  v24[136] = [ECCurrencyEntry currencyWithLassoCode:@"ZAR" langId:1077 xlSymbol:@"R" isExport:0];
  v24[137] = [ECCurrencyEntry currencyWithLassoCode:@"ZWD" langId:12297 xlSymbol:@"Z$"];

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mXlToLassoCurrencyCode = self->mXlToLassoCurrencyCode;
  self->mXlToLassoCurrencyCode = v4;

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mXlToLassoCurrencyCodeBySymbol = self->mXlToLassoCurrencyCodeBySymbol;
  self->mXlToLassoCurrencyCodeBySymbol = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mLassoToXlCurrencyCode = self->mLassoToXlCurrencyCode;
  self->mLassoToXlCurrencyCode = v8;

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  mXlAccountingFormat = self->mXlAccountingFormat;
  self->mXlAccountingFormat = v10;

  v12 = +[OITSULocale currentLocale];
  currencyCode = [v12 currencyCode];

  v14 = [OITSUNumberFormatter currencySymbolForCurrencyCode:currencyCode];
  v15 = [v14 isEqualToString:@"$"];

  for (i = 0; i != 138; ++i)
  {
    v17 = v24[i];
    [(NSMutableDictionary *)self->mXlToLassoCurrencyCode setValue:v17[1] forKey:v17[2]];
    if (*(v17 + 32) == 1)
    {
      if (v15 && ([currencyCode isEqualToString:v17[1]] & 1) != 0)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v17[3]];
      }

      else
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v17[3], v17[2]];
      }

      v19 = v18;
      [(NSMutableDictionary *)self->mLassoToXlCurrencyCode setValue:v18 forKey:v17[1]];

      if (v17[4])
      {
        if (!*(v17 + 9) || (v20 = self->mXlAccountingFormat, [MEMORY[0x277CCABB0] numberWithInt:?], v21 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary setValue:forKey:](v20, "setValue:forKey:", v21, v17[1]), v21, (v17[4] & 1) != 0))
        {
          v22 = [(NSMutableDictionary *)self->mXlToLassoCurrencyCodeBySymbol objectForKey:v17[3]];

          if (!v22)
          {
            [(NSMutableDictionary *)self->mXlToLassoCurrencyCodeBySymbol setValue:v17[1] forKey:v17[3]];
          }
        }
      }
    }
  }

  for (j = 137; j != -1; --j)
  {
  }
}

- (id)lassoCurrencyCodeForDollar
{
  v2 = +[OITSULocale currentLocale];
  currencyCode = [v2 currencyCode];

  v4 = [OITSUNumberFormatter currencySymbolForCurrencyCode:currencyCode];
  if ([v4 rangeOfString:@"$"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = @"USD";
  }

  else
  {
    v5 = currencyCode;
  }

  return v5;
}

@end