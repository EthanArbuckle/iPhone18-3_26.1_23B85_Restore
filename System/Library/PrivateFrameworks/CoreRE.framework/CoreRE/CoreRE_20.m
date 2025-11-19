void re::anonymous namespace::$_45::__invoke(uint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v6 = (a1 + 16);
    for (i = 1; a2 > i; i += 3)
    {
      v8 = *(v6 - 1);
      v9 = a3[5];
      if (v9 <= v8)
      {
        goto LABEL_11;
      }

      v10 = *(v6 - 2);
      v11 = a3[15];
      if (v11 <= v10)
      {
        goto LABEL_12;
      }

      v17 = *(a3[14] + 16 * v10);
      v12 = __sincosf_stret(*(a3[4] + 4 * v8) * 0.5);
      v13 = i + 1;
      if (a2 <= i + 1)
      {
        goto LABEL_13;
      }

      v14 = *v6;
      v15 = a3[11];
      if (v15 <= *v6)
      {
        goto LABEL_14;
      }

      v16 = vmulq_n_f32(v17, v12.__sinval);
      v16.i32[3] = LODWORD(v12.__cosval);
      *(a3[10] + 16 * v14) = v16;
      v6 += 3;
      if (!--v5)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v9);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v15);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_46::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[15];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      v10 = a3[5];
      if (v10 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v4;
      v12 = a3[11];
      if (v12 <= *v4)
      {
        goto LABEL_16;
      }

      v13 = *(a3[14] + 16 * v6);
      HIDWORD(v13) = *(a3[4] + 4 * v9);
      *(a3[10] + 16 * v11) = v13;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v10);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_47::__invoke(uint64_t result, unint64_t a2, void *a3, __n128 a4)
{
  if (a2 >= 4)
  {
    v4 = 0;
    v5 = a2 >> 2;
    v6 = (result + 16);
    while (a2 > v4)
    {
      v7 = *(v6 - 2);
      v8 = a3[5];
      if (v8 <= v7)
      {
        goto LABEL_14;
      }

      v9 = v4 + 1;
      if (a2 <= v4 + 1)
      {
        goto LABEL_15;
      }

      v10 = *(v6 - 1);
      if (v8 <= v10)
      {
        goto LABEL_16;
      }

      v11 = v4 + 2;
      if (a2 <= v4 + 2)
      {
        goto LABEL_17;
      }

      v12 = *v6;
      if (v8 <= *v6)
      {
        goto LABEL_18;
      }

      v13 = v4 + 3;
      if (a2 <= v4 + 3)
      {
        goto LABEL_19;
      }

      v14 = v6[1];
      v15 = a3[15];
      if (v15 <= v14)
      {
        goto LABEL_20;
      }

      v16 = a3[4];
      a4.n128_u32[0] = *(v16 + 4 * v7);
      a4.n128_u32[1] = *(v16 + 4 * v10);
      a4.n128_u32[2] = *(v16 + 4 * v12);
      *(a3[14] + 16 * v14) = a4;
      v4 += 4;
      v6 += 4;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v4, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, v8);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v8);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v8);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v15);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_48::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v4 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v6 = *(v4 - 2);
      v7 = a3[5];
      if (v7 <= v6)
      {
        goto LABEL_12;
      }

      v8 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v9 = *(v4 - 1);
      if (v7 <= v9)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v10 = *v4;
      v11 = a3[13];
      if (v11 <= *v4)
      {
        goto LABEL_16;
      }

      v12 = a3[4];
      LODWORD(v13) = *(v12 + 4 * v6);
      HIDWORD(v13) = *(v12 + 4 * v9);
      *(a3[12] + 8 * v10) = v13;
      v4 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v8, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v7);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v11);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_49::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) + *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_50::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) - *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_51::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) * *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_52::__invoke(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *(a3 + 32);
    v4 = *(a3 + 40);
    v6 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v8 = *(v6 - 2);
      if (v4 <= v8)
      {
        goto LABEL_12;
      }

      v9 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v10 = *(v6 - 1);
      if (v4 <= v10)
      {
        goto LABEL_14;
      }

      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v11 = *v6;
      if (v4 <= *v6)
      {
        goto LABEL_16;
      }

      *(v5 + 4 * v11) = *(v5 + 4 * v8) / *(v5 + 4 * v10);
      v6 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v8, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v9, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_53::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = sinf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_54::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = cosf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_55::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = tanf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_56::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = asinf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_57::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = acosf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_58::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 2)
  {
    v4 = a2 >> 1;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 8);
    for (i = 1; a2 > i - 1; i += 2)
    {
      v9 = *(v7 - 1);
      if (v5 <= v9)
      {
        goto LABEL_10;
      }

      v10 = atanf(*(v6 + 4 * v9));
      if (a2 <= i)
      {
        goto LABEL_11;
      }

      v11 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_12;
      }

      *(v6 + 4 * v11) = v10;
      v7 += 2;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 1, a2);
    _os_crash();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_11:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
  }
}

void re::anonymous namespace::$_59::__invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >= 3)
  {
    v4 = a2 / 3;
    v6 = *(a3 + 32);
    v5 = *(a3 + 40);
    v7 = (a1 + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v9 = *(v7 - 2);
      if (v5 <= v9)
      {
        goto LABEL_12;
      }

      v10 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v11 = *(v7 - 1);
      if (v5 <= v11)
      {
        goto LABEL_14;
      }

      v12 = atan2f(*(v6 + 4 * v9), *(v6 + 4 * v11));
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v13 = *v7;
      if (v5 <= *v7)
      {
        goto LABEL_16;
      }

      *(v6 + 4 * v13) = v12;
      v7 += 3;
      if (!--v4)
      {
        return;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v9, v5);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v5);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, v5);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::anonymous namespace::$_60::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 4)
  {
    v3 = 0;
    v4 = a2 >> 2;
    v6 = a3[2];
    v5 = a3[3];
    v7 = (result + 16);
    v9 = a3[4];
    v8 = a3[5];
    while (a2 > v3)
    {
      v10 = *(v7 - 2);
      if (v5 <= v10)
      {
        goto LABEL_16;
      }

      if (*(v6 + 4 * v10))
      {
        v11 = v3 + 1;
        if (a2 <= v3 + 1)
        {
          goto LABEL_19;
        }

        v12 = *(v7 - 1);
        if (v8 <= v12)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = v3 + 2;
        if (a2 <= v3 + 2)
        {
          goto LABEL_21;
        }

        v12 = *v7;
        if (v8 <= *v7)
        {
          goto LABEL_22;
        }
      }

      v14 = v3 + 3;
      if (a2 <= v3 + 3)
      {
        goto LABEL_17;
      }

      v15 = v7[1];
      if (v8 <= v15)
      {
        goto LABEL_18;
      }

      *(v9 + 4 * v15) = *(v9 + 4 * v12);
      v3 += 4;
      v7 += 4;
      if (!--v4)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v3, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v5);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, a2);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v15, v8);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v8);
    _os_crash();
    __break(1u);
LABEL_21:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash();
    __break(1u);
LABEL_22:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v8);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_61::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) > *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_62::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) >= *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_63::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) < *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_64::__invoke(uint64_t result, unint64_t a2, void *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = a3[4];
    v4 = a3[5];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) <= *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_65::__invoke(uint64_t result, unint64_t a2, uint64_t *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *a3;
    v4 = a3[1];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) == *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_66::__invoke(uint64_t result, unint64_t a2, uint64_t *a3)
{
  if (a2 >= 3)
  {
    v3 = a2 / 3;
    v5 = *a3;
    v4 = a3[1];
    v7 = a3[2];
    v6 = a3[3];
    v8 = (result + 16);
    for (i = 2; a2 > i - 2; i += 3)
    {
      v10 = *(v8 - 2);
      if (v4 <= v10)
      {
        goto LABEL_12;
      }

      v11 = i - 1;
      if (a2 <= i - 1)
      {
        goto LABEL_13;
      }

      v12 = *(v8 - 1);
      if (v4 <= v12)
      {
        goto LABEL_14;
      }

      v13 = *(v5 + 4 * v10) == *(v5 + 4 * v12);
      if (a2 <= i)
      {
        goto LABEL_15;
      }

      v14 = *v8;
      if (v6 <= *v8)
      {
        goto LABEL_16;
      }

      *(v7 + 4 * v14) = v13;
      v8 += 3;
      if (!--v3)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i - 2, a2);
    _os_crash();
    __break(1u);
LABEL_12:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v4);
    _os_crash();
    __break(1u);
LABEL_13:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v4);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, i, a2);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::$_67::__invoke(uint64_t result, unint64_t a2, void *a3, double a4, double a5)
{
  if (a2 >= 3)
  {
    v5 = a2 / 3;
    v7 = a3[4];
    v6 = a3[5];
    v9 = a3[2];
    v8 = a3[3];
    v10 = (result + 16);
    v11 = 2;
    LODWORD(a4) = 1.0;
    LODWORD(a5) = 925353388;
    while (a2 > v11 - 2)
    {
      v12 = *(v10 - 2);
      if (v6 <= v12)
      {
        goto LABEL_15;
      }

      v13 = v11 - 1;
      if (a2 <= v11 - 1)
      {
        goto LABEL_16;
      }

      v14 = *(v10 - 1);
      if (v6 <= v14)
      {
        goto LABEL_17;
      }

      v15 = *(v7 + 4 * v12);
      v16 = *(v7 + 4 * v14);
      v17 = v15 == v16 || vabds_f32(v15, v16) < (((fabsf(v15) + fabsf(v16)) + 1.0) * 0.00001);
      if (a2 <= v11)
      {
        goto LABEL_18;
      }

      v18 = *v10;
      if (v8 <= *v10)
      {
        goto LABEL_19;
      }

      *(v9 + 4 * v18) = v17;
      v11 += 3;
      v10 += 3;
      if (!--v5)
      {
        return result;
      }
    }

    re::internal::assertLog(6, a2, a4, a5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11 - 2, a2);
    _os_crash();
    __break(1u);
LABEL_15:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v6);
    _os_crash();
    __break(1u);
LABEL_16:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v13, a2);
    _os_crash();
    __break(1u);
LABEL_17:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v6);
    _os_crash();
    __break(1u);
LABEL_18:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v8);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::anonymous namespace::$_68::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash();
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        v21 = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Int32 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[1];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = *(*a3 + 4 * v17);
        *buf = 67109120;
        v21 = v19;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%i", buf, 8u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_69::__invoke(_BOOL8 a1, unint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash();
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = *(a3 + 24);
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(*(a3 + 16) + 4 * v11);
        *buf = 67109120;
        v21 = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "UInt32 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = *(a3 + 24);
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = *(*(a3 + 16) + 4 * v17);
        *buf = 67109120;
        v21 = v19;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%u", buf, 8u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_70::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash();
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v21) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Float %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[5];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = *(a3[4] + 4 * v17);
        *buf = 134217984;
        v21 = v19;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f", buf, 0xCu);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_71::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_22:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, a2);
          _os_crash();
          __break(1u);
LABEL_23:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_24:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, a2);
          _os_crash();
          __break(1u);
LABEL_25:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v19);
          _os_crash();
          __break(1u);
LABEL_26:
          re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v36, a2);
          _os_crash();
          __break(1u);
