void sub_195EC9F90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_195ECA0D8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_195ECA114(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_195ECA0D8(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_195FA1338();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_195F5EA00();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    *(v20[6] + 8 * v9) = a2;
    *(v20[7] + 8 * v9) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;
}

unint64_t sub_195ECA0D8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_195FA1388();
  return sub_195EC4458(a1, v4);
}

uint64_t sub_195ECA114(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0C0, &unk_195FAEFD0);
  result = sub_195FA1098();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v22;
      }

      v24 = *(v8 + 40);
      result = sub_195FA1388();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

void sub_195ECA3B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_195EC7CCC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_195ECA6D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_195EC7CCC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_195FA1338();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_195F5EB5C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id CHSWidgetFamilyMaskDescription(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__5;
  v13 = __Block_byref_object_dispose__5;
  v14 = [MEMORY[0x1E696AD60] string];
  objc_msgSend(v10[5], "appendString:", @"(");
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CHSWidgetFamilyMaskDescription_block_invoke;
  v4[3] = &unk_1E7454408;
  v4[4] = &v5;
  v4[5] = &v9;
  CHSWidgetFamilyMaskEnumerateFamilies(a1, v4);
  if (*(v6 + 24) == 1)
  {
    [v10[5] appendString:@"undefined"];
  }

  [v10[5] appendString:@""]);
  v2 = v10[5];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);

  return v2;
}

void sub_195ECA6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_195ECA6D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0F8, &qword_195FAF020);
  v39 = a2;
  result = sub_195FA1098();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

id NSStringFromCHSWidgetSpatialChromeStyles(char a1)
{
  v2 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  v3 = v2;
  if (a1)
  {
    [v2 appendString:@"elevated"];
  }

  if ((a1 & 2) != 0)
  {
    if (a1)
    {
      v5 = @", elevatedMetal";
    }

    else
    {
      v5 = @"elevatedMetal";
    }

    [v3 appendString:v5];
    if ((a1 & 4) == 0)
    {
      goto LABEL_16;
    }

    v4 = @", recessed";
  }

  else if ((a1 & 4) != 0)
  {
    if (a1)
    {
      v4 = @", recessed";
    }

    else
    {
      v4 = @"recessed";
    }
  }

  else
  {
    if (a1)
    {
      goto LABEL_16;
    }

    v4 = @"none";
  }

  [v3 appendString:v4];
LABEL_16:
  [v3 appendString:@""]);

  return v3;
}

uint64_t sub_195ECAA88(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_195ECAACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_195ECAB4C()
{
  qword_1EAEEBDE0 = 0;
  *algn_1EAEEBDE8 = 0;
  dword_1EAEEBDF0 = 68;
  word_1EAEEBDF4 = 514;
  dword_1EAEEBDF8 = 0;
  byte_1EAEEBDFC = 1;
}

uint64_t sub_195ECAB78(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24);
    result += 24;
    v3 = (a2 << 38) | ((*(result + 4) & 1) << 32);
    *(result - 8) &= 0xFFFFFFFFFFFFuLL;
    *result = v2;
    *(result + 4) = BYTE4(v3);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 2);
    *(result + 24) = 0;
    *(result + 28) = 0x80;
  }

  return result;
}

void sub_195ECABC4()
{
  v0 = sub_195FA0888();
  v1 = MGGetBoolAnswer();

  byte_1EAEF72C8 = v1;
}

__CFString *CHSDescriptionForWidgetVisibility(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"default";
  }

  else
  {
    return off_1E7454528[a1 - 1];
  }
}

__CFString *NSStringFromCHSWidgetSpatialSurface(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7454388[a1];
  }
}

uint64_t sub_195ECAC60()
{
  v0 = type metadata accessor for DefaultPlatformProvider();
  result = swift_allocObject();
  qword_1ED457AD8 = v0;
  unk_1ED457AE0 = &protocol witness table for DefaultPlatformProvider;
  qword_1ED457AC0 = result;
  return result;
}

uint64_t static DefaultPlatformProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1ED457AB8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_195EC97E0(&qword_1ED457AC0, v2);
}

void sub_195ECAD80(_BYTE *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if ((deviceClassNumber - 1) > 8)
    {
      v5 = 0;
    }

    else
    {
      v5 = byte_195FB0BDA[deviceClassNumber - 1];
    }

    *a1 = v5;
  }

  else
  {
    __break(1u);
  }
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_14ChronoServices11ImageFormatO(uint64_t a1)
{
  v1 = *(a1 + 28) >> 6;
  if (v1 <= 1)
  {
    return v1;
  }

  else
  {
    return (*a1 + 2);
  }
}

id NSStringFromCHSWidgetLocationStyleMask(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__5;
  v19 = __Block_byref_object_dispose__5;
  v20 = [MEMORY[0x1E696AD60] string];
  objc_msgSend(v16[5], "appendString:", @"(");
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v9 = __NSStringFromCHSWidgetLocationStyleMask_block_invoke;
  v10 = &unk_1E7454430;
  v11 = v13;
  v12 = &v15;
  v2 = v8;
  if (a1)
  {
    v3 = 0;
    v21 = 0;
    v4 = vcnt_s8(a1);
    v4.i16[0] = vaddlv_u8(v4);
    v5 = v4.i32[0];
    do
    {
      if (((1 << v3) & a1) != 0)
      {
        (v9)(v2);
        if (v21)
        {
          break;
        }

        --v5;
      }

      if (v3 > 0x3E)
      {
        break;
      }

      ++v3;
    }

    while (v5 > 0);
  }

  [v16[5] appendString:@""]);
  v6 = v16[5];
  _Block_object_dispose(v13, 8);
  _Block_object_dispose(&v15, 8);

  return v6;
}

void sub_195ECB058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a20, 8);

  _Unwind_Resume(a1);
}

uint64_t __NSStringFromCHSWidgetLocationStyleMask_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 <= 7)
  {
    switch(a2)
    {
      case 1:
        v3 = @"HomeScreen";
        break;
      case 2:
        v3 = @"LockScreen";
        break;
      case 4:
        v3 = @"StandBy";
        break;
      default:
        return result;
    }
  }

  else if (a2 > 31)
  {
    if (a2 == 32)
    {
      v3 = @"SmartStack";
    }

    else
    {
      if (a2 != 64)
      {
        return result;
      }

      v3 = @"CarPlay";
    }
  }

  else if (a2 == 8)
  {
    v3 = @"iPhoneWidgetsOnMac";
  }

  else
  {
    if (a2 != 16)
    {
      return result;
    }

    v3 = @"WatchFace";
  }

  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    [*(*(*(result + 40) + 8) + 40) appendString:{@", "}];
  }

  result = [*(*(*(v2 + 40) + 8) + 40) appendString:v3];
  *(*(*(v2 + 32) + 8) + 24) = 0;
  return result;
}

unint64_t sub_195ECB1AC()
{
  result = qword_1EAEEC3A8;
  if (!qword_1EAEEC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3A8);
  }

  return result;
}

unint64_t sub_195ECB204()
{
  result = qword_1EAEEC3B0;
  if (!qword_1EAEEC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3B0);
  }

  return result;
}

unint64_t sub_195ECB26C()
{
  result = qword_1EAEEC418;
  if (!qword_1EAEEC418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC418);
  }

  return result;
}

unint64_t sub_195ECB2C4()
{
  result = qword_1EAEEC420;
  if (!qword_1EAEEC420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC420);
  }

  return result;
}

unint64_t sub_195ECB32C()
{
  result = qword_1EAEEC408;
  if (!qword_1EAEEC408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC408);
  }

  return result;
}

unint64_t sub_195ECB384()
{
  result = qword_1EAEEC410;
  if (!qword_1EAEEC410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC410);
  }

  return result;
}

unint64_t sub_195ECB3EC()
{
  result = qword_1EAEEC3D8;
  if (!qword_1EAEEC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3D8);
  }

  return result;
}

unint64_t sub_195ECB444()
{
  result = qword_1EAEEC3E0;
  if (!qword_1EAEEC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3E0);
  }

  return result;
}

unint64_t sub_195ECB4AC()
{
  result = qword_1EAEEC3B8;
  if (!qword_1EAEEC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3B8);
  }

  return result;
}

unint64_t sub_195ECB554()
{
  result = qword_1EAEEC260;
  if (!qword_1EAEEC260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC260);
  }

  return result;
}

unint64_t sub_195ECB5A8()
{
  result = qword_1EAEEC3C0;
  if (!qword_1EAEEC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3C0);
  }

  return result;
}

unint64_t sub_195ECB67C()
{
  result = qword_1EAEEC3E8;
  if (!qword_1EAEEC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3E8);
  }

  return result;
}

unint64_t sub_195ECB6DC()
{
  result = qword_1EAEEC3F0;
  if (!qword_1EAEEC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3F0);
  }

  return result;
}

ChronoServices::TaskPriority_optional __swiftcall TaskPriority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_195ECB7E8()
{
  result = qword_1ED457A58;
  if (!qword_1ED457A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A58);
  }

  return result;
}

unint64_t sub_195ECB840()
{
  result = qword_1ED457A60;
  if (!qword_1ED457A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A60);
  }

  return result;
}

unint64_t sub_195ECB8A8()
{
  result = qword_1ED457A70;
  if (!qword_1ED457A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A70);
  }

  return result;
}

unint64_t sub_195ECB900()
{
  result = qword_1ED457A78;
  if (!qword_1ED457A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A78);
  }

  return result;
}

unint64_t sub_195ECB9AC()
{
  result = qword_1ED457A80;
  if (!qword_1ED457A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A80);
  }

  return result;
}

unint64_t sub_195ECBA04()
{
  result = qword_1ED457A88;
  if (!qword_1ED457A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A88);
  }

  return result;
}

unint64_t sub_195ECBA6C()
{
  result = qword_1ED457A98;
  if (!qword_1ED457A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A98);
  }

  return result;
}

unint64_t sub_195ECBAC4()
{
  result = qword_1ED457AA0;
  if (!qword_1ED457AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457AA0);
  }

  return result;
}

uint64_t sub_195ECBB28(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_195ECBB98()
{
  sub_195ECBC04();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_195ECBC04()
{
  if (!qword_1EAEEC160)
  {
    sub_195FA01A8();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EAEEC160);
    }
  }
}

uint64_t sub_195ECBC78(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_195FA0478();
  __swift_allocate_value_buffer(v9, a2);
  v10 = __swift_project_value_buffer(v9, a2);
  return sub_195ECBD18(a3, a4, a5, v10);
}

uint64_t sub_195ECBD18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a3;
  v21[2] = a4;
  v6 = sub_195FA0358();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAC8, &unk_195FACC70);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v21 - v13;
  v15 = sub_195FA0478();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  ChronoLibraryPath.getter(v14);
  (*(v16 + 56))(v14, 0, 1, v15);
  (*(v16 + 32))(v19, v14, v15);
  v21[3] = a1;
  v21[4] = a2;
  (*(v7 + 104))(v10, *MEMORY[0x1E6968F58], v6);
  sub_195ECC284();
  sub_195FA0468();
  (*(v7 + 8))(v10, v6);
  return (*(v16 + 8))(v19, v15);
}

uint64_t ChronoLibraryPath.getter@<X0>(uint64_t a1@<X8>)
{
  v22[4] = *MEMORY[0x1E69E9840];
  v2 = sub_195FA0478();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = BSCurrentUserDirectory();
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = sub_195FA08B8();
  v11 = v10;

  v22[1] = v9;
  v22[2] = v11;
  MEMORY[0x19A8C3F70](0x7972617262694C2FLL, 0xE800000000000000);
  sub_195FA0388();

  sub_195FA03D8();
  swift_beginAccess();
  if (byte_1EAEEBBD8 == 1)
  {
    v12 = [objc_opt_self() defaultManager];
    v13 = sub_195FA0398();
    v22[0] = 0;
    v14 = [v12 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v22];

    if (v14)
    {
      v15 = *(v3 + 8);
      v16 = v22[0];
      result = v15(v6, v2);
    }

    else
    {
      v18 = v22[0];
      sub_195FA0328();

      swift_willThrow();
      v19 = *(v3 + 8);
      v19(a1, v2);
      result = (v19)(v6, v2);
    }
  }

  else
  {
    result = (*(v3 + 8))(v6, v2);
  }

  v20 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_195ECC284()
{
  result = qword_1ED457A00;
  if (!qword_1ED457A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A00);
  }

  return result;
}

uint64_t URL.setExtendedAttribute<A>(named:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v9 + 16))(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10, v11);
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v19[0];
    v14 = v19[1];
  }

  else
  {
    v15 = sub_195FA02E8();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    sub_195FA02D8();
    sub_195FA02B8();
    v13 = sub_195FA02C8();
    v14 = v18;

    if (v4)
    {
      return result;
    }
  }

  MEMORY[0x1EEE9AC00](result);
  v19[-4] = v13;
  v19[-3] = v14;
  v19[-2] = a1;
  v19[-1] = a2;
  sub_195FA0418();
  return sub_195EC0890(v13, v14);
}

