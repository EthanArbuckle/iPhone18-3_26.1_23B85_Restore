unint64_t sub_126C154(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126C26C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126306C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126C384(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126306C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126C4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126C5F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126C71C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126C834(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1263AFC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126C94C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1263AFC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126CAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126CBC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126CCE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126CDFC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126306C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126CF14(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126306C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126D068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126D188(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126D2AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126D3C4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1263AFC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126D4DC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1263AFC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126D630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126D750(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126D874(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126D98C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126306C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126DAA4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126306C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126DBF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126DD18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126DE3C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126DF54(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1263AFC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126E06C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1263AFC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126E1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2FA0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126E2E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2FA0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126E404(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126E51C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126306C(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126E634(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126306C(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126E788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F30A8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126E8A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F30A8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126E9CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126EAE4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1263AFC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126EBFC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1263AFC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_126ED50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126EE70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126EF94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F3274(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_126F0C0(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126F1D8(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_126F2FC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v64) = 50331648;
    *(&v64 + 1) = 0;
    v65 = -4294967282;
    if (a3)
    {
      v64 = *a3;
      v65 = *(a3 + 2);
      v54 = &v64;
    }

    else
    {
      v54 = 0;
    }

    __p = 0;
    v62 = 0;
    v63 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v58, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v62;
        if (v62 >= v63)
        {
          v12 = (v62 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v63 - __p;
          if ((v63 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v62 - __p);
          memcpy(v17, __p, v62 - __p);
          v18 = __p;
          __p = v17;
          v62 = v11;
          v63 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v62 = *v8;
          v11 = (v10 + 2);
        }

        v62 = v11;
        v19 = v59;
        if (v59 >= v60)
        {
          v21 = (v59 - v58) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v60 - v58) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v60 - v58 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v58, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v59 - v58);
          memcpy(v25, v58, v59 - v58);
          v26 = v58;
          v58 = v25;
          v59 = v20;
          v60 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v59 = v9;
          v20 = (v19 + 8);
        }

        v59 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v57 = 1;
    v56 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = v56;
        if (v56 > 9u || ((v29 = sub_1236040(a1, &__p, &v57, v54, &v56, v56, 9u), v30 = v62, v28 = v56, v62 != v29) ? (v31 = v56 >= 0xAu) : (v31 = 1), v31))
        {
          if (v28 <= 0xB)
          {
            v28 = 12;
            v56 = 12;
          }

          v32 = sub_1236040(a1, &__p, &v57, v54, &v56, v28, 0x11u);
          v30 = v62;
        }

        else
        {
          v32 = v29;
        }

        if (v32 == v30)
        {
          goto LABEL_70;
        }

        v33 = v32 - __p;
        v34 = (v32 - __p) >> 1;
        v35 = (v57 << 32) | ((*(v58 + v34) - *a2) >> 4);
        v37 = a4[1];
        v36 = a4[2];
        if (v37 >= v36)
        {
          v39 = (v37 - *a4) >> 3;
          if ((v39 + 1) >> 61)
          {
            sub_1794();
          }

          v40 = v36 - *a4;
          v41 = v40 >> 2;
          if (v40 >> 2 <= (v39 + 1))
          {
            v41 = v39 + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (v42)
          {
            sub_1232E30(a4, v42);
          }

          *(8 * v39) = v35;
          v38 = 8 * v39 + 8;
          v43 = a4[1] - *a4;
          v44 = (8 * v39 - v43);
          memcpy(v44, *a4, v43);
          v45 = *a4;
          *a4 = v44;
          a4[1] = v38;
          a4[2] = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v37 = v35;
          v38 = (v37 + 1);
        }

        a4[1] = v38;
        if (a3)
        {
          if ((v65 & 0x8000000000000000) == 0)
          {
            v53 = -1;
            if (v56 == 3 || v56 == 12)
            {
              goto LABEL_69;
            }

            if (SHIDWORD(v65) > ((v32 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_58:
        v46 = v62;
        v47 = (__p + v33);
        v48 = (__p + v33 + 16);
        if (v48 != v62)
        {
          do
          {
            v49 = v48[1];
            *(v48 - 2) = *v48;
            *(v48 - 1) = v49;
            v48 += 2;
          }

          while (v48 != v46);
          v47 = v48 - 2;
        }

        v62 = v47;
        v50 = v58 + v34;
        v51 = v58 + v34 + 8;
        v52 = v59 - v51;
        if (v59 != v51)
        {
          memmove(v58 + v34, v51, v59 - v51);
          v38 = a4[1];
        }

        v59 = &v50[v52];
        if ((v38 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_70;
        }
      }

      v53 = HIDWORD(v65) - 1;
LABEL_69:
      HIDWORD(v65) = v53;
      goto LABEL_58;
    }

LABEL_70:
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }
  }
}

void sub_126F7A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_126F82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_126F94C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_126FA70(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F33BC(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_126FB9C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_126FCB4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void sub_126FDD8(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v64) = 50331648;
    *(&v64 + 1) = 0;
    v65 = -4294967282;
    if (a3)
    {
      v64 = *a3;
      v65 = *(a3 + 2);
      v54 = &v64;
    }

    else
    {
      v54 = 0;
    }

    __p = 0;
    v62 = 0;
    v63 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v58, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v62;
        if (v62 >= v63)
        {
          v12 = (v62 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v63 - __p;
          if ((v63 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v62 - __p);
          memcpy(v17, __p, v62 - __p);
          v18 = __p;
          __p = v17;
          v62 = v11;
          v63 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v62 = *v8;
          v11 = (v10 + 2);
        }

        v62 = v11;
        v19 = v59;
        if (v59 >= v60)
        {
          v21 = (v59 - v58) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v60 - v58) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v60 - v58 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v58, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v59 - v58);
          memcpy(v25, v58, v59 - v58);
          v26 = v58;
          v58 = v25;
          v59 = v20;
          v60 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v59 = v9;
          v20 = (v19 + 8);
        }

        v59 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v57 = 1;
    v56 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = v56;
        if (v56 > 9u || ((v29 = sub_123AF04(a1, &__p, &v57, v54, &v56, v56, 9u), v30 = v62, v28 = v56, v62 != v29) ? (v31 = v56 >= 0xAu) : (v31 = 1), v31))
        {
          if (v28 <= 0xB)
          {
            v28 = 12;
            v56 = 12;
          }

          v32 = sub_123AF04(a1, &__p, &v57, v54, &v56, v28, 0x11u);
          v30 = v62;
        }

        else
        {
          v32 = v29;
        }

        if (v32 == v30)
        {
          goto LABEL_70;
        }

        v33 = v32 - __p;
        v34 = (v32 - __p) >> 1;
        v35 = (v57 << 32) | ((*(v58 + v34) - *a2) >> 4);
        v37 = a4[1];
        v36 = a4[2];
        if (v37 >= v36)
        {
          v39 = (v37 - *a4) >> 3;
          if ((v39 + 1) >> 61)
          {
            sub_1794();
          }

          v40 = v36 - *a4;
          v41 = v40 >> 2;
          if (v40 >> 2 <= (v39 + 1))
          {
            v41 = v39 + 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF8)
          {
            v42 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v42 = v41;
          }

          if (v42)
          {
            sub_1232E30(a4, v42);
          }

          *(8 * v39) = v35;
          v38 = 8 * v39 + 8;
          v43 = a4[1] - *a4;
          v44 = (8 * v39 - v43);
          memcpy(v44, *a4, v43);
          v45 = *a4;
          *a4 = v44;
          a4[1] = v38;
          a4[2] = 0;
          if (v45)
          {
            operator delete(v45);
          }
        }

        else
        {
          *v37 = v35;
          v38 = (v37 + 1);
        }

        a4[1] = v38;
        if (a3)
        {
          if ((v65 & 0x8000000000000000) == 0)
          {
            v53 = -1;
            if (v56 == 3 || v56 == 12)
            {
              goto LABEL_69;
            }

            if (SHIDWORD(v65) > ((v32 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_58:
        v46 = v62;
        v47 = (__p + v33);
        v48 = (__p + v33 + 16);
        if (v48 != v62)
        {
          do
          {
            v49 = v48[1];
            *(v48 - 2) = *v48;
            *(v48 - 1) = v49;
            v48 += 2;
          }

          while (v48 != v46);
          v47 = v48 - 2;
        }

        v62 = v47;
        v50 = v58 + v34;
        v51 = v58 + v34 + 8;
        v52 = v59 - v51;
        if (v59 != v51)
        {
          memmove(v58 + v34, v51, v59 - v51);
          v38 = a4[1];
        }

        v59 = &v50[v52];
        if ((v38 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_70;
        }
      }

      v53 = HIDWORD(v65) - 1;
LABEL_69:
      HIDWORD(v65) = v53;
      goto LABEL_58;
    }

LABEL_70:
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (__p)
    {
      v62 = __p;
      operator delete(__p);
    }
  }
}

void sub_1270284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1270308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1270428(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127054C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1270664(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127077C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12708D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12709F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1270B14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1270C2C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1270D44(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1270E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1270FB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12710DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12711F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127130C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1271460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1271580(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12716A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12717BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12718D4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1271A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1271B48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1271C6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1271D84(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1271E9C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1271FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1272110(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1272234(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127234C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1272464(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12725B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12726D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12727FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1272914(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1272A2C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1272B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1272CA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1272DC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1272EDC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1272FF4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1273148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1273268(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127338C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12734A4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12735BC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1273710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1273830(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1273954(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1273A6C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1273B84(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1273CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1273DF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1273F1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1274034(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127414C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12742A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12743C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12744E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12745FC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1274714(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1274868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1274988(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1274AAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1274BC4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1274CDC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1274E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1274F50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1275074(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127518C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12752A4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12753F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1275518(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127563C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1275754(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127586C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12759C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1275AE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1275C04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1275D1C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1275E34(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1275F88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12760A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12761CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12762E4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12763FC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1276550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1276670(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1276794(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12768AC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12769C4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1276B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1276C38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1276D5C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1276E74(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1276F8C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12770E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1277200(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1277324(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127743C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1277554(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12776A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12777C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12778EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1277A04(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1277B1C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1277C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1277D90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1277EB4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1277FCC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12780E4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1278238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1278358(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127847C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1278594(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12786AC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1278800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1278920(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1278A44(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1278B5C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1278C74(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1278DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1278EE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127900C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1279124(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127923C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1279390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12794B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12795D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12796EC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1279804(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1279958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1279A78(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1279B9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1279CB4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1279DCC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1279F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127A040(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127A164(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127A27C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127A394(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_127A4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F31B0(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127A608(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F31B0(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127A72C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3274(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127A844(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127A95C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126F2FC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_127AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F32F8(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127ABD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F32F8(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127ACF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F33BC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127AE0C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127AF24(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_126FDD8(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_127B078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127B198(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127B2BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F34C4(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_127B3E8(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127B500(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

uint64_t *sub_127B624(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v7 = a7;
  v9 = a4;
  v10 = a3;
  v12 = a1;
  if (a4)
  {
    v13 = *a4;
  }

  else
  {
    v13 = 50331648;
  }

  v14 = a2[1];
  v104 = *a2;
  v110 = v13;
  *a5 = a6;
  if (a6 > a7)
  {
LABEL_5:
    *v10 = 1;
    *a5 = 0;
    return v14;
  }

  v108 = v14;
  while (2)
  {
    switch(a6)
    {
      case 1:
        v17 = sub_127C210(v12, a2, &v110);
        goto LABEL_204;
      case 2:
        v17 = sub_1236DD0(v12, a2, &v110);
        goto LABEL_204;
      case 3:
        if (!v9)
        {
          goto LABEL_211;
        }

        v17 = sub_1236F58(v12, a2, v9[5]);
        goto LABEL_204;
      case 4:
        if (!v9)
        {
          goto LABEL_211;
        }

        v59 = *(v9 + 1);
        if (!v59 || !*(v59 + 40))
        {
          goto LABEL_211;
        }

        v60 = sub_1234220(v59);
        v17 = sub_1236FB0(v12, a2, v60);
        goto LABEL_204;
      case 5:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v38 = sub_1237028(&v110);
        if ((v9[4] & 2) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v40 = *v38;
        v100 = v38[1];
        if (*v38 == v100)
        {
          goto LABEL_205;
        }

        v41 = 0.0;
        v42 = v39;
        do
        {
          if ((v40[2] & 2) != 0)
          {
            v43 = *v40;
            v111 = *v40;
            v44 = *a1;
            v45 = a1[1];
            while (v44 != v45)
            {
              if (*(v44[1] + 8) == *(v43 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v46 = i[1];
                  if (*v46 != 16803962 || *(v46 + 8) != 0x3000000746E6148 || (v47 = v44[1], *v47 != 16803962) || *(v47 + 8) != 0x3000000736E6148)
                  {
                    if (*v43 == *v46 && *(v43 + 8) == *(v46 + 8))
                    {
                      v112 = i[1];
                      v48 = sub_12374D8(&v111);
                      if (v48 > v41)
                      {
                        v42 = i;
                        v41 = v48;
                        if (v48 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v42;
                v42 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v44 += 2;
            }
          }

          v40 += 3;
          i = v42;
        }

        while (v40 != v100);
        goto LABEL_206;
      case 6:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v72 = sub_1237028(&v110);
        if ((v9[4] & 4) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v73 = *v72;
        v102 = v72[1];
        if (*v72 == v102)
        {
          goto LABEL_205;
        }

        v74 = 0.0;
        v75 = v39;
        do
        {
          if ((v73[2] & 4) != 0)
          {
            v76 = *v73;
            v111 = *v73;
            v77 = *a1;
            v78 = a1[1];
            while (v77 != v78)
            {
              if (*(v77[1] + 8) == *(v76 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v79 = i[1];
                  if (*v79 != 16803962 || *(v79 + 8) != 0x3000000746E6148 || (v80 = v77[1], *v80 != 16803962) || *(v80 + 8) != 0x3000000736E6148)
                  {
                    if (*v76 == *v79 && *(v76 + 8) == *(v79 + 8))
                    {
                      v112 = i[1];
                      v81 = sub_12374D8(&v111);
                      if (v81 > v74)
                      {
                        v75 = i;
                        v74 = v81;
                        if (v81 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v75;
                v75 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v77 += 2;
            }
          }

          v73 += 3;
          i = v75;
        }

        while (v73 != v102);
        goto LABEL_206;
      case 7:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v90 = sub_1237028(&v110);
        if ((v9[4] & 8) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v91 = *v90;
        v103 = v90[1];
        if (*v90 == v103)
        {
          goto LABEL_205;
        }

        v92 = 0.0;
        v93 = v39;
        do
        {
          if ((v91[2] & 8) != 0)
          {
            v94 = *v91;
            v111 = *v91;
            v95 = *a1;
            v96 = a1[1];
            while (v95 != v96)
            {
              if (*(v95[1] + 8) == *(v94 + 8))
              {
                for (i = *a2; i != v39; i += 2)
                {
                  v97 = i[1];
                  if (*v97 != 16803962 || *(v97 + 8) != 0x3000000746E6148 || (v98 = v95[1], *v98 != 16803962) || *(v98 + 8) != 0x3000000736E6148)
                  {
                    if (*v94 == *v97 && *(v94 + 8) == *(v97 + 8))
                    {
                      v112 = i[1];
                      v99 = sub_12374D8(&v111);
                      if (v99 > v92)
                      {
                        v93 = i;
                        v92 = v99;
                        if (v99 >= 1.0)
                        {
                          goto LABEL_206;
                        }
                      }
                    }
                  }

                  v39 = a2[1];
                }

                i = v93;
                v93 = v39;
                if (i != v39)
                {
                  goto LABEL_206;
                }
              }

              v95 += 2;
            }
          }

          v91 += 3;
          i = v93;
        }

        while (v91 != v103);
LABEL_206:
        v10 = a3;
        v7 = a7;
        goto LABEL_208;
      case 8:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v61 = sub_1237028(&v110);
        if ((v9[4] & 1) == 0)
        {
          goto LABEL_211;
        }

        v39 = a2[1];
        v112 = 0;
        v62 = *v61;
        v101 = v61[1];
        if (*v61 == v101)
        {
LABEL_205:
          i = v39;
          goto LABEL_206;
        }

        v63 = 0.0;
        v64 = v39;
        while (2)
        {
          v65 = *(v62 + 4);
          if ((v65 & 0xF) == 0)
          {
            goto LABEL_133;
          }

          v66 = *v62;
          if (v65 == 1 && v62[1] <= 0.5)
          {
            goto LABEL_133;
          }

          v111 = *v62;
          v67 = *a1;
          v68 = a1[1];
LABEL_118:
          if (v67 == v68)
          {
LABEL_133:
            v62 += 3;
            i = v64;
            if (v62 == v101)
            {
              goto LABEL_206;
            }

            continue;
          }

          break;
        }

        if (*(v67[1] + 8) != *(v66 + 8))
        {
          goto LABEL_132;
        }

        for (i = *a2; ; i += 2)
        {
          if (i == v39)
          {
            i = v64;
            v64 = v39;
            if (i != v39)
            {
              goto LABEL_206;
            }

LABEL_132:
            v67 += 2;
            goto LABEL_118;
          }

          v69 = i[1];
          if (*v69 != 16803962 || *(v69 + 8) != 0x3000000746E6148 || (v70 = v67[1], *v70 != 16803962) || *(v70 + 8) != 0x3000000736E6148)
          {
            if (*v66 == *v69 && *(v66 + 8) == *(v69 + 8))
            {
              v112 = i[1];
              v71 = sub_12374D8(&v111);
              if (v71 > v63)
              {
                v64 = i;
                v63 = v71;
                if (v71 >= 1.0)
                {
                  break;
                }
              }
            }
          }

          v39 = a2[1];
        }

        goto LABEL_206;
      case 9:
        v17 = sub_12370B4(v12, a2);
        goto LABEL_204;
      case 10:
        v17 = sub_12372C0(v12, a2);
        goto LABEL_204;
      case 11:
        v17 = sub_1237370(v12, a2);
        goto LABEL_204;
      case 12:
        if (!v9)
        {
          goto LABEL_211;
        }

        v37 = v9[5];
        if ((v37 & 0x80000000) != 0 || v37 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_211;
        }

        i = &v104[2 * v37];
        goto LABEL_210;
      case 13:
        if (!v9)
        {
          goto LABEL_211;
        }

        v49 = *(v9 + 1);
        if (!v49 || !*(v49 + 40))
        {
          goto LABEL_211;
        }

        v50 = sub_1234220(v49);
        v17 = sub_127C354(a2, v50, &v110);
LABEL_204:
        i = v17;
        goto LABEL_210;
      case 14:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v82 = sub_1237028(&v110);
        if ((v9[4] & 2) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v83 = *v82;
        v84 = v82[1];
        if (*v82 == v84)
        {
          goto LABEL_207;
        }

        v85 = 0.0;
        v86 = v29;
        do
        {
          if ((v83[16] & 2) == 0)
          {
            goto LABEL_177;
          }

          v111 = *v83;
          for (i = *a2; i != v29; i += 2)
          {
            v87 = i[1];
            v88 = *v87;
            if (*v87 == 16803962)
            {
              if (*(v87 + 8) == 0x3000000746E6148 || **v83 != 16803962)
              {
                goto LABEL_174;
              }
            }

            else
            {
              if (**v83 != v88)
              {
                goto LABEL_174;
              }

              if (v88 == 16802154)
              {
                v85 = 100.0;
                v86 = i;
                break;
              }
            }

            v112 = i[1];
            v89 = sub_12374D8(&v111);
            if (v89 > v85)
            {
              v86 = i;
              v85 = v89;
              if (v89 >= 1.0)
              {
                goto LABEL_208;
              }
            }

LABEL_174:
            v29 = a2[1];
          }

          i = v86;
          v86 = v29;
          if (i != v29)
          {
            break;
          }

LABEL_177:
          v83 += 24;
          i = v86;
        }

        while (v83 != v84);
LABEL_208:
        v9 = a4;
LABEL_209:
        v14 = v108;
        v12 = a1;
LABEL_210:
        if (i == v14)
        {
LABEL_211:
          LOBYTE(a6) = *a5 + 1;
          *a5 = a6;
          if (v7 < a6)
          {
            goto LABEL_5;
          }

          continue;
        }

        *v10 = *a5 > 9u;
        return i;
      case 15:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v28 = sub_1237028(&v110);
        if ((v9[4] & 4) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v30 = *v28;
        v31 = v28[1];
        if (*v28 == v31)
        {
          goto LABEL_207;
        }

        v32 = 0.0;
        v33 = v29;
        while (2)
        {
          if ((v30[16] & 4) == 0)
          {
            goto LABEL_50;
          }

          v111 = *v30;
          i = *a2;
LABEL_38:
          if (i == v29)
          {
            goto LABEL_49;
          }

          v34 = i[1];
          v35 = *v34;
          if (*v34 == 16803962)
          {
            if (*(v34 + 8) == 0x3000000746E6148 || **v30 != 16803962)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (**v30 != v35)
            {
              goto LABEL_47;
            }

            if (v35 == 16802154)
            {
              v32 = 100.0;
              v33 = i;
LABEL_49:
              i = v33;
              v33 = v29;
              if (i != v29)
              {
                goto LABEL_208;
              }

LABEL_50:
              v30 += 24;
              i = v33;
              if (v30 == v31)
              {
                goto LABEL_208;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v36 = sub_12374D8(&v111);
        if (v36 > v32)
        {
          v33 = i;
          v32 = v36;
          if (v36 >= 1.0)
          {
            goto LABEL_208;
          }
        }

LABEL_47:
        i += 2;
        v29 = a2[1];
        goto LABEL_38;
      case 16:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v51 = sub_1237028(&v110);
        if ((v9[4] & 8) == 0)
        {
          goto LABEL_211;
        }

        v29 = a2[1];
        v112 = 0;
        v52 = *v51;
        v53 = v51[1];
        if (*v51 == v53)
        {
LABEL_207:
          i = v29;
          goto LABEL_208;
        }

        v54 = 0.0;
        v55 = v29;
        while (2)
        {
          if ((v52[16] & 8) == 0)
          {
            goto LABEL_104;
          }

          v111 = *v52;
          i = *a2;
LABEL_92:
          if (i == v29)
          {
            goto LABEL_103;
          }

          v56 = i[1];
          v57 = *v56;
          if (*v56 == 16803962)
          {
            if (*(v56 + 8) == 0x3000000746E6148 || **v52 != 16803962)
            {
              goto LABEL_101;
            }
          }

          else
          {
            if (**v52 != v57)
            {
              goto LABEL_101;
            }

            if (v57 == 16802154)
            {
              v54 = 100.0;
              v55 = i;
LABEL_103:
              i = v55;
              v55 = v29;
              if (i != v29)
              {
                goto LABEL_208;
              }

LABEL_104:
              v52 += 24;
              i = v55;
              if (v52 == v53)
              {
                goto LABEL_208;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v58 = sub_12374D8(&v111);
        if (v58 > v54)
        {
          v55 = i;
          v54 = v58;
          if (v58 >= 1.0)
          {
            goto LABEL_208;
          }
        }

LABEL_101:
        i += 2;
        v29 = a2[1];
        goto LABEL_92;
      case 17:
        if (v110 == 50331648)
        {
          goto LABEL_211;
        }

        v18 = sub_1237028(&v110);
        if ((v9[4] & 1) == 0)
        {
          goto LABEL_211;
        }

        v19 = a2[1];
        v112 = 0;
        v20 = *v18;
        v21 = v18[1];
        if (*v18 == v21)
        {
          i = v19;
          goto LABEL_214;
        }

        v22 = 0.0;
        v23 = v19;
        while (2)
        {
          v24 = *(v20 + 4);
          if ((v24 & 0xF) == 0 || v24 == 1 && v20[1] <= 0.5)
          {
            goto LABEL_30;
          }

          v111 = *v20;
          i = *a2;
LABEL_18:
          if (i == v19)
          {
            goto LABEL_29;
          }

          v25 = i[1];
          v26 = *v25;
          if (*v25 == 16803962)
          {
            if (*(v25 + 8) == 0x3000000746E6148 || **v20 != 16803962)
            {
              goto LABEL_27;
            }
          }

          else
          {
            if (**v20 != v26)
            {
              goto LABEL_27;
            }

            if (v26 == 16802154)
            {
              v22 = 100.0;
              v23 = i;
LABEL_29:
              i = v23;
              v23 = v19;
              if (i != v19)
              {
                goto LABEL_214;
              }

LABEL_30:
              v20 += 3;
              i = v23;
              if (v20 == v21)
              {
                goto LABEL_214;
              }

              continue;
            }
          }

          break;
        }

        v112 = i[1];
        v27 = sub_12374D8(&v111);
        if (v27 > v22)
        {
          v23 = i;
          v22 = v27;
          if (v27 >= 1.0)
          {
LABEL_214:
            v7 = a7;
            goto LABEL_209;
          }
        }

LABEL_27:
        i += 2;
        v19 = a2[1];
        goto LABEL_18;
      default:
        goto LABEL_211;
    }
  }
}

uint64_t *sub_127C210(uint64_t **a1, uint64_t **a2, int *a3)
{
  v3 = a2[1];
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return a2[1];
  }

  v7 = *a2;
  v8 = *a3;
  v9 = 0.0;
  v10 = 0.5;
  v11 = a2[1];
  v12 = 1.0;
  while (1)
  {
    v18[0] = *v4;
    if (v7 != v3)
    {
      break;
    }

LABEL_13:
    v9 = v9 + 0.07000001;
    v12 = 1.0 - v9;
    v4 += 2;
    if (v10 >= 1.0 - v9 || v4 == v5)
    {
      return v11;
    }
  }

  v13 = v7;
  while (1)
  {
    v18[1] = *v13;
    v14 = sub_127C418(v18);
    if (v8 != 50331648 && *(v13[1] + 4) == *a3)
    {
      v14 = v14 + 0.0011;
    }

    v15 = v14 - v9;
    if (v15 > v10)
    {
      v10 = v15;
      v11 = v13;
      if (v15 >= v12)
      {
        return v13;
      }
    }

    v13 += 2;
    if (v13 == v3)
    {
      goto LABEL_13;
    }
  }
}

uint64_t *sub_127C354(uint64_t **a1, uint64_t a2, int *a3)
{
  v10[0] = a2;
  v10[1] = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, v10, &v11, 1uLL);
  v5 = sub_127C210(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_127C40C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

double sub_127C418(uint64_t *a1)
{
  v14 = 1.0;
  v2 = a1[1];
  if (*v2 == 6581877)
  {
    v11 = sub_123364C(v2);
    sub_1226EA4();
    v12 = sub_122FA64("und", (v11 + 8), (v11 + 4), (v11 + 16));
    v13 = *a1;
    v8 = sub_123364C(*a1);
    v9 = a1[1];
    v7 = v13;
    v6 = v12;
  }

  else
  {
    v3 = *a1;
    v4 = sub_123364C(*a1);
    v5 = a1[1];
    v6 = sub_123364C(v5);
    v7 = v3;
    v8 = v4;
    v9 = v5;
  }

  sub_127C4EC(v7, v8, v9, v6, &v14);
  return v14;
}

BOOL sub_127C4EC(_BOOL8 result, uint64_t a2, _DWORD *a3, uint64_t a4, double *a5)
{
  if (*a4 == 6581877)
  {
    v10 = 0.0;
LABEL_6:
    *a5 = v10;
    return result;
  }

  v9 = result;
  sub_127C5A4(result, a2, a3, a4, a5);
  sub_127C5FC(v9, a2, a3, a4, a5);
  sub_127C658(v9, a2, a3, a4, a5);
  result = sub_12274C0((a2 + 16), (a4 + 16));
  if (!result)
  {
    v10 = *a5 + -0.01;
    goto LABEL_6;
  }

  return result;
}

double sub_127C5A4(_DWORD *a1, _BYTE *a2, _DWORD *a3, _DWORD *a4, double *a5)
{
  if (*a2 == *a4)
  {
    if (*a2 == 16807024 && *a1 != *a3)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_127C6B4(a2, a4, a5);
  }

  return result;
}

double sub_127C5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (*(a2 + 8) == *(a4 + 8))
  {
    if (*(a1 + 8) != *(a3 + 8) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_127C798(a2, a4, a5);
  }

  return result;
}

double sub_127C658(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, double *a5)
{
  if (a2[1] == *(a4 + 4))
  {
    if (*(a1 + 4) != *(a3 + 4) && *a2 == 16807024)
    {
      result = *a5 + -0.001;
      *a5 = result;
    }
  }

  else
  {
    sub_127C900(a2, a4, a5);
  }

  return result;
}

_BYTE *sub_127C6B4(_BYTE *result, _DWORD *a2, double *a3)
{
  v3 = word_2321CC8[*result & 0x7F];
  v4 = word_2321CC8[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_13:
    v12 = 0.0;
  }

  else
  {
    v5 = v3;
    v6 = &dword_2321CB8[4 * v3 + 2];
    v7 = 16 * v4 - 16 * v5;
    while (1)
    {
      v8 = *(v6 - 2);
      if (v8 == 50331648 || v8 == *result)
      {
        v10 = *(v6 - 1);
        if (v10 == 50331648 || v10 == *a2)
        {
          break;
        }
      }

      v6 += 2;
      v7 -= 16;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    v12 = *v6;
  }

  *a3 = *a3 - v12;
  return result;
}

uint64_t sub_127C798(uint64_t result, uint64_t a2, double *a3)
{
  v3 = word_2321DF0[*result & 0x7F];
  v4 = word_2321DF0[(*result + 1) & 0x7F];
  if (v3 == v4)
  {
LABEL_21:
    v13 = 0.0;
  }

  else
  {
    v5 = &dword_2321DC8[10 * v3 + 4];
    v6 = 40 * v4 - 40 * v3;
    while (1)
    {
      v7 = *(v5 - 4);
      if (v7 == 50331648 || v7 == *result)
      {
        v9 = *(v5 - 1);
        if ((v9 == 0x700000000000000 || v9 == *(result + 8)) && (*v5 == 50331648 || *v5 == *a2))
        {
          v12 = *(v5 + 1);
          if (v12 == 0x700000000000000 || v12 == *(a2 + 8))
          {
            break;
          }
        }
      }

      v5 += 10;
      v6 -= 40;
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    v13 = *(v5 + 2);
  }

  *a3 = *a3 - v13;
  return result;
}

uint64_t sub_127C900(uint64_t result, uint64_t a2, double *a3)
{
  v3 = word_2321F18[*result & 0x7F];
  v4 = word_2321F18[(*result + 1) & 0x7F];
  v5 = *result;
  if (v3 == v4)
  {
LABEL_25:
    v13 = 1.0;
  }

  else
  {
    v6 = *(result + 8);
    v7 = *(result + 4);
    v8 = &dword_2321EF0[10 * v3 + 4];
    v9 = 40 * v4 - 40 * v3;
    while (1)
    {
      result = *(v8 - 4);
      if (result == 50331648 || result == v5)
      {
        result = *(v8 - 1);
        if (result == 0x700000000000000 || result == v6)
        {
          result = *(v8 - 3);
          if (result == 50331648 || result == v7)
          {
            result = *v8;
            if (result == 50331648 || result == *a2)
            {
              result = *(v8 + 1);
              if (result == 0x700000000000000 || result == *(a2 + 8))
              {
                result = v8[1];
                if (result == 50331648 || result == *(a2 + 4))
                {
                  break;
                }
              }
            }
          }
        }
      }

      v8 += 10;
      v9 -= 40;
      if (!v9)
      {
        goto LABEL_25;
      }
    }

    v13 = *(v8 + 2);
  }

  *a3 = *a3 - v13;
  return result;
}

uint64_t *sub_127CACC(uint64_t **a1, uint64_t a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
{
  __p = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_1239DB8(&__p, 0);
  sub_123A1D4(&v46, 0);
  sub_123A204(&__p, a3[1] - *a3);
  sub_123A2A4(&v46, a3[1] - *a3);
  v40 = a6;
  v41 = a7;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = *a2;
    v13 = (*(a2 + 8) - *a2) >> 4;
    do
    {
      v14 = *v10;
      if ((v14 & 0x80000000) == 0 && v14 < v13)
      {
        v15 = &v12[2 * v14];
        v16 = v50;
        if (v50 >= v51)
        {
          v18 = (v50 - __p) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_1794();
          }

          v20 = v51 - __p;
          if ((v51 - __p) >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_12395E8(&__p, v21);
          }

          v22 = (16 * v18);
          *v22 = *v15;
          v17 = 16 * v18 + 16;
          v23 = v22 - (v50 - __p);
          memcpy(v23, __p, v50 - __p);
          v24 = __p;
          __p = v23;
          v50 = v17;
          v51 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v50 = *v15;
          v17 = (v16 + 16);
        }

        v50 = v17;
        v25 = v47;
        if (v47 >= v48)
        {
          v27 = (v47 - v46) >> 3;
          if ((v27 + 1) >> 61)
          {
            sub_1794();
          }

          v28 = (v48 - v46) >> 2;
          if (v28 <= v27 + 1)
          {
            v28 = v27 + 1;
          }

          if (v48 - v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            sub_122422C(&v46, v29);
          }

          v30 = (8 * v27);
          *v30 = v15;
          v26 = 8 * v27 + 8;
          v31 = v30 - (v47 - v46);
          memcpy(v31, v46, v47 - v46);
          v32 = v46;
          v46 = v31;
          v47 = v26;
          v48 = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v47 = v15;
          v26 = (v25 + 8);
        }

        v47 = v26;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v33 = __p;
  v34 = v50;
  v35 = sub_127C210(a1, &__p, a5);
  if (v34 != v35)
  {
    *a4 = 0;
    v36 = v35 - v33;
    v37 = v46;
    v38 = *(v46 + (v36 >> 1));
LABEL_33:
    v47 = v37;
    operator delete(v37);
    goto LABEL_34;
  }

  v38 = sub_127B624(a1, a2, a4, a5, v40, 1u, v41);
  *a4 = 1;
  v37 = v46;
  if (v46)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  return v38;
}

void sub_127CDA4(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_127B624(a1, &__p, &v54, v51, &v53, v53, 1u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_127D204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_127D288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127D3A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127D4CC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F35CC(v12, __p, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v9;
}

void sub_127D5F8(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127D710(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

uint64_t *sub_127D834(uint64_t **a1, uint64_t **a2, _DWORD *a3, int *a4, _BYTE *a5, unsigned int a6, unsigned int a7)
{
  v9 = a4;
  v10 = a3;
  v12 = a1;
  if (a4)
  {
    v13 = *a4;
  }

  else
  {
    v13 = 50331648;
  }

  v14 = a2[1];
  v96 = *a2;
  v101 = v13;
  *a5 = a6;
  if (a6 <= a7)
  {
    v99 = v14;
    while (1)
    {
      switch(a6)
      {
        case 1:
          v17 = sub_127C210(v12, a2, &v101);
          goto LABEL_172;
        case 2:
          v17 = sub_1236DD0(v12, a2, &v101);
          goto LABEL_172;
        case 3:
          if (!v9)
          {
            goto LABEL_179;
          }

          v17 = sub_1236F58(v12, a2, v9[5]);
          goto LABEL_172;
        case 4:
          if (!v9)
          {
            goto LABEL_179;
          }

          v55 = *(v9 + 1);
          if (!v55 || !*(v55 + 40))
          {
            goto LABEL_179;
          }

          v56 = sub_1234220(v55);
          v17 = sub_1236FB0(v12, a2, v56);
          goto LABEL_172;
        case 5:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v36 = sub_1237028(&v101);
          if ((v9[4] & 2) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v38 = *v36;
          v92 = v36[1];
          if (*v36 == v92)
          {
            goto LABEL_173;
          }

          v39 = 0.0;
          v40 = v37;
          do
          {
            if ((v38[2] & 2) != 0)
            {
              v41 = *v38;
              v102 = *v38;
              v43 = *a1;
              v42 = a1[1];
              while (v43 != v42)
              {
                if (*(v43[1] + 8) == *(v41 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v44 = i[1];
                    if (*v41 == *v44 && *(v41 + 8) == *(v44 + 8))
                    {
                      v103 = i[1];
                      v45 = sub_12374D8(&v102);
                      if (v45 > v39)
                      {
                        v40 = i;
                        v39 = v45;
                        if (v45 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v40;
                  v40 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v43 += 2;
              }
            }

            v38 += 3;
            i = v40;
          }

          while (v38 != v92);
          goto LABEL_174;
        case 6:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v67 = sub_1237028(&v101);
          if ((v9[4] & 4) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v68 = *v67;
          v94 = v67[1];
          if (*v67 == v94)
          {
            goto LABEL_173;
          }

          v69 = 0.0;
          v70 = v37;
          do
          {
            if ((v68[2] & 4) != 0)
            {
              v71 = *v68;
              v102 = *v68;
              v73 = *a1;
              v72 = a1[1];
              while (v73 != v72)
              {
                if (*(v73[1] + 8) == *(v71 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v74 = i[1];
                    if (*v71 == *v74 && *(v71 + 8) == *(v74 + 8))
                    {
                      v103 = i[1];
                      v75 = sub_12374D8(&v102);
                      if (v75 > v69)
                      {
                        v70 = i;
                        v69 = v75;
                        if (v75 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v70;
                  v70 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v73 += 2;
              }
            }

            v68 += 3;
            i = v70;
          }

          while (v68 != v94);
          goto LABEL_174;
        case 7:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v83 = sub_1237028(&v101);
          if ((v9[4] & 8) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v84 = *v83;
          v95 = v83[1];
          if (*v83 == v95)
          {
            goto LABEL_173;
          }

          v85 = 0.0;
          v86 = v37;
          do
          {
            if ((v84[2] & 8) != 0)
            {
              v87 = *v84;
              v102 = *v84;
              v89 = *a1;
              v88 = a1[1];
              while (v89 != v88)
              {
                if (*(v89[1] + 8) == *(v87 + 8))
                {
                  for (i = *a2; i != v37; i += 2)
                  {
                    v90 = i[1];
                    if (*v87 == *v90 && *(v87 + 8) == *(v90 + 8))
                    {
                      v103 = i[1];
                      v91 = sub_12374D8(&v102);
                      if (v91 > v85)
                      {
                        v86 = i;
                        v85 = v91;
                        if (v91 >= 1.0)
                        {
                          goto LABEL_174;
                        }
                      }
                    }

                    v37 = a2[1];
                  }

                  i = v86;
                  v86 = v37;
                  if (i != v37)
                  {
                    goto LABEL_174;
                  }
                }

                v89 += 2;
              }
            }

            v84 += 3;
            i = v86;
          }

          while (v84 != v95);
LABEL_174:
          v10 = a3;
          v9 = a4;
          goto LABEL_176;
        case 8:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v57 = sub_1237028(&v101);
          if ((v9[4] & 1) == 0)
          {
            goto LABEL_179;
          }

          v37 = a2[1];
          v103 = 0;
          v58 = *v57;
          v93 = v57[1];
          if (*v57 == v93)
          {
LABEL_173:
            i = v37;
            goto LABEL_174;
          }

          v59 = 0.0;
          v60 = v37;
          while (2)
          {
            v61 = *(v58 + 4);
            if ((v61 & 0xF) == 0)
            {
              goto LABEL_113;
            }

            v62 = *v58;
            if (v61 == 1 && v58[1] <= 0.5)
            {
              goto LABEL_113;
            }

            v102 = *v58;
            v64 = *a1;
            v63 = a1[1];
LABEL_102:
            if (v64 == v63)
            {
LABEL_113:
              v58 += 3;
              i = v60;
              if (v58 == v93)
              {
                goto LABEL_174;
              }

              continue;
            }

            break;
          }

          if (*(v64[1] + 8) != *(v62 + 8))
          {
            goto LABEL_112;
          }

          for (i = *a2; ; i += 2)
          {
            if (i == v37)
            {
              i = v60;
              v60 = v37;
              if (i != v37)
              {
                goto LABEL_174;
              }

LABEL_112:
              v64 += 2;
              goto LABEL_102;
            }

            v65 = i[1];
            if (*v62 == *v65 && *(v62 + 8) == *(v65 + 8))
            {
              v103 = i[1];
              v66 = sub_12374D8(&v102);
              if (v66 > v59)
              {
                v60 = i;
                v59 = v66;
                if (v66 >= 1.0)
                {
                  break;
                }
              }
            }

            v37 = a2[1];
          }

          goto LABEL_174;
        case 9:
          v17 = sub_12370B4(v12, a2);
          goto LABEL_172;
        case 10:
          v17 = sub_12372C0(v12, a2);
          goto LABEL_172;
        case 11:
          v17 = sub_1237370(v12, a2);
          goto LABEL_172;
        case 12:
          if (!v9)
          {
            goto LABEL_179;
          }

          v35 = v9[5];
          if ((v35 & 0x80000000) != 0 || v35 >= ((a2[1] - *a2) >> 4))
          {
            goto LABEL_179;
          }

          i = &v96[2 * v35];
          goto LABEL_178;
        case 13:
          if (!v9)
          {
            goto LABEL_179;
          }

          v46 = *(v9 + 1);
          if (!v46 || !*(v46 + 40))
          {
            goto LABEL_179;
          }

          v47 = sub_1234220(v46);
          v17 = sub_127E250(a2, v47, &v101);
LABEL_172:
          i = v17;
          goto LABEL_178;
        case 14:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v76 = sub_1237028(&v101);
          if ((v9[4] & 2) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v77 = *v76;
          v78 = v76[1];
          if (*v76 == v78)
          {
            goto LABEL_175;
          }

          v79 = 0.0;
          v80 = v28;
          do
          {
            if ((v77[16] & 2) != 0)
            {
              v102 = *v77;
              for (i = *a2; i != v28; i += 2)
              {
                v81 = **v77;
                if (v81 == *i[1])
                {
                  if (v81 == 16802154)
                  {
                    v79 = 100.0;
                    v80 = i;
                    break;
                  }

                  v103 = i[1];
                  v82 = sub_12374D8(&v102);
                  if (v82 > v79)
                  {
                    v80 = i;
                    v79 = v82;
                    if (v82 >= 1.0)
                    {
                      goto LABEL_176;
                    }
                  }
                }

                v28 = a2[1];
              }

              i = v80;
              v80 = v28;
              if (i != v28)
              {
                break;
              }
            }

            v77 += 24;
            i = v80;
          }

          while (v77 != v78);
          goto LABEL_176;
        case 15:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v27 = sub_1237028(&v101);
          if ((v9[4] & 4) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v29 = *v27;
          v30 = v27[1];
          if (*v27 == v30)
          {
            goto LABEL_175;
          }

          v31 = 0.0;
          v32 = v28;
          break;
        case 16:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v48 = sub_1237028(&v101);
          if ((v9[4] & 8) == 0)
          {
            goto LABEL_179;
          }

          v28 = a2[1];
          v103 = 0;
          v49 = *v48;
          v50 = v48[1];
          if (*v48 == v50)
          {
LABEL_175:
            i = v28;
            goto LABEL_176;
          }

          v51 = 0.0;
          v52 = v28;
          while (2)
          {
            if ((v49[16] & 8) == 0)
            {
              goto LABEL_88;
            }

            v102 = *v49;
            i = *a2;
LABEL_80:
            if (i == v28)
            {
              goto LABEL_87;
            }

            v53 = **v49;
            if (v53 != *i[1])
            {
              goto LABEL_85;
            }

            if (v53 == 16802154)
            {
              v51 = 100.0;
              v52 = i;
LABEL_87:
              i = v52;
              v52 = v28;
              if (i != v28)
              {
                goto LABEL_176;
              }

LABEL_88:
              v49 += 24;
              i = v52;
              if (v49 == v50)
              {
                goto LABEL_176;
              }

              continue;
            }

            break;
          }

          v103 = i[1];
          v54 = sub_12374D8(&v102);
          if (v54 <= v51 || (v52 = i, v51 = v54, v54 < 1.0))
          {
LABEL_85:
            i += 2;
            v28 = a2[1];
            goto LABEL_80;
          }

          goto LABEL_176;
        case 17:
          if (v101 == 50331648)
          {
            goto LABEL_179;
          }

          v18 = sub_1237028(&v101);
          if ((v9[4] & 1) == 0)
          {
            goto LABEL_179;
          }

          v19 = a2[1];
          v103 = 0;
          v20 = *v18;
          v21 = v18[1];
          if (*v18 == v21)
          {
            i = v19;
            goto LABEL_182;
          }

          v22 = 0.0;
          v23 = v19;
          while (2)
          {
            v24 = *(v20 + 4);
            if ((v24 & 0xF) == 0 || v24 == 1 && v20[1] <= 0.5)
            {
              goto LABEL_26;
            }

            v102 = *v20;
            i = *a2;
LABEL_18:
            if (i == v19)
            {
              goto LABEL_25;
            }

            v25 = **v20;
            if (v25 != *i[1])
            {
              goto LABEL_23;
            }

            if (v25 == 16802154)
            {
              v22 = 100.0;
              v23 = i;
LABEL_25:
              i = v23;
              v23 = v19;
              if (i != v19)
              {
                goto LABEL_182;
              }

LABEL_26:
              v20 += 3;
              i = v23;
              if (v20 == v21)
              {
                goto LABEL_182;
              }

              continue;
            }

            break;
          }

          v103 = i[1];
          v26 = sub_12374D8(&v102);
          if (v26 <= v22 || (v23 = i, v22 = v26, v26 < 1.0))
          {
LABEL_23:
            i += 2;
            v19 = a2[1];
            goto LABEL_18;
          }

LABEL_182:
          v9 = a4;
          goto LABEL_177;
        default:
          goto LABEL_179;
      }

      do
      {
        if ((v29[16] & 4) != 0)
        {
          v102 = *v29;
          for (i = *a2; i != v28; i += 2)
          {
            v33 = **v29;
            if (v33 == *i[1])
            {
              if (v33 == 16802154)
              {
                v31 = 100.0;
                v32 = i;
                break;
              }

              v103 = i[1];
              v34 = sub_12374D8(&v102);
              if (v34 > v31)
              {
                v32 = i;
                v31 = v34;
                if (v34 >= 1.0)
                {
                  goto LABEL_176;
                }
              }
            }

            v28 = a2[1];
          }

          i = v32;
          v32 = v28;
          if (i != v28)
          {
            break;
          }
        }

        v29 += 24;
        i = v32;
      }

      while (v29 != v30);
LABEL_176:
      v12 = a1;
LABEL_177:
      v14 = v99;
LABEL_178:
      if (i != v14)
      {
        break;
      }

LABEL_179:
      LOBYTE(a6) = *a5 + 1;
      *a5 = a6;
      if (a7 < a6)
      {
        goto LABEL_5;
      }
    }

    *v10 = *a5 > 9u;
  }

  else
  {
LABEL_5:
    *v10 = 1;
    *a5 = 0;
    return v14;
  }

  return i;
}

uint64_t *sub_127E250(uint64_t **a1, uint64_t a2, int *a3)
{
  v10[0] = a2;
  v10[1] = sub_123364C(a2);
  v8 = 0;
  v9 = 0;
  __p = 0;
  sub_1239538(&__p, v10, &v11, 1uLL);
  v5 = sub_127C210(&__p, a1, a3);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_127E308(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_4A48(a1);
}

uint64_t *sub_127E314(uint64_t **a1, uint64_t a2, unsigned int **a3, _DWORD *a4, int *a5, _BYTE *a6, unsigned int a7)
{
  __p = 0;
  v50 = 0;
  v51 = 0;
  v46 = 0;
  v47 = 0;
  v48 = 0;
  sub_1239DB8(&__p, 0);
  sub_123A1D4(&v46, 0);
  sub_123A204(&__p, a3[1] - *a3);
  sub_123A2A4(&v46, a3[1] - *a3);
  v40 = a6;
  v41 = a7;
  v10 = *a3;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = *a2;
    v13 = (*(a2 + 8) - *a2) >> 4;
    do
    {
      v14 = *v10;
      if ((v14 & 0x80000000) == 0 && v14 < v13)
      {
        v15 = &v12[2 * v14];
        v16 = v50;
        if (v50 >= v51)
        {
          v18 = (v50 - __p) >> 4;
          v19 = v18 + 1;
          if ((v18 + 1) >> 60)
          {
            sub_1794();
          }

          v20 = v51 - __p;
          if ((v51 - __p) >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            sub_12395E8(&__p, v21);
          }

          v22 = (16 * v18);
          *v22 = *v15;
          v17 = 16 * v18 + 16;
          v23 = v22 - (v50 - __p);
          memcpy(v23, __p, v50 - __p);
          v24 = __p;
          __p = v23;
          v50 = v17;
          v51 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v50 = *v15;
          v17 = (v16 + 16);
        }

        v50 = v17;
        v25 = v47;
        if (v47 >= v48)
        {
          v27 = (v47 - v46) >> 3;
          if ((v27 + 1) >> 61)
          {
            sub_1794();
          }

          v28 = (v48 - v46) >> 2;
          if (v28 <= v27 + 1)
          {
            v28 = v27 + 1;
          }

          if (v48 - v46 >= 0x7FFFFFFFFFFFFFF8)
          {
            v29 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            sub_122422C(&v46, v29);
          }

          v30 = (8 * v27);
          *v30 = v15;
          v26 = 8 * v27 + 8;
          v31 = v30 - (v47 - v46);
          memcpy(v31, v46, v47 - v46);
          v32 = v46;
          v46 = v31;
          v47 = v26;
          v48 = 0;
          if (v32)
          {
            operator delete(v32);
          }
        }

        else
        {
          *v47 = v15;
          v26 = (v25 + 8);
        }

        v47 = v26;
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v33 = __p;
  v34 = v50;
  v35 = sub_127C210(a1, &__p, a5);
  if (v34 != v35)
  {
    *a4 = 0;
    v36 = v35 - v33;
    v37 = v46;
    v38 = *(v46 + (v36 >> 1));
LABEL_33:
    v47 = v37;
    operator delete(v37);
    goto LABEL_34;
  }

  v38 = sub_127D834(a1, a2, a4, a5, v40, 1u, v41);
  *a4 = 1;
  v37 = v46;
  if (v46)
  {
    goto LABEL_33;
  }

LABEL_34:
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  return v38;
}

void sub_127E5EC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v5 = a2[1] - *a2;
  if (v5)
  {
    sub_123196C(a4, v5 >> 4);
    LODWORD(v61) = 50331648;
    *(&v61 + 1) = 0;
    v62 = -4294967282;
    if (a3)
    {
      v61 = *a3;
      v62 = *(a3 + 2);
      v51 = &v61;
    }

    else
    {
      v51 = 0;
    }

    __p = 0;
    v59 = 0;
    v60 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0;
    sub_1239DB8(&__p, 0);
    sub_123A1D4(&v55, 0);
    v8 = *a2;
    if (*a2 == a2[1])
    {
      v27 = *a2;
    }

    else
    {
      v9 = *a2;
      do
      {
        v10 = v59;
        if (v59 >= v60)
        {
          v12 = (v59 - __p) >> 4;
          v13 = v12 + 1;
          if ((v12 + 1) >> 60)
          {
            sub_1794();
          }

          v14 = v60 - __p;
          if ((v60 - __p) >> 3 > v13)
          {
            v13 = v14 >> 3;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            sub_12395E8(&__p, v15);
          }

          v16 = (16 * v12);
          *v16 = *v8;
          v11 = 16 * v12 + 16;
          v17 = v16 - (v59 - __p);
          memcpy(v17, __p, v59 - __p);
          v18 = __p;
          __p = v17;
          v59 = v11;
          v60 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v59 = *v8;
          v11 = (v10 + 2);
        }

        v59 = v11;
        v19 = v56;
        if (v56 >= v57)
        {
          v21 = (v56 - v55) >> 3;
          if ((v21 + 1) >> 61)
          {
            sub_1794();
          }

          v22 = (v57 - v55) >> 2;
          if (v22 <= v21 + 1)
          {
            v22 = v21 + 1;
          }

          if (v57 - v55 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v22;
          }

          if (v23)
          {
            sub_122422C(&v55, v23);
          }

          v24 = (8 * v21);
          *v24 = v9;
          v20 = 8 * v21 + 8;
          v25 = v24 - (v56 - v55);
          memcpy(v25, v55, v56 - v55);
          v26 = v55;
          v55 = v25;
          v56 = v20;
          v57 = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v56 = v9;
          v20 = (v19 + 8);
        }

        v56 = v20;
        ++v8;
        ++v9;
      }

      while (v8 != a2[1]);
      v27 = *a2;
    }

    v54 = 1;
    v53 = 1;
    if ((a4[1] - *a4) >> 3 < (v8 - v27))
    {
      while (1)
      {
        v28 = sub_127D834(a1, &__p, &v54, v51, &v53, v53, 1u);
        if (v59 == v28)
        {
          goto LABEL_61;
        }

        v29 = v28;
        v30 = v28 - __p;
        v31 = (v28 - __p) >> 1;
        v32 = (v54 << 32) | ((*(v55 + v31) - *a2) >> 4);
        v34 = a4[1];
        v33 = a4[2];
        if (v34 >= v33)
        {
          v36 = (v34 - *a4) >> 3;
          if ((v36 + 1) >> 61)
          {
            sub_1794();
          }

          v37 = v33 - *a4;
          v38 = v37 >> 2;
          if (v37 >> 2 <= (v36 + 1))
          {
            v38 = v36 + 1;
          }

          if (v37 >= 0x7FFFFFFFFFFFFFF8)
          {
            v39 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v39 = v38;
          }

          if (v39)
          {
            sub_1232E30(a4, v39);
          }

          *(8 * v36) = v32;
          v35 = 8 * v36 + 8;
          v40 = a4[1] - *a4;
          v41 = (8 * v36 - v40);
          memcpy(v41, *a4, v40);
          v42 = *a4;
          *a4 = v41;
          a4[1] = v35;
          a4[2] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v34 = v32;
          v35 = (v34 + 1);
        }

        a4[1] = v35;
        if (a3)
        {
          if ((v62 & 0x8000000000000000) == 0)
          {
            v50 = -1;
            if (v53 == 3 || v53 == 12)
            {
              goto LABEL_60;
            }

            if (SHIDWORD(v62) > ((v29 - __p) >> 4))
            {
              break;
            }
          }
        }

LABEL_49:
        v43 = v59;
        v44 = (__p + v30);
        v45 = (__p + v30 + 16);
        if (v45 != v59)
        {
          do
          {
            v46 = v45[1];
            *(v45 - 2) = *v45;
            *(v45 - 1) = v46;
            v45 += 2;
          }

          while (v45 != v43);
          v44 = v45 - 2;
        }

        v59 = v44;
        v47 = v55 + v31;
        v48 = v55 + v31 + 8;
        v49 = v56 - v48;
        if (v56 != v48)
        {
          memmove(v55 + v31, v48, v56 - v48);
          v35 = a4[1];
        }

        v56 = &v47[v49];
        if ((v35 - *a4) >> 3 >= ((a2[1] - *a2) >> 4))
        {
          goto LABEL_61;
        }
      }

      v50 = HIDWORD(v62) - 1;
LABEL_60:
      HIDWORD(v62) = v50;
      goto LABEL_49;
    }

LABEL_61:
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (__p)
    {
      v59 = __p;
      operator delete(__p);
    }
  }
}

void sub_127EA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_127EAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127EBF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127ED14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127EE2C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127EF44(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_127F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127F1B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127F2DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127F3F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127F50C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_127F660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127F780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127F8A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127F9BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_127FAD4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_127FC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_127FD48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_127FE6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_127FF84(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_128009C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12801F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1280310(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1280434(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_128054C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1280664(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12807B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12808D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12809FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1280B14(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1280C2C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1280D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1280EA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1280FC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12810DC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12811F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1281348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1281468(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_128158C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12816A4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_12817BC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1281910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1281A30(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_1281B54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1281C6C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1281D84(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_1281ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3548(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_1281FF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3548(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_128211C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F35CC(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1282234(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_128234C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_127E5EC(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

unint64_t sub_12824A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F3440(v8, __p, 0, &v9);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v8[0])
  {
    v8[1] = v8[0];
    operator delete(v8[0]);
  }

  return v5;
}

unint64_t sub_12825C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F3440(v10, __p, a4, &v11);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }

  return v7;
}

unint64_t sub_12826E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F34C4(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12827FC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v7, __p, 0, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }
}

void sub_1282914(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_127CDA4(v9, __p, a3, a4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}