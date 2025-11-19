void sub_17B50A(_BYTE *a1)
{
  v1 = *a1 + 11;
  MEMORY[0xEAA800564D7004EA] = -51;
  __asm { retf }
}

void sub_17DC2A(uint64_t a1)
{
  v1 = (6906740 * *(a1 + 95)) >> 32 != 0;
  __asm { iret }
}

void sub_183F10(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  LOBYTE(v4) = v4 - v3;
  *a3 += v4;
  *(v4 + 1299187454) += BYTE1(v4);
  *(a2 + 263934) += BYTE1(v4);
  __asm { iret }
}