uint64_t PrimitiveBox.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v12 = a2[2];
  v4 = a2[4];
  type metadata accessor for PrimitiveBox.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_195FA1268();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195FA1468();
  sub_195FA1238();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_195ECC6CC(const char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  value[2] = *MEMORY[0x1E69E9840];
  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      value[0] = a2;
      LOWORD(value[1]) = a3;
      BYTE2(value[1]) = BYTE2(a3);
      BYTE3(value[1]) = BYTE3(a3);
      BYTE4(value[1]) = BYTE4(a3);
      v9 = BYTE6(a3);
      BYTE5(value[1]) = BYTE5(a3);
      v10 = (sub_195FA0918() + 32);
      v11 = value;
      v12 = a1;
LABEL_22:
      v23 = v9;
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v8 == 2)
  {
    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = sub_195FA01D8();
    if (v15)
    {
      v16 = sub_195FA0208();
      if (__OFSUB__(v13, v16))
      {
        goto LABEL_29;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (!v17)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v19 = a2;
    v18 = (a2 >> 32) - a2;
    if (a2 >> 32 >= a2)
    {
      v15 = sub_195FA01D8();
      if (!v15)
      {
LABEL_15:
        v21 = sub_195FA01F8();
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        if (v15)
        {
          v9 = v22;
        }

        else
        {
          v9 = 0;
        }

        v10 = (sub_195FA0918() + 32);
        v12 = a1;
        v11 = v15;
        goto LABEL_22;
      }

      v20 = sub_195FA0208();
      if (!__OFSUB__(v19, v20))
      {
        v15 += v19 - v20;
        goto LABEL_15;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  memset(value, 0, 14);
  v10 = (sub_195FA0918() + 32);
  v11 = value;
  v12 = a1;
  v23 = 0;
LABEL_24:
  v24 = setxattr(v12, v10, v11, v23, 0, 0);

  if ((v24 & 0x80000000) == 0)
  {
LABEL_27:
    v30 = *MEMORY[0x1E69E9840];
    return result;
  }

  type metadata accessor for URL.ExtendedAttributeError();
  sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError);
  swift_allocError();
  *v26 = a4;
  v26[1] = a5;
  v26[2] = v24;

  MEMORY[0x19A8C3C80](v27);
  result = sub_195FA0698();
  if ((result & 0x100000000) == 0)
  {
    v28 = result;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750) + 64);
    sub_195FA01A8();
    LODWORD(value[0]) = v28;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8]);
    sub_195FA0308();
    swift_storeEnumTagMultiPayload();
    result = swift_willThrow();
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t static AppIntent.asCHSControlActionMetadata(allowedAsLauncher:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(CHSMutableControlActionMetadata) init];
  static AppIntent.descriptorStringTypeIdentifier.getter(a2, a3);
  v7 = sub_195FA0888();

  [v6 setIntentType_];

  if (a1)
  {
    [v6 setIsLauncher_];
    if (swift_conformsToProtocol2())
    {
      v8 = a2 == 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = !v8;
  }

  else
  {
    [v6 setIsLauncher_];
    v9 = 0;
  }

  [v6 setIsCameraCapture_];
  [v6 copy];
  sub_195FA0E08();

  swift_unknownObjectRelease();
  sub_195EB4B30(0, &unk_1EAEEC580, off_1E7452588);
  swift_dynamicCast();
  return v11;
}

uint64_t static AppIntent.descriptorStringTypeIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = sub_195FA0178();
  MEMORY[0x19A8C3F70](v3);

  return 0x6E65746E69707061;
}

void *sub_195ECCD28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_195ECCE0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_195FA08B8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_195ECCE38()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECCEB8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECCF58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECCFA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_195ECCFF0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_195ECD034@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_195ECD07C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

void sub_195ECD0C0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_195ECD10C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_195ECD154()
{
  v1 = v0[3];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];
  swift_unknownObjectRelease();
  v4 = v0[6];
  swift_unknownObjectRelease();
  v5 = v0[7];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 73, 7);
}

uint64_t sub_195ECD1AC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();
  v4 = v0[5];
  swift_unknownObjectRelease();
  v5 = v0[6];
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_195ECD248()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECD290()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD2C8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECD31C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD354()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECD394()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD3CC()
{
  MEMORY[0x19A8C5C30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD404()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_195ECD44C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_195ECD49C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD4D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECD534()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_195ECD584()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_195ECD5D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD60C()
{
  MEMORY[0x19A8C5C30](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECD648()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECD6A0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_195ECD770(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id sub_195ECD798@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scale];
  *a2 = v4;
  return result;
}

id sub_195ECD7F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

uint64_t sub_195ECD848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_195ECD898@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14ChronoServices16StateCaptureItem_captureHandler);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_195ECD8F4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_195ECD92C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 includeRemote];
  *a2 = result;
  return result;
}

id sub_195ECD974@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 includeOnlyRemoteEligible];
  *a2 = result;
  return result;
}

uint64_t sub_195ECD9BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

id sub_195ECDA0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_195ECDA68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  a2[1] = v4;
}

uint64_t sub_195ECDAFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECDB40()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_195ECDB98()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECDBD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_195ECDC18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECDC58()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECDC90()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_195ECDCF8()
{
  v1 = *(v0 + 16);

  sub_195EC0890(*(v0 + 32), *(v0 + 40));
  sub_195EC0890(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_195ECDD48()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_195ECDDA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F74894();
  *a2 = result;
  return result;
}

uint64_t sub_195ECDDDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F74914();
  *a2 = result;
  return result;
}

uint64_t sub_195ECDE48()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECDEC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE500, &qword_195FB0200);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_195ECDF54()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  v7 = *(v0 + 56);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_195ECE048()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE508, &qword_195FB0208);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_195ECE140()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE510, &qword_195FB0210);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_195ECE290@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F872D8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE2E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F873C8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE340@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F874B8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE398@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F875A8();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE3F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F87720();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F87894();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE4EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F87B10();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE544@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F87C84();
  *a2 = result;
  return result;
}

uint64_t sub_195ECE598@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F87D74();
  *a2 = result;
  return result;
}

uint64_t sub_195ECE640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F87F64();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE698@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88054();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE6F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88144();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88234();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE7A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88324();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE7F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88414();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88504();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE8A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F885F4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F886E4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE9A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F888DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECE9FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F889CC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEA54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88ABC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88BAC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEB04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88C9C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEB5C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88D8C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEBB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88E7C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEC0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F88F6C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECECB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89164();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECED08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89254();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECED60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89344();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEDB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89434();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEE10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89524();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_195ECEE68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89600();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_195ECEF68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89880();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECEFC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89970();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89A60();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89B50();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF0C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89C40();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF120@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89DB4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89EA4();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF1D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F89F94();
  *a2 = result & 1;
  return result;
}

uint64_t sub_195ECF228@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F8A084();
  *a2 = result;
  return result;
}

uint64_t sub_195ECF26C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_195F8A21C();
  *a2 = result;
  return result;
}

uint64_t sub_195ECF2B0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_195ECF2C4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_195ECF318()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_195ECF360()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_195ECF3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_195ECF470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_195FA0478();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_195ECF52C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_195FA0478();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_195ECF5F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_195FA0478();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_195ECF6C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECF6F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_195ECF740(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_195ECF784@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_195ECF7CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_195ECF810@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  *a2 = v4;
  a2[1] = v5;
  return sub_195F40008(v4, v5);
}

uint64_t sub_195ECF87C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_195ECF8B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

ChronoServices::Token sub_195ECF8F4@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result.storage._rawValue = Token.init(rawValue:)(*a1).storage._rawValue;
  *a2 = v4;
  return result;
}

uint64_t sub_195ECF95C@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

void *sub_195ECF98C@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_195ECF998(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_195ED1EF8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_195ED1FF4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_195ED23B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = CHSWidgetDescriptorProvider;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_195ED24FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_195ED3274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  objc_destroyWeak((v18 + 56));

  objc_destroyWeak((v19 - 56));
  _Unwind_Resume(a1);
}

void sub_195ED36D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195ED6494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195ED6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195ED8318(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_195ED9484(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_195EDA1C8(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_195EDC674(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id __plistableTypes()
{
  if (__plistableTypes_onceToken != -1)
  {
    __plistableTypes_cold_1();
  }

  v1 = __plistableTypes___plistableTypes;

  return v1;
}

void ____plistableTypes_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = __plistableTypes___plistableTypes;
  __plistableTypes___plistableTypes = v6;
}

void sub_195EDD518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_195EDD9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10)
{
  a10.super_class = CHSWidgetExtensionProvider;
  [(_Unwind_Exception *)&a10 dealloc];
  _Unwind_Resume(a1);
}

void sub_195EDE5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_195EDE8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

Class __getUMUserManagerClass_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __UserManagementLibraryCore_block_invoke;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E74534E8;
    v10 = 0;
    UserManagementLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!UserManagementLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UserManagementLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"CHSWidgetExtensionProvider.m" lineNumber:21 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("UMUserManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getUMUserManagerClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"CHSWidgetExtensionProvider.m" lineNumber:22 description:{@"Unable to find class %s", "UMUserManager"}];

LABEL_10:
    __break(1u);
  }

  getUMUserManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __UserManagementLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  UserManagementLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OUTLINED_FUNCTION_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  return result;
}

void sub_195EDF308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHSWidgetEventServicePublisher;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_195EDF878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_195EDFA98(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_195EDFCA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v6 - 72));

  _Unwind_Resume(a1);
}

void sub_195EDFF2C(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

void sub_195EE0060(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

void sub_195EE0108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void CHSFlushPowerlog()
{
  v0 = +[CHSChronoServicesConnection sharedInstance];
  [v0 flushPowerlog];
}

id CHSWidgetEnvironmentDataForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = +[CHSChronoServicesConnection sharedInstance];
  v3 = [v2 widgetEnvironmentDataForBundleIdentifier:v1];

  return v3;
}

void sub_195EE4668(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHSWidgetProximity(uint64_t a1)
{
  if (a1)
  {
    return @"far";
  }

  else
  {
    return @"near";
  }
}

uint64_t __NSStringFromCHSWidgetProximities_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = @"<near>";
  }

  else
  {
    if (a2 != 2)
    {
      return result;
    }

    v2 = @"<far>";
  }

  return [*(result + 32) appendString:v2];
}

void sub_195EEB14C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHSControlType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7453900[a1 - 1];
  }
}

__CFString *NSStringFromCHSControlContentType(uint64_t a1)
{
  if (a1 == 1)
  {
    return @"Preview";
  }

  else
  {
    return @"Live";
  }
}

__CFString *NSStringFromCHSControlVisibility(uint64_t a1)
{
  v1 = @"NotVisible";
  if (a1 == 2)
  {
    v1 = @"VisibleSettled";
  }

  if (a1 == 1)
  {
    return @"VisibleNotSettled";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromCHSColorScheme(uint64_t a1)
{
  v1 = @"default";
  if (a1 == 1)
  {
    v1 = @"light";
  }

  if (a1 == 2)
  {
    return @"dark";
  }

  else
  {
    return v1;
  }
}

uint64_t __NSStringFromCHSColorSchemes_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2 == 2)
  {
    v3 = @"dark";
    if (!*(*(*(result + 40) + 8) + 24))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a2 == 1)
  {
    v3 = @"light";
    if (!*(*(*(result + 40) + 8) + 24))
    {
LABEL_5:
      result = [*(v2 + 32) appendString:v3];
      goto LABEL_6;
    }

LABEL_4:
    [*(result + 32) appendString:{@", "}];
    goto LABEL_5;
  }

LABEL_6:
  ++*(*(*(v2 + 40) + 8) + 24);
  return result;
}

__CFString *NSStringFromCHSControlSize(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"1x1";
  }

  else
  {
    return off_1E7453940[a1 - 1];
  }
}

__CFString *NSStringFromCHSWidgetHostActivationState(uint64_t a1)
{
  if (a1)
  {
    return @"activated";
  }

  else
  {
    return @"deactivated";
  }
}

void sub_195EEDCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = CHSWidgetHost;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_195EEEF98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = CHSChronoServicesConnection;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_195EEF180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195EF1D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31)
{
  objc_destroyWeak((v37 + 48));

  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v38 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_195EF3528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t __ProactiveSuggestionClientModelLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  ProactiveSuggestionClientModelLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_195EF7090(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_195EF7A2C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_195EFADB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_195EFB11C(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C4F00](v3, 0x1020C403A5D3213);

  _Unwind_Resume(a1);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
  }

  v4 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, 0);
  if ((*(this + 34) + 2) <= 4u)
  {
    v5 = 4;
  }

  else
  {
    v5 = (*(this + 34) + 2);
  }

  *(this + 34) = v5;
  v6 = (*(this + 6) - apple::aiml::flatbuffers2::vector_downward::ensure_space(this, v5));
  *(this + 6) = v6;
  bzero(v6, v5);
  v7 = v4 - a2;
  if ((v4 - a2) >= 0x10000)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
  }

  v8 = *(this + 6);
  if (!v8)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
  }

  v8[1] = v7;
  *v8 = *(this + 34);
  v9 = *(this + 7);
  if (!v9)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
  }

  v10 = *(this + 16);
  v11 = v9 - 8 * v10;
  if (v10)
  {
    v12 = (v9 - 8 * v10);
    do
    {
      v13 = *(v12 + 2);
      if (*(v8 + v13))
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
      }

      v14 = *v12;
      v12 += 2;
      *(v8 + v13) = v4 - v14;
    }

    while (v12 < v9);
  }

  *(this + 7) = v11;
  *(this + 16) = 0;
  *(this + 34) = 0;
  v16 = *(this + 4);
  v15 = *(this + 5);
  v17 = v16 - v8 + v15;
  if (*(this + 81))
  {
    if (!v15)
    {
      apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
    }

    if (v15 < v11)
    {
      v18 = *v8;
      v19 = v15 + v16;
      v20 = *(this + 5);
      while (1)
      {
        v21 = *v20;
        if (v18 == *(v19 - v21) && !memcmp((v19 - v21), v8, v18))
        {
          break;
        }

        if (++v20 >= v11)
        {
          v17 = v16 - v8 + v15;
          goto LABEL_21;
        }
      }

      v8 = (v8 + (v16 - v8 + v15 - v4));
      *(this + 6) = v8;
      v17 = v21;
    }
  }

LABEL_21:
  if (v17 == v16 + v15 - v8)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL);
    v22 = *(this + 7);
    *v22 = v17;
    *(this + 7) = v22 + 1;
    v16 = *(this + 4);
    v15 = *(this + 5);
  }

  *(v15 + v16 - v4) = v17 - v4;
  *(this + 70) = 0;
  return v4;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::Offset<void>>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, unint64_t a2, uint64_t a3)
{
  std::vector<apple::aiml::flatbuffers2::Offset<void>>::vector[abi:ne200100](&__p, a2);
  if (a2)
  {
    v6 = 0;
    do
    {
      v7 = std::function<apple::aiml::flatbuffers2::Offset<void> ()(unsigned long)>::operator()(a3, v6);
      v8 = __p;
      *(__p + v6++) = v7;
    }

    while (a2 != v6);
  }

  else
  {
    v8 = __p;
  }

  if (v13 == v8)
  {
    v9 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<void>,std::allocator<apple::aiml::flatbuffers2::Offset<void>>>(std::vector<apple::aiml::flatbuffers2::Offset<void>> const&)::t;
  }

  else
  {
    v9 = v8;
  }

  v10 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<void>(a1, v9, (v13 - v8) >> 2);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

void sub_195EFBCEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double apple::aiml::flatbuffers2::FlatBufferBuilder::Release@<D0>(apple::aiml::flatbuffers2::FlatBufferBuilder *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 71) & 1) == 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Release();
  }

  return apple::aiml::flatbuffers2::vector_downward::release(this, a2);
}

void apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(apple::aiml::flatbuffers2::DetachedBuffer *this)
{
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = *this;
    if (*this)
    {
      v5 = *(this + 3);
      (*(*v4 + 24))(v4);
    }

    else
    {
      MEMORY[0x19A8C4EE0](v2, 0x1000C8077774924);
    }
  }

  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
  *v3 = 0u;
  v3[1] = 0u;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::GetBufferPointer(apple::aiml::flatbuffers2::FlatBufferBuilder *this)
{
  if ((*(this + 71) & 1) == 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::Release();
  }

  result = *(this + 6);
  if (!result)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable();
  }

  return result;
}

__CFString *makeNSString(NSString *a1, AFBBufRef *a2, const char *a3)
{
  v5 = a1;
  v6 = a2;
  [(AFBBufRef *)v6 retainBuf];
  v7 = CFStringCreateWithCStringNoCopy(0, a3, 0x8000100u, [(AFBBufRef *)v6 deallocator]);
  if (!v7)
  {
    [(AFBBufRef *)v6 releaseBuf];
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ unable to decode null-terminated string as UTF-8", v5];
    v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E698C1C8] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  return v7;
}

void sub_195EFD974(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C4F00](v3, 0x1020C403A5D3213);

  _Unwind_Resume(a1);
}

void sub_195F002B8(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C4F00](v3, 0x1020C403A5D3213);

  _Unwind_Resume(a1);
}

void sub_195F00870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = [v15 initWithDomain:*MEMORY[0x1E698C1C0] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x195F00840);
  }

  _Unwind_Resume(exception_object);
}

void sub_195F00A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = [v15 initWithDomain:*MEMORY[0x1E698C1C0] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x195F009FCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_195F00BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = [v15 initWithDomain:*MEMORY[0x1E698C1C0] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x195F00BBCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_195F02708(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C4F00](v3, 0x1020C403A5D3213);

  _Unwind_Resume(a1);
}

void sub_195F04D28(_Unwind_Exception *a1)
{
  MEMORY[0x19A8C4F00](v3, 0x1020C403A5D3213);

  _Unwind_Resume(a1);
}

void sub_195F04E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v12 = __cxa_begin_catch(exception_object);
    a10 = *MEMORY[0x1E696A578];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:(*(*v12 + 16))(v12)];
    a11 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&a11 forKeys:&a10 count:1];

    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    v16 = [v15 initWithDomain:*MEMORY[0x1E698C1C0] code:3 userInfo:v14];
    [*(v11 + 8) setError:v16];

    __cxa_end_catch();
    JUMPOUT(0x195F04E20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(uint64_t this)
{
  if (*(this + 70) == 1)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested();
  }

  if (*(this + 64))
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested();
  }

  return this;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(uint64_t a1, int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 4uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 4uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Align(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unint64_t a2)
{
  if (*(this + 9) < a2)
  {
    *(this + 9) = a2;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a2 - 1) & -(*(this + 8) - *(this + 12) + *(this + 10)));
}

unint64_t apple::aiml::flatbuffers2::vector_downward::fill(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  result = apple::aiml::flatbuffers2::vector_downward::ensure_space(this, a2);
  *(this + 6) -= result;
  if (a2)
  {
    v5 = 0;
    do
    {
      *(*(this + 6) + v5++) = 0;
    }

    while (a2 != v5);
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::vector_downward::ensure_space(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 < v3 || (v5 = *(this + 5), v3 < v5))
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space();
  }

  if (v2 - v3 < a2)
  {
    apple::aiml::flatbuffers2::vector_downward::reallocate(this, a2);
    v5 = *(this + 5);
    v2 = *(this + 6);
  }

  if ((*(this + 8) - v2 + v5) >= 0x7FFFFFFF)
  {
    apple::aiml::flatbuffers2::vector_downward::ensure_space();
  }

  return a2;
}

char *apple::aiml::flatbuffers2::vector_downward::reallocate(apple::aiml::flatbuffers2::vector_downward *this, unint64_t a2)
{
  v5 = *(this + 4);
  v4 = *(this + 5);
  v6 = &v4[v5 - *(this + 6)];
  v7 = *(this + 7) - v4;
  if (v5)
  {
    v8 = v5 >> 1;
  }

  else
  {
    v8 = *(this + 2);
  }

  if (v8 > a2)
  {
    a2 = v8;
  }

  v9 = (*(this + 3) + v5 + a2 - 1) & -*(this + 3);
  *(this + 4) = v9;
  v10 = *this;
  if (v4)
  {
    if (v10)
    {
      result = (*(*v10 + 32))(v10);
    }

    else
    {
      v13 = &unk_1F0A50D30;
      result = apple::aiml::flatbuffers2::Allocator::reallocate_downward(&v13, v4, v5, v9, v6, v7);
    }
  }

  else
  {
    if (!v10)
    {
      v13 = &unk_1F0A50D30;
      operator new[]();
    }

    result = (*(*v10 + 16))(v10, v9);
  }

  v12 = &result[*(this + 4) - v6];
  *(this + 5) = result;
  *(this + 6) = v12;
  *(this + 7) = &result[v7];
  return result;
}

char *apple::aiml::flatbuffers2::Allocator::reallocate_downward(apple::aiml::flatbuffers2::Allocator *this, unsigned __int8 *a2, unint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  if (a4 <= a3)
  {
    apple::aiml::flatbuffers2::Allocator::reallocate_downward();
  }

  v12 = (*(*this + 16))(this, a4);
  memcpy(&v12[a4 - a5], &a2[a3 - a5], a5);
  memcpy(v12, a2, a6);
  (*(*this + 24))(this, a2, a3);
  return v12;
}

void apple::aiml::flatbuffers2::DefaultAllocator::deallocate(apple::aiml::flatbuffers2::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x19A8C4EE0);
  }
}

apple::aiml::flatbuffers2::FlatBufferBuilder *apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(apple::aiml::flatbuffers2::FlatBufferBuilder *result, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = result;
    v5 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(result, a3);

    return apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(v4, a2, v5, 0);
  }

  return result;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(this, 4uLL);
  if (!a2 || (v4 = *(this + 8) - *(this + 12) + *(this + 10), v5 = v4 >= a2, v6 = v4 - a2, !v5))
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo();
  }

  return v6 + 4;
}

double apple::aiml::flatbuffers2::vector_downward::release@<D0>(apple::aiml::flatbuffers2::vector_downward *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 4);
  v3 = *(this + 8);
  v4 = *(this + 5);
  v5 = *(this + 6);
  *a2 = *this;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v2;
  *(a2 + 32) = v5;
  *(a2 + 40) = (v2 + v4 - v5);
  if (v3 == 1)
  {
    *this = 0;
    *(this + 8) = 0;
  }

  result = 0.0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  return result;
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(unint64_t result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned char>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<unsigned char>(uint64_t a1, char a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 1uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<double>(unint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(uint64_t a1, double a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 8uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<long long>(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || *(result + 80) == 1)
  {
    v6 = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(result, a3);
    result = apple::aiml::flatbuffers2::vector_downward::ensure_space(v5, 8uLL);
    **(v5 + 56) = v6 | (a2 << 32);
    *(v5 + 56) += 8;
    ++*(v5 + 64);
    v7 = *(v5 + 68);
    if (v7 <= a2)
    {
      LOWORD(v7) = a2;
    }

    *(v5 + 68) = v7;
  }

  return result;
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(uint64_t a1, uint64_t a2)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = (*(a1 + 48) - apple::aiml::flatbuffers2::vector_downward::ensure_space(a1, 8uLL));
  *(a1 + 48) = v4;
  *v4 = a2;
  return (*(a1 + 32) - v4 + *(a1 + 40));
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<RelevanceCacheBuf>(apple::aiml::flatbuffers2::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = apple::aiml::flatbuffers2::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return RelevanceCacheBuf::Verify(v6, this);
}

uint64_t apple::aiml::flatbuffers2::Verifier::VerifyOffset(apple::aiml::flatbuffers2::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL RelevanceCacheBuf::Verify(RelevanceCacheBuf *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 < 5u || (v6 = *v5[4].var0) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v6 + *this[v6].var0].var0, 1uLL, 0)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = *this->var0;
          v8 = -v7;
          v9 = &this[-v7];
          if (*v9->var0 >= 7u)
          {
            v10 = *v9[6].var0;
            if (v10)
            {
              result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v10 + *this[v10].var0].var0, 4uLL, 0);
              if (!result)
              {
                return result;
              }

              v8 = -*this->var0;
            }
          }

          v11 = &this[v8];
          if (*v11->var0 >= 7u && (v12 = *v11[6].var0) != 0)
          {
            v13 = &this[v12 + *this[v12].var0];
          }

          else
          {
            v13 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<WidgetRelevancePropertiesBuf>(a2, v13);
          if (result)
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<WidgetRelevancePropertiesBuf>(apple::aiml::flatbuffers2::Verifier *a1, WidgetRelevancePropertiesBuf *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2->var0)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 4;
  do
  {
    result = WidgetRelevancePropertiesBuf::Verify(&v5[*v5->var0], a1);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2->var0);
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyTableStart(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(apple::aiml::flatbuffers2::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL WidgetRelevancePropertiesBuf::Verify(WidgetRelevancePropertiesBuf *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 < 5u || (v6 = *v5[4].var0) == 0 || (result = ExtensionIdentityBuf::Verify(&this[v6 + *this[v6].var0], a2)))
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v7 = &this[-*this->var0];
          if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
          {
            v9 = &this[v8 + *this[v8].var0];
          }

          else
          {
            v9 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v9->var0);
          if (result)
          {
            v10 = &this[-*this->var0];
            v11 = *v10->var0;
            if (v11 < 9 || (!*v10[8].var0 || (result = 0, v12 = *(a2 + 1), v12 >= 2) && v12 - 1 >= this[*v10[8].var0 - *a2].var0) && (v11 < 0xB || (!*v10[10].var0 || (result = 0, v13 = *(a2 + 1), v13 >= 2) && v13 - 1 >= this[*v10[10].var0 - *a2].var0) && (v11 < 0xD || (v14 = *v10[12].var0) == 0 || (result = 0, v15 = *(a2 + 1), v15 >= 9) && v15 - 8 >= this[v14 - *a2].var0)))
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xEu);
              if (result)
              {
                v16 = *this->var0;
                v17 = -v16;
                v18 = &this[-v16];
                if (*v18->var0 >= 0xFu)
                {
                  v19 = *v18[14].var0;
                  if (v19)
                  {
                    result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v19 + *this[v19].var0].var0, 4uLL, 0);
                    if (!result)
                    {
                      return result;
                    }

                    v17 = -*this->var0;
                  }
                }

                v20 = &this[v17];
                if (*v20->var0 >= 0xFu && (v21 = *v20[14].var0) != 0)
                {
                  v22 = &this[v21 + *this[v21].var0];
                }

                else
                {
                  v22 = 0;
                }

                result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<WidgetRelevanceBuf>(a2, v22);
                if (result)
                {
                  --*(a2 + 4);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyString(apple::aiml::flatbuffers2::Verifier *a1, const unsigned __int8 *a2)
{
  if (!a2)
  {
    return 1;
  }

  v6 = 0;
  result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a1, a2, 1uLL, &v6);
  if (result)
  {
    v4 = *(a1 + 1);
    return v4 >= 2 && v4 - 1 >= v6 && *(*a1 + v6) == 0;
  }

  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<WidgetRelevanceBuf>(apple::aiml::flatbuffers2::Verifier *a1, WidgetRelevanceBuf *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2->var0)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 4;
  do
  {
    result = WidgetRelevanceBuf::Verify(&v5[*v5->var0], a1);
    if (!result)
    {
      break;
    }

    ++v4;
    v5 += 4;
  }

  while (v4 < *a2->var0);
  return result;
}

BOOL ExtensionIdentityBuf::Verify(ExtensionIdentityBuf *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
      {
        v7 = &this[v6 + *this[v6].var0];
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = &this[-*this->var0];
          if (*v8->var0 >= 7u && (v9 = *v8[6].var0) != 0)
          {
            v10 = &this[v9 + *this[v9].var0];
          }

          else
          {
            v10 = 0;
          }

          result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v10->var0);
          if (result)
          {
            result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
            if (result)
            {
              v11 = &this[-*this->var0];
              if (*v11->var0 >= 9u && (v12 = *v11[8].var0) != 0)
              {
                v13 = &this[v12 + *this[v12].var0];
              }

              else
              {
                v13 = 0;
              }

              result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v13->var0);
              if (result)
              {
                result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
                if (result)
                {
                  v14 = &this[-*this->var0];
                  if (*v14->var0 >= 0xBu && (v15 = *v14[10].var0) != 0)
                  {
                    v16 = &this[v15 + *this[v15].var0];
                  }

                  else
                  {
                    v16 = 0;
                  }

                  result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v16->var0);
                  if (result)
                  {
                    --*(a2 + 4);
                    return 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL WidgetRelevanceBuf::Verify(WidgetRelevanceBuf *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 4u);
    if (result)
    {
      v5 = &this[-*this->var0];
      if (*v5->var0 >= 5u && (v6 = *v5[4].var0) != 0)
      {
        v7 = &this[v6 + *this[v6].var0];
      }

      else
      {
        v7 = 0;
      }

      result = apple::aiml::flatbuffers2::Verifier::VerifyString(a2, v7->var0);
      if (result)
      {
        result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
        if (result)
        {
          v8 = &this[-*this->var0];
          if (*v8->var0 < 7u || (v9 = *v8[6].var0) == 0 || (result = IntentReferenceBuf::Verify(&this[v9 + *this[v9].var0], a2)))
          {
            --*(a2 + 4);
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL IntentReferenceBuf::Verify(IntentReferenceBuf *this, apple::aiml::flatbuffers2::Verifier *a2)
{
  result = apple::aiml::flatbuffers2::Verifier::VerifyTableStart(a2, this->var0);
  if (result)
  {
    v5 = &this[-*this->var0];
    if (*v5->var0 < 5u || (v6 = *v5[4].var0) == 0 || (result = 0, v7 = *(a2 + 1), v7 >= 9) && v7 - 8 >= this[v6 - *a2].var0)
    {
      result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 6u);
      if (result)
      {
        v8 = &this[-*this->var0];
        if (*v8->var0 < 7u || (v9 = *v8[6].var0) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v9 + *this[v9].var0].var0, 1uLL, 0)))
        {
          result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 8u);
          if (result)
          {
            v10 = &this[-*this->var0];
            if (*v10->var0 < 9u || (v11 = *v10[8].var0) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v11 + *this[v11].var0].var0, 1uLL, 0)))
            {
              result = apple::aiml::flatbuffers2::Table::VerifyOffset(this, a2, 0xAu);
              if (result)
              {
                v12 = &this[-*this->var0];
                if (*v12->var0 < 0xBu || (v13 = *v12[10].var0) == 0 || (result = apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(a2, this[v13 + *this[v13].var0].var0, 1uLL, 0)))
                {
                  --*(a2 + 4);
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::function<apple::aiml::flatbuffers2::Offset<void> ()(unsigned long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *std::vector<apple::aiml::flatbuffers2::Offset<void>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<apple::aiml::flatbuffers2::Offset<void>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_195F0765C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<apple::aiml::flatbuffers2::Offset<void>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<void>>>(a1, a2);
  }

  std::vector<apple::aiml::flatbuffers2::Offset<void>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<void>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E7452F98, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<void>(apple::aiml::flatbuffers2::FlatBufferBuilder *a1, uint64_t a2, uint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(a1, a3, 4uLL);
  if (a3)
  {
    v6 = a2 - 4;
    v7 = a3;
    do
    {
      v8 = v7 - 1;
      v9 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a1, *(v6 + 4 * v7));
      apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(a1, v9);
      v7 = v8;
    }

    while (v8);
  }

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(a1, a3);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 70) = 1;
  v6 = a3 * a2;
  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, 4uLL);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v6, a3);
}

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(apple::aiml::flatbuffers2::FlatBufferBuilder *this, int a2)
{
  if ((*(this + 70) & 1) == 0)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector();
  }

  *(this + 70) = 0;

  return apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, a2);
}

unint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(apple::aiml::flatbuffers2::FlatBufferBuilder *this, uint64_t a2, unint64_t a3)
{
  if (*(this + 9) < a3)
  {
    *(this + 9) = a3;
  }

  return apple::aiml::flatbuffers2::vector_downward::fill(this, (a3 - 1) & (-a2 - (*(this + 8) - *(this + 12) + *(this + 10))));
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<apple::aiml::flatbuffers2::Offset<void> ()(unsigned long)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(apple::aiml::flatbuffers2::FlatBufferBuilder *this, unsigned int a2, const char *a3, int a4)
{
  v8 = a3 != 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(this);
  *(this + 7) = *(this + 5);
  v9 = 4;
  if (a4)
  {
    v9 = 8;
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::PreAlign(this, v9 + 4 * v8, *(this + 9));
  if (a3)
  {
    if (strlen(a3) != 4)
    {
      apple::aiml::flatbuffers2::FlatBufferBuilder::Finish();
    }

    v10 = (*(this + 6) - apple::aiml::flatbuffers2::vector_downward::ensure_space(this, 4uLL));
    *(this + 6) = v10;
    *v10 = *a3;
  }

  v11 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(this, a2);
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, v11);
  if (a4)
  {
    result = apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(this, *(this + 8) - *(this + 12) + *(this + 10));
  }

  *(this + 71) = 1;
  return result;
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<ExtensionIdentityBuf>(apple::aiml::flatbuffers2::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = apple::aiml::flatbuffers2::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return ExtensionIdentityBuf::Verify(v6, this);
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<WidgetRelevancePropertiesBuf>(apple::aiml::flatbuffers2::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = apple::aiml::flatbuffers2::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return WidgetRelevancePropertiesBuf::Verify(v6, this);
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<WidgetRelevanceBuf>(apple::aiml::flatbuffers2::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = apple::aiml::flatbuffers2::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return WidgetRelevanceBuf::Verify(v6, this);
}

BOOL apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<IntentReferenceBuf>(apple::aiml::flatbuffers2::Verifier *this, const char *a2, unint64_t a3)
{
  if (a2 && (*(this + 1) < 8uLL || strncmp((*this + a3 + 4), a2, 4uLL)))
  {
    return 0;
  }

  v5 = apple::aiml::flatbuffers2::Verifier::VerifyOffset(this, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = (*this + a3 + v5);

  return IntentReferenceBuf::Verify(v6, this);
}

uint64_t OUTLINED_FUNCTION_1_1(apple::aiml::flatbuffers2::FlatBufferBuilder *a1)
{
  v3 = *(*(v1 + 16) + 8);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a1, v3);
}

void sub_195F09A08(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_195F09BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v8 - 56));

  _Unwind_Resume(a1);
}

void sub_195F09F1C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 - 40));

  _Unwind_Resume(a1);
}

void sub_195F0A0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_195F0A350(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_195F0A3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

void sub_195F0A85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_195F0C03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getFBDisplayManagerClass_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v8[1] = MEMORY[0x1E69E9820];
    v8[2] = 3221225472;
    v8[3] = __FrontBoardLibraryCore_block_invoke;
    v8[4] = &__block_descriptor_40_e5_v8__0l;
    v8[5] = v8;
    v9 = xmmword_1E7454230;
    v10 = 0;
    FrontBoardLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FrontBoardLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"CHSConfiguredWidgetDescriptor.m" lineNumber:23 description:{@"%s", v8[0]}];

    goto LABEL_10;
  }

  if (v8[0])
  {
    free(v8[0]);
  }

  result = objc_getClass("FBDisplayManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getFBDisplayManagerClass(void)_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"CHSConfiguredWidgetDescriptor.m" lineNumber:24 description:{@"Unable to find class %s", "FBDisplayManager"}];

LABEL_10:
    __break(1u);
  }

  getFBDisplayManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __FrontBoardLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  FrontBoardLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195F0E3AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_195F0E4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195F0E968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a20, 8);

  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_195F0EFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v22 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_195F0F40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_195F0FA50(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_195F11CC4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void __CHSLogChronoServices_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "ChronoServices");
  v1 = CHSLogChronoServices___logObj;
  CHSLogChronoServices___logObj = v0;
}

id CHSLogClientSnapshots()
{
  if (CHSLogClientSnapshots_onceToken != -1)
  {
    CHSLogClientSnapshots_cold_1();
  }

  v1 = CHSLogClientSnapshots___logObj;

  return v1;
}

void __CHSLogClientSnapshots_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "ClientSnapshots");
  v1 = CHSLogClientSnapshots___logObj;
  CHSLogClientSnapshots___logObj = v0;
}

id CHSLogWidgetHosts()
{
  if (CHSLogWidgetHosts_onceToken != -1)
  {
    CHSLogWidgetHosts_cold_1();
  }

  v1 = CHSLogWidgetHosts___logObj;

  return v1;
}

void __CHSLogWidgetHosts_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "WidgetHosts");
  v1 = CHSLogWidgetHosts___logObj;
  CHSLogWidgetHosts___logObj = v0;
}

