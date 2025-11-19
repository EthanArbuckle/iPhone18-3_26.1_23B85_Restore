void sub_29EB5A3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __ICLogDateString()
{
  if (__ICLogDateString_onceToken != -1)
  {
    __ICLogDateString_cold_1();
  }

  v0 = __ICLogDateString_currentCalendar;
  if (__ICLogDateString_unitFlags)
  {
    v1 = 33020;
  }

  else
  {
    v1 = 0;
  }

  v2 = [MEMORY[0x29EDB8DB0] date];
  v3 = [v0 components:v1 fromDate:v2];

  v4 = [v3 hour];
  v5 = [v3 minute];
  v6 = [v3 second];
  v7 = [v3 nanosecond];
  v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%02ld:%02ld:%02ld:%06.3ld  ", v4, v5, v6, v7];

  return v8;
}

void __ICOSLogCreate()
{
  if (__ICOSLogCreate_onceToken != -1)
  {
    __ICOSLogCreate_cold_1();
  }
}

void __ICReadPrefs()
{
  v7 = [MEMORY[0x29EDB8E78] standardUserDefaults];
  v0 = [v7 persistentDomainForName:ICPreferencesDomain];
  v1 = [MEMORY[0x29EDB8E00] dictionaryWithDictionary:v0];
  v2 = [v0 objectForKeyedSubscript:@"loggingLevel"];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v3 = [v2 unsignedIntegerValue]) != 0)
  {
    ICLoggingLevel = v3;
  }

  else if (!ICLoggingLevel)
  {
    ICLoggingLevel = 3075;
    v4 = *MEMORY[0x29EDB8FA8];
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:3075];
    [v1 setObject:v5 forKeyedSubscript:@"loggingLevel"];

    v6 = *MEMORY[0x29EDB8FB0];
    CFPreferencesSetMultiple(v1, 0, ICPreferencesDomain, *MEMORY[0x29EDB8FB0], v4);
    CFPreferencesSynchronize(ICPreferencesDomain, v6, v4);
  }
}

id __ICLongValueToErrorString(int a1)
{
  v9[72] = *MEMORY[0x29EDCA608];
  v8[0] = &unk_2A2546520;
  v8[1] = &unk_2A2546538;
  v9[0] = &unk_2A2546BE0;
  v9[1] = &unk_2A2546C08;
  v8[2] = &unk_2A2546550;
  v8[3] = &unk_2A2546568;
  v9[2] = &unk_2A2546C30;
  v9[3] = &unk_2A2546C58;
  v8[4] = &unk_2A2546580;
  v8[5] = &unk_2A2546598;
  v9[4] = &unk_2A2546C80;
  v9[5] = &unk_2A2546CA8;
  v8[6] = &unk_2A25465B0;
  v8[7] = &unk_2A25465C8;
  v9[6] = &unk_2A2546CD0;
  v9[7] = &unk_2A2546CF8;
  v8[8] = &unk_2A25465E0;
  v8[9] = &unk_2A25465F8;
  v9[8] = &unk_2A2546D20;
  v9[9] = &unk_2A2546D48;
  v8[10] = &unk_2A2546610;
  v8[11] = &unk_2A2546628;
  v9[10] = &unk_2A2546D70;
  v9[11] = &unk_2A2546D98;
  v8[12] = &unk_2A2546640;
  v8[13] = &unk_2A2546658;
  v9[12] = &unk_2A2546DC0;
  v9[13] = &unk_2A2546DE8;
  v8[14] = &unk_2A2546670;
  v8[15] = &unk_2A2546688;
  v9[14] = &unk_2A2546E10;
  v9[15] = &unk_2A2546E38;
  v8[16] = &unk_2A25466A0;
  v8[17] = &unk_2A25466B8;
  v9[16] = &unk_2A2546E60;
  v9[17] = &unk_2A2546E88;
  v8[18] = &unk_2A25466D0;
  v8[19] = &unk_2A25466E8;
  v9[18] = &unk_2A2546EB0;
  v9[19] = &unk_2A2546ED8;
  v8[20] = &unk_2A2546700;
  v8[21] = &unk_2A2546718;
  v9[20] = &unk_2A2546F00;
  v9[21] = &unk_2A2546F28;
  v8[22] = &unk_2A2546730;
  v8[23] = &unk_2A2546748;
  v9[22] = &unk_2A2546F50;
  v9[23] = &unk_2A2546F78;
  v8[24] = &unk_2A2546760;
  v8[25] = &unk_2A2546778;
  v9[24] = &unk_2A2546FA0;
  v9[25] = &unk_2A2546FC8;
  v8[26] = &unk_2A2546790;
  v8[27] = &unk_2A25467A8;
  v9[26] = &unk_2A2546FF0;
  v9[27] = &unk_2A2547018;
  v8[28] = &unk_2A25467C0;
  v8[29] = &unk_2A25467D8;
  v9[28] = &unk_2A2547040;
  v9[29] = &unk_2A2547068;
  v8[30] = &unk_2A25467F0;
  v8[31] = &unk_2A2546808;
  v9[30] = &unk_2A2547090;
  v9[31] = &unk_2A25470B8;
  v8[32] = &unk_2A2546820;
  v8[33] = &unk_2A2546838;
  v9[32] = &unk_2A25470E0;
  v9[33] = &unk_2A2547108;
  v8[34] = &unk_2A2546850;
  v8[35] = &unk_2A2546868;
  v9[34] = &unk_2A2547130;
  v9[35] = &unk_2A2547158;
  v8[36] = &unk_2A2546880;
  v8[37] = &unk_2A2546898;
  v9[36] = &unk_2A2547180;
  v9[37] = &unk_2A25471A8;
  v8[38] = &unk_2A25468B0;
  v8[39] = &unk_2A25468C8;
  v9[38] = &unk_2A25471D0;
  v9[39] = &unk_2A25471F8;
  v8[40] = &unk_2A25468E0;
  v8[41] = &unk_2A25468F8;
  v9[40] = &unk_2A2547220;
  v9[41] = &unk_2A2547248;
  v8[42] = &unk_2A2546910;
  v8[43] = &unk_2A2546928;
  v9[42] = &unk_2A2547270;
  v9[43] = &unk_2A2547298;
  v8[44] = &unk_2A2546940;
  v8[45] = &unk_2A2546958;
  v9[44] = &unk_2A25472C0;
  v9[45] = &unk_2A25472E8;
  v8[46] = &unk_2A2546970;
  v8[47] = &unk_2A2546988;
  v9[46] = &unk_2A2547310;
  v9[47] = &unk_2A2547338;
  v8[48] = &unk_2A25469A0;
  v8[49] = &unk_2A25469B8;
  v9[48] = &unk_2A2547360;
  v9[49] = &unk_2A2547388;
  v8[50] = &unk_2A25469D0;
  v8[51] = &unk_2A25469E8;
  v9[50] = &unk_2A25473B0;
  v9[51] = &unk_2A25473D8;
  v8[52] = &unk_2A2546A00;
  v8[53] = &unk_2A2546A18;
  v9[52] = &unk_2A2547400;
  v9[53] = &unk_2A2547428;
  v8[54] = &unk_2A2546A30;
  v8[55] = &unk_2A2546A48;
  v9[54] = &unk_2A2547450;
  v9[55] = &unk_2A2547478;
  v8[56] = &unk_2A2546A60;
  v8[57] = &unk_2A2546A78;
  v9[56] = &unk_2A25474A0;
  v9[57] = &unk_2A25474C8;
  v8[58] = &unk_2A2546A90;
  v8[59] = &unk_2A2546AA8;
  v9[58] = &unk_2A25474F0;
  v9[59] = &unk_2A2547518;
  v8[60] = &unk_2A2546AC0;
  v8[61] = &unk_2A2546AD8;
  v9[60] = &unk_2A2547540;
  v9[61] = &unk_2A2547568;
  v8[62] = &unk_2A2546AF0;
  v8[63] = &unk_2A2546B08;
  v9[62] = &unk_2A2547590;
  v9[63] = &unk_2A25475B8;
  v8[64] = &unk_2A2546B20;
  v9[64] = &unk_2A25475E0;
  v8[65] = &unk_2A2546B38;
  v9[65] = &unk_2A2547608;
  v8[66] = &unk_2A2546B50;
  v9[66] = &unk_2A2547630;
  v8[67] = &unk_2A2546B68;
  v9[67] = &unk_2A2547658;
  v8[68] = &unk_2A2546B80;
  v9[68] = &unk_2A2547680;
  v8[69] = &unk_2A2546B98;
  v9[69] = &unk_2A25476A8;
  v8[70] = &unk_2A2546BB0;
  v9[70] = &unk_2A25476D0;
  v8[71] = &unk_2A2546BC8;
  v9[71] = &unk_2A25476F8;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:72];
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:~a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"text"];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

