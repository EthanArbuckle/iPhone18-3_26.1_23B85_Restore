uint64_t sub_100042178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C5574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000421CC()
{
  result = qword_1000FC820;
  if (!qword_1000FC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC820);
  }

  return result;
}

uint64_t sub_100042220(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100042258(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_1000422BC()
{
  result = qword_1000FC840;
  if (!qword_1000FC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC840);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LinkPresentationUnpackerError(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkPresentationUnpackerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkPresentationUnpackerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_100042374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100042390(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

__n128 sub_1000423C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000423D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100042430(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100042494(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_1000124CC(&qword_1000FC870, &qword_1000CB048);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100042D80();
  sub_1000C5D04();
  v17 = a2;
  v19 = 0;
  sub_1000124CC(&qword_1000FC858, &qword_1000CB040);
  sub_100042E28(&qword_1000FC878, sub_100042EA0);
  sub_1000C5B44();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_100018C68(a3, v16);
    sub_100042EA0();
    sub_1000C5BB4();
    sub_100018CD0(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100042688@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100042B30(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_1000426D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616F6C7961705F5FLL;
  }

  else
  {
    v4 = 0x6863617474615F5FLL;
  }

  if (v3)
  {
    v5 = 0xEF5F5F73746E656DLL;
  }

  else
  {
    v5 = 0xEB000000005F5F64;
  }

  if (*a2)
  {
    v6 = 0x616F6C7961705F5FLL;
  }

  else
  {
    v6 = 0x6863617474615F5FLL;
  }

  if (*a2)
  {
    v7 = 0xEB000000005F5F64;
  }

  else
  {
    v7 = 0xEF5F5F73746E656DLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000C5C04();
  }

  return v9 & 1;
}

Swift::Int sub_100042794()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10004282C()
{
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_1000428B0()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100042944@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F14D0;
  v8._object = v3;
  v5 = sub_1000C59F4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1000429A4(uint64_t *a1@<X8>)
{
  v2 = 0x6863617474615F5FLL;
  if (*v1)
  {
    v2 = 0x616F6C7961705F5FLL;
  }

  v3 = 0xEF5F5F73746E656DLL;
  if (*v1)
  {
    v3 = 0xEB000000005F5F64;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000429F8()
{
  if (*v0)
  {
    result = 0x616F6C7961705F5FLL;
  }

  else
  {
    result = 0x6863617474615F5FLL;
  }

  *v0;
  return result;
}

uint64_t sub_100042A48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F14D0;
  v9._object = a2;
  v6 = sub_1000C59F4(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100042AB8(uint64_t a1)
{
  v2 = sub_100042D80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100042AF4(uint64_t a1)
{
  v2 = sub_100042D80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100042B30(uint64_t *a1)
{
  v3 = sub_1000124CC(&qword_1000FC848, &qword_1000CB038);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100042D80();
  sub_1000C5CF4();
  if (v1)
  {
    v10 = 0;
    sub_100015F68(a1);
  }

  else
  {
    sub_1000124CC(&qword_1000FC858, &qword_1000CB040);
    v16 = 0;
    sub_100042E28(&qword_1000FC860, sub_100042DD4);
    sub_1000C5A54();
    v10 = v14;
    v16 = 1;
    sub_100042DD4();
    sub_1000C5AC4();
    (*(v4 + 8))(v7, v3);
    v11 = v14;
    v12 = v15;

    sub_100018C68(v11, v12);
    sub_100015F68(a1);

    sub_100018CD0(v11, v12);
  }

  return v10;
}

unint64_t sub_100042D80()
{
  result = qword_1000FC850;
  if (!qword_1000FC850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC850);
  }

  return result;
}

unint64_t sub_100042DD4()
{
  result = qword_1000FC868;
  if (!qword_1000FC868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC868);
  }

  return result;
}

uint64_t sub_100042E28(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(&qword_1000FC858, &qword_1000CB040);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100042EA0()
{
  result = qword_1000FC880;
  if (!qword_1000FC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC880);
  }

  return result;
}

unint64_t sub_100042F08()
{
  result = qword_1000FC888;
  if (!qword_1000FC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC888);
  }

  return result;
}

unint64_t sub_100042F60()
{
  result = qword_1000FC890;
  if (!qword_1000FC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC890);
  }

  return result;
}

unint64_t sub_100042FB8()
{
  result = qword_1000FC898;
  if (!qword_1000FC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC898);
  }

  return result;
}

Swift::Int sub_10004301C()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_100043070()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

uint64_t sub_1000430B4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1520;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100043124@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1558;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100043188(uint64_t a1)
{
  v2 = sub_100043498();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000431C4(uint64_t a1)
{
  v2 = sub_100043498();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100043200@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC8A0, &qword_1000CB238);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100043498();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(a1);
  }

  v11 = sub_1000C5AB4();
  (*(v6 + 8))(v9, v5);
  result = sub_100015F68(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_100043360(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FC8B0, &qword_1000CB240);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100043498();
  sub_1000C5D04();
  sub_1000C5BA4();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_100043498()
{
  result = qword_1000FC8A8;
  if (!qword_1000FC8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8A8);
  }

  return result;
}

unint64_t sub_100043500()
{
  result = qword_1000FC8B8;
  if (!qword_1000FC8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8B8);
  }

  return result;
}

unint64_t sub_100043558()
{
  result = qword_1000FC8C0;
  if (!qword_1000FC8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8C0);
  }

  return result;
}

unint64_t sub_1000435B0()
{
  result = qword_1000FC8C8;
  if (!qword_1000FC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8C8);
  }

  return result;
}

uint64_t sub_100043604()
{
  v1 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v83 - v3;
  v5 = sub_1000C4294();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v83 - v11;
  v13 = sub_1000C3D24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = v83 - v20;
  v127 = *(v0 + 104);
  v22 = _swiftEmptyArrayStorage;
  if (*(&v127 + 1) >> 60 == 15)
  {
    return v22;
  }

  v116 = v12;
  v117 = v19;
  objc_allocWithZone(NSKeyedUnarchiver);
  sub_100044D1C(&v127, &aBlock);
  v23 = sub_100046284();
  v111 = 0;
  v110 = v18;
  v25 = v23;
  [v23 _enableStrictSecureDecodingMode];
  [v25 setDecodingFailurePolicy:1];
  sub_1000458B4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000CB3A0;
  *(inited + 32) = sub_10001D1A8(0, &qword_1000FC8F8, NSArray_ptr);
  *(inited + 40) = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  *(inited + 48) = sub_10001D1A8(0, &qword_1000FC488, NSString_ptr);
  *(inited + 56) = sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  *(inited + 64) = sub_10001D1A8(0, &qword_1000FC900, NSAttributedString_ptr);
  sub_1000448E0(inited);

  sub_1000C5224();
  sub_1000C5694();

  if (!*(&v119 + 1))
  {
    sub_100018F90(&aBlock, &qword_1000FC828, &qword_1000CF790);

    sub_100018F90(&v127, &qword_1000FC3F8, &qword_1000CE300);
    return _swiftEmptyArrayStorage;
  }

  v112 = v25;
  sub_10001D8C8(&aBlock, &v126);
  sub_10001D804(&v126, &aBlock);
  sub_1000124CC(&qword_1000FC908, &qword_1000CB660);
  result = swift_dynamicCast();
  if (!result)
  {

    sub_100018F90(&v127, &qword_1000FC3F8, &qword_1000CE300);
    sub_100015F68(&v126);
    return _swiftEmptyArrayStorage;
  }

  v99 = v10;
  v100 = v5;
  v105 = v4;
  v108 = "sentationUnpacker.swift";
  v29 = *&v124[0] + 64;
  v28 = *(*&v124[0] + 64);
  v113 = *&v124[0];
  v30 = 1 << *(*&v124[0] + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v28;
  v33 = v30 + 63;
  v34 = v6;
  v35 = v33 >> 6;
  v107 = &v119;
  v104 = (v14 + 32);
  v103 = (v14 + 16);
  v102 = (v14 + 56);
  v101 = (v14 + 8);
  v97 = (v34 + 16);
  v96 = v34 + 8;
  v98 = v34;
  v95 = v34 + 32;
  *&v27 = 138412290;
  v106 = v27;
  v22 = _swiftEmptyArrayStorage;
  v109 = v21;
  v36 = 0;
  if (v32)
  {
    while (1)
    {
      v37 = v36;
LABEL_14:
      v38 = __clz(__rbit64(v32)) | (v37 << 6);
      v39 = v113;
      sub_100046C50(*(v113 + 48) + 40 * v38, &aBlock);
      v40 = *(*(v39 + 56) + 8 * v38);
      v114 = aBlock;
      v41 = v120;
      v115 = v119;
      v42 = *(&v119 + 1);
      swift_unknownObjectRetain();
      if (!v42)
      {
        goto LABEL_67;
      }

      v32 &= v32 - 1;
      v124[0] = v114;
      v124[1] = v115;
      v125 = v41;
      *&aBlock = v40;
      swift_unknownObjectRetain();
      sub_1000124CC(&qword_1000FC910, &qword_1000CB668);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_1000C5544();
      sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
      v43 = sub_1000C5794();
      sub_1000C1A54();
      swift_unknownObjectRelease();

LABEL_17:
      result = sub_100046CAC(v124);
      v36 = v37;
      if (!v32)
      {
        goto LABEL_11;
      }
    }

    v44 = v123[2];
    v94 = v123;
    if (!v44)
    {
LABEL_64:
      swift_unknownObjectRelease();

      goto LABEL_17;
    }

    v45 = v123 + 4;
    while (1)
    {
      v47 = *v45;
      sub_100046C50(v124, &aBlock);

      if (swift_dynamicCast())
      {
        break;
      }

      sub_1000C5544();
      sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
      v46 = sub_1000C5794();
      v21 = v109;
      sub_1000C1A54();

LABEL_22:
      ++v45;
      if (!--v44)
      {
        goto LABEL_64;
      }
    }

    v48 = *(v47 + 16);
    *&v115 = v45;
    if (v48 && (*&v114 = v123, v49 = sub_100099FF8(0x614C656372756F73, 0xEE0065676175676ELL), (v50 & 1) != 0) && (v123 = *(*(v47 + 56) + 8 * v49), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v47 + 16))
      {
        v93 = aBlock;
        v51 = sub_100099FF8(0xD000000000000013, v108 | 0x8000000000000000);
        if ((v52 & 1) == 0)
        {
          v63 = v44;

          p_aBlock = &v119;
LABEL_46:
          v66 = *(p_aBlock - 32);
          goto LABEL_40;
        }

        v123 = *(*(v47 + 56) + 8 * v51);
        swift_unknownObjectRetain();
        if ((swift_dynamicCast() & 1) == 0)
        {
          v63 = v44;

          goto LABEL_40;
        }

        if (*(v47 + 16))
        {
          v92 = *(&aBlock + 1);
          v90 = aBlock;
          v53 = sub_100099FF8(0x74616C736E617274, 0xEE00747865546465);
          if (v54)
          {
            v91 = *(*(v47 + 56) + 8 * v53);
            swift_unknownObjectRetain();

            objc_opt_self();
            v55 = swift_dynamicCastObjCClass();
            if (v55)
            {
              v87 = v44;
              v56 = v55;
              swift_unknownObjectRetain();
              v89 = v56;
              v57 = [v56 string];
              if (!v57)
              {
                sub_1000C5224();
                v57 = sub_1000C51F4();
              }

              v83[1] = sub_1000C5224();
              v86 = v58;
              v123 = _swiftEmptyArrayStorage;
              v122 = 0;
              v85 = v57;
              result = [v57 length];
              v88 = result;
              if (result < 0)
              {
                goto LABEL_69;
              }

              v59 = swift_allocObject();
              *(v59 + 16) = &v122;
              *(v59 + 24) = &v123;
              v60 = swift_allocObject();
              *(v60 + 16) = sub_100046D10;
              *(v60 + 24) = v59;
              v83[2] = v59;
              v120 = sub_100046D18;
              v121 = v60;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v119 = sub_10009771C;
              *(&v119 + 1) = &unk_1000F3EF8;
              v84 = _Block_copy(&aBlock);

              v61 = v84;
              [v89 enumerateAttributesInRange:0 options:v88 usingBlock:{0, v84}];
              _Block_release(v61);
              LOBYTE(v61) = swift_isEscapingClosureAtFileLocation();

              if (v61)
              {
                goto LABEL_70;
              }

              v62 = v122;
              if (v122)
              {
                swift_errorRetain();

                v89 = v62;
                swift_willThrow();
LABEL_52:
                swift_unknownObjectRelease();

                v111 = 0;
LABEL_53:
                v68 = sub_1000C5544();
                sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
                v69 = sub_1000C5794();
                if (os_log_type_enabled(v69, v68))
                {
                  v70 = swift_slowAlloc();
                  DWORD2(v93) = v68;
                  v71 = v70;
                  v72 = swift_slowAlloc();
                  *&v114 = v69;
                  *&v93 = v72;
                  *v71 = v106;
                  swift_errorRetain();
                  v73 = _swift_stdlib_bridgeErrorToNSError();
                  *(v71 + 4) = v73;
                  v74 = v93;
                  *v93 = v73;
                  _os_log_impl(&_mh_execute_header, v114, BYTE8(v93), "Decoding error: %@", v71, 0xCu);
                  sub_100018F90(v74, &qword_1000FC468, &qword_1000CAD70);

                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                v44 = v87;
                goto LABEL_22;
              }

              v67 = v111;
              sub_1000C3D14();
              v89 = v67;
              if (v67)
              {
                goto LABEL_52;
              }

              swift_unknownObjectRelease();

              v75 = v117;
              (*v104)(v21, v110, v117);

              v76 = v105;
              (*v103)(v105, v21, v75);
              (*v102)(v76, 0, 1, v75);
              v77 = v89;
              sub_1000C4284();
              v111 = v77;
              if (v77)
              {
                v21 = v109;
                (*v101)(v109, v117);
                v89 = v111;
                v111 = 0;
                v45 = v115;
                goto LABEL_53;
              }

              (*v97)(v99, v116, v100);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v22 = sub_100045590(0, v22[2] + 1, 1, v22, &qword_1000FC918, &qword_1000CB670, &type metadata accessor for TranslatedMessagePart);
              }

              v79 = v22[2];
              v78 = v22[3];
              *&v114 = v79 + 1;
              v80 = v79;
              if (v79 >= v78 >> 1)
              {
                v22 = sub_100045590(v78 > 1, v114, 1, v22, &qword_1000FC918, &qword_1000CB670, &type metadata accessor for TranslatedMessagePart);
              }

              swift_unknownObjectRelease();
              v81 = v98;
              v82 = v100;
              (*(v98 + 8))(v116, v100);
              v21 = v109;
              (*v101)(v109, v117);
              v22[2] = v114;
              (*(v81 + 32))(v22 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v80, v99, v82);
              v44 = v87;
              goto LABEL_42;
            }

            v63 = v44;

            swift_unknownObjectRelease();
LABEL_41:
            sub_1000C5544();
            sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
            v64 = sub_1000C5794();
            sub_1000C1A54();

            v44 = v63;
LABEL_42:
            v45 = v115;
            goto LABEL_22;
          }

          v63 = v44;

          p_aBlock = &aBlock;
          goto LABEL_46;
        }

        v63 = v44;
      }

      else
      {
        v63 = v44;
      }
    }

    else
    {
      v63 = v44;
    }

LABEL_40:

    goto LABEL_41;
  }

LABEL_11:
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v35)
    {
LABEL_67:
      sub_100015F68(&v126);

      sub_100018F90(&v127, &qword_1000FC3F8, &qword_1000CE300);

      return v22;
    }

    v32 = *(v29 + 8 * v37);
    ++v36;
    if (v32)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

void *sub_1000448E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100045AA0(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v7 = *v3;
      sub_1000124CC(&qword_1000FC920, &qword_1000CB678);
      sub_1000124CC(&qword_1000FC928, &qword_1000CB680);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_100045AA0((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      _swiftEmptyArrayStorage[v5 + 4] = v8;
      ++v3;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t MessageSummaryInfoDictionary.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FC8D0, &unk_1000CB3B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8 - 8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_100044CC8();
  sub_1000C5D04();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v28) = 0;
  sub_1000C5B24();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v28) = 1;
    sub_1000C5AF4();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v28) = 2;
    sub_1000C5AF4();
    v17 = v3[6];
    v18 = v3[7];
    LOBYTE(v28) = 3;
    sub_1000C5AF4();
    v19 = v3[8];
    v20 = v3[9];
    LOBYTE(v28) = 4;
    sub_1000C5AF4();
    v21 = v3[10];
    v22 = v3[11];
    LOBYTE(v28) = 5;
    sub_1000C5AF4();
    v23 = *(v3 + 96);
    LOBYTE(v28) = 6;
    sub_1000C5B04();
    v24 = *(v3 + 97);
    LOBYTE(v28) = 7;
    sub_1000C5B04();
    v28 = *(v3 + 13);
    v29 = v28;
    v27[23] = 8;
    sub_100044D1C(&v29, v27);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v28, *(&v28 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100044CC8()
{
  result = qword_1000FC8D8;
  if (!qword_1000FC8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8D8);
  }

  return result;
}

uint64_t sub_100044D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3F8, &qword_1000CE300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double MessageSummaryInfoDictionary.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100046344(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_100044E1C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 6450529;
    v6 = 6516065;
    if (a1 != 2)
    {
      v5 = 6581601;
    }

    if (a1)
    {
      v6 = 7564641;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 7631733;
    v2 = 7496296;
    if (a1 != 7)
    {
      v2 = 7368052;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1650552161;
    if (a1 != 4)
    {
      v3 = 1634954593;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100044EF8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_10008DB6C();
  return sub_1000C5CD4();
}

Swift::Int sub_100044F48()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_10008DB6C();
  return sub_1000C5CD4();
}

uint64_t sub_100044F8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s24MessagesBlastDoorService28MessageSummaryInfoDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_100044FBC@<X0>(uint64_t *a1@<X8>)
{
  result = MessageSummaryInfoDictionary.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100044FF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = _s24MessagesBlastDoorService28MessageSummaryInfoDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100045024(uint64_t a1)
{
  v2 = sub_100044CC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045060(uint64_t a1)
{
  v2 = sub_100044CC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_100045204(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC990, &qword_1000CB6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100045308(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC9B0, &qword_1000CB708);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_10004540C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC9C8, &qword_1000CB720);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100045590(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000124CC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_10004576C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000124CC(&qword_1000FC948, &qword_1000CB6A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000124CC(&qword_1000FC950, &qword_1000CB6A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000458B4()
{
  v0 = sub_1000124CC(&qword_1000FC920, &qword_1000CB678);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1000FC938;
    v3 = &unk_1000CB690;
  }

  else
  {
    v2 = &unk_1000FC940;
    v3 = &unk_1000CB698;
  }

  return sub_1000124CC(v2, v3);
}

char *sub_10004592C(char *a1, int64_t a2, char a3)
{
  result = sub_100045C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10004594C(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9F0, &qword_1000CB748, &type metadata accessor for Handwriting.DrawingStroke);
  *v3 = result;
  return result;
}

size_t sub_100045990(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9E8, &qword_1000CB740, &type metadata accessor for EncodedAttachments.Content);
  *v3 = result;
  return result;
}

size_t sub_1000459D4(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FCA08, &qword_1000CB760, &type metadata accessor for StrokePoint);
  *v3 = result;
  return result;
}

size_t sub_100045A18(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC988, &qword_1000CB6E0, &type metadata accessor for RelayReachabilityHandleResult);
  *v3 = result;
  return result;
}

size_t sub_100045A5C(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC970, &qword_1000CB6C8, &type metadata accessor for SMSCTPart);
  *v3 = result;
  return result;
}

char *sub_100045AA0(char *a1, int64_t a2, char a3)
{
  result = sub_100045D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100045AC0(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC998, &qword_1000CB6F0, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_100045B04(void *a1, int64_t a2, char a3)
{
  result = sub_100045E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100045B24(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9F8, &qword_1000CB750, &type metadata accessor for Handwriting.DrawingStrokePoint);
  *v3 = result;
  return result;
}

size_t sub_100045B68(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9B8, &qword_1000CB710, &type metadata accessor for PhotosPoster.ParallaxLayer);
  *v3 = result;
  return result;
}

size_t sub_100045BAC(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9C0, &qword_1000CB718, &type metadata accessor for MonogramPoster.GradientDefinition.MeshGradientPoint);
  *v3 = result;
  return result;
}

size_t sub_100045BF0(size_t a1, int64_t a2, char a3)
{
  result = sub_100045FA4(a1, a2, a3, *v3, &qword_1000FC9D0, &qword_1000CB728, &type metadata accessor for Color);
  *v3 = result;
  return result;
}

char *sub_100045C34(char *a1, int64_t a2, char a3)
{
  result = sub_100046180(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100045C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC9A0, &qword_1000CB6F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_100045D58(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC930, &qword_1000CB688);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100045E5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000124CC(&qword_1000FC948, &qword_1000CB6A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000124CC(&qword_1000FC950, &qword_1000CB6A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100045FA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_1000124CC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_100046180(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000124CC(&qword_1000FC990, &qword_1000CB6E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id sub_100046284()
{
  isa = sub_1000C1544().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_1000C1474();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100046344@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC9D8, &qword_1000CB730);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v47 = a1;
  sub_10001530C(a1, v10);
  sub_100044CC8();
  sub_1000C5CF4();
  if (v2)
  {
    return sub_100015F68(v47);
  }

  v12 = v6;
  LOBYTE(v56) = 0;
  v13 = v5;
  v14 = sub_1000C5A34();
  v74 = v15 & 1;
  LOBYTE(v56) = 1;
  v16 = sub_1000C5A04();
  v46 = v17;
  LOBYTE(v56) = 2;
  v18 = sub_1000C5A04();
  v45 = v19;
  v41 = v18;
  LOBYTE(v56) = 3;
  v40 = sub_1000C5A04();
  v44 = v20;
  LOBYTE(v56) = 4;
  v39 = sub_1000C5A04();
  v43 = v21;
  LOBYTE(v56) = 5;
  v37 = sub_1000C5A04();
  v38 = v16;
  v42 = v22;
  LOBYTE(v56) = 6;
  v36 = sub_1000C5A14();
  LOBYTE(v56) = 7;
  v35 = sub_1000C5A14();
  v75 = 8;
  sub_100042DD4();
  sub_1000C5A54();
  (*(v12 + 8))(v9, v13);
  v32 = v73;
  v33 = v72;
  *&v48 = v14;
  v34 = v74;
  BYTE8(v48) = v74;
  v24 = v45;
  v23 = v46;
  *&v49 = v38;
  *(&v49 + 1) = v46;
  *&v50 = v41;
  *(&v50 + 1) = v45;
  v25 = v43;
  v26 = v44;
  *&v51 = v40;
  *(&v51 + 1) = v44;
  *&v52 = v39;
  *(&v52 + 1) = v43;
  v27 = v42;
  *&v53 = v37;
  *(&v53 + 1) = v42;
  LOBYTE(v54) = v36;
  BYTE1(v54) = v35;
  *(&v54 + 1) = v72;
  v55 = v73;
  sub_100046D3C(&v48, &v56);
  sub_100015F68(v47);
  v56 = v14;
  v57 = v34;
  v58 = v38;
  v59 = v23;
  v60 = v41;
  v61 = v24;
  v62 = v40;
  v63 = v26;
  v64 = v39;
  v65 = v25;
  v66 = v37;
  v67 = v27;
  v68 = v36;
  v69 = v35;
  v70 = v33;
  v71 = v32;
  result = sub_100029510(&v56);
  v29 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v29;
  *(a2 + 96) = v54;
  *(a2 + 112) = v55;
  v30 = v49;
  *a2 = v48;
  *(a2 + 16) = v30;
  v31 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v31;
  return result;
}

uint64_t _s24MessagesBlastDoorService28MessageSummaryInfoDictionaryV10CodingKeysO8rawValueAESgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1590;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000468F4()
{
  result = qword_1000FC8E0;
  if (!qword_1000FC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8E0);
  }

  return result;
}

unint64_t sub_10004694C()
{
  result = qword_1000FC8E8;
  if (!qword_1000FC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8E8);
  }

  return result;
}

unint64_t sub_1000469A4()
{
  result = qword_1000FC8F0;
  if (!qword_1000FC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FC8F0);
  }

  return result;
}

__n128 sub_1000469F8(uint64_t a1, __int128 *a2)
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

uint64_t sub_100046A24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 120))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_100046A80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MessageSummaryInfoDictionary.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MessageSummaryInfoDictionary.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100046D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100046DC0()
{
  v0 = sub_1000C1464();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_1000C40D4();
  sub_100046E78(&qword_1000FCA38);
  sub_1000C1444();
}

uint64_t sub_100046E78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000C40D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100046ECC(uint64_t a1)
{
  result = sub_100012760();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100046F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_1000C4124();
  v88 = *(v3 - 8);
  v4 = *(v88 + 64);
  (__chkstk_darwin)();
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C4AC4();
  v8 = *(v7 - 8);
  v89 = v7;
  v90 = v8;
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v87 = &v73 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v73 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v73 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v73 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v73 - v25;
  __chkstk_darwin(v24);
  v28 = &v73 - v27;
  v29 = sub_1000C4054();
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29);
  v32 = __chkstk_darwin(v31);
  if (a1[17])
  {
    goto LABEL_4;
  }

  v36 = a1[16];
  if (v36 != 1 && v36 != 4)
  {
    if (v36 == 3)
    {
      v50 = a1[18];
      v49 = a1[19];

      v51 = v92;
      result = sub_1000C4114();
      if (!v51)
      {
        v52 = v88;
        (*(v88 + 16))(v12, v6, v3);
        (*(v90 + 104))(v12, enum case for TranscriptBackgroundCommandType.request(_:), v89);
        v53 = a1[21];
        v54 = *(a1 + 176);
        sub_1000C4984();
        return (*(v52 + 8))(v6, v3);
      }

      return result;
    }

    if (v36 != 2)
    {
      v93 = 0;
      v94 = 0xE000000000000000;
      v38 = v36;
      sub_1000C5944(36);

      v93 = 0xD000000000000022;
      v94 = 0x80000001000D6370;
      v100 = v38;
      v101._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v101);

      sub_1000C4FC4();
      sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      goto LABEL_5;
    }
  }

  if (a1[1])
  {
LABEL_4:
    sub_1000C4FC4();
    sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
LABEL_5:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v39 = *a1;
  v40 = *(a1 + 160);
  if (v40 == 2 || (v40 & 1) == 0)
  {
    v99 = *(a1 + 1);
    if (!*(&v99 + 1))
    {
      goto LABEL_4;
    }

    v98 = *(a1 + 2);
    if (!*(&v98 + 1))
    {
      goto LABEL_4;
    }

    v97 = *(a1 + 3);
    if (!*(&v97 + 1))
    {
      goto LABEL_4;
    }

    v96 = *(a1 + 4);
    if (!*(&v96 + 1))
    {
      goto LABEL_4;
    }

    v95 = *(a1 + 5);
    if (!*(&v95 + 1) || (a1[13] & 1) != 0 || (a1[15] & 1) != 0)
    {
      goto LABEL_4;
    }

    v74 = v36;
    v75 = v34;
    v88 = v32;
    v85 = v95;
    v82 = a1[12];
    v80 = a1[14];
    v78 = a1[18];
    v86 = a1[19];
    v76 = v35;
    v81 = v98;
    v83 = v97;
    v79 = *(&v96 + 1);
    v84 = v96;
    v77 = *(&v95 + 1);
    sub_100049288(&v99, &v93);
    sub_100049288(&v98, &v93);
    sub_100049288(&v97, &v93);
    sub_100049288(&v96, &v93);
    sub_100049288(&v95, &v93);

    v57 = v76;
    v58 = v92;
    result = sub_1000C4044();
    if (!v58)
    {
      v61 = v57;
      if (v74 == 1)
      {
        v62 = v75;
        (*(v75 + 16))(v20, v57, v88);
        (*(v90 + 104))(v20, enum case for TranscriptBackgroundCommandType.update(_:), v89);
        v63 = a1[21];
        v64 = *(a1 + 176);
      }

      else
      {
        v65 = v75;
        if (v74 == 4)
        {
          v68 = v87;
          v62 = v75;
          (*(v75 + 16))(v87, v61, v88);
          (*(v90 + 104))(v68, enum case for TranscriptBackgroundCommandType.requestResponse(_:), v89);
          v69 = a1[21];
          v70 = *(a1 + 176);
        }

        else
        {
          if (v74 != 2)
          {
            v93 = 0;
            v94 = 0xE000000000000000;
            v71 = v74;
            sub_1000C5944(76);
            v105._countAndFlagsBits = 0xD000000000000022;
            v105._object = 0x80000001000D6370;
            sub_1000C52E4(v105);
            v100 = v71;
            v106._countAndFlagsBits = sub_1000C5BE4();
            sub_1000C52E4(v106);

            v107._object = 0x80000001000D65A0;
            v107._countAndFlagsBits = 0xD000000000000028;
            sub_1000C52E4(v107);
            sub_1000C4FC4();
            sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            return (*(v65 + 8))(v61, v88);
          }

          v62 = v75;
          (*(v75 + 16))(v17, v61, v88);
          (*(v90 + 104))(v17, enum case for TranscriptBackgroundCommandType.refresh(_:), v89);
          v66 = a1[21];
          v67 = *(a1 + 176);
        }
      }

      sub_1000C4984();
      return (*(v62 + 8))(v61, v88);
    }
  }

  else
  {
    v41 = a1[16];
    v42 = v34;
    v88 = v32;
    v43 = a1[19];
    v44 = &v73 - v33;
    v72 = a1[18];

    v45 = v92;
    result = sub_1000C4044();
    if (!v45)
    {
      switch(v41)
      {
        case 1:
          v46 = v42;
          (*(v42 + 16))(v28, v44, v88);
          (*(v90 + 104))(v28, enum case for TranscriptBackgroundCommandType.update(_:), v89);
          v47 = a1[21];
          v48 = *(a1 + 176);
          break;
        case 4:
          (*(v42 + 16))(v23, v44, v88);
          (*(v90 + 104))(v23, enum case for TranscriptBackgroundCommandType.requestResponse(_:), v89);
          v59 = a1[21];
          v60 = *(a1 + 176);
          sub_1000C4984();
          return (*(v42 + 8))(v44, v88);
        case 2:
          v46 = v42;
          (*(v42 + 16))(v26, v44, v88);
          (*(v90 + 104))(v26, enum case for TranscriptBackgroundCommandType.refresh(_:), v89);
          v55 = a1[21];
          v56 = *(a1 + 176);
          break;
        default:
          v93 = 0;
          v94 = 0xE000000000000000;
          sub_1000C5944(76);
          v102._countAndFlagsBits = 0xD000000000000022;
          v102._object = 0x80000001000D6370;
          sub_1000C52E4(v102);
          v100 = v41;
          v103._countAndFlagsBits = sub_1000C5BE4();
          sub_1000C52E4(v103);

          v104._object = 0x80000001000D65A0;
          v104._countAndFlagsBits = 0xD000000000000028;
          sub_1000C52E4(v104);
          sub_1000C4FC4();
          sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
          swift_allocError();
          sub_1000C4FB4();
          swift_willThrow();
          return (*(v42 + 8))(v44, v88);
      }

      sub_1000C4984();
      return (*(v46 + 8))(v44, v88);
    }
  }

  return result;
}

void sub_100048000(uint64_t a1@<X8>)
{
  *&v129 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v127 = &v115 - v3;
  v136 = sub_1000C5974();
  v133 = *(v136 - 1);
  v4 = *(v133 + 64);
  v5 = __chkstk_darwin(v136);
  v128 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v135 = &v115 - v8;
  __chkstk_darwin(v7);
  v130 = &v115 - v9;
  v10 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v134 = (&v115 - v12);
  v13 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v131 = &v115 - v15;
  v16 = sub_1000C1974();
  v132 = *(v16 - 8);
  v17 = *(v132 + 64);
  __chkstk_darwin(v16);
  v19 = &v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4FC4();
  v137 = *(v20 - 8);
  v21 = *(v137 + 64);
  __chkstk_darwin(v20);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000C4ED4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v152;
  sub_1000C1994();
  if (!v29)
  {
    v152 = v24;
    v119 = 0;
    v122 = v19;
    v123 = v16;
    v31 = v136;
    v30 = v137;
    v124 = v23;
    v125 = v28;
    v121 = v20;
    v126 = v25;
    v32 = sub_1000C1984();
    if (v33 >> 60 == 15)
    {
      sub_100014F70();
      v34 = sub_1000C5834();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_1000C94D0;
      v36 = v134;
      v37 = v125;
      sub_1000C4EC4();
      v38 = sub_1000C1614();
      (*(*(v38 - 8) + 56))(v36, 0, 1, v38);
      v39 = sub_1000C4A84();
      v41 = v40;
      sub_100018F90(v36, &qword_1000FC520, &qword_1000C9D20);
      *(v35 + 56) = &type metadata for String;
      *(v35 + 64) = sub_100014FBC();
      *(v35 + 32) = v39;
      *(v35 + 40) = v41;
      sub_1000C5554();
      sub_1000C1A44();

      sub_1000491EC();
      swift_allocError();
      swift_willThrow();
      (*(v126 + 8))(v37, v152);
      return;
    }

    v117 = v32;
    v118 = v33;
    isa = sub_1000C1544().super.isa;
    v43 = [(objc_class *)isa _imOptionallyDecompressData];

    v44 = sub_1000C1564();
    v46 = v45;

    v120 = v46;
    v47 = v46 >> 62;
    v116 = v44;
    if ((v46 >> 62) <= 1)
    {
      v48 = v30;
      v49 = v123;
      v50 = v124;
      v51 = v132;
      v52 = v133;
      v53 = v122;
      if (!v47)
      {
        v54 = v135;
        if (!BYTE6(v120))
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v54 = v135;
      if (!__OFSUB__(HIDWORD(v44), v44))
      {
        if (HIDWORD(v44) - v44 <= 0)
        {
          goto LABEL_16;
        }

LABEL_11:
        v59 = sub_1000C1464();
        v60 = *(v59 + 48);
        v61 = *(v59 + 52);
        swift_allocObject();
        v62 = sub_1000C1454();
        sub_100014F1C();
        v63 = v119;
        v115 = v62;
        sub_1000C1444();
        if (v63)
        {
          *&v138 = v63;
          swift_errorRetain();
          sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
          v64 = v130;
          if (swift_dynamicCast())
          {

            (*(v52 + 32))(v54, v64, v31);
            v134 = sub_100014F70();
            v65 = v31;
            v66 = sub_1000C5834();
            v130 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v67 = swift_allocObject();
            v68 = v54;
            v69 = v67;
            v129 = xmmword_1000C94D0;
            *(v67 + 16) = xmmword_1000C94D0;
            v119 = *(v52 + 16);
            v70 = v127;
            v119(v127, v68, v31);
            (*(v52 + 56))(v70, 0, 1, v31);
            v71 = sub_1000C4A84();
            v73 = v72;
            sub_100018F90(v70, &qword_1000FC430, &unk_1000C9B00);
            v69[7] = &type metadata for String;
            v127 = sub_100014FBC();
            v69[8] = v127;
            v69[4] = v71;
            v69[5] = v73;
            sub_1000C5554();
            sub_1000C1A44();

            v74 = v132;
            v76 = v122;
            v75 = v123;
            (*(v132 + 104))(v122, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v123);
            sub_1000C1964();
            (*(v74 + 8))(v76, v75);
            v119(v128, v135, v65);
            v77 = v124;
            sub_1000C4FA4();
            v78 = sub_1000C5834();
            v79 = swift_allocObject();
            *(v79 + 16) = v129;
            v80 = v137;
            v134 = *(v137 + 16);
            v81 = v131;
            v82 = v121;
            v134(v131, v77, v121);
            (*(v80 + 56))(v81, 0, 1, v82);
            v83 = sub_1000C4A84();
            v85 = v84;
            sub_100018F90(v81, &qword_1000FC438, &unk_1000C9DC0);
            v86 = v127;
            *(v79 + 56) = &type metadata for String;
            *(v79 + 64) = v86;
            *(v79 + 32) = v83;
            *(v79 + 40) = v85;
            sub_1000C5554();
            sub_1000C1A44();

            sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            v87 = v124;
            v134(v88, v124, v82);
            swift_willThrow();
            sub_100018CBC(v117, v118);

            sub_100018CD0(v116, v120);
            (*(v80 + 8))(v87, v82);
            (*(v133 + 8))(v135, v136);
            (*(v126 + 8))(v125, v152);
          }

          else
          {

            sub_100014F70();
            v110 = sub_1000C5834();
            sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v111 = swift_allocObject();
            *(v111 + 16) = xmmword_1000C94D0;
            *&v138 = v63;
            v112 = sub_1000C4A84();
            v114 = v113;
            *(v111 + 56) = &type metadata for String;
            *(v111 + 64) = sub_100014FBC();
            *(v111 + 32) = v112;
            *(v111 + 40) = v114;
            sub_1000C5554();
            sub_1000C1A44();

            swift_getErrorValue();
            swift_getDynamicType();
            *&v138 = 0;
            *(&v138 + 1) = 0xE000000000000000;
            sub_1000C5944(22);

            *&v138 = 0xD000000000000014;
            *(&v138 + 1) = 0x80000001000D5330;
            v153._countAndFlagsBits = sub_1000C5D34();
            sub_1000C52E4(v153);

            sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
            sub_100018CBC(v117, v118);

            sub_100018CD0(v116, v120);

            (*(v126 + 8))(v125, v152);
          }
        }

        else
        {
          v150[8] = v146;
          v150[9] = v147;
          v150[10] = v148;
          v151 = v149;
          v150[4] = v142;
          v150[5] = v143;
          v150[6] = v144;
          v150[7] = v145;
          v150[0] = v138;
          v150[1] = v139;
          v150[2] = v140;
          v150[3] = v141;
          sub_100014F70();
          v102 = sub_1000C5834();
          sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_1000C94D0;
          v104 = v134;
          v105 = v125;
          sub_1000C4EC4();
          v106 = sub_1000C1614();
          (*(*(v106 - 8) + 56))(v104, 0, 1, v106);
          v107 = sub_1000C4A84();
          v109 = v108;
          sub_100018F90(v104, &qword_1000FC520, &qword_1000C9D20);
          *(v103 + 56) = &type metadata for String;
          *(v103 + 64) = sub_100014FBC();
          *(v103 + 32) = v107;
          *(v103 + 40) = v109;
          sub_1000C5554();
          sub_1000C1A44();

          sub_100046F3C(v150, v129);
          (*(v126 + 8))(v105, v152);
          sub_100015058(v150);

          sub_100018CD0(v116, v120);
          sub_100018CBC(v117, v118);
        }

        return;
      }

LABEL_21:
      __break(1u);
      return;
    }

    v48 = v30;
    v49 = v123;
    v50 = v124;
    v51 = v132;
    v52 = v133;
    v54 = v135;
    v53 = v122;
    if (v47 == 2)
    {
      v56 = *(v44 + 16);
      v55 = *(v44 + 24);
      v57 = __OFSUB__(v55, v56);
      v58 = v55 - v56;
      if (v57)
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v58 > 0)
      {
        goto LABEL_11;
      }
    }

LABEL_16:
    v89 = v49;
    v90 = v51;
    (*(v51 + 104))(v53, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v49);
    sub_1000C1964();
    (*(v90 + 8))(v53, v89);
    sub_1000C4FB4();
    sub_100014F70();
    v135 = sub_1000C5834();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_1000C94D0;
    v92 = v48;
    v93 = v48;
    v94 = v50;
    v136 = *(v93 + 16);
    v95 = v131;
    v96 = v121;
    (v136)(v131, v94, v121);
    (*(v92 + 56))(v95, 0, 1, v96);
    v97 = sub_1000C4A84();
    v99 = v98;
    sub_100018F90(v95, &qword_1000FC438, &unk_1000C9DC0);
    *(v91 + 56) = &type metadata for String;
    *(v91 + 64) = sub_100014FBC();
    *(v91 + 32) = v97;
    *(v91 + 40) = v99;
    sub_1000C5554();
    v100 = v135;
    sub_1000C1A44();

    sub_100049240(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    (v136)(v101, v94, v96);
    swift_willThrow();
    sub_100018CBC(v117, v118);
    sub_100018CD0(v116, v120);
    (*(v92 + 8))(v94, v96);
    (*(v126 + 8))(v125, v152);
  }
}

uint64_t sub_100049078@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_100049240(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_100048000(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_1000491EC()
{
  result = qword_1000FCA48;
  if (!qword_1000FCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA48);
  }

  return result;
}

uint64_t sub_100049240(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FC3F0, &unk_1000C97B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100049308(uint64_t a1@<X8>)
{
  v4 = sub_1000124CC(&qword_1000FC3B0, &qword_1000C9780);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v99 - v10;
  __chkstk_darwin(v9);
  v116 = v99 - v12;
  v115 = sub_1000C3084();
  v118 = *(v115 - 8);
  v13 = *(v118 + 64);
  __chkstk_darwin(v115);
  v117 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_1000C43F4();
  v121 = *(v119 - 8);
  v15 = *(v121 + 64);
  __chkstk_darwin(v119);
  v125 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1000C3C34();
  v124 = *(v122 - 8);
  v17 = *(v124 + 64);
  __chkstk_darwin(v122);
  v127 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1000C3D24();
  v19 = *(v126 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v126);
  v120 = v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000124CC(&qword_1000FCA50, &qword_1000CB8F8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v24 = sub_1000124CC(&qword_1000FCA58, &unk_1000CB900);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v26 = sub_1000C5274();
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v28 = v1[6];
  v29 = v1[7];
  if (v29 >> 60 == 15)
  {
    sub_1000C3FE4();
    if (!v2)
    {
      v30 = enum case for SMSCTPart.Content.attachment(_:);
      v31 = sub_1000C5034();
      (*(*(v31 - 8) + 104))(a1, v30, v31);
    }

    return;
  }

  v113 = v19;
  v114 = a1;
  v123 = v28;
  v128 = v29;
  v32 = v1[1];
  if (!v32)
  {
    goto LABEL_32;
  }

  v33 = *v1;
  if (*v1 == 0x616C702F74786574 && v32 == 0xEA00000000006E69 || (v34 = *v1, v35 = v1[1], (sub_1000C5C04() & 1) != 0))
  {
    v36 = v123;
    v37 = v128;
    sub_100018C68(v123, v128);
    sub_1000C5254();
    sub_1000C5244();
    v38 = v114;
    sub_1000C32E4();
    if (v2)
    {
      v39 = v36;
    }

    else
    {
      v40 = v36;
      v41 = enum case for SMSCTPart.Content.plain(_:);
      v42 = sub_1000C5034();
      (*(*(v42 - 8) + 104))(v38, v41, v42);
      v39 = v40;
    }

    v43 = v37;
    goto LABEL_36;
  }

  if (v33 == 0xD000000000000018 && 0x80000001000D66B0 == v32 || (sub_1000C5C04() & 1) != 0)
  {
    v44 = v123;
    v45 = v128;
    sub_100018C54(v123, v128);
    sub_100018C68(v44, v45);
    sub_1000C20F4();
    if (v2)
    {
LABEL_16:
      v39 = v44;
LABEL_17:
      v43 = v45;
LABEL_36:
      sub_100018CBC(v39, v43);
      return;
    }

    v46 = v114;
    sub_1000C4944();
    sub_100018CBC(v44, v45);
    v47 = &enum case for SMSCTPart.Content.attributedChipList(_:);
LABEL_19:
    v48 = *v47;
    v49 = sub_1000C5034();
    (*(*(v49 - 8) + 104))(v46, v48, v49);
    return;
  }

  if (v33 == 0xD000000000000019 && 0x80000001000D6690 == v32 || (sub_1000C5C04() & 1) != 0)
  {
    v44 = v123;
    v45 = v128;
    sub_100018C54(v123, v128);
    sub_100018C68(v44, v45);
    sub_1000C2324();
    if (v2)
    {
      goto LABEL_16;
    }

    v46 = v114;
    sub_1000C49F4();
    sub_100018CBC(v44, v45);
    v47 = &enum case for SMSCTPart.Content.attributedRichCards(_:);
    goto LABEL_19;
  }

  if ((v33 != 0xD000000000000010 || 0x80000001000D65D0 != v32) && (sub_1000C5C04() & 1) == 0)
  {
LABEL_32:
    v60 = v1[8];
    v61 = v1[9];
    v62 = v123;
    v59 = v128;
    sub_100018C54(v123, v128);
    sub_100018C54(v62, v59);

    v63 = v114;
    sub_1000C3FE4();
    if (!v2)
    {
      v64 = enum case for SMSCTPart.Content.attachment(_:);
      v65 = sub_1000C5034();
      (*(*(v65 - 8) + 104))(v63, v64, v65);
    }

    v39 = v62;
    goto LABEL_35;
  }

  v50 = v123;
  v51 = v128;
  sub_100018C68(v123, v128);
  sub_1000C5254();
  sub_1000C5244();
  if (!v52)
  {
    (*(v113 + 56))(v8, 1, 1, v126);
    v46 = v114;
    sub_1000C3064();
    sub_100018CBC(v50, v51);
    if (v2)
    {
      return;
    }

    goto LABEL_74;
  }

  v53 = [objc_opt_self() sharedInstance];
  v54 = objc_allocWithZone(MBDSMSToSuperParserContext);
  v55 = sub_1000C51F4();

  v56 = [v54 initWithContent:v55];

  if (![v53 parseContext:v56])
  {
    (*(v113 + 56))(v11, 1, 1, v126);
    v46 = v114;
    sub_1000C3064();
    v45 = v128;
    if (v2)
    {

      v39 = v123;
      goto LABEL_17;
    }

    sub_100018CBC(v123, v128);

    goto LABEL_74;
  }

  v57 = [v56 body];
  v58 = v120;
  _AttributedString.init(fromNSAttributedString:)(v57, v120);
  v59 = v128;
  if (v2)
  {

    v39 = v123;
LABEL_35:
    v43 = v59;
    goto LABEL_36;
  }

  v105 = v53;
  v104 = v56;
  v66 = [v56 orderedParts];
  v67 = sub_1000C53A4();

  v68 = *(v67 + 16);
  if (!v68)
  {
    v107 = &_swiftEmptyArrayStorage;
    v96 = v123;
    v71 = v126;
LABEL_76:

    v97 = v113;
    v98 = v116;
    (*(v113 + 16))(v116, v58, v71);
    (*(v97 + 56))(v98, 0, 1, v71);
    v46 = v114;
    sub_1000C3064();
    (*(v97 + 8))(v58, v71);
    sub_100018CBC(v96, v59);

LABEL_74:
    v47 = &enum case for SMSCTPart.Content.smil(_:);
    goto LABEL_19;
  }

  v69 = 0;
  v70 = v67 + 32;
  v109 = v124 + 32;
  v108 = v121 + 32;
  v99[1] = v118 + 32;
  v107 = &_swiftEmptyArrayStorage;
  v71 = v126;
  v103 = v67;
  v101 = v68;
  v100 = v67 + 32;
  while (1)
  {
    if (v69 >= *(v67 + 16))
    {
      goto LABEL_83;
    }

    v102 = v69;
    sub_10001D804(v70 + 32 * v69, v129);
    sub_10001D1A8(0, &qword_1000FCA60, off_1000EEAE0);
    if (!swift_dynamicCast())
    {

      sub_1000C4FC4();
      sub_100018BFC();
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CBC(v123, v59);
      (*(v113 + 8))(v58, v71);
      return;
    }

    v106 = v130;
    v72 = [v130 textParts];
    v73 = sub_1000C53A4();

    v111 = *(v73 + 16);
    if (v111)
    {
      break;
    }

    v76 = &_swiftEmptyArrayStorage;
LABEL_57:
    v112 = v76;

    v82 = [v106 attachmentParts];
    v83 = sub_1000C53A4();

    v111 = *(v83 + 16);
    if (v111)
    {
      v84 = 0;
      v85 = v83 + 32;
      v86 = &_swiftEmptyArrayStorage;
      while (v84 < *(v83 + 16))
      {
        sub_10001D804(v85, v129);
        sub_10001D1A8(0, &qword_1000FCA70, off_1000EEAD8);
        if (!swift_dynamicCast())
        {

          sub_1000C4FC4();
          sub_100018BFC();
          swift_allocError();
          goto LABEL_79;
        }

        v87 = v130;
        v88 = [v130 contentLocation];
        sub_1000C5224();

        sub_1000C43E4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_1000451B4(0, v86[2] + 1, 1, v86);
        }

        v90 = v86[2];
        v89 = v86[3];
        if (v90 >= v89 >> 1)
        {
          v86 = sub_1000451B4(v89 > 1, v90 + 1, 1, v86);
        }

        ++v84;

        v86[2] = v90 + 1;
        (*(v121 + 32))(v86 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v90, v125, v119);
        v85 += 32;
        if (v111 == v84)
        {
          goto LABEL_66;
        }
      }

LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }

LABEL_66:

    sub_1000C3074();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_10004518C(0, v107[2] + 1, 1, v107);
    }

    v92 = v107[2];
    v91 = v107[3];
    if (v92 >= v91 >> 1)
    {
      v107 = sub_10004518C(v91 > 1, v92 + 1, 1, v107);
    }

    v93 = v102 + 1;

    v94 = v107;
    v107[2] = v92 + 1;
    (*(v118 + 32))(v94 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v92, v117, v115);
    v69 = v93;
    v95 = v93 == v101;
    v59 = v128;
    v96 = v123;
    v71 = v126;
    v58 = v120;
    v67 = v103;
    v70 = v100;
    if (v95)
    {
      goto LABEL_76;
    }
  }

  v74 = 0;
  v75 = v73 + 32;
  v76 = &_swiftEmptyArrayStorage;
  v110 = v73;
  while (1)
  {
    if (v74 >= *(v73 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    sub_10001D804(v75, v129);
    sub_10001D1A8(0, &qword_1000FCA68, &off_1000EEAE8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v112 = v76;
    v77 = v130;
    v78 = [v130 contentLocation];
    sub_1000C5224();

    v79 = [v77 text];
    sub_1000C5224();

    sub_1000C3C24();
    v76 = v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v76 = sub_1000451DC(0, v76[2] + 1, 1, v76);
    }

    v73 = v110;
    v81 = v76[2];
    v80 = v76[3];
    if (v81 >= v80 >> 1)
    {
      v76 = sub_1000451DC(v80 > 1, v81 + 1, 1, v76);
    }

    ++v74;

    v76[2] = v81 + 1;
    (*(v124 + 32))(v76 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v81, v127, v122);
    v75 += 32;
    if (v111 == v74)
    {
      goto LABEL_57;
    }
  }

  sub_1000C4FC4();
  sub_100018BFC();
  swift_allocError();
LABEL_79:
  sub_1000C4FB4();
  swift_willThrow();

  sub_100018CBC(v123, v128);
  (*(v113 + 8))(v120, v126);
}

uint64_t sub_10004A758()
{
  v1 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v40 = &v37 - v6;
  v7 = sub_1000124CC(&qword_1000FC590, &qword_1000C9EC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v37 - v9;
  v11 = sub_1000124CC(&qword_1000FC598, &qword_1000C9EC8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v41 = &v37 - v14;
  v15 = sub_1000124CC(&qword_1000FC5A0, &unk_1000C9ED0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v37 - v21;
  sub_1000124CC(&qword_1000FC5C8, &qword_1000C9EF0);
  sub_1000C1704();
  v23 = *(v0 + 24);
  if (!v23)
  {
    (*(v16 + 8))(v22, v15);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_8:
    v29 = &qword_1000FC590;
    v30 = &qword_1000C9EC0;
    v31 = v10;
    goto LABEL_9;
  }

  v42 = v12;
  v43 = v11;
  v39 = v5;
  v24 = *(v0 + 16);
  if ((v23 & 0x2000000000000000) == 0)
  {
    v25 = *(v0 + 16);
  }

  sub_1000C5374();
  sub_100022D6C();
  sub_1000C16F4();
  sub_1000C1714();
  v26 = *(v16 + 8);
  v26(v20, v15);

  v28 = v42;
  v27 = v43;
  if ((*(v42 + 48))(v10, 1, v43) == 1)
  {
    v26(v22, v15);
    goto LABEL_8;
  }

  (*(v28 + 32))(v41, v10, v27);
  swift_getKeyPath();
  sub_1000C1724();

  sub_1000C52A4();

  v33 = v40;
  sub_1000C15E4();

  v34 = v39;
  sub_100018F28(v33, v39, &qword_1000FC520, &qword_1000C9D20);
  v35 = sub_1000C1614();
  v36 = *(v35 - 8);
  if ((*(v36 + 48))(v34, 1, v35) != 1)
  {
    v38 = sub_1000C15F4();
    sub_100018F90(v33, &qword_1000FC520, &qword_1000C9D20);
    (*(v28 + 8))(v41, v43);
    v26(v22, v15);
    (*(v36 + 8))(v34, v35);
    return v38;
  }

  sub_100018F90(v33, &qword_1000FC520, &qword_1000C9D20);
  (*(v28 + 8))(v41, v43);
  v26(v22, v15);
  v31 = v34;
  v29 = &qword_1000FC520;
  v30 = &qword_1000C9D20;
LABEL_9:
  sub_100018F90(v31, v29, v30);
  return 0;
}

uint64_t sub_10004AD3C(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FCA88, &unk_1000CBA70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8 - 8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10004B97C();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v22) = 0;
  sub_1000C5AF4();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v22) = 1;
    sub_1000C5AF4();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v22) = 2;
    sub_1000C5AF4();
    v22 = *(v3 + 3);
    v23 = v22;
    v21[23] = 3;
    sub_100018F28(&v23, v21, &qword_1000FC3F8, &qword_1000CE300);
    sub_100042EA0();
    sub_1000C5B44();
    sub_100018CBC(v22, *(&v22 + 1));
    v17 = v3[8];
    v18 = v3[9];
    LOBYTE(v22) = 4;
    sub_1000C5AF4();
  }

  return (*(v6 + 8))(v9, v5);
}

__n128 sub_10004AF8C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10004B578(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

Swift::Int sub_10004AFFC()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10004B0DC()
{
  *v0;
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_10004B1A8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_10004B284@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10004BAE8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10004B2B4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x80000001000D4FC0;
  v6 = 0xD000000000000010;
  v7 = 0xE400000000000000;
  v8 = 1635017060;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001000D4FE0;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x2D746E65746E6F63;
    v3 = 0xEA00000000006469;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_10004B350()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0xD000000000000010;
  v4 = 1635017060;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x2D746E65746E6F63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004B3E8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004BAE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004B410(uint64_t a1)
{
  v2 = sub_10004B97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004B44C(uint64_t a1)
{
  v2 = sub_10004B97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10004B488(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004B4A4(uint64_t a1, unsigned int a2)
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

uint64_t sub_10004B500(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10004B578@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FCA78, &qword_1000CBA68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10004B97C();
  sub_1000C5CF4();
  if (v2)
  {
    v43 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0xF000000000000000;
LABEL_4:
    sub_100015F68(a1);
    v49 = v17;
    v50 = v16;
    v51 = v15;
    v52 = v14;
    v53 = v13;
    v54 = v12;
    v55 = v11;
    v56 = v18;
    v57 = 0;
    v58 = 0;
    return sub_100022CBC(&v49);
  }

  LOBYTE(v49) = 0;
  v42 = sub_1000C5A04();
  v41 = v20;
  LOBYTE(v49) = 1;
  v21 = sub_1000C5A04();
  v38 = a2;
  v40 = v21;
  v39 = v22;
  LOBYTE(v49) = 2;
  v23 = sub_1000C5A04();
  v43 = 0;
  v13 = v23;
  v12 = v24;
  LOBYTE(v44) = 3;
  sub_100042DD4();
  v25 = v43;
  sub_1000C5A54();
  v43 = v25;
  if (v25)
  {
    (*(v6 + 8))(v9, v5);
    v11 = 0;
    v18 = 0xF000000000000000;
LABEL_9:
    v16 = v41;
    v17 = v42;
    v14 = v39;
    v15 = v40;
    goto LABEL_4;
  }

  v11 = v49;
  v18 = v50;
  sub_100018CBC(0, 0xF000000000000000);
  v59 = 4;
  v26 = v43;
  v27 = sub_1000C5A04();
  v43 = v26;
  if (v26)
  {
    (*(v6 + 8))(v9, v5);
    goto LABEL_9;
  }

  v29 = v27;
  v30 = v9;
  v31 = v28;
  (*(v6 + 8))(v30, v5);
  v32 = v41;
  *&v44 = v42;
  *(&v44 + 1) = v41;
  v33 = v39;
  *&v45 = v40;
  *(&v45 + 1) = v39;
  *&v46 = v13;
  *(&v46 + 1) = v12;
  *&v47 = v11;
  *(&v47 + 1) = v18;
  *&v48 = v29;
  *(&v48 + 1) = v31;
  sub_100022C60(&v44, &v49);
  sub_100015F68(a1);
  v49 = v42;
  v50 = v32;
  v51 = v40;
  v52 = v33;
  v53 = v13;
  v54 = v12;
  v55 = v11;
  v56 = v18;
  v57 = v29;
  v58 = v31;
  result = sub_100022CBC(&v49);
  v34 = v47;
  v35 = v38;
  v38[2] = v46;
  v35[3] = v34;
  v35[4] = v48;
  v36 = v45;
  *v35 = v44;
  v35[1] = v36;
  return result;
}

unint64_t sub_10004B97C()
{
  result = qword_1000FCA80;
  if (!qword_1000FCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA80);
  }

  return result;
}

unint64_t sub_10004B9E4()
{
  result = qword_1000FCA90;
  if (!qword_1000FCA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA90);
  }

  return result;
}

unint64_t sub_10004BA3C()
{
  result = qword_1000FCA98;
  if (!qword_1000FCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCA98);
  }

  return result;
}

unint64_t sub_10004BA94()
{
  result = qword_1000FCAA0;
  if (!qword_1000FCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAA0);
  }

  return result;
}

uint64_t sub_10004BAE8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000F1688;
  v6._object = a2;
  v4 = sub_1000C59F4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10004BB44(uint64_t a1)
{
  result = sub_1000126B8();
  *(a1 + 8) = result;
  return result;
}

void sub_10004BBB4(unint64_t a1@<X8>)
{
  v123 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v117 = &v104 - v3;
  v127 = sub_1000C5974();
  v125 = *(v127 - 1);
  v4 = *(v125 + 64);
  v5 = __chkstk_darwin(v127);
  v118 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v120 = &v104 - v8;
  __chkstk_darwin(v7);
  v119 = &v104 - v9;
  v10 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v122 = &v104 - v12;
  v13 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v121 = &v104 - v15;
  v16 = sub_1000C1974();
  v124 = *(v16 - 8);
  v17 = *(v124 + 64);
  __chkstk_darwin(v16);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000C4FC4();
  v126 = *(v20 - 8);
  v21 = *(v126 + 64);
  __chkstk_darwin(v20);
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000C4ED4();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v29 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v104 - v30;
  v32 = v128;
  sub_1000C1994();
  if (!v32)
  {
    v110 = v29;
    v112 = v19;
    v111 = 0;
    v113 = v16;
    v114 = v23;
    v33 = v127;
    v115 = v31;
    v116 = v24;
    v128 = v25;
    v34 = sub_1000C1984();
    if (v35 >> 60 == 15)
    {
      sub_100014F70();
      v36 = sub_1000C5754();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000C94D0;
      v38 = v122;
      v39 = v115;
      sub_1000C4EC4();
      v40 = sub_1000C1614();
      (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
      v41 = sub_1000C4A84();
      v43 = v42;
      sub_100018F90(v38, &qword_1000FC520, &qword_1000C9D20);
      *(v37 + 56) = &type metadata for String;
      *(v37 + 64) = sub_100014FBC();
      *(v37 + 32) = v41;
      *(v37 + 40) = v43;
      sub_1000C5554();
      sub_1000C1A44();

      sub_10004CE7C();
      swift_allocError();
      swift_willThrow();
      (*(v128 + 8))(v39, v116);
      return;
    }

    v109 = v34;
    v122 = v35;
    isa = sub_1000C1544().super.isa;
    v45 = [(objc_class *)isa _imOptionallyDecompressData];

    v46 = sub_1000C1564();
    v48 = v47;

    v49 = v48 >> 62;
    v108 = v20;
    if ((v48 >> 62) > 1)
    {
      v55 = v125;
      v50 = v126;
      v51 = v113;
      v52 = v114;
      v53 = v124;
      v54 = v112;
      if (v49 != 2)
      {
        goto LABEL_16;
      }

      v57 = *(v46 + 16);
      v56 = *(v46 + 24);
      v58 = __OFSUB__(v56, v57);
      v59 = v56 - v57;
      if (!v58)
      {
        if (v59 > 0)
        {
          goto LABEL_11;
        }

LABEL_16:
        v89 = v51;
        v90 = v53;
        (*(v53 + 104))(v54, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v51);
        sub_1000C1964();
        v111 = v46;
        (*(v90 + 8))(v54, v89);
        sub_1000C4FB4();
        sub_100014F70();
        v91 = sub_1000C5754();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1000C94D0;
        v127 = *(v50 + 16);
        v93 = v121;
        v94 = v108;
        (v127)(v121, v52, v108);
        (*(v50 + 56))(v93, 0, 1, v94);
        v95 = sub_1000C4A84();
        v123 = v48;
        v97 = v96;
        sub_100018F90(v93, &qword_1000FC438, &unk_1000C9DC0);
        *(v92 + 56) = &type metadata for String;
        *(v92 + 64) = sub_100014FBC();
        *(v92 + 32) = v95;
        *(v92 + 40) = v97;
        sub_1000C5554();
        sub_1000C1A44();

        sub_10004CED0(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        (v127)(v98, v52, v94);
        swift_willThrow();
        sub_100018CBC(v109, v122);
        sub_100018CD0(v111, v123);
        (*(v50 + 8))(v52, v94);
LABEL_19:
        (*(v128 + 8))(v115, v116);
        return;
      }

      __break(1u);
    }

    else
    {
      v50 = v126;
      v51 = v113;
      v52 = v114;
      v53 = v124;
      v54 = v112;
      if (!v49)
      {
        v55 = v125;
        if (!BYTE6(v48))
        {
          goto LABEL_16;
        }

LABEL_11:
        v60 = sub_1000C1464();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v63 = sub_1000C1454();
        sub_10004CF18();
        v64 = v111;
        sub_1000C1444();
        if (!v64)
        {
          sub_1000C1994();
          sub_1000C42D4();
          (*(v128 + 8))(v115, v116);
          sub_100018CBC(v109, v122);
          sub_100018CD0(v46, v48);

          return;
        }

        v110 = v63;
        v111 = v46;
        v123 = v48;
        v129 = v64;
        swift_errorRetain();
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v65 = v119;
        if (swift_dynamicCast())
        {

          v66 = v120;
          (*(v55 + 32))(v120, v65, v33);
          v119 = sub_100014F70();
          v67 = sub_1000C5754();
          v107 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v68 = swift_allocObject();
          v106 = xmmword_1000C94D0;
          *(v68 + 16) = xmmword_1000C94D0;
          v105 = *(v55 + 16);
          v69 = v117;
          v105(v117, v66, v33);
          (*(v55 + 56))(v69, 0, 1, v33);
          v70 = sub_1000C4A84();
          v72 = v71;
          sub_100018F90(v69, &qword_1000FC430, &unk_1000C9B00);
          *(v68 + 56) = &type metadata for String;
          v117 = sub_100014FBC();
          *(v68 + 64) = v117;
          *(v68 + 32) = v70;
          *(v68 + 40) = v72;
          sub_1000C5554();
          sub_1000C1A44();

          v73 = v124;
          v74 = v112;
          v75 = v113;
          (*(v124 + 104))(v112, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v113);
          sub_1000C1964();
          (*(v73 + 8))(v74, v75);
          v105(v118, v66, v33);
          v76 = v114;
          sub_1000C4FA4();
          v77 = sub_1000C5754();
          v78 = swift_allocObject();
          *(v78 + 16) = v106;
          v79 = v126;
          v80 = *(v126 + 16);
          v81 = v121;
          v82 = v108;
          v80(v121, v76, v108);
          (*(v79 + 56))(v81, 0, 1, v82);
          v83 = sub_1000C4A84();
          v85 = v84;
          sub_100018F90(v81, &qword_1000FC438, &unk_1000C9DC0);
          v86 = v117;
          *(v78 + 56) = &type metadata for String;
          *(v78 + 64) = v86;
          *(v78 + 32) = v83;
          *(v78 + 40) = v85;
          sub_1000C5554();
          sub_1000C1A44();

          sub_10004CED0(&qword_1000FC360, &type metadata accessor for Explosion);
          swift_allocError();
          v87 = v114;
          v80(v88, v114, v82);
          swift_willThrow();
          sub_100018CBC(v109, v122);

          sub_100018CD0(v111, v123);
          (*(v79 + 8))(v87, v82);
          (*(v125 + 8))(v120, v127);
          (*(v128 + 8))(v115, v116);

          return;
        }

        sub_100014F70();
        v99 = sub_1000C5754();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1000C94D0;
        v129 = v64;
        v101 = sub_1000C4A84();
        v103 = v102;
        *(v100 + 56) = &type metadata for String;
        *(v100 + 64) = sub_100014FBC();
        *(v100 + 32) = v101;
        *(v100 + 40) = v103;
        sub_1000C5554();
        sub_1000C1A44();

        swift_getErrorValue();
        swift_getDynamicType();
        v129 = 0;
        v130 = 0xE000000000000000;
        sub_1000C5944(22);

        v129 = 0xD000000000000014;
        v130 = 0x80000001000D5330;
        v131._countAndFlagsBits = sub_1000C5D34();
        sub_1000C52E4(v131);

        sub_10004CED0(&qword_1000FC360, &type metadata accessor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v109, v122);

        sub_100018CD0(v111, v123);

        goto LABEL_19;
      }

      v55 = v125;
      if (!__OFSUB__(HIDWORD(v46), v46))
      {
        if (HIDWORD(v46) - v46 > 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10004CB88(void *a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FCAD0, &qword_1000CBD60);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10004D354();
  sub_1000C5D04();
  v11[1] = a2;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380);
  sub_1000C5BB4();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10004CD08@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_1000C19B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000C1464();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_10004CED0(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();

  if (!v1)
  {
    sub_10004BBB4(a1);
    return (*(v4 + 8))(v7, v3);
  }

  return result;
}

unint64_t sub_10004CE7C()
{
  result = qword_1000FCAB0;
  if (!qword_1000FCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAB0);
  }

  return result;
}

uint64_t sub_10004CED0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004CF18()
{
  result = qword_1000FCAB8;
  if (!qword_1000FCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAB8);
  }

  return result;
}

Swift::Int sub_10004CF8C()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_10004CFE0()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

uint64_t sub_10004D024@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1720;
  v7._object = v3;
  v5 = sub_1000C59F4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10004D094@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1758;
  v8._object = a2;
  v6 = sub_1000C59F4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_10004D0EC(uint64_t a1)
{
  v2 = sub_10004D354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004D128(uint64_t a1)
{
  v2 = sub_10004D354();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10004D164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10004D1AC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_10004D1AC(uint64_t *a1)
{
  v3 = sub_1000124CC(&qword_1000FCAC0, &unk_1000CBD50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10001530C(a1, a1[3]);
  sub_10004D354();
  sub_1000C5CF4();
  if (v1)
  {
    sub_100015F68(a1);
  }

  else
  {
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC3A8);
    sub_1000C5AC4();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100015F68(a1);
  }

  return v9;
}

unint64_t sub_10004D354()
{
  result = qword_1000FCAC8;
  if (!qword_1000FCAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAC8);
  }

  return result;
}

unint64_t sub_10004D3BC()
{
  result = qword_1000FCAD8;
  if (!qword_1000FCAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAD8);
  }

  return result;
}

unint64_t sub_10004D414()
{
  result = qword_1000FCAE0;
  if (!qword_1000FCAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAE0);
  }

  return result;
}

unint64_t sub_10004D46C()
{
  result = qword_1000FCAE8;
  if (!qword_1000FCAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCAE8);
  }

  return result;
}

Swift::Int sub_10004D4D4()
{
  v2 = *v0;
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_10004D538(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051FB4();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10004D584()
{
  v2 = *v0;
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_10004D5EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054998(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004D620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100054998(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10004D66C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100053608();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_10004D6B8@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_10004D6D4()
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

void *sub_10004D6E8@<X0>(void *result@<X0>, char *a2@<X8>)
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

void sub_10004D708(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_10004D730()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AC70);
  sub_100042220(v0, qword_10010AC70);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1000CBEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "messageType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_1000C1924();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "sendDate";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "messageData";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "baseColor";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "identifier";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "supportsPlaybackTimeOffsets";
  *(v16 + 1) = 27;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "startDelay";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v7();
  return sub_1000C1934();
}

uint64_t sub_10004DA2C()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_10004DBEC();
          break;
        case 2:
          v8 = *(type metadata accessor for ETP_Header(0) + 24);
          sub_1000C1844();
          break;
        case 3:
          v4 = *(type metadata accessor for ETP_Header(0) + 28);
          sub_1000C17E4();
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        v7 = *(type metadata accessor for ETP_Header(0) + 40);
        sub_1000C17C4();
      }

      else if (result == 7)
      {
        v5 = *(type metadata accessor for ETP_Header(0) + 44);
        sub_1000C1804();
      }
    }

    else if (result == 4)
    {
      v6 = *(type metadata accessor for ETP_Header(0) + 32);
      sub_1000C1834();
    }

    else
    {
      v3 = *(type metadata accessor for ETP_Header(0) + 36);
      sub_1000C1814();
    }
  }

  return result;
}

uint64_t sub_10004DBEC()
{
  v0 = *(type metadata accessor for ETP_Header(0) + 20);
  sub_100051FB4();
  return sub_1000C17D4();
}

uint64_t sub_10004DC60()
{
  v2 = type metadata accessor for ETP_Header(0);
  v3 = v2;
  if (*(v0 + *(v2 + 20)) == 8 || (v16 = *(v0 + *(v2 + 20)), sub_100051FB4(), result = sub_1000C18A4(), !v1))
  {
    v5 = (v0 + v3[6]);
    if ((v5[1] & 1) != 0 || (v6 = *v5, result = sub_1000C1914(), !v1))
    {
      v7 = v0 + v3[7];
      v8 = *(v7 + 8);
      if (v8 >> 60 == 15 || (v9 = *v7, sub_100018C68(*v7, *(v7 + 8)), sub_1000C18B4(), result = sub_100018CBC(v9, v8), !v1))
      {
        v10 = (v0 + v3[8]);
        if ((v10[1] & 1) != 0 || (v11 = *v10, result = sub_1000C1904(), !v1))
        {
          v12 = (v0 + v3[9]);
          if (!v12[1] || (v13 = *v12, result = sub_1000C18E4(), !v1))
          {
            if (*(v0 + v3[10]) == 2 || (result = sub_1000C1894(), !v1))
            {
              v14 = (v0 + v3[11]);
              if (v14[1])
              {
                return sub_1000C1734();
              }

              v15 = *v14;
              result = sub_1000C18D4();
              if (!v1)
              {
                return sub_1000C1734();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

double sub_10004DE48@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  v4 = a1[6];
  *(a2 + a1[5]) = 8;
  v5 = a2 + v4;
  *v5 = 0;
  *(v5 + 8) = 1;
  result = 0.0;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_1000C9E00;
  v8 = a2 + v7;
  *v8 = 0;
  *(v8 + 4) = 1;
  v9 = a1[10];
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v9) = 2;
  v11 = a2 + a1[11];
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_10004DF48(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC10, type metadata accessor for ETP_Header);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004DFEC(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCBD8, type metadata accessor for ETP_Header);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E05C()
{
  sub_100051530(&qword_1000FCBD8, type metadata accessor for ETP_Header);

  return sub_1000C1884();
}

uint64_t sub_10004E0E0()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AC88);
  sub_100042220(v0, qword_10010AC88);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000CBED0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "Tap";
  *(v5 + 8) = 3;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_1000C1924();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "QuickTap";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "Heartbeat";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "Doodle";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ReadReceipt";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "Video";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "Kiss";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "Anger";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  return sub_1000C1934();
}

uint64_t sub_10004E444()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACA0);
  sub_100042220(v0, qword_10010ACA0);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CACB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "timeDeltas";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "colors";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_10004E650()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        v5 = *(type metadata accessor for ETP_Tap(0) + 28);
LABEL_3:
        v0 = 0;
        sub_1000C17E4();
        break;
      case 3:
        v1 = *(type metadata accessor for ETP_Tap(0) + 24);
        goto LABEL_3;
      case 2:
        v4 = *(type metadata accessor for ETP_Tap(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_10004E780(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC38, type metadata accessor for ETP_Tap);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004E820(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCBB8, type metadata accessor for ETP_Tap);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E88C()
{
  sub_100051530(&qword_1000FCBB8, type metadata accessor for ETP_Tap);

  return sub_1000C1884();
}

uint64_t sub_10004E938()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACB8);
  sub_100042220(v0, qword_10010ACB8);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000CBEE0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "beatsPerMinute";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_1000C1924();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "duration";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterX";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "normalizedCenterY";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "rotation";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "heartbreakTime";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_1000C1934();
}

uint64_t sub_10004EBFC()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for ETP_Heartbeat(0) + 32);
          goto LABEL_3;
        case 5:
          v8 = *(type metadata accessor for ETP_Heartbeat(0) + 36);
LABEL_3:
          v0 = 0;
          sub_1000C17F4();
          break;
        case 6:
          v5 = *(type metadata accessor for ETP_Heartbeat(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for ETP_Heartbeat(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for ETP_Heartbeat(0) + 24);
          sub_1000C1824();
          break;
        case 3:
          v4 = *(type metadata accessor for ETP_Heartbeat(0) + 28);
          goto LABEL_3;
      }
    }
  }
}

uint64_t sub_10004ED34()
{
  v2 = type metadata accessor for ETP_Heartbeat(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_1000C18C4(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_1000C18F4(), !v1))
    {
      v8 = (v0 + v2[7]);
      if ((v8[1] & 1) != 0 || (v9 = *v8, result = sub_1000C18C4(), !v1))
      {
        v10 = (v0 + v2[8]);
        if ((v10[1] & 1) != 0 || (v11 = *v10, result = sub_1000C18C4(), !v1))
        {
          v12 = (v0 + v2[9]);
          if ((v12[1] & 1) != 0 || (v13 = *v12, result = sub_1000C18C4(), !v1))
          {
            v14 = (v0 + v2[10]);
            if (v14[1])
            {
              return sub_1000C1734();
            }

            v15 = *v14;
            result = sub_1000C18C4();
            if (!v1)
            {
              return sub_1000C1734();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10004EE90@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C1744();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  v8 = a1[8];
  v9 = a2 + a1[7];
  *v9 = 0;
  *(v9 + 4) = 1;
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 4) = 1;
  v11 = a1[10];
  v12 = a2 + a1[9];
  *v12 = 0;
  *(v12 + 4) = 1;
  v13 = a2 + v11;
  *v13 = 0;
  *(v13 + 4) = 1;
  return result;
}

uint64_t sub_10004EF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC40, type metadata accessor for ETP_Heartbeat);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004F004(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB98, type metadata accessor for ETP_Heartbeat);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004F070()
{
  sub_100051530(&qword_1000FCB98, type metadata accessor for ETP_Heartbeat);

  return sub_1000C1884();
}

uint64_t sub_10004F0F0()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACD0);
  sub_100042220(v0, qword_10010ACD0);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CBEF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "doodleCount";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "doodleData";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "colorData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "pointTimeDeltaData";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_10004F338()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for ETP_Doodle(0) + 28);
        goto LABEL_3;
      }

      if (result == 4)
      {
        v5 = *(type metadata accessor for ETP_Doodle(0) + 32);
LABEL_3:
        v0 = 0;
        sub_1000C17E4();
      }
    }

    else if (result == 1)
    {
      v6 = *(type metadata accessor for ETP_Doodle(0) + 20);
      sub_1000C1824();
    }

    else if (result == 2)
    {
      v4 = *(type metadata accessor for ETP_Doodle(0) + 24);
      goto LABEL_3;
    }
  }
}

uint64_t sub_10004F434()
{
  v2 = type metadata accessor for ETP_Doodle(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_1000C18F4(), !v1))
  {
    v6 = v0 + v2[6];
    v7 = *(v6 + 8);
    if (v7 >> 60 == 15 || (v8 = *v6, sub_100018C68(*v6, *(v6 + 8)), sub_1000C18B4(), result = sub_100018CBC(v8, v7), !v1))
    {
      v9 = v0 + v2[7];
      v10 = *(v9 + 8);
      if (v10 >> 60 == 15 || (v11 = *v9, sub_100018C68(*v9, *(v9 + 8)), sub_1000C18B4(), result = sub_100018CBC(v11, v10), !v1))
      {
        v12 = v0 + v2[8];
        v13 = *(v12 + 8);
        if (v13 >> 60 == 15)
        {
          return sub_1000C1734();
        }

        v14 = *v12;
        sub_100018C68(*v12, *(v12 + 8));
        sub_1000C18B4();
        result = sub_100018CBC(v14, v13);
        if (!v1)
        {
          return sub_1000C1734();
        }
      }
    }
  }

  return result;
}

double sub_10004F5E0@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  result = 0.0;
  *(a2 + v4) = xmmword_1000C9E00;
  v7 = a1[8];
  *(a2 + a1[7]) = xmmword_1000C9E00;
  *(a2 + v7) = xmmword_1000C9E00;
  return result;
}

uint64_t sub_10004F680(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC48, type metadata accessor for ETP_Doodle);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004F720(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB78, type metadata accessor for ETP_Doodle);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004F78C()
{
  sub_100051530(&qword_1000FCB78, type metadata accessor for ETP_Doodle);

  return sub_1000C1884();
}

uint64_t sub_10004F80C()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010ACE8);
  sub_100042220(v0, qword_10010ACE8);
  return sub_1000C1944();
}

uint64_t sub_10004F858()
{
  do
  {
    result = sub_1000C17B4();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_10004F90C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC50, type metadata accessor for ETP_ReadReceipt);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10004F9AC(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB58, type metadata accessor for ETP_ReadReceipt);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10004FA18()
{
  sub_100051530(&qword_1000FCB58, type metadata accessor for ETP_ReadReceipt);

  return sub_1000C1884();
}

uint64_t sub_10004FA94()
{
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_10004FB1C()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD00);
  sub_100042220(v0, qword_10010AD00);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CACB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "introMessageData";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "playingMessagesData";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "mediaType";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_10004FD30()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 4:
        sub_10004FDF8();
        break;
      case 2:
        v4 = *(type metadata accessor for ETP_Video(0) + 24);
LABEL_10:
        v0 = 0;
        sub_1000C17E4();
        break;
      case 1:
        v3 = *(type metadata accessor for ETP_Video(0) + 20);
        goto LABEL_10;
    }
  }
}

uint64_t sub_10004FDF8()
{
  v0 = *(type metadata accessor for ETP_Video(0) + 28);
  sub_100053608();
  return sub_1000C17D4();
}

uint64_t sub_10004FE6C()
{
  v2 = type metadata accessor for ETP_Video(0);
  v3 = v0 + v2[5];
  v4 = *(v3 + 8);
  if (v4 >> 60 == 15 || (v5 = *v3, sub_100018C68(*v3, *(v3 + 8)), sub_1000C18B4(), result = sub_100018CBC(v5, v4), !v1))
  {
    v7 = v0 + v2[6];
    v8 = *(v7 + 8);
    if (v8 >> 60 == 15 || (v9 = *v7, sub_100018C68(*v7, *(v7 + 8)), sub_1000C18B4(), result = sub_100018CBC(v9, v8), !v1))
    {
      if (*(v0 + v2[7]) == 2)
      {
        return sub_1000C1734();
      }

      sub_100053608();
      result = sub_1000C18A4();
      if (!v1)
      {
        return sub_1000C1734();
      }
    }
  }

  return result;
}

double sub_10004FFE0@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_1000C9E00;
  *(a2 + v5) = xmmword_1000C9E00;
  *(a2 + a1[7]) = 2;
  return result;
}

uint64_t sub_100050074(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC58, type metadata accessor for ETP_Video);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_100050114(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB38, type metadata accessor for ETP_Video);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100050180()
{
  sub_100051530(&qword_1000FCB38, type metadata accessor for ETP_Video);

  return sub_1000C1884();
}

uint64_t sub_100050200()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD18);
  sub_100042220(v0, qword_10010AD18);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CBF00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "Video";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "Photo";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_1000503EC()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD30);
  sub_100042220(v0, qword_10010AD30);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000CACB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "delays";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_1000C1924();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "points";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "angles";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return sub_1000C1934();
}

uint64_t sub_1000505FC()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        v5 = *(type metadata accessor for ETP_Kiss(0) + 28);
LABEL_3:
        v0 = 0;
        sub_1000C17E4();
        break;
      case 2:
        v1 = *(type metadata accessor for ETP_Kiss(0) + 24);
        goto LABEL_3;
      case 1:
        v4 = *(type metadata accessor for ETP_Kiss(0) + 20);
        goto LABEL_3;
    }
  }
}

