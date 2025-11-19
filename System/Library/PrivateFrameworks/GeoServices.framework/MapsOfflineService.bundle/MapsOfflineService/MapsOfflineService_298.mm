unint64_t sub_125082C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1250944(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_1250A5C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1250BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1250CD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1250DF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1250F0C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1251024(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1251178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_1251298(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_12513BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12514D4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_12515EC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1251740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1251860(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1251984(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1251A9C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1251BB4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1251D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_1251E28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_1251F4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1252064(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_125217C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_12522D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_12523F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1252514(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125262C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1252744(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1252898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_12529B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_1252ADC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1252BF4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_1252D0C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1252E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1252F80(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_12530A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12531BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_12532D4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1253428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_1253548(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_125366C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1253784(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_125389C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_12539F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1253B10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1253C34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1253D4C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1253E64(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1253FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_12540D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_12541FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1254314(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_125442C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1254580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_12546A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_12547C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12548DC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_12549F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1254B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123C87C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_1254C68(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123C87C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_1254D8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1254EA4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_1254FBC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1255110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1255230(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1255354(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125546C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1255584(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_12556D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123D8DC(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_12557F8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123D8DC(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_125591C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1255A34(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_1255B4C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1255CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2D90(v8, __p, 0, &v9);
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

unint64_t sub_1255DC0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2D90(v10, __p, a4, &v11);
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

unint64_t sub_1255EE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2E14(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1255FFC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v7, __p, 0, a3);
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

void sub_1256114(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1249D94(v9, __p, a3, a4);
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

unint64_t sub_1256268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_123E93C(a3, &unk_2768760, __p);
  v9 = 0;
  v5 = sub_21F2E98(v8, __p, 0, &v9);
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

unint64_t sub_1256388(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_123E93C(a3, &unk_2768760, __p);
  v11 = 0;
  v7 = sub_21F2E98(v10, __p, a4, &v11);
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

unint64_t sub_12564AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F2F1C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12565C4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v7, __p, 0, a3);
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

void sub_12566DC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_124B5DC(v9, __p, a3, a4);
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

unint64_t sub_1256830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_1256950(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_1256A74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F3024(v12, __p, a4, a5);
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

void sub_1256BA0(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_1256CB8(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

void sub_1256DDC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_1236040(a1, &__p, &v54, v51, &v53, v53, 0x11u);
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

void sub_125723C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_12572C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_12573E0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1257504(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F312C(v12, __p, a4, a5);
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

void sub_1257630(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_1257748(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

void sub_125786C(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_123AF04(a1, &__p, &v54, v51, &v53, v53, 0x11u);
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

void sub_1257CCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1257D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1257E70(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1257F94(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12580AC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_12581C4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_1258318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1258438(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_125855C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1258674(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125878C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_12588E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1258A00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1258B24(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1258C3C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_1258D54(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_1258EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1258FC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_12590EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1259204(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125931C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_1259470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1259590(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_12596B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12597CC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_12598E4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_1259A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1259B58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1259C7C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1259D94(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_1259EAC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125A000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_125A120(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_125A244(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125A35C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125A474(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125A6E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125A80C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125A924(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125AA3C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125AB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125ACB0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125ADD4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125AEEC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125B004(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125B158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125B278(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125B39C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125B4B4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125B5CC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125B720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125B840(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125B964(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125BA7C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125BB94(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125BE08(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125BF2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125C044(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125C15C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125C2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125C3D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125C4F4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125C60C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125C724(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125C878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_125C998(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_125CABC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125CBD4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125CCEC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125CE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_125CF60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_125D084(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125D19C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125D2B4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125D408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125D528(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125D64C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125D764(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125D87C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125D9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125DAF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125DC14(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125DD2C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125DE44(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125E0B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125E1DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125E2F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125E40C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125E560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125E680(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125E7A4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125E8BC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125E9D4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125EB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125EC48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125ED6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125EE84(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125EF9C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125F0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125F210(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125F334(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125F44C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_125F564(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_125F6B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_125F7D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_125F8FC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_125FA14(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_125FB2C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_125FC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_125FDA0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_125FEC4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_125FFDC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_12600F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_1260248(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1260368(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_126048C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_12605A4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_12606BC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_1235FAC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_1260810(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1260930(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_1260A54(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_1260B6C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_1260C84(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_1260DD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1260EF8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_126101C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_1261134(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_126124C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123C87C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_12613A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_12614C0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_12615E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_12616FC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_1261814(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_1261968(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1261A88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_1261BAC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_1261CC4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_1261DDC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123D8DC(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_1261F30(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1262050(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_1262174(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_126228C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v7, __p, 0, a3);
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

void sub_12623A4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_1256DDC(v9, __p, a3, a4);
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

unint64_t sub_12624F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_1262618(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
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

unint64_t sub_126273C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
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

void sub_1262854(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v7);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v7, __p, 0, a3);
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

void sub_126296C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a1, &unk_2768760, v9);
  sub_123E93C(a2, &unk_2768760, __p);
  sub_125786C(v9, __p, a3, a4);
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

unint64_t sub_1262AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_1262BE0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_1262D04(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F3024(v12, __p, a4, a5);
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

void sub_1262E30(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_1262F48(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

void sub_126306C(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_1236040(a1, &__p, &v54, v51, &v53, v53, 0x11u);
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

void sub_12634CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1263550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1263670(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1263794(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, __p);
  v9 = sub_21F312C(v12, __p, a4, a5);
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

void sub_12638C0(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_12639D8(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

void sub_1263AFC(uint64_t **a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, const void **a4@<X8>)
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
        v28 = sub_123AF04(a1, &__p, &v54, v51, &v53, v53, 0x11u);
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

void sub_1263F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_1263FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1264100(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1264224(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126433C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_1264454(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

unint64_t sub_12645A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_12646C8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_12647EC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1264904(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_1264A1C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

unint64_t sub_1264B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1264C90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1264DB4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1264ECC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_1264FE4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

unint64_t sub_1265138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1265258(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_126537C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1265494(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_12655AC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

unint64_t sub_1265700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1265820(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1265944(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1265A5C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_1265B74(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

unint64_t sub_1265CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v8);
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

unint64_t sub_1265DE8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v10);
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

unint64_t sub_1265F0C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1266024(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v7);
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

void sub_126613C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1235F18(a1, &unk_2768760, v9);
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

unint64_t sub_1266290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_12663B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_12664D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12665EC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_1266704(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_1266858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1266978(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_1266A9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1266BB4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_1266CCC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_1266E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1266F40(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_1267064(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126717C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_1267294(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_12673E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1267508(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_126762C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1267744(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_126785C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_12679B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1267AD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_1267BF4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1267D0C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_1267E24(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_1267F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1268098(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_12681BC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12682D4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_12683EC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_1268540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1268660(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_1268784(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126889C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_12689B4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_1268B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v8);
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

unint64_t sub_1268C28(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v10);
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

unint64_t sub_1268D4C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1268E64(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v7);
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

void sub_1268F7C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_123F99C(a1, &unk_2768760, v9);
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

unint64_t sub_12690D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_12691F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_1269314(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126942C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_1269544(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_1269698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_12697B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_12698DC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_1235FAC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_12699F4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_1269B0C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_1269C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_1269D80(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_1269EA4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_1269FBC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_126A0D4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_126A228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_126A348(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_126A46C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123C87C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126A584(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_126A69C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_126A7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_126A910(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_126AA34(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126AB4C(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_126AC64(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_126ADB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_126AED8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_126AFFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123D8DC(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126B114(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_126B22C(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_126B380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_126B4A0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_126B5C4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F3024(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126B6DC(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_126B7F4(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_126B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v8);
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

unint64_t sub_126BA68(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v10);
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

unint64_t sub_126BB8C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int **a4, int *a5)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a2, &unk_2768760, v12);
  sub_123E93C(a3, &unk_2768760, v11);
  v9 = sub_21F312C(v12, v11, a4, a5);
  sub_1289820(v11);
  return v9;
}

void sub_126BCA4(uint64_t a1@<X1>, uint64_t a2@<X2>, const void **a3@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v7);
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

void sub_126BDBC(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, const void **a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1242870(a1, &unk_2768760, v9);
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

unint64_t sub_126BF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v8);
  sub_1235FAC(a3, &unk_2768760, __p);
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

unint64_t sub_126C030(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  if ((atomic_load_explicit(&qword_2768768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2768768))
  {
    nullsub_1(&unk_2768760);
    __cxa_guard_release(&qword_2768768);
  }

  sub_1245744(a2, &unk_2768760, v10);
  sub_1235FAC(a3, &unk_2768760, __p);
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