id __ICValueToErrorString(uint64_t a1)
{
  v9[72] = *MEMORY[0x29EDCA608];
  v8[0] = &unk_2A2546520;
  v8[1] = &unk_2A2546538;
  v9[0] = &unk_2A2547720;
  v9[1] = &unk_2A2547748;
  v8[2] = &unk_2A2546550;
  v8[3] = &unk_2A2546568;
  v9[2] = &unk_2A2547770;
  v9[3] = &unk_2A2547798;
  v8[4] = &unk_2A2546580;
  v8[5] = &unk_2A2546598;
  v9[4] = &unk_2A25477C0;
  v9[5] = &unk_2A25477E8;
  v8[6] = &unk_2A25465B0;
  v8[7] = &unk_2A25465C8;
  v9[6] = &unk_2A2547810;
  v9[7] = &unk_2A2547838;
  v8[8] = &unk_2A25465E0;
  v8[9] = &unk_2A25465F8;
  v9[8] = &unk_2A2547860;
  v9[9] = &unk_2A2547888;
  v8[10] = &unk_2A2546610;
  v8[11] = &unk_2A2546628;
  v9[10] = &unk_2A25478B0;
  v9[11] = &unk_2A25478D8;
  v8[12] = &unk_2A2546640;
  v8[13] = &unk_2A2546658;
  v9[12] = &unk_2A2547900;
  v9[13] = &unk_2A2547928;
  v8[14] = &unk_2A2546670;
  v8[15] = &unk_2A2546688;
  v9[14] = &unk_2A2547950;
  v9[15] = &unk_2A2547978;
  v8[16] = &unk_2A25466A0;
  v8[17] = &unk_2A25466B8;
  v9[16] = &unk_2A25479A0;
  v9[17] = &unk_2A25479C8;
  v8[18] = &unk_2A25466D0;
  v8[19] = &unk_2A25466E8;
  v9[18] = &unk_2A25479F0;
  v9[19] = &unk_2A2547A18;
  v8[20] = &unk_2A2546700;
  v8[21] = &unk_2A2546718;
  v9[20] = &unk_2A2547A40;
  v9[21] = &unk_2A2547A68;
  v8[22] = &unk_2A2546730;
  v8[23] = &unk_2A2546748;
  v9[22] = &unk_2A2547A90;
  v9[23] = &unk_2A2547AB8;
  v8[24] = &unk_2A2546760;
  v8[25] = &unk_2A2546778;
  v9[24] = &unk_2A2547AE0;
  v9[25] = &unk_2A2547B08;
  v8[26] = &unk_2A2546790;
  v8[27] = &unk_2A25467A8;
  v9[26] = &unk_2A2547B30;
  v9[27] = &unk_2A2547B58;
  v8[28] = &unk_2A25467C0;
  v8[29] = &unk_2A25467D8;
  v9[28] = &unk_2A2547B80;
  v9[29] = &unk_2A2547BA8;
  v8[30] = &unk_2A25467F0;
  v8[31] = &unk_2A2546808;
  v9[30] = &unk_2A2547BD0;
  v9[31] = &unk_2A2547BF8;
  v8[32] = &unk_2A2546820;
  v8[33] = &unk_2A2546838;
  v9[32] = &unk_2A2547C20;
  v9[33] = &unk_2A2547C48;
  v8[34] = &unk_2A2546850;
  v8[35] = &unk_2A2546868;
  v9[34] = &unk_2A2547C70;
  v9[35] = &unk_2A2547C98;
  v8[36] = &unk_2A2546880;
  v8[37] = &unk_2A2546898;
  v9[36] = &unk_2A2547CC0;
  v9[37] = &unk_2A2547CE8;
  v8[38] = &unk_2A25468B0;
  v8[39] = &unk_2A25468C8;
  v9[38] = &unk_2A2547D10;
  v9[39] = &unk_2A2547D38;
  v8[40] = &unk_2A25468E0;
  v8[41] = &unk_2A25468F8;
  v9[40] = &unk_2A2547D60;
  v9[41] = &unk_2A2547D88;
  v8[42] = &unk_2A2546910;
  v8[43] = &unk_2A2546928;
  v9[42] = &unk_2A2547DB0;
  v9[43] = &unk_2A2547DD8;
  v8[44] = &unk_2A2546940;
  v8[45] = &unk_2A2546958;
  v9[44] = &unk_2A2547E00;
  v9[45] = &unk_2A2547E28;
  v8[46] = &unk_2A2546970;
  v8[47] = &unk_2A2546988;
  v9[46] = &unk_2A2547E50;
  v9[47] = &unk_2A2547E78;
  v8[48] = &unk_2A25469A0;
  v8[49] = &unk_2A25469B8;
  v9[48] = &unk_2A2547EA0;
  v9[49] = &unk_2A2547EC8;
  v8[50] = &unk_2A25469D0;
  v8[51] = &unk_2A25469E8;
  v9[50] = &unk_2A2547EF0;
  v9[51] = &unk_2A2547F18;
  v8[52] = &unk_2A2546A00;
  v8[53] = &unk_2A2546A18;
  v9[52] = &unk_2A2547F40;
  v9[53] = &unk_2A2547F68;
  v8[54] = &unk_2A2546A30;
  v8[55] = &unk_2A2546A48;
  v9[54] = &unk_2A2547F90;
  v9[55] = &unk_2A2547FB8;
  v8[56] = &unk_2A2546A60;
  v8[57] = &unk_2A2546A78;
  v9[56] = &unk_2A2547FE0;
  v9[57] = &unk_2A2548008;
  v8[58] = &unk_2A2546A90;
  v8[59] = &unk_2A2546AA8;
  v9[58] = &unk_2A2548030;
  v9[59] = &unk_2A2548058;
  v8[60] = &unk_2A2546AC0;
  v8[61] = &unk_2A2546AD8;
  v9[60] = &unk_2A2548080;
  v9[61] = &unk_2A25480A8;
  v8[62] = &unk_2A2546AF0;
  v8[63] = &unk_2A2546B08;
  v9[62] = &unk_2A25480D0;
  v9[63] = &unk_2A25480F8;
  v8[64] = &unk_2A2546B20;
  v9[64] = &unk_2A2548120;
  v8[65] = &unk_2A2546B38;
  v9[65] = &unk_2A2548148;
  v8[66] = &unk_2A2546B50;
  v9[66] = &unk_2A2548170;
  v8[67] = &unk_2A2546B68;
  v9[67] = &unk_2A2548198;
  v8[68] = &unk_2A2546B80;
  v9[68] = &unk_2A25481C0;
  v8[69] = &unk_2A2546B98;
  v9[69] = &unk_2A25481E8;
  v8[70] = &unk_2A2546BB0;
  v9[70] = &unk_2A2548210;
  v8[71] = &unk_2A2546BC8;
  v9[71] = &unk_2A2548238;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v9 forKeys:v8 count:72];
  v3 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:a1];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 objectForKeyedSubscript:@"text"];

  v6 = *MEMORY[0x29EDCA608];

  return v5;
}

id __ICErrorValueDict(uint64_t a1)
{
  v8[72] = *MEMORY[0x29EDCA608];
  v7[0] = &unk_2A2546520;
  v7[1] = &unk_2A2546538;
  v8[0] = &unk_2A2548260;
  v8[1] = &unk_2A2548288;
  v7[2] = &unk_2A2546550;
  v7[3] = &unk_2A2546568;
  v8[2] = &unk_2A25482B0;
  v8[3] = &unk_2A25482D8;
  v7[4] = &unk_2A2546580;
  v7[5] = &unk_2A2546598;
  v8[4] = &unk_2A2548300;
  v8[5] = &unk_2A2548328;
  v7[6] = &unk_2A25465B0;
  v7[7] = &unk_2A25465C8;
  v8[6] = &unk_2A2548350;
  v8[7] = &unk_2A2548378;
  v7[8] = &unk_2A25465E0;
  v7[9] = &unk_2A25465F8;
  v8[8] = &unk_2A25483A0;
  v8[9] = &unk_2A25483C8;
  v7[10] = &unk_2A2546610;
  v7[11] = &unk_2A2546628;
  v8[10] = &unk_2A25483F0;
  v8[11] = &unk_2A2548418;
  v7[12] = &unk_2A2546640;
  v7[13] = &unk_2A2546658;
  v8[12] = &unk_2A2548440;
  v8[13] = &unk_2A2548468;
  v7[14] = &unk_2A2546670;
  v7[15] = &unk_2A2546688;
  v8[14] = &unk_2A2548490;
  v8[15] = &unk_2A25484B8;
  v7[16] = &unk_2A25466A0;
  v7[17] = &unk_2A25466B8;
  v8[16] = &unk_2A25484E0;
  v8[17] = &unk_2A2548508;
  v7[18] = &unk_2A25466D0;
  v7[19] = &unk_2A25466E8;
  v8[18] = &unk_2A2548530;
  v8[19] = &unk_2A2548558;
  v7[20] = &unk_2A2546700;
  v7[21] = &unk_2A2546718;
  v8[20] = &unk_2A2548580;
  v8[21] = &unk_2A25485A8;
  v7[22] = &unk_2A2546730;
  v7[23] = &unk_2A2546748;
  v8[22] = &unk_2A25485D0;
  v8[23] = &unk_2A25485F8;
  v7[24] = &unk_2A2546760;
  v7[25] = &unk_2A2546778;
  v8[24] = &unk_2A2548620;
  v8[25] = &unk_2A2548648;
  v7[26] = &unk_2A2546790;
  v7[27] = &unk_2A25467A8;
  v8[26] = &unk_2A2548670;
  v8[27] = &unk_2A2548698;
  v7[28] = &unk_2A25467C0;
  v7[29] = &unk_2A25467D8;
  v8[28] = &unk_2A25486C0;
  v8[29] = &unk_2A25486E8;
  v7[30] = &unk_2A25467F0;
  v7[31] = &unk_2A2546808;
  v8[30] = &unk_2A2548710;
  v8[31] = &unk_2A2548738;
  v7[32] = &unk_2A2546820;
  v7[33] = &unk_2A2546838;
  v8[32] = &unk_2A2548760;
  v8[33] = &unk_2A2548788;
  v7[34] = &unk_2A2546850;
  v7[35] = &unk_2A2546868;
  v8[34] = &unk_2A25487B0;
  v8[35] = &unk_2A25487D8;
  v7[36] = &unk_2A2546880;
  v7[37] = &unk_2A2546898;
  v8[36] = &unk_2A2548800;
  v8[37] = &unk_2A2548828;
  v7[38] = &unk_2A25468B0;
  v7[39] = &unk_2A25468C8;
  v8[38] = &unk_2A2548850;
  v8[39] = &unk_2A2548878;
  v7[40] = &unk_2A25468E0;
  v7[41] = &unk_2A25468F8;
  v8[40] = &unk_2A25488A0;
  v8[41] = &unk_2A25488C8;
  v7[42] = &unk_2A2546910;
  v7[43] = &unk_2A2546928;
  v8[42] = &unk_2A25488F0;
  v8[43] = &unk_2A2548918;
  v7[44] = &unk_2A2546940;
  v7[45] = &unk_2A2546958;
  v8[44] = &unk_2A2548940;
  v8[45] = &unk_2A2548968;
  v7[46] = &unk_2A2546970;
  v7[47] = &unk_2A2546988;
  v8[46] = &unk_2A2548990;
  v8[47] = &unk_2A25489B8;
  v7[48] = &unk_2A25469A0;
  v7[49] = &unk_2A25469B8;
  v8[48] = &unk_2A25489E0;
  v8[49] = &unk_2A2548A08;
  v7[50] = &unk_2A25469D0;
  v7[51] = &unk_2A25469E8;
  v8[50] = &unk_2A2548A30;
  v8[51] = &unk_2A2548A58;
  v7[52] = &unk_2A2546A00;
  v7[53] = &unk_2A2546A18;
  v8[52] = &unk_2A2548A80;
  v8[53] = &unk_2A2548AA8;
  v7[54] = &unk_2A2546A30;
  v7[55] = &unk_2A2546A48;
  v8[54] = &unk_2A2548AD0;
  v8[55] = &unk_2A2548AF8;
  v7[56] = &unk_2A2546A60;
  v7[57] = &unk_2A2546A78;
  v8[56] = &unk_2A2548B20;
  v8[57] = &unk_2A2548B48;
  v7[58] = &unk_2A2546A90;
  v7[59] = &unk_2A2546AA8;
  v8[58] = &unk_2A2548B70;
  v8[59] = &unk_2A2548B98;
  v7[60] = &unk_2A2546AC0;
  v7[61] = &unk_2A2546AD8;
  v8[60] = &unk_2A2548BC0;
  v8[61] = &unk_2A2548BE8;
  v7[62] = &unk_2A2546AF0;
  v7[63] = &unk_2A2546B08;
  v8[62] = &unk_2A2548C10;
  v8[63] = &unk_2A2548C38;
  v7[64] = &unk_2A2546B20;
  v8[64] = &unk_2A2548C60;
  v7[65] = &unk_2A2546B38;
  v8[65] = &unk_2A2548C88;
  v7[66] = &unk_2A2546B50;
  v8[66] = &unk_2A2548CB0;
  v7[67] = &unk_2A2546B68;
  v8[67] = &unk_2A2548CD8;
  v7[68] = &unk_2A2546B80;
  v8[68] = &unk_2A2548D00;
  v7[69] = &unk_2A2546B98;
  v8[69] = &unk_2A2548D28;
  v7[70] = &unk_2A2546BB0;
  v8[70] = &unk_2A2548D50;
  v7[71] = &unk_2A2546BC8;
  v8[71] = &unk_2A2548D78;
  v2 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v8 forKeys:v7 count:72];
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = *MEMORY[0x29EDCA608];

  return v4;
}