uint64_t sub_1000506C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = (v4 + v6[5]);
  v8 = v7[1];
  if (v8 >> 60 == 15 || (v9 = *v7, sub_100018C68(*v7, v8), sub_1000C18B4(), result = sub_100018CBC(v9, v8), !v5))
  {
    v11 = v4 + v6[6];
    v12 = *(v11 + 8);
    if (v12 >> 60 == 15 || (v13 = *v11, sub_100018C68(*v11, *(v11 + 8)), sub_1000C18B4(), result = sub_100018CBC(v13, v12), !v5))
    {
      v14 = v4 + v6[7];
      v15 = *(v14 + 8);
      if (v15 >> 60 == 15)
      {
        return sub_1000C1734();
      }

      v16 = *v14;
      sub_100018C68(*v14, *(v14 + 8));
      sub_1000C18B4();
      result = sub_100018CBC(v16, v15);
      if (!v5)
      {
        return sub_1000C1734();
      }
    }
  }

  return result;
}

double sub_100050868@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  result = 0.0;
  v5 = a1[6];
  *(a2 + a1[5]) = xmmword_1000C9E00;
  *(a2 + v5) = xmmword_1000C9E00;
  *(a2 + a1[7]) = xmmword_1000C9E00;
  return result;
}

uint64_t sub_100050914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC68, type metadata accessor for ETP_Kiss);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000509B4(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCB18, type metadata accessor for ETP_Kiss);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_100050A20()
{
  sub_100051530(&qword_1000FCB18, type metadata accessor for ETP_Kiss);

  return sub_1000C1884();
}