LABEL_27:
          re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v28, v29);
          _os_crash();
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v35, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v37, v38);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_23;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v44) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Matrix3x3 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v15)
      {
        v17 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_22;
        }

        v18 = *(v5 + 8 * v6 + 8);
        v19 = a3[7];
        if (v19 <= v18)
        {
          goto LABEL_25;
        }

        v20 = (a3[6] + 48 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        *buf = 134218496;
        v44 = v21;
        v45 = 2048;
        v46 = v22;
        v47 = 2048;
        v48 = v23;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "Columns[0]: %f %f %f", buf, 0x20u);
      }

      v24 = *re::animationLogObjects(v15);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
      if (v25)
      {
        v27 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_24;
        }

        v28 = *(v5 + 8 * v6 + 8);
        v29 = a3[7];
        if (v29 <= v28)
        {
          goto LABEL_27;
        }

        v30 = (a3[6] + 48 * v28);
        v31 = v30[4];
        v32 = v30[5];
        v33 = v30[6];
        *buf = 134218496;
        v44 = v31;
        v45 = 2048;
        v46 = v32;
        v47 = 2048;
        v48 = v33;
        _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_INFO, "Columns[1]: %f %f %f", buf, 0x20u);
      }

      v34 = *re::animationLogObjects(v25);
      a1 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v36 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_26;
        }

        v37 = *(v5 + 8 * v6 + 8);
        v38 = a3[7];
        if (v38 <= v37)
        {
          goto LABEL_28;
        }

        v39 = (a3[6] + 48 * v37);
        v40 = v39[8];
        v41 = v39[9];
        v42 = v39[10];
        *buf = 134218496;
        v44 = v40;
        v45 = 2048;
        v46 = v41;
        v47 = 2048;
        v48 = v42;
        _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_INFO, "Columns[2]: %f %f %f", buf, 0x20u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_72::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_26:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, a2);
          _os_crash();
          __break(1u);
LABEL_27:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_28:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v28, a2);
          _os_crash();
          __break(1u);
LABEL_29:
          re::internal::assertLog(6, v16, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v18, v19);
          _os_crash();
          __break(1u);
LABEL_30:
          re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v39, a2);
          _os_crash();
          __break(1u);
LABEL_31:
          re::internal::assertLog(6, v27, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v29, v30);
          _os_crash();
          __break(1u);
LABEL_32:
          re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v49, a2);
          _os_crash();
          __break(1u);
LABEL_33:
          re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v40, v41);
          _os_crash();
          __break(1u);
LABEL_34:
          re::internal::assertLog(6, v48, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v50, v51);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_27;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v58) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Matrix4x4 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (v15)
      {
        v17 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_26;
        }

        v18 = *(v5 + 8 * v6 + 8);
        v19 = a3[9];
        if (v19 <= v18)
        {
          goto LABEL_29;
        }

        v20 = (a3[8] + (v18 << 6));
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        *buf = 134218752;
        v58 = v21;
        v59 = 2048;
        v60 = v22;
        v61 = 2048;
        v62 = v23;
        v63 = 2048;
        v64 = v24;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "Columns[0]: %f %f %f %f", buf, 0x2Au);
      }

      v25 = *re::animationLogObjects(v15);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
      if (v26)
      {
        v28 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_28;
        }

        v29 = *(v5 + 8 * v6 + 8);
        v30 = a3[9];
        if (v30 <= v29)
        {
          goto LABEL_31;
        }

        v31 = (a3[8] + (v29 << 6));
        v32 = v31[4];
        v33 = v31[5];
        v34 = v31[6];
        v35 = v31[7];
        *buf = 134218752;
        v58 = v32;
        v59 = 2048;
        v60 = v33;
        v61 = 2048;
        v62 = v34;
        v63 = 2048;
        v64 = v35;
        _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_INFO, "Columns[1]: %f %f %f %f", buf, 0x2Au);
      }

      v36 = *re::animationLogObjects(v26);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
      if (v37)
      {
        v39 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_30;
        }

        v40 = *(v5 + 8 * v6 + 8);
        v41 = a3[9];
        if (v41 <= v40)
        {
          goto LABEL_33;
        }

        v42 = (a3[8] + (v40 << 6));
        v43 = v42[8];
        v44 = v42[9];
        v45 = v42[10];
        v46 = v42[11];
        *buf = 134218752;
        v58 = v43;
        v59 = 2048;
        v60 = v44;
        v61 = 2048;
        v62 = v45;
        v63 = 2048;
        v64 = v46;
        _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_INFO, "Columns[2]: %f %f %f %f", buf, 0x2Au);
      }

      v47 = *re::animationLogObjects(v37);
      a1 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v49 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_32;
        }

        v50 = *(v5 + 8 * v6 + 8);
        v51 = a3[9];
        if (v51 <= v50)
        {
          goto LABEL_34;
        }

        v52 = (a3[8] + (v50 << 6));
        v53 = v52[12];
        v54 = v52[13];
        v55 = v52[14];
        v56 = v52[15];
        *buf = 134218752;
        v58 = v53;
        v59 = 2048;
        v60 = v54;
        v61 = 2048;
        v62 = v55;
        v63 = 2048;
        v64 = v56;
        _os_log_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_INFO, "Columns[3]: %f %f %f %f", buf, 0x2Au);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_73::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash();
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v25) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Quaternion %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[11];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = (a3[10] + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        *buf = 134218752;
        v25 = v20;
        v26 = 2048;
        v27 = v21;
        v28 = 2048;
        v29 = v22;
        v30 = 2048;
        v31 = v23;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f %f %f %f", buf, 0x2Au);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_74::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash();
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v23) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Vector2 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[13];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = (a3[12] + 8 * v17);
        v20 = *v19;
        v21 = v19[1];
        *buf = 134218240;
        v23 = v20;
        v24 = 2048;
        v25 = v21;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f %f", buf, 0x16u);
      }

      v6 += 3;
    }
  }
}

void re::anonymous namespace::$_75::__invoke(_BOOL8 a1, unint64_t a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a2 >= 3)
  {
    v5 = a1;
    v6 = 0;
    for (i = a2 / 3; i; --i)
    {
      v8 = *re::animationLogObjects(a1);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        if (a2 <= v6)
        {
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, a2);
          _os_crash();
          __break(1u);
LABEL_14:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
          _os_crash();
          __break(1u);
LABEL_15:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v11, v12);
          _os_crash();
          __break(1u);
LABEL_16:
          re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v18);
          _os_crash();
          __break(1u);
        }

        v11 = *(v5 + 8 * v6);
        v12 = a3[3];
        if (v12 <= v11)
        {
          goto LABEL_15;
        }

        v13 = *(a3[2] + 4 * v11);
        *buf = 67109120;
        LODWORD(v24) = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "Vector3 %u:", buf, 8u);
      }

      v14 = *re::animationLogObjects(v9);
      a1 = os_log_type_enabled(v14, OS_LOG_TYPE_INFO);
      if (a1)
      {
        v16 = v6 + 1;
        if (a2 <= v6 + 1)
        {
          goto LABEL_14;
        }

        v17 = *(v5 + 8 * v6 + 8);
        v18 = a3[15];
        if (v18 <= v17)
        {
          goto LABEL_16;
        }

        v19 = (a3[14] + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = v19[2];
        *buf = 134218496;
        v24 = v20;
        v25 = 2048;
        v26 = v21;
        v27 = 2048;
        v28 = v22;
        _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_INFO, "%f %f %f", buf, 0x20u);
      }

      v6 += 3;
    }
  }
}

uint64_t re::anonymous namespace::$_76::__invoke(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (a2)
  {
    v5 = result;
    v6 = 0;
    while (1)
    {
      v7 = *(v5 + 8 * v6);
      v8 = a3[16] + 448 * v7;
      v9 = (a3[17] + 432 * v7);
      v10 = *(v8 + 16);
      if (v10)
      {
        break;
      }

LABEL_8:
      v18 = *(v8 + 40);
      if (v18)
      {
        v19 = 0;
        v20 = *(v8 + 48);
        v22 = a3[2];
        v21 = a3[3];
        v24 = v9[4];
        v23 = v9[5];
        while (1)
        {
          v25 = *(v20 + 8 * v19);
          if (v21 <= v25)
          {
            break;
          }

          if (v24 == v19)
          {
            goto LABEL_110;
          }

          *(v23 + 4 * v19++) = *(v22 + 4 * v25);
          if (v18 == v19)
          {
            goto LABEL_13;
          }
        }

LABEL_109:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v25, v21);
        _os_crash();
        __break(1u);
LABEL_110:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_111;
      }

LABEL_13:
      v26 = *(v8 + 64);
      if (v26)
      {
        v27 = 0;
        v28 = *(v8 + 72);
        v30 = a3[4];
        v29 = a3[5];
        v32 = v9[7];
        v31 = v9[8];
        while (1)
        {
          v33 = *(v28 + 8 * v27);
          if (v29 <= v33)
          {
            break;
          }

          if (v32 == v27)
          {
            goto LABEL_112;
          }

          *(v31 + 4 * v27++) = *(v30 + 4 * v33);
          if (v26 == v27)
          {
            goto LABEL_18;
          }
        }

LABEL_111:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v33, v29);
        _os_crash();
        __break(1u);
LABEL_112:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_113;
      }

LABEL_18:
      if (*(v8 + 88))
      {
        v34 = 0;
        v35 = 0;
        while (1)
        {
          v36 = *(*(v8 + 96) + 8 * v35);
          v37 = a3[7];
          if (v37 <= v36)
          {
            break;
          }

          if (v9[10] <= v35)
          {
            goto LABEL_114;
          }

          v38 = (a3[6] + 48 * v36);
          v39 = (v9[11] + v34);
          v40 = *v38;
          v41 = v38[2];
          v39[1] = v38[1];
          v39[2] = v41;
          *v39 = v40;
          ++v35;
          v34 += 48;
          if (v35 >= *(v8 + 88))
          {
            goto LABEL_23;
          }
        }

LABEL_113:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v36, v37);
        _os_crash();
        __break(1u);
LABEL_114:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_115;
      }

LABEL_23:
      if (*(v8 + 112))
      {
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v44 = *(*(v8 + 120) + 8 * v43);
          v45 = a3[9];
          if (v45 <= v44)
          {
            break;
          }

          if (v9[13] <= v43)
          {
            goto LABEL_116;
          }

          v46 = (a3[8] + (v44 << 6));
          v47 = (v9[14] + v42);
          v48 = *v46;
          v49 = v46[1];
          v50 = v46[3];
          v47[2] = v46[2];
          v47[3] = v50;
          *v47 = v48;
          v47[1] = v49;
          ++v43;
          v42 += 64;
          if (v43 >= *(v8 + 112))
          {
            goto LABEL_28;
          }
        }

LABEL_115:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v44, v45);
        _os_crash();
        __break(1u);
LABEL_116:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_117;
      }

LABEL_28:
      if (*(v8 + 136))
      {
        v51 = 0;
        v52 = 0;
        while (1)
        {
          v53 = *(*(v8 + 144) + 8 * v52);
          v54 = a3[11];
          if (v54 <= v53)
          {
            break;
          }

          if (v9[16] <= v52)
          {
            goto LABEL_118;
          }

          *(v9[17] + v51) = *(a3[10] + 16 * v53);
          ++v52;
          v51 += 16;
          if (v52 >= *(v8 + 136))
          {
            goto LABEL_33;
          }
        }

LABEL_117:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v53, v54);
        _os_crash();
        __break(1u);
LABEL_118:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_119;
      }

LABEL_33:
      if (*(v8 + 160))
      {
        v55 = 0;
        while (1)
        {
          v56 = *(*(v8 + 168) + 8 * v55);
          v57 = a3[13];
          if (v57 <= v56)
          {
            break;
          }

          if (v9[19] <= v55)
          {
            goto LABEL_120;
          }

          *(v9[20] + 8 * v55++) = *(a3[12] + 8 * v56);
          if (v55 >= *(v8 + 160))
          {
            goto LABEL_38;
          }
        }

LABEL_119:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v56, v57);
        _os_crash();
        __break(1u);
LABEL_120:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_121:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v60, v61);
        _os_crash();
        __break(1u);
LABEL_122:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_123:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_124:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v78, v76);
        _os_crash();
        __break(1u);
LABEL_125:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v65, v66);
        _os_crash();
        __break(1u);
LABEL_126:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_127:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_128:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v67, v68);
        _os_crash();
        __break(1u);