void __CHSLogSubscriptions_block_invoke()
{
  v0 = os_log_create("com.apple.chrono", "Subscriptions");
  v1 = CHSLogSubscriptions___logObj;
  CHSLogSubscriptions___logObj = v0;
}

void sub_195F1233C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_195F123DC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_195F13514(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHSWidgetClipBehavior(uint64_t a1)
{
  v1 = @"client";
  if (a1 == 1)
  {
    v1 = @"server";
  }

  if (a1 == 2)
  {
    return @"none";
  }

  else
  {
    return v1;
  }
}

void sub_195F147D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

id NSStringFromCHSWidgetRenderingModes(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __NSStringFromCHSWidgetRenderingModes_block_invoke;
  v11 = &unk_1E7453920;
  v13 = v14;
  v3 = v2;
  v12 = v3;
  v4 = v9;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  [v3 appendString:@"]"];
  _Block_object_dispose(v14, 8);

  return v3;
}

void sub_195F16A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NSStringFromCHSWidgetRenderingModes_block_invoke(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*(*(*(result + 40) + 8) + 24))
  {
    result = [*(result + 32) appendString:{@", "}];
  }

  switch(a2)
  {
    case 1:
      v4 = @"fullColor";
      goto LABEL_9;
    case 4:
      v4 = @"accented";
      goto LABEL_9;
    case 2:
      v4 = @"vibrant";
LABEL_9:
      result = [*(v3 + 32) appendString:v4];
      break;
  }

  ++*(*(*(v3 + 40) + 8) + 24);
  return result;
}

id getDeviceIDFromBundleID(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByRemovingPercentEncoding];

  if ([v2 containsString:@"::"])
  {
    v3 = [v2 componentsSeparatedByString:@"::"];
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CHSWidgetFamilyFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"systemSmall"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"systemMedium"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"systemLarge"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"transparentMedium"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"control1x1"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"platterMedium"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"systemExtraLargePortrait"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"systemExtraLargeLandscape"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"accessoryCorner"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"accessoryCornerSmall"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"accessoryCircularExtraLarge"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"accessoryCircular"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"accessoryRectangular"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"accessoryInline"])
  {
    v2 = 12;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL CHSWidgetFontStyleFromTextSizeAdjustment(_BOOL8 result)
{
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

uint64_t CHSWidgetTextSizeAdjustmentFromFontStyle(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

__CFString *CHSWidgetTextSizeAdjustmentDescription(uint64_t a1)
{
  v1 = @"none";
  if (a1 == 1)
  {
    v1 = @"increment";
  }

  if (a1 == 2)
  {
    return @"decrement";
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromCHSWidgetContentType(uint64_t a1)
{
  v1 = @"Timeline";
  if (a1 == 1)
  {
    v1 = @"Preview";
  }

  if (a1 == 2)
  {
    return @"Placeholder";
  }

  else
  {
    return v1;
  }
}

uint64_t CHSEdgeInsetsEqualToEdgeInsets()
{
  if (!BSFloatEqualToFloat() || !BSFloatEqualToFloat() || !BSFloatEqualToFloat())
  {
    return 0;
  }

  return BSFloatEqualToFloat();
}

__CFString *NSStringFromCHSDynamicTextSupport(uint64_t a1)
{
  v1 = @"Unspecified";
  if (a1 == 2)
  {
    v1 = @"No";
  }

  if (a1 == 1)
  {
    return @"Yes";
  }

  else
  {
    return v1;
  }
}

void sub_195F195D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18)
{
  v21 = v20;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHSDataProtectionLevel(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"ClassA";
  }

  else
  {
    return off_1E74545D8[a1 - 1];
  }
}

void sub_195F1A600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t __IntlPreferencesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  IntlPreferencesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195F1BED4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_195F1C1C0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_195F1C3C8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_195F1C5D8(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_195F1CBF8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_195F1CEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_195F1D234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195F1D5A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_195F1D87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_195F1DA7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_195F1E7DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

__CFString *NSStringFromCHSDisplayGamut(uint64_t a1)
{
  if (a1)
  {
    return @"sRGB";
  }

  else
  {
    return @"P3";
  }
}

id CHSWidgetRelevanceServiceCacheDirectory()
{
  v8 = *MEMORY[0x1E69E9840];
  started = sysdir_start_search_path_enumeration_private();
  MEMORY[0x19A8C5CD0](started, v7);
  v1 = [MEMORY[0x1E696AEC0] stringWithCString:v7 encoding:4];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.chrono"];

  v4 = [v3 URLByAppendingPathComponent:@"widget-relevance-cache"];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

__CFString *NSStringFromWidgetLocation(unint64_t a1)
{
  if (a1 > 9)
  {
    return @"todayList";
  }

  else
  {
    return off_1E7454698[a1];
  }
}

void sub_195F22934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void sub_195F23060(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_195F23D8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _CHSUniqueWidgetRateLimitConfigurationName(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@_%@", a1, a2, a3];

  return v3;
}

__CFString *chs_debugDescriptionForErrorCode(uint64_t a1)
{
  if ((a1 - 1) > 7)
  {
    return &stru_1F0A56DE8;
  }

  else
  {
    return off_1E7454740[a1 - 1];
  }
}

void sub_195F24F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = CHSBezierPath;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id __encodePathIntoData(const CGPath *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF88]);
  CGPathApply(a1, v2, __encodePathElementIntoData);

  return v2;
}

unint64_t __createPathByDecodingData(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 length];
  if (v2)
  {
    Mutable = CGPathCreateMutable();
    v4 = [v1 bytes];
    v5 = 0;
    v25 = *MEMORY[0x1E695EFF8];
    do
    {
      v7 = *(v4 + v5);
      v6 = *(v4 + v5 + 4);
      v26 = v25;
      v27 = v25;
      v28 = v25;
      if (v7 > 3)
      {
        v8 = 0;
      }

      else
      {
        v8 = dword_195FAAE90[v7];
      }

      v9 = v5 + 8;
      if (v6 != v8 || v6 == 0)
      {
        v5 += 8;
      }

      else
      {
        v11 = &v26;
        v12 = v6;
        do
        {
          v5 = v9 + 8;
          *v11++ = vcvtq_f64_f32(*(v4 + v9));
          v9 += 8;
          --v12;
        }

        while (v12);
      }

      if (v7 <= 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v6 != v8)
            {
              v24 = [MEMORY[0x1E696AAA8] currentHandler];
              v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPathRef __createPathByDecodingData(NSData *__strong)"];
              [v24 handleFailureInFunction:v19 file:@"CHSBezierPath.m" lineNumber:90 description:@"incorrect number of points for path element type kCGPathElementAddLineToPoint"];
            }

            CGPathAddLineToPoint(Mutable, 0, *&v26, *(&v26 + 1));
          }
        }

        else
        {
          if (v6 != v8)
          {
            v22 = [MEMORY[0x1E696AAA8] currentHandler];
            v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPathRef __createPathByDecodingData(NSData *__strong)"];
            [v22 handleFailureInFunction:v17 file:@"CHSBezierPath.m" lineNumber:86 description:@"incorrect number of points for path element type kCGPathElementMoveToPoint"];
          }

          CGPathMoveToPoint(Mutable, 0, *&v26, *(&v26 + 1));
        }
      }

      else
      {
        switch(v7)
        {
          case 2:
            if (v6 != v8)
            {
              v20 = [MEMORY[0x1E696AAA8] currentHandler];
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPathRef __createPathByDecodingData(NSData *__strong)"];
              [v20 handleFailureInFunction:v15 file:@"CHSBezierPath.m" lineNumber:94 description:@"incorrect number of points for path element type kCGPathElementAddQuadCurveToPoint"];
            }

            CGPathAddQuadCurveToPoint(Mutable, 0, *&v26, *(&v26 + 1), *&v27, *(&v27 + 1));
            break;
          case 3:
            if (v6 != v8)
            {
              v21 = [MEMORY[0x1E696AAA8] currentHandler];
              v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPathRef __createPathByDecodingData(NSData *__strong)"];
              [v21 handleFailureInFunction:v16 file:@"CHSBezierPath.m" lineNumber:98 description:@"incorrect number of points for path element type kCGPathElementAddCurveToPoint"];
            }

            CGPathAddCurveToPoint(Mutable, 0, *&v26, *(&v26 + 1), *&v27, *(&v27 + 1), *&v28, *(&v28 + 1));
            break;
          case 4:
            if (v6 != v8)
            {
              v23 = [MEMORY[0x1E696AAA8] currentHandler];
              v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGPathRef __createPathByDecodingData(NSData *__strong)"];
              [v23 handleFailureInFunction:v18 file:@"CHSBezierPath.m" lineNumber:102 description:@"incorrect number of points for path element type kCGPathElementCloseSubpath"];
            }

            CGPathCloseSubpath(Mutable);
            break;
        }
      }
    }

    while (v5 < v2);
    v2 = MEMORY[0x19A8C4D50](Mutable);
    CGPathRelease(Mutable);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v2;
}

float ____copyPathByApplying_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = *v2;
        v6 = v2[1];
        CGPathAddLineToPoint(*(a1 + 32), 0, v5, v6);
      }
    }

    else
    {
      v17 = *v2;
      v18 = v2[1];
      CGPathMoveToPoint(*(a1 + 32), 0, v17, v18);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        v7 = *v2;
        v8 = v2[1];
        v9 = v2[2];
        v10 = v2[3];
        CGPathAddQuadCurveToPoint(*(a1 + 32), 0, v7, v8, v9, v10);
        break;
      case 3:
        v11 = *v2;
        v12 = v2[1];
        v13 = v2[2];
        v14 = v2[3];
        v15 = v2[4];
        v16 = v2[5];
        CGPathAddCurveToPoint(*(a1 + 32), 0, v11, v12, v13, v14, v15, v16);
        break;
      case 4:
        CGPathCloseSubpath(*(a1 + 32));
        break;
    }
  }

  return result;
}