BOOL __ICAddDecodedErrorToDict(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKeyedSubscript:@"ICAErrorKey"];
    v5 = [v4 intValue];

    if (v5)
    {
      v6 = [v3 objectForKeyedSubscript:@"ICAErrorKey"];
      a2 = [v6 intValue];
    }

    v7 = __ICValueToErrorString(a2);
    v8 = v7 != 0;
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"errorDecoded"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t ICEvaluatePrivateEntitlement(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = [a1 valueForEntitlement:@"com.apple.private.imagecapturecore.authorization_bypass"];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v1 BOOLValue])
  {
    __ICOSLogCreate();
    v2 = @"privateBypass";
    if ([@"privateBypass" length] >= 0x15)
    {
      v3 = [@"privateBypass" substringWithRange:{0, 18}];
      v2 = [v3 stringByAppendingString:@".."];
    }

    v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"ICAuthorizationBypassEntitlement found"];
    v5 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v2;
      v7 = v5;
      v11 = 136446466;
      v12 = [(__CFString *)v2 UTF8String];
      v13 = 2114;
      v14 = v4;
      _os_log_impl(&dword_29EB58000, v7, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", &v11, 0x16u);
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_29EB6225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

time_t ICTimeIntervalSince1970FromPTPString(void *a1)
{
  *&v2.tm_isdst = 0u;
  v2.tm_isdst = -1;
  strptime_l([a1 UTF8String], "%Y%m%dT%H%M%S.0", &v2, 0);
  return mktime(&v2);
}

uint64_t FWComputeCRC16(_DWORD *a1, int a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      for (i = 28; i != -4; i -= 4)
      {
        v3 = (((((*a1 >> i) ^ (v3 >> 12)) & 0xF) << 12) ^ (16 * v3) ^ (32 * (((*a1 >> i) ^ (v3 >> 12)) & 0xF))) & 0xFFFFFFF0 | ((*a1 >> i) ^ (v3 >> 12)) & 0xF;
      }

      ++a1;
      ++v2;
    }

    while (v2 != a2);
  }

  else
  {
    LOWORD(v3) = 0;
  }

  return v3;
}

uint64_t ReadSInt16(void *a1)
{
  v1 = **a1;
  *a1 += 2;
  return v1;
}

uint64_t ReadSInt16MaxSize(unint64_t *a1, unint64_t a2)
{
  v2 = *a1 + 2;
  if (v2 <= a2)
  {
    v3 = **a1;
    *a1 = v2;
  }

  else
  {
    return 0;
  }

  return v3;
}

uint64_t ReadUInt16(void *a1)
{
  v1 = **a1;
  *a1 += 2;
  return v1;
}

uint64_t ReadUInt16MaxSize(unint64_t *a1, unint64_t a2)
{
  v2 = *a1 + 2;
  if (v2 > a2)
  {
    return 0;
  }

  v3 = **a1;
  *a1 = v2;
  return v3;
}

uint64_t ReadSInt32(void *a1)
{
  v1 = **a1;
  *a1 += 4;
  return v1;
}

uint64_t ReadSInt32MaxSize(unint64_t *a1, unint64_t a2)
{
  v2 = *a1 + 4;
  if (v2 > a2)
  {
    return 0;
  }

  v3 = **a1;
  *a1 = v2;
  return v3;
}

uint64_t ReadUInt32(void *a1)
{
  v1 = **a1;
  *a1 += 4;
  return v1;
}

uint64_t ReadUInt32MaxSize(unint64_t *a1, unint64_t a2)
{
  v2 = *a1 + 4;
  if (v2 > a2)
  {
    return 0;
  }

  v3 = **a1;
  *a1 = v2;
  return v3;
}

uint64_t ReadSInt64MaxSize(unint64_t *a1, unint64_t a2)
{
  v2 = *a1 + 8;
  if (v2 > a2)
  {
    return 0;
  }

  v3 = **a1;
  *a1 = v2;
  return v3;
}

uint64_t ReadUInt64MaxSize(unint64_t *a1, unint64_t a2)
{
  v2 = *a1 + 8;
  if (v2 > a2)
  {
    return 0;
  }

  v3 = **a1;
  *a1 = v2;
  return v3;
}

id CopyUnicodeStringWithLengthByteFromBuffer(const void **a1)
{
  v1 = **a1;
  *a1 = *a1 + 1;
  if (v1)
  {
    v3 = malloc_type_malloc(2 * v1, 0x1000040BDFB0063uLL);
    memcpy(v3, *a1, 2 * v1);
    *a1 = *a1 + 2 * v1;
    v4 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytesNoCopy:v3 length:(2 * v1 - 2) encoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u) freeWhenDone:1];
  }

  else
  {
    v4 = [&stru_2A253D090 copy];
  }

  return v4;
}

id CopyUnicodeStringWithLengthByteFromBufferMaxSize(const void **a1, unint64_t a2)
{
  if (*a1 + **a1 <= a2)
  {
    v3 = CopyUnicodeStringWithLengthByteFromBuffer(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void WriteUnicodeStringWithLengthByteToBuffer(_BYTE **a1, void *a2)
{
  v8 = a2;
  v3 = [v8 length];
  if (v3)
  {
    v4 = [v8 dataUsingEncoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u)];
    v5 = v3 + 1;
    **a1 = v3 + 1;
    v6 = *a1 + 1;
    *a1 = v6;
    memcpy(v6, [v4 bytes], 2 * (v3 & 0x7FFFFFFF));
    v7 = *a1;
    do
    {
      v7 += 2;
      --v3;
    }

    while (v3);
    *v7 = 0;
    *a1 += (2 * v5);
  }

  else
  {
    *(*a1)++ = 0;
  }
}

id CopyUnicodeStringFromBuffer(const void **a1)
{
  v2 = *a1;
  if (!**a1)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = v2[v3 / 2 + 1];
    --v4;
    v3 += 2;
  }

  while (v5);
  if (v4)
  {
    v6 = malloc_type_malloc(v3, 0x1000040BDFB0063uLL);
    memcpy(v6, *a1, v3);
    *a1 = *a1 + (v3 + 2);
    v7 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytesNoCopy:v6 length:v3 encoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u) freeWhenDone:1];
  }

  else
  {
LABEL_6:
    *a1 = v2 + 1;
    v7 = [&stru_2A253D090 copy];
  }

  return v7;
}

void WriteUnicodeStringToBuffer(void **a1, void *a2)
{
  v7 = a2;
  v3 = [v7 length];
  if (v3)
  {
    v4 = [v7 dataUsingEncoding:CFStringConvertEncodingToNSStringEncoding(0x14000100u)];
    memcpy(*a1, [v4 bytes], (2 * v3));
    v5 = *a1;
    *(*a1 + ((2 * v3 + 0x1FFFFFFFELL) & 0x1FFFFFFFELL) + 2) = 0;
    *a1 = &v5[(2 * v3 + 2)];
  }

  else
  {
    v6 = *a1;
    *v6 = 0;
    *a1 = v6 + 1;
  }
}

