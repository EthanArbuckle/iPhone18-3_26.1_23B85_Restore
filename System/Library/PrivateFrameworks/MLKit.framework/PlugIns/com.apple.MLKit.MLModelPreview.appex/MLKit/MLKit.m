uint64_t sub_1000017D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1000289B0, &unk_10001AED0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10000188C()
{
  v1 = *v0;
  sub_100019D08();
  v2 = sub_100019D58();

  return v2;
}

uint64_t sub_1000018C8()
{
  v1 = *v0;
  sub_100019D08();
  sub_100019D38();
}

Swift::Int sub_10000191C()
{
  v1 = *v0;
  sub_100019D08();
  sub_10001A008();
  sub_100019D38();
  v2 = sub_10001A038();

  return v2;
}

uint64_t sub_100001990(uint64_t a1, id *a2)
{
  result = sub_100019CE8();
  *a2 = 0;
  return result;
}

uint64_t sub_100001A08(uint64_t a1, id *a2)
{
  v3 = sub_100019CF8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001A88@<X0>(void *a1@<X8>)
{
  sub_100019D08();
  v2 = sub_100019CD8();

  *a1 = v2;
  return result;
}

uint64_t sub_100001AD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_100019D08();
  v6 = v5;
  if (v4 == sub_100019D08() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100019F78();
  }

  return v9 & 1;
}

uint64_t sub_100001B58(uint64_t a1)
{
  v2 = sub_100001D90(&qword_100028980, type metadata accessor for FileAttributeKey);
  v3 = sub_100001D90(&qword_100028988, type metadata accessor for FileAttributeKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001C18@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100019D08();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100001C44(uint64_t a1)
{
  v2 = sub_100001D90(&qword_100028910, type metadata accessor for URLResourceKey);
  v3 = sub_100001D90(&qword_100028918, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001D90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100001E5C(uint64_t a1)
{
  v2 = sub_100001D90(&qword_1000289A0, type metadata accessor for MIOModelMetadataKey);
  v3 = sub_100001D90(&qword_1000289A8, type metadata accessor for MIOModelMetadataKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100001FA8(uint64_t a1)
{
  v2 = sub_100001D90(&qword_100028990, type metadata accessor for MIOParameterKey);
  v3 = sub_100001D90(&qword_100028998, type metadata accessor for MIOParameterKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
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

uint64_t sub_1000022D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_100019CD8();

  *a2 = v5;
  return result;
}

void sub_10000232C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10000237C()
{
  result = qword_1000289C0;
  if (!qword_1000289C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1000289B0, &unk_10001AED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000289C0);
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

uint64_t sub_100002428(uint64_t a1)
{
  v2 = sub_100001D90(&qword_1000289E0, type metadata accessor for MIOModelLayerType);
  v3 = sub_100001D90(&qword_1000289E8, type metadata accessor for MIOModelLayerType);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

id sub_100002618()
{
  type metadata accessor for SomeClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_10002B930 = result;
  return result;
}

uint64_t static DiskSize.sizeInBytes(of:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A88, &qword_10001B060);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  if ((sub_1000027FC() & 1) == 0)
  {
    return sub_100003730();
  }

  v6 = sub_100019958();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = sub_1000031CC(v5);
  sub_100003E2C(v5, &qword_100028A88, &qword_10001B060);
  return v8;
}

uint64_t sub_1000027FC()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028AC0, &qword_10001B0A8) - 8) + 64);
  v1 = (__chkstk_darwin)();
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v12 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A90, &qword_10001B068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B050;
  *(inited + 32) = NSURLIsDirectoryKey;
  v7 = NSURLIsDirectoryKey;
  sub_100002FD8(inited);
  swift_setDeallocating();
  sub_100003BF4(inited + 32);
  sub_100019908();

  v8 = sub_1000198B8();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v5, 0, 1, v8);
  sub_100003DC4(v5, v3, &qword_100028AC0, &qword_10001B0A8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {
    sub_100003E2C(v5, &qword_100028AC0, &qword_10001B0A8);
    sub_100003E2C(v3, &qword_100028AC0, &qword_10001B0A8);
    v10 = 0;
  }

  else
  {
    v10 = sub_1000198A8();
    sub_100003E2C(v5, &qword_100028AC0, &qword_10001B0A8);
    (*(v9 + 8))(v3, v8);
  }

  return v10 & 1;
}

uint64_t static DiskSize.folderSizeInBytes(of:)(uint64_t a1)
{
  result = sub_1000031CC(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t static DiskSize.fileSizeInGB(url:)()
{
  v0 = sub_1000198B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A90, &qword_10001B068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B050;
  *(inited + 32) = NSURLFileSizeKey;
  v6 = NSURLFileSizeKey;
  sub_100002FD8(inited);
  swift_setDeallocating();
  sub_100003BF4(inited + 32);
  sub_100019908();

  v7 = sub_100019898();
  (*(v1 + 8))(v4, v0);
  sub_100002CA4(v7, &v10);

  if (v10)
  {

    sub_100003C50(&v11, v12);
    sub_100003C50(v12, &v13);
    return swift_dynamicCast();
  }

  else
  {
    result = sub_100003E2C(&v10, &qword_100028A98, qword_10001B070);
    __break(1u);
  }

  return result;
}

_OWORD *sub_100002CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = sub_100019E68();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_100002F48(v6, result, *(a1 + 36), 0, a1);
    return sub_100003C50(v6, (a2 + 8));
  }

  return result;
}

uint64_t static DiskSize.fileSizeInMB(url:)()
{
  v0 = sub_1000198B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A90, &qword_10001B068);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001B050;
  *(inited + 32) = NSURLFileSizeKey;
  v6 = NSURLFileSizeKey;
  sub_100002FD8(inited);
  swift_setDeallocating();
  sub_100003BF4(inited + 32);
  sub_100019908();

  v7 = sub_100019898();
  (*(v1 + 8))(v4, v0);
  sub_100002CA4(v7, &v10);

  if (v10)
  {

    sub_100003C50(&v11, v12);
    sub_100003C50(v12, &v13);
    return swift_dynamicCast();
  }

  else
  {
    result = sub_100003E2C(&v10, &qword_100028A98, qword_10001B070);
    __break(1u);
  }

  return result;
}

id sub_100002F48(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_100003C70(*(a5 + 56) + 32 * a2, result);

  return v6;
}

void *sub_100002FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028AA0, "~%");
    v3 = sub_100019E78();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_100019D08();
      sub_10001A008();
      v29 = v7;
      sub_100019D38();
      v9 = sub_10001A038();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_100019D08();
        v20 = v19;
        if (v18 == sub_100019D08() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_100019F78();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000031CC(uint64_t a1)
{
  v2 = sub_1000198F8();
  v35 = *(v2 - 8);
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A88, &qword_10001B060);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_100019958();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003DC4(a1, v9, &qword_100028A88, &qword_10001B060);
  v15 = (*(v11 + 48))(v9, 1, v10);
  if (v15 == 1)
  {
    sub_100003E2C(v9, &qword_100028A88, &qword_10001B060);
    return 0;
  }

  else
  {
    v34 = v15;
    (*(v11 + 32))(v14, v9, v10);
    v17 = [objc_opt_self() defaultManager];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A90, &qword_10001B068);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10001B050;
    *(v18 + 32) = NSURLFileSizeKey;
    v19 = NSURLFileSizeKey;
    v20 = sub_100019DF8();

    if (v20)
    {
      v32 = v20;
      v33 = v2;
      sub_100019DE8();
      sub_1000198E8();
      if (v39)
      {
        v31 = 0;
        while (1)
        {
          sub_100003C50(&v38, v37);
          sub_100003D20();
          if (!swift_dynamicCast())
          {
            sub_100003CCC();
            swift_allocError();
            *v29 = 1;
            swift_willThrow();

            (*(v35 + 8))(v5, v33);
            return (*(v11 + 8))(v14, v10);
          }

          v21 = v36;
          v36 = 0;
          *&v37[0] = 0;
          v22 = [v21 getResourceValue:v37 forKey:v19 error:&v36];
          v23 = *&v37[0];
          v24 = v36;
          if (!v22)
          {
            break;
          }

          if (v23)
          {
            swift_unknownObjectRetain_n();
            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();
            if (v25)
            {
              v26 = [v25 longLongValue];

              swift_unknownObjectRelease_n();
              v27 = __OFADD__(v31, v26);
              v31 += v26;
              if (v27)
              {
                __break(1u);
                goto LABEL_16;
              }
            }

            else
            {

              swift_unknownObjectRelease_n();
            }
          }

          else
          {
          }

          sub_1000198E8();
          if (!v39)
          {
            goto LABEL_18;
          }
        }

        v30 = v24;
        swift_unknownObjectRetain();
        sub_1000198D8();

        swift_willThrow();
        (*(v35 + 8))(v5, v33);
        (*(v11 + 8))(v14, v10);
        return swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0;
LABEL_18:

        (*(v35 + 8))(v5, v33);
        (*(v11 + 8))(v14, v10);
        return v31;
      }
    }

    else
    {
LABEL_16:
      sub_100003CCC();
      swift_allocError();
      *v28 = 0;
      swift_willThrow();
      return (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_100003730()
{
  v0 = [objc_opt_self() defaultManager];
  sub_100019948();
  v1 = sub_100019CD8();

  *&v12 = 0;
  v2 = [v0 attributesOfItemAtPath:v1 error:&v12];

  v3 = v12;
  if (v2)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_100003D6C();
    v4 = sub_100019C88();
    v5 = v3;

    if (*(v4 + 16))
    {
      v6 = sub_10000EDF4(NSFileSize);
      if (v7)
      {
        sub_100003C70(*(v4 + 56) + 32 * v6, &v12);

        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = v12;
    sub_1000198D8();

    swift_willThrow();
  }

  v12 = 0u;
  v13 = 0u;
LABEL_8:
  v11[0] = v12;
  v11[1] = v13;
  if (*(&v13 + 1))
  {
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_100003E2C(v11, &qword_100028AB8, &qword_10001B0A0);
  }

  return 0;
}

uint64_t _s30com_apple_MLKit_MLModelPreview8DiskSizeO09formattedG02ofSS10Foundation3URLV_tFZ_0(uint64_t a1)
{
  v2 = 3157552;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028A88, &qword_10001B060);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  if (sub_1000027FC())
  {
    v7 = sub_100019958();
    v8 = *(v7 - 8);
    (*(v8 + 16))(v6, a1, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v10 = sub_1000031CC(v6);
    v12 = v11;
    sub_100003E2C(v6, &qword_100028A88, &qword_10001B060);
    if (v12)
    {
      return v2;
    }
  }

  else
  {
    v10 = sub_100003730();
    if (v9)
    {
      return v2;
    }
  }

  if (v10 >= 1)
  {
    v13 = [objc_allocWithZone(NSByteCountFormatter) init];
    [v13 setCountStyle:0];
    if (v10 > 0x3FE)
    {
      if (v10 >> 10 > 0x3FE)
      {
        if (vcvts_n_f32_u64(v10 >> 10, 0xAuLL) >= 1023.0)
        {
          [v13 setAllowedUnits:8];
        }

        else
        {
          [v13 setAllowedUnits:4];
        }

        v15 = [v13 stringFromByteCount:v10];
      }

      else
      {
        [v13 setAllowedUnits:2];
        v15 = [v13 stringFromByteCount:v10];
      }

      v16 = v15;
      v2 = sub_100019D08();
    }

    else
    {
      [v13 setAllowedUnits:1];
      v14 = [v13 stringFromByteCount:v10];
      v2 = sub_100019D08();
    }
  }

  return v2;
}

uint64_t sub_100003BF4(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_100003C50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100003C70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100003CCC()
{
  result = qword_100028AA8;
  if (!qword_100028AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028AA8);
  }

  return result;
}

unint64_t sub_100003D20()
{
  result = qword_100028AB0;
  if (!qword_100028AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028AB0);
  }

  return result;
}

unint64_t sub_100003D6C()
{
  result = qword_100028980;
  if (!qword_100028980)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028980);
  }

  return result;
}

uint64_t sub_100003DC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100003E2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019988();
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

    return (v10 + 1);
  }
}

uint64_t sub_100003F84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ClassLabel()
{
  result = qword_100028B20;
  if (!qword_100028B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000408C()
{
  result = sub_100019988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_100004100(uint64_t a1)
{
  sub_10001A008();
  sub_100019988();
  sub_100004468(&qword_100028B58, &type metadata accessor for UUID);
  sub_100019CB8();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_100019D38();
  return sub_10001A038();
}

uint64_t sub_1000041A8(uint64_t a1, uint64_t a2)
{
  sub_100019988();
  sub_100004468(&qword_100028B58, &type metadata accessor for UUID);
  sub_100019CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];

  return sub_100019D38();
}

Swift::Int sub_100004244(uint64_t a1, uint64_t a2)
{
  sub_10001A008();
  sub_100019988();
  sub_100004468(&qword_100028B58, &type metadata accessor for UUID);
  sub_100019CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_100019D38();
  return sub_10001A038();
}

uint64_t sub_1000042E8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100019988();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100004350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100019968() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_100019F78();
}

uint64_t sub_100004468(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000044CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100004514(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100004580@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  sub_100004B2C();

  v2 = sub_100019B88();
  v4 = v3;
  v6 = v5;
  sub_100019B08();
  v7 = sub_100019B78();
  v9 = v8;
  v11 = v10;

  sub_100004B80(v2, v4, v6 & 1);

  sub_100019B28();
  v12 = sub_100019B58();
  v14 = v13;
  v16 = v15;
  sub_100004B80(v7, v9, v11 & 1);

  v17 = objc_opt_self();
  v18 = [v17 labelColor];
  sub_100019C18();
  v19 = sub_100019B68();
  v21 = v20;
  v54 = v22;
  v24 = v23;

  sub_100004B80(v12, v14, v16 & 1);

  if (a1)
  {

    v25 = sub_100019B88();
    v27 = v26;
    v29 = v28;
    sub_100019AF8();
    v30 = sub_100019B78();
    v51 = v19;
    v53 = v24;
    v32 = v31;
    v34 = v33;

    sub_100004B80(v25, v27, v29 & 1);

    sub_100019B28();
    v50 = v21;
    v35 = sub_100019B58();
    v37 = v36;
    LOBYTE(v25) = v38;
    sub_100004B80(v30, v32, v34 & 1);

    v39 = [v17 labelColor];
    sub_100019C18();
    v40 = sub_100019B68();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v24 = v53;

    v47 = v35;
    v21 = v50;
    sub_100004B80(v47, v37, v25 & 1);

    v48 = v44 & 1;
    v19 = v51;
    sub_100004B90(v40, v42, v48);
  }

  else
  {
    v40 = 0;
    v42 = 0;
    v48 = 0;
    v46 = 0;
  }

  sub_100004B90(v19, v21, v54 & 1);

  sub_100004BA0(v40, v42, v48, v46);
  sub_100004BE4(v40, v42, v48, v46);
  *a2 = v19;
  *(a2 + 8) = v21;
  *(a2 + 16) = v54 & 1;
  *(a2 + 24) = v24;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v40;
  *(a2 + 56) = v42;
  *(a2 + 64) = v48;
  *(a2 + 72) = v46;
  sub_100004BE4(v40, v42, v48, v46);
  sub_100004B80(v19, v21, v54 & 1);
}

double sub_100004954@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = sub_100019AA8();
  v19 = 1;
  sub_100004580(v6, &v13);
  v22 = v15;
  v23 = v16;
  v20 = v13;
  v21 = v14;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[1] = v14;
  v24 = v17;
  v25[0] = v13;
  sub_100004A54(&v20, &v12);
  sub_100004AC4(v25);
  *&v18[7] = v20;
  *&v18[71] = v24;
  *&v18[55] = v23;
  *&v18[39] = v22;
  *&v18[23] = v21;
  v8 = *&v18[48];
  *(a1 + 49) = *&v18[32];
  *(a1 + 65) = v8;
  *(a1 + 81) = *&v18[64];
  result = *v18;
  v10 = *&v18[16];
  *(a1 + 17) = *v18;
  v11 = v19;
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 96) = *&v18[79];
  *(a1 + 33) = v10;
  return result;
}

uint64_t sub_100004A54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028B68, &qword_10001B298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004AC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028B68, &qword_10001B298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004B2C()
{
  result = qword_100028B70;
  if (!qword_100028B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B70);
  }

  return result;
}