LABEL_129:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_130:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_131:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v69, v70);
        _os_crash();
        __break(1u);
LABEL_132:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_133;
      }

LABEL_38:
      if (*(v8 + 184))
      {
        v58 = 0;
        v59 = 0;
        do
        {
          v60 = *(*(v8 + 192) + 8 * v59);
          v61 = a3[15];
          if (v61 <= v60)
          {
            goto LABEL_121;
          }

          if (v9[22] <= v59)
          {
            goto LABEL_122;
          }

          *(v9[23] + v58) = *(a3[14] + 16 * v60);
          ++v59;
          v58 += 16;
        }

        while (v59 < *(v8 + 184));
      }

      if (*(v8 + 208))
      {
        v62 = 0;
        v63 = 0;
        v64 = 0;
        do
        {
          v65 = *(*(v8 + 216) + v62);
          v66 = a3[15];
          if (v66 <= v65)
          {
            goto LABEL_125;
          }

          if (v9[25] <= v64)
          {
            goto LABEL_126;
          }

          *(v9[26] + v63) = *(a3[14] + 16 * v65);
          if (*(v8 + 208) <= v64)
          {
            goto LABEL_127;
          }

          v67 = *(*(v8 + 216) + v62 + 8);
          v68 = a3[11];
          if (v68 <= v67)
          {
            goto LABEL_128;
          }

          if (v9[25] <= v64)
          {
            goto LABEL_129;
          }

          *(v9[26] + v63 + 16) = *(a3[10] + 16 * v67);
          if (*(v8 + 208) <= v64)
          {
            goto LABEL_130;
          }

          v69 = *(*(v8 + 216) + v62 + 16);
          v70 = a3[15];
          if (v70 <= v69)
          {
            goto LABEL_131;
          }

          if (v9[25] <= v64)
          {
            goto LABEL_132;
          }

          *(v9[26] + v63 + 32) = *(a3[14] + 16 * v69);
          ++v64;
          v63 += 48;
          v62 += 24;
        }

        while (v64 < *(v8 + 208));
      }

      result = (*v8)(v9, *(v8 + 440));
      v71 = *(v8 + 232);
      if (v71)
      {
        v72 = 0;
        v73 = *(v8 + 240);
        v75 = v9[28];
        v74 = v9[29];
        v77 = *a3;
        v76 = a3[1];
        while (v75 != v72)
        {
          v78 = *(v73 + 8 * v72);
          if (v76 <= v78)
          {
            goto LABEL_124;
          }

          *(v77 + 4 * v78) = *(v74 + 4 * v72++);
          if (v71 == v72)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_123;
      }

LABEL_59:
      v79 = *(v8 + 256);
      if (v79)
      {
        v80 = 0;
        v81 = *(v8 + 264);
        v83 = v9[31];
        v82 = v9[32];
        v85 = a3[2];
        v84 = a3[3];
        while (v83 != v80)
        {
          v86 = *(v81 + 8 * v80);
          if (v84 <= v86)
          {
            goto LABEL_134;
          }

          *(v85 + 4 * v86) = *(v82 + 4 * v80++);
          if (v79 == v80)
          {
            goto LABEL_64;
          }
        }

LABEL_133:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_134:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v86, v84);
        _os_crash();
        __break(1u);
        goto LABEL_135;
      }

LABEL_64:
      v87 = *(v8 + 280);
      if (v87)
      {
        v88 = 0;
        v89 = *(v8 + 288);
        v91 = v9[34];
        v90 = v9[35];
        v93 = a3[4];
        v92 = a3[5];
        while (v91 != v88)
        {
          v94 = *(v89 + 8 * v88);
          if (v92 <= v94)
          {
            goto LABEL_136;
          }

          *(v93 + 4 * v94) = *(v90 + 4 * v88++);
          if (v87 == v88)
          {
            goto LABEL_69;
          }
        }

LABEL_135:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_136:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v94, v92);
        _os_crash();
        __break(1u);
        goto LABEL_137;
      }

LABEL_69:
      if (*(v8 + 304))
      {
        v95 = 0;
        v96 = 0;
        while (v9[37] > v96)
        {
          v97 = *(*(v8 + 312) + 8 * v96);
          v98 = a3[7];
          if (v98 <= v97)
          {
            goto LABEL_138;
          }

          v99 = (v9[38] + v95);
          v100 = (a3[6] + 48 * v97);
          v101 = *v99;
          v102 = v99[2];
          v100[1] = v99[1];
          v100[2] = v102;
          *v100 = v101;
          ++v96;
          v95 += 48;
          if (v96 >= *(v8 + 304))
          {
            goto LABEL_74;
          }
        }

LABEL_137:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_138:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v97, v98);
        _os_crash();
        __break(1u);
        goto LABEL_139;
      }

LABEL_74:
      if (*(v8 + 328))
      {
        v103 = 0;
        v104 = 0;
        while (v9[40] > v104)
        {
          v105 = *(*(v8 + 336) + 8 * v104);
          v106 = a3[9];
          if (v106 <= v105)
          {
            goto LABEL_140;
          }

          v107 = (v9[41] + v103);
          v108 = (a3[8] + (v105 << 6));
          v109 = *v107;
          v110 = v107[1];
          v111 = v107[3];
          v108[2] = v107[2];
          v108[3] = v111;
          *v108 = v109;
          v108[1] = v110;
          ++v104;
          v103 += 64;
          if (v104 >= *(v8 + 328))
          {
            goto LABEL_79;
          }
        }

LABEL_139:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_140:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v105, v106);
        _os_crash();
        __break(1u);
        goto LABEL_141;
      }

LABEL_79:
      if (*(v8 + 352))
      {
        v112 = 0;
        v113 = 0;
        while (v9[43] > v113)
        {
          v114 = *(*(v8 + 360) + 8 * v113);
          v115 = a3[11];
          if (v115 <= v114)
          {
            goto LABEL_142;
          }

          *(a3[10] + 16 * v114) = *(v9[44] + v112);
          ++v113;
          v112 += 16;
          if (v113 >= *(v8 + 352))
          {
            goto LABEL_84;
          }
        }

LABEL_141:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_142:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v114, v115);
        _os_crash();
        __break(1u);
        goto LABEL_143;
      }

LABEL_84:
      if (*(v8 + 376))
      {
        v116 = 0;
        while (v9[46] > v116)
        {
          v117 = *(*(v8 + 384) + 8 * v116);
          v118 = a3[13];
          if (v118 <= v117)
          {
            goto LABEL_144;
          }

          *(a3[12] + 8 * v117) = *(v9[47] + 8 * v116++);
          if (v116 >= *(v8 + 376))
          {
            goto LABEL_89;
          }
        }

LABEL_143:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_144:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v117, v118);
        _os_crash();
        __break(1u);
        goto LABEL_145;
      }

LABEL_89:
      if (*(v8 + 400))
      {
        v119 = 0;
        v120 = 0;
        while (v9[49] > v120)
        {
          v121 = *(*(v8 + 408) + 8 * v120);
          v122 = a3[15];
          if (v122 <= v121)
          {
            goto LABEL_146;
          }

          *(a3[14] + 16 * v121) = *(v9[50] + v119);
          ++v120;
          v119 += 16;
          if (v120 >= *(v8 + 400))
          {
            goto LABEL_94;
          }
        }

LABEL_145:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_146:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v121, v122);
        _os_crash();
        __break(1u);
LABEL_147:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_148:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v126, v127);
        _os_crash();
        __break(1u);
LABEL_149:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_150:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_151:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v128, v129);
        _os_crash();
        __break(1u);
LABEL_152:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_153:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_154:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v130, v131);
        _os_crash();
        __break(1u);
      }

LABEL_94:
      if (*(v8 + 424))
      {
        v123 = 0;
        v124 = 0;
        v125 = 0;
        while (v9[52] > v125)
        {
          v126 = *(*(v8 + 432) + v123);
          v127 = a3[15];
          if (v127 <= v126)
          {
            goto LABEL_148;
          }

          *(a3[14] + 16 * v126) = *(v9[53] + v124);
          if (*(v8 + 424) <= v125)
          {
            goto LABEL_149;
          }

          if (v9[52] <= v125)
          {
            goto LABEL_150;
          }

          v128 = *(*(v8 + 432) + v123 + 8);
          v129 = a3[11];
          if (v129 <= v128)
          {
            goto LABEL_151;
          }

          *(a3[10] + 16 * v128) = *(v9[53] + v124 + 16);
          if (*(v8 + 424) <= v125)
          {
            goto LABEL_152;
          }

          if (v9[52] <= v125)
          {
            goto LABEL_153;
          }

          v130 = *(*(v8 + 432) + v123 + 16);
          v131 = a3[15];
          if (v131 <= v130)
          {
            goto LABEL_154;
          }

          *(a3[14] + 16 * v130) = *(v9[53] + v124 + 32);
          ++v125;
          v124 += 48;
          v123 += 24;
          if (v125 >= *(v8 + 424))
          {
            goto LABEL_105;
          }
        }

        goto LABEL_147;
      }

LABEL_105:
      if (++v6 == a2)
      {
        return result;
      }
    }

    v11 = 0;
    v12 = *(v8 + 24);
    v14 = *a3;
    v13 = a3[1];
    v16 = v9[1];
    v15 = v9[2];
    while (1)
    {
      v17 = *(v12 + 8 * v11);
      if (v13 <= v17)
      {
        break;
      }

      if (v16 == v11)
      {
        goto LABEL_108;
      }

      *(v15 + 4 * v11++) = *(v14 + 4 * v17);
      if (v10 == v11)
      {
        goto LABEL_8;
      }
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, *(v12 + 8 * v11), v13);
    _os_crash();
    __break(1u);
LABEL_108:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_109;
  }

  return result;
}

void re::anonymous namespace::$_77::__invoke(_anonymous_namespace_ *a1, uint64_t a2, uint64_t *a3)
{
  v145 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a2;
    i = a1;
    v6 = 0;
    v7 = 456;
    do
    {
      v8 = (a3[18] + 456 * *(i + 8 * v6));
      v9 = v8[1];
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        v12 = 184;
        v13 = a3[3];
        while (1)
        {
          v14 = *(v8[2] + 8 * v11);
          if (v14 == -1)
          {
            break;
          }

          if (v13 <= v14)
          {
            goto LABEL_93;
          }

          if (*(a3[2] + 4 * v14))
          {
            break;
          }

          ++v11;
          v10 += 784;
          v12 += 192;
          if (v9 == v11)
          {
            goto LABEL_9;
          }
        }

        v15 = 0uLL;
        memset(v117, 0, sizeof(v117));
        memset(v116, 0, sizeof(v116));
        v114 = 0u;
        memset(v115, 0, sizeof(v115));
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v97 = 0u;
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_97;
        }

        v96 = v6;
        v16 = v8[5] + v12;
        v7 = *(v16 - 176);
        v17 = v8[10];
        if (v7)
        {
          v21 = 0;
          i = *(v16 - 176);
          v22 = *(v16 - 168);
          v24 = *a3;
          v23 = a3[1];
          v26 = *(&v97 + 1);
          v25 = v98;
          while (i != v21)
          {
            v27 = *(v22 + 8 * v21);
            if (v23 <= v27)
            {
              goto LABEL_73;
            }

            if (v26 == v21)
            {
              goto LABEL_74;
            }

            *(v25 + 4 * v21++) = *(v24 + 4 * v27);
            if (v7 == v21)
            {
              goto LABEL_17;
            }
          }

          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = i;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_73:
          re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v27, v23);
          _os_crash();
          __break(1u);
LABEL_74:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v26;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_75:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = i;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_76:
          re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v37, v34);
          _os_crash();
          __break(1u);
LABEL_77:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v26;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_78:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = i;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_79:
          re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v47, v44);
          _os_crash();
          __break(1u);