id CopyArrayOfUnsignedShortsFromBuffer(unsigned __int16 **a1)
{
  v2 = **a1;
  *a1 += 2;
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (v2)
  {
    v4 = *a1;
    do
    {
      v5 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*v4];
      [v3 addObject:v5];

      v4 = *a1 + 1;
      *a1 = v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

id CopyArrayOfUnsignedShortsFromBufferMaxSize(unsigned __int16 **a1, unint64_t a2)
{
  if (*a1 + (2 * **a1 + 4) <= a2)
  {
    v3 = CopyArrayOfUnsignedShortsFromBuffer(a1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void WriteArrayOfUnsignedShortsToBuffer(unsigned int **a1, void *a2)
{
  v10 = a2;
  v3 = [v10 count];
  v4 = *a1;
  *v4 = v3;
  *a1 = v4 + 1;
  if (v3)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = [v10 objectAtIndexedSubscript:v5];
      v8 = [v7 unsignedShortValue];

      v9 = *a1;
      *v9 = v8;
      *a1 = (v9 + 2);
      ++v5;
    }

    while (v6 != v5);
  }
}

id CopyArrayOfHandlesFromBuffer(unsigned int **a1)
{
  v2 = *(*a1)++;
  v3 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  if (v2)
  {
    v4 = *a1;
    do
    {
      v5 = [MEMORY[0x29EDBA070] numberWithUnsignedLong:*v4];
      [v3 addObject:v5];

      v4 = *a1 + 1;
      *a1 = v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

id CopyArrayOfHandlesFromBufferMaxSize(unsigned int **a1, unint64_t a2)
{
  if (&(*a1)[**a1 + 1] <= a2)
  {
    v2 = CopyArrayOfHandlesFromBuffer(a1);
  }

  else
  {
    syslog(3, "%s", "PTPCamera attached returned an invalid buffer for object handles, cannot enumerate");
    v2 = 0;
  }

  return v2;
}

void WriteArrayOfHandlesToBuffer(unsigned int **a1, void *a2)
{
  v10 = a2;
  v3 = [v10 count];
  v4 = *a1;
  *v4 = v3;
  *a1 = v4 + 1;
  if (v3)
  {
    v5 = 0;
    v6 = v3;
    do
    {
      v7 = [v10 objectAtIndexedSubscript:v5];
      v8 = [v7 unsignedIntValue];

      v9 = *a1;
      *v9 = v8;
      *a1 = v9 + 1;
      ++v5;
    }

    while (v6 != v5);
  }
}

__CFString *stringForOperationCode(uint64_t a1)
{
  if (a1 <= 38336)
  {
    switch(a1)
    {
      case 37121:
        v2 = @"Canon_GetStorageIDs";
        break;
      case 37122:
        v2 = @"Canon_GetStorageInfo";
        break;
      case 37123:
        v2 = @"Canon_GetObjectInfo";
        break;
      case 37124:
        v2 = @"Canon_GetObject";
        break;
      case 37125:
        v2 = @"Canon_DeleteObject";
        break;
      case 37126:
        v2 = @"Canon_FormatStore";
        break;
      case 37127:
        v2 = @"Canon_GetPartialObject";
        break;
      case 37128:
        v2 = @"Canon_GetDeviceInfoEx";
        break;
      case 37129:
LABEL_30:
        v2 = @"Canon_GetObjectInfoEx";
        break;
      case 37130:
        v2 = @"Canon_GetThumbEx";
        break;
      case 37131:
        v2 = @"Canon_SendPartialObject";
        break;
      case 37132:
        v2 = @"Canon_SetObjectAttributes";
        break;
      case 37133:
        v2 = @"Canon_GetObjectTime";
        break;
      case 37134:
        v2 = @"Canon_SetObjectTime";
        break;
      case 37135:
        v2 = @"Canon_RemoteRelease";
        break;
      case 37136:
        v2 = @"Canon_SetDevicePropValueEx";
        break;
      case 37137:
      case 37138:
      case 37156:
      case 37165:
      case 37166:
      case 37167:
      case 37198:
      case 37214:
      case 37215:
      case 37217:
      case 37218:
      case 37219:
      case 37220:
      case 37221:
      case 37222:
      case 37223:
      case 37224:
      case 37225:
      case 37226:
      case 37229:
      case 37238:
      case 37240:
      case 37241:
      case 37242:
      case 37243:
      case 37244:
      case 37245:
      case 37246:
      case 37247:
      case 37248:
      case 37249:
      case 37254:
      case 37255:
      case 37256:
      case 37257:
      case 37258:
      case 37259:
      case 37260:
      case 37261:
      case 37262:
      case 37263:
      case 37264:
      case 37265:
      case 37266:
      case 37267:
      case 37268:
      case 37269:
      case 37270:
      case 37271:
      case 37272:
      case 37273:
      case 37274:
      case 37275:
      case 37276:
      case 37277:
      case 37278:
      case 37279:
      case 37280:
      case 37281:
      case 37282:
      case 37283:
      case 37284:
      case 37285:
      case 37286:
      case 37287:
      case 37288:
      case 37289:
      case 37290:
      case 37292:
      case 37293:
      case 37294:
      case 37295:
      case 37296:
      case 37297:
      case 37298:
      case 37299:
      case 37300:
      case 37301:
      case 37302:
      case 37303:
      case 37304:
      case 37306:
      case 37307:
      case 37308:
      case 37309:
      case 37312:
      case 37313:
      case 37314:
      case 37315:
      case 37316:
      case 37317:
      case 37318:
      case 37319:
      case 37320:
      case 37321:
      case 37322:
      case 37323:
      case 37324:
      case 37325:
      case 37326:
      case 37327:
      case 37328:
      case 37329:
      case 37330:
      case 37331:
      case 37332:
      case 37333:
      case 37334:
      case 37335:
      case 37336:
      case 37337:
      case 37338:
      case 37339:
      case 37340:
      case 37341:
      case 37342:
      case 37343:
      case 37344:
      case 37345:
      case 37346:
      case 37347:
      case 37348:
      case 37349:
      case 37350:
      case 37351:
      case 37354:
      case 37355:
      case 37356:
      case 37357:
      case 37358:
      case 37359:
      case 37362:
      case 37363:
      case 37364:
      case 37365:
      case 37366:
      case 37367:
      case 37368:
      case 37369:
      case 37370:
      case 37371:
      case 37372:
      case 37373:
        goto LABEL_21;
      case 37139:
        v2 = @"Canon_GetRemoteMode";
        break;
      case 37140:
        v2 = @"Canon_SetRemoteMode";
        break;
      case 37141:
        v2 = @"Canon_SetEventMode";
        break;
      case 37142:
        v2 = @"Canon_GetEvent";
        break;
      case 37143:
        v2 = @"Canon_TransferComplete";
        break;
      case 37144:
        v2 = @"Canon_CancelTransfer";
        break;
      case 37145:
        v2 = @"Canon_ResetTransfer";
        break;
      case 37146:
        v2 = @"Canon_PCHDDCapacity";
        break;
      case 37147:
        v2 = @"Canon_SetUILock";
        break;
      case 37148:
        v2 = @"Canon_ResetUILock";
        break;
      case 37149:
        v2 = @"Canon_KeepDeviceOn";
        break;
      case 37150:
        v2 = @"Canon_SetNullPacketMode";
        break;
      case 37151:
        v2 = @"Canon_UpdateFirmware";
        break;
      case 37152:
        v2 = @"Canon_TransferCompleteDT";
        break;
      case 37153:
        v2 = @"Canon_CancelTransferDT";
        break;
      case 37154:
        v2 = @"Canon_SetWftProfile";
        break;
      case 37155:
        v2 = @"Canon_GetWftProfile";
        break;
      case 37157:
        v2 = @"Canon_BulbStart";
        break;
      case 37158:
        v2 = @"Canon_BulbEnd";
        break;
      case 37159:
        v2 = @"Canon_RequestDevicePropValue";
        break;
      case 37160:
        v2 = @"Canon_RemoteReleaseOn";
        break;
      case 37161:
        v2 = @"Canon_RemoteReleaseOff";
        break;
      case 37162:
        v2 = @"Canon_RegistBackgroundImage";
        break;
      case 37163:
        v2 = @"Canon_ChangePhotoStudioMode";
        break;
      case 37164:
        v2 = @"Canon_GetPartialObjectEx";
        break;
      case 37168:
        v2 = @"Canon_ResetMirrorLockupState";
        break;
      case 37169:
        v2 = @"Canon_PopupBuiltinFlash";
        break;
      case 37170:
        v2 = @"Canon_EndGetPartialObjectEx";
        break;
      case 37171:
        v2 = @"Canon_MovieSelectSWOn";
        break;
      case 37172:
        v2 = @"Canon_MovieSelectSWOff";
        break;
      case 37173:
        v2 = @"Canon_GetCTGInfo";
        break;
      case 37174:
        v2 = @"Canon_GetLensAdjust";
        break;
      case 37175:
        v2 = @"Canon_SetLensAdjust";
        break;
      case 37176:
        v2 = @"Canon_ReadyToSendMusic";
        break;
      case 37177:
        v2 = @"Canon_CreateHandle";
        break;
      case 37178:
        v2 = @"Canon_SendPartialObjectEx";
        break;
      case 37179:
        v2 = @"Canon_EndSendPartialObjectEx";
        break;
      case 37180:
        v2 = @"Canon_SetCTGInfo";
        break;
      case 37181:
        v2 = @"Canon_SetRequestOLCInfoGroup";
        break;
      case 37182:
        v2 = @"Canon_SetRequestRollingPitchingLevel";
        break;
      case 37183:
        v2 = @"Canon_GetCameraSupport";
        break;
      case 37184:
        v2 = @"Canon_SetRating";
        break;
      case 37185:
        v2 = @"Canon_RequestInnerDevelopStart";
        break;
      case 37186:
        v2 = @"Canon_RequestInnerDevelopParamChange";
        break;
      case 37187:
        v2 = @"Canon_RequestInnerDevelopEnd";
        break;
      case 37188:
        v2 = @"Canon_GpsLoggingDataMode";
        break;
      case 37189:
        v2 = @"Canon_GetGpsLogCurrentHandle";
        break;
      case 37190:
        v2 = @"Canon_SetImageRecoveryData";
        break;
      case 37191:
        v2 = @"Canon_GetImageRecoveryList";
        break;
      case 37192:
        v2 = @"Canon_FormatImageRecoveryData";
        break;
      case 37193:
        v2 = @"Canon_GetPresetLensAdjustParam";
        break;
      case 37194:
        v2 = @"Canon_GetRawDispImage";
        break;
      case 37195:
        v2 = @"Canon_SaveImageRecoveryData";
        break;
      case 37196:
        v2 = @"Canon_RequestBLE";
        break;
      case 37197:
        v2 = @"Canon_DrivePowerZoom";
        break;
      case 37199:
        v2 = @"Canon_GetIptcData";
        break;
      case 37200:
        v2 = @"Canon_SetIptcData";
        break;
      case 37201:
        v2 = @"Canon_InitiateViewfinder";
        break;
      case 37202:
        v2 = @"Canon_TerminateViewfinder";
        break;
      case 37203:
        v2 = @"Canon_GetViewFinderData";
        break;
      case 37204:
        v2 = @"Canon_DoAf";
        break;
      case 37205:
        v2 = @"Canon_DriveLens";
        break;
      case 37206:
        v2 = @"Canon_DepthOfFieldPreview";
        break;
      case 37207:
        v2 = @"Canon_ClickWB";
        break;
      case 37208:
        v2 = @"Canon_Zoom";
        break;
      case 37209:
        v2 = @"Canon_ZoomPosition";
        break;
      case 37210:
        v2 = @"Canon_SetLiveAfFrame";
        break;
      case 37211:
        v2 = @"Canon_TouchAfPosition";
        break;
      case 37212:
        v2 = @"Canon_SetLvPcFlavoreditMode";
        break;
      case 37213:
        v2 = @"Canon_SetLvPcFlavoreditParam";
        break;
      case 37216:
        v2 = @"Canon_AfCancel";
        break;
      case 37227:
        v2 = @"Canon_SetImageRecoveryDataEx";
        break;
      case 37228:
        v2 = @"Canon_GetImageRecoveryListEx";
        break;
      case 37230:
        v2 = @"Canon_NotifyAutoTransferStatus";
        break;
      case 37231:
        v2 = @"Canon_GetReducedObject";
        break;
      case 37232:
        v2 = @"Canon_GetObjectInfo64";
        break;
      case 37233:
        v2 = @"Canon_GetObject64";
        break;
      case 37234:
        v2 = @"Canon_GetPartialObject64";
        break;
      case 37235:
        v2 = @"Canon_GetObjectInfoEx64";
        break;
      case 37236:
        v2 = @"Canon_GetPartialObjectEX64";
        break;
      case 37237:
        v2 = @"Canon_CreateHandle64";
        break;
      case 37239:
        v2 = @"Canon_NotifySaveComplete";
        break;
      case 37250:
        v2 = @"Canon_NotifyEstimateNumberofImport";
        break;
      case 37251:
        v2 = @"Canon_NotifyNumberofImported";
        break;
      case 37252:
        v2 = @"Canon_NotifySizeOfPartialDataTransfer";
        break;
      case 37253:
        v2 = @"Canon_NotifyFinish";
        break;
      case 37291:
        v2 = @"Canon_GetObjectURL";
        break;
      case 37305:
        v2 = @"Canon_SetFELock";
        break;
      case 37310:
        v2 = @"Canon_SetDefaultCameraSetting";
        break;
      case 37311:
        v2 = @"Canon_GetAEData";
        break;
      case 37352:
        v2 = @"Canon_NotifyNetworkError";
        break;
      case 37353:
        v2 = @"Canon_AdapterTransferProgress";
        break;
      case 37360:
        v2 = @"Canon_TransferCompleteFTP";
        break;
      case 37361:
        v2 = @"Canon_CancelTransferFTP";
        break;
      case 37374:
        v2 = @"Canon_FAPIMessageTX";
        break;
      case 37375:
        v2 = @"Canon_FAPIMessageRX";
        break;
      default:
        switch(a1)
        {
          case 36865:
            v2 = @"PTPOperationCodeGetNumDownloadableObjects_Apple";
            break;
          case 36866:
            v2 = @"PTPOperationCodeGetAllObjectInfo32_Apple";
            break;
          case 36867:
            v2 = @"PTPOperationCodeGetUserAssignedDeviceName_Apple";
            break;
          case 36868:
            v2 = @"PTPOperationCodeAllowKeepAwake_Apple";
            break;
          case 36869:
            v2 = @"PTPOperationCodeGetAllObjectInfo64_Apple";
            break;
          case 36870:
            v2 = @"PTPOperationCodeGetObjectCompressedSize64_Apple";
            break;
          case 36871:
            v2 = @"PTPOperationCodeGetPartialObject64_Apple";
            break;
          case 36872:
            v2 = @"Canon_InitiateReleaseControl";
            break;
          case 36873:
            v2 = @"PTPOperationCodeGetObjectMetadata_Apple";
            break;
          case 36874:
            v2 = @"PTPOperationCodeGetMD5PartialObject64_Apple";
            break;
          case 36875:
            v2 = @"PTPOperationCodeSetMediaCapabilities";
            break;
          case 36876:
            v2 = @"PTPOperationCodeGetAdjustedThumb_Apple";
            break;
          case 36877:
            v2 = @"PTPOperationCodeGetPartialAssetData_Apple";
            break;
          case 36878:
            v2 = @"PTPOperationCodeSetHostSupportedFormats_Apple";
            break;
          case 36879:
            v2 = @"PTPOperationCodeGetObjectInfosForNextGroup_Apple";
            break;
          case 36880:
            v2 = @"PTPOperationCodeSetHostSupportsGroups_Apple";
            break;
          case 36881:
            v2 = @"Canon_SetCustomizeData";
            break;
          case 36882:
            v2 = @"Canon_GetCaptureStatus";
            break;
          case 36883:
            v2 = @"Canon_CheckEvent";
            break;
          case 36884:
            v2 = @"Canon_FocusLock";
            break;
          case 36885:
            v2 = @"Canon_FocusUnlock";
            break;
          case 36886:
            v2 = @"Canon_GetLocalReleaseParam";
            break;
          case 36887:
            v2 = @"Canon_SetLocalReleaseParam";
            break;
          case 36888:
            v2 = @"Canon_AskAboutPcEvf";
            break;
          case 36889:
            v2 = @"Canon_SendPartialObject";
            break;
          case 36890:
            v2 = @"Canon_InitiateCaptureInMemory";
            break;
          case 36891:
            v2 = @"Canon_GetPartialObjectEx";
            break;
          case 36892:
            v2 = @"Canon_SetObjectTime";
            break;
          case 36893:
            v2 = @"Canon_GetViewfinderImage";
            break;
          case 36894:
            v2 = @"Canon_GetObjectAttributes";
            break;
          case 36895:
            v2 = @"Canon_ChangeUSBProtocol";
            break;
          case 36896:
            v2 = @"Canon_GetChanges";
            break;
          case 36897:
            goto LABEL_30;
          case 36898:
            v2 = @"Canon_InitiateDirectTransfer";
            break;
          case 36899:
            v2 = @"Canon_TerminateDirectTransfer";
            break;
          case 36900:
            v2 = @"Canon_SendObjectInfoByPath";
            break;
          case 36901:
            v2 = @"Canon_SendObjectByPath";
            break;
          case 36902:
            v2 = @"Canon_InitiateDirectTansferEx";
            break;
          case 36903:
            v2 = @"Canon_GetAncillaryObjectHandles";
            break;
          case 36904:
            v2 = @"Canon_GetTreeInfo";
            break;
          case 36905:
            v2 = @"Canon_GetTreeSize";
            break;
          case 36906:
            v2 = @"Canon_NotifyProgress";
            break;
          case 36907:
            v2 = @"Canon_NotifyCancelAccepted";
            break;
          case 36908:
            v2 = @"Canon_902C";
            break;
          case 36909:
            v2 = @"Canon_GetDirectory";
            break;
          case 36910:
            v2 = @"Canon_902E";
            break;
          case 36911:
            v2 = @"Canon_902F";
            break;
          case 36912:
            v2 = @"Canon_SetPairingInfo";
            break;
          case 36913:
            v2 = @"Canon_GetPairingInfo";
            break;
          case 36914:
            v2 = @"Canon_DeletePairingInfo";
            break;
          case 36915:
            v2 = @"Canon_GetMACAddress";
            break;
          case 36916:
            v2 = @"Canon_SetDisplayMonitor";
            break;
          case 36917:
            v2 = @"Canon_PairingComplete";
            break;
          case 36918:
            v2 = @"Canon_GetWirelessMAXChannel";
            break;
          case 36919:
          case 36920:
          case 36921:
          case 36922:
          case 36923:
          case 36924:
          case 36925:
          case 36926:
          case 36927:
          case 36928:
          case 36929:
          case 36930:
          case 36931:
          case 36932:
          case 36933:
          case 36934:
          case 36935:
          case 36936:
          case 36937:
          case 36938:
          case 36939:
          case 36940:
          case 36941:
          case 36942:
          case 36943:
          case 36944:
          case 36945:
          case 36946:
          case 36947:
          case 36948:
          case 36949:
          case 36950:
          case 36951:
          case 36952:
          case 36953:
          case 36954:
          case 36955:
          case 36956:
          case 36957:
          case 36958:
          case 36959:
          case 36960:
          case 36961:
          case 36962:
          case 36963:
          case 36964:
          case 36965:
          case 36966:
          case 36967:
          case 36974:
          case 36976:
          case 36977:
          case 36978:
          case 36979:
          case 36980:
          case 36986:
          case 36987:
          case 36988:
          case 36989:
          case 36990:
          case 36991:
          case 36992:
          case 36993:
          case 36994:
          case 36995:
          case 36996:
          case 36997:
            goto LABEL_21;
          case 36968:
            v2 = @"Canon_GetWebServiceSpec";
            break;
          case 36969:
            v2 = @"Canon_GetWebServiceData";
            break;
          case 36970:
            v2 = @"Canon_SetWebServiceData";
            break;
          case 36971:
            v2 = @"Canon_DeleteWebServiceData";
            break;
          case 36972:
            v2 = @"Canon_GetRootCertificateSpec";
            break;
          case 36973:
            v2 = @"Canon_GetRootCertificateData";
            break;
          case 36975:
            v2 = @"Canon_SetRootCertificateData";
            break;
          case 36981:
            v2 = @"Canon_GetGpsMobilelinkObjectInfo";
            break;
          case 36982:
            v2 = @"Canon_SendGpsTagInfo";
            break;
          case 36983:
            v2 = @"Canon_GetTranscodeApproxSize";
            break;
          case 36984:
            v2 = @"Canon_RequestTranscodeStart";
            break;
          case 36985:
            v2 = @"Canon_RequestTranscodeCancel";
            break;
          case 36998:
            v2 = @"Canon_SetRemoteShootingMode";
            break;
          default:
            v3 = a1 - 4096;
            v2 = @"PTPOperationCodeUndefined";
            switch(v3)
            {
              case 0:
                goto LABEL_27;
              case 1:
                v2 = @"PTPOperationCodeGetDeviceInfo";
                break;
              case 2:
                v2 = @"PTPOperationCodeOpenSession";
                break;
              case 3:
                v2 = @"PTPOperationCodeCloseSession";
                break;
              case 4:
                v2 = @"PTPOperationCodeGetStorageIDs";
                break;
              case 5:
                v2 = @"PTPOperationCodeGetStorageInfo";
                break;
              case 6:
                v2 = @"PTPOperationCodeGetNumObjects";
                break;
              case 7:
                v2 = @"PTPOperationCodeGetObjectHandles";
                break;
              case 8:
                v2 = @"PTPOperationCodeGetObjectInfo";
                break;
              case 9:
                v2 = @"PTPOperationCodeGetObject";
                break;
              case 10:
                v2 = @"PTPOperationCodeGetThumb";
                break;
              case 11:
                v2 = @"PTPOperationCodeDeleteObject";
                break;
              case 12:
                v2 = @"PTPOperationCodeSendObjectInfo";
                break;
              case 13:
                v2 = @"PTPOperationCodeSendObject";
                break;
              case 14:
                v2 = @"PTPOperationCodeInitiateCapture";
                break;
              case 15:
                v2 = @"PTPOperationCodeFormatStore";
                break;
              case 16:
                v2 = @"PTPOperationCodeResetDevice";
                break;
              case 17:
                v2 = @"PTPOperationCodeSelfTest";
                break;
              case 18:
                v2 = @"PTPOperationCodeSetObjectProtection";
                break;
              case 19:
                v2 = @"PTPOperationCodePowerDown";
                break;
              case 20:
                v2 = @"PTPOperationCodeGetDevicePropDesc";
                break;
              case 21:
                v2 = @"PTPOperationCodeGetDevicePropValue";
                break;
              case 22:
                v2 = @"PTPOperationCodeSetDevicePropValue";
                break;
              case 23:
                v2 = @"PTPOperationCodeResetDevicePropValue";
                break;
              case 24:
                v2 = @"PTPOperationCodeTerminateOpenCapture";
                break;
              case 25:
                v2 = @"PTPOperationCodeMoveObject";
                break;
              case 26:
                v2 = @"PTPOperationCodeCopyObject";
                break;
              case 27:
                v2 = @"PTPOperationCodeGetPartialObject";
                break;
              case 28:
                v2 = @"PTPOperationCodeInitiateOpenCapture";
                break;
              case 35:
                v2 = @"PTPOperationCodeGetFilesystemManifest";
                break;
              default:
                goto LABEL_21;
            }

            break;
        }

        break;
    }
  }

  else if (a1 > 38914)
  {
    switch(a1)
    {
      case 0x9803:
        v2 = @"MTPGetObjectPropValue";
        break;
      case 0x9804:
        v2 = @"MTPSetObjectPropValue";
        break;
      case 0x9805:
        v2 = @"MTPGetObjectPropList";
        break;
      default:
        goto LABEL_21;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x95C1:
        v2 = @"MTPOperationCodeGetPartialObject64";
        break;
      case 0x9801:
        v2 = @"MTPGetObjectPropsSupported";
        break;
      case 0x9802:
        v2 = @"MTPGetObjectPropDesc";
        break;
      default:
LABEL_21:
        if ((a1 & 0xF000) == 0x9000)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPOperationCodeVendorDefined (0x%04X)", a1];
        }

        else if ((a1 & 0xF000) == 0x1000)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPOperationCodeReserved (0x%04X)", a1];
        }

        else
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
        }
        v2 = ;
        break;
    }
  }

LABEL_27:

  return v2;
}

uint64_t ptpDataTypeForProperty(int a1)
{
  result = 6;
  switch(a1)
  {
    case 53628:
    case 53630:
    case 53652:
    case 53667:
    case 53672:
    case 53674:
    case 53675:
    case 53676:
    case 53678:
    case 53682:
    case 53683:
    case 53684:
    case 53685:
    case 53686:
    case 53687:
    case 53688:
    case 53690:
    case 53691:
    case 53697:
    case 53716:
    case 53717:
    case 53724:
    case 53725:
      return result;
    case 53629:
    case 53631:
    case 53643:
    case 53644:
    case 53645:
    case 53650:
    case 53651:
    case 53653:
    case 53654:
    case 53655:
    case 53656:
    case 53657:
    case 53658:
    case 53659:
    case 53660:
    case 53661:
    case 53662:
    case 53663:
    case 53664:
    case 53665:
    case 53666:
    case 53668:
    case 53669:
    case 53670:
    case 53671:
    case 53677:
    case 53689:
    case 53692:
    case 53693:
    case 53694:
    case 53695:
    case 53696:
    case 53698:
    case 53699:
    case 53700:
    case 53701:
    case 53702:
    case 53703:
    case 53704:
    case 53705:
    case 53706:
    case 53707:
    case 53708:
    case 53709:
    case 53710:
    case 53711:
    case 53714:
    case 53715:
    case 53718:
    case 53719:
    case 53722:
    case 53723:
LABEL_6:
      result = 0;
      break;
    case 53632:
    case 53633:
    case 53634:
    case 53635:
    case 53636:
    case 53637:
    case 53638:
    case 53639:
    case 53640:
    case 53641:
    case 53642:
    case 53646:
    case 53647:
    case 53648:
    case 53649:
LABEL_4:
      result = 2;
      break;
    case 53673:
    case 53680:
    case 53681:
    case 53721:
LABEL_3:
      result = 4;
      break;
    case 53679:
    case 53712:
    case 53713:
    case 53720:
LABEL_5:
      result = 0xFFFFLL;
      break;
    default:
      switch(a1)
      {
        case 53505:
        case 53506:
        case 53507:
        case 53509:
        case 53510:
        case 53512:
        case 53515:
        case 53516:
        case 53519:
        case 53521:
        case 53522:
        case 53524:
        case 53529:
        case 53530:
        case 53533:
          goto LABEL_3;
        case 53508:
        case 53511:
        case 53513:
        case 53520:
          goto LABEL_4;
        case 53514:
        case 53517:
        case 53518:
        case 53523:
        case 53526:
        case 53531:
        case 53532:
        case 53534:
        case 53535:
          return result;
        case 53525:
          goto LABEL_5;
        default:
          goto LABEL_6;
      }
  }

  return result;
}

__CFString *stringForCanonProperty(int a1)
{
  switch(a1)
  {
    case 53505:
      result = @"CanonAperture";
      break;
    case 53506:
      result = @"CanonShutterSpeed";
      break;
    case 53507:
      result = @"CanonISOSpeed";
      break;
    case 53508:
      result = @"CanonExpCompensation";
      break;
    case 53509:
      result = @"CanonAutoExposureMode";
      break;
    case 53510:
      result = @"CanonDriveMode";
      break;
    case 53511:
      result = @"CanonMeteringMode";
      break;
    case 53512:
      result = @"CanonFocusMode";
      break;
    case 53513:
      result = @"CanonWhiteBalance";
      break;
    case 53514:
      result = @"CanonColorTemperature";
      break;
    case 53515:
      result = @"CanonWhiteBalanceAdjustA";
      break;
    case 53516:
      result = @"CanonWhiteBalanceAdjustB";
      break;
    case 53517:
      result = @"CanonWhiteBalanceXA";
      break;
    case 53518:
      result = @"CanonWhiteBalanceXB";
      break;
    case 53519:
      result = @"CanonColorSpace";
      break;
    case 53520:
      result = @"CanonPictureStyle";
      break;
    case 53521:
      result = @"CanonBatteryPower";
      break;
    case 53522:
      result = @"CanonBatterySelect";
      break;
    case 53523:
      result = @"CanonCameraTime";
      break;
    case 53524:
      result = @"CanonAutoPowerOff";
      break;
    case 53525:
      result = @"CanonOwner    ";
      break;
    case 53526:
      result = @"CanonModelID";
      break;
    case 53527:
    case 53528:
    case 53540:
    case 53541:
    case 53542:
    case 53543:
    case 53544:
    case 53545:
    case 53546:
    case 53547:
    case 53548:
    case 53549:
    case 53550:
    case 53551:
    case 53556:
    case 53557:
    case 53558:
    case 53559:
    case 53566:
    case 53567:
    case 53575:
    case 53576:
    case 53577:
    case 53578:
    case 53579:
    case 53580:
    case 53581:
    case 53582:
    case 53583:
    case 53591:
    case 53592:
    case 53593:
    case 53594:
    case 53595:
    case 53596:
    case 53597:
    case 53598:
    case 53599:
    case 53603:
    case 53604:
    case 53605:
    case 53606:
    case 53607:
    case 53608:
    case 53609:
    case 53610:
    case 53611:
    case 53612:
    case 53613:
    case 53614:
    case 53615:
    case 53619:
    case 53620:
    case 53621:
    case 53622:
    case 53623:
    case 53658:
    case 53659:
    case 53660:
    case 53661:
    case 53662:
    case 53663:
    case 53689:
    case 53709:
    case 53710:
      goto LABEL_5;
    case 53529:
      result = @"CanonPTPExtensionVersion";
      break;
    case 53530:
      result = @"CanonDPOFVersion";
      break;
    case 53531:
      result = @"CanonAvailableShots";
      break;
    case 53532:
      result = @"CanonCaptureDestination";
      break;
    case 53533:
      result = @"CanonBracketMode";
      break;
    case 53534:
      result = @"CanonCurrentStorage";
      break;
    case 53535:
      result = @"CanonCurrentFolder";
      break;
    case 53536:
      result = @"CanonImageFormat";
      break;
    case 53537:
      result = @"CanonImageFormatCF";
      break;
    case 53538:
      result = @"CanonImageFormatSD";
      break;
    case 53539:
      result = @"CanonImageFormatExtHD";
      break;
    case 53552:
      result = @"CanonCompressionS";
      break;
    case 53553:
      result = @"CanonCompressionM1";
      break;
    case 53554:
      result = @"CanonCompressionM2";
      break;
    case 53555:
      result = @"CanonCompressionL";
      break;
    case 53560:
      result = @"CanonAEModeDial";
      break;
    case 53561:
      result = @"CanonAEModeCustom";
      break;
    case 53562:
      result = @"CanonMirrorUpSetting";
      break;
    case 53563:
      result = @"CanonHighlightTonePriority";
      break;
    case 53564:
      result = @"CanonAFSelectFocusArea";
      break;
    case 53565:
      result = @"CanonHDRSetting";
      break;
    case 53568:
      result = @"CanonPCWhiteBalance1";
      break;
    case 53569:
      result = @"CanonPCWhiteBalance2";
      break;
    case 53570:
      result = @"CanonPCWhiteBalance3";
      break;
    case 53571:
      result = @"CanonPCWhiteBalance4";
      break;
    case 53572:
      result = @"CanonPCWhiteBalance5";
      break;
    case 53573:
      result = @"CanonMWhiteBalance";
      break;
    case 53574:
      result = @"CanonMWhiteBalanceEx";
      break;
    case 53584:
      result = @"CanonPictureStyleStandard";
      break;
    case 53585:
      result = @"CanonPictureStylePortrait";
      break;
    case 53586:
      result = @"CanonPictureStyleLandscape";
      break;
    case 53587:
      result = @"CanonPictureStyleNeutral";
      break;
    case 53588:
      result = @"CanonPictureStyleFaithful";
      break;
    case 53589:
      result = @"CanonPictureStyleBlackWhite";
      break;
    case 53590:
      result = @"CanonPictureStyleAuto";
      break;
    case 53600:
      result = @"CanonPictureStyleUserSet1";
      break;
    case 53601:
      result = @"CanonPictureStyleUserSet2";
      break;
    case 53602:
      result = @"CanonPictureStyleUserSet3";
      break;
    case 53616:
      result = @"CanonPictureStyleParam1";
      break;
    case 53617:
      result = @"CanonPictureStyleParam2";
      break;
    case 53618:
      result = @"CanonPictureStyleParam3";
      break;
    case 53624:
      result = @"CanonHighISOSettingNoiseReduction";
      break;
    case 53625:
      result = @"CanonMovieServoAF";
      break;
    case 53626:
      result = @"CanonContinuousAFValid";
      break;
    case 53627:
      result = @"CanonAttenuator";
      break;
    case 53628:
      result = @"CanonUTCTime";
      break;
    case 53629:
      result = @"CanonTimezone";
      break;
    case 53630:
      result = @"CanonSummertime";
      break;
    case 53631:
      result = @"CanonFlavorLUTParams";
      break;
    case 53632:
      result = @"CanonCustomFunc1";
      break;
    case 53633:
      result = @"CanonCustomFunc2";
      break;
    case 53634:
      result = @"CanonCustomFunc3";
      break;
    case 53635:
      result = @"CanonCustomFunc4";
      break;
    case 53636:
      result = @"CanonCustomFunc5";
      break;
    case 53637:
      result = @"CanonCustomFunc6";
      break;
    case 53638:
      result = @"CanonCustomFunc7";
      break;
    case 53639:
      result = @"CanonCustomFunc8";
      break;
    case 53640:
      result = @"CanonCustomFunc9";
      break;
    case 53641:
      result = @"CanonCustomFunc10";
      break;
    case 53642:
      result = @"CanonCustomFunc11";
      break;
    case 53643:
      result = @"CanonCustomFunc12";
      break;
    case 53644:
      result = @"CanonCustomFunc13";
      break;
    case 53645:
      result = @"CanonCustomFunc14";
      break;
    case 53646:
      result = @"CanonCustomFunc15";
      break;
    case 53647:
      result = @"CanonCustomFunc16";
      break;
    case 53648:
      result = @"CanonCustomFunc17";
      break;
    case 53649:
      result = @"CanonCustomFunc18";
      break;
    case 53650:
      result = @"CanonCustomFunc19";
      break;
    case 53651:
      result = @"CanonInnerDevelop";
      break;
    case 53652:
      result = @"CanonMultiAspect";
      break;
    case 53653:
      result = @"CanonMovieSoundRecord";
      break;
    case 53654:
      result = @"CanonMovieRecordVolume";
      break;
    case 53655:
      result = @"CanonWindCut";
      break;
    case 53656:
      result = @"CanonExtenderType";
      break;
    case 53657:
      result = @"CanonOLCInfoVersion";
      break;
    case 53664:
      result = @"CanonCustomFuncEx";
      break;
    case 53665:
      result = @"CanonMyMenu";
      break;
    case 53666:
      result = @"CanonMyMenuList";
      break;
    case 53667:
      result = @"CanonWftStatus";
      break;
    case 53668:
      result = @"CanonWftInputTransmission";
      break;
    case 53669:
      result = @"CanonHDDirectoryStructure";
      break;
    case 53670:
      result = @"CanonBatteryInfo";
      break;
    case 53671:
      result = @"CanonAdapterInfo";
      break;
    case 53672:
      result = @"CanonLensStatus";
      break;
    case 53673:
      result = @"CanonQuickReviewTime";
      break;
    case 53674:
      result = @"CanonCardExtension";
      break;
    case 53675:
      result = @"CanonTempStatus";
      break;
    case 53676:
      result = @"CanonShutterCounter";
      break;
    case 53677:
      result = @"CanonSpecialOption";
      break;
    case 53678:
      result = @"CanonPhotoStudioMode";
      break;
    case 53679:
      result = @"CanonSerialNumber";
      break;
    case 53680:
      result = @"CanonEVFOutputDevice";
      break;
    case 53681:
      result = @"CanonEVFMode";
      break;
    case 53682:
      result = @"CanonDepthOfFieldPreview";
      break;
    case 53683:
      result = @"CanonEVFSharpness";
      break;
    case 53684:
      result = @"CanonEVFWBMode";
      break;
    case 53685:
      result = @"CanonEVFClickWBCoeffs";
      break;
    case 53686:
      result = @"CanonEVFColorTemp";
      break;
    case 53687:
      result = @"CanonExposureSimMode";
      break;
    case 53688:
      result = @"CanonEVFRecordStatus";
      break;
    case 53690:
      result = @"CanonLvAfSystem";
      break;
    case 53691:
      result = @"CanonMovSize";
      break;
    case 53692:
      result = @"CanonLvViewTypeSelect";
      break;
    case 53693:
      result = @"CanonMirrorDownStatus";
      break;
    case 53694:
      result = @"CanonMovieParam";
      break;
    case 53695:
      result = @"CanonMirrorLockupState";
      break;
    case 53696:
      result = @"CanonFlashChargingState";
      break;
    case 53697:
      result = @"CanonAloMode";
      break;
    case 53698:
      result = @"CanonFixedMovie";
      break;
    case 53699:
      result = @"CanonOneShotRawOn";
      break;
    case 53700:
      result = @"CanonErrorForDisplay";
      break;
    case 53701:
      result = @"CanonAEModeMovie";
      break;
    case 53702:
      result = @"CanonBuiltinStroboMode";
      break;
    case 53703:
      result = @"CanonStroboDispState";
      break;
    case 53704:
      result = @"CanonStroboETTL2Metering";
      break;
    case 53705:
      result = @"CanonContinousAFMode";
      break;
    case 53706:
      result = @"CanonMovieParam2";
      break;
    case 53707:
      result = @"CanonStroboSettingExpComposition";
      break;
    case 53708:
      result = @"CanonMovieParam3";
      break;
    case 53711:
      result = @"CanonLVMedicalRotate";
      break;
    case 53712:
      result = @"CanonArtist";
      break;
    case 53713:
      result = @"CanonCopyright";
      break;
    case 53714:
      result = @"CanonBracketValue";
      break;
    case 53715:
      result = @"CanonFocusInfoEx";
      break;
    case 53716:
      result = @"CanonDepthOfField";
      break;
    case 53717:
      result = @"CanonBrightness";
      break;
    case 53718:
      result = @"CanonLensAdjustParams";
      break;
    case 53719:
      result = @"CanonEFComp";
      break;
    case 53720:
      result = @"CanonLensName";
      break;
    case 53721:
      result = @"CanonAEB    ";
      break;
    case 53722:
      result = @"CanonStroboSetting";
      break;
    case 53723:
      result = @"CanonStroboWirelessSetting";
      break;
    case 53724:
      result = @"CanonStroboFiring";
      break;
    case 53725:
      result = @"CanonLensID";
      break;
    case 53726:
      result = @"CanonLCDBrightness";
      break;
    case 53727:
      result = @"CanonCADarkBright";
      break;
    default:
      if (a1 == 53292)
      {
        result = @"CanonImageQualityEnumeration";
      }

      else
      {
LABEL_5:
        result = @"Undefined Canon Property";
      }

      break;
  }

  return result;
}

__CFString *stringForResponseCode(uint64_t a1)
{
  if ((a1 - 0x2000) >= 0x21)
  {
    if ((a1 & 0xF000) == 0xA000)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPResponseCodeVendorDefined (0x%04X)", a1];
    }

    else if ((a1 & 0xF000) == 0x2000)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPResponseCodeReserved (0x%04X)", a1];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
    }
    v2 = ;
  }

  else
  {
    v2 = off_29F380C90[(a1 - 0x2000)];
  }

  return v2;
}

__CFString *stringForEventCode(__CFString *a1)
{
  if (a1 > 49152)
  {
    if (a1 <= 49154)
    {
      if (a1 == 49153)
      {
        a1 = @"PTPEventCodeAppleDeviceUnlocked";
      }

      else
      {
        a1 = @"PTPEventCodeAppleUserAssignedNameChanged";
      }
    }

    else
    {
      switch(a1)
      {
        case 0xC003:
          a1 = @"PTPEventCodeAppleRestartSession";
          break;
        case 0xC004:
          a1 = @"PTPEventCodeAppleGroupAdded";
          break;
        case 0xC005:
          a1 = @"PTPEventCodeAppleGroupEnumerationFinished";
          break;
        default:
LABEL_27:
          if ((a1 & 0xF000) == 0xC000)
          {
            [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPEventCodeVendorDefined (0x%04X)", a1];
          }

          else if ((a1 & 0xF000) == 0x4000)
          {
            [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPEventCodeReserved (0x%04X)", a1];
          }

          else
          {
            [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
          }
          a1 = ;
          break;
      }
    }
  }

  else
  {
    v1 = a1 - 0x4000;
    a1 = @"PTPEventCodeUndefined";
    switch(v1)
    {
      case 0:
        break;
      case 1:
        a1 = @"PTPEventCodeCancelTransaction";
        break;
      case 2:
        a1 = @"PTPEventCodeObjectAdded";
        break;
      case 3:
        a1 = @"PTPEventCodeObjectRemoved";
        break;
      case 4:
        a1 = @"PTPEventCodeStoreAdded";
        break;
      case 5:
        a1 = @"PTPEventCodeStoreRemoved";
        break;
      case 6:
        a1 = @"PTPEventCodeDevicePropChanged";
        break;
      case 7:
        a1 = @"PTPEventCodeObjectInfoChanged";
        break;
      case 8:
        a1 = @"PTPEventCodeDeviceInfoChanged";
        break;
      case 9:
        a1 = @"PTPEventCodeRequestObjectTransfer";
        break;
      case 10:
        a1 = @"PTPEventCodeStoreFull";
        break;
      case 11:
        a1 = @"PTPEventCodeDeviceReset";
        break;
      case 12:
        a1 = @"PTPEventCodeStorageInfoChanged";
        break;
      case 13:
        a1 = @"PTPEventCodeCaptureComplete";
        break;
      case 14:
        a1 = @"PTPEventCodeUnreportedStatus";
        break;
      default:
        goto LABEL_27;
    }
  }

  return a1;
}

__CFString *stringForDevicePropCode(uint64_t a1)
{
  if ((a1 - 20480) >= 0x20u)
  {
    if ((a1 & 0xF000) == 0xD000)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPDevicePropCodeVendorDefined (0x%04X)", a1];
    }

    else if ((a1 & 0xF000) == 0x5000)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPDevicePropCodeReserved (0x%04X)", a1];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
    }
    v2 = ;
  }

  else
  {
    v2 = off_29F380D98[(a1 - 20480)];
  }

  return v2;
}

__CFString *stringForFunctionalMode(uint64_t a1)
{
  if (!a1)
  {
    v1 = @"PTPFunctionalModeStandard";
    goto LABEL_11;
  }

  if (a1 == 1)
  {
    v1 = @"PTPFunctionalModeSleepState";
    goto LABEL_11;
  }

  if ((a1 & 0xF000) == 0x8000)
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPFunctionalModeVendorDefined (0x%04X)", a1];
    goto LABEL_9;
  }

  if ((a1 & 0xF000) == 0)
  {
    [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPFunctionalModeReserved (0x%04X)", a1];
    v1 = LABEL_9:;
    goto LABEL_11;
  }

  v1 = 0;
LABEL_11:

  return v1;
}

__CFString *stringForStorageType(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPStorageTypeReserved (0x%04X)", a1];
  }

  else
  {
    v2 = off_29F380E98[a1];
  }

  return v2;
}

__CFString *stringForFilesystemType(uint64_t a1)
{
  if (a1 >= 4)
  {
    if ((a1 & 0xF000) == 0x8000)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPFilesystemTypeVendorDefined (0x%04X)", a1];
    }

    else if ((a1 & 0xF000) != 0)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPFilesystemTypeReserved (0x%04X)", a1];
    }
    v2 = ;
  }

  else
  {
    v2 = off_29F380EC0[a1];
  }

  return v2;
}

