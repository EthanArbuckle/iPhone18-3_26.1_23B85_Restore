@interface FSURLGetCatalogInfo
@end

@implementation FSURLGetCatalogInfo

const void *___FSURLGetCatalogInfo_block_invoke()
{
  if ((byte_1ED44592B & 1) == 0)
  {
    ___FSURLGetCatalogInfo_block_invoke_cold_1();
  }

  qword_1ED445948 = &dword_1ED445BD0;
  v0 = &dword_1ED445BE8;
  do
  {
    result = CFDictionaryGetValue(qword_1ED4458B8, *(v0 - 2));
    *(v0 - 1) = result;
    v2 = *v0;
    v0 += 6;
  }

  while (v2);
  return result;
}

double ___FSURLGetCatalogInfo_block_invoke_cold_1()
{
  dword_1ED445BD0 = 2;
  qword_1ED445BD8 = *MEMORY[0x1E695EB90];
  qword_1ED445BE0 = 0;
  dword_1ED445BE8 = 2;
  qword_1ED445BF0 = *MEMORY[0x1E695EB80];
  qword_1ED445BF8 = 0;
  dword_1ED445C00 = 49154;
  qword_1ED445C08 = *MEMORY[0x1E695EB28];
  qword_1ED445C10 = 0;
  dword_1ED445C18 = 2;
  qword_1ED445C20 = *MEMORY[0x1E695EBB8];
  qword_1ED445C28 = 0;
  dword_1ED445C30 = 2;
  qword_1ED445C38 = *MEMORY[0x1E695EB48];
  qword_1ED445C40 = 0;
  dword_1ED445C48 = 8;
  qword_1ED445C50 = *MEMORY[0x1E695E3A0];
  qword_1ED445C58 = 0;
  dword_1ED445C60 = 24;
  qword_1ED445C68 = *MEMORY[0x1E695E2B0];
  qword_1ED445C70 = 0;
  dword_1ED445C78 = 32;
  qword_1ED445C80 = *MEMORY[0x1E695EA50];
  qword_1ED445C88 = 0;
  dword_1ED445C90 = 64;
  qword_1ED445C98 = *MEMORY[0x1E695EA48];
  qword_1ED445CA0 = 0;
  dword_1ED445CA8 = 128;
  qword_1ED445CB0 = *MEMORY[0x1E695EA08];
  qword_1ED445CB8 = 0;
  dword_1ED445CC0 = 256;
  qword_1ED445CC8 = *MEMORY[0x1E695EA40];
  qword_1ED445CD0 = 0;
  dword_1ED445CD8 = 1024;
  qword_1ED445CE0 = qword_1ED445C08;
  qword_1ED445CE8 = 0;
  dword_1ED445CF0 = 0x400000;
  qword_1ED445CF8 = *MEMORY[0x1E695EAE8];
  qword_1ED445D00 = 0;
  dword_1ED445D08 = 268288;
  qword_1ED445D10 = *MEMORY[0x1E695EB78];
  qword_1ED445D18 = 0;
  dword_1ED445D20 = 268288;
  qword_1ED445D28 = *MEMORY[0x1E695E2C0];
  qword_1ED445D30 = 0;
  dword_1ED445D38 = 0x4000;
  qword_1ED445D40 = *MEMORY[0x1E695EAF0];
  qword_1ED445D48 = 0;
  dword_1ED445D50 = 0x4000;
  qword_1ED445D58 = *MEMORY[0x1E695EA68];
  qword_1ED445D60 = 0;
  dword_1ED445D68 = 0x8000;
  qword_1ED445D70 = *MEMORY[0x1E695E2B8];
  qword_1ED445D78 = 0;
  dword_1ED445D80 = 0x8000;
  qword_1ED445D88 = *MEMORY[0x1E695E2A0];
  qword_1ED445D90 = 0;
  dword_1ED445D98 = 0x80000;
  qword_1ED445DA0 = *MEMORY[0x1E695EB60];
  qword_1ED445DA8 = 0;
  dword_1ED445DB0 = 0x80000;
  qword_1ED445DB8 = *MEMORY[0x1E695EBA0];
  qword_1ED445DC0 = 0;
  dword_1ED445DC8 = 0x80000;
  qword_1ED445DD0 = *MEMORY[0x1E695EB38];
  qword_1ED445DD8 = 0;
  dword_1ED445DE0 = 0x80000000;
  qword_1ED445DE8 = *MEMORY[0x1E695EBE8];
  qword_1ED445DF0 = 0;
  dword_1ED445DF8 = 0;
  result = 0.0;
  xmmword_1ED445E00 = 0u;
  byte_1ED44592B = 1;
  return result;
}

@end