uint64_t sub_100004B80(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004B90(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004BA0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100004B90(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100004BE4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100004B80(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100004C2C()
{
  result = qword_100028B78;
  if (!qword_100028B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028B80, &unk_10001B2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B78);
  }

  return result;
}

uint64_t sub_100004CA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019988();
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

    return (v10 + 1);
  }
}

uint64_t sub_100004D78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for ModelMetadataItem()
{
  result = qword_100028BE0;
  if (!qword_100028BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004E80()
{
  result = sub_100019988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100004EFC()
{
  v1 = type metadata accessor for ModelMetadataItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v53 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v52 = &v52 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v52 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = v0[13];
  v17 = v0[14];

  sub_100019978();
  v18 = &v15[*(v1 + 20)];
  strcpy(v18, "Availability");
  v18[13] = 0;
  *(v18 + 7) = -5120;
  v19 = &v15[*(v1 + 24)];
  *v19 = v16;
  *(v19 + 1) = v17;
  v20 = sub_10000B670(0, 1, 1, &_swiftEmptyArrayStorage);
  v22 = v20[2];
  v21 = v20[3];
  if (v22 >= v21 >> 1)
  {
    v20 = sub_10000B670(v21 > 1, v22 + 1, 1, v20);
  }

  v20[2] = v22 + 1;
  v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v24 = *(v2 + 72);
  sub_100005374(v15, v20 + v23 + v24 * v22);
  v25 = v0[9];
  v26 = v0[10];

  sub_100019978();
  v27 = &v13[*(v1 + 20)];
  *v27 = 0x7470697263736544;
  *(v27 + 1) = 0xEB000000006E6F69;
  v28 = &v13[*(v1 + 24)];
  *v28 = v25;
  *(v28 + 1) = v26;
  v30 = v20[2];
  v29 = v20[3];
  if (v30 >= v29 >> 1)
  {
    v20 = sub_10000B670(v29 > 1, v30 + 1, 1, v20);
  }

  v20[2] = v30 + 1;
  sub_100005374(v13, v20 + v23 + v30 * v24);
  v31 = v0[5];
  v32 = v0[6];

  sub_100019978();
  v33 = &v10[*(v1 + 20)];
  *v33 = 0x726F68747541;
  *(v33 + 1) = 0xE600000000000000;
  v34 = &v10[*(v1 + 24)];
  *v34 = v31;
  *(v34 + 1) = v32;
  v36 = v20[2];
  v35 = v20[3];
  if (v36 >= v35 >> 1)
  {
    v20 = sub_10000B670(v35 > 1, v36 + 1, 1, v20);
  }

  v37 = v52;
  v20[2] = v36 + 1;
  sub_100005374(v10, v20 + v23 + v36 * v24);
  v38 = v0[7];
  v39 = v0[8];

  sub_100019978();
  v40 = (v37 + *(v1 + 20));
  *v40 = 0x65736E6563694CLL;
  v40[1] = 0xE700000000000000;
  v41 = (v37 + *(v1 + 24));
  *v41 = v38;
  v41[1] = v39;
  v43 = v20[2];
  v42 = v20[3];
  if (v43 >= v42 >> 1)
  {
    v20 = sub_10000B670(v42 > 1, v43 + 1, 1, v20);
  }

  v20[2] = v43 + 1;
  sub_100005374(v37, v20 + v23 + v43 * v24);
  v45 = v0[11];
  v44 = v0[12];

  v46 = v53;
  sub_100019978();
  v47 = (v46 + *(v1 + 20));
  *v47 = 0x6E6F6973726556;
  v47[1] = 0xE700000000000000;
  v48 = (v46 + *(v1 + 24));
  *v48 = v45;
  v48[1] = v44;
  v50 = v20[2];
  v49 = v20[3];
  if (v50 >= v49 >> 1)
  {
    v20 = sub_10000B670(v49 > 1, v50 + 1, 1, v20);
  }

  v20[2] = v50 + 1;
  sub_100005374(v46, v20 + v23 + v50 * v24);
  return v20;
}

unint64_t sub_10000531C()
{
  result = qword_100028B58;
  if (!qword_100028B58)
  {
    sub_100019988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028B58);
  }

  return result;
}

uint64_t sub_100005374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelMetadataItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100005404(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10000544C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000054B8()
{
  v1 = 0x64696C61766E49;
  v2 = [v0 type];
  if (v2 > 3)
  {
    if (v2 <= 5)
    {
      if (v2 == 4)
      {
        v1 = 0x6E776F6E6B6E55;
        if (![v0 constraint])
        {
          return v1;
        }

        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = v10;
          v12 = [v10 imageSize];
          [v12 pixelsWide];

          v27[0] = sub_100019F68();
          v27[1] = v13;
          v31._countAndFlagsBits = 32;
          v31._object = 0xE100000000000000;
          sub_100019D48(v31);
          v32._countAndFlagsBits = 38851;
          v32._object = 0xA200000000000000;
          sub_100019D48(v32);
          v33._countAndFlagsBits = 32;
          v33._object = 0xE100000000000000;
          sub_100019D48(v33);
          v14 = [v11 imageSize];
          [v14 pixelsHigh];

          v34._countAndFlagsBits = sub_100019F68();
          sub_100019D48(v34);
          swift_unknownObjectRelease();

          return v27[0];
        }
      }

      else
      {
        v1 = 0x6E776F6E6B6E55;
        if (![v0 constraint])
        {
          return v1;
        }

        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (v3)
        {
          v4 = v3;
          sub_100019E88(17);

          strcpy(v27, "MultiArray (");
          BYTE5(v27[1]) = 0;
          HIWORD(v27[1]) = -5120;
          v5 = [v4 dataType];
          if (v5 > 65599)
          {
            if (v5 == 65600)
            {
              v7._countAndFlagsBits = 0x656C62756F44;
              v6 = 0xE600000000000000;
              goto LABEL_51;
            }

            if (v5 == 131104)
            {
              v6 = 0xE500000000000000;
              v7._countAndFlagsBits = 0x3233746E49;
              goto LABEL_51;
            }
          }

          else
          {
            if (v5 == 65552)
            {
              v6 = 0xE700000000000000;
              v7._countAndFlagsBits = 0x363174616F6C46;
              goto LABEL_51;
            }

            if (v5 == 65568)
            {
              v6 = 0xE700000000000000;
              v7._countAndFlagsBits = 0x323374616F6C46;
LABEL_51:
              v7._object = v6;
              sub_100019D48(v7);

              v20 = [v4 shape];
              sub_100005C00();
              v21 = sub_100019DA8();

              v22 = sub_100005C4C(v21);
              v24 = v23;

              v35._countAndFlagsBits = v22;
              v35._object = v24;
              sub_100019D48(v35);
              goto LABEL_52;
            }
          }

          v6 = 0xEC00000064657A69;
          v7._countAndFlagsBits = 0x6E676F6365726E55;
          goto LABEL_51;
        }
      }

LABEL_33:
      swift_unknownObjectRelease();
      return v1;
    }

    if (v2 != 6)
    {
      if (v2 != 7)
      {
        return 0x6E776F6E6B6E55;
      }

      v1 = 0x6E776F6E6B6E55;
      if (![v0 constraint])
      {
        return v1;
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        sub_100019E88(18);

        strcpy(v27, "Sequence (");
        BYTE3(v27[1]) = 0;
        HIDWORD(v27[1]) = -369098752;
        [v9 countRange];
        v28._countAndFlagsBits = sub_100019F68();
        sub_100019D48(v28);

        v29._countAndFlagsBits = 10911970;
        v29._object = 0xA300000000000000;
        sub_100019D48(v29);
        [v9 countRange];
        v30._countAndFlagsBits = sub_100019F68();
        sub_100019D48(v30);
LABEL_52:

        v25._countAndFlagsBits = 41;
        v25._object = 0xE100000000000000;
LABEL_59:
        sub_100019D48(v25);
        swift_unknownObjectRelease();
        return v27[0];
      }

      goto LABEL_33;
    }

    v15 = 0x6E776F6E6B6E55;
    if ([v0 constraint])
    {
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16)
      {
        v17 = v16;
        sub_100019E88(26);

        strcpy(v27, "Dictionary (");
        BYTE5(v27[1]) = 0;
        HIWORD(v27[1]) = -5120;
        v18 = [v17 keyType];
        if (v18 > 3)
        {
          if (v18 <= 5)
          {
            if (v18 == 4)
            {
              v19 = 0xE500000000000000;
              v15 = 0x6567616D49;
            }

            else
            {
              v15 = 0x72724169746C754DLL;
              v19 = 0xEA00000000007961;
            }

            goto LABEL_58;
          }

          if (v18 == 6)
          {
            v19 = 0xEA00000000007972;
            v15 = 0x616E6F6974636944;
            goto LABEL_58;
          }

          if (v18 == 7)
          {
            v19 = 0xE800000000000000;
            v15 = 0x65636E6575716553;
            goto LABEL_58;
          }
        }

        else
        {
          if (v18 > 1)
          {
            v19 = 0xE600000000000000;
            if (v18 == 2)
            {
              v15 = 0x656C62756F44;
            }

            else
            {
              v15 = 0x676E69727453;
            }

            goto LABEL_58;
          }

          if (!v18)
          {
            v19 = 0xE700000000000000;
            v15 = 0x64696C61766E49;
            goto LABEL_58;
          }

          if (v18 == 1)
          {
            v19 = 0xE500000000000000;
            v15 = 0x3436746E49;
LABEL_58:
            v36._countAndFlagsBits = v15;
            v36._object = v19;
            sub_100019D48(v36);

            v25._countAndFlagsBits = 0x756F44209286E220;
            v25._object = 0xAC00000029656C62;
            goto LABEL_59;
          }
        }

        v19 = 0xE700000000000000;
        goto LABEL_58;
      }

      swift_unknownObjectRelease();
    }

    return 0x6E776F6E6B6E55;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      return v1;
    }

    if (v2 == 1)
    {
      return 0x3436746E49;
    }

    return 0x6E776F6E6B6E55;
  }

  if (v2 == 2)
  {
    return 0x656C62756F44;
  }

  else
  {
    return 0x676E69727453;
  }
}

unint64_t sub_100005C00()
{
  result = qword_100028C20;
  if (!qword_100028C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028C20);
  }

  return result;
}

uint64_t sub_100005C4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_100019EF8();
    if (!result)
    {
      return result;
    }

    v2 = sub_100019EF8();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  result = sub_10000BB24(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_100019EA8();
      }

      else
      {
        v5 = *(a1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 description];
      v8 = sub_100019D08();
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10000BB24((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v8;
      v13[5] = v10;
    }

    while (v2 != v4);
LABEL_15:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C28, "j#");
    sub_100005E34();
    v14 = sub_100019CC8();
    v16 = v15;

    v17._countAndFlagsBits = v14;
    v17._object = v16;
    sub_100019D48(v17);

    return 32;
  }

  __break(1u);
  return result;
}

unint64_t sub_100005E34()
{
  result = qword_100028C30;
  if (!qword_100028C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028C28, "j#");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C30);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100005EAC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100005EF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005F60()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C58, &qword_10001B450);
  sub_100019988();
  sub_100006304();
  sub_1000062B0();
  sub_100006368();
  return sub_100019C58();
}

uint64_t sub_100006018@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ModelMetadataItem();
  v5 = *(v4 + 24);
  v6 = (a1 + *(v4 + 20));
  v8 = *v6;
  v7 = v6[1];
  v9 = a1 + v5;
  v10 = *(a1 + v5);
  v11 = *(v9 + 8);
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v11;
}

uint64_t sub_100006078@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000288B0 != -1)
  {
    swift_once();
  }

  sub_100004B2C();

  result = sub_100019B88();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10000611C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C38, &qword_10001B440);
  sub_100019C38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C40, &qword_10001B448);
  sub_10000622C();
  return sub_100019C68();
}

uint64_t sub_10000621C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_100005F60();
}

unint64_t sub_10000622C()
{
  result = qword_100028C48;
  if (!qword_100028C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028C40, &qword_10001B448);
    sub_1000062B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C48);
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_100028C50;
  if (!qword_100028C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C50);
  }

  return result;
}

unint64_t sub_100006304()
{
  result = qword_100028C60;
  if (!qword_100028C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028C58, &qword_10001B450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C60);
  }

  return result;
}

unint64_t sub_100006368()
{
  result = qword_100028C68;
  if (!qword_100028C68)
  {
    type metadata accessor for ModelMetadataItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C68);
  }

  return result;
}

unint64_t sub_1000063C4()
{
  result = qword_100028C70;
  if (!qword_100028C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028C78, &qword_10001B458);
    sub_10000622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C70);
  }

  return result;
}

unint64_t sub_10000645C()
{
  v3 = &SomeClass;
  v4 = [v0 modelDescription];
  v5 = &SomeClass;
  v6 = [v4 inputDescriptions];

  v7 = sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v8 = sub_100019DA8();

  if (v8 >> 62)
  {
LABEL_45:
    v9 = sub_100019EF8();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9 != 1)
  {
    return 0;
  }

  v10 = [v0 v3[139]];
  v11 = [v10 v5[15].base_prots];

  v12 = sub_100019DA8();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_100019EA8();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_48;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v1 = &SomeClass;
  v15 = [v14 type];

  if (v15 != 4 || (sub_1000096B0() & 1) == 0)
  {
    return 0;
  }

  v16 = [v0 v3[139]];
  v17 = [v16 outputDescriptions];

  v7 = sub_100019DA8();
  v2 = v7 & 0xFFFFFFFFFFFFFF8;
  if (!(v7 >> 62))
  {
    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_11;
  }

LABEL_48:
  v18 = sub_100019EF8();
LABEL_11:
  v19 = 0;
  do
  {
    if (v18 == v19)
    {

      return 0;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v20 = sub_100019EA8();
    }

    else
    {
      if (v19 >= *(v2 + 16))
      {
        goto LABEL_44;
      }

      v20 = *(v7 + 8 * v19 + 32);
    }

    v3 = v20;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = [v20 v1[14].ivar_lyt];

    ++v19;
  }

  while (v5 != 6);

  v22 = [v0 modelTypeName];
  v23 = sub_100019D08();
  v25 = v24;

  if (v23 == 0xD000000000000012 && 0x800000010001C650 == v25 || (sub_100019F78() & 1) != 0)
  {

    return sub_1000098FC();
  }

  else if (v23 == 0x7373616C436D6C67 && v25 == 0xED00007265696669 || (sub_100019F78() & 1) != 0 || v23 == 0xD000000000000017 && 0x800000010001C6F0 == v25 || (sub_100019F78() & 1) != 0 || v23 == 0xD000000000000016 && 0x800000010001C710 == v25 || (sub_100019F78() & 1) != 0 || v23 == 0xD000000000000017 && 0x800000010001C690 == v25 || (sub_100019F78() & 1) != 0 || v23 == 0xD00000000000001BLL && 0x800000010001C730 == v25)
  {

    return 1;
  }

  else
  {
    v26 = sub_100019F78();

    return v26 & 1;
  }
}