void __encodePathElementIntoData(void *a1, unsigned int *a2)
{
  v3 = a1;
  v13 = *a2;
  [v3 appendBytes:&v13 length:4];
  v4 = *a2;
  if (v4 > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = dword_195FAAE90[v4];
  }

  v12 = v5;
  [v3 appendBytes:&v12 length:4];
  if (v12)
  {
    v6 = 0;
    for (i = 0; i < v12; ++i)
    {
      v8 = *(*(a2 + 1) + v6);
      v11 = v8;
      [v3 appendBytes:&v11 length:4];
      v9 = *(*(a2 + 1) + v6 + 8);
      v10 = v9;
      [v3 appendBytes:&v10 length:4];
      v6 += 16;
    }
  }
}

uint64_t CHSHostActivationState.description.getter()
{
  if (*v0)
  {
    result = 0x6574617669746361;
  }

  else
  {
    result = 0x6176697463616564;
  }

  *v0;
  return result;
}

ChronoServices::CHSHostActivationState_optional __swiftcall CHSHostActivationState.init(rawValue:)(Swift::UInt64 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_195F25A8C()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4990](v1);
  return sub_195FA13E8();
}

uint64_t sub_195F25B00()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4990](v1);
  return sub_195FA13E8();
}

void *sub_195F25B44@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_195F25B64()
{
  if (*v0)
  {
    result = 0x6574617669746361;
  }

  else
  {
    result = 0x6176697463616564;
  }

  *v0;
  return result;
}

void sub_195F25D48(void *a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR___CHSControlHost_configuration];
  if (a1)
  {
    if (v3)
    {
      v4 = a1;
      type metadata accessor for CHSControlConfiguration(0);
      v5 = v3;
      v6 = v4;
      LOBYTE(v4) = sub_195FA0D88();

      if (v4)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  if (qword_1EAEEC170 != -1)
  {
    swift_once();
  }

  v7 = sub_195FA0678();
  __swift_project_value_buffer(v7, qword_1EAEF72E8);
  v8 = v2;
  v9 = sub_195FA0658();
  v10 = sub_195FA0CC8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28[0] = v13;
    *v11 = 136446466;
    v14 = *&v8[OBJC_IVAR___CHSControlHost__loggingIdentifier];
    v15 = *&v8[OBJC_IVAR___CHSControlHost__loggingIdentifier + 8];

    v16 = sub_195EBD554(v14, v15, v28);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2114;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_195EB2000, v9, v10, "[%{public}s]: Configuration changed: %{public}@", v11, 0x16u);
    sub_195F27EBC(v12);
    MEMORY[0x19A8C5B70](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x19A8C5B70](v13, -1, -1);
    MEMORY[0x19A8C5B70](v11, -1, -1);
  }

  sub_195EC97E0(&v8[OBJC_IVAR___CHSControlHost__serverConnection], v28);
  v18 = v29;
  v19 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v21 = *&v8[OBJC_IVAR___CHSControlHost__identifier];
  v20 = *&v8[OBJC_IVAR___CHSControlHost__identifier + 8];

  v22 = [v8 configuration];
  v23 = v8[OBJC_IVAR___CHSControlHost__activationState];
  v25[0] = v21;
  v25[1] = v20;
  v26 = v22;
  v27 = v23;
  (*(v19 + 48))(v25, v18, v19);
  v24 = v26;

  __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

void __swiftcall CHSControlHost.init(identifier:)(CHSControlHost *__return_ptr retstr, Swift::String identifier)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_195FA0888();

  [v2 initWithIdentifier_];
}

id CHSControlHost.init(identifier:)()
{
  v1 = sub_195FA0888();

  v2 = [v0 initWithIdentifier:v1 configuration:0];

  return v2;
}

void __swiftcall CHSControlHost.init(identifier:configuration:)(CHSControlHost *__return_ptr retstr, Swift::String identifier, CHSControlConfiguration_optional *configuration)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_195FA0888();

  [v4 initWithIdentifier:v5 configuration:configuration];
}

char *CHSControlHost.init(identifier:configuration:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR___CHSControlHost_configuration;
  *&v3[OBJC_IVAR___CHSControlHost_configuration] = 0;
  v3[OBJC_IVAR___CHSControlHost__invalid] = 0;
  v6 = &v3[OBJC_IVAR___CHSControlHost__identifier];
  *v6 = a1;
  v6[1] = a2;
  v7 = &v3[OBJC_IVAR___CHSControlHost__loggingIdentifier];
  *v7 = a1;
  v7[1] = a2;
  v3[OBJC_IVAR___CHSControlHost__activationState] = 0;
  v8 = qword_1EAEEC2B8;

  if (v8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_195EC97E0(&qword_1EAEEC2C0, &v3[OBJC_IVAR___CHSControlHost__serverConnection]);
  v9 = *&v3[v5];
  *&v3[v5] = a3;
  v10 = a3;

  v39.receiver = v3;
  v39.super_class = CHSControlHost;
  v11 = objc_msgSendSuper2(&v39, sel_init);
  v12 = qword_1EAEEC170;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_195FA0678();
  __swift_project_value_buffer(v14, qword_1EAEF72E8);
  v15 = v13;
  v16 = sub_195FA0658();
  v17 = sub_195FA0CC8();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v36[0] = v20;
    *v18 = 136446466;
    v21 = *&v15[OBJC_IVAR___CHSControlHost__loggingIdentifier];
    v22 = *&v15[OBJC_IVAR___CHSControlHost__loggingIdentifier + 8];

    v23 = sub_195EBD554(v21, v22, v36);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2114;
    *(v18 + 14) = v15;
    *v19 = v15;
    v24 = v15;
    _os_log_impl(&dword_195EB2000, v16, v17, "[%{public}s]: Created: %{public}@", v18, 0x16u);
    sub_195F27EBC(v19);
    MEMORY[0x19A8C5B70](v19, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x19A8C5B70](v20, -1, -1);
    MEMORY[0x19A8C5B70](v18, -1, -1);
  }

  if (a3)
  {
    sub_195EC97E0(&v15[OBJC_IVAR___CHSControlHost__serverConnection], v36);
    v25 = v37;
    v26 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v28 = *&v15[OBJC_IVAR___CHSControlHost__identifier];
    v27 = *&v15[OBJC_IVAR___CHSControlHost__identifier + 8];

    v29 = [v15 configuration];
    v30 = v15[OBJC_IVAR___CHSControlHost__activationState];
    v33[0] = v28;
    v33[1] = v27;
    v34 = v29;
    v35 = v30;
    (*(v26 + 48))(v33, v25, v26);

    v31 = v34;

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }

  else
  {
  }

  return v15;
}

Swift::Void __swiftcall CHSControlHost.activate()()
{
  if ((*(v0 + OBJC_IVAR___CHSControlHost__invalid) & 1) == 0)
  {
    if (qword_1EAEEBBB8 != -1)
    {
      swift_once();
    }

    v1 = sub_195FA0678();
    __swift_project_value_buffer(v1, qword_1EAEF7268);
    v2 = v0;
    v3 = sub_195FA0658();
    v4 = sub_195FA0CC8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23[0] = v7;
      *v5 = 136446466;
      v8 = *&v2[OBJC_IVAR___CHSControlHost__loggingIdentifier];
      v9 = *&v2[OBJC_IVAR___CHSControlHost__loggingIdentifier + 8];

      v10 = sub_195EBD554(v8, v9, v23);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2114;
      *(v5 + 14) = v2;
      *v6 = v2;
      v11 = v2;
      _os_log_impl(&dword_195EB2000, v3, v4, "[%{public}s]: Activated: %{public}@", v5, 0x16u);
      sub_195F27EBC(v6);
      MEMORY[0x19A8C5B70](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x19A8C5B70](v7, -1, -1);
      MEMORY[0x19A8C5B70](v5, -1, -1);
    }

    v12 = OBJC_IVAR___CHSControlHost__activationState;
    v2[OBJC_IVAR___CHSControlHost__activationState] = 1;
    sub_195EC97E0(&v2[OBJC_IVAR___CHSControlHost__serverConnection], v23);
    v13 = v24;
    v14 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = *&v2[OBJC_IVAR___CHSControlHost__identifier];
    v15 = *&v2[OBJC_IVAR___CHSControlHost__identifier + 8];

    v17 = [v2 configuration];
    v18 = v2[v12];
    v20[0] = v16;
    v20[1] = v15;
    v21 = v17;
    v22 = v18;
    (*(v14 + 48))(v20, v13, v14);
    v19 = v21;

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }
}

Swift::Void __swiftcall CHSControlHost.deactivate()()
{
  if ((*(v0 + OBJC_IVAR___CHSControlHost__invalid) & 1) == 0)
  {
    if (qword_1EAEEBBB8 != -1)
    {
      swift_once();
    }

    v1 = sub_195FA0678();
    __swift_project_value_buffer(v1, qword_1EAEF7268);
    v2 = v0;
    v3 = sub_195FA0658();
    v4 = sub_195FA0CC8();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v23[0] = v7;
      *v5 = 136446466;
      v8 = *&v2[OBJC_IVAR___CHSControlHost__loggingIdentifier];
      v9 = *&v2[OBJC_IVAR___CHSControlHost__loggingIdentifier + 8];

      v10 = sub_195EBD554(v8, v9, v23);

      *(v5 + 4) = v10;
      *(v5 + 12) = 2114;
      *(v5 + 14) = v2;
      *v6 = v2;
      v11 = v2;
      _os_log_impl(&dword_195EB2000, v3, v4, "[%{public}s]: Deactivated: %{public}@", v5, 0x16u);
      sub_195F27EBC(v6);
      MEMORY[0x19A8C5B70](v6, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x19A8C5B70](v7, -1, -1);
      MEMORY[0x19A8C5B70](v5, -1, -1);
    }

    v12 = OBJC_IVAR___CHSControlHost__activationState;
    v2[OBJC_IVAR___CHSControlHost__activationState] = 0;
    sub_195EC97E0(&v2[OBJC_IVAR___CHSControlHost__serverConnection], v23);
    v13 = v24;
    v14 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v16 = *&v2[OBJC_IVAR___CHSControlHost__identifier];
    v15 = *&v2[OBJC_IVAR___CHSControlHost__identifier + 8];

    v17 = [v2 configuration];
    v18 = v2[v12];
    v20[0] = v16;
    v20[1] = v15;
    v21 = v17;
    v22 = v18;
    (*(v14 + 56))(v20, v13, v14);
    v19 = v21;

    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }
}

Swift::Void __swiftcall CHSControlHost.invalidate()()
{
  if ((v0[OBJC_IVAR___CHSControlHost__invalid] & 1) == 0)
  {
    v1 = v0;
    v0[OBJC_IVAR___CHSControlHost__invalid] = 1;
    v2 = OBJC_IVAR___CHSControlHost__activationState;
    v0[OBJC_IVAR___CHSControlHost__activationState] = 0;
    if (qword_1EAEEBBB8 != -1)
    {
      swift_once();
    }

    v3 = sub_195FA0678();
    __swift_project_value_buffer(v3, qword_1EAEF7268);
    v4 = v0;
    v5 = sub_195FA0658();
    v6 = sub_195FA0CC8();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24[0] = v9;
      *v7 = 136446466;
      v10 = *&v4[OBJC_IVAR___CHSControlHost__loggingIdentifier];
      v11 = *&v4[OBJC_IVAR___CHSControlHost__loggingIdentifier + 8];

      v12 = sub_195EBD554(v10, v11, v24);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2114;
      *(v7 + 14) = v4;
      *v8 = v4;
      v13 = v4;
      _os_log_impl(&dword_195EB2000, v5, v6, "[%{public}s]: Invalidated: %{public}@", v7, 0x16u);
      sub_195F27EBC(v8);
      MEMORY[0x19A8C5B70](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x19A8C5B70](v9, -1, -1);
      MEMORY[0x19A8C5B70](v7, -1, -1);
    }

    sub_195EC97E0(&v4[OBJC_IVAR___CHSControlHost__serverConnection], v24);
    v14 = v25;
    v15 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v17 = *&v4[OBJC_IVAR___CHSControlHost__identifier];
    v16 = *&v4[OBJC_IVAR___CHSControlHost__identifier + 8];

    v18 = [v4 configuration];
    v19 = v1[v2];
    v21[0] = v17;
    v21[1] = v16;
    v22 = v18;
    v23 = v19;
    (*(v15 + 64))(v21, v14, v15);
    v20 = v22;

    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }
}