uint64_t sub_100050ACC()
{
  v0 = sub_1000C1954();
  sub_100042258(v0, qword_10010AD48);
  sub_100042220(v0, qword_10010AD48);
  sub_1000124CC(&qword_1000FCC20, &qword_1000CCB20);
  v1 = (sub_1000124CC(&qword_1000FCC28, &unk_1000CCB28) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000CB3A0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "duration";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_1000C1924();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "normalizedCenterX";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "normalizedCenterY";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "delays";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "points";
  *(v14 + 8) = 6;
  *(v14 + 16) = 2;
  v8();
  return sub_1000C1934();
}

uint64_t sub_100050D54()
{
  while (1)
  {
    result = sub_1000C17B4();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v7 = *(type metadata accessor for ETP_Anger(0) + 20);
LABEL_3:
        v0 = 0;
        sub_1000C17F4();
      }

      else if (result == 2)
      {
        v5 = *(type metadata accessor for ETP_Anger(0) + 24);
        goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v1 = *(type metadata accessor for ETP_Anger(0) + 28);
          goto LABEL_3;
        case 4:
          v6 = *(type metadata accessor for ETP_Anger(0) + 32);
LABEL_15:
          v0 = 0;
          sub_1000C17E4();
          break;
        case 5:
          v4 = *(type metadata accessor for ETP_Anger(0) + 36);
          goto LABEL_15;
      }
    }
  }
}

