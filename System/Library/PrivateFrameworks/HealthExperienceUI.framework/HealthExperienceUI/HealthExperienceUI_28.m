uint64_t sub_1BA2011C0()
{
  sub_1BA20514C();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2051D0();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2052BC();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v0;
  v31 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
  v12 = qword_1EDC5E100;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDC84A30;
  v14 = sub_1BA4A6758();
  v15 = [objc_opt_self() imageNamed:v14 inBundle:v13];

  v30 = v15;
  sub_1B9F6A85C(0, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
  sub_1BA4A4E78();
  sub_1BA1107A8();
  sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8);
  sub_1B9F28F00(&qword_1EDC5F430, sub_1BA20514C);
  sub_1BA4A4FC8();
  (*(v3 + 8))(v5, v2);

  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1BA4C69C0;
  *(v16 + 32) = 0x4054000000000000;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1BA205394;
  *(v17 + 24) = v16;
  sub_1B9F28F00(&qword_1EBBEE668, sub_1BA2051D0);
  v18 = v26;
  sub_1BA4A4FE8();

  (*(v25 + 8))(v8, v18);
  v19 = swift_allocObject();
  v20 = v29;
  *(v19 + 16) = v29;
  sub_1B9F28F00(&unk_1EBBEE670, sub_1BA2052BC);
  v21 = v20;
  v22 = v28;
  sub_1BA4A4F88();

  return (*(v27 + 8))(v11, v22);
}

void sub_1BA2016C8(void *a1, char *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = [a2 headerView];
    [v9 setIcon:v8 accessibilityLabel:0];

    v16 = [a2 headerView];
    [v16 setAllowFullWidthIcon_];

    v10 = v16;
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B9F0B82C(0xD00000000000003CLL, 0x80000001BA4F4930, &v17);
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Failed to create stitched image; using default contact image", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v17 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI60SummarySharingOnboardingKitSharingConfirmationViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = a2;
    sub_1BA1107A8();
    sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8);

    v15 = a2;
    sub_1BA4A4F88();
  }
}

void sub_1BA2019E0(void *a1, char *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = [a2 headerView];
    [v9 setIcon:v8 accessibilityLabel:0];

    v16 = [a2 headerView];
    [v16 setAllowFullWidthIcon_];

    v10 = v16;
  }

  else
  {
    sub_1BA4A3DD8();
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FC8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v17 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4F47E0, &v17);
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%s] Failed to create stitched image; using default contact image", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1BFAF43A0](v14, -1, -1);
      MEMORY[0x1BFAF43A0](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v17 = *&a2[OBJC_IVAR____TtC18HealthExperienceUI57SummarySharingOnboardingChooseSelectionFlowViewController_selectedContactPhotoPublisher];
    *(swift_allocObject() + 16) = a2;
    sub_1BA1107A8();
    sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8);

    v15 = a2;
    sub_1BA4A4F88();
  }
}

id sub_1BA201CF8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BA4A6758();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1BA4A1488();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1BA201DD4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  *a1 = v3;
  return result;
}

uint64_t sub_1BA201E54(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1BA4A4F38();
}

unint64_t *sub_1BA201EC4(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1BA202024(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1BA202110(v8, v4, v2);
  result = MEMORY[0x1BFAF43A0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1BA202024(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1BA202620(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1BA202620(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1BA202110(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1BA202024(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1BA202188(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B9F24DD0(0, &unk_1EBBEE690);
  result = sub_1BA4A8098();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + v16);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA2023C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B9F24DD0(0, &qword_1EDC6E348);
  result = sub_1BA4A8098();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1B9F0AD9C(v17 + 32 * v16, v33);
    sub_1B9F46920(v33, v32);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1B9F46920(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA202620(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1BA204D7C();
  result = sub_1BA4A8098();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_1BA4A8488();

    sub_1BA4A68C8();
    result = sub_1BA4A84D8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA202850(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B9FDC20C();
  result = sub_1BA4A8098();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v30 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v31 = (v9 - 1) & v9;
LABEL_16:
    v15 = v12 | (v10 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    sub_1BA4A8488();
    v18 = v16;

    sub_1BA4A68C8();
    v19 = sub_1BA4A84D8();

    v20 = -1 << *(v8 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v11 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v8 + 48) + 8 * v23) = v18;
    *(*(v8 + 56) + 8 * v23) = v17;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v9 = v31;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BA202AB0(uint64_t a1, void *a2)
{
  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v9 = sub_1B9FDA9BC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v10;
  if (v8[3] < v14)
  {
    sub_1BA0F3F78(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_1B9FDA9BC(a2);
    if ((v3 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    sub_1B9F0ADF8(0, &unk_1EBBEE680);
    v9 = sub_1BA4A83B8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v18 = v9;
    sub_1BA0F1E24();
    v9 = v18;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1BA0F7E88(v9, a2, a1, v8);
    v19 = a2;
    v17 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v16 = v8[7];
  v17 = *(v16 + 8 * v9);
  *(v16 + 8 * v9) = a1;
LABEL_11:
  *v4 = v8;
  return v17;
}

uint64_t sub_1BA202BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = sub_1B9F24A34(a2, a3);
  v13 = v10[2];
  v14 = __OFADD__(v13, (v12 ^ 1) & 1);
  v15 = v13 + ((v12 ^ 1) & 1);
  if (v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v15)
  {
    sub_1BA0F4F88(v15, isUniquelyReferenced_nonNull_native);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v4 & 1) == (v16 & 1))
    {
      goto LABEL_6;
    }

    v11 = sub_1BA4A83B8();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v19 = v11;
    sub_1BA0F2770();
    v11 = v19;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_1B9F23574(v11, a2, a3, a1, v10);

    v18 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v17 = v10[7];
  v18 = *(v17 + 8 * v11);
  *(v17 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v18;
}

char *sub_1BA202D18(void *a1, uint64_t a2, uint64_t a3)
{
  v45[1] = *MEMORY[0x1E69E9840];
  sub_1BA2057F0(0, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  v12 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController__reachabilityQueryState;
  LOBYTE(v45[0]) = 0;
  sub_1BA4A4EE8();
  (*(v9 + 32))(&v3[v12], v11, v8);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController] = 0;
  v13 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults] = MEMORY[0x1E69E7CC0];
  v14 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
  *&v3[v14] = sub_1B9FDBF1C(v13);
  v15 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController;
  *&v3[v15] = [objc_allocWithZone(MEMORY[0x1E69963B0]) init];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView] = 0;
  v16 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  *&v3[v16] = [objc_allocWithZone(MEMORY[0x1E69DD020]) init];
  v17 = [objc_allocWithZone(MEMORY[0x1E69963D8]) initWithAutocompleteSearchType_];
  if (!v17)
  {
    __break(1u);
  }

  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager] = v17;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID] = 0;
  v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery] = 1;
  v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults] = 0;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_cancellables] = MEMORY[0x1E69E7CD0];
  v18 = [objc_allocWithZone(MEMORY[0x1E696C4F0]) initWithHealthStore_];
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_sharingEntryStore] = v18;
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthStore] = a1;
  sub_1B9F0A534(a2, &v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_healthExperienceStore]);
  *&v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_selectionFlowContext] = a3;
  v19 = objc_allocWithZone(MEMORY[0x1E695CE18]);
  v20 = a1;

  v21 = [v19 init];
  v45[0] = 0;
  v22 = [v21 _ios_meContactIdentifierWithError_];

  v23 = v45[0];
  if (v22)
  {
    v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v26 = v25;
    v27 = v23;
  }

  else
  {
    v28 = v45[0];
    v29 = sub_1BA4A1488();

    swift_willThrow();
    v24 = 0;
    v26 = 0;
  }

  v30 = &v3[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_meContactIdentifier];
  *v30 = v24;
  v30[1] = v26;
  v31 = type metadata accessor for SummarySharingOnboardingContactPickerViewController();
  v44.receiver = v3;
  v44.super_class = v31;
  v32 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0);
  v33 = *&v32[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_sharingEntryStore];
  v34 = v32;
  [v33 setDelegate_];
  v35 = sub_1BA1FB0E0();
  [v35 setDelegate_];

  v36 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController;
  v37 = [*&v34[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController] searchBar];
  [v37 setAutocapitalizationType_];

  [*&v34[v36] setObscuresBackgroundDuringPresentation_];
  [*&v34[v36] setHidesNavigationBarDuringPresentation_];
  [*&v34[v36] setAutomaticallyShowsCancelButton_];
  [*&v34[v36] setScopeBarActivation_];
  [*&v34[v36] setActive_];
  v38 = [*&v34[v36] searchBar];
  [v38 setDelegate_];

  [*&v34[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager] setSearchTypes_];
  v39 = [v34 navigationItem];
  [v39 setSearchController_];

  v40 = [v34 navigationItem];
  [v40 setPreferredSearchBarPlacement_];

  v41 = [v34 navigationItem];
  [v41 setHidesSearchBarWhenScrolling_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v34;
}

void sub_1BA203250()
{
  sub_1BA2057F0(0, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12[-v4];
  v6 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController__reachabilityQueryState;
  v12[15] = 0;
  sub_1BA4A4EE8();
  (*(v3 + 32))(v0 + v6, v5, v2);
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___searchController) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_autocompleteResults) = MEMORY[0x1E69E7CC0];
  v8 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
  *(v0 + v8) = sub_1B9FDBF1C(v7);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableViewController;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69963B0]) init];
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashView) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController____lazy_storage___splashContainerView) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_resultsTableView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x1E69DD020]) init];
  v11 = [objc_allocWithZone(MEMORY[0x1E69963D8]) initWithAutocompleteSearchType_];
  if (!v11)
  {
    __break(1u);
  }

  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_searchManager) = v11;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_currentSearchTaskID) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_isInitialReachabilityQuery) = 1;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_foundSearchResults) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1BA203498(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BA4A64C8();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
  v11 = sub_1BA4A7308();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v1;
  v12[4] = ObjectType;
  aBlock[4] = sub_1BA204E70;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_85;
  v13 = _Block_copy(aBlock);

  v14 = v1;

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
  sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  sub_1BA4A7C38();
  MEMORY[0x1BFAF1D50](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_1BA20379C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E28();
  v12 = a3;

  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = a4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v8;
    v19 = v18;
    v26[0] = v18;
    *v16 = 138412546;
    *(v16 + 4) = v12;
    *v17 = v12;
    *(v16 + 12) = 2080;
    v20 = v12;
    *(v16 + 14) = sub_1B9F0B82C(a1, a2, v26);
    _os_log_impl(&dword_1B9F07000, v13, v14, "Reachability status came back %@ for identifier %s", v16, 0x16u);
    sub_1B9F8C6C8(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1BFAF43A0](v19, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v9 + 8))(v11, v24);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v21 = [v12 integerValue];
  swift_beginAccess();
  sub_1BA202BD4(v21, a1, a2);
  return swift_endAccess();
}

void sub_1BA203A00(void *a1, void (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  sub_1BA4A3E28();
  v13 = a1;
  v14 = sub_1BA4A3E88();
  v15 = sub_1BA4A6FC8();

  v16 = os_log_type_enabled(v14, v15);
  v58 = v8;
  v56 = ObjectType;
  if (v16)
  {
    v54 = v7;
    v55 = a2;
    v57 = a3;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v62 = v18;
    *v17 = 136315394;
    v19 = sub_1BA4A85D8();
    v21 = sub_1B9F0B82C(v19, v20, &v62);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = [v13 normalizedAddress];
    if (v22)
    {
      v23 = v22;
      v24 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v60 = v24;
    v61 = v26;
    sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v29 = sub_1BA4A6808();
    v31 = sub_1B9F0B82C(v29, v30, &v62);

    *(v17 + 14) = v31;
    _os_log_impl(&dword_1B9F07000, v14, v15, "%s Attempting to update state for contact: %s.", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v18, -1, -1);
    MEMORY[0x1BFAF43A0](v17, -1, -1);

    v27 = *(v58 + 8);
    v7 = v54;
    v27(v12, v54);
    v28 = v55;
    a3 = v57;
  }

  else
  {

    v27 = *(v8 + 8);
    v27(v12, v7);
    v28 = a2;
  }

  v32 = sub_1BA1FF488(v13);
  v33 = v59;
  if (v32)
  {
    sub_1BA4A3E28();
    v34 = v13;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = v7;
      v57 = a3;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v62 = v39;
      *v38 = 136315394;
      v40 = sub_1BA4A85D8();
      v42 = sub_1B9F0B82C(v40, v41, &v62);

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = [v34 normalizedAddress];
      if (v43)
      {
        v44 = v28;
        v45 = v43;
        v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v48 = v47;

        v28 = v44;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v60 = v46;
      v61 = v48;
      sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v50 = sub_1BA4A6808();
      v52 = sub_1B9F0B82C(v50, v51, &v62);

      *(v38 + 14) = v52;
      _os_log_impl(&dword_1B9F07000, v35, v36, "%s Successfully updated contact %s as reachable.", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v38, -1, -1);

      v27(v59, v37);
      v49 = &selRef_systemBlueColor;
    }

    else
    {

      v27(v33, v7);
      v49 = &selRef_systemBlueColor;
    }
  }

  else
  {
    v49 = &selRef_secondaryLabelColor;
  }

  v53 = [objc_opt_self() *v49];
  v28();
}

void sub_1BA203F20(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v70 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - v8;
  v69 = a1;
  v10 = [a1 children];
  if (v10)
  {
    v12 = v10;
    sub_1B9F0ADF8(0, &qword_1EBBE9970);
    v13 = sub_1BA4A6B08();

    if (!(v13 >> 62))
    {
      goto LABEL_3;
    }

LABEL_24:
    v14 = sub_1BA4A7CC8();
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_25:

    return;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_24;
  }

LABEL_3:
  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_4:
  v59 = v9;
  v15 = 0;
  v16 = 0;
  v71 = v13 & 0xC000000000000001;
  v64 = v13 & 0xFFFFFFFFFFFFFF8;
  v17 = (v4 + 8);
  *&v11 = 136315394;
  v61 = v11;
  v62 = (v4 + 8);
  v18 = v70;
  v60 = v3;
  v67 = v13;
  v68 = v1;
  v66 = v14;
  while (1)
  {
    if (v71)
    {
      v19 = MEMORY[0x1BFAF2860](v15, v13);
    }

    else
    {
      if (v15 >= *(v64 + 16))
      {
        goto LABEL_33;
      }

      v19 = *(v13 + 8 * v15 + 32);
    }

    v20 = v19;
    v21 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    if (sub_1BA1FF488(v19))
    {
      break;
    }

LABEL_6:
    ++v15;
    if (v21 == v14)
    {
      goto LABEL_25;
    }
  }

  v22 = [v20 normalizedAddress];
  if (!v22 || (v23 = v22, v24 = [v22 _appearsToBeEmail], v23, v18 = v70, !v24))
  {
    sub_1BA4A3E28();
    v25 = v69;
    v26 = sub_1BA4A3E88();
    v27 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v26, v27))
    {
      v65 = v16;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v74 = v29;
      *v28 = v61;
      v30 = sub_1BA4A85D8();
      v32 = sub_1B9F0B82C(v30, v31, &v74);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2080;
      v33 = [v25 normalizedAddress];
      if (v33)
      {
        v34 = v33;
        v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v72 = v35;
      v73 = v37;
      sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v38 = sub_1BA4A6808();
      v40 = sub_1B9F0B82C(v38, v39, &v74);

      *(v28 + 14) = v40;
      _os_log_impl(&dword_1B9F07000, v26, v27, "%s Successfully found a reachable preferred endpoint for address %s.", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      MEMORY[0x1BFAF43A0](v28, -1, -1);

      v17 = v62;
      v18 = v70;
      v3 = v60;
      (*v62)(v70, v60);
    }

    else
    {

      (*v17)(v18, v3);
    }

    v16 = v20;
    v13 = v67;
    v14 = v66;
    goto LABEL_6;
  }

  v41 = v16;

  v42 = v59;
  sub_1BA4A3E28();
  v43 = v69;
  v44 = sub_1BA4A3E88();
  v45 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v74 = v47;
    *v46 = v61;
    v48 = sub_1BA4A85D8();
    v50 = sub_1B9F0B82C(v48, v49, &v74);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = [v43 normalizedAddress];
    if (v51)
    {
      v52 = v51;
      v53 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v72 = v53;
    v73 = v55;
    sub_1BA2057F0(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v56 = sub_1BA4A6808();
    v58 = sub_1B9F0B82C(v56, v57, &v74);

    *(v46 + 14) = v58;
    _os_log_impl(&dword_1B9F07000, v44, v45, "%s Successfully set email address %s as primary address.", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v47, -1, -1);
    MEMORY[0x1BFAF43A0](v46, -1, -1);

    (*v62)(v59, v3);
  }

  else
  {

    (*v17)(v42, v3);
  }
}

uint64_t sub_1BA204568(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2057F0(0, &qword_1EBBEE5B0, &type metadata for QueryState, MEMORY[0x1E695C060]);
  v10 = v9;
  v59 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  v13 = sub_1BA4A6478();
  v58 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1BA4A64C8();
  v55 = *(v57 - 8);
  v15 = MEMORY[0x1EEE9AC00](v57);
  v54 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 normalizedAddress];
  if (v17)
  {
    v18 = v17;
    v52 = v13;
    v53 = ObjectType;
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v21 = v20;

    v22 = OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachableContactIdentifiers;
    swift_beginAccess();
    v23 = *(*&v2[v22] + 16);

    if (v23 && (sub_1B9F24A34(v19, v21), (v24 & 1) != 0))
    {

      v26 = sub_1BA201EC4(v25);

      if (v26[2])
      {
        sub_1B9F24A34(v19, v21);
        v28 = v27;

        if (v28)
        {
          sub_1BA1FFBBC(a1);
        }
      }

      else
      {
      }

      sub_1B9F0ADF8(0, &qword_1EDC6B5A0);
      v44 = sub_1BA4A7308();
      v45 = swift_allocObject();
      *(v45 + 16) = v2;
      *(v45 + 24) = a1;
      aBlock[4] = sub_1BA204D68;
      aBlock[5] = v45;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B9F0B040;
      aBlock[3] = &block_descriptor_52;
      v46 = _Block_copy(aBlock);
      v47 = v2;
      v48 = a1;

      v49 = v54;
      sub_1BA4A64A8();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1B9F28F00(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60]);
      sub_1B9F0A878(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1B9F31534();
      v50 = v56;
      v51 = v52;
      sub_1BA4A7C38();
      MEMORY[0x1BFAF1D50](0, v49, v50, v46);

      _Block_release(v46);

      (*(v58 + 8))(v50, v51);
      return (*(v55 + 8))(v49, v57);
    }

    else
    {

      swift_beginAccess();
      sub_1BA2057F0(0, &qword_1EBBEE4E0, &type metadata for QueryState, MEMORY[0x1E695C070]);
      sub_1BA4A4EF8();
      swift_endAccess();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v31 = swift_allocObject();
      v31[2] = v30;
      v31[3] = a1;
      v31[4] = v53;
      sub_1BA204CEC();
      v32 = a1;
      v33 = sub_1BA4A5148();

      (*(v59 + 8))(v12, v10);
      *&v2[OBJC_IVAR____TtC18HealthExperienceUI51SummarySharingOnboardingContactPickerViewController_reachabilityQueryStateCancellable] = v33;
    }
  }

  else
  {
    v58 = v5;
    v59 = v6;
    sub_1BA4A3E28();
    v34 = a1;
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v37 = 136315394;
      v40 = sub_1BA4A85D8();
      v42 = sub_1B9F0B82C(v40, v41, aBlock);

      *(v37 + 4) = v42;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v34;
      *v38 = v34;
      v43 = v34;
      _os_log_impl(&dword_1B9F07000, v35, v36, "%s Recipient address is nil: %@", v37, 0x16u);
      sub_1B9F8C6C8(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1BFAF43A0](v39, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    return (*(v59 + 8))(v8, v58);
  }
}

unint64_t sub_1BA204CEC()
{
  result = qword_1EBBEE5B8;
  if (!qword_1EBBEE5B8)
  {
    sub_1BA2057F0(255, &qword_1EBBEE5B0, &type metadata for QueryState, MEMORY[0x1E695C060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE5B8);
  }

  return result;
}

void sub_1BA204D7C()
{
  if (!qword_1EBBEE5D0)
  {
    type metadata accessor for HKSharingReachabilityStatus(255);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE5D0);
    }
  }
}

uint64_t objectdestroy_48Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

void sub_1BA204E7C()
{
  if (!qword_1EBBEE5E0)
  {
    sub_1BA4A7488();
    sub_1B9F0ADF8(255, &unk_1EBBEE5E8);
    sub_1B9F28F00(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
    v0 = sub_1BA4A4AC8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE5E0);
    }
  }
}

void sub_1BA204F38()
{
  if (!qword_1EBBEE600)
  {
    sub_1BA4A7488();
    sub_1BA2057F0(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    sub_1B9F28F00(&unk_1EDC6B560, MEMORY[0x1E6969F20]);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE600);
    }
  }
}

void sub_1BA205008()
{
  if (!qword_1EBBEE608)
  {
    sub_1BA204F38();
    sub_1B9F0ADF8(255, &qword_1EBBEE610);
    sub_1B9F28F00(&qword_1EBBEE618, sub_1BA204F38);
    sub_1BA2050D4();
    v0 = sub_1BA4A4C48();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE608);
    }
  }
}

unint64_t sub_1BA2050D4()
{
  result = qword_1EBBEE620;
  if (!qword_1EBBEE620)
  {
    sub_1B9F0ADF8(255, &qword_1EBBEE610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE620);
  }

  return result;
}

void sub_1BA20514C()
{
  if (!qword_1EDC5F428)
  {
    sub_1B9F6A85C(255, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
    v0 = sub_1BA4A4E68();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F428);
    }
  }
}

void sub_1BA2051D0()
{
  if (!qword_1EBBEE640)
  {
    sub_1BA1107A8();
    sub_1BA20514C();
    sub_1B9F28F00(&qword_1EBBEE650, sub_1BA1107A8);
    sub_1B9F28F00(&qword_1EDC5F430, sub_1BA20514C);
    v0 = sub_1BA4A4A98();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE640);
    }
  }
}

void sub_1BA2052BC()
{
  if (!qword_1EBBEE660)
  {
    sub_1BA2051D0();
    sub_1B9F6A85C(255, &qword_1EDC5E1E0, &qword_1EDC6E370, 0x1E69DCAB8, sub_1B9F0ADF8);
    sub_1B9F28F00(&qword_1EBBEE668, sub_1BA2051D0);
    v0 = sub_1BA4A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE660);
    }
  }
}