__CFString *stringForAccessCapability(uint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPAccessCapabilityReserved (0x%04X)", a1];
  }

  else
  {
    v2 = off_29F380EE0[a1];
  }

  return v2;
}

__CFString *stringForProtectionStatus(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"PTPProtectionStatusReadOnly";
    }

    else
    {
      v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPProtectionStatusReserved (0x%04X)", a1];
    }
  }

  else
  {
    v2 = @"PTPProtectionStatusNoProtection";
  }

  return v2;
}

__CFString *stringForObjectFormatCode(__CFString *a1)
{
  if (a1 <= 47360)
  {
    switch(a1)
    {
      case 14336:
        a1 = @"PTPObjectFormatCodeUnknownImageObject";
        break;
      case 14337:
        a1 = @"PTPObjectFormatCodeEXIF_JPEG";
        break;
      case 14338:
        a1 = @"PTPObjectFormatCodeTIFF_EP";
        break;
      case 14339:
        a1 = @"PTPObjectFormatCodeFlashPix";
        break;
      case 14340:
        a1 = @"PTPObjectFormatCodeBMP";
        break;
      case 14341:
        a1 = @"PTPObjectFormatCodeCIFF";
        break;
      case 14342:
        a1 = @"PTPObjectFormatCodeReserved1";
        break;
      case 14343:
        a1 = @"PTPObjectFormatCodeGIF";
        break;
      case 14344:
        a1 = @"PTPObjectFormatCodeJFIF";
        break;
      case 14345:
        a1 = @"PTPObjectFormatCodePCD";
        break;
      case 14346:
        a1 = @"PTPObjectFormatCodePICT";
        break;
      case 14347:
        a1 = @"PTPObjectFormatCodePNG";
        break;
      case 14348:
        a1 = @"PTPObjectFormatCodeReserved2";
        break;
      case 14349:
        a1 = @"PTPObjectFormatCodeTIFF";
        break;
      case 14350:
        a1 = @"PTPObjectFormatCodeTIFF_IT";
        break;
      case 14351:
        a1 = @"PTPObjectFormatCodeJP2";
        break;
      case 14352:
        a1 = @"PTPObjectFormatCodeJPX";
        break;
      case 14353:
        a1 = @"MTPObjectFormatCodeDNG";
        break;
      case 14354:
        a1 = @"MTPObjectFormatCodeHEIF";
        break;
      default:
        v1 = a1 - 12288;
        a1 = @"PTPObjectFormatCodeUndefinedNonImageObject";
        switch(v1)
        {
          case 0:
            goto LABEL_70;
          case 1:
            a1 = @"PTPObjectFormatCodeAssociation";
            break;
          case 2:
            a1 = @"PTPObjectFormatCodeScript";
            break;
          case 3:
            a1 = @"PTPObjectFormatCodeExecutable";
            break;
          case 4:
            a1 = @"PTPObjectFormatCodeText";
            break;
          case 5:
            a1 = @"PTPObjectFormatCodeHTML";
            break;
          case 6:
            a1 = @"PTPObjectFormatCodeDPOF";
            break;
          case 7:
            a1 = @"PTPObjectFormatCodeAIFF";
            break;
          case 8:
            a1 = @"PTPObjectFormatCodeWAV";
            break;
          case 9:
            a1 = @"PTPObjectFormatCodeMP3";
            break;
          case 10:
            a1 = @"PTPObjectFormatCodeAVI";
            break;
          case 11:
            a1 = @"PTPObjectFormatCodeMPEG";
            break;
          case 12:
            a1 = @"PTPObjectFormatCodeASF";
            break;
          case 13:
            a1 = @"PTPObjectFormatCodeMOV";
            break;
          case 14:
            a1 = @"PTPObjectFormatCodeXML";
            break;
          default:
            goto LABEL_33;
        }

        break;
    }
  }

  else if (a1 > 47491)
  {
    if (a1 > 47632)
    {
      switch(a1)
      {
        case 0xBA11:
          a1 = @"MTPObjectFormatCodeM3UPlaylist";
          break;
        case 0xBA14:
          a1 = @"MTPObjectFormatCodePLSPlaylist";
          break;
        case 0xBA82:
          a1 = @"MTPObjectFormatCodeXMLDocument";
          break;
        default:
          goto LABEL_33;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xB984:
          a1 = @"MTPObjectFormatCodeAudible";
          break;
        case 0xBA05:
          a1 = @"MTPObjectFormatCodeAbstractAVPlaylist";
          break;
        case 0xBA10:
          a1 = @"MTPObjectFormatCodeWPLPlaylist";
          break;
        default:
          goto LABEL_33;
      }
    }
  }

  else if (a1 > 47365)
  {
    switch(a1)
    {
      case 0xB906:
        a1 = @"MTPObjectFormatCodeFLAC";
        break;
      case 0xB982:
        a1 = @"MTPObjectFormatCodeMP4Container";
        break;
      case 0xB983:
        a1 = @"MTPObjectFormatCodeMP2";
        break;
      default:
        goto LABEL_33;
    }
  }

  else
  {
    switch(a1)
    {
      case 0xB901:
        a1 = @"MTPObjectFormatCodeWMA";
        break;
      case 0xB902:
        a1 = @"MTPObjectFormatCodeOGG";
        break;
      case 0xB903:
        a1 = @"MTPObjectFormatCodeAAC";
        break;
      default:
LABEL_33:
        if ((a1 & 0xF000) == 0xB000)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPObjectFormatCodeVendorDefined (0x%04X)", a1];
        }

        else if ((a1 & 0xF000) == 0x3000)
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPObjectFormatCodeReservedForFuture (0x%04X)", a1];
        }

        else
        {
          [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
        }
        a1 = ;
        break;
    }
  }

