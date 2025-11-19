@interface FSURLGetResourcePropertyFlags
@end

@implementation FSURLGetResourcePropertyFlags

const void *___FSURLGetResourcePropertyFlags_block_invoke()
{
  if ((byte_1ED44592A & 1) == 0)
  {
    ___FSURLGetResourcePropertyFlags_block_invoke_cold_1();
  }

  _FSURLGetResourcePropertyFlags::maskToPropertyTable = &qword_1ED445A20;
  _FSURLGetResourcePropertyFlags::maskToPropertyTableCount = 1;
  v0 = &qword_1ED445A38;
  do
  {
    result = CFDictionaryGetValue(qword_1ED4458B8, *(v0 - 2));
    *(v0 - 1) = result;
    v2 = *v0;
    v0 += 3;
  }

  while (v2);
  return result;
}

double ___FSURLGetResourcePropertyFlags_block_invoke_cold_1()
{
  *algn_1ED445A28 = *MEMORY[0x1E695EB68];
  byte_1ED44592A = 1;
  qword_1ED445A20 = 1;
  qword_1ED445A30 = 0;
  qword_1ED445A38 = 2;
  qword_1ED445A40 = *MEMORY[0x1E695EB28];
  unk_1ED445A48 = 0;
  v0 = *MEMORY[0x1E695EB78];
  qword_1ED445A50 = 4;
  unk_1ED445A58 = v0;
  qword_1ED445A60 = 0;
  unk_1ED445A68 = 8;
  qword_1ED445A70 = *MEMORY[0x1E695EB98];
  unk_1ED445A78 = 0;
  v1 = *MEMORY[0x1E695EB50];
  qword_1ED445A80 = 16;
  unk_1ED445A88 = v1;
  qword_1ED445A90 = 0;
  unk_1ED445A98 = 32;
  qword_1ED445AA0 = *MEMORY[0x1E695EB80];
  unk_1ED445AA8 = 0;
  v2 = *MEMORY[0x1E695EB90];
  qword_1ED445AB0 = 64;
  unk_1ED445AB8 = v2;
  qword_1ED445AC0 = 0;
  unk_1ED445AC8 = 128;
  qword_1ED445AD0 = *MEMORY[0x1E695EB40];
  unk_1ED445AD8 = 0;
  v3 = *MEMORY[0x1E695EB10];
  qword_1ED445AE0 = 256;
  unk_1ED445AE8 = v3;
  qword_1ED445AF0 = 0;
  unk_1ED445AF8 = 512;
  qword_1ED445B00 = *MEMORY[0x1E695EB20];
  unk_1ED445B08 = 0;
  v4 = *MEMORY[0x1E695E2F8];
  qword_1ED445B10 = 1024;
  unk_1ED445B18 = v4;
  qword_1ED445B20 = 0;
  unk_1ED445B28 = 2048;
  qword_1ED445B30 = *MEMORY[0x1E695E250];
  qword_1ED445B38 = 0;
  qword_1ED445B40 = 4096;
  qword_1ED445B48 = *MEMORY[0x1E695EB60];
  qword_1ED445B50 = 0;
  qword_1ED445B58 = 0x2000;
  qword_1ED445B60 = *MEMORY[0x1E695EBA0];
  qword_1ED445B68 = 0;
  qword_1ED445B70 = 0x4000;
  qword_1ED445B78 = *MEMORY[0x1E695EB38];
  qword_1ED445B80 = 0;
  qword_1ED445B88 = 0x8000;
  qword_1ED445B90 = *MEMORY[0x1E695EB18];
  qword_1ED445B98 = 0;
  qword_1ED445BA0 = 0x10000;
  qword_1ED445BA8 = *MEMORY[0x1E695EB48];
  result = 0.0;
  xmmword_1ED445BB0 = 0u;
  unk_1ED445BC0 = 0u;
  return result;
}

@end