uint64_t sub_1BA2053BC()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B9F0B82C(0xD00000000000003CLL, 0x80000001BA4F4930, &v10);
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Finished createShareHealthDataIcon stream", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA205554()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B9F0B82C(0xD000000000000039, 0x80000001BA4F47E0, &v10);
    _os_log_impl(&dword_1B9F07000, v4, v5, "[%s] Finished createShareHealthDataIcon stream", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFAF43A0](v7, -1, -1);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA2056EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 12)
  {
    return sub_1B9FF3BFC(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1BA205714@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BA205764()
{
  if (!qword_1EDC5DFE8)
  {
    sub_1BA2057F0(255, &qword_1EDC6B670, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    v0 = sub_1BA4A80A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5DFE8);
    }
  }
}

void sub_1BA2057F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1BA205878()
{
  sub_1BA2061F8();
  v2 = sub_1BA4A85D8();
  v3 = v0;
  result = MEMORY[0x1BFAF1350](0x6974696C6974552BLL, 0xEA00000000007365);
  qword_1EBBEE700 = v2;
  *algn_1EBBEE708 = v3;
  return result;
}

void sub_1BA2058E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v11[7] = ObjectType;
  v14[4] = sub_1BA205F3C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1BA0A2650;
  v14[3] = &block_descriptor_53;
  v12 = _Block_copy(v14);

  v13 = v5;
  sub_1B9F0F1B8(a3);

  [v13 fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion_];
  _Block_release(v12);
}

void sub_1BA2059FC(void *a1, void *a2, void (*a3)(void *, double), uint64_t a4, void *a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8)
{
  v44 = a7;
  v45 = a6;
  v13 = sub_1BA4A3EA8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  if (a1)
  {
    if (!a2)
    {
      a3(a1, v18);
      v21 = swift_allocObject();
      v23 = v44;
      v22 = v45;
      v21[2] = v45;
      v21[3] = v23;
      v21[4] = a1;
      v21[5] = a8;
      v50 = sub_1BA2061EC;
      v51 = v21;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1BA454240;
      v49 = &block_descriptor_6_6;
      v24 = _Block_copy(&aBlock);
      sub_1B9F0F1B8(v22);
      v25 = a1;

      [a5 updateMedicalIDData:v25 completion:v24];
      _Block_release(v24);
      return;
    }

    goto LABEL_11;
  }

  if (!a2)
  {
LABEL_11:
    sub_1BA4A3E28();
    v35 = sub_1BA4A3E88();
    v36 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      aBlock = v38;
      *v37 = 136446210;
      if (qword_1EBBE8518 != -1)
      {
        swift_once();
      }

      *(v37 + 4) = sub_1B9F0B82C(qword_1EBBEE700, *algn_1EBBEE708, &aBlock);
      _os_log_impl(&dword_1B9F07000, v35, v36, "[%{public}s]: Fetch or create and update Medical ID - fetch failed without receiving a Medical ID and an error", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1BFAF43A0](v38, -1, -1);
      MEMORY[0x1BFAF43A0](v37, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
    v39 = v45;
    if (v45)
    {
      if (qword_1EBBE8518 != -1)
      {
        swift_once();
      }

      aBlock = qword_1EBBEE700;
      v47 = *algn_1EBBEE708;

      MEMORY[0x1BFAF1350](0x6D6F44726F727245, 0xEB000000006E6961);
      v40 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v41 = sub_1BA4A6758();

      v42 = [v40 initWithDomain:v41 code:-1 userInfo:0];

      v39(v42, 1);
    }

    return;
  }

  sub_1BA4A3E28();
  v26 = a2;
  v27 = sub_1BA4A3E88();
  v28 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136446466;
    if (qword_1EBBE8518 != -1)
    {
      swift_once();
    }

    *(v29 + 4) = sub_1B9F0B82C(qword_1EBBEE700, *algn_1EBBEE708, &aBlock);
    *(v29 + 12) = 2082;
    v52 = a2;
    v31 = a2;
    sub_1B9FED358();
    v32 = sub_1BA4A6808();
    v34 = sub_1B9F0B82C(v32, v33, &aBlock);

    *(v29 + 14) = v34;
    _os_log_impl(&dword_1B9F07000, v27, v28, "[%{public}s]: Fetch or create and update Medical ID - fetch failed: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  (*(v14 + 8))(v20, v13);
  if (v45)
  {
    v45(a2, 1);
  }
}

void sub_1BA205F4C(uint64_t a1, void *a2, void (*a3)(void, void, __n128), uint64_t a4, uint64_t a5)
{
  v9 = sub_1BA4A3EA8();
  v10 = *(v9 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    goto LABEL_6;
  }

  v14 = a2;
  sub_1BA4A3E28();
  v15 = a2;
  v16 = sub_1BA4A3E88();
  v17 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = a5;
    v26 = a4;
    v27 = a3;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136446466;
    if (qword_1EBBE8518 != -1)
    {
      swift_once();
    }

    *(v18 + 4) = sub_1B9F0B82C(qword_1EBBEE700, *algn_1EBBEE708, &v29);
    *(v18 + 12) = 2082;
    v28 = a2;
    v20 = a2;
    sub_1B9FED358();
    v21 = sub_1BA4A6808();
    v23 = sub_1B9F0B82C(v21, v22, &v29);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_1B9F07000, v16, v17, "[%{public}s]: Failed to update Medical ID: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v19, -1, -1);
    MEMORY[0x1BFAF43A0](v18, -1, -1);

    (*(v10 + 8))(v13, v9);
    a3 = v27;
    a5 = v25;
LABEL_6:
    if (!a3)
    {
      return;
    }

    goto LABEL_7;
  }

  (*(v10 + 8))(v13, v9);
  if (!a3)
  {
    return;
  }

LABEL_7:
  a3(a5, 0, v11);
}

unint64_t sub_1BA2061F8()
{
  result = qword_1EBBEE710;
  if (!qword_1EBBEE710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEE710);
  }

  return result;
}

uint64_t sub_1BA20624C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "feedItemIsFaulting";
  v4 = 0xD000000000000016;
  if (v2 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000015;
  }

  if (v2 == 1)
  {
    v6 = "feedItemIsFaulting";
  }

  else
  {
    v6 = "noParentViewController";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "CRRecentsDomainMessages";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "noParentViewController";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "CRRecentsDomainMessages";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BA4A8338();
  }

  return v11 & 1;
}

uint64_t sub_1BA206324()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA2063C0()
{
  sub_1BA4A68C8();
}

uint64_t sub_1BA206448()
{
  sub_1BA4A8488();
  sub_1BA4A68C8();

  return sub_1BA4A84D8();
}

uint64_t sub_1BA2064E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BA2080E4();
  *a1 = result;
  return result;
}

void sub_1BA206510(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "feedItemIsFaulting";
  v4 = 0xD000000000000016;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = "noParentViewController";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "CRRecentsDomainMessages";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

void sub_1BA20656C(void **a1, uint64_t a2)
{
  v97 = a2;
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v92 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v92 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v92 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v96 = v92 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = v92 - v19;
  v21 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if ([v21 faultingState])
    {
      if (HAFeatureFlagViewLoggingEnabled())
      {
        sub_1BA4A3DD8();
        v24 = v23;
        v25 = sub_1BA4A3E88();
        v26 = v23;
        v27 = sub_1BA4A6FC8();

        if (os_log_type_enabled(v25, v27))
        {
          v28 = v4;
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v24;
          *v30 = v26;
          v31 = v24;
          _os_log_impl(&dword_1B9F07000, v25, v27, "%{public}@ startUserDataObserver() observer fired but feed item is faulting", v29, 0xCu);
          sub_1B9F8C6C8(v30);
          MEMORY[0x1BFAF43A0](v30, -1, -1);
          v32 = v29;
          v4 = v28;
          MEMORY[0x1BFAF43A0](v32, -1, -1);
        }

        (*(v4 + 8))(v7, v3);
LABEL_23:

        return;
      }

      goto LABEL_28;
    }

    v94 = v3;
    v95 = v4;
    v33 = v21;
    v34 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface);
    v35 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 8);
    v36 = *(v23 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 16);
    sub_1BA207FD8(v34, v35, *(v23 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 16));
    v93 = v33;
    v37 = sub_1BA4A2718();
    if (v36 == 255)
    {
      sub_1B9F244F4(v37, v38, v39);
    }

    else
    {
      v92[0] = v13;
      v92[1] = v16;
      v40 = v37;
      v41 = v38;
      v42 = v23;
      v43 = v39;
      v44 = MEMORY[0x1BFAEC7D0](v34, v35, v36, v37, v38, v39);
      v45 = v43;
      v23 = v42;
      sub_1B9F244F4(v40, v41, v45);
      sub_1B9F6B070(v34, v35, v36);
      if (v44)
      {
        v46 = (v42 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
        swift_beginAccess();
        v47 = *v46;
        if (!*v46)
        {
          if (HAFeatureFlagViewLoggingEnabled())
          {
            sub_1BA4A3DD8();
            v24 = v42;
            v60 = sub_1BA4A3E88();
            v61 = sub_1BA4A6FC8();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *v62 = 138543362;
              *(v62 + 4) = v24;
              *v63 = v42;
              v64 = v24;
              _os_log_impl(&dword_1B9F07000, v60, v61, "%{public}@ startUserDataObserver() nil hostedViewable", v62, 0xCu);
              sub_1B9F8C6C8(v63);
              MEMORY[0x1BFAF43A0](v63, -1, -1);
              MEMORY[0x1BFAF43A0](v62, -1, -1);
            }

            (*(v95 + 8))(v20, v94);
            goto LABEL_23;
          }

          goto LABEL_28;
        }

        sub_1BA207FEC();
        v48 = v47;
        sub_1BA4A14A8();
        v49 = v98[0];
        v50 = v98[1];
        sub_1BA4A1498();
        v52 = v98[5];
        v51 = v99;
        v53 = v99 & 0xF000000000000000;
        if (v50 >> 60 == 11)
        {
          v54 = v93;
          if (v53 == 0xB000000000000000)
          {
LABEL_14:
            sub_1BA208054(v49, v50);
LABEL_15:
            if (HAFeatureFlagViewLoggingEnabled())
            {
              sub_1BA207214(v42, v54);
            }

LABEL_28:
            return;
          }
        }

        else
        {
          v54 = v93;
          if (v53 != 0xB000000000000000)
          {
            if (v50 >> 60 == 15)
            {
              if (v99 >> 60 == 15)
              {
                sub_1BA208068(v49, v50);
                sub_1B9F6AC8C(v49, v50);
                goto LABEL_14;
              }
            }

            else if (v99 >> 60 != 15)
            {
              sub_1BA208068(v49, v50);
              sub_1BA208068(v49, v50);
              sub_1BA208068(v52, v51);
              v91 = sub_1BA207E1C(v49, v50, v52, v51);
              sub_1BA208054(v52, v51);
              sub_1BA208054(v49, v50);
              sub_1B9F6AC8C(v52, v51);
              sub_1B9F6AC8C(v49, v50);
              sub_1BA208054(v49, v50);
              if (v91)
              {
                goto LABEL_15;
              }

              goto LABEL_33;
            }

            sub_1BA208068(v49, v50);
            sub_1B9F6AC8C(v49, v50);
            sub_1B9F6AC8C(v52, v51);
            v65 = v49;
            v66 = v50;
LABEL_32:
            sub_1BA208054(v65, v66);
LABEL_33:
            v67 = HAFeatureFlagViewLoggingEnabled();
            v69 = v94;
            v68 = v95;
            if (v67)
            {
              sub_1BA4A3DD8();
              v70 = v42;
              v71 = sub_1BA4A3E88();
              v72 = sub_1BA4A6FC8();

              if (os_log_type_enabled(v71, v72))
              {
                v73 = swift_slowAlloc();
                v74 = swift_slowAlloc();
                *v73 = 138543362;
                *(v73 + 4) = v70;
                *v74 = v42;
                v75 = v70;
                _os_log_impl(&dword_1B9F07000, v71, v72, "%{public}@ startUserDataObserver() observer fired", v73, 0xCu);
                sub_1B9F8C6C8(v74);
                MEMORY[0x1BFAF43A0](v74, -1, -1);
                v76 = v73;
                v68 = v95;
                MEMORY[0x1BFAF43A0](v76, -1, -1);
              }

              (*(v68 + 8))(v96, v69);
            }

            swift_getObjectType();
            v77 = swift_conformsToProtocol2();
            if (v77)
            {
              v78 = v77;
              v79 = v48;
              if (HAFeatureFlagViewLoggingEnabled())
              {
                sub_1BA20749C(v23, v54, v79);
              }

              sub_1B9F6A2F0(v54, v98);
              ObjectType = swift_getObjectType();
              (*(v78 + 24))(v98, ObjectType, v78);
              (*((*MEMORY[0x1E69E7D40] & *v23) + 0x128))(0);
            }

            else if (HAFeatureFlagViewLoggingEnabled())
            {
              v80 = v48;
              v81 = v92[0];
              sub_1BA4A3DD8();
              v82 = v23;
              v83 = sub_1BA4A3E88();
              v84 = v23;
              v85 = sub_1BA4A6FC8();

              if (os_log_type_enabled(v83, v85))
              {
                v86 = swift_slowAlloc();
                v87 = swift_slowAlloc();
                *v86 = 138543362;
                *(v86 + 4) = v82;
                *v87 = v84;
                v88 = v82;
                _os_log_impl(&dword_1B9F07000, v83, v85, "%{public}@ hostedViewable is not a context consumer", v86, 0xCu);
                sub_1B9F8C6C8(v87);
                MEMORY[0x1BFAF43A0](v87, -1, -1);
                v89 = v86;
                v68 = v95;
                MEMORY[0x1BFAF43A0](v89, -1, -1);
              }

              (*(v68 + 8))(v81, v69);
            }

            else
            {
            }

            return;
          }
        }

        sub_1BA208054(v49, v50);
        v65 = v52;
        v66 = v51;
        goto LABEL_32;
      }
    }

    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v24 = v23;
      v55 = sub_1BA4A3E88();
      v56 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *v57 = 138543362;
        *(v57 + 4) = v24;
        *v58 = v23;
        v59 = v24;
        _os_log_impl(&dword_1B9F07000, v55, v56, "%{public}@ The feed item updated its UserInterface and user data. We don't want to pass new user data to the old view controller.", v57, 0xCu);
        sub_1B9F8C6C8(v58);
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v57, -1, -1);
      }

      (*(v95 + 8))(v10, v94);
      goto LABEL_23;
    }

    goto LABEL_28;
  }

  if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA2070E0();
  }
}

uint64_t sub_1BA2070E0()
{
  v0 = sub_1BA4A3EA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v4 = sub_1BA4A3E88();
  v5 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1B9F07000, v4, v5, "startUserDataObserver() self = nil - not doing anything", v6, 2u);
    MEMORY[0x1BFAF43A0](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1BA207214(void *a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v8 = a1;
  v9 = a2;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    v15 = v8;
    v16 = [v9 legacyUserInterfaceClassName];
    if (v16)
    {
      v30[0] = v10;
      v17 = v5;
      v18 = v11;
      v19 = v13;
      v20 = v14;
      v21 = v4;
      v22 = v16;
      v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v25 = v24;

      v4 = v21;
      v14 = v20;
      v13 = v19;
      v11 = v18;
      v5 = v17;
      v10 = v30[0];
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    v30[1] = v23;
    v30[2] = v25;
    sub_1B9F23398(0, &qword_1EDC6E410);
    v26 = sub_1BA4A6808();
    v28 = sub_1B9F0B82C(v26, v27, &v31);

    *(v12 + 14) = v28;
    _os_log_impl(&dword_1B9F07000, v10, v11, "%{public}@ startUserDataObserver() observer fired, but newValue is the same as oldValue %s", v12, 0x16u);
    sub_1B9F8C6C8(v13);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFAF43A0](v14, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BA20749C(void *a1, void *a2, void *a3)
{
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = sub_1BA4A3E88();
  v14 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v15 = 138543874;
    *(v15 + 4) = v10;
    *v16 = v10;
    *(v15 + 12) = 2080;
    v17 = v10;
    v18 = [v11 uniqueIdentifier];
    v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v28 = v6;
    v21 = v20;

    v22 = sub_1B9F0B82C(v19, v21, &v31);

    *(v15 + 14) = v22;
    *(v15 + 22) = 2080;
    swift_getObjectType();
    v30 = v12;
    swift_getWitnessTable();
    v23 = sub_1BA02E38C();
    v25 = sub_1B9F0B82C(v23, v24, &v31);

    *(v15 + 24) = v25;
    _os_log_impl(&dword_1B9F07000, v13, v14, "%{public}@ Setting context for feedItem %s, view %s ", v15, 0x20u);
    sub_1B9F8C6C8(v16);
    MEMORY[0x1BFAF43A0](v16, -1, -1);
    v26 = v29;
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v26, -1, -1);
    MEMORY[0x1BFAF43A0](v15, -1, -1);

    return (*(v7 + 8))(v9, v28);
  }

  else
  {

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1BA20775C(void *a1, void *a2)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3DD8();
  v8 = a1;
  v9 = a2;
  v10 = sub_1BA4A3E88();
  v11 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v4;
    v15 = v14;
    v24 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v8;
    *v13 = v8;
    *(v12 + 12) = 2080;
    swift_getObjectType();
    v23 = v9;
    v16 = v8;
    swift_getWitnessTable();
    v17 = sub_1BA02E38C();
    v19 = sub_1B9F0B82C(v17, v18, &v24);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_1B9F07000, v10, v11, "%{public}@ Setting section for view %s ", v12, 0x16u);
    sub_1B9F8C6C8(v13);
    MEMORY[0x1BFAF43A0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1BFAF43A0](v15, -1, -1);
    MEMORY[0x1BFAF43A0](v12, -1, -1);

    return (*(v5 + 8))(v7, v22);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BA2079A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1BA4A10C8();
    if (v10)
    {
      v11 = sub_1BA4A10E8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1BA4A10D8();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1BA4A10C8();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BA4A10E8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BA4A10D8();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1BA207BD4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1BA207D64(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B9F2BB4C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1BA2079A4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B9F2BB4C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1BA207D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BA4A10C8();
  v11 = result;
  if (result)
  {
    result = sub_1BA4A10E8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BA4A10D8();
  sub_1BA2079A4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1BA207E1C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1B9F206D4(a3, a4);
          return sub_1BA207BD4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1BA207F84()
{
  result = qword_1EBBEE718;
  if (!qword_1EBBEE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE718);
  }

  return result;
}

uint64_t sub_1BA207FD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1BA1EB37C(a1, a2, a3);
  }

  return a1;
}

void sub_1BA207FEC()
{
  if (!qword_1EDC6E288)
  {
    sub_1B9F23398(255, &unk_1EDC6E268);
    v0 = sub_1BA4A14B8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6E288);
    }
  }
}

uint64_t sub_1BA208054(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B9F6AC8C(a1, a2);
  }

  return a1;
}

uint64_t sub_1BA208068(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1B9F6AD84(a1, a2);
  }

  return a1;
}

unint64_t sub_1BA208090()
{
  result = qword_1EBBEE720;
  if (!qword_1EBBEE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE720);
  }

  return result;
}

uint64_t sub_1BA2080E4()
{
  v0 = sub_1BA4A8108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t DataTypeDetailConfiguration.AppsComponent.makeDataSource(context:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(a1 + 48);
  v5 = sub_1BA4A6F38();
  if (v4 == 1 && (v6 = sub_1BA4A1D78(), v7 = sub_1BA4A1D68(), v6, (v7 & 1) != 0))
  {
    __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    v8 = sub_1BA4A1B68();
    sub_1BA15E094();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1BA4B5480;
    v10 = v3;
    *(v9 + 32) = sub_1BA4A6F38();
    sub_1B9FE1FC4(&unk_1F37FBD28);
    v11 = objc_allocWithZone(type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource());
    v12 = sub_1BA456148(v8, v10, v9);

    sub_1BA208380();
    v13 = swift_allocObject();
    v14 = 0;
    v15 = (v12 + qword_1EDC84AD0);
    v16 = (v12 + qword_1EDC84AD0 + 8);
  }

  else
  {

    type metadata accessor for EmptyDataSource();
    swift_allocObject();
    v12 = EmptyDataSource.init()();
    sub_1BA208380();
    v13 = swift_allocObject();
    v15 = (v12 + 16);
    v16 = (v12 + 24);
    v14 = 1;
  }

  v17 = *v15;
  v18 = *v16;
  *(v13 + 16) = v17;
  *(v13 + 24) = v18;
  *(v13 + 32) = v12;
  *(v13 + 40) = v14;

  return v13;
}

void sub_1BA208380()
{
  if (!qword_1EDC66D08)
  {
    type metadata accessor for AppRecommendationsFetchedResultsControllerDataSource();
    type metadata accessor for EmptyDataSource();
    v0 = type metadata accessor for _ConditionalDataSource();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC66D08);
    }
  }
}

char *sub_1BA208430(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v32 = a4;
  v35 = a3;
  v33 = a1;
  v34 = type metadata accessor for LayoutConfigurationType;
  sub_1BA20ACC4(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v28 - v6);
  v8 = sub_1BA4A3BD8();
  v30 = *(v8 - 8);
  v9 = v30;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v11;
  v12 = sub_1BA4A0FA8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v13 + 16);
  v17(v16, a2, v12, v14);
  v18 = *(v9 + 16);
  v18(v11, v35, v8);
  *v7 = v32;
  v19 = type metadata accessor for LayoutConfigurationType();
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  sub_1BA20B0C4(0, &qword_1EBBEE740, type metadata accessor for CategoryDataTypesDataSource);
  v21 = objc_allocWithZone(v20);
  (v17)(&v21[qword_1EBC09440], v16, v12);
  v22 = v29;
  v23 = v8;
  v18(&v21[qword_1EBC09448], v29, v8);
  sub_1BA05EEB4(v7, &v21[qword_1EBC09450]);
  v24 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v33);
  v25 = *(v30 + 8);
  v25(v35, v23);
  v26 = *(v13 + 8);
  v26(v31, v12);
  sub_1BA20AD28(v7, qword_1EDC66C30, v34);
  v25(v22, v23);
  v26(v16, v12);
  return v24;
}