LABEL_80:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v26;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_81:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_82:
          re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v53, v54);
          _os_crash();
          __break(1u);
LABEL_83:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_84:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_85:
          re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v64, v65);
          _os_crash();
          __break(1u);
LABEL_86:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v16;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_87:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_88:
          re::internal::assertLog(6, v75, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v77, v78);
          _os_crash();
          __break(1u);
LABEL_89:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_90:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_91:
          re::internal::assertLog(6, v83, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v84, v85);
          _os_crash();
          __break(1u);
LABEL_92:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_93:
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v13);
          _os_crash();
          __break(1u);
LABEL_94:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 476;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_95:
          re::internal::assertLog(6, v89, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v91, v92);
          _os_crash();
          __break(1u);
LABEL_96:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = i;
          v125 = 2048;
          v126 = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_97:
          v118 = 0;
          v130 = v15;
          v131 = v15;
          v128 = v15;
          v129 = v15;
          v127 = v15;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_98:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_99:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_100:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_101:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_102:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_103:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_104:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_105:
          v118 = 0;
          v130 = 0u;
          v131 = 0u;
          v128 = 0u;
          v129 = 0u;
          v127 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v119 = 136315906;
          v120 = "operator[]";
          v121 = 1024;
          v122 = 468;
          v123 = 2048;
          v124 = v11;
          v125 = 2048;
          v126 = v12;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_17:
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_98;
        }

        v16 = v8[5] + v12;
        v7 = *(v16 - 152);
        v28 = v8[13];
        if (v7)
        {
          v32 = 0;
          i = *(v16 - 152);
          v33 = *(v16 - 144);
          v35 = a3[2];
          v34 = a3[3];
          v36 = *(&v99 + 1);
          v26 = v99;
          while (i != v32)
          {
            v37 = *(v33 + 8 * v32);
            if (v34 <= v37)
            {
              goto LABEL_76;
            }

            if (v26 == v32)
            {
              goto LABEL_77;
            }

            *(v36 + 4 * v32++) = *(v35 + 4 * v37);
            if (v7 == v32)
            {
              goto LABEL_24;
            }
          }

          goto LABEL_75;
        }

LABEL_24:
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_99;
        }

        v16 = v8[5] + v12;
        v7 = *(v16 - 128);
        v38 = v8[16];
        if (v7)
        {
          v42 = 0;
          i = *(v16 - 128);
          v43 = *(v16 - 120);
          v45 = a3[4];
          v44 = a3[5];
          v26 = *(&v100 + 1);
          v46 = v101;
          while (i != v42)
          {
            v47 = *(v43 + 8 * v42);
            if (v44 <= v47)
            {
              goto LABEL_79;
            }

            if (v26 == v42)
            {
              goto LABEL_80;
            }

            *(v46 + 4 * v42++) = *(v45 + 4 * v47);
            if (v7 == v42)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_78;
        }

LABEL_31:
        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_100;
        }

        v26 = v8[5] + v12;
        v7 = *(v26 - 104);
        v48 = v8[19];
        if (v7)
        {
          v52 = 0;
          for (i = 0; i != v7; ++i)
          {
            v16 = *(v26 - 104);
            if (v16 <= i)
            {
              goto LABEL_81;
            }

            v53 = *(*(v26 - 96) + 8 * i);
            v54 = a3[7];
            if (v54 <= v53)
            {
              goto LABEL_82;
            }

            v16 = v102;
            if (v102 <= i)
            {
              goto LABEL_83;
            }

            v55 = (a3[6] + 48 * v53);
            v56 = (*(&v102 + 1) + v52);
            v57 = *v55;
            v58 = v55[2];
            v56[1] = v55[1];
            v56[2] = v58;
            *v56 = v57;
            v52 += 48;
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_101;
        }

        v26 = v8[5] + v12;
        v7 = *(v26 - 80);
        v59 = v8[22];
        if (v7)
        {
          v63 = 0;
          for (i = 0; i != v7; ++i)
          {
            v16 = *(v26 - 80);
            if (v16 <= i)
            {
              goto LABEL_84;
            }

            v64 = *(*(v26 - 72) + 8 * i);
            v65 = a3[9];
            if (v65 <= v64)
            {
              goto LABEL_85;
            }

            v16 = *(&v103 + 1);
            if (*(&v103 + 1) <= i)
            {
              goto LABEL_86;
            }

            v66 = (a3[8] + (v64 << 6));
            v67 = (v104 + v63);
            v68 = *v66;
            v69 = v66[1];
            v70 = v66[3];
            v67[2] = v66[2];
            v67[3] = v70;
            *v67 = v68;
            v67[1] = v69;
            v63 += 64;
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_102;
        }

        v71 = v8[5] + v12;
        v7 = *(v71 - 56);
        v72 = v8[25];
        if (v7)
        {
          v76 = 0;
          for (i = 0; i != v7; ++i)
          {
            v26 = *(v71 - 56);
            if (v26 <= i)
            {
              goto LABEL_87;
            }

            v77 = *(*(v71 - 48) + 8 * i);
            v78 = a3[11];
            if (v78 <= v77)
            {
              goto LABEL_88;
            }

            v26 = v105;
            if (v105 <= i)
            {
              goto LABEL_89;
            }

            *(*(&v105 + 1) + v76) = *(a3[10] + 16 * v77);
            v76 += 16;
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_103;
        }

        v79 = v8[5] + v12;
        v7 = *(v79 - 32);
        v80 = v8[28];
        if (v7)
        {
          for (i = 0; i != v7; *(v107 + 8 * i++) = *(a3[12] + 8 * v84))
          {
            v26 = *(v79 - 32);
            if (v26 <= i)
            {
              goto LABEL_90;
            }

            v84 = *(*(v79 - 24) + 8 * i);
            v85 = a3[13];
            if (v85 <= v84)
            {
              goto LABEL_91;
            }

            v26 = *(&v106 + 1);
            if (*(&v106 + 1) <= i)
            {
              goto LABEL_92;
            }
          }
        }

        v7 = v8[4];
        if (v7 <= v11)
        {
          goto LABEL_104;
        }

        v86 = v8[5];
        v7 = *(v86 + v12 - 8);
        v87 = v8[31];
        if (v7)
        {
          v90 = 0;
          for (i = 0; i != v7; ++i)
          {
            v4 = *(v86 + v12 - 8);
            if (v4 <= i)
            {
              goto LABEL_94;
            }

            v91 = *(*(v86 + v12) + 8 * i);
            v92 = a3[15];
            if (v92 <= v91)
            {
              goto LABEL_95;
            }

            v4 = v108;
            if (v108 <= i)
            {
              goto LABEL_96;
            }

            *(*(&v108 + 1) + v90) = *(a3[14] + 16 * v91);
            v90 += 16;
          }
        }

        v12 = v8[7];
        if (v12 <= v11)
        {
          goto LABEL_105;
        }

        v93 = v8[8] + v10;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        re::EvaluationContextSlices::init(&v127, &v97);
        if ((*(*v93 + 16))(v93, &v127))
        {
        }

        re::EvaluationContext::~EvaluationContext(&v97);
        i = a1;
        v4 = a2;
        v6 = v96;
        v7 = 456;
      }

      else
      {
LABEL_9:
      }

      v6 = (v6 + 1);
    }

    while (v6 != v4);
  }
}

uint64_t re::anonymous namespace::mapBranchOutputs<int>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (result == i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, a6);
        _os_crash();
        __break(1u);
      }

      v7 = *(a4 + 8 * i);
      if (v7 >= a6)
      {
        goto LABEL_8;
      }

      *(a5 + 4 * v7) = *(a2 + 4 * i);
    }
  }

  return result;
}

float re::anonymous namespace::mapBranchOutputs<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      if (a1 == i)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_8:
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v7, a6);
        _os_crash();
        __break(1u);
      }

      v7 = *(a4 + 8 * i);
      if (v7 >= a6)
      {
        goto LABEL_8;
      }

      result = *(a2 + 4 * i);
      *(a5 + 4 * v7) = result;
    }
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Matrix3x3<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 80);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (*(a2 + 80) > v5)
    {
      if (*(a1 + 80) <= v5)
      {
        goto LABEL_9;
      }

      v6 = *(*(a2 + 88) + 8 * v5);
      v7 = *(a3 + 56);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 88) + v4;
      v9 = *(a3 + 48) + 48 * v6;
      result = *v8;
      v11 = *(v8 + 32);
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 32) = v11;
      *v9 = result;
      ++v5;
      v4 += 48;
      if (v3 == v5)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Matrix4x4<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 104);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (*(a2 + 104) > v5)
    {
      if (*(a1 + 104) <= v5)
      {
        goto LABEL_9;
      }

      v6 = *(*(a2 + 112) + 8 * v5);
      v7 = *(a3 + 72);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      v8 = *(a1 + 112) + v4;
      v9 = *(a3 + 64) + (v6 << 6);
      result = *v8;
      v11 = *(v8 + 16);
      v12 = *(v8 + 48);
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 48) = v12;
      *v9 = result;
      *(v9 + 16) = v11;
      ++v5;
      v4 += 64;
      if (v3 == v5)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Quaternion<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 128);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (*(a2 + 128) > v5)
    {
      if (*(a1 + 128) <= v5)
      {
        goto LABEL_9;
      }

      v6 = *(*(a2 + 136) + 8 * v5);
      v7 = *(a3 + 88);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      result = *(*(a1 + 136) + v4);
      *(*(a3 + 80) + 16 * v6) = result;
      ++v5;
      v4 += 16;
      if (v3 == v5)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::anonymous namespace::mapBranchOutputs<re::Vector2<float>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 152);
  if (v3)
  {
    v4 = 0;
    while (*(a2 + 152) > v4)
    {
      if (*(result + 152) <= v4)
      {
        goto LABEL_9;
      }

      v5 = *(*(a2 + 160) + 8 * v4);
      v6 = *(a3 + 104);
      if (v6 <= v5)
      {
        goto LABEL_10;
      }

      *(*(a3 + 96) + 8 * v5) = *(*(result + 160) + 8 * v4++);
      if (v3 == v4)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v5, v6);
    _os_crash();
    __break(1u);
  }

  return result;
}

__n128 re::anonymous namespace::mapBranchOutputs<re::Vector3<float>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 176);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    while (*(a2 + 176) > v5)
    {
      if (*(a1 + 176) <= v5)
      {
        goto LABEL_9;
      }

      v6 = *(*(a2 + 184) + 8 * v5);
      v7 = *(a3 + 120);
      if (v7 <= v6)
      {
        goto LABEL_10;
      }

      result = *(*(a1 + 184) + v4);
      *(*(a3 + 112) + 16 * v6) = result;
      ++v5;
      v4 += 16;
      if (v3 == v5)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v6, v7);
    _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t *re::animationLogObjects(re *this)
{
  {
    re::animationLogObjects(void)::logObjects = os_log_create("com.apple.re", "Animation");
  }

  return &re::animationLogObjects(void)::logObjects;
}

uint64_t re::AnimationLogObjects::loggingEnabled(re::AnimationLogObjects *this)
{
  v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v9 = v1;
    v10 = v2;
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v5)
    {
      re::Defaults::BOOLValue("animation.log.enabled", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 0;
      }

      re::AnimationLogObjects::loggingEnabled(void)::value = v7;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v3[296];
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(0);
  }

  v2 = re::introspect<re::ecs2::ECSService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::EventBus>(uint64_t a1)
{
  {
    re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0);
  }

  v2 = re::introspect<re::EventBus>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

uint64_t re::EventBus::subscribe<re::ecs2::Scene,RESceneDidAddEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneDidAddEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t re::EventBus::subscribe<re::ecs2::Scene,RESceneWillRemoveEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  v10 = re::EventBus::getTypeId<RESceneWillRemoveEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, v10);
  re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