id CHSControlHost.description.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (!v1)
  {
    return 0xD000000000000018;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_195F27F6C;
  *(v4 + 24) = v3;
  v11[4] = sub_195EC7318;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_195EC7454;
  v11[3] = &block_descriptor;
  v5 = _Block_copy(v11);
  v6 = v0;

  v7 = v2;

  [v7 appendProem:0 block:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    result = [v7 build];
    if (result)
    {
      v9 = result;
      v10 = sub_195FA08B8();

      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_195F27028(void *a1, _BYTE *a2)
{
  v4 = *&a2[OBJC_IVAR___CHSControlHost__identifier];
  v5 = *&a2[OBJC_IVAR___CHSControlHost__identifier + 8];

  v6 = sub_195FA0888();

  v7 = sub_195FA0888();
  [a1 appendString:v6 withName:v7];

  a2[OBJC_IVAR___CHSControlHost__activationState];
  a2[OBJC_IVAR___CHSControlHost__activationState];
  v8 = sub_195FA0888();

  v9 = sub_195FA0888();
  [a1 appendString:v8 withName:v9];

  v10 = [a2 configuration];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 controlItems];

    type metadata accessor for CHSControlConfigurationItem(0);
    v13 = sub_195FA0B38();

    if (v13 >> 62)
    {
      sub_195FA0E88();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  v15 = sub_195FA1288();
  MEMORY[0x19A8C3F70](v15);

  MEMORY[0x19A8C3F70](0x736D65746920, 0xE600000000000000);
  v16 = sub_195FA0888();

  v17 = sub_195FA0888();
  [a1 appendString:v16 withName:v17];
}

void __swiftcall CHSControlHost.init()(CHSControlHost *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t _ControlHost.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t _ControlHost.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *_ControlHost.configuration.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_195F274D4()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_195FA0588();
}

uint64_t sub_195F27520()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_195FA0578();
}

uint64_t sub_195F27578()
{
  sub_195FA1398();
  v1 = *v0;
  swift_getWitnessTable();
  sub_195FA0578();
  return sub_195FA13E8();
}

uint64_t sub_195F275E0(uint64_t a1, id *a2)
{
  result = sub_195FA0898();
  *a2 = 0;
  return result;
}

uint64_t sub_195F27658(uint64_t a1, id *a2)
{
  v3 = sub_195FA08A8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_195F276D8@<X0>(uint64_t *a1@<X8>)
{
  sub_195FA08B8();
  v2 = sub_195FA0888();

  *a1 = v2;
  return result;
}

BOOL sub_195F2771C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_195F2774C()
{
  v1 = *v0;
  v2 = sub_195FA08B8();
  v3 = MEMORY[0x19A8C3FF0](v2);

  return v3;
}

uint64_t sub_195F27788()
{
  v1 = *v0;
  sub_195FA08B8();
  sub_195FA0958();
}

uint64_t sub_195F277DC()
{
  v1 = *v0;
  sub_195FA08B8();
  sub_195FA1398();
  sub_195FA0958();
  v2 = sub_195FA13E8();

  return v2;
}

uint64_t sub_195F27850()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

uint64_t sub_195F27898()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

uint64_t sub_195F278DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_195FA0568();
}

uint64_t sub_195F27948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_195FA08B8();
  v6 = v5;
  if (v4 == sub_195FA08B8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_195FA12B8();
  }

  return v9 & 1;
}

uint64_t sub_195F279D0(uint64_t a1)
{
  v2 = sub_195F282FC(&qword_1EAEEBB28, type metadata accessor for FileAttributeKey);
  v3 = sub_195F282FC(&qword_1EAEED210, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_195F27A8C(uint64_t a1)
{
  v2 = sub_195F282FC(&qword_1EAEEBB20, type metadata accessor for NSKeyValueChangeKey);
  v3 = sub_195F282FC(&qword_1EAEED368, type metadata accessor for NSKeyValueChangeKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_195F27B48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_195FA0888();

  *a2 = v5;
  return result;
}

uint64_t sub_195F27B90(uint64_t a1)
{
  v2 = sub_195F282FC(&qword_1EAEED1F8, type metadata accessor for URLResourceKey);
  v3 = sub_195F282FC(&unk_1EAEED200, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_195F27C4C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_195F27CC0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_195EBD554(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

char *sub_195F27D1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED340, &qword_195FAB8F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_195F27E10(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_195F27E48(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_195F27EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE410, &qword_195FAAEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_195F27F78()
{
  result = qword_1EAEED070;
  if (!qword_1EAEED070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED070);
  }

  return result;
}

unint64_t type metadata accessor for CHSControlHost()
{
  result = qword_1EAEED080;
  if (!qword_1EAEED080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEED080);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_195F2803C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_195F28084(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_195F280E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195F28104(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_195F282FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_195F28614()
{
  result = qword_1EAEED338;
  if (!qword_1EAEED338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED338);
  }

  return result;
}

void sub_195F28690(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_195F2887C()
{
  result = [objc_opt_self() userInteractive];
  qword_1EAEEC348 = result;
  return result;
}

id sub_195F288DC(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t HostType.description.getter()
{
  if (*v0)
  {
    result = 0x6C6F72746E6F63;
  }

  else
  {
    result = 0x746567646977;
  }

  *v0;
  return result;
}

ChronoServices::HostType_optional __swiftcall HostType.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t HostType.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_195F28A10()
{
  result = qword_1EAEED430;
  if (!qword_1EAEED430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED430);
  }

  return result;
}

uint64_t sub_195F28A64()
{
  v1 = *v0;
  sub_195FA1398();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x19A8C4970](v2);
  return sub_195FA13E8();
}

uint64_t sub_195F28AB4()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x19A8C4970](v1);
}

uint64_t sub_195F28AEC()
{
  v1 = *v0;
  sub_195FA1398();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x19A8C4970](v2);
  return sub_195FA13E8();
}

void *sub_195F28B38@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_195F28B58(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_195F28B70()
{
  if (*v0)
  {
    result = 0x6C6F72746E6F63;
  }

  else
  {
    result = 0x746567646977;
  }

  *v0;
  return result;
}

uint64_t DeviceIdentifier.rawValue.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t DeviceIdentifier.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

uint64_t DeviceIdentifier.description.getter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x6C61636F6CLL;
  }

  return v2;
}

uint64_t sub_195F28C50()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

uint64_t sub_195F28CC4()
{
  v1 = *v0;
  sub_195FA1398();
  MEMORY[0x19A8C4970](v1);
  return sub_195FA13E8();
}

uint64_t sub_195F28D20(uint64_t a1)
{
  v2 = sub_195EBF8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F28D5C(uint64_t a1)
{
  v2 = sub_195EBF8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F28DA4(uint64_t a1)
{
  v2 = sub_195EBFAE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F28DE0(uint64_t a1)
{
  v2 = sub_195EBFAE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_195F28E24()
{
  sub_195FA1398();
  MEMORY[0x19A8C4970](0);
  return sub_195FA13E8();
}

uint64_t sub_195F28E68()
{
  sub_195FA1398();
  MEMORY[0x19A8C4970](0);
  return sub_195FA13E8();
}

uint64_t sub_195F28EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_195FA12B8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_195F28F34(uint64_t a1)
{
  v2 = sub_195F292A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F28F70(uint64_t a1)
{
  v2 = sub_195F292A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED438, &qword_195FABBE0);
  v22 = *(v4 - 8);
  v5 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED440, &qword_195FABBE8);
  v20 = *(v8 - 8);
  v21 = v8;
  v9 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED448, &qword_195FABBF0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195EBF8F4();
  v18 = v24;
  sub_195FA1468();
  if (v18)
  {
    v26 = 1;
    sub_195F292A0();
    sub_195FA11D8();
    sub_195FA11F8();
    (*(v22 + 8))(v7, v4);
  }

  else
  {
    v25 = 0;
    sub_195EBFAE0();
    sub_195FA11D8();
    (*(v20 + 8))(v11, v21);
  }

  return (*(v13 + 8))(v16, v12);
}

unint64_t sub_195F292A0()
{
  result = qword_1EAEED450;
  if (!qword_1EAEED450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED450);
  }

  return result;
}

uint64_t *sub_195F2930C@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (!v3)
  {
    v2 = 0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t sub_195F29320@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  if (!v2)
  {
    v3 = 0;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_195F29350()
{
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v1 = 0x6C61636F6CLL;
  }

  return v1;
}

uint64_t sub_195F2939C()
{
  v2 = *v0;
  v1 = v0[1];
  sub_195FA1398();
  sub_195FA13B8();
  if (v1)
  {

    sub_195FA0958();
  }

  return sub_195FA13E8();
}

uint64_t sub_195F2941C()
{
  if (!v0[1])
  {
    return sub_195FA13B8();
  }

  v1 = *v0;
  sub_195FA13B8();

  sub_195FA0958();
}

uint64_t sub_195F294A4()
{
  v2 = *v0;
  v1 = v0[1];
  sub_195FA1398();
  sub_195FA13B8();
  if (v1)
  {

    sub_195FA0958();
  }

  return sub_195FA13E8();
}

unint64_t sub_195F29538()
{
  result = qword_1EAEED458;
  if (!qword_1EAEED458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED458);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_195F29598(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_195F295E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_195F2963C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_195F29654(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_195F29690()
{
  result = qword_1EAEED460;
  if (!qword_1EAEED460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED460);
  }

  return result;
}

unint64_t sub_195F296E8()
{
  result = qword_1EAEED468;
  if (!qword_1EAEED468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED468);
  }

  return result;
}

id CHSControlConfiguration.init(controlItems:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___CHSControlConfiguration__expirationTimeout] = 0x409C200000000000;
  *&v1[OBJC_IVAR___CHSControlConfiguration__controlItems] = a1;
  v2 = [objc_opt_self() nonePredicate];
  *&v1[OBJC_IVAR___CHSControlConfiguration__replicationPredicate] = v2;
  v1[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned] = 1;
  v4.receiver = v1;
  v4.super_class = CHSControlConfiguration;
  return objc_msgSendSuper2(&v4, sel_init);
}

id CHSControlConfiguration.init(controlItems:automaticallyOrphaned:)(uint64_t a1, char a2)
{
  *&v2[OBJC_IVAR___CHSControlConfiguration__expirationTimeout] = 0x409C200000000000;
  *&v2[OBJC_IVAR___CHSControlConfiguration__controlItems] = a1;
  v4 = [objc_opt_self() nonePredicate];
  *&v2[OBJC_IVAR___CHSControlConfiguration__replicationPredicate] = v4;
  v2[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned] = a2;
  v6.receiver = v2;
  v6.super_class = CHSControlConfiguration;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CHSControlConfiguration.init(controlItems:replicationPredicate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(v2 + OBJC_IVAR___CHSControlConfiguration__controlItems) = a1;
  *(v2 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = a2;
  *(v2 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = 1;
  v4.super_class = CHSControlConfiguration;
  return objc_msgSendSuper2(&v4, sel_init);
}

id CHSControlConfiguration.init(controlItems:replicationPredicate:automaticallyOrphaned:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout) = 0x409C200000000000;
  *(v3 + OBJC_IVAR___CHSControlConfiguration__controlItems) = a1;
  *(v3 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = a2;
  *(v3 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned) = a3;
  v5.super_class = CHSControlConfiguration;
  return objc_msgSendSuper2(&v5, sel_init);
}

_BYTE *sub_195F29C74(void *a1)
{
  v3 = [a1 controlItems];
  if (!v3)
  {
    type metadata accessor for CHSControlConfigurationItem(0);
    sub_195FA0B38();
    v3 = sub_195FA0B28();
  }

  v4 = [v1 initWithControlItems_];

  v5 = v4;
  v6 = [a1 replicationPredicate];
  v7 = *&v5[OBJC_IVAR___CHSControlConfiguration__replicationPredicate];
  *&v5[OBJC_IVAR___CHSControlConfiguration__replicationPredicate] = v6;

  v8 = [a1 automaticallyOrphaned];
  v5[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned] = v8;
  [a1 expirationTimeout];
  v10 = v9;

  *&v5[OBJC_IVAR___CHSControlConfiguration__expirationTimeout] = v10;
  return v5;
}

id CHSControlConfiguration.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CHSControlConfiguration(a1);
  *a2 = v4;

  return v4;
}

id CHSControlConfiguration.mutableCopy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for CHSMutableControlConfiguration(a1);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];
  a2[3] = v4;
  *a2 = result;
  return result;
}

BOOL CHSControlConfiguration.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v16);
  if (!v17)
  {
    sub_195EB7914(v16);
    return 0;
  }

  type metadata accessor for CHSControlConfiguration(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v15 == v1)
  {

    return 1;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___CHSControlConfiguration__controlItems];
    v4 = *&v15[OBJC_IVAR___CHSControlConfiguration__controlItems];

    v5 = sub_195F2A038(v3, v4);

    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0);
    v6 = v1;
    v7 = *&v1[OBJC_IVAR___CHSControlConfiguration__replicationPredicate];
    v8 = *&v15[OBJC_IVAR___CHSControlConfiguration__replicationPredicate];
    v9 = v7;
    v10 = v8;
    v11 = sub_195FA0D88();

    if ((v11 & 1) == 0 || v6[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned] != v15[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned])
    {
LABEL_7:

      return 0;
    }

    v13 = *&v6[OBJC_IVAR___CHSControlConfiguration__expirationTimeout];
    v14 = *&v15[OBJC_IVAR___CHSControlConfiguration__expirationTimeout];

    return v13 == v14;
  }
}

uint64_t sub_195F2A038(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for CHSControlConfigurationItem(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x19A8C4520](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x19A8C4520](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_195FA0D88();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_195FA0D88();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_195FA0E88();
  }

  result = sub_195FA0E88();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_195F2A278(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_195FA12B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t CHSControlConfiguration.hash.getter()
{
  v1 = v0;
  sub_195FA13F8();
  v2 = *(v0 + OBJC_IVAR___CHSControlConfiguration__controlItems);

  sub_195F2C774(v7, v2);

  v3 = *(v1 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
  sub_195FA0D98();

  v4 = *(v1 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned);
  sub_195FA13B8();
  v5 = *(v1 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x19A8C4990](*&v5);
  return sub_195FA13D8();
}

void CHSControlConfiguration.description.getter()
{
  v1 = [v0 descriptionBuilderWithMultilinePrefix_];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 build];

    if (v3)
    {
      sub_195FA08B8();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall CHSControlConfiguration.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___CHSControlConfiguration__controlItems);
  type metadata accessor for CHSControlConfigurationItem(0);

  v4 = sub_195FA0B28();

  v5 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v6 = *(v1 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
  v7 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];

  v8 = *(v1 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned);
  v9 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v8 forKey:v9];

  v10 = *(v1 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout);
  v11 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeDouble:v11 forKey:v10];
}

char *CHSControlConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED4C0, &qword_195FAC088);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_195FAC070;
  *(v4 + 32) = type metadata accessor for CHSControlConfigurationItem(0);
  v5 = sub_195FA0D68();

  if (v5 && (v6 = sub_195F2AB94(v5), , v6))
  {
    v7 = sub_195FA0888();
    v8 = [a1 containsValueForKey_];

    if (v8)
    {
      type metadata accessor for CHSRemoteDevicePredicate(0);
      v9 = sub_195FA0D58();
    }

    else
    {
      v9 = 0;
    }

    v11 = sub_195FA0888();
    v12 = [a1 containsValueForKey_];

    if (v12)
    {
      v13 = sub_195FA0888();
      [a1 decodeDoubleForKey_];
      v15 = v14;
    }

    else
    {
      v15 = 0x409C200000000000;
    }

    v16 = sub_195FA0888();
    v17 = [a1 containsValueForKey_];

    if (v17)
    {
      v18 = sub_195FA0888();
      v19 = [a1 decodeBoolForKey_];
    }

    else
    {
      v19 = 1;
    }

    v20 = sub_195FA0B28();

    v10 = [v2 initWithControlItems_];

    if (v9)
    {
      v21 = v10;
    }

    else
    {
      v22 = objc_opt_self();
      v23 = v10;
      v9 = [v22 nonePredicate];
    }

    v24 = *&v10[OBJC_IVAR___CHSControlConfiguration__replicationPredicate];
    *&v10[OBJC_IVAR___CHSControlConfiguration__replicationPredicate] = v9;

    v10[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned] = v19;
    *&v10[OBJC_IVAR___CHSControlConfiguration__expirationTimeout] = v15;
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

uint64_t sub_195F2AB94(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_195FA0FC8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_195EBDAFC(i, v6);
    type metadata accessor for CHSControlConfigurationItem(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_195FA0FA8();
    v4 = *(v7 + 16);
    sub_195FA0FD8();
    sub_195FA0FE8();
    sub_195FA0FB8();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_195F2AC80(uint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_195FA0FC8();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_195EBDAFC(i, v6);
    sub_195EB4B30(0, &qword_1EAEEBE70, off_1E74525A0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_195FA0FA8();
    v4 = *(v7 + 16);
    sub_195FA0FD8();
    sub_195FA0FE8();
    sub_195FA0FB8();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

Swift::String_optional __swiftcall CHSControlConfiguration.description(withMultilinePrefix:)(Swift::String_optional withMultilinePrefix)
{
  v2 = v1;
  if (withMultilinePrefix.value._object)
  {
    v3 = sub_195FA0888();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 descriptionBuilderWithMultilinePrefix_];

  if (v4)
  {
    v7 = [v4 build];

    if (v7)
    {
      v8 = sub_195FA08B8();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v5 = v8;
    v6 = v10;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

Swift::String_optional __swiftcall CHSControlConfiguration.succinctDescription()()
{
  v1 = [v0 succinctDescriptionBuilder];
  if (v1)
  {
    v3 = v1;
    v4 = [v1 build];

    if (v4)
    {
      v5 = sub_195FA08B8();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v1 = v5;
    v2 = v7;
  }

  else
  {
    __break(1u);
  }

  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

id CHSControlConfiguration.succinctDescriptionBuilder()()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_195F2CA5C;
    *(v4 + 24) = v3;
    v9[4] = sub_195EC7340;
    v9[5] = v4;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_195EC7454;
    v9[3] = &block_descriptor_0;
    v5 = _Block_copy(v9);
    v6 = v2;
    v7 = v0;

    [v6 appendProem:0 block:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_195F2B25C(void *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR___CHSControlConfiguration__controlItems);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v11 = *(a2 + OBJC_IVAR___CHSControlConfiguration__controlItems);
    }

    v5 = sub_195FA0E88();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_195FA0888();

  v7 = *(a2 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
  v8 = sub_195FA0888();

  if (*(a2 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned))
  {
    v9 = *(a2 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout);
    v10 = sub_195FA0BD8();
    v12 = sub_195FA0888();
  }

  else
  {
    v12 = sub_195FA0888();
    v10 = [a1 appendBool:0 withName:?];
  }
}

uint64_t sub_195F2B480()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F2B558()
{
  *v0;
  *v0;
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F2B61C()
{
  v1 = *v0;
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t sub_195F2B6F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_195F2CDAC();
  *a2 = result;
  return result;
}

void sub_195F2B720(unint64_t *a1@<X8>)
{
  v2 = 0xEC000000736D6574;
  v3 = 0x496C6F72746E6F63;
  v4 = 0x8000000195FBF790;
  v5 = 0xD000000000000015;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000011;
    v4 = 0x8000000195FBF7B0;
  }

  if (*v1)
  {
    v3 = 0xD000000000000014;
    v2 = 0x8000000195FBF770;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_195F2B7B4()
{
  v1 = 0x496C6F72746E6F63;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_195F2B844@<X0>(_BYTE *a1@<X8>)
{
  result = sub_195F2CDAC();
  *a1 = result;
  return result;
}

uint64_t sub_195F2B878(uint64_t a1)
{
  v2 = sub_195F2CA64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_195F2B8B4(uint64_t a1)
{
  v2 = sub_195F2CA64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CHSControlConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED4C8, &qword_195FAC090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F2CA64();
  sub_195FA1468();
  v15 = *(v3 + OBJC_IVAR___CHSControlConfiguration__controlItems);
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED4D8, &qword_195FAC098);
  sub_195F2CB00(&qword_1EAEED4E0, &qword_1EAEED4E8);
  sub_195FA1238();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
    HIBYTE(v14) = 1;
    type metadata accessor for CHSRemoteDevicePredicate(0);
    sub_195F2CB9C(&qword_1EAEED4F0, type metadata accessor for CHSRemoteDevicePredicate);
    sub_195FA1238();
    v11 = *(v3 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned);
    LOBYTE(v15) = 2;
    sub_195FA1208();
    v12 = *(v3 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout);
    LOBYTE(v15) = 3;
    sub_195FA1218();
  }

  return (*(v6 + 8))(v9, v5);
}

char *CHSControlConfiguration.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED4F8, &unk_195FAC0A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195F2CA64();
  sub_195FA1448();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED4D8, &qword_195FAC098);
    v21 = 0;
    sub_195F2CB00(&qword_1EAEED500, &qword_1EAEED508);
    sub_195FA1178();
    v20 = v22;
    v10 = [objc_opt_self() nonePredicate];
    LOBYTE(v22) = 1;
    if (sub_195FA11B8())
    {
      type metadata accessor for CHSRemoteDevicePredicate(0);
      v21 = 1;
      sub_195F2CB9C(&unk_1EAEED510, type metadata accessor for CHSRemoteDevicePredicate);
      sub_195FA1178();

      v10 = v22;
    }

    LOBYTE(v22) = 3;
    if (sub_195FA11B8())
    {
      LOBYTE(v22) = 3;
      sub_195FA1158();
      v12 = v11;
    }

    else
    {
      v12 = 0x409C200000000000;
    }

    LOBYTE(v22) = 2;
    v13 = sub_195FA1118();
    HIDWORD(v19) = (v13 == 2) | v13;
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for CHSControlConfigurationItem(0);
    v16 = sub_195FA0B28();

    v17 = [v15 initWithControlItems_];

    (*(v4 + 8))(v7, v3);
    v18 = *&v17[OBJC_IVAR___CHSControlConfiguration__replicationPredicate];
    *&v17[OBJC_IVAR___CHSControlConfiguration__replicationPredicate] = v10;
    v9 = v17;

    v9[OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned] = BYTE4(v19) & 1;
    *&v9[OBJC_IVAR___CHSControlConfiguration__expirationTimeout] = v12;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v9;
}

char *sub_195F2BF64@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  result = CHSControlConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_195F2BFB4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___CHSControlConfiguration__controlItems);
  type metadata accessor for CHSControlConfigurationItem(0);

  v2 = sub_195FA0B28();

  return v2;
}

uint64_t CHSMutableControlConfiguration.controlItems.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CHSControlConfiguration__controlItems);
  *(v1 + OBJC_IVAR___CHSControlConfiguration__controlItems) = a1;
}

void CHSMutableControlConfiguration.replicationPredicate.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
  *(v1 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate) = a1;
}

uint64_t CHSMutableControlConfiguration.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [objc_allocWithZone(CHSControlConfiguration) initWithConfiguration_];
  result = type metadata accessor for CHSControlConfiguration(v3);
  a1[3] = result;
  *a1 = v3;
  return result;
}

id _sSo23CHSControlConfigurationC14ChronoServicesE12controlItemsABSaySo0aB4ItemCG_tcfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CHSControlConfigurationItem(0);
  v1 = sub_195FA0B28();

  v2 = [v0 initWithControlItems_];

  return v2;
}

id CHSMutableControlConfiguration.init(controlItems:)()
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v1 = sub_195FA0B28();

  v4.receiver = v0;
  v4.super_class = CHSMutableControlConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_initWithControlItems_, v1);

  return v2;
}

id _sSo23CHSControlConfigurationC14ChronoServicesEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id _sSo23CHSControlConfigurationC14ChronoServicesE12controlItems21automaticallyOrphanedABSaySo0aB4ItemCG_SbtcfC_0(uint64_t a1, char a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B28();

  v5 = [v3 initWithControlItems:v4 automaticallyOrphaned:a2 & 1];

  return v5;
}

id CHSMutableControlConfiguration.init(controlItems:automaticallyOrphaned:)(uint64_t a1, char a2)
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B28();

  v7.receiver = v2;
  v7.super_class = CHSMutableControlConfiguration;
  v5 = objc_msgSendSuper2(&v7, sel_initWithControlItems_automaticallyOrphaned_, v4, a2 & 1);

  return v5;
}

id _sSo23CHSControlConfigurationC14ChronoServicesE12controlItems20replicationPredicateABSaySo0aB4ItemCG_So015CHSRemoteDeviceH0CtcfC_0(uint64_t a1, void *a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B28();

  v5 = [v3 initWithControlItems:v4 replicationPredicate:a2];

  return v5;
}

id CHSMutableControlConfiguration.init(controlItems:replicationPredicate:)(uint64_t a1, void *a2)
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v4 = sub_195FA0B28();

  v7.receiver = v2;
  v7.super_class = CHSMutableControlConfiguration;
  v5 = objc_msgSendSuper2(&v7, sel_initWithControlItems_replicationPredicate_, v4, a2);

  return v5;
}

id _sSo23CHSControlConfigurationC14ChronoServicesE12controlItems20replicationPredicate21automaticallyOrphanedABSaySo0aB4ItemCG_So015CHSRemoteDeviceH0CSbtcfC_0(uint64_t a1, void *a2, char a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CHSControlConfigurationItem(0);
  v6 = sub_195FA0B28();

  v7 = [v5 initWithControlItems:v6 replicationPredicate:a2 automaticallyOrphaned:a3 & 1];

  return v7;
}

id CHSMutableControlConfiguration.init(controlItems:replicationPredicate:automaticallyOrphaned:)(uint64_t a1, void *a2, char a3)
{
  type metadata accessor for CHSControlConfigurationItem(0);
  v6 = sub_195FA0B28();

  v9.receiver = v3;
  v9.super_class = CHSMutableControlConfiguration;
  v7 = objc_msgSendSuper2(&v9, sel_initWithControlItems_replicationPredicate_automaticallyOrphaned_, v6, a2, a3 & 1);

  return v7;
}

void sub_195F2C774(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_195FA0E88();
    MEMORY[0x19A8C4970](v8);
    v3 = sub_195FA0E88();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x19A8C4970](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x19A8C4520](i, a2);
      sub_195FA0D98();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_195FA0D98();

      --v3;
    }

    while (v3);
  }
}