uint64_t CategoryViewDataSource.__allocating_init(typeGroup:context:healthExperienceStore:sourceProfile:showNoData:)(uint64_t *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v9 = swift_allocObject();
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v15 = a1[4];
  v14 = a1[5];
  v16 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_typeGroup);
  *v16 = v11;
  v16[1] = v10;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v15;
  v16[5] = v14;
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_context) = a2;
  sub_1B9F0A534(a3, v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore);
  *(v9 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_sourceProfile) = a4;
  v24[0] = v11;
  v24[1] = v10;
  v24[2] = v13;
  v24[3] = v12;
  v24[4] = v15;
  v24[5] = v14;
  sub_1B9F0A534(a3, v23);
  v17 = a4;

  v18 = a2;
  _s18HealthExperienceUI30CategoryViewDataSourceProviderC3for5store13sourceProfile06showNoF0AcA11HKTypeGroupV_0A8Platform0aB5Store_pAJ0gL0OSbtcfC_0(v24, v23, a4, a5);
  v19 = sub_1BA20916C();
  v20 = CompoundSectionedDataSource.init(_:)(v19);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v20;
}

uint64_t CategoryViewDataSource.init(typeGroup:context:healthExperienceStore:sourceProfile:showNoData:)(uint64_t *a1, void *a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = (v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_typeGroup);
  *v16 = *a1;
  v16[1] = v10;
  v16[2] = v13;
  v16[3] = v12;
  v16[4] = v14;
  v16[5] = v15;
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_context) = a2;
  sub_1B9F0A534(a3, v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore);
  *(v6 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_sourceProfile) = a4;
  v24[0] = v11;
  v24[1] = v10;
  v24[2] = v13;
  v24[3] = v12;
  v24[4] = v14;
  v24[5] = v15;
  sub_1B9F0A534(a3, v23);
  v17 = a4;

  v18 = a2;
  _s18HealthExperienceUI30CategoryViewDataSourceProviderC3for5store13sourceProfile06showNoF0AcA11HKTypeGroupV_0A8Platform0aB5Store_pAJ0gL0OSbtcfC_0(v24, v23, a4, a5);
  v19 = sub_1BA20916C();
  v20 = CompoundSectionedDataSource.init(_:)(v19);

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v20;
}

void sub_1BA208A54()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore);
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_sourceProfile);
}

uint64_t CategoryViewDataSource.deinit()
{

  v1 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  sub_1B9F12538();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18HealthExperienceUI22CategoryViewDataSource_healthExperienceStore);
  return v0;
}

uint64_t CategoryViewDataSource.__deallocating_deinit()
{
  CategoryViewDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA208C44(uint64_t a1, uint64_t *a2)
{
  sub_1B9F0A534(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v3 + 88);
  sub_1B9F25598(v5, v3 + 88);
  return swift_endAccess();
}

uint64_t sub_1BA208CF0(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 88);
  sub_1B9F25598(a1, v1 + 88);
  return swift_endAccess();
}

uint64_t sub_1BA208DCC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

void *CategoryViewDataSourceProvider.sourceProfile.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

uint64_t static CategoryViewDataSourceProvider.noDataAvailableReuseIdentifier.getter()
{
  swift_beginAccess();
  v0 = qword_1EBBEE728;

  return v0;
}

uint64_t static CategoryViewDataSourceProvider.noDataAvailableReuseIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  qword_1EBBEE728 = a1;
  off_1EBBEE730 = a2;
}

uint64_t sub_1BA208F94(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBBEE728 = v2;
  off_1EBBEE730 = v1;
}

uint64_t CategoryViewDataSourceProvider.__allocating_init(summarySectionPredicate:getMoreFromHealthPredicate:articlesPredicate:store:sourceProfile:chrOnly:showNoData:typeGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v15 = swift_allocObject();
  v17 = *(a8 + 32);
  v16 = *(a8 + 40);
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  sub_1B9F25598(a4, v15 + 88);
  *(v15 + 136) = a5;
  *(v15 + 128) = a6;
  *(v15 + 144) = a7;
  v18 = *(v15 + 40);
  v19 = *(v15 + 48);
  v20 = *(a8 + 16);
  *(v15 + 40) = *a8;
  *(v15 + 56) = v20;
  *(v15 + 72) = v17;
  *(v15 + 80) = v16;
  sub_1BA20AC74(v18, v19);
  return v15;
}

uint64_t CategoryViewDataSourceProvider.init(summarySectionPredicate:getMoreFromHealthPredicate:articlesPredicate:store:sourceProfile:chrOnly:showNoData:typeGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, char a6, char a7, uint64_t a8)
{
  v13 = *(a8 + 32);
  v14 = *(a8 + 40);
  *(v8 + 40) = 0u;
  *(v8 + 56) = 0u;
  *(v8 + 72) = 0u;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  sub_1B9F25598(a4, v8 + 88);
  *(v8 + 136) = a5;
  *(v8 + 128) = a6;
  *(v8 + 144) = a7;
  v15 = *(v8 + 40);
  v16 = *(v8 + 48);
  v17 = *(a8 + 16);
  *(v8 + 40) = *a8;
  *(v8 + 56) = v17;
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  sub_1BA20AC74(v15, v16);
  return v8;
}

uint64_t sub_1BA20916C()
{
  v1 = sub_1BA4A3BD8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F1B4AC(0, &qword_1EDC5DC70, &qword_1EDC67F10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1BA4B9A90;
  v6 = *(v2 + 104);
  v6(v4, *MEMORY[0x1E69A3E50], v1);
  v7 = sub_1BA2094E8(v4);
  v8 = *(v2 + 8);
  v8(v4, v1);
  *(v5 + 32) = v7;
  *(v5 + 40) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v6(v4, *MEMORY[0x1E69A3E58], v1);
  v9 = sub_1BA2094E8(v4);
  v8(v4, v1);
  *(v5 + 48) = v9;
  *(v5 + 56) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v6(v4, *MEMORY[0x1E69A3E68], v1);
  v10 = sub_1BA2094E8(v4);
  v8(v4, v1);
  *(v5 + 64) = v10;
  *(v5 + 72) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v6(v4, *MEMORY[0x1E69A3E60], v1);
  v11 = sub_1BA2094E8(v4);
  v8(v4, v1);
  *(v5 + 80) = v11;
  *(v5 + 88) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  v6(v4, *MEMORY[0x1E69A3E40], v1);
  v12 = sub_1BA2094E8(v4);
  v8(v4, v1);
  *(v5 + 96) = v12;
  *(v5 + 104) = &protocol witness table for FetchedResultsControllerDataSource<A>;
  if (*(v0 + 144) == 1)
  {
    v13 = sub_1BA209A08();
    v5 = sub_1B9F1E00C(1, 6, 1, v5);
    v25 = v5;
    ObjectType = swift_getObjectType();
    sub_1BA1BA008(5, v13, &v25, ObjectType, &protocol witness table for FetchedResultsControllerDataSource<A>);
  }

  v15 = sub_1BA20A098();
  v25 = v5;
  v17 = *(v5 + 16);
  v16 = *(v5 + 24);
  if (v17 >= v16 >> 1)
  {
    v5 = sub_1B9F1E00C(v16 > 1, v17 + 1, 1, v5);
    v25 = v5;
  }

  v18 = swift_getObjectType();
  sub_1BA1BA008(v17, v15, &v25, v18, &protocol witness table for DataSourceWithSectionItemLimit<A>);
  v19 = sub_1BA20A5E4();
  v25 = v5;
  v21 = *(v5 + 16);
  v20 = *(v5 + 24);
  if (v21 >= v20 >> 1)
  {
    v5 = sub_1B9F1E00C(v20 > 1, v21 + 1, 1, v5);
    v25 = v5;
  }

  v22 = swift_getObjectType();
  sub_1BA1BA008(v21, v19, &v25, v22, &protocol witness table for DataSourceWithSectionItemLimit<A>);
  return v5;
}

char *sub_1BA2094E8(uint64_t a1)
{
  v35 = sub_1BA4A3BD8();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BA4A0FA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E6968130];
  sub_1BA20ACC4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  sub_1BA4A0F18();
  sub_1BA4A3C18();
  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  v13 = *(v1 + 128);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BA4B5480;
  v15 = *(v1 + 136);
  *(v14 + 32) = v15;
  v16 = v15;
  v17 = sub_1BA28E2E8(a1, v12, v13, v14);

  sub_1BA20AD28(v12, &qword_1EDC6E2A0, v9);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B7510;
  v19 = *(v1 + 16);
  *(v18 + 32) = v17;
  *(v18 + 40) = v19;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v33 = v17;
  v20 = v19;
  v21 = sub_1BA4A6AE8();

  v22 = [objc_opt_self() andPredicateWithSubpredicates_];

  sub_1BA4A27B8();
  v23 = MEMORY[0x1BFAED110]();
  sub_1BA28D2CC([v23 setPredicate_]);
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v24 = sub_1BA4A6AE8();

  [v23 setSortDescriptors_];

  swift_beginAccess();
  sub_1B9F0A534(v1 + 88, &v38);
  __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
  v25 = v23;
  v26 = v34;
  v27 = sub_1BA4A1B68();
  v28 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v25 managedObjectContext:v27 sectionNameKeyPath:0 cacheName:0];

  __swift_destroy_boxed_opaque_existential_1(&v38);
  sub_1BA4A0F18();
  (*(v3 + 16))(v26, a1, v35);
  if (qword_1EDC6D380 != -1)
  {
    swift_once();
  }

  v42 = xmmword_1EDC6D3C8;
  v43 = unk_1EDC6D3D8;
  v44 = xmmword_1EDC6D3E8;
  v45 = unk_1EDC6D3F8;
  v38 = xmmword_1EDC6D388;
  v39 = xmmword_1EDC6D398;
  v40 = xmmword_1EDC6D3A8;
  v41 = xmmword_1EDC6D3B8;
  sub_1B9F0ADF8(0, &qword_1EDC6B530);
  v37[4] = xmmword_1EDC6D3C8;
  v37[5] = unk_1EDC6D3D8;
  v37[6] = xmmword_1EDC6D3E8;
  v37[7] = unk_1EDC6D3F8;
  v37[0] = xmmword_1EDC6D388;
  v37[1] = xmmword_1EDC6D398;
  v37[2] = xmmword_1EDC6D3A8;
  v37[3] = xmmword_1EDC6D3B8;
  sub_1B9F1D9A4(&v38, &v36);
  v29 = sub_1B9F293A8(v37);
  v30 = sub_1BA208430(v28, v8, v26, v29);

  return v30;
}

char *sub_1BA209A08()
{
  v1 = v0;
  sub_1BA20ACC4(0, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v49 = &v48 - v3;
  v4 = sub_1BA4A1C68();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  sub_1B9F1B4AC(0, &qword_1EDC6B410, &qword_1EDC6B3D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5460;
  v9 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1B9F1BE20();
  *(v8 + 64) = v10;
  *(v8 + 32) = 0xD000000000000013;
  *(v8 + 40) = 0x80000001BA4EF0F0;
  (*(v5 + 104))(v7, *MEMORY[0x1E69A3BB8], v4);
  v11 = sub_1BA4A1C58();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(v8 + 96) = v9;
  *(v8 + 104) = v10;
  *(v8 + 72) = v11;
  *(v8 + 80) = v13;
  v14 = sub_1BA4A6EE8();
  sub_1BA4A27B8();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B5480;
  v16 = *(v1 + 136);
  *(v15 + 32) = v16;
  v17 = v16;
  v18 = MEMORY[0x1BFAED1E0](v15);

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1BA4B8B60;
  *(v19 + 32) = v14;
  *(v19 + 40) = v18;
  v20 = *(v1 + 16);
  *(v19 + 48) = v20;
  v48 = v14;
  v21 = v18;
  v22 = v20;
  v23 = sub_1BA4A6AE8();

  v24 = [objc_opt_self() andPredicateWithSubpredicates_];

  v25 = MEMORY[0x1BFAED110]();
  [v25 setPredicate_];
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1BA4B5470;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v28 = sub_1BA4A6758();
  v29 = [v27 initWithKey:v28 ascending:1 selector:sel_localizedStandardCompare_];

  *(v26 + 32) = v29;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v30 = sub_1BA4A6AE8();

  [v25 setSortDescriptors_];

  swift_beginAccess();
  sub_1B9F0A534(v1 + 88, v50);
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v31 = v25;
  v32 = sub_1BA4A1B68();
  v33 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v31 managedObjectContext:v32 sectionNameKeyPath:0 cacheName:0];

  __swift_destroy_boxed_opaque_existential_1(v50);
  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  v34 = sub_1BA4A1318();
  v36 = v35;
  swift_beginAccess();
  v37 = qword_1EBBEE728;
  v38 = off_1EBBEE730;
  v39 = type metadata accessor for LayoutConfigurationType();
  v40 = v49;
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  sub_1BA20B0C4(0, &qword_1EBBEE738, type metadata accessor for CategoryDataSource);
  v42 = objc_allocWithZone(v41);
  v43 = &v42[qword_1EBC09460];
  *v43 = v37;
  v43[1] = v38;
  v44 = &v42[qword_1EBC09468];
  *v44 = v34;
  v44[1] = v36;
  v45 = &v42[qword_1EBC09470];
  *v45 = 0;
  *(v45 + 1) = 0;
  sub_1BA05EEB4(v40, &v42[qword_1EBC09458]);

  v46 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v33);

  sub_1BA20AD28(v40, qword_1EDC66C30, type metadata accessor for LayoutConfigurationType);
  return v46;
}

uint64_t sub_1BA20A098()
{
  v36 = MEMORY[0x1E6968130];
  sub_1BA20ACC4(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - v2;
  swift_beginAccess();
  sub_1B9F0A534(v0 + 88, v39);
  __swift_project_boxed_opaque_existential_1(v39, v39[3]);
  v38 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5460;
  v5 = *(v0 + 136);
  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  v6 = *(v0 + 24);
  v37 = objc_allocWithZone(type metadata accessor for GetMoreFromHealthResultsController());
  sub_1BA4A27B8();
  sub_1BA20ACC4(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v7 = sub_1BA4A1C68();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BA4B5480;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x1E69A3C00], v7);
  v11 = sub_1BA4A0FA8();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = v5;
  v13 = v6;
  v14 = MEMORY[0x1BFAED020](v10, 0, v3, v4);

  sub_1BA20AD28(v3, &qword_1EDC6E2A0, v36);
  sub_1B9F1C048(0, &qword_1EDC6B400);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BA4B7510;
  *(v15 + 32) = v14;
  *(v15 + 40) = v13;
  sub_1B9F0ADF8(0, &qword_1EDC6B630);
  v16 = v13;
  v17 = v14;
  v18 = sub_1BA4A6AE8();

  v19 = [objc_opt_self() andPredicateWithSubpredicates_];

  v20 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v21 = v19;
  v22 = sub_1BA4A6758();
  v23 = [v20 initWithKey:v22 ascending:0];

  v24 = MEMORY[0x1BFAED110]();
  [v24 setPredicate_];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1BA4B5470;
  *(v25 + 32) = v23;
  sub_1B9F0ADF8(0, &qword_1EDC6E3E0);
  v26 = v23;
  v27 = sub_1BA4A6AE8();

  [v24 setSortDescriptors_];

  [v24 setFetchLimit_];
  v28 = objc_allocWithZone(MEMORY[0x1E695D600]);
  v29 = v38;
  v30 = [v28 initWithFetchRequest:v24 managedObjectContext:v38 sectionNameKeyPath:0 cacheName:0];
  v31 = &v37[qword_1EDC61AF0];
  *v31 = sub_1BA236D80;
  v31[1] = 0;
  v32 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v30);

  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_1BA20AD98(0, qword_1EDC63990, type metadata accessor for GetMoreFromHealthResultsController);
  swift_allocObject();
  v33 = sub_1BA0488BC(v32, 3);

  return v33;
}

uint64_t sub_1BA20A5E4()
{
  v1 = v0;
  v2 = v0[6];
  if (v2)
  {
    v3 = v1[5];
    v4 = v1[7];
    v5 = v1[8];
    v6 = v1[9];
    v7 = objc_opt_self();

    v8 = [v7 categoryWithID_];
    if (v8)
    {
      v9 = v8;
      v10 = v3;
      v11 = [v8 embeddedDisplayName];
      v12 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v14 = v13;

      v3 = v10;
    }

    else
    {

      v12 = v5;
      v14 = v6;
    }

    sub_1BA3F0744(v4, v12, v14, v30);
    sub_1BA20AC74(v3, v2);

    v15 = v30[0];
    v16 = v30[1];
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  swift_beginAccess();
  sub_1B9F0A534((v1 + 11), v30);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v17 = sub_1BA4A1B68();
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5460;
  v19 = v1[17];
  *(v18 + 32) = v19;
  *(v18 + 40) = 0;
  v20 = v1[4];
  v27[1] = v16;
  v28 = v20;
  v29 = 1;
  v27[0] = v15;
  v21 = objc_allocWithZone(type metadata accessor for ArticlesFetchedResultsControllerDataSource());
  v22 = v19;
  v23 = v20;
  v24 = ArticlesFetchedResultsControllerDataSource.init(managedObjectContext:sourceProfiles:predicate:header:)(v17, v18, &v28, v27);
  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_1BA20AD98(0, &qword_1EDC63988, type metadata accessor for ArticlesFetchedResultsControllerDataSource);
  swift_allocObject();
  v25 = sub_1BA0488BC(v24, 3);

  return v25;
}

uint64_t CategoryViewDataSourceProvider.deinit()
{
  sub_1BA20AC74(*(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return v0;
}

uint64_t CategoryViewDataSourceProvider.__deallocating_deinit()
{
  sub_1BA20AC74(*(v0 + 40), *(v0 + 48));
  __swift_destroy_boxed_opaque_existential_1(v0 + 88);

  return swift_deallocClassInstance();
}

unint64_t sub_1BA20A958(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 16) == 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (v1 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
    {
      for (j = 0; ; ++j)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1BFAF2860](j, v1);
        }

        else
        {
          if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v4 = *(v1 + 8 * j + 32);
        }

        v5 = v4;
        v6 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        v7 = [v4 identifier];
        v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v10 = v9;

        if (v8 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v10 == v11)
        {
        }

        else
        {
          v13 = sub_1BA4A8338();

          if (v13)
          {
          }

          else
          {
            sub_1BA4A7ED8();
            sub_1BA4A7F18();
            sub_1BA4A7F28();
            sub_1BA4A7EE8();
          }
        }

        if (v6 == i)
        {
          return v15;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  return v1;
}

uint64_t _s18HealthExperienceUI30CategoryViewDataSourceProviderC3for5store13sourceProfile06showNoF0AcA11HKTypeGroupV_0A8Platform0aB5Store_pAJ0gL0OSbtcfC_0(uint64_t *a1, __int128 *a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v9 = a1[4];
  v8 = a1[5];
  sub_1BA4A27B8();

  v11 = MEMORY[0x1BFAED000](v10);

  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v9;
  v26 = v8;
  sub_1BA20A958(&v21);
  v12 = MEMORY[0x1BFAED000]();

  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v9;
  v26 = v8;
  sub_1BA20A958(&v21);
  v13 = MEMORY[0x1BFAED000]();

  type metadata accessor for CategoryViewDataSourceProvider();
  v14 = swift_allocObject();
  *(v14 + 40) = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = v13;
  sub_1B9F25598(a2, v14 + 88);
  *(v14 + 136) = a3;
  *(v14 + 128) = 0;
  *(v14 + 144) = a4;
  v15 = *(v14 + 40);
  v16 = *(v14 + 48);
  *(v14 + 40) = v4;
  *(v14 + 48) = v5;
  *(v14 + 56) = v6;
  *(v14 + 64) = v7;
  *(v14 + 72) = v9;
  *(v14 + 80) = v8;
  sub_1BA20AC74(v15, v16);
  return v14;
}

uint64_t sub_1BA20AC74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1BA20ACC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA20AD28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA20ACC4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1BA20AD98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for DataSourceWithSectionItemLimit();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for CategoryViewDataSource()
{
  result = qword_1EDC6CC10;
  if (!qword_1EDC6CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BA20B0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1BA4A27B8();
    v7 = sub_1B9F15730();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double PDFBuilder.Document.drawingContext.getter()
{
  if ((*(v0 + 200) & 1) == 0)
  {
    return *(v0 + 168);
  }

  result = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  *(v0 + 168) = result;
  *(v0 + 176) = v2;
  *(v0 + 184) = v3;
  *(v0 + 192) = v4;
  *(v0 + 200) = 0;
  return result;
}

void PDFBuilder.Document.constrainDrawingContext(height:width:)(uint64_t Height, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v16.origin.x = PDFBuilder.Document.drawingContext.getter();
    Height = CGRectGetHeight(v16);
  }

  if (a4)
  {
    v17.origin.x = PDFBuilder.Document.drawingContext.getter();
    Width = CGRectGetWidth(v17);
  }

  else
  {
    Width = *&a3;
  }

  PDFBuilder.Document.drawingContext.getter();
  v10 = v9;
  v11 = *(v4 + 168);
  v12 = *(v4 + 176);
  v13 = *(v4 + 184);
  v14 = *(v4 + 192);
  if (*(v4 + 96) == 1)
  {
    MinX = CGRectGetMaxX(*&v11) - Width;
  }

  else
  {
    MinX = CGRectGetMinX(*&v11);
  }

  *(v4 + 168) = MinX;
  *(v4 + 176) = v10;
  *(v4 + 184) = Width;
  *(v4 + 192) = Height;
  *(v4 + 200) = 0;
}

CGFloat PDFBuilder.Document.adjustDrawingContextOrigin(height:width:)(double a1, double a2)
{
  v13.origin.x = PDFBuilder.Document.drawingContext.getter();
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  v9 = CGRectGetMinX(v13) + a2;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v10 = CGRectGetMinY(v14) + a1;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v11 = CGRectGetWidth(v15) - a2;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  result = CGRectGetHeight(v16) - a1;
  *(v2 + 168) = v9;
  *(v2 + 176) = v10;
  *(v2 + 184) = v11;
  *(v2 + 192) = result;
  *(v2 + 200) = 0;
  return result;
}

double PDFBuilder.Document.bodyBox.getter()
{
  PDFBuilder.Document.headerHeight.getter();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v8.origin.x = v1;
  v8.origin.y = v2;
  v8.size.width = v3;
  v8.size.height = v4;
  CGRectGetHeight(v8);
  PDFBuilder.Document.footerHeight.getter();
  if (*(v0 + 153) & 1) != 0 || (*(v0 + 136))
  {
    v9.origin.x = v1;
    v9.origin.y = v2;
    v9.size.width = v3;
    v9.size.height = v4;
    Width = CGRectGetWidth(v9);
  }

  else
  {
    Width = *(v0 + 128);
  }

  v10.origin.x = v1;
  v10.origin.y = v2;
  v10.size.width = v3;
  v10.size.height = v4;
  v6 = CGRectGetWidth(v10);
  if (Width >= v6)
  {
    Width = v6;
  }

  if (*(v0 + 96) == 1)
  {
    v11.origin.x = v1;
    v11.origin.y = v2;
    v11.size.width = v3;
    v11.size.height = v4;
    return CGRectGetMaxX(v11) - Width;
  }

  return v1;
}

void PDFBuilder.Document.drawingContext.setter(double a1, double a2, double a3, double a4)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = a2;
  *(v4 + 184) = a3;
  *(v4 + 192) = a4;
  *(v4 + 200) = 0;
}

BOOL PDFBuilder.Document.willFitOnCurrentPage(height:)(CGFloat a1)
{
  v3 = PDFBuilder.Document.drawingContext.getter();
  v5 = v4;
  v7.size.width = CGRectGetWidth(*(v1 + 168));
  v7.origin.x = v3;
  v7.origin.y = v5;
  v7.size.height = a1;
  return CGRectContainsRect(*(v1 + 168), v7);
}

Swift::Void __swiftcall PDFBuilder.Document.moveToNextDrawableRegion(in:)(UIGraphicsPDFRendererContext in)
{
  v2 = *(v1 + 120);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v4 == *(v1 + 104))
  {
    swift_beginAccess();
    if (*(v1 + 201) != 1)
    {
      return;
    }

    sub_1BA20E0D4(in.super.super.isa);
    [(objc_class *)in.super.super.isa beginPage];
    swift_beginAccess();
    v6 = *(v1 + 160);
    v3 = __OFADD__(v6, 1);
    v7 = v6 + 1;
    if (!v3)
    {
      *(v1 + 160) = v7;
      sub_1BA20DD08(in.super.super.isa);
      *(v1 + 120) = 0;
      sub_1BA20F060();
      sub_1BA20DE40(in.super.super.isa);
      return;
    }

LABEL_11:
    __break(1u);
    return;
  }

  *(v1 + 120) = v4;

  sub_1BA20F060();
}

uint64_t PDFBuilder.__allocating_init(configuration:sections:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1BA20F1A4(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

Swift::Bool __swiftcall PDFBuilder.Document.willFitOnCurrentPage(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6.origin.x = PDFBuilder.Document.drawingContext.getter();
  v7.origin.x = x;
  v7.origin.y = y;
  v7.size.width = width;
  v7.size.height = height;
  return CGRectContainsRect(v6, v7);
}

BOOL PDFBuilder.Document.willFitOnFullPage(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 32))(v1, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v13.origin.x = PDFBuilder.Document.bodyBox.getter();
  Height = CGRectGetHeight(v13);
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  return CGRectGetHeight(v14) <= Height;
}

uint64_t sub_1BA20B780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BA20B7A4, 0, 0);
}

uint64_t sub_1BA20B7A4()
{
  (*(*(v0 + 32) + 16))(*(v0 + 24));
  v1 = *(v0 + 72);
  *(v0 + 48) = type metadata accessor for PDFBuilder.Document();
  if (v1)
  {
    sub_1BA4A6C68();
    *(v0 + 64) = sub_1BA4A6C58();
    v2 = sub_1BA4A6C28();
    v4 = v3;
    v5 = sub_1BA20B96C;
  }

  else
  {
    *(v0 + 73) = (*(*(v0 + 32) + 32))(*(v0 + 24)) & 1;
    sub_1BA4A6C68();
    *(v0 + 56) = sub_1BA4A6C58();
    v2 = sub_1BA4A6C28();
    v4 = v6;
    v5 = sub_1BA20B8D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v2, v4);
}

uint64_t sub_1BA20B8D0()
{
  v1 = *(v0 + 73);

  sub_1BA20B9E8(1, v1);

  return MEMORY[0x1EEE6DFA0](sub_1BA20B958, 0, 0);
}

uint64_t sub_1BA20B96C()
{

  sub_1BA20BBAC(1);

  return MEMORY[0x1EEE6DFA0](sub_1BA20F6B0, 0, 0);
}

uint64_t sub_1BA20B9E8(uint64_t a1, char a2)
{
  v4 = objc_opt_self();
  sub_1BA20F664();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BA4A6AE8();
  v7 = [v4 bestPaperForPageSize:v6 withPapersFromArray:{612.0, 792.0}];

  [v7 paperSize];
  v9 = v8;
  v11 = v10;

  if (a2)
  {
    v12 = 21.0;
  }

  else
  {
    v12 = 36.0;
  }

  v13 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  v14 = swift_allocObject();
  *(v14 + 112) = 1;
  *(v14 + 136) = 0;
  *(v14 + 144) = 0;
  *(v14 + 152) = 256;
  *(v14 + 160) = 1;
  *(v14 + 168) = 0u;
  *(v14 + 184) = 0u;
  *(v14 + 200) = 257;
  *(v14 + 96) = v13;
  *(v14 + 16) = v9;
  *(v14 + 24) = v11;
  *(v14 + 32) = 0x4042000000000000;
  *(v14 + 40) = v12;
  *(v14 + 48) = v9 + -36.0 + -36.0;
  *(v14 + 56) = v11 - v12 - v12;
  *(v14 + 64) = v12;
  *(v14 + 72) = 0x4042000000000000;
  *(v14 + 80) = v12;
  *(v14 + 88) = 0x4042000000000000;
  *(v14 + 208) = v5;
  *(v14 + 216) = v5;
  *(v14 + 104) = a1;
  *(v14 + 120) = 0;
  *(v14 + 128) = 0;
  sub_1BA20F060();
  return sub_1BA4A2D68();
}

uint64_t sub_1BA20BBAC(uint64_t a1)
{
  v2 = objc_opt_self();
  sub_1BA20F664();
  v3 = MEMORY[0x1E69E7CC0];
  v4 = sub_1BA4A6AE8();
  v5 = [v2 bestPaperForPageSize:v4 withPapersFromArray:{612.0, 792.0}];

  [v5 paperSize];
  v7 = v6;
  v9 = v8;

  LOBYTE(v4) = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 256;
  *(v10 + 160) = 1;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 257;
  *(v10 + 96) = v4;
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = vdupq_n_s64(0x4042000000000000uLL);
  *(v10 + 32) = v11;
  *(v10 + 48) = v9 + -36.0 + -36.0;
  *(v10 + 56) = v7 + -36.0 + -36.0;
  *(v10 + 64) = v11;
  *(v10 + 80) = v11;
  *(v10 + 208) = v3;
  *(v10 + 216) = v3;
  *(v10 + 104) = a1;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  sub_1BA20F060();
  return sub_1BA4A2D68();
}

uint64_t PDFBuilder.init(configuration:sections:)(__int128 *a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  sub_1B9F1134C(a1, v2 + 112);
  *(v2 + 152) = a2;
  return v2;
}

uint64_t sub_1BA20BD8C()
{
  v1[9] = v0;
  sub_1BA20F39C();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  sub_1BA4A6C68();
  v1[13] = sub_1BA4A6C58();
  v4 = sub_1BA4A6C28();
  v1[14] = v4;
  v1[15] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BA20BE80, v4, v3);
}