unint64_t *re::PeerAttributionService::getOrCreateContextForPeerId(re::PeerAttributionService *this, unint64_t a2)
{
  v26 = a2;
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v4 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 96, &v26, v3 ^ (v3 >> 31), &v27);
  if (HIDWORD(v28) != 0x7FFFFFFF)
  {
    return *(*(this + 14) + 32 * HIDWORD(v28) + 16);
  }

  v5 = re::globalAllocators(v4);
  v6 = (*(*v5[2] + 32))(v5[2], 24, 8);
  v6[1] = 0;
  v6[2] = 0;
  *(v6 + 8) = -1;
  v7 = v26;
  *v6 = v26;
  v6[1] = *(this + 56);
  v8 = *(this + 9);
  if (v8)
  {
    LOWORD(v27) = *(*(this + 11) + 2 * v8 - 2);
    v9 = v27;
    *(this + 9) = v8 - 1;
    ++*(this + 20);
    if (v9 == 0xFFFF)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v9 = *this;
    if (v9 > 0x1F)
    {
LABEL_18:
      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
      v18 = v17 ^ (v17 >> 31);
      v19 = *(this + 106);
      if (v19)
      {
        v20 = v18 % v19;
        v21 = *(*(this + 51) + 4 * (v18 % v19));
        if (v21 != 0x7FFFFFFF)
        {
          v22 = *(this + 52);
          if (*(v22 + 24 * v21 + 16) == v7)
          {
LABEL_23:
            LOWORD(v9) = 0;
            goto LABEL_29;
          }

          while (1)
          {
            LODWORD(v21) = *(v22 + 24 * v21 + 8) & 0x7FFFFFFF;
            if (v21 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v22 + 24 * v21 + 16) == v7)
            {
              goto LABEL_23;
            }
          }
        }
      }

      else
      {
        LODWORD(v20) = 0;
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(this + 400, v20, v18, &v26, &v26);
      LOWORD(v9) = 0;
      ++*(this + 110);
LABEL_29:
      *(v6 + 8) = v9;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 96, &v26, v23 ^ (v23 >> 31), &v27);
      if (HIDWORD(v28) == 0x7FFFFFFF)
      {
        v24 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 96, v28, v27);
        *(v24 + 8) = v26;
        *(v24 + 16) = v6;
        ++*(this + 34);
      }

      return v6;
    }

    *this = v9 + 1;
    LOWORD(v27) = v9;
  }

  v10 = v9;
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v9) ^ ((0xBF58476D1CE4E5B9 * v9) >> 27));
  v12 = v11 ^ (v11 >> 31);
  v13 = *(this + 8);
  if (v13)
  {
    v14 = v12 % v13;
    v15 = *(*(this + 2) + 4 * (v12 % v13));
    if (v15 != 0x7FFFFFFF)
    {
      v16 = *(this + 3);
      if (*(v16 + 16 * v15 + 12) == v9)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v15 = *(v16 + 16 * v15 + 8) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v16 + 16 * v15 + 12) == v9)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v14) = 0;
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(this + 8, v14, v12, &v27, &v27);
  ++*(this + 12);
  v9 = v27;
LABEL_16:
  if (v9 == 0xFFFF)
  {
    v7 = v26;
    goto LABEL_18;
  }

  v10 = v9;
LABEL_27:
  if (v9 < 0x20)
  {
    *(this + v10 + 18) = v6;
    goto LABEL_29;
  }

  re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v10, 32);
  result = _os_crash();
  __break(1u);
  return result;
}

re::PeerAttributionService *re::PeerAttributionService::destroyContext(re::PeerAttributionService *this, uint64_t a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *(a2 + 16);
    if (v4)
    {
      if (v4 >= 0x20)
      {
        re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, v4, 32);
        this = _os_crash();
        __break(1u);
        return this;
      }

      *(this + v4 + 18) = 0;
      re::PeerAttributionService::releaseAttributionIndex(this, v4);
    }

    else
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 400, a2);
    }

    v5 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v3 + 96, a2);
    v6 = *(*re::globalAllocators(v5)[2] + 40);

    return v6();
  }

  return this;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v5 = ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 24 * v7 + 16) != v3)
  {
    while (1)
    {
      v10 = v7;
      LODWORD(v7) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v9 + 24 * v7 + 16) == v3)
      {
        *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_9;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_9:
  v11 = *(a1 + 16);
  v12 = v11 + 24 * v7;
  v15 = *(v12 + 8);
  v14 = (v12 + 8);
  v13 = v15;
  if (v15 < 0)
  {
    *v14 = v13 & 0x7FFFFFFF;
    v11 = *(a1 + 16);
    v13 = *(v11 + 24 * v7 + 8);
  }

  v16 = *(a1 + 40);
  *(v11 + 24 * v7 + 8) = *(a1 + 36) | v13 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v16 + 1;
  return 1;
}

void *re::PeerAttributionService::releaseAttributionIndex(re::PeerAttributionService *this, unsigned __int16 a2)
{
  v4 = a2;
  result = re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(this + 8, &v4);
  if (result)
  {
    return re::DynamicArray<unsigned short>::add(this + 7, &v4);
  }

  return result;
}

BOOL re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  v5 = (v4 ^ (v4 >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  v10 = v9 + 16 * v7;
  if (*(v10 + 12) != v3)
  {
    while (1)
    {
      v11 = v7;
      v7 = *(v9 + 16 * v7 + 8) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        return 0;
      }

      v12 = v9 + 16 * v7;
      if (*(v12 + 12) == v3)
      {
        *(v9 + 16 * v11 + 8) = *(v9 + 16 * v11 + 8) & 0x80000000 | *(v12 + 8) & 0x7FFFFFFF;
        goto LABEL_9;
      }
    }
  }

  *(v6 + 4 * v5) = *(v10 + 8) & 0x7FFFFFFF;
LABEL_9:
  v13 = *(a1 + 16);
  v14 = v13 + 16 * v7;
  v17 = *(v14 + 8);
  v16 = (v14 + 8);
  v15 = v17;
  if (v17 < 0)
  {
    *v16 = v15 & 0x7FFFFFFF;
    v13 = *(a1 + 16);
    v15 = *(v13 + 16 * v7 + 8);
  }

  v18 = *(a1 + 40);
  *(v13 + 16 * v7 + 8) = *(a1 + 36) | v15 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v18 + 1;
  return 1;
}

void *re::DynamicArray<unsigned short>::add(void *this, _WORD *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<unsigned short>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  *(v3[4] + 2 * v4) = *a2;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RESceneEntityDidActivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<REComponentDidActivateEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

void *re::allocInfo_PeerAttributionService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_27, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_27))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE191610, "PeerAttributionService");
    __cxa_guard_release(&_MergedGlobals_27);
  }

  return &unk_1EE191610;
}

void re::initInfo_PeerAttributionService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA3B5877921502CB0;
  v6[1] = "PeerAttributionService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_PeerAttributionService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(uint64_t a1, uint64_t a2, char a3)
{
  *a1 = a2;
  if ((a3 & 1) != 0 || !*(a2 + 40))
  {
    *(a1 + 8) = -1;
  }

  else
  {
    *(a1 + 8) = 0;
    if (!*(a2 + 16))
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (!**(*(a2 + 32) + 8))
    {
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(a1);
    }
  }

  return a1;
}

_WORD *re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(_WORD *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  v3 = v2 - 1;
  v4 = result[4];
  v5 = result[5];
  while (1)
  {
    ++v4;
    if (v5 < v3 && *(v1 + 44) <= v4)
    {
      v4 = 0;
      result[5] = ++v5;
    }

    if (v5 == v3 && *(v1 + 48) <= v4)
    {
      break;
    }

    if (v2 <= v5)
    {
      result[4] = v4;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (*(*(*(v1 + 32) + 16 * v5 + 8) + 4 * v4))
    {
      result[4] = v4;
      return result;
    }
  }

  *(result + 2) = -1;
  return result;
}

uint64_t re::EventBus::EventInfo::addSubscription(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8) + 1;
  *(a1 + 8) = v7;
  *&v14 = a3;
  *(&v14 + 1) = a4;
  v8 = *(a2 + 48);
  v21 = a1;
  v23 = v8;
  v24 = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v22, a2);
  *v25 = v7;
  *&v25[8] = v14;
  v15[0] = *a1;
  v15[1] = v7;
  if (!(a3 | a4))
  {
    v10 = a1 + 88;
    goto LABEL_5;
  }

  v9 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((a1 + 216), &v14);
  if (v9 != -1)
  {
    v10 = *(a1 + 224) + 144 * v9 + 16;
LABEL_5:
    if (!*(a1 + 16) || *(v10 + 96))
    {
      goto LABEL_7;
    }

LABEL_9:
    v16 = v21;
    v17[6] = v23;
    v17[7] = 0;
    v11 = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v17, v22);
    v18 = *v25;
    v19 = *&v25[16];
    v12 = re::globalAllocators(v11);
    re::FunctionBase<24ul,void ()(void)>::FunctionBase<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void,void>(v20, &v16, v12[2]);
    re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::addNew((a1 + 280), v15, v20);
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(v20);
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v17);
    goto LABEL_10;
  }

  if (*(a1 + 16))
  {
    goto LABEL_9;
  }

  v10 = 0;
LABEL_7:
  re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(re::EventBus::Subscriptions *)#1}::operator()(&v21, v10);
LABEL_10:
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v22);
  return v15[0];
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3028;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3090;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneDidAddEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneDidAddEvent>(void)const::s_id = re::EventBus::typeStringToId(("18RESceneDidAddEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[24];
}

uint64_t re::EventBus::addOrGetEventInfo(re::EventBus *this, uint64_t a2)
{
  v12[4] = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a2;
  v4 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 3, &v10);
  if (v4 == -1 || (v5 = *(*(this + 4) + 48 * v4 + 8)) == 0)
  {
    v6 = re::globalAllocators(v4);
    v7 = (*(*v6[2] + 32))(v6[2], 344, 8);
    *v7 = a2;
    *(v7 + 120) = 0u;
    *(v7 + 136) = 0u;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0u;
    *(v7 + 176) = 0u;
    *(v7 + 192) = 0;
    *(v7 + 8) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 40) = 0u;
    *(v7 + 56) = 0u;
    *(v7 + 72) = 0u;
    *(v7 + 88) = 0u;
    *(v7 + 100) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 248) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 264) = 0u;
    *(v7 + 280) = 0u;
    *(v7 + 296) = 0u;
    *(v7 + 312) = 0u;
    *(v7 + 328) = 0u;
    *(v7 + 216) = 0u;
    v12[3] = v12;
    v11[3] = v11;
    v12[0] = &unk_1F5CB2F30;
    v10 = v7;
    v11[0] = &unk_1F5CB2F30;
    std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::~__value_func[abi:nn200100](v12);
    v5 = *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(this + 3, &v9, &v10);
    std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>::~unique_ptr[abi:nn200100](&v10);
  }

  return v5;
}

unint64_t re::EventBus::typeStringToId(re::EventBus *this, const char *a2)
{
  v3 = strlen(this);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v10 = v3;
  if (v3)
  {
    memcpy(__p, this, v3);
  }

  *(__p + v4) = 0;
  if ((v10 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = __p[1];
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](&v11, v5, v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v7;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v4 + v7 + v13;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v13 + v5 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v6 + v8 + v19;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v31 + v29 + v40 + v30;
        v22 = __ROR8__(v31 + v29 + v40, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:nn200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * ((v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v5);
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:nn200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 48 * v6 + 8);
  }

  return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, uint64_t *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 48 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v11;
  v17 = *(a1 + 8);
  v18 = 3 * v16;
  v19 = *a2;
  v20 = *a3;
  *a3 = 0;
  v21 = (v17 + 16 * v18);
  *v21 = v19;
  v21[1] = v20;
  std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::__value_func[abi:nn200100]((v21 + 2), (a3 + 1));
  if (v15 == 255)
  {
    v22 = -1;
  }

  else
  {
    v22 = 0;
  }

  v23.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v23.i64[1] = v22;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v23);
  v24 = (*(a1 + 8) + 16 * v18);
  v26 = *v24;
  result = v24 + 1;
  v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v26 ^ (v26 >> 30))) >> 27));
  *(a1 + 40) ^= (v27 >> 31) ^ v27;
  return result;
}

