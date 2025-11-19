@interface FSURLCopyResourcePropertyValuesAndFlags
@end

@implementation FSURLCopyResourcePropertyValuesAndFlags

const void *___FSURLCopyResourcePropertyValuesAndFlags_block_invoke()
{
  if ((byte_1ED445929 & 1) == 0)
  {
    ___FSURLCopyResourcePropertyValuesAndFlags_block_invoke_cold_1();
  }

  qword_1ED445938 = &qword_1ED445E10;
  _MergedGlobals = 1;
  v0 = &qword_1ED445E30;
  do
  {
    result = CFDictionaryGetValue(qword_1ED4458B8, *(v0 - 2));
    *(v0 - 1) = result;
    v2 = *v0;
    v0 += 4;
  }

  while (v2);
  return result;
}

double ___FSURLCopyResourcePropertyValuesAndFlags_block_invoke_cold_1()
{
  qword_1ED445E10 = 1;
  dword_1ED445E18 = 0;
  qword_1ED445E20 = *MEMORY[0x1E695EBE8];
  qword_1ED445E28 = 0;
  qword_1ED445E30 = 2;
  dword_1ED445E38 = 0;
  qword_1ED445E40 = *MEMORY[0x1E695EBB8];
  qword_1ED445E48 = 0;
  qword_1ED445E50 = 4;
  dword_1ED445E58 = 0;
  qword_1ED445E60 = *MEMORY[0x1E695ED00];
  qword_1ED445E68 = 0;
  qword_1ED445E70 = 8;
  dword_1ED445E78 = 0;
  qword_1ED445E80 = *MEMORY[0x1E695E2B0];
  qword_1ED445E88 = 0;
  qword_1ED445E90 = 16;
  dword_1ED445E98 = 0;
  qword_1ED445EA0 = *MEMORY[0x1E695EA50];
  qword_1ED445EA8 = 0;
  qword_1ED445EB0 = 32;
  dword_1ED445EB8 = 0;
  qword_1ED445EC0 = *MEMORY[0x1E695EA48];
  qword_1ED445EC8 = 0;
  qword_1ED445ED0 = 64;
  dword_1ED445ED8 = 0;
  qword_1ED445EE0 = *MEMORY[0x1E695EA08];
  qword_1ED445EE8 = 0;
  qword_1ED445EF0 = 128;
  dword_1ED445EF8 = 0;
  qword_1ED445F00 = *MEMORY[0x1E695EAF0];
  qword_1ED445F08 = 0;
  qword_1ED445F10 = 256;
  dword_1ED445F18 = 0;
  qword_1ED445F20 = *MEMORY[0x1E695EA68];
  qword_1ED445F28 = 0;
  qword_1ED445F30 = 512;
  dword_1ED445F38 = 0;
  qword_1ED445F40 = *MEMORY[0x1E695E2B8];
  qword_1ED445F48 = 0;
  qword_1ED445F50 = 1024;
  dword_1ED445F58 = 0;
  qword_1ED445F60 = *MEMORY[0x1E695E2A0];
  qword_1ED445F68 = 0;
  qword_1ED445F70 = 2048;
  dword_1ED445F78 = 0;
  qword_1ED445F80 = *MEMORY[0x1E695E2C0];
  qword_1ED445F88 = 0;
  qword_1ED445F90 = 4096;
  dword_1ED445F98 = 0;
  qword_1ED445FA0 = *MEMORY[0x1E695EAE8];
  qword_1ED445FA8 = 0;
  qword_1ED445FB0 = 1;
  dword_1ED445FB8 = 1;
  qword_1ED445FC0 = *MEMORY[0x1E695EB68];
  qword_1ED445FC8 = 0;
  qword_1ED445FD0 = 2;
  dword_1ED445FD8 = 1;
  qword_1ED445FE0 = *MEMORY[0x1E695EB28];
  qword_1ED445FE8 = 0;
  qword_1ED445FF0 = 4;
  dword_1ED445FF8 = 1;
  qword_1ED446000 = *MEMORY[0x1E695EB78];
  qword_1ED446008 = 0;
  qword_1ED446010 = 8;
  dword_1ED446018 = 1;
  qword_1ED446020 = *MEMORY[0x1E695EB98];
  qword_1ED446028 = 0;
  qword_1ED446030 = 16;
  dword_1ED446038 = 1;
  qword_1ED446040 = *MEMORY[0x1E695EB50];
  qword_1ED446048 = 0;
  qword_1ED446050 = 32;
  dword_1ED446058 = 1;
  qword_1ED446060 = *MEMORY[0x1E695EB80];
  qword_1ED446068 = 0;
  qword_1ED446070 = 64;
  dword_1ED446078 = 1;
  qword_1ED446080 = *MEMORY[0x1E695EB90];
  qword_1ED446088 = 0;
  qword_1ED446090 = 128;
  dword_1ED446098 = 1;
  qword_1ED4460A0 = *MEMORY[0x1E695EB40];
  qword_1ED4460A8 = 0;
  qword_1ED4460B0 = 256;
  dword_1ED4460B8 = 1;
  qword_1ED4460C0 = *MEMORY[0x1E695EB10];
  qword_1ED4460C8 = 0;
  qword_1ED4460D0 = 512;
  dword_1ED4460D8 = 1;
  qword_1ED4460E0 = *MEMORY[0x1E695EB20];
  qword_1ED4460E8 = 0;
  qword_1ED4460F0 = 1024;
  dword_1ED4460F8 = 1;
  qword_1ED446100 = *MEMORY[0x1E695E2F8];
  qword_1ED446108 = 0;
  qword_1ED446110 = 2048;
  dword_1ED446118 = 1;
  qword_1ED446120 = *MEMORY[0x1E695E250];
  qword_1ED446128 = 0;
  qword_1ED446130 = 4096;
  dword_1ED446138 = 1;
  qword_1ED446140 = *MEMORY[0x1E695EB60];
  qword_1ED446148 = 0;
  qword_1ED446150 = 0x2000;
  dword_1ED446158 = 1;
  qword_1ED446160 = *MEMORY[0x1E695EBA0];
  qword_1ED446168 = 0;
  qword_1ED446170 = 0x4000;
  dword_1ED446178 = 1;
  qword_1ED446180 = *MEMORY[0x1E695EB38];
  qword_1ED446188 = 0;
  qword_1ED446190 = 0x8000;
  dword_1ED446198 = 1;
  qword_1ED4461A0 = *MEMORY[0x1E695EB18];
  qword_1ED4461A8 = 0;
  qword_1ED4461B0 = 0x10000;
  dword_1ED4461B8 = 1;
  qword_1ED4461C0 = *MEMORY[0x1E695EB48];
  dword_1ED4461D8 = 0;
  result = 0.0;
  xmmword_1ED4461C8 = 0u;
  xmmword_1ED4461E0 = 0u;
  byte_1ED445929 = 1;
  return result;
}

@end