uint64_t sub_1BA20BE80()
{
  v1 = v0[9];
  v3 = v1[17];
  v2 = v1[18];
  __swift_project_boxed_opaque_existential_1(v1 + 14, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1BA20BF40;
  v5 = v0[12];

  return sub_1BA20B780(v5, v3, v2);
}

uint64_t sub_1BA20BF40()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1BA20C060, v3, v2);
}

uint64_t sub_1BA20C060()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[9];

  sub_1BA4A2D78();
  (*(v3 + 8))(v1, v2);
  v5 = v0[8];
  v6 = *(v4 + 152);
  v7 = *(v5 + 16);
  v8 = *(v5 + 24);
  v9 = objc_allocWithZone(MEMORY[0x1E69DCA88]);

  v10 = [v9 initWithBounds_];
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BA20F414;
  *(v12 + 24) = v11;
  v0[6] = sub_1BA1419A0;
  v0[7] = v12;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BA20E308;
  v0[5] = &block_descriptor_54;
  v13 = _Block_copy(v0 + 2);

  v14 = [v10 PDFDataWithActions_];

  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
    v16 = sub_1BA4A1608();
    v18 = v17;

    v19 = v0[1];

    return v19(v16, v18);
  }

  return result;
}

void sub_1BA20C2B4(void *a1, uint64_t a2, void *a3)
{
  v333 = a1;
  v352 = *a3;
  v326 = sub_1BA4A3EA8();
  v5 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v7 = &v321 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = *(a2 + 16);
  if (!v323)
  {
    return;
  }

  v322 = a2 + 32;
  swift_beginAccess();
  swift_beginAccess();
  v8 = 0;
  v325 = (v5 + 8);
  v327 = xmmword_1BA4C0AD0;
  v351 = a3;
  v328 = v7;
  while (1)
  {
    v324 = v8;
    v9 = (v322 + 72 * v8);
    v10 = v9[7];
    v11 = v9[8];
    v12 = v9[6];
    v13 = *(v9 + 41);
    v14 = *(v9 + 40);
    v15 = v9[4];
    v349 = *(v9 + 1);
    LODWORD(v350) = *(v9 + 8);
    v16 = *v9;

    v17 = v333;
    [v333 beginPage];
    v351[26] = v12;

    v351[27] = v11;

    sub_1BA20DD08(v17);
    sub_1BA20DE40(v17);
    *(v351 + 8) = v349;
    v351[18] = v15;
    v18 = v351;
    *(v351 + 152) = v14;
    *(v18 + 153) = v13;
    *(v18 + 104) = v16;
    *(v18 + 120) = 0;
    sub_1BA20F060();
    *(v18 + 112) = LOBYTE(v350);
    v19 = v10;

    v331 = *(v10 + 16);
    if (v331)
    {
      break;
    }

LABEL_163:

    v305 = *(v18 + 104);
    if (v305 >= 2)
    {
      for (i = 1; i != v305; ++i)
      {
        swift_initStackObject();
        v307 = sub_1BA20F244(v18);
        *(v307 + 168) = PDFBuilder.Document.bodyBox.getter();
        *(v307 + 176) = v308;
        *(v307 + 184) = v309;
        *(v307 + 192) = v310;
        *(v307 + 200) = 0;
        v388.origin.x = PDFBuilder.Document.bodyBox.getter();
        v311 = (CGRectGetWidth(v388) + (*(v18 + 104) + -1.0) * -36.0) / *(v18 + 104) * i + 18.0;
        v389.origin.x = PDFBuilder.Document.drawingContext.getter();
        x = v389.origin.x;
        y = v389.origin.y;
        width = v389.size.width;
        height = v389.size.height;
        v316 = CGRectGetMinX(v389) + v311;
        v390.origin.x = x;
        v390.origin.y = y;
        v390.size.width = width;
        v390.size.height = height;
        v317 = CGRectGetMinY(v390) + 0.0;
        v391.origin.x = x;
        v391.origin.y = y;
        v391.size.width = width;
        v391.size.height = height;
        v318 = CGRectGetWidth(v391) - v311;
        v392.origin.x = x;
        v392.origin.y = y;
        v392.size.width = width;
        v392.size.height = height;
        v319 = CGRectGetHeight(v392);
        *(v307 + 168) = v316;
        *(v307 + 176) = v317;
        *(v307 + 184) = v318;
        *(v307 + 192) = v319;
        *(v307 + 200) = 0;
        if (*(v18 + 112) == 1)
        {
          if (qword_1EBBE8468 != -1)
          {
            swift_once();
          }

          v320 = [qword_1EBBED280 CGColor];
          v361 = v327;
          v362 = v320;
          PDFVerticalSeparator.render(context:document:)(v333, v307);
        }

        else
        {
        }
      }
    }

    v8 = v324 + 1;
    if (v324 + 1 == v323)
    {
      return;
    }
  }

  v21 = *(v18 + 32);
  v20 = *(v18 + 40);
  v22 = *(v18 + 48);
  v23 = *(v18 + 56);
  v330 = v10 + 32;
  v348 = *(v18 + 96);
  swift_beginAccess();
  swift_beginAccess();
  v24 = 0;
  v25 = v21;
  v350 = v20;
  *&v349 = v22;
  v26 = v23;
  v343 = v21;
  v344 = v22;
  v341 = v20;
  v342 = v23;
  v329 = v19;
  while (v24 < *(v19 + 16))
  {
    v334 = v24;
    sub_1B9F0A534(v330 + 40 * v24, &v361);
    v30 = v363;
    v31 = v364;
    __swift_project_boxed_opaque_existential_1(&v361, v363);
    v32 = (*(v31 + 32))(v18, v30, v31);
    v339 = v33;
    v340 = v32;
    v337 = v35;
    v338 = v34;
    v36 = *(v18 + 208);
    v37 = *(*&v36 + 16);
    if (v37)
    {
      v360 = MEMORY[0x1E69E7CC0];

      sub_1BA066F50(0, v37, 0);
      v38 = v360;
      v39 = v18;
      v336 = v36;
      v40 = *&v36 + 32;
      v41 = *(v39 + 16);
      v42 = *(v39 + 32);
      v350 = *(v39 + 40);
      v26 = *(v39 + 56);
      *&v349 = *(v39 + 48);
      v43 = *(v39 + 80);
      v357 = *(v39 + 64);
      v358 = v43;
      v359 = v41;
      do
      {
        v347 = v38;
        sub_1B9F0A534(v40, &v353);
        v346 = v355;
        v44 = v356;
        v345 = __swift_project_boxed_opaque_existential_1(&v353, *&v355);
        v45 = swift_allocObject();
        *(v45 + 104) = 1;
        *(v45 + 112) = 1;
        *(v45 + 120) = 0u;
        *(v45 + 136) = 0u;
        *(v45 + 152) = 256;
        *(v45 + 160) = 1;
        *(v45 + 168) = 0u;
        *(v45 + 184) = 0u;
        *(v45 + 200) = 257;
        v46 = v358;
        *(v45 + 16) = v359;
        v25 = v42;
        v47 = v350;
        *(v45 + 32) = v42;
        *(v45 + 40) = v47;
        *(v45 + 48) = v349;
        *(v45 + 56) = v26;
        *(v45 + 64) = v357;
        *(v45 + 80) = v46;
        v48 = v351;
        v49 = *(v351 + 201);
        swift_beginAccess();
        *(v45 + 201) = v49;
        *(v45 + 96) = v348;
        v50 = v48[27];
        *(v45 + 208) = v48[26];
        *(v45 + 216) = v50;
        *(v45 + 168) = PDFBuilder.Document.drawingContext.getter();
        *(v45 + 176) = v51;
        *(v45 + 184) = v52;
        *(v45 + 192) = v53;
        *(v45 + 200) = 0;
        *(v45 + 104) = v48[13];
        *(v45 + 120) = v48[15];
        swift_beginAccess();
        v54 = v48[20];
        swift_beginAccess();
        *(v45 + 160) = v54;
        v55 = *(v45 + 48);
        *(v45 + 168) = *(v45 + 32);
        *(v45 + 184) = v55;
        *(v45 + 200) = 0;
        v56 = *(v44 + 24);

        v57 = v56(v45, *&v346, v44);
        v38 = v347;
        v58 = v57;
        v60 = v59;
        v62 = v61;
        v64 = v63;

        v365.origin.x = v58;
        v365.origin.y = v60;
        v365.size.width = v62;
        v365.size.height = v64;
        v65 = CGRectGetHeight(v365);
        __swift_destroy_boxed_opaque_existential_1(&v353);
        v360 = v38;
        v67 = *(*&v38 + 16);
        v66 = *(*&v38 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1BA066F50((v66 > 1), v67 + 1, 1);
          v38 = v360;
        }

        *(*&v38 + 16) = v67 + 1;
        *(*&v38 + 8 * v67 + 32) = v65;
        v40 += 40;
        --v37;
        v42 = v25;
      }

      while (v37);

      v18 = v351;
      v22 = v344;
      v23 = v342;
      v68 = *(*&v38 + 16);
      if (!v68)
      {
LABEL_19:

        v71 = 11.0;
        goto LABEL_28;
      }
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
      v68 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v68)
      {
        goto LABEL_19;
      }
    }

    if (v68 > 3)
    {
      v69 = v68 & 0x7FFFFFFFFFFFFFFCLL;
      v72 = (*&v38 + 48);
      v70 = 0.0;
      v73 = v68 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v70 = v70 + *(v72 - 2) + *(v72 - 1) + *v72 + v72[1];
        v72 += 4;
        v73 -= 4;
      }

      while (v73);
      if (v68 == v69)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0.0;
    }

    v74 = v68 - v69;
    v75 = (*&v38 + 8 * v69 + 32);
    do
    {
      v76 = *v75++;
      v70 = v70 + v76;
      --v74;
    }

    while (v74);
LABEL_25:

    v77 = 0.0;
    if (v70 + 1.0 > 0.0)
    {
      v77 = 10.0;
    }

    v71 = v70 + 1.0 + v77;
LABEL_28:
    v78 = 0.0;
    v79 = v341;
    if ((*(v18 + 153) & 1) == 0 && *(v18 + 152) != 1)
    {
      v78 = *(v18 + 144);
    }

    v336 = v78;
    v80 = v21;
    v81 = v22;
    v82 = v23;
    v335 = CGRectGetHeight(*(&v79 - 1));
    v83 = *(v18 + 216);
    v84 = *(v83 + 16);
    if (v84)
    {
      v360 = MEMORY[0x1E69E7CC0];

      sub_1BA066F50(0, v84, 0);
      v85 = v360;
      v86 = v18;
      v332 = v83;
      v87 = v83 + 32;
      v88 = *(v86 + 16);
      v89 = *(v86 + 32);
      v350 = *(v86 + 40);
      v26 = *(v86 + 56);
      *&v349 = *(v86 + 48);
      v90 = *(v86 + 80);
      v357 = *(v86 + 64);
      v358 = v90;
      v359 = v88;
      do
      {
        v347 = v85;
        sub_1B9F0A534(v87, &v353);
        v346 = v355;
        v91 = v356;
        v345 = __swift_project_boxed_opaque_existential_1(&v353, *&v355);
        v92 = swift_allocObject();
        *(v92 + 104) = 1;
        *(v92 + 112) = 1;
        *(v92 + 120) = 0u;
        *(v92 + 136) = 0u;
        *(v92 + 152) = 256;
        *(v92 + 160) = 1;
        *(v92 + 168) = 0u;
        *(v92 + 184) = 0u;
        *(v92 + 200) = 257;
        v93 = v358;
        *(v92 + 16) = v359;
        v94 = v89;
        v95 = v350;
        *(v92 + 32) = v89;
        *(v92 + 40) = v95;
        *(v92 + 48) = v349;
        *(v92 + 56) = v26;
        *(v92 + 64) = v357;
        *(v92 + 80) = v93;
        v96 = v351;
        v97 = *(v351 + 201);
        swift_beginAccess();
        *(v92 + 201) = v97;
        *(v92 + 96) = v348;
        v98 = v96[27];
        *(v92 + 208) = v96[26];
        *(v92 + 216) = v98;
        *(v92 + 168) = PDFBuilder.Document.drawingContext.getter();
        *(v92 + 176) = v99;
        *(v92 + 184) = v100;
        *(v92 + 192) = v101;
        *(v92 + 200) = 0;
        *(v92 + 104) = v96[13];
        *(v92 + 120) = v96[15];
        swift_beginAccess();
        v102 = v96[20];
        swift_beginAccess();
        *(v92 + 160) = v102;
        v103 = *(v92 + 48);
        *(v92 + 168) = *(v92 + 32);
        *(v92 + 184) = v103;
        *(v92 + 200) = 0;
        v104 = *(v91 + 24);

        v105 = v104(v92, *&v346, v91);
        v85 = v347;
        v106 = v105;
        v108 = v107;
        v110 = v109;
        v112 = v111;

        v366.origin.x = v106;
        v366.origin.y = v108;
        v366.size.width = v110;
        v366.size.height = v112;
        v113 = CGRectGetHeight(v366);
        __swift_destroy_boxed_opaque_existential_1(&v353);
        v360 = v85;
        v115 = *(*&v85 + 16);
        v114 = *(*&v85 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_1BA066F50((v114 > 1), v115 + 1, 1);
          v85 = v360;
        }

        *(*&v85 + 16) = v115 + 1;
        *(*&v85 + 8 * v115 + 32) = v113;
        v87 += 40;
        --v84;
        v89 = v94;
      }

      while (v84);

      v18 = v351;
    }

    else
    {
      v85 = MEMORY[0x1E69E7CC0];
      v89 = v25;
    }

    v25 = v89;
    v116 = *(*&v85 + 16);
    v117 = v328;
    if (!v116)
    {
      v120 = 0.0;
      v118 = v344;
      v23 = v342;
      goto LABEL_47;
    }

    v118 = v344;
    v23 = v342;
    if (v116 <= 3)
    {
      v119 = 0;
      v120 = 0.0;
LABEL_45:
      v123 = v116 - v119;
      v124 = (*&v85 + 8 * v119 + 32);
      do
      {
        v125 = *v124++;
        v120 = v120 + v125;
        --v123;
      }

      while (v123);
      goto LABEL_47;
    }

    v119 = v116 & 0x7FFFFFFFFFFFFFFCLL;
    v121 = (*&v85 + 48);
    v120 = 0.0;
    v122 = v116 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v120 = v120 + *(v121 - 2) + *(v121 - 1) + *v121 + v121[1];
      v121 += 4;
      v122 -= 4;
    }

    while (v122);
    if (v116 != v119)
    {
      goto LABEL_45;
    }