uint64_t sub_100050E70()
{
  v2 = type metadata accessor for ETP_Anger(0);
  v3 = (v0 + v2[5]);
  if ((v3[1] & 1) != 0 || (v4 = *v3, result = sub_1000C18C4(), !v1))
  {
    v6 = (v0 + v2[6]);
    if ((v6[1] & 1) != 0 || (v7 = *v6, result = sub_1000C18C4(), !v1))
    {
      v8 = (v0 + v2[7]);
      if ((v8[1] & 1) != 0 || (v9 = *v8, result = sub_1000C18C4(), !v1))
      {
        v10 = v0 + v2[8];
        v11 = *(v10 + 8);
        if (v11 >> 60 == 15 || (v12 = *v10, sub_100018C68(*v10, *(v10 + 8)), sub_1000C18B4(), result = sub_100018CBC(v12, v11), !v1))
        {
          v13 = v0 + v2[9];
          v14 = *(v13 + 8);
          if (v14 >> 60 == 15)
          {
            return sub_1000C1734();
          }

          v15 = *v13;
          sub_100018C68(*v13, *(v13 + 8));
          sub_1000C18B4();
          result = sub_100018CBC(v15, v14);
          if (!v1)
          {
            return sub_1000C1734();
          }
        }
      }
    }
  }

  return result;
}