double re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 49 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v23, *(v21[0] + 8) + 48 * v13, *(v21[0] + 8) + 48 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v23);
}

void *re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(void *result)
{
  v1 = result[2];
  v2 = v1 >> 4;
  v3 = *result;
  v4 = *(*result + 16);
  if (v1 >> 4 >= v4 >> 4)
  {
LABEL_8:
    v10 = -1;
    goto LABEL_9;
  }

  v5 = __clz(__rbit64(result[1] & (-2 << (v1 & 0xF))));
  if (v5 >= 0x40)
  {
    v6 = ~v2 + (v4 >> 4);
    v7 = 16 * v2;
    while (v6)
    {
      v8 = ~*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*v3 + v7 + 16)), xmmword_1E304FAD0)))), 0x3830282018100800);
      result[1] = v8;
      v9 = __clz(__rbit64(v8));
      --v6;
      v7 += 16;
      if (v9 <= 0x3F)
      {
        v10 = v9 + v7;
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v10 = v5 + (v1 & 0xFFFFFFFFFFFFFFF0);
LABEL_9:
  result[2] = v10;
  return result;
}

double re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>::~unique_ptr[abi:nn200100]((*(a1 + 8) + 48 * v8 + 8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 145 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>> re::makeDefaultUniquePtr<re::EventBus::EventInfo,unsigned long long &>(unsigned long long &)::{lambda(re::EventBus::EventInfo*)#1},std::allocator<std::allocator>,void ()(std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>> re::makeDefaultUniquePtr<re::EventBus::EventInfo,unsigned long long &>(unsigned long long &)::{lambda(re::EventBus::EventInfo*)#1})>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re *re::internal::destroyPersistent<re::EventBus::EventInfo>(re *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::deinit(a3 + 280);
    re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::deinit(a3 + 216);
    re::DynamicArray<unsigned long>::deinit(a3 + 168);
    re::DynamicArray<unsigned long>::deinit(a3 + 128);
    re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(a3 + 88);
    v5.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(a3 + 24);
    v6 = *(*v4 + 40);

    return v6(v4, a3, v5);
  }

  return result;
}

double re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v10[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v11 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::FunctionBase<24ul,void ()(void)>::destroyCallable(*(a1 + 8) + 56 * v8 + 16);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
            v8 = v11;
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t (***re::FunctionBase<24ul,void ()(void)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

double re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v11[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v11[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v8 = v7 - v3;
        v12 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            v9 = *(a1 + 8) + 144 * v8;
            re::DynamicArray<unsigned long>::deinit(v9 + 96);
            re::DynamicArray<unsigned long>::deinit(v9 + 56);
            re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(v9 + 16);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v11);
            v8 = v12;
          }

          while (v12 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = v4 << 6;
        do
        {
          re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v3);
          v3 += 64;
          v5 -= 64;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

double re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(uint64_t a1)
{
  if (*(a1 + 56))
  {
    if (*(a1 + 8))
    {
      v9[0] = a1;
      v2 = *(a1 + 16);
      if (v2 >= 0x10)
      {
        v3 = 0;
        v4 = *a1;
        v5 = v2 >> 4;
        while (1)
        {
          v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v4), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v9[1] = v6 ^ 0xFFFFLL;
          if (v6 != 0xFFFFLL)
          {
            break;
          }

          v3 -= 16;
          ++v4;
          if (!--v5)
          {
            goto LABEL_10;
          }
        }

        v7 = __clz(__rbit64(v6 ^ 0xFFFFLL));
        v10 = v7 - v3;
        if (v7 + 1 != v3)
        {
          do
          {
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v9);
          }

          while (v10 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(**(a1 + 56) + 40))(*(a1 + 56));
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::EventBus::EventInfo *)>::operator()((a1 + 1), v2);
  }

  std::__function::__value_func<void ()(re::EventBus::EventInfo *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::function<void ()(re::EventBus::EventInfo *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:nn200100]();
  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::addNew(v4);
}

uint64_t re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::addNew(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 56 * v6 + 16;
  }

  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t (***re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(re::EventBus::Subscriptions *)#1}::operator()(uint64_t *a1, uint64_t a2))(void)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a1 + 10;
  v5 = *a1;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew((*a1 + 24), a1 + 9, a1 + 5);
  if (!a2)
  {
    if (*v4 || a1[11])
    {
      v6 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((v5 + 216), v4);
      if (v6 == -1)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        memset(v13, 0, sizeof(v13));
        a2 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::addNew((v5 + 216), v4, v13);
        if (v17)
        {
          if (v19)
          {
            (*(*v17 + 40))();
          }

          *&v19 = 0;
          *&v18 = 0;
          v17 = 0uLL;
          ++DWORD2(v18);
        }

        if (*(&v14 + 1))
        {
          if (*(&v16 + 1))
          {
            (*(**(&v14 + 1) + 40))();
          }

          *(&v16 + 1) = 0;
          v15 = 0uLL;
          *(&v14 + 1) = 0;
          LODWORD(v16) = v16 + 1;
        }

        re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::deinit(v13);
      }

      else
      {
        a2 = *(v5 + 224) + 144 * v6 + 16;
      }
    }

    else
    {
      a2 = v5 + 88;
    }
  }

  v7 = a1[9];
  v21 = a1[7];
  v22 = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v20, (a1 + 1));
  re::EventBus::Subscriptions::add(a2, v7, v20);
  result = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v20);
  if (*(v5 + 20))
  {
    v9 = 1;
  }

  else if (*v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1[11] == 0;
  }

  *(v5 + 20) = v9;
  v10 = (*(v5 + 21) & 1) != 0 || *v4 != 0;
  *(v5 + 21) = v10;
  v11 = (*(v5 + 22) & 1) != 0 || a1[11] != 0;
  *(v5 + 22) = v11;
  if (*(v5 + 23))
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v12 = *v4;
    if (*v4)
    {
      LOBYTE(v12) = a1[11] != 0;
    }
  }

  *(v5 + 23) = v12;
  return result;
}

uint64_t re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a1);
    v4 = *(a2 + 56);
    if (*(a1 + 48) != *(a2 + 48) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x31)
        {
          v8 = v6;
          v9 = *(a1 + 48);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 56) = v7;
        (*(**(a2 + 56) + 32))(*(a2 + 56));
        re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 56) = v4;
      *(a2 + 56) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(a1);
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x31)
      {
        v7 = v5;
        v8 = *(a1 + 48);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 56) = v6;
      (*(**(a2 + 56) + 24))(*(a2 + 56));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 56);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 56) != a1)
    {
      result = (*(**(a1 + 48) + 40))(*(a1 + 48));
    }

    *(a1 + 56) = 0;
  }

  return result;
}

uint64_t re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  if (a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
    v7 = *(v5 + 16 * v4);
    v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v7), xmmword_1E304FAD0)))), 0x3830282018100800);
    v9 = __clz(__rbit64(v8));
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if (v9 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v17 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v20, a2) % (a1[2] >> 4);
    result = -1;
    if (v4 == v17)
    {
      return result;
    }
  }

  v11 = 16 * v4;
  while (1)
  {
    result = v9 + v11;
    v13 = (a1[1] + 144 * (v9 + v11));
    v15 = *v13;
    v14 = v13[1];
    if (*a2 == v15 && a2[1] == v14)
    {
      return result;
    }

    if (v9 <= 0x3E)
    {
      v9 = __clz(__rbit64((-2 << v9) & v8));
      if (v9 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

unint64_t re::Hash<re::Pair<void const*,void const*,true>>::operator()(uint64_t a1, void *a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  return (((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) + (v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9) ^ v3;
}

uint64_t re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::find(uint64_t *a1, void *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  if (a1[2] < 0x10 || !a1[3])
  {
    return -1;
  }

  v4 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2) % (a1[2] >> 4);
  while (1)
  {
    v5 = *a1;
    v6 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
    v7 = *(v5 + 16 * v4);
    v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(vdupq_n_s8(v6 & 0x7F), v7), xmmword_1E304FAD0)))), 0x3830282018100800);
    v9 = __clz(__rbit64(v8));
    v10.i64[0] = -1;
    v10.i64[1] = -1;
    if (v9 <= 0x3F)
    {
      break;
    }

LABEL_13:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v7, v10), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (++v4 == a1[2] >> 4)
    {
      v4 = 0;
    }

    v17 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v20, a2) % (a1[2] >> 4);
    result = -1;
    if (v4 == v17)
    {
      return result;
    }
  }

  v11 = 16 * v4;
  while (1)
  {
    result = v9 + v11;
    v13 = (a1[1] + 56 * (v9 + v11));
    v15 = *v13;
    v14 = v13[1];
    if (*a2 == v15 && a2[1] == v14)
    {
      return result;
    }

    if (v9 <= 0x3E)
    {
      v9 = __clz(__rbit64((-2 << v9) & v8));
      if (v9 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_13;
  }
}

uint64_t re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || a1[2] > (8 * v6))
  {
    re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v18, a2) % (a1[2] >> 4);
  v8 = *a1;
  v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == a1[2] >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v19, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = 56 * (v10 + 16 * v7);
  *(a1[1] + v13) = *a2;
  v14 = a1[1] + v13;
  *(v14 + 40) = *(a3 + 24);
  *(v14 + 48) = 0;
  re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(v14 + 16, a3);
  if (v12 == 255)
  {
    v15 = -1;
  }

  else
  {
    v15 = 0;
  }

  v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v16.i64[1] = v15;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v16);
  a1[5] ^= re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v20, (a1[1] + v13));
  return a1[1] + v13 + 16;
}

double re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 57 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 56 * v11), *(v19[0] + 8) + 56 * v11 + 16);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::deinit(v21);
}

uint64_t re::FunctionBase<24ul,void ()(void)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(void)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(void)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::FunctionBase<24ul,void ()(void)>::FunctionBase<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void,void>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 24) = a3;
  *(a1 + 32) = 0;
  if (a3)
  {
    v5 = (*(*a3 + 32))(a3, 104, 0);
  }

  else
  {
    v5 = 0;
  }

  v6 = *a2;
  *v5 = &unk_1F5CB2FC0;
  *(v5 + 8) = v6;
  *(v5 + 64) = a2[7];
  *(v5 + 72) = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v5 + 16, (a2 + 1));
  v7 = a2[11];
  *(v5 + 80) = *(a2 + 9);
  *(v5 + 96) = v7;
  *(a1 + 32) = v5;
  return a1;
}

void *re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB2FC0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable((a1 + 2));
  return a1;
}

void re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB2FC0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable((a1 + 2));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::cloneInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CB2FC0;
  *(a2 + 8) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(a2 + 16, a1 + 16);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  return a2;
}

uint64_t re::internal::Callable<re::EventBus::EventInfo::addSubscription(re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> &&,void const*,void const*)::{lambda(void)#1},void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_1F5CB2FC0;
  *(a2 + 8) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 72) = 0;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(a2 + 16, a1 + 16);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  return a2;
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addNew(void *a1, uint64_t *a2, _OWORD *a3)
{
  v6 = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 24 * v6 + 8);
  }

  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::addNew(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 144 * v6 + 16;
  }

  return re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::EventBus::Subscriptions::add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v5 = *(a1 + 96);
  if (!v5)
  {
    re::DynamicArray<re::TransitionCondition *>::add((a1 + 40), &v9);
    result = re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::add(a1, a3);
    goto LABEL_6;
  }

  v6 = *(*(a1 + 112) + 8 * v5 - 8);
  *(a1 + 96) = v5 - 1;
  ++*(a1 + 104);
  v7 = *(a1 + 56);
  if (v7 <= v6)
  {
    v10 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    v14 = 789;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_8:
    v10 = 0;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v11 = 136315906;
    v12 = "operator[]";
    v13 = 1024;
    v14 = 789;
    v15 = 2048;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 72) + 8 * v6) = a2;
  v7 = *(a1 + 16);
  if (v7 <= v6)
  {
    goto LABEL_8;
  }

  result = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(*(a1 + 32) + (v6 << 6), a3);