LABEL_47:

    if ((*(v18 + 153) & 1) != 0 || *(v18 + 136) == 1)
    {
      v367.origin.x = v21;
      v126 = v341;
      v367.origin.y = v341;
      v367.size.width = v118;
      v367.size.height = v23;
      v127 = CGRectGetWidth(v367);
      v128 = v118;
      v129 = v126;
      v130 = v127;
    }

    else
    {
      v130 = *(v18 + 128);
      v128 = v118;
      v129 = v341;
    }

    v131 = v21;
    v132 = v129;
    v133 = v23;
    v134 = CGRectGetWidth(*(&v128 - 2));
    if (v130 >= v134)
    {
      v130 = v134;
    }

    if (v348)
    {
      v368.origin.x = v343;
      v368.size.width = v344;
      v368.origin.y = v129;
      v368.size.height = v23;
      v21 = CGRectGetMaxX(v368) - v130;
    }

    v369.size.height = v335 - v71 - v336 - v120 + -10.0;
    v369.origin.y = v129 + v71 + v336;
    v369.origin.x = v21;
    v369.size.width = v130;
    v135 = CGRectGetHeight(v369);
    v370.origin.y = v339;
    v370.origin.x = v340;
    v370.size.height = v337;
    v370.size.width = v338;
    if (CGRectGetHeight(v370) > v135)
    {
      sub_1BA4A3DD8();
      sub_1B9F0A534(&v361, &v353);
      v136 = sub_1BA4A3E88();
      v137 = sub_1BA4A6FB8();
      v138 = os_log_type_enabled(v136, v137);
      v21 = v343;
      if (v138)
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v359 = v140;
        *v139 = 136315138;
        __swift_project_boxed_opaque_existential_1(&v353, *&v355);
        *&v357 = swift_getDynamicType();
        *(&v357 + 1) = v356;
        sub_1BA20F61C();
        v141 = sub_1BA4A6808();
        v143 = v142;
        __swift_destroy_boxed_opaque_existential_1(&v353);
        v144 = sub_1B9F0B82C(v141, v143, &v359);

        *(v139 + 4) = v144;
        _os_log_impl(&dword_1B9F07000, v136, v137, "%s is too big to be rendered onto a single page", v139, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v140);
        MEMORY[0x1BFAF43A0](v140, -1, -1);
        MEMORY[0x1BFAF43A0](v139, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(&v353);
      }

      (*v325)(v117, v326);
      v19 = v329;
      v29 = v334;
      v22 = v344;
      goto LABEL_8;
    }

    v145 = v363;
    v146 = v364;
    __swift_project_boxed_opaque_existential_1(&v361, v363);
    v147 = (*(v146 + 32))(v18, v145, v146);
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v371.origin.x = PDFBuilder.Document.drawingContext.getter();
    v393.origin.x = v147;
    v393.origin.y = v149;
    v393.size.width = v151;
    v393.size.height = v153;
    v154 = CGRectContainsRect(v371, v393);
    v21 = v343;
    if (!v154)
    {
      v155 = *(v18 + 120);
      v156 = __OFADD__(v155, 1);
      v157 = v155 + 1;
      if (v156)
      {
        goto LABEL_173;
      }

      if (v157 == *(v18 + 104))
      {
        if (*(v18 + 201))
        {
          if (v157 < 2)
          {
LABEL_63:
            v158 = v333;
            [v333 beginPage];
            v159 = *(v18 + 160);
            v156 = __OFADD__(v159, 1);
            v160 = v159 + 1;
            if (v156)
            {
              goto LABEL_174;
            }

            *(v18 + 160) = v160;
            sub_1BA20DD08(v158);
            *(v18 + 120) = 0;
            sub_1BA20F060();
            sub_1BA20DE40(v158);
            goto LABEL_7;
          }

          *&v335 = v157 - 1;
          v161 = 1;
          v346 = v26;
          while (2)
          {
            v345 = v161;
            swift_allocObject();
            v162 = sub_1BA20F244(v18);
            swift_beginAccess();
            v163 = *(v162 + 208);
            v164 = *(*&v163 + 16);
            if (v164)
            {
              *&v357 = MEMORY[0x1E69E7CC0];

              sub_1BA066F50(0, v164, 0);
              v165 = v357;
              v347 = v163;
              v166 = *&v163 + 32;
              do
              {
                sub_1B9F0A534(v166, &v353);
                v167 = v356;
                __swift_project_boxed_opaque_existential_1(&v353, *&v355);
                swift_allocObject();
                v168 = sub_1BA20F244(v162);
                v169 = *(v168 + 48);
                *(v168 + 168) = *(v168 + 32);
                *(v168 + 184) = v169;
                *(v168 + 200) = 0;
                v170 = (*(v167 + 24))();
                v172 = v171;
                v174 = v173;
                v176 = v175;

                v372.origin.x = v170;
                v372.origin.y = v172;
                v372.size.width = v174;
                v372.size.height = v176;
                v177 = CGRectGetHeight(v372);
                __swift_destroy_boxed_opaque_existential_1(&v353);
                *&v357 = v165;
                v179 = *(v165 + 16);
                v178 = *(v165 + 24);
                if (v179 >= v178 >> 1)
                {
                  sub_1BA066F50((v178 > 1), v179 + 1, 1);
                  v165 = v357;
                }

                *(v165 + 16) = v179 + 1;
                *(v165 + 8 * v179 + 32) = v177;
                v166 += 40;
                --v164;
              }

              while (v164);

              v18 = v351;
              v180 = *(v165 + 16);
              if (v180)
              {
LABEL_76:
                if (v180 <= 3)
                {
                  v181 = 0;
                  v182 = 0.0;
                  goto LABEL_83;
                }

                v181 = v180 & 0x7FFFFFFFFFFFFFFCLL;
                v184 = (v165 + 48);
                v182 = 0.0;
                v185 = v180 & 0x7FFFFFFFFFFFFFFCLL;
                do
                {
                  v182 = v182 + *(v184 - 2) + *(v184 - 1) + *v184 + v184[1];
                  v184 += 4;
                  v185 -= 4;
                }

                while (v185);
                if (v180 != v181)
                {
LABEL_83:
                  v186 = v180 - v181;
                  v187 = (v165 + 8 * v181 + 32);
                  do
                  {
                    v188 = *v187++;
                    v182 = v182 + v188;
                    --v186;
                  }

                  while (v186);
                }

                v189 = 0.0;
                if (v182 + 1.0 > 0.0)
                {
                  v189 = 10.0;
                }

                v183 = v182 + 1.0 + v189;
LABEL_88:
                v190 = *(v162 + 153);
                v191 = 0.0;
                v340 = v183;
                if ((v190 & 1) == 0 && *(v162 + 152) != 1)
                {
                  v191 = *(v162 + 144);
                }

                v373.origin.y = *(v162 + 40);
                v373.size.width = *(v162 + 48);
                v373.size.height = *(v162 + 56);
                v347 = *(v162 + 32);
                v373.origin.x = v347;
                v192 = v373.origin.y;
                v339 = v373.size.width;
                v193 = v373.size.height;
                v338 = CGRectGetHeight(v373);
                swift_beginAccess();
                v194 = *(v162 + 216);
                v195 = *(*&v194 + 16);
                if (v195)
                {
                  v337 = v191;
                  *&v357 = MEMORY[0x1E69E7CC0];

                  sub_1BA066F50(0, v195, 0);
                  v196 = v357;
                  v336 = v194;
                  v197 = *&v194 + 32;
                  do
                  {
                    sub_1B9F0A534(v197, &v353);
                    v198 = v356;
                    __swift_project_boxed_opaque_existential_1(&v353, *&v355);
                    swift_allocObject();
                    v199 = sub_1BA20F244(v162);
                    v200 = *(v199 + 48);
                    *(v199 + 168) = *(v199 + 32);
                    *(v199 + 184) = v200;
                    *(v199 + 200) = 0;
                    v201 = (*(v198 + 24))();
                    v203 = v202;
                    v205 = v204;
                    v207 = v206;

                    v374.origin.x = v201;
                    v374.origin.y = v203;
                    v374.size.width = v205;
                    v374.size.height = v207;
                    v208 = CGRectGetHeight(v374);
                    __swift_destroy_boxed_opaque_existential_1(&v353);
                    *&v357 = v196;
                    v210 = *(v196 + 16);
                    v209 = *(v196 + 24);
                    if (v210 >= v209 >> 1)
                    {
                      sub_1BA066F50((v209 > 1), v210 + 1, 1);
                      v196 = v357;
                    }

                    *(v196 + 16) = v210 + 1;
                    *(v196 + 8 * v210 + 32) = v208;
                    v197 += 40;
                    --v195;
                  }

                  while (v195);

                  v18 = v351;
                  v191 = v337;
                  v211 = *(v196 + 16);
                  if (v211)
                  {
LABEL_97:
                    v212 = v192;
                    if (v211 <= 3)
                    {
                      v213 = 0;
                      v214 = 0.0;
                      goto LABEL_104;
                    }

                    v213 = v211 & 0x7FFFFFFFFFFFFFFCLL;
                    v215 = (v196 + 48);
                    v214 = 0.0;
                    v216 = v211 & 0x7FFFFFFFFFFFFFFCLL;
                    do
                    {
                      v214 = v214 + *(v215 - 2) + *(v215 - 1) + *v215 + v215[1];
                      v215 += 4;
                      v216 -= 4;
                    }

                    while (v216);
                    if (v211 != v213)
                    {
LABEL_104:
                      v217 = v211 - v213;
                      v218 = (v196 + 8 * v213 + 32);
                      do
                      {
                        v219 = *v218++;
                        v214 = v214 + v219;
                        --v217;
                      }

                      while (v217);
                    }

LABEL_106:

                    if ((*(v162 + 153) & 1) != 0 || *(v162 + 136) == 1)
                    {
                      v220 = v347;
                      v375.origin.x = v347;
                      v375.origin.y = v212;
                      v221 = v339;
                      v375.size.width = v339;
                      v375.size.height = v193;
                      v222 = CGRectGetWidth(v375);
                      v223 = v220;
                      v224 = v222;
                    }

                    else
                    {
                      v224 = *(v162 + 128);
                      v223 = v347;
                      v221 = v339;
                    }

                    v376.origin.x = v223;
                    v376.origin.y = v212;
                    v376.size.width = v221;
                    v376.size.height = v193;
                    v225 = CGRectGetWidth(v376);
                    v226 = v347;
                    if (v224 >= v225)
                    {
                      v224 = v225;
                    }

                    if (*(v162 + 96) == 1)
                    {
                      v377.origin.x = v347;
                      v377.origin.y = v212;
                      v377.size.width = v221;
                      v377.size.height = v193;
                      v226 = CGRectGetMaxX(v377) - v224;
                    }

                    v227 = v338 - v340 - v191 - v214 + -10.0;
                    v228 = v191 + v340 + v212;
                    *(v162 + 168) = v226;
                    *(v162 + 176) = v228;
                    *(v162 + 184) = v224;
                    *(v162 + 192) = v227;
                    *(v162 + 200) = 0;
                    v229 = *(v18 + 208);
                    v230 = *(*&v229 + 16);
                    if (v230)
                    {
                      *&v357 = MEMORY[0x1E69E7CC0];

                      sub_1BA066F50(0, v230, 0);
                      v231 = v357;
                      v347 = v229;
                      v232 = *&v229 + 32;
                      do
                      {
                        sub_1B9F0A534(v232, &v353);
                        v233 = v356;
                        __swift_project_boxed_opaque_existential_1(&v353, *&v355);
                        swift_allocObject();
                        v234 = sub_1BA20F244(v18);
                        v235 = *(v234 + 48);
                        *(v234 + 168) = *(v234 + 32);
                        *(v234 + 184) = v235;
                        *(v234 + 200) = 0;
                        v236 = (*(v233 + 24))();
                        v238 = v237;
                        v240 = v239;
                        v242 = v241;

                        v378.origin.x = v236;
                        v378.origin.y = v238;
                        v378.size.width = v240;
                        v378.size.height = v242;
                        v243 = CGRectGetHeight(v378);
                        __swift_destroy_boxed_opaque_existential_1(&v353);
                        *&v357 = v231;
                        v245 = *(v231 + 16);
                        v244 = *(v231 + 24);
                        if (v245 >= v244 >> 1)
                        {
                          sub_1BA066F50((v244 > 1), v245 + 1, 1);
                          v231 = v357;
                        }

                        *(v231 + 16) = v245 + 1;
                        *(v231 + 8 * v245 + 32) = v243;
                        v232 += 40;
                        --v230;
                        v18 = v351;
                      }

                      while (v230);
                    }

                    else
                    {
                      v231 = MEMORY[0x1E69E7CC0];
                    }

                    v246 = *(v231 + 16);
                    if (v246)
                    {
                      if (v246 <= 3)
                      {
                        v247 = 0;
                        v248 = 0.0;
                        goto LABEL_128;
                      }

                      v247 = v246 & 0x7FFFFFFFFFFFFFFCLL;
                      v250 = (v231 + 48);
                      v248 = 0.0;
                      v251 = v246 & 0x7FFFFFFFFFFFFFFCLL;
                      do
                      {
                        v248 = v248 + *(v250 - 2) + *(v250 - 1) + *v250 + v250[1];
                        v250 += 4;
                        v251 -= 4;
                      }

                      while (v251);
                      if (v246 != v247)
                      {
LABEL_128:
                        v252 = v246 - v247;
                        v253 = (v231 + 8 * v247 + 32);
                        do
                        {
                          v254 = *v253++;
                          v248 = v248 + v254;
                          --v252;
                        }

                        while (v252);
                      }

                      v255 = 0.0;
                      if (v248 + 1.0 > 0.0)
                      {
                        v255 = 10.0;
                      }

                      v249 = v248 + 1.0 + v255;
                    }

                    else
                    {

                      v249 = 11.0;
                    }

                    v256 = *(v18 + 153);
                    v257 = 0.0;
                    v347 = v249;
                    if ((v256 & 1) == 0 && *(v18 + 152) != 1)
                    {
                      v257 = *(v18 + 144);
                    }

                    v340 = v257;
                    v379.origin.x = v25;
                    v379.origin.y = v350;
                    *&v379.size.width = v349;
                    v379.size.height = v26;
                    v258 = CGRectGetHeight(v379);
                    v259 = *(v18 + 216);
                    v260 = *(*&v259 + 16);
                    if (v260)
                    {
                      *&v357 = MEMORY[0x1E69E7CC0];

                      sub_1BA066F50(0, v260, 0);
                      v261 = v357;
                      v339 = v259;
                      v262 = *&v259 + 32;
                      do
                      {
                        sub_1B9F0A534(v262, &v353);
                        v263 = v356;
                        __swift_project_boxed_opaque_existential_1(&v353, *&v355);
                        swift_allocObject();
                        v264 = sub_1BA20F244(v18);
                        v265 = *(v264 + 48);
                        *(v264 + 168) = *(v264 + 32);
                        *(v264 + 184) = v265;
                        *(v264 + 200) = 0;
                        v266 = (*(v263 + 24))();
                        v268 = v267;
                        v270 = v269;
                        v272 = v271;

                        v380.origin.x = v266;
                        v380.origin.y = v268;
                        v380.size.width = v270;
                        v380.size.height = v272;
                        v273 = CGRectGetHeight(v380);
                        __swift_destroy_boxed_opaque_existential_1(&v353);
                        *&v357 = v261;
                        v275 = *(v261 + 16);
                        v274 = *(v261 + 24);
                        if (v275 >= v274 >> 1)
                        {
                          sub_1BA066F50((v274 > 1), v275 + 1, 1);
                          v261 = v357;
                        }

                        *(v261 + 16) = v275 + 1;
                        *(v261 + 8 * v275 + 32) = v273;
                        v262 += 40;
                        --v260;
                        v18 = v351;
                      }

                      while (v260);

                      v276 = *(v261 + 16);
                      if (v276)
                      {
LABEL_142:
                        v277 = v25;
                        if (v276 <= 3)
                        {
                          v278 = 0;
                          v279 = 0.0;
                          goto LABEL_149;
                        }

                        v278 = v276 & 0x7FFFFFFFFFFFFFFCLL;
                        v280 = (v261 + 48);
                        v279 = 0.0;
                        v281 = v276 & 0x7FFFFFFFFFFFFFFCLL;
                        do
                        {
                          v279 = v279 + *(v280 - 2) + *(v280 - 1) + *v280 + v280[1];
                          v280 += 4;
                          v281 -= 4;
                        }

                        while (v281);
                        if (v276 != v278)
                        {
LABEL_149:
                          v282 = v276 - v278;
                          v283 = (v261 + 8 * v278 + 32);
                          do
                          {
                            v284 = *v283++;
                            v279 = v279 + v284;
                            --v282;
                          }

                          while (v282);
                        }

LABEL_151:

                        if ((*(v18 + 153) & 1) != 0 || *(v18 + 136) == 1)
                        {
                          v381.origin.x = v277;
                          v285 = v350;
                          v381.origin.y = v350;
                          v286 = *&v349;
                          *&v381.size.width = v349;
                          v287 = v346;
                          v381.size.height = v346;
                          v288 = CGRectGetWidth(v381);
                        }

                        else
                        {
                          v288 = *(v18 + 128);
                          v285 = v350;
                          v286 = *&v349;
                          v287 = v346;
                        }

                        v289 = v345;
                        v382.origin.x = v277;
                        v382.origin.y = v285;
                        v382.size.width = v286;
                        v382.size.height = v287;
                        v290 = CGRectGetWidth(v382);
                        if (v288 >= v290)
                        {
                          v288 = v290;
                        }

                        v291 = v277;
                        if (v348)
                        {
                          v383.origin.x = v277;
                          v383.origin.y = v285;
                          v383.size.width = v286;
                          v383.size.height = v346;
                          v291 = CGRectGetMaxX(v383) - v288;
                        }

                        v292 = v258 - v347 - v340 - v279 + -10.0;
                        v293 = v285 + v347 + v340;
                        v294 = v288;
                        v295 = (CGRectGetWidth(*&v291) + (*(v18 + 104) + -1.0) * -36.0) / *(v18 + 104) * v289 + 18.0;
                        v384.origin.x = PDFBuilder.Document.drawingContext.getter();
                        v296 = v384.origin.x;
                        v297 = v384.origin.y;
                        v298 = v384.size.width;
                        v299 = v384.size.height;
                        v300 = CGRectGetMinX(v384) + v295;
                        v385.origin.x = v296;
                        v385.origin.y = v297;
                        v385.size.width = v298;
                        v385.size.height = v299;
                        v301 = CGRectGetMinY(v385) + 0.0;
                        v386.origin.x = v296;
                        v386.origin.y = v297;
                        v386.size.width = v298;
                        v386.size.height = v299;
                        v302 = CGRectGetWidth(v386) - v295;
                        v387.origin.x = v296;
                        v387.origin.y = v297;
                        v387.size.width = v298;
                        v387.size.height = v299;
                        v303 = CGRectGetHeight(v387);
                        *(v162 + 168) = v300;
                        *(v162 + 176) = v301;
                        *(v162 + 184) = v302;
                        *(v162 + 192) = v303;
                        *(v162 + 200) = 0;
                        if (*(v18 + 112))
                        {
                          v21 = v343;
                          v26 = v346;
                          if (qword_1EBBE8468 != -1)
                          {
                            swift_once();
                          }

                          v304 = [qword_1EBBED280 CGColor];
                          v353 = v327;
                          v354 = v304;
                          PDFVerticalSeparator.render(context:document:)(v333, v162);
                        }

                        else
                        {

                          v21 = v343;
                          v26 = v346;
                        }

                        v161 = v289 + 1;
                        if (v289 == *&v335)
                        {
                          goto LABEL_63;
                        }

                        continue;
                      }
                    }

                    else
                    {
                      v261 = MEMORY[0x1E69E7CC0];
                      v276 = *(MEMORY[0x1E69E7CC0] + 16);
                      if (v276)
                      {
                        goto LABEL_142;
                      }
                    }

                    v279 = 0.0;
                    v277 = v25;
                    goto LABEL_151;
                  }
                }

                else
                {
                  v196 = MEMORY[0x1E69E7CC0];
                  v211 = *(MEMORY[0x1E69E7CC0] + 16);
                  if (v211)
                  {
                    goto LABEL_97;
                  }
                }

                v214 = 0.0;
                v212 = v192;
                goto LABEL_106;
              }
            }

            else
            {
              v165 = MEMORY[0x1E69E7CC0];
              v180 = *(MEMORY[0x1E69E7CC0] + 16);
              if (v180)
              {
                goto LABEL_76;
              }
            }

            break;
          }

          v183 = 11.0;
          goto LABEL_88;
        }
      }

      else
      {
        *(v18 + 120) = v157;
        sub_1BA20F060();
      }
    }

LABEL_7:
    v27 = v363;
    v28 = v364;
    __swift_project_boxed_opaque_existential_1(&v361, v363);
    (*(v28 + 16))(v333, v18, v27, v28);
    v19 = v329;
    v22 = v344;
    v23 = v342;
    v29 = v334;
LABEL_8:
    v24 = v29 + 1;
    __swift_destroy_boxed_opaque_existential_1(&v361);
    if (v24 == v331)
    {
      goto LABEL_163;
    }
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
}

uint64_t sub_1BA20DD08(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_1BA20F244(v1);
  v4 = *(v3 + 48);
  *(v3 + 168) = *(v3 + 32);
  *(v3 + 184) = v4;
  *(v3 + 200) = 0;
  swift_beginAccess();
  v5 = *(v1 + 208);
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = v5 + 32;

  do
  {
    sub_1B9F0A534(v7, v11);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 16))(a1, v3, v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v11);
    v7 += 40;
    --v6;
  }

  while (v6);
}

uint64_t sub_1BA20DE40(uint64_t a1)
{
  swift_allocObject();
  v3 = sub_1BA20F244(v1);
  v4 = *(v3 + 48);
  *(v3 + 168) = *(v3 + 32);
  *(v3 + 184) = v4;
  *(v3 + 200) = 0;
  v5 = PDFBuilder.Document.footerHeight.getter();
  swift_beginAccess();
  *(v3 + 201) = 0;
  MinX = CGRectGetMinX(*(v3 + 32));
  v7 = CGRectGetMaxY(*(v3 + 32)) - v5 + -1.0;
  Width = CGRectGetWidth(*(v3 + 32));
  *(v3 + 168) = MinX;
  *(v3 + 176) = v7;
  *(v3 + 184) = Width;
  *(v3 + 192) = v5 + 1.0;
  *(v3 + 200) = 0;
  swift_beginAccess();
  v9 = *(v1 + 216);
  v10 = *(v9 + 16);
  if (!v10)
  {
  }

  v11 = v9 + 32;

  do
  {
    sub_1B9F0A534(v11, v15);
    v12 = v16;
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v13 + 16))(a1, v3, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v15);
    v11 += 40;
    --v10;
  }

  while (v10);
}

Swift::Void __swiftcall PDFBuilder.Document.setColumns(currentIndex:total:)(Swift::Int currentIndex, Swift::Int total)
{
  *(v2 + 104) = total;
  *(v2 + 120) = currentIndex;
  sub_1BA20F060();
}

void PDFBuilder.Document.moveToNextDrawableRegionIfWontFitOnCurrentPage(_:in:)(void *a1, UIGraphicsPDFRendererContext a2)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v2, v4, v5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14.origin.x = PDFBuilder.Document.drawingContext.getter();
  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  if (!CGRectContainsRect(v14, v15))
  {

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a2);
  }
}