uint64_t sub_1000068C0()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v4 = sub_100019DA8();

  if (v4 >> 62)
  {
    goto LABEL_106;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_126:

    return 0;
  }

  while (1)
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) == 0)
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_86:

        v14 = v86;
LABEL_87:

        if ([v1 type] != 6)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        v67 = [v88 modelDescription];
        v68 = [v67 outputDescriptions];

        v45 = sub_100019DA8();
        if (v45 >> 62)
        {
          v69 = sub_100019EF8();
          if (v69)
          {
LABEL_90:
            v70 = 0;
            v87 = v69;
            v88 = (v45 & 0xC000000000000001);
            while (1)
            {
              if (v88)
              {
                v71 = sub_100019EA8();
              }

              else
              {
                if (v70 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_122;
                }

                v71 = *(v45 + 8 * v70 + 32);
              }

              v14 = v71;
              v72 = v70 + 1;
              if (__OFADD__(v70, 1))
              {
                __break(1u);
LABEL_122:
                __break(1u);
                goto LABEL_123;
              }

              v73 = [v71 name];
              v74 = sub_100019D08();
              v76 = v75;

              if (v74 == 0x74754F6574617473 && v76 == 0xE800000000000000)
              {
                break;
              }

              v78 = sub_100019F78();

              if (v78)
              {
                goto LABEL_109;
              }

              ++v70;
              v14 = v86;
              if (v72 == v87)
              {
                goto LABEL_129;
              }
            }

LABEL_109:

            if ([v14 type] == 5 && objc_msgSend(v89, "constraint"))
            {
              objc_opt_self();
              v79 = [swift_dynamicCastObjCClassUnconditional() shape];
              v80 = sub_100019DA8();

              v81 = swift_allocObject();
              *(v81 + 16) = v85;
              *(v81 + 32) = sub_100019E18(400);
              LOBYTE(v79) = sub_100009E74(v80, v81);

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              return v79 & 1;
            }

            swift_unknownObjectRelease();
LABEL_113:

            return 0;
          }
        }

        else
        {
          v69 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v69)
          {
            goto LABEL_90;
          }
        }

LABEL_129:

        goto LABEL_125;
      }

      v7 = *(v4 + 8 * v6 + 32);
      v1 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_7:
      v89 = v7;
      v8 = [v7 name];
      v9 = sub_100019D08();
      v11 = v10;

      if (v9 == 0x6E496574617473 && v11 == 0xE700000000000000)
      {
        goto LABEL_17;
      }

      v13 = sub_100019F78();

      if (v13)
      {
        goto LABEL_18;
      }

      ++v6;
      if (v1 == v5)
      {
        goto LABEL_126;
      }
    }

    v7 = sub_100019EA8();
    v1 = (v6 + 1);
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
LABEL_17:

LABEL_18:

    v14 = v89;
    if ([v89 type] != 5)
    {
      goto LABEL_113;
    }

    v15 = [v89 constraint];
    if (!v15)
    {
      goto LABEL_113;
    }

    v1 = v15;
    objc_opt_self();
    v16 = [swift_dynamicCastObjCClassUnconditional() shape];
    sub_10000A8A4(0, &qword_100028C20, NSNumber_ptr);
    v17 = sub_100019DA8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C88, &qword_10001B490);
    v18 = swift_allocObject();
    v85 = xmmword_10001B460;
    *(v18 + 16) = xmmword_10001B460;
    *(v18 + 32) = sub_100019E18(400);
    LOBYTE(v16) = sub_100009E74(v17, v18);

    if ((v16 & 1) == 0)
    {
      goto LABEL_64;
    }

    v19 = [v88 modelDescription];
    v20 = [v19 inputDescriptions];

    v21 = sub_100019DA8();
    v22 = v21;
    v90 = &_swiftEmptyArrayStorage;
    if (!(v21 >> 62))
    {
      v4 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }

LABEL_115:
    v83 = v22;
    v4 = sub_100019EF8();
    v22 = v83;
LABEL_23:
    if (!v4)
    {
      v37 = &_swiftEmptyArrayStorage;
      goto LABEL_41;
    }

    v23 = 0;
    v24 = v22 & 0xC000000000000001;
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    if (v24)
    {
      v26 = v22;
      v27 = sub_100019EA8();
    }

    else
    {
      if (v23 >= *(v25 + 16))
      {
        goto LABEL_105;
      }

      v26 = v22;
      v27 = *(v22 + 8 * v23 + 32);
    }

    v28 = v27;
    v29 = (v23 + 1);
    if (!__OFADD__(v23, 1))
    {
      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    v5 = sub_100019EF8();
    if (!v5)
    {
      goto LABEL_126;
    }
  }

  v1 = v4;
  v30 = [v27 name];
  v31 = sub_100019D08();
  v33 = v32;

  if (v31 == 0x6E496574617473 && v33 == 0xE700000000000000)
  {
  }

  else
  {
    v35 = sub_100019F78();

    if (v35)
    {
    }

    else
    {
      sub_100019EB8();
      v36 = v90[2];
      sub_100019ED8();
      sub_100019EE8();
      sub_100019EC8();
    }
  }

  v4 = v1;
  ++v23;
  v22 = v26;
  if (v29 != v1)
  {
    goto LABEL_27;
  }

  v14 = v89;
  v37 = v90;
LABEL_41:

  if ((v37 & 0x8000000000000000) != 0 || (v37 & 0x4000000000000000) != 0)
  {
    v38 = sub_100019EF8();
  }

  else
  {
    v38 = *(v37 + 16);
  }

  if (!v38)
  {
    goto LABEL_64;
  }

  v39 = [v88 modelDescription];
  v40 = [v39 outputDescriptions];

  v41 = sub_100019DA8();
  v42 = v41 >> 62 ? sub_100019EF8() : *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v42 != 3)
  {
    goto LABEL_64;
  }

  v43 = [v88 modelDescription];
  v44 = [v43 outputDescriptions];

  v45 = sub_100019DA8();
  if (v45 >> 62)
  {
    goto LABEL_119;
  }

  v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v46)
  {
LABEL_125:

    swift_unknownObjectRelease();
    goto LABEL_126;
  }

  while (2)
  {
    v47 = 0;
    v1 = (v45 & 0xFFFFFFFFFFFFFF8);
    while (2)
    {
      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = sub_100019EA8();
        v49 = v47 + 1;
        if (!__OFADD__(v47, 1))
        {
          goto LABEL_54;
        }

LABEL_63:
        __break(1u);
LABEL_64:

        goto LABEL_65;
      }

      if (v47 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_115;
      }

      v48 = *(v45 + 8 * v47 + 32);
      v49 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_63;
      }

LABEL_54:
      v86 = v48;
      v50 = [v48 name];
      v14 = sub_100019D08();
      v52 = v51;

      if (v14 != 0x6C6562616CLL || v52 != 0xE500000000000000)
      {
        v54 = sub_100019F78();

        if (v54)
        {
          goto LABEL_67;
        }

        ++v47;
        if (v49 == v46)
        {
          goto LABEL_125;
        }

        continue;
      }

      break;
    }

LABEL_67:

    v14 = v86;
    v55 = v89;
    if ([v86 type] == 3)
    {
      v56 = [v88 modelDescription];
      v57 = [v56 outputDescriptions];

      v45 = sub_100019DA8();
      if (!(v45 >> 62))
      {
        v58 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v58)
        {
          goto LABEL_70;
        }

LABEL_124:

        goto LABEL_125;
      }

LABEL_123:
      v58 = sub_100019EF8();
      if (!v58)
      {
        goto LABEL_124;
      }

LABEL_70:
      v59 = 0;
      v84 = v45 & 0xC000000000000001;
      while (2)
      {
        if (v84)
        {
          v60 = sub_100019EA8();
          v55 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          goto LABEL_74;
        }

        if (v59 < *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v60 = *(v45 + 8 * v59 + 32);
          v55 = (v59 + 1);
          if (__OFADD__(v59, 1))
          {
            goto LABEL_83;
          }

LABEL_74:
          v1 = v60;
          v61 = [v60 name];
          v62 = sub_100019D08();
          v64 = v63;

          if (v62 == 0xD000000000000010 && 0x800000010001C6D0 == v64)
          {
            goto LABEL_86;
          }

          v66 = sub_100019F78();

          v14 = v86;
          if (v66)
          {
            goto LABEL_87;
          }

          ++v59;
          if (v55 == v58)
          {
            goto LABEL_124;
          }

          continue;
        }

        break;
      }

      __break(1u);
LABEL_119:
      v22 = sub_100019EF8();
      v46 = v22;
      if (!v22)
      {
        goto LABEL_125;
      }

      continue;
    }

    break;
  }

LABEL_84:

LABEL_65:
  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_100007450()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v4 = sub_100019DA8();

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_71:
    v6 = sub_100019EF8();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = &SomeClass;
  do
  {
    if (v6 == v7)
    {
      goto LABEL_74;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_100019EA8();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_67;
      }

      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:

      return 0;
    }

    v1 = [v9 type];

    ++v7;
  }

  while (v1 != 4);

  v4 = [v56 modelDescription];
  v11 = [v4 outputDescriptions];

  v12 = sub_100019DA8();
  if (v12 >> 62)
  {
LABEL_73:
    v5 = sub_100019EF8();
    if (!v5)
    {
      goto LABEL_74;
    }
  }

  else
  {
    v5 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_74;
    }
  }

  v13 = 0;
  v14 = 0x6E656469666E6F63;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = sub_100019EA8();
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_28;
    }

LABEL_19:
    v1 = v15;
    v16 = [v15 name];
    v17 = v14;
    v18 = sub_100019D08();
    v20 = v19;

    if (v18 == v17 && v20 == 0xEA00000000006563)
    {
      goto LABEL_29;
    }

    v14 = v17;
    v22 = sub_100019F78();

    if (v22)
    {
      goto LABEL_30;
    }

    ++v13;
    if (v4 == v5)
    {
      goto LABEL_74;
    }
  }

  if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_71;
  }

  v15 = *(v12 + 8 * v13 + 32);
  v4 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_19;
  }

LABEL_28:
  __break(1u);
LABEL_29:

LABEL_30:

  v4 = v1;
  if ([v1 type] != 5)
  {
LABEL_47:

    return 0;
  }

  v12 = [v56 modelDescription];
  v23 = [v12 outputDescriptions];

  v24 = sub_100019DA8();
  if (v24 >> 62)
  {
    v25 = sub_100019EF8();
    if (v25)
    {
      goto LABEL_33;
    }

    goto LABEL_77;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
LABEL_77:

    goto LABEL_74;
  }

LABEL_33:
  v26 = 0;
  v27 = 0xEB00000000736574;
  v28 = 0x616E6964726F6F63;
  v55 = v24 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v29 = sub_100019EA8();
      v4 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      if (v26 >= *(v55 + 16))
      {
        __break(1u);
        goto LABEL_73;
      }

      v29 = *(v24 + 8 * v26 + 32);
      v4 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_46;
      }
    }

    v57 = v29;
    v12 = v28;
    v30 = v27;
    v31 = [(__objc2_class_ro *)v29 name];
    v32 = sub_100019D08();
    v34 = v33;

    v27 = v30;
    if (v32 == v12 && v34 == v30)
    {
      break;
    }

    v28 = v12;
    v36 = sub_100019F78();

    if (v36)
    {
      goto LABEL_49;
    }

    ++v26;
    if (v4 == v25)
    {
      goto LABEL_77;
    }
  }

LABEL_49:

  v8 = v57;
  if ([(__objc2_class_ro *)v57 type]!= 5)
  {
    goto LABEL_65;
  }

  v37 = [v56 modelTypeName];
  v38 = sub_100019D08();
  v40 = v39;

  if (v38 == 0x656E696C65706970 && v40 == 0xE800000000000000)
  {
  }

  else
  {
    v41 = sub_100019F78();

    if ((v41 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  v42 = [v56 subModels];
  if (!v42)
  {
LABEL_65:

    return 0;
  }

  v43 = v42;
  sub_10000A8A4(0, &qword_100028CA0, MIOModel_ptr);
  v44 = sub_100019DA8();

  if (v44 >> 62)
  {
    v45 = sub_100019EF8();
    if (!v45)
    {
      goto LABEL_79;
    }

LABEL_57:
    v46 = __OFSUB__(v45, 1);
    result = v45 - 1;
    if (v46)
    {
      __break(1u);
    }

    else if ((v44 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v48 = *(v44 + 8 * result + 32);
LABEL_62:
        v49 = v48;

        v50 = [v49 modelTypeName];

        v51 = sub_100019D08();
        v53 = v52;

        if (v51 == 0xD000000000000015 && 0x800000010001C6B0 == v53)
        {

          return 1;
        }

        else
        {
          v54 = sub_100019F78();

          return v54 & 1;
        }
      }

      __break(1u);
      return result;
    }

    v48 = sub_100019EA8();
    goto LABEL_62;
  }

  v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v45)
  {
    goto LABEL_57;
  }

LABEL_79:

LABEL_74:

  return 0;
}

void sub_100007B28()
{
  v2 = [v0 modelDescription];
  v3 = [v2 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v4 = sub_100019DA8();

  if (v4 >> 62)
  {
    v5 = sub_100019EF8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 != 1)
  {
    return;
  }

  v6 = [v0 modelDescription];
  v7 = [v6 inputDescriptions];

  v8 = sub_100019DA8();
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_100019EA8();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 type];

  if (v11 != 4)
  {
    return;
  }

  v12 = [v0 modelDescription];
  v1 = &SomeClass;
  v13 = [v12 outputDescriptions];

  v14 = sub_100019DA8();
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_19:
  v15 = sub_100019EF8();
LABEL_10:

  if (v15 == 1)
  {
    v16 = [v0 modelDescription];
    v17 = [v16 v1[15].ivars];

    v18 = sub_100019DA8();
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = sub_100019EA8();
      goto LABEL_14;
    }

    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v18 + 32);
LABEL_14:
      v20 = v19;

      [v20 type];

      return;
    }

    __break(1u);
  }
}

void sub_100007DCC()
{
  v2 = v0;
  v3 = &SomeClass;
  v4 = [v0 modelDescription];
  v5 = [v4 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v6 = sub_100019DA8();

  if (v6 >> 62)
  {
    v7 = sub_100019EF8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 == 1)
  {
    v8 = [v2 modelDescription];
    v9 = [v8 inputDescriptions];

    v10 = sub_100019DA8();
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_100019EA8();
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_44;
      }

      v11 = *(v10 + 32);
    }

    v8 = v11;

    if ([v8 type] != 5 || !objc_msgSend(v8, "constraint"))
    {
LABEL_37:

      return;
    }

    objc_opt_self();
    v12 = [swift_dynamicCastObjCClassUnconditional() shape];
    v10 = sub_10000A8A4(0, &qword_100028C20, NSNumber_ptr);
    v1 = sub_100019DA8();

    if (v1 >> 62)
    {
      goto LABEL_46;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) == 3)
    {
      do
      {
        v30 = v1 & 0xC000000000000001;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v13 = sub_100019EA8();
        }

        else
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
          {
            __break(1u);
            goto LABEL_52;
          }

          v13 = *(v1 + 40);
        }

        v14 = v13;
        isa = sub_100019E18(3).super.super.isa;
        v16 = sub_100019E28();

        if ((v16 & 1) == 0)
        {
          break;
        }

        if (v30)
        {
          v17 = sub_100019EA8();
        }

        else
        {
          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
          {
            __break(1u);
            return;
          }

          v17 = *(v1 + 48);
        }

        v18 = v17;
        v19 = sub_100019E18(17).super.super.isa;
        v20 = sub_100019E28();

        if (v20)
        {
        }

        else
        {
          if (v30)
          {
            v21 = sub_100019EA8();
          }

          else
          {
            v21 = *(v1 + 48);
          }

          v22 = v21;

          v23 = sub_100019E18(18).super.super.isa;
          v24 = sub_100019E28();

          if ((v24 & 1) == 0)
          {
            swift_unknownObjectRelease();
            goto LABEL_37;
          }
        }

        v25 = [v2 v3[15].base_meths];
        v2 = [v25 outputDescriptions];

        v10 = sub_100019DA8();
        if (!(v10 >> 62))
        {
          v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v3 = &SomeClass;
          if (!v26)
          {
            goto LABEL_53;
          }

          goto LABEL_27;
        }

