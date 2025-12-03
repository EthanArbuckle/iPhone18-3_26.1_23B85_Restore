@interface MurmurHash3
+ ($7DEDF3842AEFB7F1E6DF5AF62E424A02)hash128WithKey:(const void *)key length:(unint64_t)length seed:(unsigned int)seed;
@end

@implementation MurmurHash3

+ ($7DEDF3842AEFB7F1E6DF5AF62E424A02)hash128WithKey:(const void *)key length:(unint64_t)length seed:(unsigned int)seed
{
  seedCopy = seed;
  seedCopy2 = seed;
  while (2)
  {
    v9 = key + (length & 0xFFFFFFFFFFFFFFF0);
    v10 = 0;
    switch(length)
    {
      case 0uLL:
        goto LABEL_20;
      case 1uLL:
        goto LABEL_19;
      case 2uLL:
        goto LABEL_18;
      case 3uLL:
        goto LABEL_17;
      case 4uLL:
        goto LABEL_16;
      case 5uLL:
        goto LABEL_15;
      case 6uLL:
        goto LABEL_14;
      case 7uLL:
        goto LABEL_13;
      case 8uLL:
        goto LABEL_12;
      case 9uLL:
        goto LABEL_11;
      case 0xAuLL:
        goto LABEL_10;
      case 0xBuLL:
        goto LABEL_9;
      case 0xCuLL:
        goto LABEL_8;
      case 0xDuLL:
        goto LABEL_7;
      case 0xEuLL:
        goto LABEL_6;
      case 0xFuLL:
        v10 = v9[14] << 48;
LABEL_6:
        v10 |= v9[13] << 40;
LABEL_7:
        v10 ^= v9[12] << 32;
LABEL_8:
        v10 ^= v9[11] << 24;
LABEL_9:
        v10 ^= v9[10] << 16;
LABEL_10:
        v10 ^= v9[9] << 8;
LABEL_11:
        seedCopy2 ^= 0x87C37B91114253D5 * ((0x4E8B26FE00000000 * (v10 ^ v9[8])) | ((0x4CF5AD432745937FLL * (v10 ^ v9[8])) >> 31));
LABEL_12:
        v10 = v9[7] << 56;
LABEL_13:
        v10 |= v9[6] << 48;
LABEL_14:
        v10 ^= v9[5] << 40;
LABEL_15:
        v10 ^= v9[4] << 32;
LABEL_16:
        v10 ^= v9[3] << 24;
LABEL_17:
        v10 ^= v9[2] << 16;
LABEL_18:
        v10 ^= v9[1] << 8;
LABEL_19:
        seedCopy ^= 0x4CF5AD432745937FLL * ((0x88A129EA80000000 * (v10 ^ *v9)) | ((0x87C37B91114253D5 * (v10 ^ *v9)) >> 33));
LABEL_20:
        v11 = (seedCopy ^ length) + (seedCopy2 ^ length);
        v12 = v11 + (seedCopy2 ^ length);
        v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
        v14 = v13 ^ (v13 >> 33);
        v15 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v12 ^ (v12 >> 33))) >> 33));
        v16 = v15 ^ (v15 >> 33);
        v17 = v16 + v14;
        v18 = v16 + v14 + v16;
        result.var1 = v18;
        result.var0 = v17;
        return result;
      default:
        v7 = length >> 4;
        v8 = key + 8;
        seedCopy2 = seedCopy;
        do
        {
          seedCopy = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * *(v8 - 1)) | ((0x87C37B91114253D5 * *(v8 - 1)) >> 33))) ^ seedCopy, 37) + seedCopy2) + 1390208809;
          seedCopy2 = 5 * (seedCopy + __ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * *v8) | ((0x4CF5AD432745937FLL * *v8) >> 31))) ^ seedCopy2, 33)) + 944331445;
          v8 += 2;
          --v7;
        }

        while (v7);
        continue;
    }
  }
}

@end