void sub_1BA20E0D4(void *a1)
{
  v2 = *(v1 + 104);
  if (v2 >= 2)
  {
    v4 = 1;
    v19 = xmmword_1BA4C0AD0;
    do
    {
      swift_initStackObject();
      v5 = sub_1BA20F244(v1);
      *(v5 + 168) = PDFBuilder.Document.bodyBox.getter();
      *(v5 + 176) = v6;
      *(v5 + 184) = v7;
      *(v5 + 192) = v8;
      *(v5 + 200) = 0;
      v22.origin.x = PDFBuilder.Document.bodyBox.getter();
      v9 = (CGRectGetWidth(v22) + (*(v1 + 104) + -1.0) * -36.0) / *(v1 + 104) * v4 + 18.0;
      v23.origin.x = PDFBuilder.Document.drawingContext.getter();
      x = v23.origin.x;
      y = v23.origin.y;
      width = v23.size.width;
      height = v23.size.height;
      v14 = CGRectGetMinX(v23) + v9;
      v24.origin.x = x;
      v24.origin.y = y;
      v24.size.width = width;
      v24.size.height = height;
      v15 = CGRectGetMinY(v24) + 0.0;
      v25.origin.x = x;
      v25.origin.y = y;
      v25.size.width = width;
      v25.size.height = height;
      v16 = CGRectGetWidth(v25) - v9;
      v26.origin.x = x;
      v26.origin.y = y;
      v26.size.width = width;
      v26.size.height = height;
      v17 = CGRectGetHeight(v26);
      *(v5 + 168) = v14;
      *(v5 + 176) = v15;
      *(v5 + 184) = v16;
      *(v5 + 192) = v17;
      *(v5 + 200) = 0;
      if (*(v1 + 112) == 1)
      {
        if (qword_1EBBE8468 != -1)
        {
          swift_once();
        }

        v18 = [qword_1EBBED280 CGColor];
        v20 = v19;
        v21 = v18;
        PDFVerticalSeparator.render(context:document:)(a1, v5);
      }

      else
      {
      }

      ++v4;
    }

    while (v2 != v4);
  }
}

void sub_1BA20E308(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t PDFBuilder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PDFBuilder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t PDFBuilder.Document.LayoutConstraints.width.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PDFBuilder.Document.LayoutConstraints.topInset.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t PDFBuilder.Document.LayoutConstraints.init(width:topInset:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

__n128 PDFBuilder.Document.printPaper.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t PDFBuilder.Document.pageNumber.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 160) = a1;
  return result;
}

uint64_t PDFBuilder.Document.headerHeight.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 208);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];

    sub_1BA066F50(0, v2, 0);
    v3 = v28;
    v4 = v1 + 32;
    do
    {
      sub_1B9F0A534(v4, v27);
      v5 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      swift_allocObject();
      v6 = sub_1BA20F244(v0);
      v7 = *(v6 + 48);
      *(v6 + 168) = *(v6 + 32);
      *(v6 + 184) = v7;
      *(v6 + 200) = 0;
      v8 = (*(v5 + 24))();
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v29.origin.x = v8;
      v29.origin.y = v10;
      v29.size.width = v12;
      v29.size.height = v14;
      Height = CGRectGetHeight(v29);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v28 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1BA066F50((v16 > 1), v17 + 1, 1);
        v3 = v28;
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = Height;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v18 = *(v3 + 16);
  if (v18)
  {
    if (v18 <= 3)
    {
      v19 = 0;
      v20 = 0.0;
LABEL_14:
      v23 = v18 - v19;
      v24 = (v3 + 8 * v19 + 32);
      do
      {
        v25 = *v24++;
        v20 = v20 + v25;
        --v23;
      }

      while (v23);
    }

    v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
    v21 = (v3 + 48);
    v20 = 0.0;
    v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
      v21 += 4;
      v22 -= 4;
    }

    while (v22);
    if (v18 != v19)
    {
      goto LABEL_14;
    }
  }
}

double PDFBuilder.Document.footerHeight.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v28 = MEMORY[0x1E69E7CC0];

    sub_1BA066F50(0, v2, 0);
    v3 = v28;
    v4 = v1 + 32;
    do
    {
      sub_1B9F0A534(v4, v27);
      v5 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v27[3]);
      swift_allocObject();
      v6 = sub_1BA20F244(v0);
      v7 = *(v6 + 48);
      *(v6 + 168) = *(v6 + 32);
      *(v6 + 184) = v7;
      *(v6 + 200) = 0;
      v8 = (*(v5 + 24))();
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v29.origin.x = v8;
      v29.origin.y = v10;
      v29.size.width = v12;
      v29.size.height = v14;
      Height = CGRectGetHeight(v29);
      __swift_destroy_boxed_opaque_existential_1(v27);
      v28 = v3;
      v17 = *(v3 + 16);
      v16 = *(v3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1BA066F50((v16 > 1), v17 + 1, 1);
        v3 = v28;
      }

      *(v3 + 16) = v17 + 1;
      *(v3 + 8 * v17 + 32) = Height;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v18 = *(v3 + 16);
  if (!v18)
  {
    v20 = 0.0;
    goto LABEL_16;
  }

  if (v18 <= 3)
  {
    v19 = 0;
    v20 = 0.0;
LABEL_14:
    v23 = v18 - v19;
    v24 = (v3 + 8 * v19 + 32);
    do
    {
      v25 = *v24++;
      v20 = v20 + v25;
      --v23;
    }

    while (v23);
    goto LABEL_16;
  }

  v19 = v18 & 0x7FFFFFFFFFFFFFFCLL;
  v21 = (v3 + 48);
  v20 = 0.0;
  v22 = v18 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v20 = v20 + *(v21 - 2) + *(v21 - 1) + *v21 + v21[1];
    v21 += 4;
    v22 -= 4;
  }

  while (v22);
  if (v18 != v19)
  {
    goto LABEL_14;
  }

LABEL_16:

  return v20;
}

void (*PDFBuilder.Document.drawingContext.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *v3 = PDFBuilder.Document.drawingContext.getter();
  v4[1] = v5;
  v4[2] = v6;
  v4[3] = v7;
  return sub_1BA20EA94;
}

void sub_1BA20EA94(void **a1)
{
  v1 = *a1;
  v2 = v1[4];
  v3 = *(v1 + 1);
  *(v2 + 168) = *v1;
  *(v2 + 184) = v3;
  *(v2 + 200) = 0;
  free(v1);
}

uint64_t PDFBuilder.Document.allowsPageBreaks.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 201) = a1;
  return result;
}

uint64_t PDFBuilder.Document.header.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 208) = a1;
}

uint64_t PDFBuilder.Document.footer.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 216) = a1;
}

uint64_t PDFBuilder.Document.__allocating_init(numberOfColumns:printPaper:isRightToLeft:header:footer:)(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 112) = 1;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 256;
  *(v10 + 160) = 1;
  *(v10 + 168) = 0u;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 257;
  *(v10 + 96) = a3;
  v11 = a2[4];
  *(v10 + 64) = a2[3];
  *(v10 + 80) = v11;
  v12 = a2[2];
  *(v10 + 32) = a2[1];
  *(v10 + 48) = v12;
  *(v10 + 16) = *a2;
  *(v10 + 208) = a4;
  *(v10 + 216) = a5;
  *(v10 + 104) = a1;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  sub_1BA20F060();
  return v10;
}

uint64_t PDFBuilder.Document.init(numberOfColumns:printPaper:isRightToLeft:header:footer:)(uint64_t a1, _OWORD *a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 112) = 1;
  *(v5 + 136) = 0;
  *(v5 + 144) = 0;
  *(v5 + 152) = 256;
  *(v5 + 160) = 1;
  *(v5 + 168) = 0u;
  *(v5 + 184) = 0u;
  *(v5 + 200) = 257;
  *(v5 + 96) = a3;
  v6 = a2[4];
  *(v5 + 64) = a2[3];
  *(v5 + 80) = v6;
  v7 = a2[2];
  *(v5 + 32) = a2[1];
  *(v5 + 48) = v7;
  *(v5 + 16) = *a2;
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  *(v5 + 104) = a1;
  *(v5 + 120) = 0;
  *(v5 + 128) = 0;
  sub_1BA20F060();
  return v5;
}

uint64_t PDFBuilder.Document.__allocating_init(document:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1BA20F244(a1);

  return v2;
}

uint64_t PDFBuilder.Document.init(document:)(uint64_t a1)
{
  v1 = sub_1BA20F244(a1);

  return v1;
}

BOOL PDFBuilder.Document.willFitOnCurrentPage(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 32))(v1, v2, v3);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12.origin.x = PDFBuilder.Document.drawingContext.getter();
  v13.origin.x = v4;
  v13.origin.y = v6;
  v13.size.width = v8;
  v13.size.height = v10;
  return CGRectContainsRect(v12, v13);
}

void PDFBuilder.Document.moveToNextDrawableRegionIfWontFitOnCurrentPage(_:in:)(UIGraphicsPDFRendererContext a1, CGFloat a2)
{
  v5 = PDFBuilder.Document.drawingContext.getter();
  v7 = v6;
  v9.size.width = CGRectGetWidth(*(v2 + 168));
  v9.origin.x = v5;
  v9.origin.y = v7;
  v9.size.height = a2;
  if (!CGRectContainsRect(*(v2 + 168), v9))
  {

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(a1);
  }
}

Swift::Void __swiftcall PDFBuilder.Document.moveToNextDrawableRegionIfWontFitOnCurrentPage(_:in:)(__C::CGRect _, UIGraphicsPDFRendererContext in)
{
  height = _.size.height;
  width = _.size.width;
  y = _.origin.y;
  x = _.origin.x;
  v8.origin.x = PDFBuilder.Document.drawingContext.getter();
  v9.origin.x = x;
  v9.origin.y = y;
  v9.size.width = width;
  v9.size.height = height;
  if (!CGRectContainsRect(v8, v9))
  {

    PDFBuilder.Document.moveToNextDrawableRegion(in:)(in);
  }
}

void sub_1BA20F060()
{
  if (*(v0 + 96) == 1)
  {
    v1 = *(v0 + 104);
    v2 = *(v0 + 120);
    v3 = __OFSUB__(v1, v2);
    v4 = v1 - v2;
    if (!v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v5 = *(v0 + 120);
  v3 = __OFADD__(v5, 1);
  v4 = v5 + 1;
  if (!v3)
  {
LABEL_6:
    v6 = v4;
    v7 = PDFBuilder.Document.bodyBox.getter();
    v12.origin.x = PDFBuilder.Document.bodyBox.getter();
    v8 = v7 + (v6 + -1.0) * ((CGRectGetWidth(v12) - (*(v0 + 104) + -1.0) * 36.0) / *(v0 + 104) + 36.0);
    v13.origin.x = PDFBuilder.Document.bodyBox.getter();
    MinY = CGRectGetMinY(v13);
    v14.origin.x = PDFBuilder.Document.bodyBox.getter();
    v10 = (CGRectGetWidth(v14) - (*(v0 + 104) + -1.0) * 36.0) / *(v0 + 104);
    v15.origin.x = PDFBuilder.Document.bodyBox.getter();
    Height = CGRectGetHeight(v15);
    *(v0 + 168) = v8;
    *(v0 + 176) = MinY;
    *(v0 + 184) = v10;
    *(v0 + 192) = Height;
    *(v0 + 200) = 0;
    return;
  }

  __break(1u);
}

uint64_t PDFBuilder.Document.deinit()
{

  return v0;
}

uint64_t PDFBuilder.Document.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BA20F1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  type metadata accessor for PDFBuilder();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1B9F1134C(&v11, v9 + 112);
  *(v9 + 152) = a2;
  return v9;
}

uint64_t sub_1BA20F244(uint64_t a1)
{
  v2 = v1;
  *(v2 + 104) = 1;
  *(v2 + 112) = 1;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 256;
  *(v2 + 160) = 1;
  *(v2 + 168) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 257;
  memmove((v2 + 16), (a1 + 16), 0x50uLL);
  swift_beginAccess();
  v4 = *(a1 + 201);
  swift_beginAccess();
  *(v2 + 201) = v4;
  *(v2 + 96) = *(a1 + 96);
  swift_beginAccess();
  *(v2 + 208) = *(a1 + 208);
  swift_beginAccess();
  *(v2 + 216) = *(a1 + 216);
  *(v2 + 168) = PDFBuilder.Document.drawingContext.getter();
  *(v2 + 176) = v5;
  *(v2 + 184) = v6;
  *(v2 + 192) = v7;
  *(v2 + 200) = 0;
  *(v2 + 104) = *(a1 + 104);
  *(v2 + 120) = *(a1 + 120);
  swift_beginAccess();
  v8 = *(a1 + 160);
  swift_beginAccess();
  *(v2 + 160) = v8;

  return v2;
}

void sub_1BA20F39C()
{
  if (!qword_1EBBEE748)
  {
    type metadata accessor for PDFBuilder.Document();
    v0 = sub_1BA4A2D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE748);
    }
  }
}

uint64_t dispatch thunk of PDFBuilder.generate()()
{
  v4 = (*(*v0 + 112) + **(*v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B9FFA404;

  return v4();
}

uint64_t sub_1BA20F5BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BA20F5DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

unint64_t sub_1BA20F61C()
{
  result = qword_1EBBEE750;
  if (!qword_1EBBEE750)
  {
    sub_1BA0A186C();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EBBEE750);
  }

  return result;
}

unint64_t sub_1BA20F664()
{
  result = qword_1EBBEE758;
  if (!qword_1EBBEE758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBBEE758);
  }

  return result;
}

uint64_t sub_1BA20F6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v50 = a2;
  sub_1B9F0C9D8(0, &qword_1EDC6E2A0, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v43 - v4;
  sub_1BA4A27B8();
  sub_1B9F0C9D8(0, &qword_1EDC6B460, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v48 = v6;
  v46 = sub_1BA4A1C68();
  v7 = *(v46 - 8);
  v47 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v51 = xmmword_1BA4B5480;
  *(v9 + 16) = xmmword_1BA4B5480;
  v45 = *MEMORY[0x1E69A3B68];
  v44 = *(v7 + 104);
  v44(v9 + v8);
  v10 = sub_1BA4A0FA8();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_1B9F1C048(0, &qword_1EDC6B450);
  v11 = swift_allocObject();
  *(v11 + 16) = v51;
  *(v11 + 32) = sub_1BA4A6F38();
  v49 = MEMORY[0x1BFAED020](v9, 0, v5, v11);

  sub_1B9F1C1B0(v5);
  v12 = swift_allocObject();
  *(v12 + 16) = v51;
  (v44)(v12 + v8, v45, v46);
  sub_1BA4A20E8();
  v13 = swift_allocObject();
  *(v13 + 16) = v51;
  *(v13 + 32) = sub_1BA4A6F38();
  v14 = sub_1BA4A2638();

  sub_1B9F1C048(0, &qword_1EDC6B400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B7510;
  v16 = v49;
  *(inited + 32) = v49;
  *(inited + 40) = v14;
  v52 = inited;
  v17 = v16;
  v18 = v14;

  sub_1B9F33948(v19);
  v20 = v52;
  v52 = MEMORY[0x1E69E7CC0];
  if (v20 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    *&v51 = v18;
    v18 = v17;
    v22 = 0;
    v17 = (v20 & 0xC000000000000001);
    while (1)
    {
      if (v17)
      {
        v23 = MEMORY[0x1BFAF2860](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v23 = *(v20 + 8 * v22 + 32);
      }

      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      MEMORY[0x1BFAF1510](v23);
      if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      ++v22;
      if (v24 == i)
      {
        v17 = v18;
        v18 = v51;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  sub_1B9F1BFFC();
  v25 = sub_1BA4A6AE8();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BA4B5890;
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v29 = sub_1BA4A6758();
  v30 = [v28 initWithKey:v29 ascending:1];

  *(v27 + 32) = v30;
  v31 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v32 = sub_1BA4A6758();
  v33 = [v31 initWithKey:v32 ascending:1];

  *(v27 + 40) = v33;
  v34 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v35 = sub_1BA4A6758();
  v36 = [v34 initWithKey:v35 ascending:0];

  *(v27 + 48) = v36;
  v37 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v38 = sub_1BA4A6758();
  v39 = [v37 initWithKey:v38 ascending:1 selector:sel_localizedStandardCompare_];

  *(v27 + 56) = v39;
  v40 = v26;
  v41 = sub_1BA4A7558();

  return v41;
}

id sub_1BA20FD5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SharedSummariesDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SharedSummariesDataSource()
{
  result = qword_1EBBEE760;
  if (!qword_1EBBEE760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BA20FDE8@<X0>(void *a1@<X8>)
{
  v3 = sub_1BA4A4428();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = qword_1EDC84AD8;
  swift_beginAccess();
  v11 = *(v1 + v10);
  v12 = sub_1BA4A18F8();
  v13 = [v11 objectAtIndexPath_];

  v14 = [v13 localizedCategoryName];
  if (v14)
  {
    v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v17 = v16;

    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    v18 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(v15, v17, 0, 0, 0, 0, v9, 0, 0);
    v20 = v19;
  }

  else
  {
    _s18HealthExperienceUI29CollectionViewHeaderProvidingPAAE24makeDefaultConfiguration5UIKit013UIListContentJ0VyFZ_0();
    (*(v4 + 16))(v6, v9, v3);
    v18 = type metadata accessor for HeaderItem();
    swift_allocObject();
    HeaderItem.init(title:buttonText:buttonWasTapped:configuration:automationIdentifier:)(0, 0xE000000000000000, 0, 0, 0, 0, v6, 0, 0);
    v20 = v21;
    (*(v4 + 8))(v9, v3);
  }

  result = sub_1BA011754();
  a1[3] = v18;
  a1[4] = result;
  *a1 = v20;
  return result;
}

uint64_t sub_1BA210088()
{
  sub_1B9FF57C0();
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830();
}

uint64_t sub_1BA2100D8(__int128 *a1)
{
  v8 = *a1;
  v2 = *(a1 + 2);
  static GridLayoutEngine.standard.getter(&v16);
  v14 = v8;
  v15 = v2;
  v3 = GridLayoutEngine.layout(for:)(&v14);
  if (v1)
  {
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    return sub_1B9F5A690(&v9);
  }

  else
  {
    v5 = v3;
    v11 = v18;
    v12 = v19;
    v13 = v20;
    v9 = v16;
    v10 = v17;
    sub_1B9F5A690(&v9);
    v6 = [objc_opt_self() estimatedDimension_];
    v7 = sub_1B9F5CA58(v6, 2);

    return v7;
  }
}

uint64_t sub_1BA2101D8()
{
  v1 = [v0 subviews];
  sub_1B9F0ADF8(0, &qword_1EDC6B4A0);
  v2 = sub_1BA4A6B08();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BA4A7CC8())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1BFAF2860](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;

        return v9;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t PDFAsyncViewController.PDFViewControllerError.hashValue.getter()
{
  sub_1BA4A8488();
  MEMORY[0x1BFAF2ED0](0);
  return sub_1BA4A84D8();
}

uint64_t sub_1BA2103A4(uint64_t a1, uint64_t a2)
{
  sub_1BA210408();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA210408()
{
  if (!qword_1EBBEE778)
  {
    sub_1B9F0D950(255, &qword_1EBBEE780);
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBBEE778);
    }
  }
}

uint64_t sub_1BA2104C0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1BA21052C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1BA001DB4;
}

id sub_1BA2105CC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = sub_1BA4A6AE8();
    v6 = HKUIJoinStringsForAutomationIdentifier();

    [v4 setAccessibilityIdentifier_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1BA2106B0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E6978048]) init];
    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAutoScales_];
    [v4 setDisplayMode_];
    [v4 setDisplayDirection_];
    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id PDFAsyncViewController.init(title:pdfFileNameProvider:pageNumberFormat:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] = 0;
  sub_1B9F0A534(a3, &v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider]);
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat] = v6;
  v8 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration];
  v9 = type metadata accessor for PDFAsyncViewController();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v13.receiver = v4;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  v11 = sub_1BA4A6758();

  [v10 setTitle_];

  __swift_destroy_boxed_opaque_existential_1(a3);
  return v10;
}