LABEL_6:
  ++*(a1 + 120);
  return result;
}

uint64_t re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(void *a1, uint64_t *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 24 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t a1, void *a2, _OWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9;
  v9 = 0x94D049BB133111EBLL;
  v10 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  v12 = v7 >> 4;
  v13 = *a1;
  v14 = v11 % v12;
  while (1)
  {
    v15 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v13 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v15 < 0x40)
    {
      break;
    }

    if (v14 + 1 == v12)
    {
      v14 = 0;
    }

    else
    {
      ++v14;
    }

    if (v14 == v11 % v12)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v16 = v13 + 16 * v14;
  v17 = *(v16 + v15);
  *(v16 + v15) = v11 & 0x7F;
  v18 = *(a1 + 8) + 24 * (v15 + 16 * v14);
  *v18 = *a2;
  *(v18 + 8) = *a3;
  if (v17 == 255)
  {
    v19 = -1;
  }

  else
  {
    v19 = 0;
  }

  v20.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v20.i64[1] = v19;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v20);
  v21 = (*(a1 + 8) + 24 * (v15 + 16 * v14));
  v23 = *v21;
  result = v21 + 1;
  v24 = (((v23 ^ (v23 >> 30)) * v8) ^ (((v23 ^ (v23 >> 30)) * v8) >> 27)) * v9;
  *(a1 + 40) ^= (v24 >> 31) ^ v24;
  return result;
}

double re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(a1, v3);
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 25 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

double re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v21, 0, sizeof(v21));
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v21, v4, a2);
  v19[0] = a1;
  v5 = *(a1 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a1;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v19[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        goto LABEL_9;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v20 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(v21, (*(v19[0] + 8) + 24 * v11), (*(v19[0] + 8) + 24 * v11 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v19);
        v11 = v20;
      }

      while (v20 != -1);
      v5 = *(a1 + 16);
    }
  }

LABEL_9:
  v12 = *(&v21[3] + 1);
  *(&v21[3] + 1) = *(a1 + 56);
  v13 = v21[0];
  v14 = v21[1];
  v21[0] = *a1;
  *&v21[1] = v5;
  v15 = v21[2];
  v16 = *(a1 + 40);
  *(a1 + 48) = *&v21[3];
  *(a1 + 56) = v12;
  *(&v21[2] + 8) = v16;
  v17 = *(a1 + 24);
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(&v21[1] + 8) = v17;
  return re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v21);
}

void *re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::internalAdd(uint64_t *a1, void *a2, _OWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 3 * (v13 + 16 * v11);
  v17 = a1[1] + 24 * (v13 + 16 * v11);
  *v17 = *a2;
  *(v17 + 8) = *a3;
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v19);
  v20 = (a1[1] + 8 * v16);
  v22 = *v20;
  result = v20 + 1;
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
  a1[5] ^= (v23 >> 31) ^ v23;
  return result;
}

uint64_t re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::internalAdd(uint64_t a1, void *a2, uint64_t a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || *(a1 + 16) > (8 * v6))
  {
    re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::resize(a1, 1);
  }

  v7 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v28, a2) % (*(a1 + 16) >> 4);
  v8 = *a1;
  v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v29, a2);
  v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v10 >= 0x40)
  {
    do
    {
      if (v7 + 1 == *(a1 + 16) >> 4)
      {
        v7 = 0;
      }

      else
      {
        ++v7;
      }

      v8 = *a1;
      v9 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v29, a2);
      v10 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v8 + 16 * v7)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v10 > 0x3F);
  }

  v11 = v8 + 16 * v7;
  v12 = *(v11 + v10);
  *(v11 + v10) = v9 & 0x7F;
  v13 = 9 * (v10 + 16 * v7);
  *(*(a1 + 8) + 16 * v13) = *a2;
  v14 = *(a1 + 8) + 16 * v13;
  *(v14 + 48) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = 0;
  *(v14 + 16) = 0;
  *(v14 + 40) = 0;
  v15 = *(a3 + 8);
  *(v14 + 16) = *a3;
  *(v14 + 24) = v15;
  *a3 = 0;
  *(a3 + 8) = 0;
  v16 = *(v14 + 32);
  *(v14 + 32) = *(a3 + 16);
  *(a3 + 16) = v16;
  v17 = *(v14 + 48);
  *(v14 + 48) = *(a3 + 32);
  *(a3 + 32) = v17;
  ++*(a3 + 24);
  ++*(v14 + 40);
  *(v14 + 88) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v14 + 56) = 0;
  *(v14 + 80) = 0;
  v18 = *(a3 + 48);
  *(v14 + 56) = *(a3 + 40);
  *(v14 + 64) = v18;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  v19 = *(v14 + 72);
  *(v14 + 72) = *(a3 + 56);
  *(a3 + 56) = v19;
  v20 = *(v14 + 88);
  *(v14 + 88) = *(a3 + 72);
  *(a3 + 72) = v20;
  ++*(a3 + 64);
  ++*(v14 + 80);
  *(v14 + 128) = 0;
  *(v14 + 104) = 0;
  *(v14 + 112) = 0;
  *(v14 + 96) = 0;
  *(v14 + 120) = 0;
  v21 = *(a3 + 88);
  *(v14 + 96) = *(a3 + 80);
  *(v14 + 104) = v21;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v22 = *(v14 + 112);
  *(v14 + 112) = *(a3 + 96);
  *(a3 + 96) = v22;
  v23 = *(v14 + 128);
  v24 = *(a3 + 120);
  *(v14 + 128) = *(a3 + 112);
  *(a3 + 112) = v23;
  ++*(a3 + 104);
  ++*(v14 + 120);
  *(v14 + 136) = v24;
  if (v12 == 255)
  {
    v25 = -1;
  }

  else
  {
    v25 = 0;
  }

  v26.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v26.i64[1] = v25;
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v26);
  *(a1 + 40) ^= re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v30, (*(a1 + 8) + 16 * v13));
  return *(a1 + 8) + 16 * v13 + 16;
}

double re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::doResize(a1, v3);
}

double re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::internalAdd(v23, *(v21[0] + 8) + 144 * v13, *(v21[0] + 8) + 144 * v13 + 16, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::deinit(v23);
}

uint64_t re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  *(v5 + 48) = *(a2 + 48);
  *(v5 + 56) = 0;
  result = re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v5, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v9 << 6;
        v11 = v7;
        do
        {
          *(v11 + 48) = *(v8 + 48);
          *(v11 + 56) = 0;
          re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::operator=<48ul>(v11, v8);
          re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v8);
          v8 += 64;
          v11 += 64;
          v10 -= 64;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3028;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3028;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3028;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3028;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3090;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3090;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3090;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneDidAddEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3090;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneDidAddEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB30E8;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3140;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneWillRemoveEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneWillRemoveEvent>(void)const::s_id = re::EventBus::typeStringToId(("22RESceneWillRemoveEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[21];
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB30E8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB30E8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB30E8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB30E8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3140;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3140;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3140;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Scene,RESceneWillRemoveEvent>(re::ecs2::Scene *,re::Function<REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3140;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  if (*(v7 + 32 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 32 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 32 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_64, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 != *(a1 + 24))
    {
LABEL_27:
      *(a1 + 32) = v6 + 1;
      v19 = *(a1 + 16);
      v20 = *(v19 + 32 * v5);
      goto LABEL_28;
    }

    v7 = *(a1 + 28);
    v8 = 2 * v7;
    v9 = *a1;
    if (!*a1)
    {
      if (v8)
      {
        v21 = 2 * v7;
      }

      else
      {
        v21 = 3;
      }

      goto LABEL_26;
    }

    if (v8)
    {
      v10 = v5 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && (v7 & 0x80000000) == 0)
    {
      v25 = 0u;
      *v26 = 0u;
      *&v26[16] = 0x7FFFFFFF00000000;
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v25, v9, v8);
      v11 = *a1;
      v12 = *(a1 + 8);
      *a1 = v25;
      v13 = *(a1 + 16);
      *(a1 + 16) = *v26;
      v14 = *(a1 + 32);
      *(a1 + 24) = *&v26[8];
      if (v14)
      {
        v15 = (v13 + 4);
        v16 = v14;
        do
        {
          if ((*(v15 - 2) & 0x80000000) != 0)
          {
            v17 = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v15[1] % *(a1 + 24));
            v18 = *v15;
            *(v17 + 8) = *(v15 - 1);
            *(v17 + 16) = v18;
          }

          v15 += 4;
          --v16;
        }

        while (v16);
        if (!v11)
        {
          goto LABEL_26;
        }

        do
        {
          if ((*v13 & 0x80000000) != 0)
          {
            *v13 &= ~0x80000000;
          }

          v13 += 8;
          --v14;
        }

        while (v14);
        goto LABEL_25;
      }

      if (v11)
      {
LABEL_25:
        (*(*v11 + 40))(v11, v12);
      }
    }

LABEL_26:
    a2 = a3 % *(a1 + 24);
    v6 = *(a1 + 32);
    goto LABEL_27;
  }

  v19 = *(a1 + 16);
  v20 = *(v19 + 32 * v5);
  *(a1 + 36) = v20 & 0x7FFFFFFF;
LABEL_28:
  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

void re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 32 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_64, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

BOOL re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v3 = a2[4];
    v4 = *(a1 + 16);
    v5 = *(v4 + 32 * v2) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v5;
      v6 = a2[3];
      v7 = a2[3];
    }

    else
    {
      *(v4 + 32 * v3) = *(v4 + 32 * v3) & 0x80000000 | v5;
      v6 = v2;
      v7 = v2;
    }

    v8 = *(a1 + 40);
    *(v4 + 32 * v6) = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v7;
    *(a1 + 40) = v8 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, _WORD *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 16 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 16 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 16 * v8 + 8) = *(*(a1 + 16) + 16 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 16 * v8) = a3;
  *(*(a1 + 16) + 16 * v8 + 12) = *a5;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 12, *&v13[16] + v10 + 12);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < v9);
      }

      re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 16 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_64, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}

void *re::DynamicArray<unsigned short>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<unsigned short>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<unsigned short>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<unsigned short>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if ((a2 & 0x8000000000000000) != 0)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 2, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 2 * a2;
          result = (*(*result + 32))(result, 2 * a2, 2);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 2 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<unsigned short>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3198;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB31F0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<RESceneEntityDidActivateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneEntityDidActivateEvent>(void)const::s_id = re::EventBus::typeStringToId(("29RESceneEntityDidActivateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[13];
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3198;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3198;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3198;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3198;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB31F0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB31F0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB31F0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RESceneEntityDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB31F0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB3248;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CB32A0;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v8);
}

uint64_t re::EventBus::getTypeId<REComponentDidActivateEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REComponentDidActivateEvent>(void)const::s_id = re::EventBus::typeStringToId(("27REComponentDidActivateEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[15];
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3248;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB3248;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3248;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB3248;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB32A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CB32A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB32A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REComponentDidActivateEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CB32A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::EventBus::getTypeId<REOwnershipChangedEvent>()
{
  v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v2)
    {
      re::EventBus::getTypeId<REOwnershipChangedEvent>(void)const::s_id = re::EventBus::typeStringToId(("23REOwnershipChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v0 + 145);
}

void *re::allocInfo_FrameAnalysisService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_28))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1916A8, "FrameAnalysisService");
    __cxa_guard_release(&_MergedGlobals_28);
  }

  return &unk_1EE1916A8;
}