LABEL_70:

  return a1;
}

__CFString *stringForMTPPropertyType(uint64_t a1)
{
  if (a1 <= 56448)
  {
    if (a1 > 56328)
    {
      if (a1 > 56387)
      {
        switch(a1)
        {
          case 0xDC44:
            v2 = @"MTPPropertyTypeName";

            return v2;
          case 0xDC48:
            v2 = @"MTPPropertyTypeDescription";

            return v2;
          case 0xDC4E:
            v2 = @"MTPPropertyTypeDateAdded";

            return v2;
        }
      }

      else
      {
        switch(a1)
        {
          case 0xDC09:
            v2 = @"MTPPropertyTypeDateModified";

            return v2;
          case 0xDC0B:
            v2 = @"MTPPropertyTypeParentObject";

            return v2;
          case 0xDC41:
            v2 = @"MTPPropertyTypePersistentUnique";

            return v2;
        }
      }
    }

    else if (a1 > 56323)
    {
      switch(a1)
      {
        case 0xDC04:
          v2 = @"MTPPropertyTypeObjectSize";

          return v2;
        case 0xDC07:
          v2 = @"MTPPropertyTypeFileName";

          return v2;
        case 0xDC08:
          v2 = @"MTPPropertyTypeDateCreated";

          return v2;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xDC01:
          v2 = @"MTPPropertyTypeStorageID";

          return v2;
        case 0xDC02:
          v2 = @"MTPPropertyTypeObjectFormat";

          return v2;
        case 0xDC03:
          v2 = @"MTPPropertyTypeProtectionStatus";

          return v2;
      }
    }

LABEL_106:
    if ((a1 & 0xFF00) == 0xD800)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"MTPPropertyVendorDefined (0x%04X)", a1];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
    }
    v2 = ;

    return v2;
  }

  if (a1 <= 56454)
  {
    if (a1 > 56451)
    {
      if (a1 == 56452)
      {
        v2 = @"MTPPropertyRepresentativeSampleWidth";
      }

      else if (a1 == 56453)
      {
        v2 = @"MTPPropertyRepresentativeSampleDuration";
      }

      else
      {
        v2 = @"MTPPropertyRepresentativeSampleData";
      }
    }

    else if (a1 == 56449)
    {
      v2 = @"MTPPropertyRepresentativeSampleFormat";
    }

    else if (a1 == 56450)
    {
      v2 = @"MTPPropertyRepresentativeSampleSize";
    }

    else
    {
      v2 = @"MTPPropertyRepresentativeSampleHeight";
    }

    return v2;
  }

  if (a1 <= 56457)
  {
    if (a1 == 56455)
    {
      v2 = @"MTPPropertyTypeWidth";
    }

    else if (a1 == 56456)
    {
      v2 = @"MTPPropertyTypeHeight";
    }

    else
    {
      v2 = @"MTPPropertyTypeDuration";
    }

    return v2;
  }

  if (a1 > 56531)
  {
    if (a1 == 56532)
    {
      v2 = @"MTPPropertyTypeFNumber";

      return v2;
    }

    if (a1 == 56544)
    {
      v2 = @"MTPPropertyTypeDisplayName";

      return v2;
    }

    goto LABEL_106;
  }

  if (a1 != 56458)
  {
    if (a1 == 56471)
    {
      v2 = @"MTPPropertyTypeEffectiveRating";

      return v2;
    }

    goto LABEL_106;
  }

  v2 = @"MTPPropertyTypeRating";

  return v2;
}