char *PDFAsyncViewController.__allocating_init(title:pdfFileNameProvider:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_1BA213804(a1, a2, v11, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v12;
}

char *PDFAsyncViewController.init(title:pdfFileNameProvider:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *(a3 + 24);
  v10 = *(a3 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1BA213454(a1, a2, v14, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id PDFAsyncViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PDFAsyncViewController.__deallocating_deinit()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A3E08();
  v6 = sub_1BA4A3E88();
  v7 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_1BA4A85D8();
    v12 = sub_1B9F0B82C(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1B9F07000, v6, v7, "[%{public}s] Deinit", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFAF43A0](v9, -1, -1);
    MEMORY[0x1BFAF43A0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = type metadata accessor for PDFAsyncViewController();
  v17.receiver = v1;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

void sub_1BA210E24()
{
  v1 = v0;
  sub_1BA2139C0(0, &qword_1EDC5E5E0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v73 - v3;
  v5 = type metadata accessor for PDFAsyncViewController();
  v76.receiver = v0;
  v76.super_class = v5;
  objc_msgSendSuper2(&v76, sel_viewDidLoad);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  v11 = sub_1BA4A6AE8();
  v12 = HKUIJoinStringsForAutomationIdentifier();

  [v10 setAccessibilityIdentifier_];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v13;
  v15 = sub_1BA2106B0();
  [v14 addSubview_];

  sub_1B9F1C048(0, &qword_1EDC6B400);
  v75 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BA4B5890;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView;
  v19 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] topAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v23;
  v24 = [*&v1[v18] bottomAnchor];
  v25 = [v1 view];
  if (!v25)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = v25;
  v74 = v4;
  v27 = [v25 safeAreaLayoutGuide];

  v28 = [v27 bottomAnchor];
  v29 = [v24 constraintEqualToAnchor_];

  *(v17 + 40) = v29;
  v30 = [*&v1[v18] leadingAnchor];
  v31 = [v1 view];
  if (!v31)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(v17 + 48) = v34;
  v35 = [*&v1[v18] trailingAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v37 = v36;
  v38 = objc_opt_self();
  v39 = [v37 trailingAnchor];

  v40 = [v35 constraintEqualToAnchor_];
  *(v17 + 56) = v40;
  sub_1B9F0ADF8(0, &qword_1EDC6B570);
  v41 = sub_1BA4A6AE8();

  [v38 activateConstraints_];

  v42 = *&v1[v18];
  v43 = sub_1BA2101D8();

  if (v43)
  {
    [v43 setContentInsetAdjustmentBehavior_];
  }

  v44 = [v1 view];
  if (!v44)
  {
    goto LABEL_23;
  }

  v45 = v44;
  v46 = sub_1BA2105CC();
  [v45 addSubview_];

  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1BA4B7510;
  v48 = OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner;
  v49 = [*&v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] centerXAnchor];
  v50 = [v1 view];
  if (!v50)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v51 = v50;
  v52 = [v50 centerXAnchor];

  v53 = [v49 constraintEqualToAnchor_];
  *(v47 + 32) = v53;
  v54 = [*&v1[v48] centerYAnchor];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = [v55 centerYAnchor];

  v58 = [v54 constraintEqualToAnchor_];
  *(v47 + 40) = v58;
  v59 = sub_1BA4A6AE8();

  [v38 activateConstraints_];

  [*&v1[v48] startAnimating];
  v60 = sub_1BA4A6C88();
  v61 = v74;
  (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
  sub_1BA4A6C68();
  v62 = v1;
  v63 = sub_1BA4A6C58();
  v64 = swift_allocObject();
  v65 = MEMORY[0x1E69E85E0];
  v64[2] = v63;
  v64[3] = v65;
  v64[4] = v62;
  sub_1BA0BF220(0, 0, v61, &unk_1BA4C6FB8, v64);

  v66 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:24 target:v62 action:sel_didTapClose];
  v67 = sub_1BA4A6AE8();
  v68 = HKUIJoinStringsForAutomationIdentifier();

  [v66 setAccessibilityIdentifier_];
  v69 = [v62 navigationItem];
  [v69 setLeftBarButtonItem_];

  v70 = &v62[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = *(v70 + 1);
    ObjectType = swift_getObjectType();
    (*(v71 + 8))(v62, ObjectType, v71);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1BA211668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = sub_1BA4A3EA8();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  sub_1BA4A6C68();
  v4[17] = sub_1BA4A6C58();
  v7 = sub_1BA4A6C28();
  v4[18] = v7;
  v4[19] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1BA21175C, v7, v6);
}

uint64_t sub_1BA21175C()
{
  sub_1BA2103A4(*(v0 + 104) + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration, v0 + 56);
  if (*(v0 + 80))
  {
    sub_1B9F1134C((v0 + 56), v0 + 16);
    v1 = swift_task_alloc();
    *(v0 + 160) = v1;
    *v1 = v0;
    v1[1] = sub_1BA211940;

    return sub_1BA211EB8(v0 + 16);
  }

  else
  {
    v3 = *(v0 + 104);

    sub_1BA213E94(v0 + 56);
    if (*(v3 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
    {
      v4 = *(v0 + 104);
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v4 action:sel_didTapShare_];
      v6 = sub_1BA4A6AE8();
      v7 = HKUIJoinStringsForAutomationIdentifier();

      [v5 setAccessibilityIdentifier_];
      v8 = [v4 navigationItem];
      [v8 setRightBarButtonItem_];
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1BA211940()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1BA211BC0;
  }

  else
  {
    v5 = sub_1BA211A7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BA211A7C()
{
  v1 = *(v0 + 104);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
  {
    v2 = *(v0 + 104);
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v2 action:sel_didTapShare_];
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v6 = [v2 navigationItem];
    [v6 setRightBarButtonItem_];
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1BA211BC0()
{
  v26 = v0;
  v1 = v0[13];

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  if (*(v1 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
  {
    v2 = v0[13];
    v3 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v2 action:sel_didTapShare_];
    v4 = sub_1BA4A6AE8();
    v5 = HKUIJoinStringsForAutomationIdentifier();

    [v3 setAccessibilityIdentifier_];
    v6 = [v2 navigationItem];
    [v6 setRightBarButtonItem_];
  }

  v7 = v0[21];
  sub_1BA4A3DD8();
  v8 = v7;
  v9 = sub_1BA4A3E88();
  v10 = sub_1BA4A6FA8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[21];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[14];
  if (v11)
  {
    v24 = v0[16];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    v0[12] = v12;
    v18 = v12;
    sub_1B9F0D950(0, &qword_1EDC6E310);
    v19 = sub_1BA4A6808();
    v21 = sub_1B9F0B82C(v19, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1B9F07000, v9, v10, "PDF Could not be generated due to error: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1BFAF43A0](v17, -1, -1);
    MEMORY[0x1BFAF43A0](v16, -1, -1);

    (*(v13 + 8))(v24, v15);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1BA211EB8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1BA4A6C68();
  v2[4] = sub_1BA4A6C58();
  v4 = sub_1BA4A6C28();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BA211F50, v4, v3);
}

uint64_t sub_1BA211F50()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1BA212008;

  return PDFConfigurable.generatePDFData()(v3, v2);
}

uint64_t sub_1BA212008(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[8] = a1;
  v5[9] = a2;
  v5[10] = v2;

  v6 = v4[6];
  v7 = v4[5];
  if (v2)
  {
    v8 = sub_1BA21258C;
  }

  else
  {
    v8 = sub_1BA212150;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BA212150()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1BA212280;

  return v6(v2, v3);
}

uint64_t sub_1BA212280(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_1BA2125F0;
  }

  else
  {
    v6[13] = a2;
    v6[14] = a1;
    v7 = v6[5];
    v8 = v6[6];
    v9 = sub_1BA2123B4;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BA2123B4()
{
  v25 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  v6 = v0[2];

  sub_1BA212664(v4, v3, v1, v2);

  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v8 + 24))(v24, v7, v8);
  v9 = (v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior);
  v10 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior);
  v11 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 8);
  v12 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 16);
  v13 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 24);
  v14 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 32);
  v15 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40);
  v16 = v24[1];
  *v9 = v24[0];
  v9[1] = v16;
  v9[2] = v24[2];
  sub_1BA213AD8(v10, v11, v12, v13, v14, v15);
  if (*(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource))
  {
    v17 = v0[3];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:v17 action:sel_didTapShare_];
    v19 = sub_1BA4A6AE8();
    v20 = HKUIJoinStringsForAutomationIdentifier();

    [v18 setAccessibilityIdentifier_];
    v21 = [v17 navigationItem];
    [v21 setRightBarButtonItem_];
  }

  sub_1B9F2BB4C(v0[8], v0[9]);
  v22 = v0[1];

  return v22();
}

uint64_t sub_1BA21258C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BA2125F0()
{
  v1 = v0[8];
  v2 = v0[9];

  sub_1B9F2BB4C(v1, v2);
  v3 = v0[1];

  return v3();
}

void sub_1BA212664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BA4A3C98();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA2105CC();
  [v15 stopAnimating];

  [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner) removeFromSuperview];
  v16 = objc_allocWithZone(MEMORY[0x1E6978028]);
  v17 = sub_1BA4A15F8();
  v18 = [v16 initWithData_];

  if (v18)
  {
    [v18 setDelegate_];
  }

  v19 = sub_1BA2106B0();
  [v19 setDocument_];

  v20 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView);
  v21 = sub_1BA2101D8();

  if (v21)
  {
    [v21 adjustedContentInset];
    [v21 setContentOffset:1 animated:{0.0, -v22}];
  }

  if (v18 && (v23 = [v18 dataRepresentation]) != 0)
  {
    v24 = v23;
    v25 = sub_1BA4A1608();
    v27 = v26;

    sub_1B9F206D4(v25, v27);

    sub_1BA4A3C78();
    v28 = objc_allocWithZone(type metadata accessor for ShareFileActivityItemSource());
    v29 = ShareFileActivityItemSource.init(data:filename:contentType:)(v25, v27, a3, a4, v14);
    sub_1B9F2BB4C(v25, v27);

    v30 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource);
    *(v5 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource) = v29;
  }

  else
  {
    sub_1BA4A3DD8();
    v31 = sub_1BA4A3E88();
    v32 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B9F07000, v31, v32, "PDFViewController couldn't pull data representation of the PDF", v33, 2u);
      MEMORY[0x1BFAF43A0](v33, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
  }
}

void sub_1BA2129C8(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  if (*&v1[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40])
  {
    v3 = *(v2 + 3);
    v4 = *(v2 + 1);
    sub_1B9F0AD9C(a1, v19);
    sub_1BA213E08();

    if (swift_dynamicCast())
    {
      v5 = aBlock[0];
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = sub_1BA4A6758();
      if (v3)
      {
LABEL_7:
        v7 = sub_1BA4A6758();
LABEL_14:
        v9 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

        if (qword_1EDC5E100 != -1)
        {
          swift_once();
        }

        sub_1BA4A1318();
        v10 = sub_1BA4A6758();

        v11 = objc_opt_self();
        v12 = [v11 actionWithTitle:v10 style:1 handler:{0, 0xE000000000000000}];

        [v9 addAction_];
        [v9 setPreferredAction_];
        v13 = swift_allocObject();
        *(v13 + 16) = v1;
        *(v13 + 24) = v5;
        swift_unknownObjectRetain();
        v14 = v1;
        v15 = sub_1BA4A6758();
        aBlock[4] = sub_1BA213E6C;
        aBlock[5] = v13;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1BA0B06D4;
        aBlock[3] = &block_descriptor_55;
        v16 = _Block_copy(aBlock);

        v17 = [v11 actionWithTitle:v15 style:0 handler:v16];
        _Block_release(v16);

        [v9 addAction_];
        [v14 presentViewController:v9 animated:1 completion:0];
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      v6 = 0;
      if (v3)
      {
        goto LABEL_7;
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  sub_1B9F0AD9C(a1, aBlock);
  sub_1BA213E08();
  if (swift_dynamicCast())
  {
    v8 = v19[0];
  }

  else
  {
    v8 = 0;
  }

  sub_1BA212DC4(v8);
  swift_unknownObjectRelease();
}

void sub_1BA212DC4(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v44[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44[-1] - v9;
  if (a1)
  {
    v11 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource];
    if (v11)
    {
      v12 = &v2[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = *(v12 + 1);
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 16);
        swift_unknownObjectRetain();
        v16 = v11;
        v15(v2, ObjectType, v13);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRetain();
        v31 = v11;
      }

      sub_1B9F1C048(0, &unk_1EDC6B3F0);
      v32 = swift_allocObject();
      v43 = xmmword_1BA4B5480;
      *(v32 + 16) = xmmword_1BA4B5480;
      *(v32 + 56) = type metadata accessor for ShareFileActivityItemSource();
      *(v32 + 32) = v11;
      v33 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
      v34 = v11;
      v35 = sub_1BA4A6AE8();

      v36 = [v33 initWithActivityItems:v35 applicationActivities:0];

      sub_1BA2139C0(0, &qword_1EBBEE848, type metadata accessor for ActivityType, MEMORY[0x1E69E6F90]);
      v37 = swift_allocObject();
      *(v37 + 16) = v43;
      v38 = *MEMORY[0x1E69CDAA8];
      *(v37 + 32) = *MEMORY[0x1E69CDAA8];
      type metadata accessor for ActivityType(0);
      v39 = v38;
      v40 = sub_1BA4A6AE8();

      [v36 setExcludedActivityTypes_];

      v41 = [v36 popoverPresentationController];
      if (v41)
      {
        v42 = v41;
        [v41 setSourceItem_];
      }

      [v2 presentViewController:v36 animated:1 completion:0];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRetain();
      sub_1BA4A3E08();
      v24 = sub_1BA4A3E88();
      v25 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v44[0] = v27;
        *v26 = 136446210;
        v28 = sub_1BA4A85D8();
        v30 = sub_1B9F0B82C(v28, v29, v44);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s] Unable to share PDF before it is loaded", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1BFAF43A0](v27, -1, -1);
        MEMORY[0x1BFAF43A0](v26, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    sub_1BA4A3E08();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44[0] = v20;
      *v19 = 136446210;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, v44);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B9F07000, v17, v18, "[%{public}s] sender found nil when presenting share sheet", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BA2132D0()
{
  result = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat);
  if (!result)
  {
    return sub_1B9F0ADF8(0, &qword_1EBBEE7C8);
  }

  if (result == 1)
  {
    return type metadata accessor for PDFPageNumberedPage();
  }

  return result;
}

id PDFAsyncViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BA4A6758();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

char *sub_1BA213454(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v41 = sub_1BA4A3EA8();
  v12 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a6;
  v44[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v16 = &a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource] = 0;
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner] = 0;
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView] = 0;
  sub_1B9F0A534(a4, &a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_configuration]);
  sub_1B9F0A534(v44, &a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pdfFileNameProvider]);
  v17 = a4[3];
  v18 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v17);
  (*(v18 + 8))(v42, v17, v18);
  *&a5[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_pageNumberFormat] = *&v42[0];
  v19 = type metadata accessor for PDFAsyncViewController();
  v43.receiver = a5;
  v43.super_class = v19;
  v20 = objc_msgSendSuper2(&v43, sel_initWithNibName_bundle_, 0, 0, ObjectType);
  v21 = sub_1BA4A6758();

  [v20 setTitle_];

  v22 = a4[3];
  v23 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v22);
  (*(v23 + 24))(v42, v22, v23);
  v24 = &v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v25 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior];
  v26 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 8];
  v27 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 16];
  v28 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 24];
  v29 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 32];
  v30 = *&v20[OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior + 40];
  v31 = v42[1];
  *v24 = v42[0];
  *(v24 + 1) = v31;
  *(v24 + 2) = v42[2];
  sub_1BA213AD8(v25, v26, v27, v28, v29, v30);
  sub_1BA4A3E08();
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FC8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v42[0] = v35;
    *v34 = 136446210;
    v36 = sub_1BA4A85D8();
    v38 = sub_1B9F0B82C(v36, v37, v42);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1B9F07000, v32, v33, "[%{public}s] Initialized", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1BFAF43A0](v35, -1, -1);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
  }

  else
  {
  }

  (*(v12 + 8))(v14, v41);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v20;
}

char *sub_1BA213804(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(type metadata accessor for PDFAsyncViewController());
  (*(v13 + 16))(v15, a3, a6);
  return sub_1BA213454(a1, a2, v15, a4, v16, a6, a7);
}

void _s18HealthExperienceUI22PDFAsyncViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareButtonBehavior);
  *v1 = 0u;
  v1[1] = 0u;
  v1[2] = 0u;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_analyticsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController_shareItemSource) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___spinner) = 0;
  *(v0 + OBJC_IVAR____TtC18HealthExperienceUI22PDFAsyncViewController____lazy_storage___pdfView) = 0;
  sub_1BA4A8018();
  __break(1u);
}

void sub_1BA2139C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1BA213A24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BA0C2E3C;

  return sub_1BA211668(a1, v4, v5, v6);
}

uint64_t sub_1BA213AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1BA213B2C()
{
  result = qword_1EBBEE7D0;
  if (!qword_1EBBEE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE7D0);
  }

  return result;
}

uint64_t dispatch thunk of PDFAsyncViewController.configure(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BA0C2E3C;

  return v7(a1);
}

unint64_t sub_1BA213E08()
{
  result = qword_1EBBEE850;
  if (!qword_1EBBEE850)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBBEE850);
  }

  return result;
}

uint64_t sub_1BA213E94(uint64_t a1)
{
  sub_1BA210408();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1BA213EF0()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for HierarchicalDiffableCollectionViewAdaptor();
    v4 = sub_1B9F23FB0();

    return sub_1BA164F98(v2, v4, 1, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for HierarchicalDiffableCollectionViewAdaptor()
{
  result = qword_1EBBEE858;
  if (!qword_1EBBEE858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id CollapsibleListCollectionViewController.__allocating_init(collectionViewLayout:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCollectionViewLayout_];

  return v3;
}

id CollapsibleListCollectionViewController.init(collectionViewLayout:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCollectionViewLayout_, a1);

  return v3;
}

id CollapsibleListCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CollapsibleListCollectionViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CollapsibleListCollectionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollapsibleListCollectionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BA214220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = sub_1BA4A6478();
  v45 = *(v7 - 8);
  v46 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1BA4A64C8();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2157C4();
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v5 + v15) = 1;
  v16 = *(v5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v18 = swift_unknownObjectRetain();
  v19 = sub_1BA21582C(v18, ObjectType, v16);
  swift_unknownObjectRelease();
  v20 = [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
  if (v20)
  {
  }

  else
  {
    a4 = 0;
  }

  v21 = dispatch_group_create();
  v47 = v19;
  v22 = *(v19 + 16);
  if (v22)
  {
    v23 = v47 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v48 = *(v12 + 72);
    v49 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
    do
    {
      sub_1BA215A00(v23, v14);
      v24 = *v14;
      v25 = v14[1];
      v50 = *(v11 + 48);
      dispatch_group_enter(v21);
      v26 = v14;
      v27 = v11;
      v28 = a4;
      v29 = *(v5 + v49);
      aBlock = v24;
      v53 = v25;
      *(swift_allocObject() + 16) = v21;
      v30 = v29;
      a4 = v28;
      v11 = v27;
      v14 = v26;
      v31 = v30;
      v32 = v21;
      sub_1BA4A4728();

      sub_1BA215AE8(v26, sub_1BA2157C4);
      v23 += v48;
      --v22;
    }

    while (v22);
  }

  sub_1B9F38BF4();
  v33 = sub_1BA4A7308();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v56 = sub_1BA0CAC90;
  v57 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v53 = 1107296256;
  v54 = sub_1B9F0B040;
  v55 = &block_descriptor_56;
  v35 = _Block_copy(&aBlock);
  v36 = v41;
  sub_1BA4A64A8();
  v51 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A8DC(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v37 = v43;
  v38 = v46;
  sub_1BA4A7C38();
  sub_1BA4A7278();

  _Block_release(v35);
  (*(v45 + 8))(v37, v38);
  (*(v42 + 8))(v36, v44);
}

uint64_t sub_1BA21489C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_1BA0699FC();
  v50 = v7;
  v34 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  ObjectType = swift_getObjectType();
  v33 = v11;
  v13 = SnapshotDataSource.itemIdentifiers(in:)(v11, v10, ObjectType, a2);
  sub_1BA4A4768();
  if (!v13[2])
  {
    goto LABEL_10;
  }

  v28 = v13[2];
  v30 = v10;
  v31 = a3;
  v32 = v3;
  v14 = v13[4];
  v27 = v13 + 4;
  v15 = v13[5];
  v16 = *(a2 + 24);

  v29 = v14;
  v16(v49, v14, v15, ObjectType, a2);
  if (!v49[3])
  {

    sub_1B9FCD638(v49);
LABEL_9:
    a3 = v31;
    v10 = v30;
LABEL_10:
    v39 = 0uLL;
    v18 = v50;
    sub_1BA4A4748();

    goto LABEL_11;
  }

  sub_1B9F32244();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  v37[6] = v45;
  v37[7] = v46;
  v37[8] = v47;
  v38 = v48;
  v37[2] = v41;
  v37[3] = v42;
  v37[4] = v43;
  v37[5] = v44;
  v37[0] = v39;
  v37[1] = v40;
  sub_1BA215C04(v37);
  sub_1B9F23348(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v17 = swift_allocObject();
  v26 = xmmword_1BA4B5480;
  *(v17 + 16) = xmmword_1BA4B5480;
  *(v17 + 32) = v29;
  *(v17 + 40) = v15;
  v35 = 0;
  v36 = 0;

  v18 = v50;
  sub_1BA4A4748();

  v19 = v13[2];
  v20 = v28;
  if (v19 < v28)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v19 != v28 - 1)
  {
LABEL_13:
    sub_1BA2A12AC(v13, v27, 1, (2 * v20) | 1);
  }

  a3 = v31;
  v35 = v29;
  v36 = v15;

  sub_1BA4A4748();

  v21 = swift_allocObject();
  *(v21 + 16) = v26;
  *(v21 + 32) = v29;
  *(v21 + 40) = v15;
  sub_1BA4A4758();

  v10 = v30;
LABEL_11:
  sub_1BA2157C4();
  v23 = *(v22 + 48);
  v24 = v34;
  *a3 = v33;
  a3[1] = v10;
  (*(v24 + 32))(a3 + v23, v9, v18);
}

uint64_t sub_1BA214C70(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A6478();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1BA4A64C8();
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2157C4();
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded;
  swift_beginAccess();
  *(v2 + v12) = 1;
  v13 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 8);
  ObjectType = swift_getObjectType();
  v15 = swift_unknownObjectRetain();
  v16 = sub_1BA21582C(v15, ObjectType, v13);
  swift_unknownObjectRelease();
  v17 = [*(v2 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
  if (v17)
  {
  }

  else
  {
    a1 = 0;
  }

  v18 = dispatch_group_create();
  v44 = v16;
  v19 = *(v16 + 16);
  if (v19)
  {
    v20 = v44 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v45 = *(v9 + 72);
    v46 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
    do
    {
      sub_1BA215A00(v20, v11);
      v21 = *v11;
      v22 = v11[1];
      v47 = *(v8 + 48);
      dispatch_group_enter(v18);
      v23 = v11;
      v24 = v8;
      v25 = a1;
      v26 = *(v2 + v46);
      aBlock = v21;
      v50 = v22;
      *(swift_allocObject() + 16) = v18;
      v27 = v26;
      a1 = v25;
      v8 = v24;
      v11 = v23;
      v28 = v27;
      v29 = v18;
      sub_1BA4A4728();

      sub_1BA215AE8(v23, sub_1BA2157C4);
      v20 += v45;
      --v19;
    }

    while (v19);
  }

  sub_1B9F38BF4();
  v30 = sub_1BA4A7308();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v53 = sub_1BA215C60;
  v54 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1B9F0B040;
  v52 = &block_descriptor_14_2;
  v32 = _Block_copy(&aBlock);
  v33 = v38;
  sub_1BA4A64A8();
  v48 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A8DC(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v34 = v40;
  v35 = v43;
  sub_1BA4A7C38();
  sub_1BA4A7278();

  _Block_release(v32);
  (*(v42 + 8))(v34, v35);
  (*(v39 + 8))(v33, v41);
}

uint64_t sub_1BA21515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v38 = a3;
  v39 = a4;
  v8 = sub_1BA4A6478();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1BA4A64C8();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2157C4();
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = [*(v5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) window];
  if (v17)
  {
  }

  else
  {
    a2 = 0;
  }

  v18 = dispatch_group_create();
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
    do
    {
      sub_1BA215A00(v20, v16);
      v21 = v16;
      v22 = *v16;
      v23 = v16[1];
      v48 = *(v12 + 48);
      dispatch_group_enter(v18);
      v24 = a2;
      v25 = *(v5 + v47);
      aBlock = v22;
      v51 = v23;
      *(swift_allocObject() + 16) = v18;
      v26 = v25;
      a2 = v24;
      v27 = v26;
      v28 = v18;
      sub_1BA4A4728();
      v16 = v21;

      sub_1BA215AE8(v21, sub_1BA2157C4);
      v20 += v46;
      --v19;
    }

    while (v19);
  }

  sub_1B9F38BF4();
  v29 = sub_1BA4A7308();
  v30 = swift_allocObject();
  v32 = v38;
  v31 = v39;
  *(v30 + 16) = v38;
  *(v30 + 24) = v31;
  v54 = sub_1BA215C60;
  v55 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1B9F0B040;
  v53 = &block_descriptor_40_4;
  v33 = _Block_copy(&aBlock);
  sub_1B9F0F1B4(v32, v31);
  v34 = v40;
  sub_1BA4A64A8();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1B9F31478();
  sub_1B9F0A8DC(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F31534();
  v35 = v42;
  v36 = v45;
  sub_1BA4A7C38();
  sub_1BA4A7278();

  _Block_release(v33);
  (*(v44 + 8))(v35, v36);
  (*(v41 + 8))(v34, v43);
}

uint64_t HierarchicalDiffableCollectionViewAdaptor.deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1BA215AE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);
  return v0;
}

uint64_t HierarchicalDiffableCollectionViewAdaptor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__shouldLogApplyingSnapshotWithNumberOfSections;
  sub_1BA215A6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  sub_1BA215AE8(v0 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor__debug_currentSnapshotState, type metadata accessor for DiffableCollectionViewAdaptor.DebugState);

  return swift_deallocClassInstance();
}

