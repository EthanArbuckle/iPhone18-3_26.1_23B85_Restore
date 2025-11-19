void sub_41C3A0(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  __writeeflags(v6);
  *a4 = v4;
  *(2 * v4) += v4;
  v5 = __readeflags();
  __asm { retn }
}