__CFString *stringForAssociationType(uint64_t a1)
{
  if (a1 >= 8)
  {
    if ((a1 & 0xF000) == 0x8000)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPAssociationTypeVendorDefined (0x%04X)", a1];
    }

    else if ((a1 & 0xF000) != 0)
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
    }

    else
    {
      [MEMORY[0x29EDBA0F8] stringWithFormat:@"PTPAssociationTypeReserved (0x%04X)", a1];
    }
    v2 = ;
  }

  else
  {
    v2 = off_29F380EF8[a1];
  }

  return v2;
}

__CFString *stringForInitFailReason(uint64_t a1)
{
  if ((a1 - 1) >= 3)
  {
    v2 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(0x%04X)", a1];
  }

  else
  {
    v2 = off_29F380F38[(a1 - 1)];
  }

  return v2;
}

uint64_t printerrno()
{
  v0 = *__error();
  v1 = *MEMORY[0x29EDCA610];
  if (v0 > 21)
  {
    if (v0 <= 53)
    {
      switch(v0)
      {
        case 22:
          return fprintf(v1, "Error 'EINVAL' (%d) occurred in '%s'.\n");
        case 29:
          return fprintf(v1, "Error 'ESPIPE' (%d) occurred in '%s'.\n");
        case 35:
          return fprintf(v1, "Error 'EAGAIN' (%d) occurred in '%s'.\n");
      }
    }

    else if (v0 > 56)
    {
      if (v0 == 57)
      {
        return fprintf(v1, "Error 'ENOTCONN' (%d) occurred in '%s'.\n");
      }

      if (v0 == 60)
      {
        return fprintf(v1, "Error 'ETIMEDOUT' (%d) occurred in '%s'.\n");
      }
    }

    else
    {
      if (v0 == 54)
      {
        return fprintf(v1, "Error 'ECONNRESET' (%d) occurred in '%s'.\n");
      }

      if (v0 == 55)
      {
        return fprintf(v1, "Error 'ENOBUFS' (%d) occurred in '%s'.\n");
      }
    }
  }

  else if (v0 <= 8)
  {
    switch(v0)
    {
      case 4:
        return fprintf(v1, "Error 'EINTR' (%d) occurred in '%s'.\n");
      case 5:
        return fprintf(v1, "Error 'EIO' (%d) occurred in '%s'.\n");
      case 6:
        return fprintf(v1, "Error 'ENXIO' (%d) occurred in '%s'.\n");
    }
  }

  else if (v0 > 13)
  {
    if (v0 == 14)
    {
      return fprintf(v1, "Error 'EFAULT' (%d) occurred in '%s'.\n");
    }

    if (v0 == 21)
    {
      return fprintf(v1, "Error 'EISDIR' (%d) occurred in '%s'.\n");
    }
  }

  else
  {
    if (v0 == 9)
    {
      return fprintf(v1, "Error 'EBADF' (%d) occurred in '%s'.\n");
    }

    if (v0 == 12)
    {
      return fprintf(v1, "Error 'ENOMEM' (%d) occurred in '%s'.\n");
    }
  }

  return fprintf(v1, "Error %d occurred in '%s'.\n");
}