void re::initInfo_FrameAnalysisService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x8825A5C357582E58;
  v6[1] = "FrameAnalysisService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::FrameAnalysisService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::FrameAnalysisService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_FrameAnalysisService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void anonymous namespace::SharedEngineContext::instance(_anonymous_namespace_::SharedEngineContext *this)
{
  {
    qword_1EE1C7A70 = 0;
    dword_1EE1C7A78 = 0;
  }
}

void anonymous namespace::SharedEngineContext::retainOrInit(_anonymous_namespace_::SharedEngineContext *this, unsigned int a2, int a3)
{
  v5 = this;
  os_unfair_lock_lock(&dword_1EE1C7A78);
  if (++qword_1EE1C7A70 <= 1)
  {
    dword_1EE1C7A7C = v5;
    unk_1EE1C7A80 = a2;
    dword_1EE1C7A84 = a3;
    if (re::ecs2::dispatchOnceInitECSComponents(void)::onceToken != -1)
    {
      dispatch_once(&re::ecs2::dispatchOnceInitECSComponents(void)::onceToken, &__block_literal_global_17);
    }

    re::RenderGraphNodeRegistry::init(v6);
    re::RenderGraphEmitterRegistry::init(v7);
    v8 = re::RenderGraphNodeRegistry::m_instance;
    re::RenderGraphNodeRegistry::registerNode(re::RenderGraphNodeRegistry::m_instance, _MergedGlobals_7);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CC8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CD0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CD8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CE0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CE8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CF0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188CF8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D00);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D08);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D10);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D18);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D20);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D28);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D30);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D38);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D40);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D48);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D50);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D58);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D60);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D68);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D70);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D78);
    re::RenderGraphNodeRegistry::registerNode(v8, &re::renderGraphNodeRegistryItem<re::RenderGraphVRRUnwarpNode>(void)::item);
    re::RenderGraphNodeRegistry::registerNode(v8, re::renderGraphNodeRegistryItem<re::RenderGraphMPSImageAreaMaxNode>(void)::item);
    re::RenderGraphNodeRegistry::registerNode(v8, re::renderGraphNodeRegistryItem<re::RenderGraphMPSImageGaussianBlurNode>(void)::item);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D80);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D88);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D90);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188D98);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DA0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DA8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DB0);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DB8);
    re::RenderGraphNodeRegistry::registerNode(v8, off_1EE188DC0);
    v9 = re::RenderGraphEmitterRegistry::m_instance;
    re::RenderGraphEmitterRegistry::registerEmitter(re::RenderGraphEmitterRegistry::m_instance, off_1EE188DC8);
    re::RenderGraphEmitterRegistry::registerEmitter(v9, off_1EE188DD0);
    re::RenderGraphEmitterRegistry::registerEmitter(v9, &off_1EE188DD8);
    if ((v5 & 8) == 0)
    {
      re::initInputManagement(v10);
    }

    v11 = std::thread::hardware_concurrency();
    if ((v5 & 2) != 0)
    {
      LODWORD(v13) = 2;
    }

    else if ((v5 & 4) != 0)
    {
      LODWORD(v13) = 3;
    }

    else if ((v5 & 0x20) != 0)
    {
      LODWORD(v13) = 1;
    }

    else
    {
      LODWORD(v13) = 2;
    }

    if (a2 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a2;
    }

    if (v5)
    {
      v15 = 16;
    }

    else
    {
      v15 = a3;
    }

    if (v5)
    {
      v14 = 1;
    }

    if (v11 >= v14)
    {
      LODWORD(v16) = v14;
    }

    else
    {
      LODWORD(v16) = v11;
    }

    if (v16 + 1 > v15)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = v15;
    }

    v18 = (v5 & 0x10) == 0;
    re::Defaults::intValue("threading.threads", v12, v28);
    if (v28[0])
    {
      v16 = v29;
    }

    else
    {
      v16 = v16;
    }

    re::Defaults::intValue("threading.fibers", v19, v28);
    if (v28[0])
    {
      v17 = v29;
    }

    re::Defaults::intValue("threading.fiberStackSize", v20, v28);
    v21 = v28[0];
    v22 = v29;
    re::Defaults::intValue("threading.jobSystem", v23, v28);
    if (v28[0])
    {
      v13 = v29;
    }

    else
    {
      v13 = v13;
    }

    if (v21)
    {
      v25 = v22;
    }

    else
    {
      v25 = 0x80000;
    }

    v27 = re::globalAllocators(v26);
  }

  os_unfair_lock_unlock(&dword_1EE1C7A78);
}

void RESharedEngineContextRelease(_anonymous_namespace_::SharedEngineContext *a1)
{
  os_unfair_lock_lock(&dword_1EE1C7A78);
  if (!--qword_1EE1C7A70)
  {
    v1 = re::internal::destroyPersistent<re::JobService>("sharedJobServiceDeinit", 585, g_jobService);
    g_jobService = 0;
    if ((dword_1EE1C7A7C & 8) == 0)
    {
      re::deinitInputManagement(v1);
    }

    re::internal::destroyPersistent<re::RenderGraphNodeRegistry>("deinit", 62, re::RenderGraphNodeRegistry::m_instance);
    re::RenderGraphNodeRegistry::m_instance = 0;
    re::internal::destroyPersistent<re::RenderGraphEmitterRegistry>("deinit", 42, re::RenderGraphEmitterRegistry::m_instance);
    re::RenderGraphEmitterRegistry::m_instance = 0;
  }

  os_unfair_lock_unlock(&dword_1EE1C7A78);
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphCameraSetupNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A308, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A308))
  {
    _MergedGlobals_99 = re::introspect_RenderGraphCameraSetupNode(a2);
    __cxa_guard_release(&qword_1EE18A308);
  }

  return _MergedGlobals_99;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphCameraSetupNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 352, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D14E70;
  *(v6 + 132) = 0;
  *(v6 + 17) = 0u;
  *(v6 + 18) = 0u;
  *(v6 + 19) = 0u;
  *(v6 + 20) = 0u;
  *(v6 + 42) = 0;
  *(v6 + 43) = -1;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A318, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A318))
  {
    qword_1EE18A310 = re::introspect_RenderGraphMultiViewCameraSetupNode(a2);
    __cxa_guard_release(&qword_1EE18A318);
  }

  return qword_1EE18A310;
}

re::RenderGraphNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, void *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 352, 8);
  v7 = re::RenderGraphNode::RenderGraphNode(v6, v4);
  *(v7 + 132) = 0;
  *(v7 + 17) = 0u;
  *(v7 + 18) = 0u;
  *(v7 + 19) = 0u;
  *(v7 + 20) = 0u;
  *(v7 + 42) = 0;
  *(v7 + 43) = -1;
  *v7 = &unk_1F5D14F00;
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = a2[12];
  v9 = a2[13];
  *(v6 + 3) = a2[10];
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiViewCameraSetupNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphComputeNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A328))
  {
    qword_1EE18A320 = re::introspect_RenderGraphComputeNode(a2);
    __cxa_guard_release(&qword_1EE18A328);
  }

  return qword_1EE18A320;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphComputeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphComputeNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphComputeNodeBase *re::RenderGraph::addNode<re::RenderGraphComputeNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 496, 16);
  v6 = re::RenderGraphComputeNodeBase::RenderGraphComputeNodeBase(v5, a2);
  *v6 = &unk_1F5D0F8D8;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDebugNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A338, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A338))
  {
    qword_1EE18A330 = re::introspect_RenderGraphDebugNode(a2);
    __cxa_guard_release(&qword_1EE18A338);
  }

  return qword_1EE18A330;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphDebugNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *(v6 + 66) = 1;
  *(v6 + 268) = 0;
  *v6 = &unk_1F5D16008;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphDebugMaterialsNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A348))
  {
    qword_1EE18A340 = re::introspect_RenderGraphDebugMaterialsNode(a2);
    __cxa_guard_release(&qword_1EE18A348);
  }

  return qword_1EE18A340;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugMaterialsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphDebugMaterialsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphDebugMaterialsNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 272, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *(v6 + 66) = 1;
  *(v6 + 268) = 0;
  *v6 = &unk_1F5CB4F88;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

void re::RenderGraphDebugMaterialsNode::~RenderGraphDebugMaterialsNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphNode::~RenderGraphNode(id *this)
{
  *this = &unk_1F5D11268;
  re::DynamicArray<unsigned long>::deinit((this + 28));
  re::DynamicArray<unsigned long>::deinit((this + 23));
  re::DynamicArray<unsigned long>::deinit((this + 18));
  re::DynamicArray<unsigned long>::deinit((this + 13));
  *this = &unk_1F5CB52A8;

  re::StringID::destroyString((this + 1));
}

{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphGenerateMipmapsNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A358, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A358))
  {
    qword_1EE18A350 = re::introspect_RenderGraphGenerateMipmapsNode(a2);
    __cxa_guard_release(&qword_1EE18A358);
  }

  return qword_1EE18A350;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphGenerateMipmapsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphGenerateMipmapsNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphNode *re::RenderGraph::addNode<re::RenderGraphGenerateMipmapsNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 264, 8);
  v6 = re::RenderGraphNode::RenderGraphNode(v5, a2);
  *v6 = &unk_1F5D15920;
  v10 = v6;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v10);
  v7 = *(a1 + 12);
  v8 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v7;
  *(v5 + 6) = v8;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMaterialReplaceNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A368, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A368))
  {
    qword_1EE18A360 = re::introspect_RenderGraphMaterialReplaceNode(a2);
    __cxa_guard_release(&qword_1EE18A368);
  }

  return qword_1EE18A360;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMaterialReplaceNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMaterialReplaceNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphMaterialReplaceNode *re::RenderGraph::addNode<re::RenderGraphMaterialReplaceNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 376, 8);
  v9 = re::RenderGraphMaterialReplaceNode::RenderGraphMaterialReplaceNode(v5, a2);
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v9);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v6;
  *(v5 + 6) = v7;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMeshNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A378))
  {
    qword_1EE18A370 = re::introspect_RenderGraphMeshNode(a2);
    __cxa_guard_release(&qword_1EE18A378);
  }

  return qword_1EE18A370;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::RenderGraphMeshNode *re::RenderGraph::addNode<re::RenderGraphMeshNode>(re *a1, const char *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 368, 8);
  v9 = re::RenderGraphMeshNode::RenderGraphMeshNode(v5, a2);
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v9);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  *(v5 + 3) = *(a1 + 10);
  *(v5 + 4) = v6;
  *(v5 + 6) = v7;
  return v5;
}

uint64_t re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::introspectionInfo(uint64_t a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_1EE18A388, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18A388))
  {
    qword_1EE18A380 = re::introspect_RenderGraphMultiPassMeshNode(a2);
    __cxa_guard_release(&qword_1EE18A388);
  }

  return qword_1EE18A380;
}

re::RenderGraphMultiPassMeshNode *std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::operator()(re *a1, void *a2, const char **a3)
{
  v4 = *a3;
  v5 = re::globalAllocators(a1);
  v6 = (*(*v5[2] + 32))(v5[2], 480, 8);
  re::RenderGraphMultiPassMeshNode::RenderGraphMultiPassMeshNode(v6, v4);
  v11 = v7;
  re::DynamicArray<re::TransitionCondition *>::add(a2, &v11);
  v8 = a2[12];
  v9 = a2[13];
  *(v6 + 3) = a2[10];
  *(v6 + 4) = v8;
  *(v6 + 6) = v9;
  return v6;
}

uint64_t std::__function::__func<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1},std::allocator<re::RenderGraphNodeRegistryItem<re::RenderGraphMultiPassMeshNode>::makeCreateFunction(void)::{lambda(re::RenderGraph &,char const*)#1}>,re::RenderGraphNode & ()(re::RenderGraph &,char const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}