double sub_100051024@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000C1744();
  v4 = a1[6];
  v5 = a2 + a1[5];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 4) = 1;
  v7 = a1[8];
  v8 = a2 + a1[7];
  *(v8 + 4) = 1;
  *v8 = 0;
  result = 0.0;
  *(a2 + v7) = xmmword_1000C9E00;
  *(a2 + a1[9]) = xmmword_1000C9E00;
  return result;
}

uint64_t sub_1000510AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C1754();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100051114(uint64_t a1)
{
  v3 = sub_1000C1754();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000511AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100051530(&qword_1000FCC70, type metadata accessor for ETP_Anger);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10005124C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1000C1954();
  v6 = sub_100042220(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1000512E8(uint64_t a1)
{
  v2 = sub_100051530(&qword_1000FCAF8, type metadata accessor for ETP_Anger);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_100051354()
{
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_1000513AC()
{
  sub_100051530(&qword_1000FCAF8, type metadata accessor for ETP_Anger);

  return sub_1000C1884();
}

Swift::Int sub_100051428()
{
  sub_1000C5CB4();
  sub_1000C51B4();
  return sub_1000C5CD4();
}

uint64_t sub_100051530(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100051DF0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100051F60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001308C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100051FB4()
{
  result = qword_1000FCC18;
  if (!qword_1000FCC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCC18);
  }

  return result;
}

uint64_t sub_100052008@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
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
    v10 = sub_1000C13F4();
    if (v10)
    {
      v11 = sub_1000C1424();
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
      result = sub_1000C1414();
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
  v10 = sub_1000C13F4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1000C1424();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1000C1414();
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

uint64_t sub_100052238(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
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
    v10 = sub_1000523C8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_100018CD0(a3, a4);
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
  sub_100052008(v13, a3, a4, &v12);
  v10 = v4;
  sub_100018CD0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1000523C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1000C13F4();
  v11 = result;
  if (result)
  {
    result = sub_1000C1424();
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

  sub_1000C1414();
  sub_100052008(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100052480(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_100018C68(a3, a4);
          return sub_100052238(v13, a2, a3, a4) & 1;
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

uint64_t sub_1000525E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Video(0);
  v5 = v4[5];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v10 = *v8;
  v9 = v8[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v7, v6);
    sub_100018C54(v10, v9);
    sub_100018CBC(v7, v6);
  }

  else
  {
    if (v9 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v7, v6);
    sub_100018C54(v10, v9);
    v11 = sub_100052480(v7, v6, v10, v9);
    sub_100018CBC(v10, v9);
    sub_100018CBC(v7, v6);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[6];
  v7 = *(a1 + v12);
  v6 = *(a1 + v12 + 8);
  v13 = (a2 + v12);
  v10 = *v13;
  v9 = v13[1];
  if (v6 >> 60 == 15)
  {
    if (v9 >> 60 == 15)
    {
      sub_100018C54(v7, v6);
      sub_100018C54(v10, v9);
      sub_100018CBC(v7, v6);
      goto LABEL_13;
    }

LABEL_10:
    sub_100018C54(v7, v6);
    sub_100018C54(v10, v9);
    sub_100018CBC(v7, v6);
    sub_100018CBC(v10, v9);
    return 0;
  }

  if (v9 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100018C54(v7, v6);
  sub_100018C54(v10, v9);
  v15 = sub_100052480(v7, v6, v10, v9);
  sub_100018CBC(v10, v9);
  sub_100018CBC(v7, v6);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 != 2)
  {
    if (v18 != 2 && ((v18 ^ v17) & 1) == 0)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v18 != 2)
  {
    return 0;
  }

LABEL_18:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_10005284C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Anger(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v25 = *v23;
  v24 = v23[1];
  if (v21 >> 60 == 15)
  {
    if (v24 >> 60 == 15)
    {
      v26 = v4;
      sub_100018C54(v22, v21);
      sub_100018C54(v25, v24);
      sub_100018CBC(v22, v21);
      v27 = v26;
      goto LABEL_24;
    }

LABEL_28:
    sub_100018C54(v22, v21);
    sub_100018C54(v25, v24);
    sub_100018CBC(v22, v21);
    sub_100018CBC(v25, v24);
    return 0;
  }

  if (v24 >> 60 == 15)
  {
    goto LABEL_28;
  }

  v27 = v4;
  sub_100018C54(v22, v21);
  sub_100018C54(v25, v24);
  v28 = sub_100052480(v22, v21, v25, v24);
  sub_100018CBC(v25, v24);
  sub_100018CBC(v22, v21);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v29 = v27[9];
  v22 = *(a1 + v29);
  v21 = *(a1 + v29 + 8);
  v30 = (a2 + v29);
  v25 = *v30;
  v24 = v30[1];
  if (v21 >> 60 != 15)
  {
    if (v24 >> 60 == 15)
    {
      goto LABEL_28;
    }

    sub_100018C54(v22, v21);
    sub_100018C54(v25, v24);
    v32 = sub_100052480(v22, v21, v25, v24);
    sub_100018CBC(v25, v24);
    sub_100018CBC(v22, v21);
    if (v32)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (v24 >> 60 != 15)
  {
    goto LABEL_28;
  }

  sub_100018C54(v22, v21);
  sub_100018C54(v25, v24);
  sub_100018CBC(v22, v21);
LABEL_31:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_100052B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = v5[5];
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 != 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v8, v7);
    sub_100018C54(v11, v10);
    sub_100018CBC(v8, v7);
  }

  else
  {
    if (v10 >> 60 == 15)
    {
      goto LABEL_10;
    }

    sub_100018C54(v8, v7);
    sub_100018C54(v11, v10);
    v12 = sub_100052480(v8, v7, v11, v10);
    sub_100018CBC(v11, v10);
    sub_100018CBC(v8, v7);
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = v5[6];
  v8 = *(a1 + v13);
  v7 = *(a1 + v13 + 8);
  v14 = (a2 + v13);
  v11 = *v14;
  v10 = v14[1];
  if (v7 >> 60 == 15)
  {
    if (v10 >> 60 == 15)
    {
      sub_100018C54(v8, v7);
      sub_100018C54(v11, v10);
      sub_100018CBC(v8, v7);
      goto LABEL_14;
    }

LABEL_10:
    sub_100018C54(v8, v7);
    sub_100018C54(v11, v10);
    sub_100018CBC(v8, v7);
    v15 = v11;
    v16 = v10;
LABEL_11:
    sub_100018CBC(v15, v16);
    return 0;
  }

  if (v10 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_100018C54(v8, v7);
  sub_100018C54(v11, v10);
  v18 = sub_100052480(v8, v7, v11, v10);
  sub_100018CBC(v11, v10);
  sub_100018CBC(v8, v7);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v19 = v5[7];
  v21 = *(a1 + v19);
  v20 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v24 = *v22;
  v23 = v22[1];
  if (v20 >> 60 != 15)
  {
    if (v23 >> 60 == 15)
    {
      goto LABEL_18;
    }

    sub_100018C54(v21, v20);
    sub_100018C54(v24, v23);
    v25 = sub_100052480(v21, v20, v24, v23);
    sub_100018CBC(v24, v23);
    sub_100018CBC(v21, v20);
    if (v25)
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v23 >> 60 != 15)
  {
LABEL_18:
    sub_100018C54(v21, v20);
    sub_100018C54(v24, v23);
    sub_100018CBC(v21, v20);
    v15 = v24;
    v16 = v23;
    goto LABEL_11;
  }

  sub_100018C54(v21, v20);
  sub_100018C54(v24, v23);
  sub_100018CBC(v21, v20);
LABEL_20:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_100052E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Heartbeat(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 4);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 4);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v4[9];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 4);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 4);
  if (v27)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      return 0;
    }
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v34)
    {
      return 0;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      return 0;
    }
  }

  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_100053004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Header(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 8)
  {
    if (v7 != 8)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  v8 = v4[6];
  v9 = (a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  v12 = *(a2 + v8 + 8);
  if (v10)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v9 != *v11)
    {
      LOBYTE(v12) = 1;
    }

    if (v12)
    {
      return 0;
    }
  }

  v13 = v4[7];
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 == 15)
  {
    if (v17 >> 60 == 15)
    {
      v19 = v4;
      sub_100018C54(v15, v14);
      sub_100018C54(v18, v17);
      sub_100018CBC(v15, v14);
      v20 = v19;
      goto LABEL_18;
    }

LABEL_15:
    sub_100018C54(v15, v14);
    sub_100018C54(v18, v17);
    sub_100018CBC(v15, v14);
    sub_100018CBC(v18, v17);
    return 0;
  }

  if (v17 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v22 = v4;
  sub_100018C54(v15, v14);
  sub_100018C54(v18, v17);
  v23 = sub_100052480(v15, v14, v18, v17);
  sub_100018CBC(v18, v17);
  sub_100018CBC(v15, v14);
  v20 = v22;
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v24 = v20[8];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 4);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 4);
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  v29 = v20[9];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      return 0;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v20;
      v35 = sub_1000C5C04();
      v20 = v34;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v33)
  {
    return 0;
  }

  v36 = v20[10];
  v37 = *(a1 + v36);
  v38 = *(a2 + v36);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  v39 = v20[11];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (v43)
    {
      goto LABEL_42;
    }

    return 0;
  }

  if (*v40 != *v42)
  {
    LOBYTE(v43) = 1;
  }

  if (v43)
  {
    return 0;
  }

LABEL_42:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

uint64_t sub_1000532DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ETP_Doodle(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 24);
  v12 = *(a1 + v10);
  v11 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v15 = *v13;
  v14 = v13[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 != 15)
    {
      goto LABEL_21;
    }

    v16 = v4;
    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    sub_100018CBC(v12, v11);
    v17 = v16;
  }

  else
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    v18 = v4;
    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    v19 = sub_100052480(v12, v11, v15, v14);
    sub_100018CBC(v15, v14);
    sub_100018CBC(v12, v11);
    v17 = v18;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(v17 + 28);
  v12 = *(a1 + v20);
  v11 = *(a1 + v20 + 8);
  v21 = (a2 + v20);
  v15 = *v21;
  v14 = v21[1];
  if (v11 >> 60 == 15)
  {
    if (v14 >> 60 == 15)
    {
      v22 = v17;
      sub_100018C54(v12, v11);
      sub_100018C54(v15, v14);
      sub_100018CBC(v12, v11);
      v23 = v22;
      goto LABEL_17;
    }

LABEL_21:
    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    sub_100018CBC(v12, v11);
    sub_100018CBC(v15, v14);
    return 0;
  }

  if (v14 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v23 = v17;
  sub_100018C54(v12, v11);
  sub_100018C54(v15, v14);
  v24 = sub_100052480(v12, v11, v15, v14);
  sub_100018CBC(v15, v14);
  sub_100018CBC(v12, v11);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v25 = *(v23 + 32);
  v12 = *(a1 + v25);
  v11 = *(a1 + v25 + 8);
  v26 = (a2 + v25);
  v15 = *v26;
  v14 = v26[1];
  if (v11 >> 60 != 15)
  {
    if (v14 >> 60 == 15)
    {
      goto LABEL_21;
    }

    sub_100018C54(v12, v11);
    sub_100018C54(v15, v14);
    v28 = sub_100052480(v12, v11, v15, v14);
    sub_100018CBC(v15, v14);
    sub_100018CBC(v12, v11);
    if (v28)
    {
      goto LABEL_24;
    }

    return 0;
  }

  if (v14 >> 60 != 15)
  {
    goto LABEL_21;
  }

  sub_100018C54(v12, v11);
  sub_100018C54(v15, v14);
  sub_100018CBC(v12, v11);
LABEL_24:
  sub_1000C1754();
  sub_100051530(&qword_1000FCC30, &type metadata accessor for UnknownStorage);
  return sub_1000C51D4() & 1;
}