LABEL_52:
        v26 = sub_100019EF8();
        v3 = &SomeClass;
        if (!v26)
        {
LABEL_53:

          swift_unknownObjectRelease();
          goto LABEL_48;
        }

LABEL_27:
        v1 = 0;
        while (1)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v27 = sub_100019EA8();
          }

          else
          {
            if (v1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v27 = *(v10 + 8 * v1 + 32);
          }

          v2 = v27;
          v28 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if ([v27 v3[14].ivar_lyt] == 6)
          {

            if ([v2 constraint])
            {
              objc_opt_self();
              v29 = swift_dynamicCastObjCClassUnconditional();
              swift_unknownObjectRetain();
              [v29 keyType];

              swift_unknownObjectRelease_n();
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();
            }

            return;
          }

          ++v1;
          if (v28 == v26)
          {
            goto LABEL_53;
          }
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        ;
      }

      while (sub_100019EF8() == 3);
    }

    swift_unknownObjectRelease();

LABEL_48:
  }
}

void sub_10000830C()
{
  v1 = [v0 modelTypeName];
  v2 = sub_100019D08();
  v4 = v3;

  if (v2 == 0xD000000000000012 && 0x800000010001C650 == v4)
  {
  }

  else
  {
    v6 = sub_100019F78();

    if ((v6 & 1) == 0)
    {
      return;
    }
  }

  v7 = [v0 subModels];
  if (v7)
  {
    v8 = v7;
    sub_10000A8A4(0, &qword_100028CA0, MIOModel_ptr);
    v9 = sub_100019DA8();

    if (v9 >> 62)
    {
      v10 = sub_100019EF8();
      if (!v10)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
LABEL_40:

        return;
      }
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = sub_100019EA8();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v11 = *(v9 + 32);
    }

    v12 = v11;
    v13 = [v11 modelTypeName];

    v14 = sub_100019D08();
    v16 = v15;

    v17 = v10 - 1;
    if (!__OFSUB__(v10, 1))
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v18 = sub_100019EA8();
        goto LABEL_21;
      }

      if ((v17 & 0x8000000000000000) == 0)
      {
        if (v17 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v18 = *(v9 + 8 * v17 + 32);
LABEL_21:
          v19 = v18;

          v20 = [v19 modelTypeName];

          v21 = sub_100019D08();
          v23 = v22;

          v24 = v14 == 0xD00000000000001ALL && 0x800000010001C670 == v16;
          v25 = v24;
          if (v24 || (sub_100019F78() & 1) != 0)
          {
            if (v21 == 0x7373616C436D6C67 && v23 == 0xED00007265696669 || (sub_100019F78() & 1) != 0)
            {
              goto LABEL_36;
            }

            if (v25)
            {
LABEL_34:
              if (v21 != 0xD000000000000017 || 0x800000010001C690 != v23)
              {
                sub_100019F78();

                goto LABEL_40;
              }

              goto LABEL_36;
            }
          }

          if (sub_100019F78())
          {
            goto LABEL_34;
          }

LABEL_36:

          goto LABEL_40;
        }

LABEL_45:
        __break(1u);
        return;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

uint64_t sub_100008644()
{
  v1 = [v0 modelTypeName];
  v2 = sub_100019D08();
  v4 = v3;

  if (v2 == 0xD000000000000012 && 0x800000010001C650 == v4)
  {
  }

  else
  {
    v6 = sub_100019F78();

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  result = [v0 subModels];
  if (!result)
  {
    return result;
  }

  v8 = result;
  sub_10000A8A4(0, &qword_100028CA0, MIOModel_ptr);
  v9 = sub_100019DA8();

  if (v9 >> 62)
  {
    result = sub_100019EF8();
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_100019EA8();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;
  v12 = [v10 modelTypeName];

  v13 = sub_100019D08();
  v15 = v14;

  if (v13 == 0xD000000000000011 && 0x800000010001C610 == v15)
  {

    goto LABEL_18;
  }

  v16 = sub_100019F78();

  if ((v16 & 1) == 0)
  {
LABEL_27:

    return 0;
  }

LABEL_18:
  if ((v9 & 0xC000000000000001) == 0)
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v17 = *(v9 + 40);
      goto LABEL_22;
    }

LABEL_32:
    __break(1u);
    return result;
  }

  v17 = sub_100019EA8();
LABEL_22:
  v18 = v17;

  v19 = [v18 modelTypeName];

  v20 = sub_100019D08();
  v22 = v21;

  if (v20 == 0x7373616C436D6C67 && v22 == 0xED00007265696669)
  {

    return 1;
  }

  else
  {
    v23 = sub_100019F78();

    return v23 & 1;
  }
}

uint64_t sub_100008914()
{
  v1 = [v0 modelTypeName];
  v2 = sub_100019D08();
  v4 = v3;

  if (v2 == 0xD000000000000011 && 0x800000010001C5F0 == v4)
  {
  }

  else
  {
    v6 = sub_100019F78();

    if ((v6 & 1) == 0)
    {
      LOBYTE(v7) = 0;
      return v7 & 1;
    }
  }

  v7 = [v0 subModels];
  if (!v7)
  {
    return v7 & 1;
  }

  sub_10000A8A4(0, &qword_100028CA0, MIOModel_ptr);
  v8 = sub_100019DA8();

  if (v8 >> 62)
  {
    result = sub_100019EF8();
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 2)
    {
      goto LABEL_27;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_100019EA8();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;
  v12 = [v10 modelTypeName];

  v13 = sub_100019D08();
  v15 = v14;

  if (v13 != 0xD000000000000011 || 0x800000010001C610 != v15)
  {
    v16 = sub_100019F78();

    if (v16)
    {
      goto LABEL_18;
    }

LABEL_27:
    LOBYTE(v7) = 0;
LABEL_28:

    return v7 & 1;
  }

LABEL_18:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v17 = sub_100019EA8();
LABEL_22:
    v18 = v17;

    v19 = [v18 modelTypeName];

    v20 = sub_100019D08();
    v22 = v21;

    if (v20 == 0xD000000000000015 && 0x800000010001C630 == v22)
    {
      LOBYTE(v7) = 1;
    }

    else
    {
      LOBYTE(v7) = sub_100019F78();
    }

    goto LABEL_28;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v17 = *(v8 + 40);
    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

BOOL sub_100008BCC()
{
  v2 = v0;
  v3 = &SomeClass;
  v4 = [v0 modelDescription];
  v5 = [v4 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v6 = sub_100019DA8();

  if (v6 >> 62)
  {
    v7 = sub_100019EF8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 != 1)
  {
    return 0;
  }

  v8 = [v2 modelDescription];
  v9 = [v8 inputDescriptions];

  v10 = sub_100019DA8();
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v11 = sub_100019EA8();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v11 = *(v10 + 32);
  }

  v8 = v11;

  v1 = &SomeClass;
  if ([v8 type] != 5 || !objc_msgSend(v8, "constraint"))
  {

    return 0;
  }

  objc_opt_self();
  v12 = [swift_dynamicCastObjCClassUnconditional() shape];
  sub_10000A8A4(0, &qword_100028C20, NSNumber_ptr);
  v13 = sub_100019DA8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C88, &qword_10001B490);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10001B470;
  *(v14 + 32) = sub_100019E18(1);
  *(v14 + 40) = sub_100019E18(3);
  *(v14 + 48) = sub_100019E18(21);
  v15 = sub_100009E74(v13, v14);

  if ((v15 & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v16 = [v2 v3[15].base_meths];
  v2 = [v16 outputDescriptions];

  v10 = sub_100019DA8();
  if (!(v10 >> 62))
  {
    v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_33:

    swift_unknownObjectRelease();

    return 0;
  }

LABEL_32:
  v17 = sub_100019EF8();
  if (!v17)
  {
    goto LABEL_33;
  }

LABEL_12:
  v18 = 0;
  v3 = (v10 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v19 = sub_100019EA8();
    }

    else
    {
      if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v19 = *(v10 + 8 * v18 + 32);
    }

    v2 = v19;
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if ([v19 v1[14].ivar_lyt] == 6)
    {
      break;
    }

    ++v18;
    if (v20 == v17)
    {
      goto LABEL_33;
    }
  }

  if ([v2 constraint])
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClassUnconditional();
    swift_unknownObjectRetain();
    v23 = [v22 keyType];

    swift_unknownObjectRelease_n();
    swift_unknownObjectRelease();
    return v23 == 3;
  }

  swift_unknownObjectRelease();
  return 0;
}

uint64_t sub_100009014()
{
  v3 = v0;
  v4 = [v0 modelDescription];
  v5 = [v4 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v6 = sub_100019DA8();

  if (v6 >> 62)
  {
    v7 = sub_100019EF8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 != 1)
  {
    return 0;
  }

  v8 = [v3 modelDescription];
  v9 = [v8 inputDescriptions];

  v10 = sub_100019DA8();
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_61:
    v11 = sub_100019EA8();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  if ([v12 type] != 5 || !objc_msgSend(v12, "constraint"))
  {

    return 0;
  }

  v52 = v12;
  objc_opt_self();
  v13 = [swift_dynamicCastObjCClassUnconditional() shape];
  v10 = sub_10000A8A4(0, &qword_100028C20, NSNumber_ptr);
  v2 = sub_100019DA8();

  v1 = v2 >> 62;
  if (!(v2 >> 62))
  {
    v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v14 != 0;
    if (v14 >= v15)
    {
      goto LABEL_11;
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

LABEL_63:
  result = sub_100019EF8();
  if (result < 0)
  {
    goto LABEL_75;
  }

  v14 = result;
  v15 = result != 0;
  if (sub_100019EF8() < v15)
  {
    goto LABEL_67;
  }

  if (sub_100019EF8() < v14)
  {
    __break(1u);
    goto LABEL_67;
  }

LABEL_11:
  if ((v2 & 0xC000000000000001) != 0)
  {

    if (v14 >= 2)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        sub_100019E98(v16);
        v16 = v17;
      }

      while (v14 != v17);
    }
  }

  else
  {
  }

  if (v1)
  {
    sub_100019F08();
    v18 = v19;
    v15 = v20;
    v22 = v21;

    v14 = v22 >> 1;
  }

  else
  {
    v18 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C88, &qword_10001B490);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10001B480;
  *(v23 + 32) = sub_100019E18(3);
  *(v23 + 40) = sub_100019E18(21);
  result = sub_10000A0C4(v23);
  v28 = v14 - v15;
  if (__OFSUB__(v14, v15))
  {
    goto LABEL_68;
  }

  v29 = v26;
  v30 = v27 >> 1;
  v31 = (v27 >> 1) - v26;
  if (__OFSUB__(v27 >> 1, v26))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (v28 != v31)
  {
LABEL_41:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_42:

    swift_unknownObjectRelease();
    return 0;
  }

  if (!v28 || (v32 = (v18 + 8 * v15), v51 = (v25 + 8 * v26), v32 == v51) || v15 == v14)
  {
LABEL_43:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v39 = [v3 modelDescription];
    v40 = [v39 outputDescriptions];

    v10 = sub_100019DA8();
    if (!(v10 >> 62))
    {
      v41 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v42 = &SomeClass;
      if (!v41)
      {
LABEL_73:

        swift_unknownObjectRelease();

        return 0;
      }

LABEL_45:
      v43 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v44 = sub_100019EA8();
        }

        else
        {
          if (v43 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v44 = *(v10 + 8 * v43 + 32);
        }

        v3 = v44;
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        if ([v44 v42[14].ivar_lyt] == 6)
        {
          break;
        }

        ++v43;
        if (v45 == v41)
        {
          goto LABEL_73;
        }
      }

      if ([v3 constraint])
      {
        objc_opt_self();
        v46 = swift_dynamicCastObjCClassUnconditional();
        swift_unknownObjectRetain();
        v47 = [v46 keyType];

        swift_unknownObjectRelease_n();
        swift_unknownObjectRelease();
        return v47 == 3;
      }

      swift_unknownObjectRelease();
      return 0;
    }

LABEL_72:
    v41 = sub_100019EF8();
    v42 = &SomeClass;
    if (!v41)
    {
      goto LABEL_73;
    }

    goto LABEL_45;
  }

  if (v15 < v14)
  {
    v33 = *v32;
    if (v29 != v30)
    {
      v34 = v32;
      v35 = 0;
      if (v29 <= v30)
      {
        v36 = v30;
      }

      else
      {
        v36 = v29;
      }

      v48 = v34 + 1;
      v49 = v15 + 1;
      v50 = v36 - v29;
      while (v50 != v35)
      {
        v37 = v51[v35];
        v38 = sub_100019E28();

        if ((v38 & 1) == 0)
        {
          goto LABEL_41;
        }

        if (~v15 + v14 == v35)
        {
          goto LABEL_43;
        }

        if (v49 + v35 < v15 || v49 + v35 >= v14)
        {
          goto LABEL_71;
        }

        v33 = v48[v35++];
        if (v31 == v35)
        {
          goto LABEL_40;
        }
      }

      goto LABEL_70;
    }

LABEL_40:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_42;
  }

  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1000096B0()
{
  v1 = v0;
  v2 = [v0 modelDescription];
  v3 = [v2 predictedFeatureName];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_100019D08();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v8 = [v1 modelDescription];
    v9 = [v8 outputDescriptions];

    sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
    v10 = sub_100019DA8();

    if (v10 >> 62)
    {
LABEL_28:
      v23 = v10 & 0xFFFFFFFFFFFFFF8;
      v11 = sub_100019EF8();
    }

    else
    {
      v23 = v10 & 0xFFFFFFFFFFFFFF8;
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    while (1)
    {
      if (v11 == v12)
      {

        goto LABEL_22;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_100019EA8();
      }

      else
      {
        if (v12 >= *(v23 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v15 = [v13 name];
      v16 = sub_100019D08();
      v18 = v17;

      if (v16 == v4 && v18 == v6)
      {
        break;
      }

      v20 = sub_100019F78();

      ++v12;
      if (v20)
      {

        v21 = 1;
        goto LABEL_24;
      }
    }

    v21 = 1;
  }

  else
  {
LABEL_22:
    v21 = 0;
  }

LABEL_24:

  return v21;
}

unint64_t sub_1000098FC()
{
  result = [v0 subModels];
  if (!result)
  {
    return result;
  }

  v2 = result;
  sub_10000A8A4(0, &qword_100028CA0, MIOModel_ptr);
  v3 = sub_100019DA8();

  if (v3 >> 62)
  {
    if (sub_100019EF8() != 2)
    {
      goto LABEL_7;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) != 2)
  {
    goto LABEL_7;
  }

  v4 = [v0 modelDescription];
  v5 = [v4 outputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v6 = sub_100019DA8();

  if (v6 >> 62)
  {
    v7 = sub_100019EF8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7 >= 3)
  {
    goto LABEL_7;
  }

  v8 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v9 = sub_100019EA8();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v9 = *(v3 + 32);
  }

  v10 = v9;
  v11 = [v9 modelTypeName];

  v12 = sub_100019D08();
  v14 = v13;

  if (v12 == 0xD000000000000012 && 0x800000010001C750 == v14)
  {
    goto LABEL_13;
  }

  v15 = sub_100019F78();

  if ((v15 & 1) == 0)
  {
    if (v8)
    {
      v16 = sub_100019EA8();
    }

    else
    {
      v16 = *(v3 + 32);
    }

    v17 = v16;
    v18 = [v16 modelTypeName];

    v19 = sub_100019D08();
    v21 = v20;

    if (v19 == 0x654E6C617275656ELL && v21 == 0xED00006B726F7774)
    {
      goto LABEL_13;
    }

    v22 = sub_100019F78();

    if ((v22 & 1) == 0)
    {
      if (v8)
      {
        v30 = sub_100019EA8();
      }

      else
      {
        v30 = *(v3 + 32);
      }

      v31 = v30;
      v32 = [v30 modelTypeName];

      v33 = sub_100019D08();
      v35 = v34;

      if (v33 == 0x6F4D6D6F74737563 && v35 == 0xEB000000006C6564)
      {
LABEL_13:

        goto LABEL_22;
      }

      v36 = sub_100019F78();

      if ((v36 & 1) == 0)
      {
LABEL_7:

        return 0;
      }
    }
  }

LABEL_22:
  if (v3 >> 62)
  {
    result = sub_100019EF8();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!result)
  {
    goto LABEL_61;
  }

  if (__OFSUB__(result--, 1))
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v8)
  {
    v24 = sub_100019EA8();
    goto LABEL_32;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if (result >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    __break(1u);
    return result;
  }

  v24 = *(v3 + 8 * result + 32);
LABEL_32:
  v25 = v24;

  v26 = [v25 modelTypeName];

  v27 = sub_100019D08();
  v29 = v28;

  if (v27 == 0x7373616C436D6C67 && v29 == 0xED00007265696669 || (sub_100019F78() & 1) != 0 || v27 == 0xD000000000000017 && 0x800000010001C6F0 == v29 || (sub_100019F78() & 1) != 0 || v27 == 0xD000000000000016 && 0x800000010001C710 == v29 || (sub_100019F78() & 1) != 0 || v27 == 0xD000000000000017 && 0x800000010001C690 == v29 || (sub_100019F78() & 1) != 0 || v27 == 0xD00000000000001BLL && 0x800000010001C730 == v29)
  {

    return 1;
  }

  else
  {
    v37 = sub_100019F78();

    return v37 & 1;
  }
}

uint64_t sub_100009E74(unint64_t a1, uint64_t a2)
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

    v4 = sub_10000A8A4(0, &qword_100028C20, NSNumber_ptr);
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
          v15 = sub_100019EA8();
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

        v16 = sub_100019EA8();
LABEL_26:
        v17 = v16;
        v18 = sub_100019E28();

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
      v18 = sub_100019E28();

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
    v5 = sub_100019EF8();
  }

  result = sub_100019EF8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

void *sub_10000A0C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_100019EF8();
    if (v4)
    {
      v5 = v4;
      v6 = sub_10000A16C(v4, 0);
      sub_10000A278((v6 + 4), v5, a1);
      v8 = v7;

      result = v6;
      if (v8 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    result = &_swiftEmptyArrayStorage;
    goto LABEL_3;
  }

  result = (a1 & 0xFFFFFFFFFFFFFF8);
LABEL_3:
  v2 = (2 * result[2]) | 1;
  return result;
}

void *sub_10000A16C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C88, &qword_10001B490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10000A1F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CA8, &qword_10001B4A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_10000A278(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100019EF8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100019EF8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000A83C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C90, &qword_10001B498);
            v9 = sub_10000A408(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000A8A4(0, &qword_100028C20, NSNumber_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_10000A408(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100019EA8();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10000A488;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000A490(void *a1)
{
  if (sub_10000645C())
  {
    return 0x616C436567616D69;
  }

  if (sub_1000068C0())
  {
    return 0xD000000000000012;
  }

  if (sub_100007450())
  {
    return 0x65447463656A626FLL;
  }

  sub_100007B28();
  if (v3)
  {
    return 0x617254656C797473;
  }

  sub_100007DCC();
  if (v4)
  {
    return 0xD000000000000010;
  }

  sub_10000830C();
  if (v5)
  {
    return 0x616C43646E756F73;
  }

  if (sub_100008644())
  {
    return 0xD000000000000011;
  }

  if (sub_100008914())
  {
    return 0xD000000000000010;
  }

  v6 = [a1 modelTypeName];
  v7 = sub_100019D08();
  v9 = v8;

  if (v7 == 0xD000000000000019 && 0x800000010001C5D0 == v9)
  {

    return 0x6E656D6D6F636572;
  }

  v10 = sub_100019F78();

  result = 0x6E656D6D6F636572;
  if ((v10 & 1) == 0)
  {
    v11 = [a1 modelTypeName];
    v12 = sub_100019D08();
    v14 = v13;

    v15 = 0x73616C4374786574;
    if (v12 == 0x73616C4374786574 && v14 == 0xEE00726569666973)
    {
      goto LABEL_23;
    }

    v16 = sub_100019F78();

    result = 0x73616C4374786574;
    if ((v16 & 1) == 0)
    {
      v17 = [a1 modelTypeName];
      v18 = sub_100019D08();
      v20 = v19;

      v15 = 0x6767615464726F77;
      if (v18 == 0x6767615464726F77 && v20 == 0xEA00000000007265)
      {
LABEL_23:

        return v15;
      }

      v21 = sub_100019F78();

      result = 0x6767615464726F77;
      if ((v21 & 1) == 0)
      {
        if (sub_100008BCC())
        {
          return 0xD000000000000012;
        }

        else if (sub_100009014())
        {
          return 0xD000000000000014;
        }

        else
        {
          v22 = [a1 modelTypeName];
          v23 = sub_100019D08();

          return v23;
        }
      }
    }
  }

  return result;
}

unint64_t sub_10000A83C()
{
  result = qword_100028C98;
  if (!qword_100028C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_100028C90, &qword_10001B498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C98);
  }

  return result;
}

uint64_t sub_10000A8A4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MLFeatureFlags(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10000A9E0()
{
  result = qword_100028CB0;
  if (!qword_100028CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CB0);
  }

  return result;
}

Swift::Int sub_10000AA3C()
{
  sub_10001A008();
  sub_10001A018(0);
  return sub_10001A038();
}

Swift::Int sub_10000AAA8()
{
  sub_10001A008();
  sub_10001A018(0);
  return sub_10001A038();
}

__n128 ModelHeuristics.availabilityOfSpecification.getter@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000C11C(a1, v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

__n128 ModelHeuristics.OSAvailability.init(macOS:iOS:watchOS:tvOS:visionOS:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u64[0] = a3;
  v15.n128_u64[1] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10;
  v19[0] = a1;
  v19[1] = a2;
  v19[2] = a3;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a6;
  v19[6] = a7;
  v19[7] = a8;
  v20 = a10;
  sub_10000C368(&v14, &v13);
  sub_10000C3A0(v19);
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.macOS.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.macOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.iOS.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.iOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.watchOS.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.watchOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.tvOS.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.tvOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.visionOS.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t ModelHeuristics.OSAvailability.visionOS.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ModelHeuristics.OSAvailability.pairs.getter()
{
  v1 = *v0;
  v35 = v0[1];
  v36 = v1;
  v19 = v1;
  v22 = v35;
  v2 = v0[2];
  v33 = v0[3];
  v34 = v2;
  v25 = v2;
  v3 = v0[4];
  v28 = v0[3];
  v18[6] = 0x534F63616DLL;
  v18[7] = 0xE500000000000000;
  v20 = 5459817;
  v21 = 0xE300000000000000;
  v23 = 0x534F6863746177;
  v24 = 0xE700000000000000;
  v26 = 1397716596;
  v27 = 0xE400000000000000;
  v29 = 0x534F6E6F69736976;
  v30 = 0xE800000000000000;
  v32 = v3;
  v31 = v0[4];
  sub_10000C3D0(&v36, v18);
  sub_10000C3D0(&v35, v18);
  sub_10000C3D0(&v34, v18);
  sub_10000C3D0(&v33, v18);
  result = sub_10000C3D0(&v32, v18);
  v5 = 0;
  v6 = &_swiftEmptyArrayStorage;
LABEL_2:
  if (v5 <= 5)
  {
    v7 = 5;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  v9 = &v18[4 * v5 + 2];
  while (1)
  {
    if (v5 == 5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CC0, &qword_10001B6F8);
      swift_arrayDestroy();
      return v6;
    }

    if (v8 == ++v5)
    {
      break;
    }

    v10 = v9 + 4;
    v11 = v9[7];
    v9 += 4;
    if (v11)
    {
      v13 = *v10;
      v12 = v10[1];
      v14 = v10[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10000B698(0, v6[2] + 1, 1, v6);
        v6 = result;
      }

      v16 = v6[2];
      v15 = v6[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_10000B698((v15 > 1), v16 + 1, 1, v6);
        v6 = result;
      }

      v6[2] = v16 + 1;
      v17 = &v6[4 * v16];
      v17[4] = v13;
      v17[5] = v12;
      v17[6] = v14;
      v17[7] = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *ModelHeuristics.OSAvailability.components.getter()
{
  v1 = ModelHeuristics.OSAvailability.pairs.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10000C368(v0, &v15);
    v17 = &_swiftEmptyArrayStorage;
    result = sub_10000BB24(0, v2, 0);
    v4 = 0;
    v5 = v17;
    v6 = (v1 + 56);
    while (v4 < *(v1 + 16))
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v15 = *(v6 - 3);
      v16 = v7;
      swift_bridgeObjectRetain_n();

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      sub_100019D48(v18);
      v19._countAndFlagsBits = v8;
      v19._object = v9;
      sub_100019D48(v19);
      v20._countAndFlagsBits = 43;
      v20._object = 0xE100000000000000;
      sub_100019D48(v20);

      v10 = v15;
      v11 = v16;
      v17 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_10000BB24((v12 > 1), v13 + 1, 1);
        v5 = v17;
      }

      ++v4;
      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v6 += 4;
      if (v2 == v4)
      {

        sub_10000C3A0(v0);
        return v5;
      }
    }

    __break(1u);
  }

  else
  {
    sub_10000C368(v0, &v15);

    sub_10000C3A0(v0);
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t ModelHeuristics.OSAvailability.description.getter()
{
  v1 = ModelHeuristics.OSAvailability.pairs.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_10000C368(v0, &v16);
    v18 = &_swiftEmptyArrayStorage;
    result = sub_10000BB24(0, v2, 0);
    v4 = 0;
    v5 = v18;
    v6 = (v1 + 56);
    while (v4 < *(v1 + 16))
    {
      v7 = *(v6 - 2);
      v8 = *(v6 - 1);
      v9 = *v6;
      v16 = *(v6 - 3);
      v17 = v7;
      swift_bridgeObjectRetain_n();

      v19._countAndFlagsBits = 32;
      v19._object = 0xE100000000000000;
      sub_100019D48(v19);
      v20._countAndFlagsBits = v8;
      v20._object = v9;
      sub_100019D48(v20);
      v21._countAndFlagsBits = 43;
      v21._object = 0xE100000000000000;
      sub_100019D48(v21);

      v10 = v16;
      v11 = v17;
      v18 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_10000BB24((v12 > 1), v13 + 1, 1);
        v5 = v18;
      }

      ++v4;
      v5[2] = v13 + 1;
      v14 = &v5[2 * v13];
      v14[4] = v10;
      v14[5] = v11;
      v6 += 4;
      if (v2 == v4)
      {

        sub_10000C3A0(v0);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    sub_10000C368(v0, &v16);

    sub_10000C3A0(v0);
    v5 = &_swiftEmptyArrayStorage;
LABEL_9:
    v16 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C28, "j#");
    sub_100005E34();
    v15 = sub_100019CC8();

    return v15;
  }

  return result;
}

void ModelHeuristics.OSAvailability.hash(into:)()
{
  if (v0[1])
  {
    v1 = *v0;
    sub_10001A028(1u);
    sub_100019D38();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10001A028(0);
    if (v0[3])
    {
LABEL_3:
      v2 = v0[2];
      sub_10001A028(1u);
      sub_100019D38();
      if (v0[5])
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_10001A028(0);
  if (v0[5])
  {
LABEL_4:
    v3 = v0[4];
    sub_10001A028(1u);
    sub_100019D38();
    if (v0[7])
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_10001A028(0);
    if (v0[9])
    {
      goto LABEL_6;
    }

LABEL_13:
    sub_10001A028(0);
    return;
  }

LABEL_11:
  sub_10001A028(0);
  if (!v0[7])
  {
    goto LABEL_12;
  }

LABEL_5:
  v4 = v0[6];
  sub_10001A028(1u);
  sub_100019D38();
  if (!v0[9])
  {
    goto LABEL_13;
  }

LABEL_6:
  v5 = v0[8];
  sub_10001A028(1u);

  sub_100019D38();
}

Swift::Int ModelHeuristics.OSAvailability.hashValue.getter()
{
  sub_10001A008();
  ModelHeuristics.OSAvailability.hash(into:)();
  return sub_10001A038();
}

Swift::Int sub_10000B594()
{
  sub_10001A008();
  ModelHeuristics.OSAvailability.hash(into:)();
  return sub_10001A038();
}

uint64_t sub_10000B5D0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v2 = *v0;
  v3 = v0[1];
  return ModelHeuristics.OSAvailability.description.getter();
}

uint64_t sub_10000B614(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s30com_apple_MLKit_MLModelPreview15ModelHeuristicsV14OSAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(v8, v9) & 1;
}

void *sub_10000B698(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CD8, &qword_10001B7F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CE0, &qword_10001B7F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000B7CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CF8, &unk_10001B9C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

size_t sub_10000B948(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10000BB24(char *a1, int64_t a2, char a3)
{
  result = sub_10000BB44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000BB44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CD0, &qword_10001B7E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000BC50(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028D10, &unk_10001B820);
  v10 = *(type metadata accessor for ModelMetadataItem() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ModelMetadataItem() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10000BE28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CA8, &qword_10001B4A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028D00, &qword_10001B810);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s30com_apple_MLKit_MLModelPreview15ModelHeuristicsV14OSAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = *a1;
      v7 = a2;
      v8 = sub_100019F78();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v10 = a1[3];
  v11 = a2[3];
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v10 != v11)
    {
      v12 = a1;
      v13 = a1[2];
      v14 = a2;
      v15 = sub_100019F78();
      a2 = v14;
      v16 = v15;
      a1 = v12;
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  v17 = a1[5];
  v18 = a2[5];
  if (v17)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v17 != v18)
    {
      v19 = a1;
      v20 = a1[4];
      v21 = a2;
      v22 = sub_100019F78();
      a2 = v21;
      v23 = v22;
      a1 = v19;
      if ((v23 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  v24 = a1[7];
  v25 = a2[7];
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v24 != v25)
    {
      v26 = a1;
      v27 = a1[6];
      v28 = a2;
      v29 = sub_100019F78();
      a2 = v28;
      v30 = v29;
      a1 = v26;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v31 = a1[9];
  v32 = a2[9];
  if (v31)
  {
    if (v32 && (a1[8] == a2[8] && v31 == v32 || (sub_100019F78() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v32)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10000C11C@<X0>(uint64_t result@<X0>, __int128 *a2@<X8>)
{
  v3 = xmmword_10001B560;
  v4 = 0uLL;
  if (result > 4)
  {
    if (result <= 6)
    {
      if (result == 5)
      {
        v8 = xmmword_10001B580;
        v9 = xmmword_10001B640;
        v12 = xmmword_10001B580;
        *v13 = xmmword_10001B640;
        v10 = xmmword_10001B650;
      }

      else
      {
        v8 = xmmword_10001B5F0;
        v9 = xmmword_10001B660;
        v12 = xmmword_10001B5F0;
        *v13 = xmmword_10001B660;
        v10 = xmmword_10001B670;
      }

      goto LABEL_18;
    }

    if (result == 7)
    {
      v8 = xmmword_10001B620;
      v9 = xmmword_10001B680;
      v12 = xmmword_10001B620;
      *v13 = xmmword_10001B680;
      v10 = xmmword_10001B690;
      goto LABEL_18;
    }

    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    if (result == 8)
    {
      v12 = xmmword_10001B640;
      *v13 = 808335153;
      *&v13[8] = xmmword_10001B6A0;
      *&v13[24] = xmmword_10001B6B0;
      *&v13[40] = xmmword_10001B6C0;
      *&v13[56] = 0xE300000000000000;
      v14 = xmmword_10001B640;
      v15 = xmmword_10001B6D0;
      v16 = xmmword_10001B6E0;
      v17 = xmmword_10001B6D0;
      v18 = xmmword_10001B5A0;
LABEL_19:
      sub_10000C368(&v12, &v11);
      result = sub_10000C3A0(&v14);
      v6 = *&v13[32];
      v7 = *&v13[48];
      v4 = *v13;
      v5 = *&v13[16];
      v3 = v12;
    }
  }

  else
  {
    if (result > 2)
    {
      if (result == 3)
      {
        v8 = xmmword_10001B5E0;
        v9 = xmmword_10001B5F0;
        v12 = xmmword_10001B5E0;
        *v13 = xmmword_10001B5F0;
        v10 = xmmword_10001B600;
      }

      else
      {
        v8 = xmmword_10001B610;
        v9 = xmmword_10001B620;
        v12 = xmmword_10001B610;
        *v13 = xmmword_10001B620;
        v10 = xmmword_10001B630;
      }

      goto LABEL_18;
    }

    if (result == 1)
    {
      v8 = xmmword_10001B570;
      v9 = xmmword_10001B580;
      v12 = xmmword_10001B570;
      *v13 = xmmword_10001B580;
      v10 = xmmword_10001B590;
      goto LABEL_18;
    }

    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    if (result == 2)
    {
      v8 = xmmword_10001B5B0;
      v9 = xmmword_10001B5C0;
      v12 = xmmword_10001B5B0;
      *v13 = xmmword_10001B5C0;
      v10 = xmmword_10001B5D0;
LABEL_18:
      *&v13[16] = v10;
      *&v13[32] = v9;
      *&v13[48] = xmmword_10001B5A0;
      v14 = v8;
      v15 = v9;
      v16 = v10;
      v17 = v9;
      v18 = xmmword_10001B5A0;
      goto LABEL_19;
    }
  }

  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  return result;
}

uint64_t sub_10000C3D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028CB8, &qword_10001B6F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C444()
{
  result = qword_100028CC8;
  if (!qword_100028CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028CC8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10000C4B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_10000C510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_10000C588(void *a1)
{
  v2 = v1;
  [v1 addSubview:a1];
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C88, &qword_10001B490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10001B830;
  v6 = [a1 leftAnchor];
  v7 = [v2 leftAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a1 rightAnchor];
  v10 = [v2 rightAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a1 topAnchor];
  v13 = [v2 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a1 bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_10000C7F0();
  isa = sub_100019D98().super.isa;

  [v4 activateConstraints:isa];
}

unint64_t sub_10000C7F0()
{
  result = qword_100028D18;
  if (!qword_100028D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028D18);
  }

  return result;
}

uint64_t sub_10000C850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100019988();
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

    return (v10 + 1);
  }
}

uint64_t sub_10000C924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100019988();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for Layer()
{
  result = qword_100028D78;
  if (!qword_100028D78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000CA2C()
{
  result = sub_100019988();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_10000CAB0(uint64_t a1)
{
  sub_10001A008();
  sub_100019988();
  sub_10000CDCC(&qword_100028B58, &type metadata accessor for UUID);
  sub_100019CB8();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  sub_100019D38();
  sub_10001A018(*(v1 + *(a1 + 24)));
  return sub_10001A038();
}

void sub_10000CB68(uint64_t a1, uint64_t a2)
{
  sub_100019988();
  sub_10000CDCC(&qword_100028B58, &type metadata accessor for UUID);
  sub_100019CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_100019D38();
  sub_10001A018(*(v2 + *(a2 + 24)));
}

Swift::Int sub_10000CC08(uint64_t a1, uint64_t a2)
{
  sub_10001A008();
  sub_100019988();
  sub_10000CDCC(&qword_100028B58, &type metadata accessor for UUID);
  sub_100019CB8();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  sub_100019D38();
  sub_10001A018(*(v2 + *(a2 + 24)));
  return sub_10001A038();
}

BOOL sub_10000CCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100019968() & 1) != 0 && ((v6 = *(a3 + 20), v7 = *(a1 + v6), v8 = *(a1 + v6 + 8), v9 = (a2 + v6), v7 == *v9) ? (v10 = v8 == v9[1]) : (v10 = 0), v10 || (sub_100019F78()))
  {
    return *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000CDCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ModelHeuristics.previewType.getter(void *a1)
{
  sub_10000A490(a1);
  LODWORD(result) = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0();
  if (result == 19)
  {
    return 18;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10000CE50@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v8 = type metadata accessor for ModelDataViewModel();
  v9 = v8[21];
  v10 = v8[5];
  v11 = sub_100019958();
  v95 = *(v11 - 8);
  v96 = v11;
  (*(v95 + 16))(&a4[v10], a1);
  *&a4[v9] = a3;
  *a4 = a3 == 0;
  v12 = sub_100019918();
  v13 = &a4[v8[6]];
  *v13 = v12;
  v13[1] = v14;
  v97 = a1;
  v15 = _s30com_apple_MLKit_MLModelPreview8DiskSizeO09formattedG02ofSS10Foundation3URLV_tFZ_0(a1);
  v16 = &a4[v8[7]];
  *v16 = v15;
  v16[1] = v17;
  v18 = [a2 modelDescription];
  v19 = [v18 metadata];

  type metadata accessor for MIOModelMetadataKey(0);
  sub_1000114B8(&qword_1000289A0, type metadata accessor for MIOModelMetadataKey);
  v20 = sub_100019C88();

  if (*(v20 + 16) && (v21 = sub_10000EE70(MIOModelAuthorKey), (v22 & 1) != 0))
  {
    sub_100003C70(*(v20 + 56) + 32 * v21, v99);

    v23 = swift_dynamicCast();
    v25 = *(&v98[0] + 1);
    v24 = *&v98[0];
    if (!v23)
    {
      v24 = 0;
      v25 = 0;
    }
  }

  else
  {

    v24 = 0;
    v25 = 0;
  }

  v26 = &a4[v8[8]];
  *v26 = v24;
  *(v26 + 1) = v25;
  v27 = [a2 modelDescription];
  v28 = [v27 metadata];

  v29 = sub_100019C88();
  if (*(v29 + 16) && (v30 = sub_10000EE70(MIOModelLicenseKey), (v31 & 1) != 0))
  {
    sub_100003C70(*(v29 + 56) + 32 * v30, v99);

    v32 = swift_dynamicCast();
    v34 = *(&v98[0] + 1);
    v33 = *&v98[0];
    if (!v32)
    {
      v33 = 0;
      v34 = 0;
    }
  }

  else
  {

    v33 = 0;
    v34 = 0;
  }

  v35 = &a4[v8[9]];
  *v35 = v33;
  *(v35 + 1) = v34;
  v36 = [a2 modelDescription];
  v37 = [v36 metadata];

  v38 = sub_100019C88();
  if (*(v38 + 16) && (v39 = sub_10000EE70(MIOModelDescriptionKey), (v40 & 1) != 0))
  {
    sub_100003C70(*(v38 + 56) + 32 * v39, v99);

    v41 = swift_dynamicCast();
    v43 = *(&v98[0] + 1);
    v42 = *&v98[0];
    if (!v41)
    {
      v42 = 0;
      v43 = 0;
    }
  }

  else
  {

    v42 = 0;
    v43 = 0;
  }

  v44 = &a4[v8[10]];
  *v44 = v42;
  *(v44 + 1) = v43;
  v45 = [a2 modelDescription];
  v46 = [v45 metadata];

  v47 = sub_100019C88();
  if (*(v47 + 16) && (v48 = sub_10000EE70(MIOModelVersionStringKey), (v49 & 1) != 0))
  {
    sub_100003C70(*(v47 + 56) + 32 * v48, v99);

    v50 = swift_dynamicCast();
    v52 = *(&v98[0] + 1);
    v51 = *&v98[0];
    if (!v50)
    {
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {

    v51 = 0;
    v52 = 0;
  }

  v53 = &a4[v8[11]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v54 = [a2 specificationVersion];
  v55 = [v54 majorVersion];

  *&a4[v8[15]] = v55;
  v56 = [a2 modelDescription];
  v57 = [v56 metadata];

  v58 = sub_100019C88();
  if (!*(v58 + 16) || (v59 = sub_10000EE70(MIOModelCreatorDefinedKey), (v60 & 1) == 0))
  {

    goto LABEL_26;
  }

  sub_100003C70(*(v58 + 56) + 32 * v59, v99);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028DD8, &qword_10001B958);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v61 = sub_1000113A4(&_swiftEmptyArrayStorage);
    goto LABEL_27;
  }

  v61 = *&v98[0];
LABEL_27:
  *&a4[v8[19]] = v61;

  v62 = [a2 modelTypeName];
  v63 = sub_100019D08();
  v65 = v64;

  v66 = &a4[v8[12]];
  *v66 = v63;
  v66[1] = v65;
  if (*(v61 + 16) && (v67 = sub_10000EDF8(0xD000000000000023, 0x800000010001C790), (v68 & 1) != 0))
  {
    v69 = (*(v61 + 56) + 16 * v67);
    v70 = *v69;
    v71 = v69[1];
  }

  else
  {
    v70 = 0;
    v71 = 0;
  }

  v72 = &a4[v8[13]];
  *v72 = v70;
  *(v72 + 1) = v71;
  v73 = [a2 modelDescription];
  v74 = [v73 parameterDescriptionsByKey];

  type metadata accessor for MIOParameterKey(0);
  sub_10000A8A4(0, &qword_100028DC0, MIOParameterDescription_ptr);
  sub_1000114B8(&qword_100028990, type metadata accessor for MIOParameterKey);
  sub_100019C88();

  v75 = sub_100019C98();
  v77 = v76;

  v78 = &a4[v8[14]];
  *v78 = v75;
  v78[1] = v77;
  v79 = &a4[v8[20]];
  *v79 = a2;
  *(v79 + 1) = v55;
  v80 = a2;
  sub_10000C11C(v55, v98);
  v81 = &_swiftEmptyArrayStorage;
  v82 = &_swiftEmptyArrayStorage;
  if (*(&v98[0] + 1) != 1)
  {
    v99[0] = v98[0];
    v99[1] = v98[1];
    v99[2] = v98[2];
    v99[3] = v98[3];
    v99[4] = v98[4];
    v82 = ModelHeuristics.OSAvailability.components.getter();
    sub_100011500(v98);
  }

  *&a4[v8[16]] = v82;
  *&a4[v8[17]] = &_swiftEmptyArrayStorage;
  v83 = [v80 modelDescription];
  v84 = [v83 classLabels];

  if (v84)
  {
    v81 = sub_100019DA8();
  }

  *&a4[v8[18]] = v81;
  v85 = [v80 layers];
  if (v85)
  {
    v86 = v85;
    sub_10000A8A4(0, &qword_100028DC8, MIOModelLayer_ptr);
    v87 = sub_100019DA8();
  }

  else
  {
    v87 = &_swiftEmptyArrayStorage;
  }

  *&a4[v8[22]] = v87;
  v88 = [v80 modelDescription];
  v89 = [v88 inputDescriptions];

  sub_10000A8A4(0, &qword_100028C80, MIOFeatureDescription_ptr);
  v90 = sub_100019DA8();

  *&a4[v8[23]] = v90;
  v91 = [v80 modelDescription];

  v92 = [v91 outputDescriptions];
  v93 = sub_100019DA8();

  result = (*(v95 + 8))(v97, v96);
  *&a4[v8[24]] = v93;
  return result;
}

uint64_t type metadata accessor for ModelDataViewModel()
{
  result = qword_100028E40;
  if (!qword_100028E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D7D8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028F40, &qword_10001B9A8);
  sub_1000199B8();

  v2 = sub_100019D28();
  v4 = v3;

  v7._countAndFlagsBits = v2;
  v7._object = v4;
  sub_100019D48(v7);

  *a1 = 32;
  a1[1] = v6;
  return result;
}

unint64_t sub_10000D88C()
{
  if (*v0 == 1)
  {
    v1 = type metadata accessor for ModelDataViewModel();
    v2 = &v0[v1[13]];
    v3 = *v2;
    v4 = v2[1];
    if (!v4 || (v5 = v2[1], , v6 = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0(), v6 == 19))
    {
      sub_10000A490(*&v0[v1[20]]);
      v6 = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0();
      if (v6 == 19)
      {
        v6 = 18;
      }
    }

    if (MLPreviewType.rawValue.getter(v6) == 0x6E776F6E6B6E75 && v7 == 0xE700000000000000)
    {
    }

    else
    {
      v9 = sub_100019F78();

      if ((v9 & 1) == 0)
      {
        if (!v4 || (, v10 = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0(), v10 == 19))
        {
          sub_10000A490(*&v0[v1[20]]);
          v10 = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0();
          if (v10 == 19)
          {
            v10 = 18;
          }
        }

        return sub_1000122A8(v10);
      }
    }

    return sub_100011E9C(*&v0[v1[12]], *&v0[v1[12] + 8]);
  }

  if (qword_1000288D8 != -1)
  {
    swift_once();
  }

  v12 = qword_10002B9A0;

  return v12;
}

uint64_t sub_10000DA20@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ModelDataViewModel();
  v4 = (v1 + v3[13]);
  if (!v4[1] || (v5 = *v4, v6 = v4[1], , v7 = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0(), v7 == 19))
  {
    sub_10000A490(*(v1 + v3[20]));
    v8 = _s30com_apple_MLKit_MLModelPreview13MLPreviewTypeO8rawValueACSgSS_tcfC_0();
    if (v8 == 19)
    {
      v7 = 18;
    }

    else
    {
      v7 = v8;
    }
  }

  v9 = v3[7];
  v10 = (v1 + v3[6]);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v9);
  v14 = *(v1 + v9 + 8);
  v15 = (v1 + v3[8]);
  v16 = v15[1];
  if (!v16)
  {
    goto LABEL_11;
  }

  v17 = *v15;
  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
  }

  else
  {
LABEL_11:
    v19 = 0xE200000000000000;
    v17 = 11565;
  }

  v20 = (v1 + v3[9]);
  v21 = v20[1];
  v38 = v17;
  v39 = v19;
  if (!v21)
  {
    goto LABEL_17;
  }

  v22 = *v20;
  v23 = HIBYTE(v21) & 0xF;
  v42 = v22;
  v24 = v22 & 0xFFFFFFFFFFFFLL;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v23 = v24;
  }

  if (v23)
  {
  }

  else
  {
LABEL_17:
    v21 = 0xE200000000000000;
    v42 = 11565;
  }

  v25 = (v1 + v3[10]);
  v26 = v25[1];
  v37 = v21;
  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = *v25;
  v28 = HIBYTE(v26) & 0xF;
  v41 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFLL;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v28 = v29;
  }

  if (v28)
  {
  }

  else
  {
LABEL_23:
    v26 = 0xE200000000000000;
    v41 = 11565;
  }

  v30 = (v1 + v3[11]);
  v31 = v30[1];
  if (!v31)
  {
    goto LABEL_29;
  }

  v32 = *v30;
  v33 = HIBYTE(v31) & 0xF;
  v40 = v32;
  v34 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v34;
  }

  if (v33)
  {
  }

  else
  {
LABEL_29:
    v31 = 0xE200000000000000;
    v40 = 11565;
  }

  if (*(*(v1 + v3[16]) + 16))
  {
    v43 = *(v1 + v3[16]);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028C28, "j#");
    sub_10001225C(&qword_100028C30, &qword_100028C28, "j#");
    result = sub_100019CC8();
  }

  else
  {

    v36 = 0xE200000000000000;
    result = 11565;
  }

  *a1 = v7;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v38;
  *(a1 + 48) = v39;
  *(a1 + 56) = v42;
  *(a1 + 64) = v37;
  *(a1 + 72) = v41;
  *(a1 + 80) = v26;
  *(a1 + 88) = v40;
  *(a1 + 96) = v31;
  *(a1 + 104) = result;
  *(a1 + 112) = v36;
  return result;
}

void *sub_10000DCE8()
{
  v1 = type metadata accessor for ModelMetadataItem();
  v31 = *(v1 - 8);
  v32 = v1;
  v2 = *(v31 + 64);
  __chkstk_darwin(v1);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelDataViewModel();
  v5 = *(v0 + *(v4 + 76));
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(v0 + *(v4 + 76));

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  while (v8)
  {
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v11 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    if (*v16 != 0x73657373616C63 || v18 != 0xE700000000000000)
    {
      v20 = (*(v5 + 56) + 16 * v15);
      v21 = *v20;
      v22 = v20[1];
      if ((sub_100019F78() & 1) == 0)
      {

        sub_100019978();
        v23 = v32;
        v24 = v33;
        v25 = (v33 + *(v32 + 20));
        *v25 = v17;
        v25[1] = v18;
        v26 = (v24 + *(v23 + 24));
        *v26 = v21;
        v26[1] = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10000B670(0, v12[2] + 1, 1, v12);
        }

        v28 = v12[2];
        v27 = v12[3];
        if (v28 >= v27 >> 1)
        {
          v12 = sub_10000B670(v27 > 1, v28 + 1, 1, v12);
        }

        v12[2] = v28 + 1;
        sub_100012134(v33, v12 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, type metadata accessor for ModelMetadataItem);
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v34 = v12;

      sub_10000F0BC(&v34);

      return v34;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_10000DFBC()
{
  v28 = type metadata accessor for ClassLabel();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v27 - v6;
  v8 = *(v0 + *(type metadata accessor for ModelDataViewModel() + 72));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 32;
    v11 = &_swiftEmptyArrayStorage;
    while (1)
    {
      sub_100003C70(v10, v32);
      sub_100003C70(v32, v31);
      if (swift_dynamicCast())
      {
        v31[0] = v29;
        v31[1] = v30;
        v14 = sub_100019D68();
        v16 = v15;
        sub_100019978();
        v17 = &v7[*(v28 + 20)];
        *v17 = v14;
        v17[1] = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10000B8D0(0, v11[2] + 1, 1, v11);
        }

        v19 = v11[2];
        v18 = v11[3];
        if (v19 >= v18 >> 1)
        {
          v11 = sub_10000B8D0(v18 > 1, v19 + 1, 1, v11);
        }

        __swift_destroy_boxed_opaque_existential_0(v32);
        v11[2] = v19 + 1;
        v12 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19;
        v13 = v7;
      }

      else
      {
        sub_100003C70(v32, v31);
        if ((swift_dynamicCast() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_0(v32);
          goto LABEL_5;
        }

        v31[0] = v29;
        v20 = sub_100019F68();
        v22 = v21;
        sub_100019978();
        v23 = &v5[*(v28 + 20)];
        *v23 = v20;
        v23[1] = v22;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_10000B8D0(0, v11[2] + 1, 1, v11);
        }

        v25 = v11[2];
        v24 = v11[3];
        if (v25 >= v24 >> 1)
        {
          v11 = sub_10000B8D0(v24 > 1, v25 + 1, 1, v11);
        }

        __swift_destroy_boxed_opaque_existential_0(v32);
        v11[2] = v25 + 1;
        v12 = v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v25;
        v13 = v5;
      }

      sub_100012134(v13, v12, type metadata accessor for ClassLabel);
LABEL_5:
      v10 += 32;
      if (!--v9)
      {
        return v11;
      }
    }
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_10000E318()
{
  v1 = type metadata accessor for Layer();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = *(v0 + *(type metadata accessor for ModelDataViewModel() + 88));
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_44:
    v7 = sub_100019EF8();
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v8 = 0;
      v61 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v59 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v9 = &_swiftEmptyDictionarySingleton;
      v10 = &SomeClass;
      v60 = v7;
      while (1)
      {
        if (v61)
        {
          v11 = sub_100019EA8();
        }

        else
        {
          if (v8 >= *(v59 + 16))
          {
            goto LABEL_39;
          }

          v11 = *(isUniquelyReferenced_nonNull_native + 8 * v8 + 32);
        }

        v12 = v11;
        v13 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v14 = isUniquelyReferenced_nonNull_native;
        v15 = [v11 v10[14].ivar_lyt];
        isUniquelyReferenced_nonNull_native = v15;
        if (v9[2])
        {
          v16 = sub_10000EE70(v15);
          if (v17)
          {
            break;
          }
        }

        v21 = [v12 v10[14].ivar_lyt];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = v9;
        v31 = sub_10000EE70(v21);
        v32 = v9[2];
        v33 = (v30 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_38;
        }

        v35 = v30;
        if (v9[3] >= v34)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v9 = v64;
            if ((v30 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            sub_1000110C8();
            v9 = v64;
            if ((v35 & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          sub_100010E0C(v34, isUniquelyReferenced_nonNull_native);
          v36 = sub_10000EE70(v21);
          if ((v35 & 1) != (v37 & 1))
          {
LABEL_60:
            type metadata accessor for MIOModelLayerType(0);
            sub_100019FA8();
            __break(1u);

            __break(1u);
            return result;
          }

          v31 = v36;
          v9 = v64;
          if ((v35 & 1) == 0)
          {
LABEL_26:
            v9[(v31 >> 6) + 8] |= 1 << v31;
            *(v9[6] + 8 * v31) = v21;
            *(v9[7] + 8 * v31) = 1;

            v38 = v9[2];
            v26 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (v26)
            {
              goto LABEL_40;
            }

LABEL_36:
            v9[2] = v39;
            goto LABEL_6;
          }
        }

        *(v9[7] + 8 * v31) = 1;
LABEL_5:

LABEL_6:
        isUniquelyReferenced_nonNull_native = v14;
        v10 = &SomeClass;
        ++v8;
        if (v13 == v60)
        {
          goto LABEL_46;
        }
      }

      v18 = *(v9[7] + 8 * v16);

      v19 = [v12 v10[14].ivar_lyt];
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_41;
      }

      v21 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v64 = v9;
      v22 = sub_10000EE70(v21);
      v24 = v9[2];
      v25 = (v23 & 1) == 0;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        goto LABEL_42;
      }

      v28 = v23;
      if (v9[3] >= v27)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = v22;
          sub_1000110C8();
          v22 = isUniquelyReferenced_nonNull_native;
          v9 = v64;
          if ((v28 & 1) == 0)
          {
LABEL_35:
            v9[(v22 >> 6) + 8] |= 1 << v22;
            *(v9[6] + 8 * v22) = v21;
            *(v9[7] + 8 * v22) = v20;

            v40 = v9[2];
            v26 = __OFADD__(v40, 1);
            v39 = v40 + 1;
            if (v26)
            {
              goto LABEL_43;
            }

            goto LABEL_36;
          }

          goto LABEL_31;
        }
      }

      else
      {
        sub_100010E0C(v27, isUniquelyReferenced_nonNull_native);
        v22 = sub_10000EE70(v21);
        if ((v28 & 1) != (v29 & 1))
        {
          goto LABEL_60;
        }
      }

      v9 = v64;
      if ((v28 & 1) == 0)
      {
        goto LABEL_35;
      }

LABEL_31:
      *(v9[7] + 8 * v22) = v20;
      goto LABEL_5;
    }
  }

  v9 = &_swiftEmptyDictionarySingleton;
LABEL_46:
  v41 = v9[2];
  if (!v41)
  {
    goto LABEL_49;
  }

  v42 = sub_10000A1F4(v9[2], 0);
  v43 = sub_10001124C(&v64, v42 + 4, v41, v9);

  sub_10001212C();
  if (v43 != v41)
  {
    __break(1u);
LABEL_49:
    v42 = &_swiftEmptyArrayStorage;
  }

  v64 = v42;
  sub_10000F164(&v64);
  v44 = v64[2];
  if (v44)
  {
    v45 = v64 + 5;
    v46 = &_swiftEmptyArrayStorage;
    do
    {
      v48 = *(v45 - 1);
      v47 = *v45;
      v49 = sub_100019D08();
      v51 = v50;
      v52 = v48;
      sub_100019978();
      v53 = v62;
      v54 = &v5[*(v62 + 20)];
      *v54 = v49;
      v54[1] = v51;
      *&v5[*(v53 + 24)] = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_10000B8F8(0, v46[2] + 1, 1, v46);
      }

      v56 = v46[2];
      v55 = v46[3];
      if (v56 >= v55 >> 1)
      {
        v46 = sub_10000B8F8(v55 > 1, v56 + 1, 1, v46);
      }

      v45 += 2;

      v46[2] = v56 + 1;
      sub_100012134(v5, v46 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v56, type metadata accessor for Layer);
      --v44;
    }

    while (v44);
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v46;
}

uint64_t sub_10000E8CC()
{
  v1 = type metadata accessor for InputOutput();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelDataViewModel();
  v6 = *(v0 + *(v5 + 92));
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  if (v6 < 0)
  {
    v30 = *(v0 + *(v5 + 92));
  }

  v31 = v6;
  result = sub_100019EF8();
  v6 = v31;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (result >= 1)
  {
    v8 = 0;
    v32 = v6 & 0xC000000000000001;
    v9 = _swiftEmptyArrayStorage;
    v34 = v6;
    v35 = v4;
    v33 = result;
    do
    {
      if (v32)
      {
        v10 = sub_100019EA8();
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 name];
      v13 = sub_100019D08();
      v15 = v14;

      v16 = sub_1000054B8();
      v18 = v17;
      v19 = [v11 shortDescription];
      v20 = sub_100019D08();
      v22 = v21;

      v23 = v35;
      sub_100019978();
      v24 = v37;
      v25 = (v23 + *(v37 + 20));
      *v25 = v13;
      v25[1] = v15;
      v26 = (v23 + *(v24 + 24));
      *v26 = v16;
      v26[1] = v18;
      v27 = (v23 + *(v24 + 28));
      *v27 = v20;
      v27[1] = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10000B920(0, v9[2] + 1, 1, v9);
      }

      v29 = v9[2];
      v28 = v9[3];
      if (v29 >= v28 >> 1)
      {
        v9 = sub_10000B920(v28 > 1, v29 + 1, 1, v9);
      }

      ++v8;

      v9[2] = v29 + 1;
      sub_100012134(v23, v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, type metadata accessor for InputOutput);
      v6 = v34;
    }

    while (v33 != v8);
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000EB60()
{
  v1 = type metadata accessor for InputOutput();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ModelDataViewModel();
  v6 = *(v0 + *(v5 + 96));
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  if (v6 < 0)
  {
    v30 = *(v0 + *(v5 + 96));
  }

  v31 = v6;
  result = sub_100019EF8();
  v6 = v31;
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  if (result >= 1)
  {
    v8 = 0;
    v32 = v6 & 0xC000000000000001;
    v9 = _swiftEmptyArrayStorage;
    v34 = v6;
    v35 = v4;
    v33 = result;
    do
    {
      if (v32)
      {
        v10 = sub_100019EA8();
      }

      else
      {
        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 name];
      v13 = sub_100019D08();
      v15 = v14;

      v16 = sub_1000054B8();
      v18 = v17;
      v19 = [v11 shortDescription];
      v20 = sub_100019D08();
      v22 = v21;

      v23 = v35;
      sub_100019978();
      v24 = v37;
      v25 = (v23 + *(v37 + 20));
      *v25 = v13;
      v25[1] = v15;
      v26 = (v23 + *(v24 + 24));
      *v26 = v16;
      v26[1] = v18;
      v27 = (v23 + *(v24 + 28));
      *v27 = v20;
      v27[1] = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_10000B920(0, v9[2] + 1, 1, v9);
      }

      v29 = v9[2];
      v28 = v9[3];
      if (v29 >= v28 >> 1)
      {
        v9 = sub_10000B920(v28 > 1, v29 + 1, 1, v9);
      }

      ++v8;

      v9[2] = v29 + 1;
      sub_100012134(v23, v9 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v29, type metadata accessor for InputOutput);
      v6 = v34;
    }

    while (v33 != v8);
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_10000EDF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10001A008();
  sub_100019D38();
  v6 = sub_10001A038();

  return sub_10000EF00(a1, a2, v6);
}

unint64_t sub_10000EE70(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_100019D08();
  sub_10001A008();
  sub_100019D38();
  v4 = sub_10001A038();

  return sub_10000EFB8(a1, v4);
}

unint64_t sub_10000EF00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100019F78())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10000EFB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_100019D08();
      v9 = v8;
      if (v7 == sub_100019D08() && v9 == v10)
      {
        break;
      }

      v12 = sub_100019F78();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

Swift::Int sub_10000F0BC(void **a1)
{
  v2 = *(type metadata accessor for ModelMetadataItem() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100011224(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10000F2C0(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_10000F164(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100011238(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_100019F58(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_100028D00, &qword_10001B810);
      v7 = sub_100019DB8();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000FFEC(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_10000F2C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100019F58(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = &_swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for ModelMetadataItem();
        v6 = sub_100019DB8();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for ModelMetadataItem() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10000F630(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10000F3EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ModelMetadataItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v33 - v14;
  result = __chkstk_darwin(v13);
  v19 = &v33 - v18;
  v35 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v40 = v20;
    v34 = v21;
    v25 = v20 + v21 * a3;
LABEL_6:
    v38 = v22;
    v39 = a3;
    v36 = v25;
    v37 = v24;
    while (1)
    {
      sub_10001219C(v25, v19);
      sub_10001219C(v22, v15);
      v26 = *(v8 + 20);
      v27 = *&v19[v26];
      v28 = *&v19[v26 + 8];
      v29 = &v15[v26];
      if (v27 == *v29 && v28 == *(v29 + 1))
      {
        sub_100012200(v15);
        result = sub_100012200(v19);
LABEL_5:
        a3 = v39 + 1;
        v22 = v38 + v34;
        v24 = v37 - 1;
        v25 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v31 = sub_100019F78();
      sub_100012200(v15);
      result = sub_100012200(v19);
      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      sub_100012134(v25, v12, type metadata accessor for ModelMetadataItem);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100012134(v12, v22, type metadata accessor for ModelMetadataItem);
      v22 += v23;
      v25 += v23;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000F630(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v139 = a1;
  v9 = type metadata accessor for ModelMetadataItem();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v144 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v151 = &v133 - v15;
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v149 = &v133 - v19;
  v20 = __chkstk_darwin(v18);
  v148 = &v133 - v21;
  v22 = __chkstk_darwin(v20);
  v138 = &v133 - v23;
  result = __chkstk_darwin(v22);
  v137 = &v133 - v27;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v30 = &_swiftEmptyArrayStorage;
LABEL_111:
    v5 = *v139;
    if (!*v139)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_113:
      v154 = v30;
      v128 = *(v30 + 16);
      if (v128 >= 2)
      {
        while (*a3)
        {
          v129 = *(v30 + 16 * v128);
          v130 = v30;
          v131 = *(v30 + 16 * (v128 - 1) + 32);
          v30 = *(v30 + 16 * (v128 - 1) + 40);
          sub_100010578(*a3 + v10[9] * v129, *a3 + v10[9] * v131, *a3 + v10[9] * v30, v5);
          if (v6)
          {
          }

          if (v30 < v129)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_100010D14(v130);
          }

          if (v128 - 2 >= *(v130 + 2))
          {
            goto LABEL_137;
          }

          v132 = &v130[16 * v128];
          *v132 = v129;
          *(v132 + 1) = v30;
          v154 = v130;
          result = sub_100010C88(v128 - 1);
          v30 = v154;
          v128 = *(v154 + 16);
          if (v128 <= 1)
          {
          }
        }

        goto LABEL_147;
      }
    }

LABEL_143:
    result = sub_100010D14(v30);
    v30 = result;
    goto LABEL_113;
  }

  v150 = v25;
  v153 = result;
  v134 = a4;
  v29 = 0;
  v30 = &_swiftEmptyArrayStorage;
  v141 = a3;
  v135 = v10;
  v152 = v26;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    if (v29 + 1 < v28)
    {
      v145 = v28;
      v33 = *a3;
      v34 = v10[9];
      v35 = v137;
      sub_10001219C(v33 + v34 * v32, v137);
      v140 = v31;
      v147 = v34;
      v36 = v33 + v34 * v31;
      v37 = v138;
      sub_10001219C(v36, v138);
      v38 = *(v153 + 20);
      v39 = *(v35 + v38);
      v40 = *(v35 + v38 + 8);
      v41 = (v37 + v38);
      v42 = v39 == *v41 && v40 == v41[1];
      a3 = v32;
      v136 = v6;
      if (v42)
      {
        LODWORD(v146) = 0;
      }

      else
      {
        LODWORD(v146) = sub_100019F78();
      }

      sub_100012200(v138);
      result = sub_100012200(v137);
      v43 = v140 + 2;
      v44 = v147 * (v140 + 2);
      v45 = v33 + v44;
      v46 = v147 * a3;
      v47 = v33 + v147 * a3;
      do
      {
        v10 = v43;
        v6 = a3;
        v49 = v46;
        v5 = v44;
        if (v43 >= v145)
        {
          break;
        }

        v50 = v148;
        sub_10001219C(v45, v148);
        v51 = v149;
        sub_10001219C(v47, v149);
        v52 = *(v153 + 20);
        v53 = *(v50 + v52);
        v54 = *(v50 + v52 + 8);
        v55 = (v51 + v52);
        v56 = v53 == *v55 && v54 == v55[1];
        v48 = v56 ? 0 : sub_100019F78();
        sub_100012200(v149);
        result = sub_100012200(v148);
        v43 = v10 + 1;
        v45 += v147;
        v47 += v147;
        a3 = v6 + 1;
        v46 = v49 + v147;
        v44 = v5 + v147;
      }

      while (((v146 ^ v48) & 1) == 0);
      if ((v146 & 1) == 0)
      {
        v32 = v10;
        v10 = v135;
        v6 = v136;
        a3 = v141;
LABEL_36:
        v31 = v140;
        goto LABEL_37;
      }

      if (v10 < v140)
      {
        goto LABEL_140;
      }

      if (v140 < v10)
      {
        v133 = v30;
        v57 = v140 * v147;
        v58 = v140;
        do
        {
          if (v58 != v6)
          {
            v60 = *v141;
            if (!*v141)
            {
              goto LABEL_146;
            }

            sub_100012134(v60 + v57, v144, type metadata accessor for ModelMetadataItem);
            if (v57 < v49 || v60 + v57 >= v60 + v5)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v49)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_100012134(v144, v60 + v49, type metadata accessor for ModelMetadataItem);
          }

          v58 = (v58 + 1);
          v49 -= v147;
          v5 -= v147;
          v57 += v147;
          v59 = v58 < v6;
          v6 = (v6 - 1);
        }

        while (v59);
        v32 = v10;
        v10 = v135;
        v6 = v136;
        a3 = v141;
        v30 = v133;
        goto LABEL_36;
      }

      v32 = v10;
      v10 = v135;
      v6 = v136;
      a3 = v141;
      v31 = v140;
    }

LABEL_37:
    v61 = *(a3 + 8);
    v147 = v32;
    if (v32 < v61)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_139;
      }

      if (v32 - v31 < v134)
      {
        break;
      }
    }

LABEL_60:
    if (v147 < v31)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000B7CC(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v82 = *(v30 + 16);
    v81 = *(v30 + 24);
    v83 = v82 + 1;
    if (v82 >= v81 >> 1)
    {
      result = sub_10000B7CC((v81 > 1), v82 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v83;
    v84 = v30 + 16 * v82;
    v85 = v147;
    *(v84 + 32) = v31;
    *(v84 + 40) = v85;
    v5 = *v139;
    if (!*v139)
    {
      goto LABEL_148;
    }

    if (v82)
    {
      while (1)
      {
        v86 = v83 - 1;
        if (v83 >= 4)
        {
          break;
        }

        if (v83 == 3)
        {
          v87 = *(v30 + 32);
          v88 = *(v30 + 40);
          v97 = __OFSUB__(v88, v87);
          v89 = v88 - v87;
          v90 = v97;
LABEL_80:
          if (v90)
          {
            goto LABEL_127;
          }

          v103 = (v30 + 16 * v83);
          v105 = *v103;
          v104 = v103[1];
          v106 = __OFSUB__(v104, v105);
          v107 = v104 - v105;
          v108 = v106;
          if (v106)
          {
            goto LABEL_130;
          }

          v109 = (v30 + 32 + 16 * v86);
          v111 = *v109;
          v110 = v109[1];
          v97 = __OFSUB__(v110, v111);
          v112 = v110 - v111;
          if (v97)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v107, v112))
          {
            goto LABEL_134;
          }

          if (v107 + v112 >= v89)
          {
            if (v89 < v112)
            {
              v86 = v83 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v113 = (v30 + 16 * v83);
        v115 = *v113;
        v114 = v113[1];
        v97 = __OFSUB__(v114, v115);
        v107 = v114 - v115;
        v108 = v97;
LABEL_94:
        if (v108)
        {
          goto LABEL_129;
        }

        v116 = v30 + 16 * v86;
        v118 = *(v116 + 32);
        v117 = *(v116 + 40);
        v97 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v97)
        {
          goto LABEL_132;
        }

        if (v119 < v107)
        {
          goto LABEL_3;
        }

LABEL_101:
        v124 = v86 - 1;
        if (v86 - 1 >= v83)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v125 = *(v30 + 32 + 16 * v124);
        v126 = *(v30 + 32 + 16 * v86 + 8);
        sub_100010578(*a3 + v10[9] * v125, *a3 + v10[9] * *(v30 + 32 + 16 * v86), *a3 + v10[9] * v126, v5);
        if (v6)
        {
        }

        if (v126 < v125)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_100010D14(v30);
        }

        if (v124 >= *(v30 + 16))
        {
          goto LABEL_124;
        }

        v127 = v30 + 16 * v124;
        *(v127 + 32) = v125;
        *(v127 + 40) = v126;
        v154 = v30;
        result = sub_100010C88(v86);
        v30 = v154;
        v83 = *(v154 + 16);
        if (v83 <= 1)
        {
          goto LABEL_3;
        }
      }

      v91 = v30 + 32 + 16 * v83;
      v92 = *(v91 - 64);
      v93 = *(v91 - 56);
      v97 = __OFSUB__(v93, v92);
      v94 = v93 - v92;
      if (v97)
      {
        goto LABEL_125;
      }

      v96 = *(v91 - 48);
      v95 = *(v91 - 40);
      v97 = __OFSUB__(v95, v96);
      v89 = v95 - v96;
      v90 = v97;
      if (v97)
      {
        goto LABEL_126;
      }

      v98 = (v30 + 16 * v83);
      v100 = *v98;
      v99 = v98[1];
      v97 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v97)
      {
        goto LABEL_128;
      }

      v97 = __OFADD__(v89, v101);
      v102 = v89 + v101;
      if (v97)
      {
        goto LABEL_131;
      }

      if (v102 >= v94)
      {
        v120 = (v30 + 32 + 16 * v86);
        v122 = *v120;
        v121 = v120[1];
        v97 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v97)
        {
          goto LABEL_135;
        }

        if (v89 < v123)
        {
          v86 = v83 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v28 = *(a3 + 8);
    v29 = v147;
    if (v147 >= v28)
    {
      goto LABEL_111;
    }
  }

  if (__OFADD__(v31, v134))
  {
    goto LABEL_141;
  }

  if (v31 + v134 >= v61)
  {
    v62 = v61;
  }

  else
  {
    v62 = v31 + v134;
  }

  if (v62 < v31)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v147 == v62)
  {
    goto LABEL_60;
  }

  v133 = v30;
  v136 = v6;
  v63 = *a3;
  v64 = v10[9];
  v65 = *a3 + v64 * (v147 - 1);
  v66 = -v64;
  v140 = v31;
  v67 = v31 - v147;
  v142 = v64;
  v143 = v62;
  v68 = v63 + v147 * v64;
  v69 = v150;
LABEL_49:
  v5 = v68;
  v145 = v67;
  v146 = v65;
  v70 = v153;
  while (1)
  {
    v71 = v152;
    sub_10001219C(v5, v152);
    sub_10001219C(v65, v69);
    v72 = *(v70 + 20);
    v73 = v71;
    v74 = *(v71 + v72);
    v75 = *(v71 + v72 + 8);
    v76 = (v69 + v72);
    if (v74 == *v76 && v75 == v76[1])
    {
      sub_100012200(v69);
      sub_100012200(v71);
LABEL_48:
      v65 = v146 + v142;
      v67 = v145 - 1;
      v68 += v142;
      if (++v147 == v143)
      {
        v147 = v143;
        v10 = v135;
        v6 = v136;
        v31 = v140;
        a3 = v141;
        v30 = v133;
        goto LABEL_60;
      }

      goto LABEL_49;
    }

    v78 = sub_100019F78();
    sub_100012200(v69);
    result = sub_100012200(v73);
    if ((v78 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!v63)
    {
      break;
    }

    v79 = v151;
    sub_100012134(v5, v151, type metadata accessor for ModelMetadataItem);
    v70 = v153;
    swift_arrayInitWithTakeFrontToBack();
    sub_100012134(v79, v65, type metadata accessor for ModelMetadataItem);
    v65 += v66;
    v5 += v66;
    v80 = __CFADD__(v67++, 1);
    v69 = v150;
    if (v80)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_10000FFEC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = &_swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100010D14(v8);
      v8 = result;
    }

    v81 = v8 + 2;
    v82 = v8[2];
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = &v8[2 * v82];
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_100010A84((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = &_swiftEmptyArrayStorage;
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = (v13 < v10) ^ (v16 >= v17);
        ++v14;
        v16 = v17;
        if ((v18 & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000B7CC(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v35 = v8[3];
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_10000B7CC((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v36;
    v37 = v8 + 4;
    v38 = &v8[2 * v5 + 4];
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = v8[4];
          v40 = v8[5];
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = &v8[2 * v36];
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = &v37[2 * v5];
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = &v8[2 * v36];
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = &v37[2 * v5];
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = &v37[2 * v5 - 2];
        v77 = *v76;
        v78 = &v37[2 * v5];
        v79 = v78[1];
        sub_100010A84((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = v8[2];
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove(&v37[2 * v5], v78 + 2, 16 * (v80 - 1 - v5));
        v8[2] = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = &v37[2 * v36];
      v44 = *(v43 - 8);
      v45 = *(v43 - 7);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 6);
      v47 = *(v43 - 5);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = &v8[2 * v36];
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = &v37[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_100010578(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = type metadata accessor for ModelMetadataItem();
  v8 = *(*(v59 - 8) + 64);
  v9 = __chkstk_darwin(v59);
  v58 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v57 = &v53 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v53 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v53 - v17;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_74;
  }

  v22 = (a2 - a1) / v20;
  v62 = a1;
  v61 = a4;
  if (v22 >= v21 / v20)
  {
    v25 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v25;
    if (v25 >= 1)
    {
      v37 = -v20;
      v38 = a4 + v25;
      v56 = -v20;
      while (2)
      {
        while (1)
        {
          v53 = v36;
          v39 = a2;
          v40 = a2 + v37;
          v54 = v39;
          v55 = v40;
          while (1)
          {
            if (v39 <= a1)
            {
              v62 = v39;
              v60 = v53;
              goto LABEL_71;
            }

            v42 = a3;
            v43 = v36;
            v44 = v38 + v37;
            v45 = v57;
            sub_10001219C(v44, v57);
            v46 = v58;
            sub_10001219C(v40, v58);
            v47 = *(v59 + 20);
            v48 = *(v45 + v47);
            v49 = *(v45 + v47 + 8);
            v50 = (v46 + v47);
            v51 = v48 == *v50 && v49 == v50[1];
            v52 = v51 ? 0 : sub_100019F78();
            a3 = v42 + v56;
            sub_100012200(v58);
            sub_100012200(v57);
            if (v52)
            {
              break;
            }

            v36 = v44;
            if (v42 < v38 || a3 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              v40 = v55;
            }

            else
            {
              v40 = v55;
              if (v42 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v38 = v44;
            v41 = v44 > a4;
            v37 = v56;
            v39 = v54;
            if (!v41)
            {
              a2 = v54;
              goto LABEL_70;
            }
          }

          v36 = v43;
          if (v42 < v54 || a3 >= v54)
          {
            break;
          }

          a2 = v55;
          v37 = v56;
          if (v42 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v38 <= a4)
          {
            goto LABEL_70;
          }
        }

        a2 = v55;
        swift_arrayInitWithTakeFrontToBack();
        v37 = v56;
        if (v38 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_70:
    v62 = a2;
    v60 = v36;
  }

  else
  {
    v23 = a2;
    v24 = v22 * v20;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v24;
    v60 = a4 + v24;
    if (v24 >= 1 && v23 < a3)
    {
      v28 = v23;
      while (1)
      {
        v29 = v28;
        sub_10001219C(v28, v18);
        sub_10001219C(a4, v15);
        v30 = *(v59 + 20);
        v31 = *&v18[v30];
        v32 = *&v18[v30 + 8];
        v33 = &v15[v30];
        if (v31 == *v33 && v32 == *(v33 + 1))
        {
          break;
        }

        v35 = sub_100019F78();
        sub_100012200(v15);
        sub_100012200(v18);
        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }

        if (a1 < v29 || a1 >= v29 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v29)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v28 = v29 + v20;
LABEL_39:
        a1 += v20;
        v62 = a1;
        if (a4 >= v26 || v28 >= a3)
        {
          goto LABEL_71;
        }
      }

      sub_100012200(v15);
      sub_100012200(v18);
LABEL_31:
      if (a1 < a4 || a1 >= a4 + v20)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v61 = a4 + v20;
      a4 += v20;
      v28 = v29;
      goto LABEL_39;
    }
  }

LABEL_71:
  sub_100010D28(&v62, &v61, &v60);
  return 1;
}