void sub_1BA2157C4()
{
  if (!qword_1EBBEAC58)
  {
    sub_1BA0699FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBBEAC58);
    }
  }
}

size_t sub_1BA21582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BA2157C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1;
  v20 = a3;
  v10 = SnapshotDataSource.sectionIdentifiers.getter(a2, a3);
  v11 = *(v10 + 16);
  if (v11)
  {
    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1BA066EA0(0, v11, 0);
    v13 = 0;
    v14 = v22;
    v15 = (v10 + 40);
    while (v13 < *(v10 + 16))
    {
      v16 = *v15;
      v21[0] = *(v15 - 1);
      v21[1] = v16;

      sub_1BA21489C(v21, v20, v9);

      v22 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BA066EA0(v17 > 1, v18 + 1, 1);
        v14 = v22;
      }

      ++v13;
      *(v14 + 16) = v18 + 1;
      result = sub_1BA215BA0(v9, v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
      v15 += 2;
      if (v11 == v13)
      {

        return v14;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1BA215A00(uint64_t a1, uint64_t a2)
{
  sub_1BA2157C4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BA215A6C()
{
  if (!qword_1EDC6ADE0)
  {
    sub_1B9F23348(255, &qword_1EDC6B650, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v0 = sub_1BA4A1CE8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6ADE0);
    }
  }
}

uint64_t sub_1BA215AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BA215BA0(uint64_t a1, uint64_t a2)
{
  sub_1BA2157C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void __swiftcall DeviceSourcesItem.init(device:healthStore:)(HealthExperienceUI::DeviceSourcesItem *__return_ptr retstr, HKDevice device, HKHealthStore healthStore)
{
  v6 = sub_1BA4A1798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = device.super.isa;
  v11 = [(objc_class *)v10 _displayName];
  if (v11)
  {
    v12 = v11;
    v13 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v16 = [(objc_class *)v10 localIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v20 = v19;
  }

  else
  {
    sub_1BA4A1788();
    v18 = sub_1BA4A1748();
    v20 = v21;
    (*(v7 + 8))(v9, v6);
  }

  v22 = [(objc_class *)v10 model:v13];

  if (v22)
  {
    v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1BFAF1350](v23, v25);

  MEMORY[0x1BFAF1350](95, 0xE100000000000000);
  MEMORY[0x1BFAF1350](v18, v20);

  v26 = v27[1];
  retstr->uniqueIdentifier._countAndFlagsBits = v27[0];
  retstr->uniqueIdentifier._object = v26;
  retstr->name._countAndFlagsBits = v13;
  retstr->name._object = v15;
  retstr->device.super.isa = v10;
  retstr->healthStore = healthStore;
}

uint64_t sub_1BA215E70()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1BA2173E8(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v25 = &v22 - v2;
  v3 = sub_1BA4A3FB8();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1BA4A3F18();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA2173E8(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], v0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = sub_1BA31D5B4();
  MEMORY[0x1BFAF1F00](v15);
  v16 = sub_1BA4A4168();
  if ((*(*(v16 - 8) + 48))(v14, 1, v16))
  {
    v17 = MEMORY[0x1E69DC0D8];
    sub_1BA217368(v14, v11, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
    MEMORY[0x1BFAF1F10](v11);
    sub_1B9F44100(v14, &qword_1EDC6B770, v17);
  }

  else
  {
    v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
    sub_1BA4A4118();
    MEMORY[0x1BFAF1F10](v14);
  }

  sub_1BA2173E8(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v19 = v23;
  (*(v6 + 104))(v8, *MEMORY[0x1E69DBF28], v23);
  v20 = sub_1BA4A3F48();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v24 + 8))(v5, v3);
  (*(v6 + 8))(v8, v19);
  return sub_1BA4A75F8();
}

uint64_t sub_1BA2162F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1BA4A3EA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A4428();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA217368(v1 + v11, v34, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v34[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v12 = v32;
      v28 = v32;
      v29 = v33;
      v30 = v31[1];
      v13 = [objc_opt_self() sharedImageManager];
      v14 = [v13 iconForDevice_];

      v15 = v14;
      MEMORY[0x1BFAF2040]();
      sub_1BA4A43B8();
      v16 = v15;
      sub_1BA4A43D8();
      v17 = sub_1BA4A42D8();
      sub_1BA4A4268();
      v17(v31, 0);
      sub_1BA4A4348();
      v31[3] = v7;
      v32 = MEMORY[0x1E69DC110];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
      (*(v8 + 16))(boxed_opaque_existential_1, v10, v7);
      MEMORY[0x1BFAF1EF0](v31);

      return (*(v8 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1B9F44100(v34, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v20 = sub_1BA4A3E88();
  v21 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v34[0] = v23;
    *v22 = 136446210;
    v31[0] = ObjectType;
    swift_getMetatypeMetadata();
    v24 = sub_1BA4A6808();
    v26 = sub_1B9F0B82C(v24, v25, v34);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1B9F07000, v20, v21, "[%{public}s] item is not a DeviceSourcesItem", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1BFAF43A0](v23, -1, -1);
    MEMORY[0x1BFAF43A0](v22, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_1BA216814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceSourcesCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1BA216870()
{
  v0 = objc_opt_self();
  v1 = [v0 systemGray5Color];
  v2 = [v0 tertiarySystemGroupedBackgroundColor];
  v3 = swift_allocObject();
  v3[2] = 0;
  v3[3] = v2;
  v3[4] = 0;
  v3[5] = v1;
  v4 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v8[4] = sub_1B9FD7F54;
  v8[5] = v3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B9F7EBBC;
  v8[3] = &block_descriptor_57;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider_];
  _Block_release(v5);

  return v6;
}

uint64_t sub_1BA21699C()
{
  type metadata accessor for DeviceSourcesCell();
  sub_1BA21744C();
  result = sub_1BA4A6808();
  qword_1EBC09720 = result;
  *algn_1EBC09728 = v1;
  return result;
}

uint64_t DeviceSourcesItem.reuseIdentifier.getter()
{
  if (qword_1EBBE8520 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBC09720;

  return v0;
}

uint64_t DeviceSourcesItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DeviceSourcesItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DeviceSourcesItem.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DeviceSourcesItem.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

unint64_t sub_1BA216B58(uint64_t a1)
{
  result = sub_1BA216B80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1BA216B80()
{
  result = qword_1EBBEE868;
  if (!qword_1EBBEE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE868);
  }

  return result;
}

unint64_t sub_1BA216BD8()
{
  result = qword_1EBBEE870;
  if (!qword_1EBBEE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBBEE870);
  }

  return result;
}

uint64_t sub_1BA216C2C()
{
  if (qword_1EBBE8520 != -1)
  {
    swift_once();
  }

  v0 = qword_1EBC09720;

  return v0;
}

uint64_t sub_1BA216C94(uint64_t a1)
{
  v2 = sub_1BA216B80();

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1BA216D14(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BA2173E8(0, &unk_1EDC6AE50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v44[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44[-v13];
  v15 = OBJC_IVAR____TtC18HealthExperienceUI16IconWithNameCell_item;
  swift_beginAccess();
  sub_1BA217368(v2 + v15, v56, &qword_1EDC6E1A0, sub_1B9FCD918);
  if (v56[3])
  {
    sub_1B9FCD918();
    if (swift_dynamicCast())
    {
      v16 = v52;
      v18 = v53;
      v17 = v54;
      v19 = v55;
      if ([v54 _isConnectedGymDevice])
      {
        v20 = [v19 viewControllerFactory];
        v21 = [v17 _connectedGymDeviceFullName];
        v22 = [v20 createDeviceStoredDataViewControllerForDevice:v17 displayName:v21 isBluetoothDevice:0 deviceIdentifier:0 healthStore:v19 usingInsetStyling:1];

        [a1 showViewController:v22 sender:0];
      }

      else
      {
        v31 = [v17 name];
        v50 = v19;
        if (v31 || (v31 = [v17 model]) != 0 || (v31 = objc_msgSend(v17, sel_manufacturer)) != 0)
        {
          v32 = v31;
          v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        }

        else
        {
          v46 = 0;
        }

        v33 = [v17 bluetoothIdentifier];
        v48 = v16;
        v49 = a1;
        v47 = v18;
        if (v33 || (v33 = [v17 localIdentifier]) != 0)
        {
          v34 = v33;
          _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        }

        sub_1BA4A1738();

        v35 = sub_1BA4A1798();
        v36 = *(v35 - 8);
        v37 = *(v36 + 48);
        v45 = v37(v14, 1, v35);
        v38 = [v50 viewControllerFactory];
        v39 = sub_1BA4A6758();

        sub_1BA217368(v14, v11, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
        v40 = v37(v11, 1, v35);
        v41 = 0;
        if (v40 != 1)
        {
          v41 = sub_1BA4A1758();
          (*(v36 + 8))(v11, v35);
        }

        v42 = v50;
        v43 = [v38 createDeviceStoredDataViewControllerForDevice:v17 displayName:v39 isBluetoothDevice:v45 != 1 deviceIdentifier:v41 healthStore:v50 usingInsetStyling:1];

        [v49 showViewController:v43 sender:0];

        return sub_1B9F44100(v14, &unk_1EDC6AE50, MEMORY[0x1E69695A8]);
      }
    }
  }

  else
  {
    sub_1B9F44100(v56, &qword_1EDC6E1A0, sub_1B9FCD918);
  }

  sub_1BA4A3E48();
  v24 = sub_1BA4A3E88();
  v25 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56[0] = v27;
    *v26 = 136446210;
    v51 = ObjectType;
    swift_getMetatypeMetadata();
    v28 = sub_1BA4A6808();
    v30 = sub_1B9F0B82C(v28, v29, v56);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1B9F07000, v24, v25, "[%{public}s] item is not an DeviceSourcesItem", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1BFAF43A0](v27, -1, -1);
    MEMORY[0x1BFAF43A0](v26, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BA217368(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1BA2173E8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1BA2173E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1BA21744C()
{
  result = qword_1EBBE9E30;
  if (!qword_1EBBE9E30)
  {
    type metadata accessor for DeviceSourcesCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EBBE9E30);
  }

  return result;
}

void sub_1BA217490(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uniqueIdentifier];
  v4 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1BA2174E8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1BA4A6758();
  [v2 setUniqueIdentifier_];
}

void *HideIfEmptyPredicateDataSource.init(_:context:predicate:)(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  *(v3 + *(*v3 + 304)) = 0;
  sub_1BA4A27B8();
  v8 = sub_1BA4A26C8();
  sub_1B9F109F8();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BA4B5470;
  sub_1BA0A361C();
  swift_getKeyPath();
  *(v9 + 32) = sub_1BA4A71B8();
  v10 = sub_1BA4A6AE8();

  [v8 setSortDescriptors_];

  [v8 setFetchLimit_];
  v11 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v8 managedObjectContext:a2 sectionNameKeyPath:0 cacheName:0];
  sub_1B9F126E0();
  v13 = objc_allocWithZone(v12);
  v14 = v11;
  v15 = _s18HealthExperienceUI33FeedItemSuggestedActionDataSourceCyACSo26NSFetchedResultsControllerCy0A8Platform0dE0CGcfc_0(v14);
  *(v4 + *(*v4 + 296)) = v15;
  v16 = v15;
  swift_unknownObjectRetain();
  sub_1BA217804(v16, &v22);

  v23 = v22;
  v17 = sub_1B9F37820(a1, &v23);
  swift_unknownObjectRelease();
  v18 = *(v17 + *(*v17 + 296));
  v19 = qword_1EBBEA528;
  swift_beginAccess();
  v20 = *(v18 + v19);

  [v20 registerObserver_];

  swift_unknownObjectRelease();

  return v17;
}

id sub_1BA217804@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = qword_1EDC84AD8;
  swift_beginAccess();
  result = [*(a1 + v4) fetchedObjects];
  v9 = 0;
  if (result)
  {
    v6 = result;
    sub_1BA4A27B8();
    v7 = sub_1BA4A6B08();

    v8 = v7 >> 62 ? sub_1BA4A7CC8() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v8 > 0)
    {
      v9 = 1;
    }
  }

  *a2 = v9;
  return result;
}

void sub_1BA2178DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_1B9F35348();
  v9 = a1;
  v10 = v17[2];
  v11 = *v4;
  v12 = (*(v4 + *(*v4 + 296)) + qword_1EDC84AD0);
  if (*v12 != v9 || v12[1] != a2)
  {
    if ((sub_1BA4A8338() & 1) == 0)
    {
      goto LABEL_8;
    }

    v11 = *v4;
  }

  v14 = *(v4 + *(v11 + 296));
  sub_1BA217804(v14, &v15);

  sub_1B9F382CC();
LABEL_8:
  sub_1B9F35348();
  v17[0] = v17[1];
  v16 = v10;
  if (static HideableDataSource.Visibility.== infix(_:_:)(v17, &v16))
  {

    sub_1B9F8A548(a3, a4 & 1);
  }
}

uint64_t sub_1BA217A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_1B9F12538();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v13 = v12;
  sub_1BA4A45C8();

  sub_1BA2178DC(v11, v13, v10, a5);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1BA217BF4()
{
}

id *HideIfEmptyPredicateDataSource.deinit()
{
  v0 = HideableDataSource.deinit();

  return v0;
}

uint64_t HideIfEmptyPredicateDataSource.__deallocating_deinit()
{
  HideIfEmptyPredicateDataSource.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BA217D5C(uint64_t a1, uint64_t *a2)
{
  v3 = MEMORY[0x1E69A3348];
  sub_1B9F374E8(a1, v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  v4 = *a2;
  v5 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F63E74(v7, v4 + v5);
  swift_endAccess();
  sub_1BA218358();
  return sub_1B9F44170(v7, &qword_1EDC6E1A0, &qword_1EDC6E1B0, v3, sub_1B9F0CDE8);
}

uint64_t sub_1BA217E20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  return sub_1B9F374E8(v1 + v3, a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
}

uint64_t sub_1BA217E90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  swift_endAccess();
  sub_1BA218358();
  return sub_1B9F44170(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
}

uint64_t (*sub_1BA217F28(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BA217F8C;
}

uint64_t sub_1BA217F8C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1BA218358();
  }

  return result;
}

uint64_t sub_1BA217FC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1BA21802C()
{
  v1 = (v0 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1BA218084(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id DataTypeNoDataAvailableCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DataTypeNoDataAvailableCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier];
  v11 = type metadata accessor for DataTypeNoDataAvailableCell();
  *v10 = 0;
  *(v10 + 1) = 0;
  v13.receiver = v4;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t sub_1BA218358()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E6720];
  sub_1B9F6A90C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v106 = &v93 - v4;
  sub_1B9F6A90C(0, &qword_1EBBED0D8, MEMORY[0x1E69DC1B8], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v105 = &v93 - v6;
  v7 = sub_1BA4A4168();
  v111 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v110 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F6A90C(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], v2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v102 = &v93 - v10;
  v11 = sub_1BA4A3FB8();
  v103 = *(v11 - 8);
  v104 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1BA4A3F18();
  v14 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BA4A3EA8();
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BA4A4428();
  v108 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v22, &v114, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
  if (!v116)
  {
    sub_1B9F44170(&v114, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    goto LABEL_22;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v114 = 0;
    v115 = 0xE000000000000000;
    sub_1BA4A7DF8();

    v113[0] = 0xD000000000000011;
    v113[1] = 0x80000001BA4F5100;
    sub_1B9F374E8(v0 + v22, &v114, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0);
    v92 = sub_1BA4A6808();
    MEMORY[0x1BFAF1350](v92);

    result = sub_1BA4A8018();
    __break(1u);
    return result;
  }

  v109 = v19;
  v112 = v7;
  v107 = v113[0];
  v23 = [v113[0] localizedTitle];
  if (!v23)
  {

    goto LABEL_22;
  }

  v24 = v23;
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  sub_1BA4A43A8();
  sub_1BA4A43B8();
  v25 = *MEMORY[0x1E69DDCF8];
  v26 = objc_opt_self();
  v27 = [v26 preferredFontDescriptorWithTextStyle:v25 compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];

  if (v28)
  {
    v29 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];
    v30 = v112;
  }

  else
  {
    sub_1BA4A3DD8();
    v31 = v25;
    v32 = sub_1BA4A3E88();
    v33 = sub_1BA4A6FB8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v98 = v32;
      v35 = v34;
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v113[0] = v96;
      *v35 = 136315906;
      v36 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v97 = v31;
      v38 = sub_1B9F0B82C(v36, v37, v113);
      v94 = v33;
      v39 = v38;

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      v114 = 0;
      LOBYTE(v115) = 1;
      v93 = MEMORY[0x1E69E6720];
      sub_1B9F6A90C(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
      v40 = sub_1BA4A6808();
      v42 = sub_1B9F0B82C(v40, v41, v113);

      *(v35 + 14) = v42;
      *(v35 + 22) = 2080;
      LODWORD(v114) = 2;
      type metadata accessor for SymbolicTraits(0);
      v43 = sub_1BA4A6808();
      v45 = sub_1B9F0B82C(v43, v44, v113);
      v31 = v97;

      *(v35 + 24) = v45;
      *(v35 + 32) = 2112;
      v46 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      *(v35 + 34) = v46;
      v47 = v95;
      *v95 = v46;
      _os_log_impl(&dword_1B9F07000, v98, v94, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v35, 0x2Au);
      sub_1B9F44170(v47, &qword_1EDC6B490, sub_1BA0004FC, v93, sub_1B9F6A90C);
      MEMORY[0x1BFAF43A0](v47, -1, -1);
      v48 = v26;
      v49 = v1;
      v50 = v16;
      v51 = v18;
      v52 = v14;
      v53 = v13;
      v54 = v96;
      swift_arrayDestroy();
      v55 = v54;
      v13 = v53;
      v14 = v52;
      MEMORY[0x1BFAF43A0](v55, -1, -1);
      MEMORY[0x1BFAF43A0](v35, -1, -1);

      v56 = v51;
      v16 = v50;
      v1 = v49;
      v26 = v48;
      (*(v99 + 8))(v56, v100);
    }

    else
    {

      (*(v99 + 8))(v18, v100);
    }

    v30 = v112;
    v28 = [v26 preferredFontDescriptorWithTextStyle_];
    v29 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];
  }

  v57 = v29;

  v58 = sub_1BA4A4238();
  sub_1BA4A41E8();
  v58(&v114, 0);
  v59 = sub_1BA4A4238();
  sub_1BA4A41B8();
  v59(&v114, 0);
  sub_1B9F6A90C(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1BA4A3FE8();
  *(swift_allocObject() + 16) = xmmword_1BA4B5480;
  v60 = v101;
  (*(v14 + 104))(v16, *MEMORY[0x1E69DBF28], v101);
  v61 = sub_1BA4A3F48();
  (*(*(v61 - 8) + 56))(v102, 1, 1, v61);
  v62 = [objc_opt_self() tertiaryLabelColor];
  sub_1BA4A3FA8();
  sub_1BA4A3F78();
  (*(v103 + 8))(v13, v104);
  (*(v14 + 8))(v16, v60);
  sub_1BA4A75F8();
  v63 = [v1 viewController];
  if (v63)
  {
    v64 = v63;
    UIViewController.resolvedPresentation.getter(&v114);

    v65 = v114;
  }

  else
  {
    v65 = 3;
  }

  v67 = v110;
  v66 = v111;
  v68 = v107;
  sub_1BA4A4158();
  v69 = swift_allocObject();
  *(v69 + 16) = v1;
  *(v69 + 24) = v65;
  v70 = v1;
  v71 = v105;
  sub_1BA4A46A8();
  v72 = sub_1BA4A4698();
  (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
  sub_1BA4A4138();
  v73 = v106;
  (*(v66 + 16))(v106, v67, v30);
  (*(v66 + 56))(v73, 0, 1, v30);
  MEMORY[0x1BFAF1F10](v73);
  v74 = sub_1BA4A2758();
  v75 = sub_1BA1591A8(v74);

  if (v75)
  {
    v76 = [v75 identifier];

    v77 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v79 = v78;

    sub_1B9F25350();
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_1BA4B9FD0;
    *(v80 + 32) = 0x79726F6765746143;
    *(v80 + 40) = 0xE800000000000000;
    *(v80 + 48) = 0x617461446F4ELL;
    *(v80 + 56) = 0xE600000000000000;
    *(v80 + 64) = v77;
    *(v80 + 72) = v79;
    v81 = sub_1BA4A6AE8();

    v82 = HKUIJoinStringsForAutomationIdentifier();

    if (v82)
    {
      v75 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v84 = v83;
    }

    else
    {
      v75 = 0;
      v84 = 0;
    }

    v86 = &v70[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier];
    swift_beginAccess();
    *v86 = v75;
    *(v86 + 1) = v84;
  }

  else
  {
    v85 = &v70[OBJC_IVAR____TtC18HealthExperienceUI27DataTypeNoDataAvailableCell_baseIdentifier];
    swift_beginAccess();
    v84 = 0;
    *v85 = 0;
    *(v85 + 1) = 0;
  }

  v87.value._countAndFlagsBits = v75;
  v87.value._object = v84;
  DataTypeNoDataAvailableCell.updateAutomationIdentifiers(with:)(v87);

  v88 = v109;
  v116 = v109;
  v117 = MEMORY[0x1E69DC110];
  v89 = __swift_allocate_boxed_opaque_existential_1(&v114);
  v90 = v108;
  (*(v108 + 16))(v89, v21, v88);
  MEMORY[0x1BFAF1EF0](&v114);

  (*(v66 + 8))(v67, v30);
  return (*(v90 + 8))(v21, v88);
}