id ICLocalizedString(void *a1)
{
  v1 = ICLocalizedString_once;
  v2 = a1;
  if (v1 != -1)
  {
    ICLocalizedString_cold_1();
  }

  v3 = [ICLocalizedString_bundle localizedStringForKey:v2 value:v2 table:@"ImageCaptureCore"];

  return v3;
}

uint64_t __ICLocalizedString_block_invoke()
{
  v0 = [MEMORY[0x29EDB9F48] bundleWithPath:@"/System/Library/Frameworks/ImageCaptureCore.framework"];
  v1 = ICLocalizedString_bundle;
  ICLocalizedString_bundle = v0;

  return MEMORY[0x2A1C71028](v0, v1);
}

void sub_29EB6B31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29EB6BAD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_29EB6C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29EB6D77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICAcessQuery(void *a1, int a2, void *a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = a1;
  if (a2 >= 1)
  {
    v6 = a2;
    do
    {
      if (*a3)
      {
        v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:?];
        [v5 addObject:v7];
      }

      __ICOSLogCreate();
      v8 = @"adding";
      if ([@"adding" length] >= 0x15)
      {
        v9 = [@"adding" substringWithRange:{0, 18}];
        v8 = [v9 stringByAppendingString:@".."];
      }

      v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", *a3];
      v11 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v8;
        v13 = v11;
        v14 = [(__CFString *)v8 UTF8String];
        *buf = 136446466;
        v18 = v14;
        v19 = 2114;
        v20 = v10;
        _os_log_impl(&dword_29EB58000, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
      }

      ++a3;
      --v6;
    }

    while (v6);
  }

  v15 = *MEMORY[0x29EDCA608];
  return 0;
}

void sub_29EB6E614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ICAcessStatusQuery(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v7 = [MEMORY[0x29EDB8E00] dictionary];
  if (a2 >= 1)
  {
    v8 = 0;
    while (1)
    {
      if (!*(a3 + 8 * v8) || !*(a4 + 8 * v8))
      {
        goto LABEL_14;
      }

      if (v8 > 1)
      {
        break;
      }

      if (!v8)
      {
        v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:?];
        v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", *(a4 + 8 * v8)];
        [v7 setObject:v10 forKeyedSubscript:v11];
        goto LABEL_13;
      }

      if (v8 == 1)
      {
        goto LABEL_12;
      }

LABEL_14:
      if (a2 == ++v8)
      {
        goto LABEL_17;
      }
    }

    if (v8 != 2 && v8 != 3 && v8 != 4)
    {
      goto LABEL_14;
    }

LABEL_12:
    v9 = MEMORY[0x29EDBA070];
    v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:?];
    v11 = [v9 numberWithInteger:{objc_msgSend(v10, "integerValue")}];
    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s", *(a4 + 8 * v8)];
    [v7 setObject:v11 forKeyedSubscript:v12];

LABEL_13:
    goto LABEL_14;
  }

LABEL_17:
  [v14 addObject:v7];

  return 0;
}

void sub_29EB6F610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_29EB6F7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return [v0 UTF8String];
}