unint64_t sub_100053608()
{
  result = qword_1000FCC60;
  if (!qword_1000FCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FCC60);
  }

  return result;
}

uint64_t sub_100053670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
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

uint64_t sub_100053750(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

void sub_10005380C()
{
  sub_1000C1754();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCE0);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCE8);
      if (v2 <= 0x3F)
      {
        sub_10005425C(319, &qword_1000FCCF0);
        if (v3 <= 0x3F)
        {
          sub_10005425C(319, &qword_1000FCCF8);
          if (v4 <= 0x3F)
          {
            sub_10005425C(319, &qword_1000FCD00);
            if (v5 <= 0x3F)
            {
              sub_10005425C(319, &qword_1000FCD08);
              if (v6 <= 0x3F)
              {
                sub_10005425C(319, &unk_1000FCD10);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ETP_Header.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ETP_Header.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100053B44()
{
  sub_1000C1754();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &unk_1000FCE58);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCF8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100053C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_100053D00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_100053DC8()
{
  sub_1000C1754();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCF8);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100053EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1754();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100053F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1754();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100053F90()
{
  result = sub_1000C1754();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100054010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000540E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

void sub_1000541A0()
{
  sub_1000C1754();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCF0);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &unk_1000FD038);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10005425C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000C5854();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000542CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1000543A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_100054470()
{
  sub_1000C1754();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &qword_1000FCCF0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100054520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C1754();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_1000545FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000C1754();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 32));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

void sub_1000546C4()
{
  sub_1000C1754();
  if (v0 <= 0x3F)
  {
    sub_10005425C(319, &unk_1000FCE58);
    if (v1 <= 0x3F)
    {
      sub_10005425C(319, &qword_1000FCCF0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10005478C()
{
  result = qword_1000FD1A8;
  if (!qword_1000FD1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1A8);
  }

  return result;
}

unint64_t sub_1000547E4()
{
  result = qword_1000FD1B0;
  if (!qword_1000FD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1B0);
  }

  return result;
}

unint64_t sub_10005483C()
{
  result = qword_1000FD1B8;
  if (!qword_1000FD1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1B8);
  }

  return result;
}

unint64_t sub_100054894()
{
  result = qword_1000FD1C0;
  if (!qword_1000FD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1C0);
  }

  return result;
}

unint64_t sub_1000548EC()
{
  result = qword_1000FD1C8;
  if (!qword_1000FD1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1C8);
  }

  return result;
}

unint64_t sub_100054944()
{
  result = qword_1000FD1D0;
  if (!qword_1000FD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1D0);
  }

  return result;
}

uint64_t sub_100054998(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    return 8;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_100054A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v32 - v5;
  v7 = sub_1000124CC(&qword_1000FD1E8, &qword_1000CCDE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v32 - v9;
  v11 = sub_1000C4B64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 17))
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    (*(v12 + 104))(v15, enum case for RelayReachabilityContextChatStyle.none(_:), v11);
  }

  else
  {
    v16 = &enum case for RelayReachabilityContextChatStyle.groupChat(_:);
    if (*(a1 + 16) != 43)
    {
      v16 = &enum case for RelayReachabilityContextChatStyle.instantMessage(_:);
    }

    (*(v12 + 104))(v10, *v16, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
  }

  v17 = *(a1 + 8);
  v38 = *a1;
  v39 = v15;
  v18 = *(a1 + 32);
  v36 = *(a1 + 24);
  v37 = v17;
  v19 = *(a1 + 48);
  v34 = v6;
  v35 = v18;
  if (v19)
  {
    v20 = *(a1 + 40);

    sub_1000C15E4();
  }

  else
  {
    v21 = sub_1000C1614();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  v32[3] = *(a1 + 88);
  v22 = *(a1 + 89);
  v23 = *(a1 + 90);
  v24 = *(a1 + 91);
  v25 = *(a1 + 92);
  v26 = *(a1 + 93);
  v27 = *(a1 + 94);
  v28 = *(a1 + 64);
  v33 = *(a1 + 56);
  v30 = *(a1 + 72);
  v29 = *(a1 + 80);

  sub_1000C44F4();
  return sub_10002ACC0(a1);
}

void sub_100054DBC(NSObject *a1@<X8>)
{
  v128 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v129 = &v124 - v3;
  v143 = sub_1000C5974();
  v138 = *(v143 - 1);
  v4 = *(v138 + 64);
  v5 = __chkstk_darwin(v143);
  v132 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v134 = (&v124 - v8);
  v9 = __chkstk_darwin(v7);
  v141 = (&v124 - v10);
  __chkstk_darwin(v9);
  v136 = &v124 - v11;
  v12 = sub_1000C4504();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v133 = (&v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v140 = &v124 - v17;
  v18 = sub_1000C1A94();
  v146 = *(v18 - 8);
  v147 = v18;
  v19 = *(v146 + 64);
  v20 = __chkstk_darwin(v18);
  v130 = (&v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __chkstk_darwin(v20);
  v135 = &v124 - v23;
  v24 = __chkstk_darwin(v22);
  v137 = &v124 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v124 - v27;
  __chkstk_darwin(v26);
  v30 = &v124 - v29;
  v31 = sub_1000C1974();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1000C4FC4();
  v144 = *(v148 - 8);
  v36 = *(v144 + 64);
  v37 = __chkstk_darwin(v148);
  v131 = &v124 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v139 = &v124 - v40;
  v41 = __chkstk_darwin(v39);
  v43 = &v124 - v42;
  __chkstk_darwin(v41);
  v145 = &v124 - v44;
  isa = sub_1000C1544().super.isa;
  v46 = [(objc_class *)isa _imOptionallyDecompressData];

  v157 = sub_1000C1564();
  v48 = v47;

  v149 = v48;
  v49 = v48 >> 62;
  if ((v48 >> 62) > 1)
  {
    if (v49 != 2)
    {
      goto LABEL_14;
    }

    v51 = *(v157 + 16);
    v50 = *(v157 + 24);
    v52 = __OFSUB__(v50, v51);
    v53 = v50 - v51;
    if (!v52)
    {
      if (v53 > 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  if (v49)
  {
    if (!__OFSUB__(HIDWORD(v157), v157))
    {
      if (HIDWORD(v157) - v157 > 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      (*(v32 + 104))(v35, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v31);
      sub_1000C1964();
      (*(v32 + 8))(v35, v31);
      v75 = v145;
      sub_1000C4FB4();
      sub_1000C1A64();
      v76 = v144;
      v77 = v148;
      v143 = *(v144 + 16);
      v143(v43, v75, v148);
      v78 = sub_1000C1A84();
      v79 = sub_1000C5554();
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v142 = v30;
        v81 = v76;
        v82 = v80;
        v139 = v80;
        v141 = swift_slowAlloc();
        *&v153[0] = v141;
        *v82 = 136446210;
        v83 = v140;
        v143(v140, v43, v77);
        (*(v81 + 56))(v83, 0, 1, v77);
        v138 = sub_1000C4A84();
        v85 = v84;
        sub_100018F90(v83, &qword_1000FC438, &unk_1000C9DC0);
        v86 = *(v81 + 8);
        v86(v43, v148);
        v87 = sub_10008AC30(v138, v85, v153);
        v77 = v148;

        v88 = v139;
        *(v139 + 4) = v87;
        _os_log_impl(&_mh_execute_header, v78, v79, "Message unpacking explosion: %{public}s", v88, 0xCu);
        sub_100015F68(v141);

        (*(v146 + 8))(v142, v147);
      }

      else
      {

        v89 = *(v76 + 8);
        v89(v43, v77);
        v86 = v89;
        (*(v146 + 8))(v30, v147);
      }

      sub_100056010(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v90 = v145;
      v143(v91, v145, v77);
      swift_willThrow();
      sub_100018CD0(v157, v149);
      v86(v90, v77);
      return;
    }

    goto LABEL_30;
  }

  if (!BYTE6(v149))
  {
    goto LABEL_14;
  }

LABEL_8:
  v54 = sub_1000C1464();
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  v57 = sub_1000C1454();
  sub_100056058();
  v145 = v57;
  v58 = v142;
  sub_1000C1444();
  if (v58)
  {
    *&v153[0] = v58;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    v59 = v136;
    v60 = v143;
    if (swift_dynamicCast())
    {

      v61 = v138;
      v62 = v141;
      (*(v138 + 32))(v141, v59, v60);
      sub_1000C1A64();
      v63 = v134;
      v142 = *(v61 + 16);
      v133 = (v61 + 16);
      (v142)(v134, v62, v60);
      v64 = sub_1000C1A84();
      v65 = sub_1000C5554();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v126 = v66;
        v130 = swift_slowAlloc();
        *&v151 = v130;
        *v66 = 136446210;
        v128 = v64;
        v67 = v134;
        v127 = v65;
        v68 = v129;
        (v142)(v129, v134, v60);
        (*(v61 + 56))(v68, 0, 1, v60);
        v125 = sub_1000C4A84();
        v70 = v69;
        sub_100018F90(v68, &qword_1000FC430, &unk_1000C9B00);
        v136 = *(v61 + 8);
        (v136)(v67, v143);
        v71 = sub_10008AC30(v125, v70, &v151);
        v60 = v143;

        v72 = v126;
        *(v126 + 1) = v71;
        v73 = v128;
        _os_log_impl(&_mh_execute_header, v128, v127, "RelayReachabilityRequestDictionary unpacking error: %{public}s", v72, 0xCu);
        sub_100015F68(v130);
      }

      else
      {

        v136 = *(v61 + 8);
        (v136)(v63, v60);
      }

      v74 = v137;
      v137 = *(v146 + 8);
      (v137)(v74, v147);
      (*(v32 + 104))(v35, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v31);
      sub_1000C1964();
      (*(v32 + 8))(v35, v31);
      (v142)(v132, v141, v60);
      v103 = v139;
      sub_1000C4FA4();
      v104 = v135;
      sub_1000C1A64();
      v105 = v144;
      v106 = v131;
      v107 = v103;
      v108 = v148;
      v142 = *(v144 + 16);
      (v142)(v131, v107, v148);
      v109 = sub_1000C1A84();
      v110 = sub_1000C5554();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v133 = v111;
        v134 = swift_slowAlloc();
        *&v151 = v134;
        *v111 = 136446210;
        v112 = v140;
        (v142)(v140, v106, v108);
        (*(v105 + 56))(v112, 0, 1, v108);
        v132 = sub_1000C4A84();
        v113 = v106;
        v115 = v114;
        sub_100018F90(v112, &qword_1000FC438, &unk_1000C9DC0);
        LODWORD(v140) = v110;
        v116 = *(v105 + 8);
        v116(v113, v108);
        v117 = v116;
        v118 = sub_10008AC30(v132, v115, &v151);

        v119 = v133;
        *(v133 + 1) = v118;
        _os_log_impl(&_mh_execute_header, v109, v140, "RelayReachabilityRequestDictionary unpacking explosion: %{public}s", v119, 0xCu);
        sub_100015F68(v134);

        v120 = v135;
      }

      else
      {

        v121 = *(v105 + 8);
        v121(v106, v108);
        v117 = v121;
        v120 = v104;
      }

      (v137)(v120, v147);
      sub_100056010(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v122 = v139;
      (v142)(v123, v139, v108);
      swift_willThrow();

      sub_100018CD0(v157, v149);
      v117(v122, v108);
      (v136)(v141, v143);
    }

    else
    {

      v95 = v130;
      sub_1000C1A64();
      swift_errorRetain();
      v96 = sub_1000C1A84();
      v97 = sub_1000C5554();

      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        *&v153[0] = v99;
        *v98 = 136446210;
        *&v151 = v58;
        v100 = sub_1000C4A84();
        v102 = sub_10008AC30(v100, v101, v153);

        *(v98 + 4) = v102;
        _os_log_impl(&_mh_execute_header, v96, v97, "RelayReachabilityRequestDictionary unpacking unknown error: %{public}s", v98, 0xCu);
        sub_100015F68(v99);
      }

      (*(v146 + 8))(v95, v147);
      swift_getErrorValue();
      swift_getDynamicType();
      *&v153[0] = 0;
      *(&v153[0] + 1) = 0xE000000000000000;
      sub_1000C5944(22);

      *&v153[0] = 0xD000000000000014;
      *(&v153[0] + 1) = 0x80000001000D5330;
      v158._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v158);

      sub_100056010(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();

      sub_100018CD0(v157, v149);
    }
  }

  else
  {
    v152[3] = v153[4];
    v152[4] = v153[5];
    v152[5] = *v154;
    *(&v152[5] + 15) = *&v154[15];
    v151 = v153[0];
    v152[0] = v153[1];
    v152[1] = v153[2];
    v152[2] = v153[3];
    sub_1000C1A64();
    v92 = sub_1000C1A84();
    v93 = sub_1000C5554();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&_mh_execute_header, v92, v93, "Unpacking RelayReachabilityRequestDictionary", v94, 2u);
    }

    (*(v146 + 8))(v28, v147);
    v155[2] = *(&v152[2] + 8);
    v155[3] = *(&v152[3] + 8);
    v156[0] = *(&v152[4] + 8);
    *(v156 + 15) = *(&v152[5] + 7);
    v155[0] = *(v152 + 8);
    v155[1] = *(&v152[1] + 8);

    sub_10002ACF0(v152 + 8, &v150);
    sub_100054A38(v155, v133);
    sub_1000C4514();

    sub_100018CD0(v157, v149);
    sub_10002DFF8(&v151);
  }
}

uint64_t sub_100056010(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100056058()
{
  result = qword_1000FD1E0;
  if (!qword_1000FD1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1E0);
  }

  return result;
}

uint64_t sub_100056104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a2;
  v61 = a3;
  v4 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v66 = &v58 - v6;
  v62 = sub_1000C22C4();
  v60 = *(v62 - 8);
  v7 = *(v60 + 64);
  v8 = __chkstk_darwin(v62);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v58 - v10;
  v65 = sub_1000C3C74();
  v64 = *(v65 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin(v65);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v58 - v16;
  v18 = sub_1000C4FC4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000C3CC4();
  v70 = *(v74 - 8);
  v23 = *(v70 + 64);
  v24 = __chkstk_darwin(v74);
  v58 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v58 - v26;
  v28 = *(a1 + 1);
  sub_1000C3CA4();
  if (v28 == sub_1000C3CB4())
  {
    v63 = v27;
    v29 = *(a1 + 2);
    v30 = v70;
    if (*a1 != 2)
    {
      sub_100014F70();
      v31 = sub_1000C56A4();
      v32 = sub_1000C5554();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 16777472;
        v33[4] = 2;
        _os_log_impl(&_mh_execute_header, v31, v32, "SyndicationAction version greater than known version or lower than the minimum version expected. Unpacking to version %hhu", v33, 5u);
      }
    }

    if ((sub_1000C3C44() & 1) == 0)
    {
      sub_100014F70();
      v34 = sub_1000C56A4();
      v35 = sub_1000C5554();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 16777472;
        v36[4] = 2;
        _os_log_impl(&_mh_execute_header, v34, v35, "SyndicationAction type not valid, defaulting to none %hhu", v36, 5u);
      }

      sub_1000C3C54();
      sub_1000C3C64();
      (*(v64 + 8))(v13, v65);
    }

    v37 = *(a1 + 8);
    v38 = SyndicationActionDictionary.messagePartRange()();
    v40 = *(a1 + 48);
    v39 = *(a1 + 56);
    v41 = *(a1 + 112);
    v72[2] = *(a1 + 96);
    v72[3] = v41;
    v73 = *(a1 + 128);
    v42 = *(a1 + 80);
    v72[0] = *(a1 + 64);
    v72[1] = v42;
    v43 = v66;
    sub_10002D3E8(v67, v66);

    sub_100016020(v72, v71);
    v44 = v68;
    v45 = v69;
    sub_1000AB4E8(v72, v43);
    if (v44)
    {
      (*(v30 + 8))(v63, v74);
    }

    else
    {
      v54 = *(v30 + 16);
      v68 = v38;
      v54(v58, v63, v74);
      v67 = v40;
      v55 = v60;
      v56 = v45;
      v57 = v62;
      (*(v60 + 16))(v59, v56, v62);
      sub_1000C3C94();
      (*(v55 + 8))(v69, v57);
      return (*(v70 + 8))(v63, v74);
    }
  }

  else
  {
    sub_1000C4FB4();
    sub_100014F70();
    v47 = sub_1000C5764();
    sub_1000124CC(&qword_1000FC348, qword_1000C9550);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000C94D0;
    v63 = v22;
    v69 = *(v19 + 16);
    (v69)(v17, v22, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    v49 = sub_1000C4A84();
    v51 = v50;
    sub_100018F90(v17, &qword_1000FC438, &unk_1000C9DC0);
    *(v48 + 56) = &type metadata for String;
    *(v48 + 64) = sub_100014FBC();
    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    sub_1000C5554();
    sub_1000C1A44();

    sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion);
    swift_allocError();
    v52 = v63;
    (v69)(v53, v63, v18);
    swift_willThrow();
    (*(v19 + 8))(v52, v18);
    return (*(v70 + 8))(v27, v74);
  }
}

uint64_t sub_100056968@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C1464();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_1000C1454();
  sub_100057DC4(&qword_1000FC428, &type metadata accessor for TopLevelDictionary);
  sub_1000C1444();
  if (v2)
  {
  }

  v13 = sub_100056D38();
  v31 = v14;
  v15 = v6;
  v26 = sub_1000570B8();
  v27 = v16;
  sub_100057468(v30);
  sub_100056104(v30, a1, a2);
  sub_100057D70(v30);
  sub_100014F70();
  v25 = a2;
  v17 = sub_1000C5764();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v18 = v15;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000C94D0;
  v28 = sub_1000C3C84();
  v29 = v20;
  v25 = sub_1000C4A84();
  v24 = v21;

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_100014FBC();
  v22 = v24;
  *(v19 + 32) = v25;
  *(v19 + 40) = v22;
  sub_1000C5554();
  sub_1000C1A44();

  sub_100018CD0(v26, v27);
  sub_100018CD0(v13, v31);

  return (*(v18 + 8))(v9, v5);
}

uint64_t sub_100056D38()
{
  v0 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v21 - v2;
  v4 = sub_1000C4FC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C1984();
  v11 = v9;
  v12 = v10;
  if (v10 >> 60 == 15)
  {
    goto LABEL_11;
  }

  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 != 2 || *(v9 + 16) == *(v9 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v13)
  {
    if (v9 == v9 >> 32)
    {
LABEL_10:
      sub_100018CBC(v9, v10);
LABEL_11:
      sub_1000C4FB4();
      sub_100014F70();
      v22 = v11;
      v14 = sub_1000C5764();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000C94D0;
      v21[1] = v12;
      v21[0] = *(v5 + 16);
      (v21[0])(v3, v8, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
      v16 = sub_1000C4A84();
      v18 = v17;
      sub_100018F90(v3, &qword_1000FC438, &unk_1000C9DC0);
      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_100014FBC();
      *(v15 + 32) = v16;
      *(v15 + 40) = v18;
      sub_1000C5554();
      sub_1000C1A44();

      v11 = v22;

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      (v21[0])(v19, v8, v4);
      swift_willThrow();
      (*(v5 + 8))(v8, v4);
    }
  }

  else if ((v10 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  return v11;
}

uint64_t sub_1000570B8()
{
  v0 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v26 - v2;
  v4 = sub_1000C4FC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_1000C1544().super.isa;
  v10 = [(objc_class *)isa _imOptionallyDecompressData];

  v11 = sub_1000C1564();
  v13 = v12;

  v14 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v14 != 2 || *(v11 + 16) == *(v11 + 24))
    {
      goto LABEL_9;
    }
  }

  else if (v14)
  {
    if (v11 == v11 >> 32)
    {
LABEL_9:
      sub_1000C4FB4();
      sub_100014F70();
      v15 = sub_1000C5764();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000C94D0;
      v28 = v13;
      v27 = *(v5 + 16);
      v27(v3, v8, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
      v17 = v5;
      v18 = sub_1000C4A84();
      v26 = v8;
      v19 = v11;
      v21 = v20;
      sub_100018F90(v3, &qword_1000FC438, &unk_1000C9DC0);
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100014FBC();
      *(v16 + 32) = v18;
      *(v16 + 40) = v21;
      v11 = v19;
      sub_1000C5554();
      sub_1000C1A44();

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v22 = v26;
      v27(v23, v26, v4);
      v24 = v28;
      swift_willThrow();
      sub_100018CD0(v11, v24);
      (*(v17 + 8))(v22, v4);
    }
  }

  else if ((v13 & 0xFF000000000000) == 0)
  {
    goto LABEL_9;
  }

  return v11;
}

uint64_t sub_100057468@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v60 = &v56 - v4;
  v5 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v59 = &v56 - v7;
  v8 = sub_1000C1974();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000C4FC4();
  v61 = *(v63 - 8);
  v12 = *(v61 + 64);
  __chkstk_darwin(v63);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C5974();
  v62 = *(v14 - 8);
  v15 = *(v62 + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v64 = &v56 - v20;
  __chkstk_darwin(v19);
  v22 = &v56 - v21;
  sub_100057E0C();
  v23 = v66;
  result = sub_1000C1444();
  if (v23)
  {
    *&v67 = v23;
    swift_errorRetain();
    sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
    if (swift_dynamicCast())
    {

      v25 = v62;
      (*(v62 + 32))(v64, v22, v14);
      v26 = v58;
      (*(v58 + 104))(v11, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v8);
      sub_1000C1964();
      (*(v26 + 8))(v11, v8);
      v27 = v25;
      v28 = *(v25 + 16);
      v29 = v64;
      v28(v18, v64, v14);
      sub_1000C4FA4();
      sub_100014F70();
      v30 = sub_1000C5764();
      v58 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v31 = swift_allocObject();
      v66 = xmmword_1000C94D0;
      *(v31 + 16) = xmmword_1000C94D0;
      v32 = v59;
      v57 = v14;
      v28(v59, v29, v14);
      (*(v27 + 56))(v32, 0, 1, v14);
      v33 = sub_1000C4A84();
      v35 = v34;
      sub_100018F90(v32, &qword_1000FC430, &unk_1000C9B00);
      *(v31 + 56) = &type metadata for String;
      v36 = sub_100014FBC();
      *(v31 + 64) = v36;
      *(v31 + 32) = v33;
      *(v31 + 40) = v35;
      sub_1000C5554();
      sub_1000C1A44();

      v37 = sub_1000C5764();
      v38 = swift_allocObject();
      *(v38 + 16) = v66;
      v39 = v61;
      *&v66 = *(v61 + 16);
      v40 = v60;
      v41 = v63;
      (v66)(v60, v65, v63);
      (*(v39 + 56))(v40, 0, 1, v41);
      v42 = sub_1000C4A84();
      v44 = v43;
      sub_100018F90(v40, &qword_1000FC438, &unk_1000C9DC0);
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = v36;
      *(v38 + 32) = v42;
      *(v38 + 40) = v44;
      sub_1000C5554();
      sub_1000C1A44();

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      v45 = v65;
      (v66)(v46, v65, v41);
      swift_willThrow();
      (*(v39 + 8))(v45, v41);
      (*(v62 + 8))(v64, v57);
    }

    else
    {

      sub_100014F70();
      v51 = sub_1000C5764();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1000C94D0;
      *&v67 = v23;
      v53 = sub_1000C4A84();
      v55 = v54;
      *(v52 + 56) = &type metadata for String;
      *(v52 + 64) = sub_100014FBC();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      sub_1000C5554();
      sub_1000C1A44();

      swift_getErrorValue();
      swift_getDynamicType();
      *&v67 = 0;
      *(&v67 + 1) = 0xE000000000000000;
      sub_1000C5944(22);

      *&v67 = 0xD000000000000014;
      *(&v67 + 1) = 0x80000001000D5330;
      v76._countAndFlagsBits = sub_1000C5D34();
      sub_1000C52E4(v76);

      sub_100057DC4(&qword_1000FC360, &type metadata accessor for Explosion);
      swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
    }
  }

  else
  {
    v47 = v74;
    *(a1 + 96) = v73;
    *(a1 + 112) = v47;
    *(a1 + 128) = v75;
    v48 = v70;
    *(a1 + 32) = v69;
    *(a1 + 48) = v48;
    v49 = v72;
    *(a1 + 64) = v71;
    *(a1 + 80) = v49;
    v50 = v68;
    *a1 = v67;
    *(a1 + 16) = v50;
  }

  return result;
}

uint64_t sub_100057DC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100057E0C()
{
  result = qword_1000FD1F8;
  if (!qword_1000FD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FD1F8);
  }

  return result;
}

uint64_t sub_100057E60(void *a1)
{
  v3 = v1;
  v5 = sub_1000124CC(&qword_1000FD280, &qword_1000CD338);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10001530C(a1, a1[3]);
  sub_10005B278();
  sub_1000C5D04();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1000C5AF4();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1000C5AF4();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  sub_1000C5B84();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100058000(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 110;
  if (v2 != 1)
  {
    v4 = 6580579;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 104;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 110;
  if (*a2 != 1)
  {
    v8 = 6580579;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 104;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000C5C04();
  }

  return v11 & 1;
}

Swift::Int sub_1000580D4()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100058158()
{
  *v0;
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_1000581C8()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_100058248@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005A550(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100058278(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 110;
  if (v2 != 1)
  {
    v5 = 6580579;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 104;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000582B8()
{
  v1 = 110;
  if (*v0 != 1)
  {
    v1 = 6580579;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 104;
  }
}

uint64_t sub_1000582F4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005A550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005831C(uint64_t a1)
{
  v2 = sub_10005B278();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058358(uint64_t a1)
{
  v2 = sub_10005B278();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100058394@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10005A59C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1000583F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1868985701;
  }

  else
  {
    v4 = 118;
  }

  if (v3)
  {
    v5 = 0xE100000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1868985701;
  }

  else
  {
    v6 = 118;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE100000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000C5C04();
  }

  return v9 & 1;
}

Swift::Int sub_100058484()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000584F4()
{
  *v0;
  sub_1000C52C4();
}

Swift::Int sub_100058550()
{
  v1 = *v0;
  sub_1000C5CB4();
  sub_1000C52C4();

  return sub_1000C5CD4();
}

uint64_t sub_1000585BC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F1848;
  v8._object = v3;
  v5 = sub_1000C59F4(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10005861C(uint64_t *a1@<X8>)
{
  v2 = 118;
  if (*v1)
  {
    v2 = 1868985701;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100058648()
{
  if (*v0)
  {
    result = 1868985701;
  }

  else
  {
    result = 118;
  }

  *v0;
  return result;
}

uint64_t sub_100058670@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F1848;
  v9._object = a2;
  v6 = sub_1000C59F4(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000586D4(uint64_t a1)
{
  v2 = sub_1000588D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100058710(uint64_t a1)
{
  v2 = sub_1000588D4();

  return CodingKey.debugDescription.getter(a1, v2);
}