id _sSo23CHSControlConfigurationC14ChronoServicesE18descriptionBuilder19withMultilinePrefixSo013BSDescriptionF0CSgSSSg_tF_0()
{
  result = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR___CHSControlConfiguration__controlItems);

    sub_195F36C20(v4);

    v5 = sub_195FA0B28();

    v6 = sub_195FA0888();
    [v2 appendArraySection:v5 withName:v6 skipIfEmpty:1];

    v7 = *(v0 + OBJC_IVAR___CHSControlConfiguration__replicationPredicate);
    v8 = sub_195FA0888();

    if (*(v0 + OBJC_IVAR___CHSControlConfiguration__automaticallyOrphaned))
    {
      v9 = *(v0 + OBJC_IVAR___CHSControlConfiguration__expirationTimeout);
      v10 = sub_195FA0BD8();
      v11 = sub_195FA0888();
    }

    else
    {
      v11 = sub_195FA0888();
      v10 = [v2 appendBool:0 withName:v11];
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_195F2CA64()
{
  result = qword_1EAEED4D0;
  if (!qword_1EAEED4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED4D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_195F2CB00(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEED4D8, &qword_195FAC098);
    sub_195F2CB9C(a2, type metadata accessor for CHSControlConfigurationItem);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195F2CB9C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_195F2CCA8()
{
  result = qword_1EAEED588;
  if (!qword_1EAEED588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED588);
  }

  return result;
}

unint64_t sub_195F2CD00()
{
  result = qword_1EAEED590;
  if (!qword_1EAEED590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED590);
  }

  return result;
}

unint64_t sub_195F2CD58()
{
  result = qword_1EAEED598;
  if (!qword_1EAEED598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEED598);
  }

  return result;
}

uint64_t sub_195F2CDAC()
{
  v0 = sub_195FA10D8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t static ImageFormat.ASTCOptions.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAEEBDD8 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = *algn_1EAEEBDE8;
  v3 = dword_1EAEEBDF0;
  v4 = word_1EAEEBDF4;
  v5 = dword_1EAEEBDF8;
  v6 = byte_1EAEEBDFC;
  *a1 = qword_1EAEEBDE0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 28) = v6;
}

unint64_t sub_195F2CECC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  v27 = *(v0 + 6);
  v6 = *(v0 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED600, &unk_195FB05D0);
  inited = swift_initStackObject();
  v8 = *MEMORY[0x1E696D3E0];
  *(inited + 32) = *MEMORY[0x1E696D3E0];
  *(inited + 16) = xmmword_195FAC280;
  v9 = MEMORY[0x1E69E7668];
  *(inited + 40) = v3;
  v10 = *MEMORY[0x1E696D8A0];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = *MEMORY[0x1E696D3E8];
  type metadata accessor for CFString(0);
  *(inited + 104) = v12;
  *(inited + 80) = v11;

  v13 = v8;
  v14 = v10;
  v15 = v11;
  v16 = sub_195F2D7F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED608, &qword_195FAC290);
  swift_arrayDestroy();
  if (v1)
  {
    v17 = sub_195FA0888();
    v30 = MEMORY[0x1E69E6158];
    *&v29 = v2;
    *(&v29 + 1) = v1;
    sub_195F2E09C(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_195F5CADC(v28, v17, isUniquelyReferenced_nonNull_native);
  }

  v19 = MEMORY[0x1E69E6370];
  if (v4 == 2)
  {
    if (v5 == 2)
    {
      goto LABEL_5;
    }

LABEL_9:
    v25 = *MEMORY[0x1E696DFC0];
    v30 = v19;
    LOBYTE(v29) = v5 & 1;
    sub_195F2E09C(&v29, v28);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_195F5CADC(v28, v25, v26);
    if (v6)
    {
      return v16;
    }

    goto LABEL_6;
  }

  v23 = *MEMORY[0x1E696D408];
  v30 = MEMORY[0x1E69E6370];
  LOBYTE(v29) = v4 & 1;
  sub_195F2E09C(&v29, v28);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_195F5CADC(v28, v23, v24);
  if (v5 != 2)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((v6 & 1) == 0)
  {
LABEL_6:
    v20 = *MEMORY[0x1E696D3B0];
    v30 = MEMORY[0x1E69E7668];
    LODWORD(v29) = v27;
    sub_195F2E09C(&v29, v28);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_195F5CADC(v28, v20, v21);
  }

  return v16;
}

uint64_t ImageFormat.isSupported.getter()
{
  if (*(v0 + 28) >> 6)
  {
    return 1;
  }

  if (qword_1EAEEBE00 != -1)
  {
    swift_once();
  }

  return byte_1EAEF72C8;
}

uint64_t ImageFormat.typeIdentifier.getter()
{
  v1 = sub_195FA0638();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 28);
  if (!(v7 >> 6))
  {
    return 0x6C7070612E6D6F63;
  }

  if (v7 >> 6 == 1)
  {
    return 0x6A2E63696C627570;
  }

  v8 = 0x702E63696C627570;
  if ((*(v0 + 24) | (*(v0 + 28) << 32)) == 0x8000000000 && !(*(v0 + 8) | *(v0 + 16) | *v0))
  {
    v9 = v4;
    sub_195FA0628();
    v8 = sub_195FA0608();
    (*(v2 + 8))(v6, v9);
  }

  return v8;
}

uint64_t sub_195F2D344@<X0>(uint64_t a1@<X8>)
{
  v3 = 0xED00007874612E65;
  v23 = 0x6C7070612E6D6F63;
  v4 = sub_195FA0638();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED618, &qword_195FAC370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = *(v1 + 6) | (*(v1 + 28) << 32);
  v17 = *(v1 + 28) >> 6;
  v21 = v14;
  v22 = v13;
  if (v17 > 1 && !(v15 | v14 | v13) && v16 == 0x8000000000)
  {
    sub_195FA0628();
    sub_195FA0608();
    (*(v5 + 8))(v8, v4);
    v3 = 0xED00007874612E65;
  }

  sub_195FA0648();
  if ((*(v5 + 48))(v12, 1, v4) != 1)
  {
    return (*(v5 + 32))(a1, v12, v4);
  }

  sub_195F2DB00(v12, &qword_1EAEED618, &qword_195FAC370);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_195FA0F38();

  v24 = 0xD000000000000020;
  v25 = 0x8000000195FBFDE0;
  if (v17)
  {
    if (v17 == 1)
    {
      v23 = 0x6A2E63696C627570;
      v3 = 0xEB00000000676570;
    }

    else if (v15 | v21 | v22 || v16 != 0x8000000000)
    {
      v23 = 0x702E63696C627570;
      v3 = 0xEA0000000000676ELL;
    }

    else
    {
      sub_195FA0628();
      v23 = sub_195FA0608();
      v3 = v19;
      (*(v5 + 8))(v8, v4);
    }
  }

  MEMORY[0x19A8C3F70](v23, v3);

  result = sub_195FA1058();
  __break(1u);
  return result;
}

unint64_t ImageFormat.cgImageDestinationOptions.getter()
{
  v1 = *v0;
  v2 = *(v0 + 28);
  if (v2 >> 6 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED600, &unk_195FB05D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_195FAC070;
    v5 = *MEMORY[0x1E696DE28];
    *(inited + 32) = *MEMORY[0x1E696DE28];
    *(inited + 64) = MEMORY[0x1E69E7DE0];
    *(inited + 40) = v1;
    v6 = v5;
    v7 = sub_195F2D7F0(inited);
    swift_setDeallocating();
    sub_195F2DB00(inited + 32, &qword_1EAEED608, &qword_195FAC290);
    return v7;
  }

  else if (v2 >> 6)
  {
    return 0;
  }

  else
  {
    v8 = *v0;
    v9 = v0[1];
    v10 = v0[2];
    v11 = *(v0 + 6);
    return sub_195F2CECC();
  }
}

unint64_t sub_195F2D7F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE110, &qword_195FAF040);
    v3 = sub_195FA10B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_195F2E0AC(v4, &v11, &qword_1EAEED608, &qword_195FAC290);
      v5 = v11;
      result = sub_195F59CBC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_195F2E09C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_195F2D918(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFD && *(a1 + 29))
  {
    return (*a1 + 8388606);
  }

  if ((((((*(a1 + 24) | (*(a1 + 28) << 32)) >> 17) >> 21) | (4 * (((*(a1 + 24) | (*(a1 + 28) << 32)) >> 17) & 0x1F0000 | *(a1 + 22)))) ^ 0x7FFFFF) >= 0x7FFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((((*(a1 + 24) | (*(a1 + 28) << 32)) >> 17) >> 21) | (4 * (((*(a1 + 24) | (*(a1 + 28) << 32)) >> 17) & 0x1F0000 | *(a1 + 22)))) ^ 0x7FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_195F2D988(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 8388606;
    if (a3 >= 0x7FFFFE)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFE)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      v3 = -a2 >> 2;
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = v3 << 48;
      *(result + 24) = 0;
      *(result + 28) = ((v3 & 0x1F0000) - (a2 << 21)) >> 15;
    }
  }

  return result;
}

uint64_t sub_195F2DA0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = a1 + 24;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_195F2DA38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 29))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_195F2DA94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_195F2DB00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_195F2DB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED648, &qword_195FAC390);
    v3 = sub_195FA10B8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_195F59DB4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_195F2DC58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED630, &qword_195FAC388);
    v3 = sub_195FA10B8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = v6;
      v9 = v5;
      result = sub_195F59E04(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 16 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_195F2DD54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED638, &unk_195FAD840);
    v3 = sub_195FA10B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_195F2E0AC(v4, &v13, &qword_1EAEED640, &qword_195FAD010);
      v5 = v13;
      v6 = v14;
      result = sub_195EC7CCC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_195F2E09C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_195F2DE84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED628, &qword_195FAC380);
    v3 = sub_195FA10B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_195EC7CCC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_195F2DF88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED620, &qword_195FAC378);
    v3 = sub_195FA10B8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_195EC7CCC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_195F2E09C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_195F2E0AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_195F2E114()
{
  sub_195FA1398();
  sub_195FA0958();

  return sub_195FA13E8();
}

uint64_t CHSControlPushPolicy.description.getter(uint64_t a1)
{
  v1 = 0x776F6C6C41746F6ELL;
  if (a1 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (a1 == 2)
  {
    return 0x6564694672657375;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_195F2E2C0()
{
  v1 = 0x776F6C6C41746F6ELL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 == 2)
  {
    return 0x6564694672657375;
  }

  else
  {
    return v1;
  }
}

uint64_t CHSControlConfigurationItem.uniqueIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v2 = *(v0 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8);

  return v1;
}

id CHSControlConfigurationItem.init(uniqueIdentifier:controlIdentity:location:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = sub_195F306D0(a1, a2, a3, a4);

  return v5;
}

id CHSControlConfigurationItem.init(uniqueIdentifier:controlIdentity:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_195FA0888();

  v6 = [v3 initWithUniqueIdentifier:v5 controlIdentity:a3 location:0];

  return v6;
}

char *sub_195F2E54C(_BYTE *a1)
{
  v3 = *&a1[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier];
  v4 = *&a1[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8];

  v5 = sub_195FA0888();

  v6 = [v1 initWithUniqueIdentifier:v5 controlIdentity:*&a1[OBJC_IVAR___CHSControlConfigurationItem__controlIdentity] location:*&a1[OBJC_IVAR___CHSControlConfigurationItem__location]];

  *&v6[OBJC_IVAR___CHSControlConfigurationItem__pushPolicy] = *&a1[OBJC_IVAR___CHSControlConfigurationItem__pushPolicy];
  v6[OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment] = a1[OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment];
  v6[OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance] = a1[OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance];
  v7 = *&a1[OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes];
  v8 = v6;

  *&v8[OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes] = v7;
  return v8;
}

id CHSControlConfigurationItem.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for CHSControlConfigurationItem(a1);
  *a2 = v4;

  return v4;
}

BOOL CHSControlConfigurationItem.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v14);
  if (v15)
  {
    type metadata accessor for CHSControlConfigurationItem(v2);
    if (swift_dynamicCast())
    {
      if (v13 == v1)
      {

        return 1;
      }

      v3 = *&v1[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier] == *&v13[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier] && *&v1[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8] == *&v13[OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8];
      if (v3 || (sub_195FA12B8()) && *&v1[OBJC_IVAR___CHSControlConfigurationItem__location] == *&v13[OBJC_IVAR___CHSControlConfigurationItem__location])
      {
        sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0);
        v4 = v1;
        v5 = *&v1[OBJC_IVAR___CHSControlConfigurationItem__controlIdentity];
        v6 = *&v13[OBJC_IVAR___CHSControlConfigurationItem__controlIdentity];
        v7 = v5;
        v8 = v6;
        v9 = sub_195FA0D88();

        if ((v9 & 1) != 0 && *&v4[OBJC_IVAR___CHSControlConfigurationItem__pushPolicy] == *&v13[OBJC_IVAR___CHSControlConfigurationItem__pushPolicy] && v4[OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment] == v13[OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment] && v4[OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance] == v13[OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance])
        {
          v11 = *&v4[OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes];
          v12 = *&v13[OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes];

          return v11 == v12;
        }
      }
    }
  }

  else
  {
    sub_195EB7914(v14);
  }

  return 0;
}

uint64_t CHSControlConfigurationItem.hash.getter()
{
  v1 = v0;
  sub_195FA13F8();
  v2 = v0 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier;
  v3 = *(v0 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v4 = *(v2 + 8);

  sub_195FA0958();

  v5 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__controlIdentity);
  sub_195FA0D98();

  MEMORY[0x19A8C4970](*(v1 + OBJC_IVAR___CHSControlConfigurationItem__pushPolicy));
  MEMORY[0x19A8C4970](*(v1 + OBJC_IVAR___CHSControlConfigurationItem__location));
  v6 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment);
  sub_195FA13B8();
  v7 = *(v1 + OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance);
  sub_195FA13B8();
  MEMORY[0x19A8C4970](*(v1 + OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes));
  return sub_195FA13D8();
}

id CHSControlConfigurationItem.description.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E698E680]) initWithObject_];
  if (!v1)
  {
    return 0xD000000000000025;
  }

  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v0;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_195F30840;
  *(v4 + 24) = v3;
  v11[4] = sub_195EC7340;
  v11[5] = v4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_195EC7454;
  v11[3] = &block_descriptor_1;
  v5 = _Block_copy(v11);
  v6 = v0;

  v7 = v2;

  [v7 appendProem:0 block:v5];
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    result = [v7 build];
    if (result)
    {
      v9 = result;
      v10 = sub_195FA08B8();

      return v10;
    }
  }

  __break(1u);
  return result;
}

void sub_195F2EC34(void *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier);
  v5 = *(a2 + OBJC_IVAR___CHSControlConfigurationItem__uniqueIdentifier + 8);

  v6 = sub_195FA0888();

  v7 = sub_195FA0888();
  [a1 appendString:v6 withName:v7];

  v8 = *(a2 + OBJC_IVAR___CHSControlConfigurationItem__controlIdentity);
  v9 = sub_195FA0888();

  *(a2 + OBJC_IVAR___CHSControlConfigurationItem__pushPolicy);
  v10 = sub_195FA0888();

  v11 = sub_195FA0888();
  [a1 appendString:v10 withName:v11];

  v12 = NSStringFromWidgetLocation(*(a2 + OBJC_IVAR___CHSControlConfigurationItem__location));
  if (!v12)
  {
    sub_195FA08B8();
    v12 = sub_195FA0888();
  }

  v13 = sub_195FA0888();
  [a1 appendString:v12 withName:v13];

  *(a2 + OBJC_IVAR___CHSControlConfigurationItem__canAppearInSecureEnvironment);
  v14 = sub_195FA0888();

  v15 = sub_195FA0888();
  [a1 appendString:v14 withName:v15];

  *(a2 + OBJC_IVAR___CHSControlConfigurationItem__supportsLowLuminance);
  v16 = sub_195FA0888();

  v17 = sub_195FA0888();
  [a1 appendString:v16 withName:v17];

  v18 = NSStringFromCHSColorSchemes(*(a2 + OBJC_IVAR___CHSControlConfigurationItem__supportedColorSchemes));
  if (!v18)
  {
    sub_195FA08B8();
    v18 = sub_195FA0888();
  }

  v19 = sub_195FA0888();
  [a1 appendString:v18 withName:v19];
}

uint64_t sub_195F2F0BC()
{
  *v0;
  sub_195FA0958();
}

uint64_t sub_195F2F1F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_195F30B5C();
  *a2 = result;
  return result;
}

void sub_195F2F224(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEF797469746E6564;
    v9 = 0x496C6F72746E6F63;
    if (v2 != 1)
    {
      v9 = 0x696C6F5068737570;
      v8 = 0xEA00000000007963;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v8 = 0x8000000195FBF7D0;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000195FBF830;
    v4 = 0xD000000000000014;
    if (v2 != 5)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000195FBF850;
    }

    v5 = 0xE800000000000000;
    v6 = 0xD00000000000001CLL;
    if (v2 == 3)
    {
      v6 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v5 = 0x8000000195FBF810;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

unint64_t sub_195F2F328()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x496C6F72746E6F63;
    if (v1 != 1)
    {
      v5 = 0x696C6F5068737570;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0xD00000000000001CLL;
    if (v1 == 3)
    {
      v3 = 0x6E6F697461636F6CLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}