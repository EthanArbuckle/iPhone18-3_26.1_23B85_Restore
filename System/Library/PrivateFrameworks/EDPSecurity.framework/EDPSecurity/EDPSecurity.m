void *pickKeyAlgorithm(__SecKey *a1, uint64_t a2, void *a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = SecKeyCopyAttributes(a1);
  Value = CFDictionaryGetValue(v5, *MEMORY[0x277CDC028]);
  if (CFEqual(Value, *MEMORY[0x277CDC030]))
  {
    switch(a2)
    {
      case 5:
        v7 = MEMORY[0x277CDC2C8];
        break;
      case 4:
        v7 = MEMORY[0x277CDC2C0];
        break;
      case 2:
        v7 = MEMORY[0x277CDC2B8];
        break;
      default:
LABEL_11:
        if (a3)
        {
          v12[0] = @"KeyType";
          v12[1] = @"DigestAlgorithm";
          v13[0] = Value;
          v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
          v13[1] = v8;
          v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

          *a3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"Security" code:-4 userInfo:v9];

          a3 = 0;
        }

        if (v5)
        {
          goto LABEL_20;
        }

        goto LABEL_21;
    }
  }

  else
  {
    if (!CFEqual(Value, *MEMORY[0x277CDC060]))
    {
      goto LABEL_11;
    }

    switch(a2)
    {
      case 5:
        v7 = MEMORY[0x277CDC398];
        break;
      case 4:
        v7 = MEMORY[0x277CDC390];
        break;
      case 2:
        v7 = MEMORY[0x277CDC388];
        break;
      default:
        goto LABEL_11;
    }
  }

  a3 = *v7;
  if (v5)
  {
LABEL_20:
    CFRelease(v5);
  }

LABEL_21:
  v10 = *MEMORY[0x277D85DE8];
  return a3;
}

void sub_249F3B530(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t mapDigestAlgorithm(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x277D28590]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D28598]])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:*MEMORY[0x277D285A0]])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_249F3B880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef cf, CFTypeRef a12)
{
  if (v13)
  {
    CFRelease(v13);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (a12)
  {
    CFRelease(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_249F3BDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void sub_249F3C1A0(_Unwind_Exception *a1)
{
  CFRelease(v2);
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t PackageStaticValidator.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v4 = sub_249F4A308();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_249F3C280@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249F3C2DC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_249F3C344()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_249F3C38C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *PackageStaticValidator.__allocating_init(url:requireTrust:)(char *a1, int a2)
{
  v3 = v2;
  v41 = a2;
  v5 = sub_249F4A2A8();
  v38 = *(v5 - 8);
  v39 = v5;
  v6 = *(v38 + 64);
  (MEMORY[0x28223BE20])();
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_249F4A308();
  v9 = *(v44 - 8);
  v10 = v9[8];
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - v14;
  v16 = *(v3 + 48);
  v17 = *(v3 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  *(v18 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms) = &unk_285D1AE28;
  v20 = a1;
  if (sub_249F45CC4())
  {
    v21 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
    v22 = v9[2];
    v37 = v20;
    v23 = v20;
    v24 = v44;
    v22(v18 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url, v23, v44);
    v22(v13, v18 + v21, v24);
    v42 = 0x727574616E676973;
    v43 = 0xE900000000000065;
    v26 = v38;
    v25 = v39;
    (*(v38 + 104))(v8, *MEMORY[0x277CC91D8], v39);
    sub_249F3CBDC();
    sub_249F4A2E8();
    (*(v26 + 8))(v8, v25);
    v27 = v9[1];
    v27(v13, v24);
    v28 = v40;
    v29 = sub_249F4A318();
    if (v28)
    {
      MEMORY[0x24C2087B0](v28);
      v29 = 0;
      v30 = 0xF000000000000000;
    }

    v8 = PackageValidator.init(signatureData:requireTrust:)(v29, v30, v41 & 1);
    v27(v37, v24);
    v27(v15, v24);
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 0;
    *(v31 + 24) = 5;
    swift_willThrow();
    (v9[1])(a1, v44);
    v32 = *(v18 + v19);

    v33 = *(*v18 + 48);
    v34 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  return v8;
}

char *PackageStaticValidator.init(url:requireTrust:)(char *a1, int a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_249F4A2A8();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_249F4A308();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  v17 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  *(v2 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms) = &unk_285D1AE28;
  if (sub_249F45CC4())
  {
    v18 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
    v19 = a1;
    v20 = v10[2];
    v34 = v19;
    v20(v3 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url);
    v33[1] = v3;
    (v20)(v14, v3 + v18, v9);
    v38 = 0x727574616E676973;
    v39 = 0xE900000000000065;
    v22 = v35;
    v21 = v36;
    (*(v35 + 104))(v8, *MEMORY[0x277CC91D8], v36);
    sub_249F3CBDC();
    sub_249F4A2E8();
    (*(v22 + 8))(v8, v21);
    v23 = v10[1];
    v23(v14, v9);
    v24 = v37;
    v25 = sub_249F4A318();
    v27 = v16;
    if (v24)
    {
      MEMORY[0x24C2087B0](v24);
      v25 = 0;
      v26 = 0xF000000000000000;
    }

    v16 = PackageValidator.init(signatureData:requireTrust:)(v25, v26, v40 & 1);
    v23(v34, v9);
    v23(v27, v9);
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *(v28 + 8) = 0;
    *(v28 + 16) = 0;
    *v28 = 0;
    *(v28 + 24) = 5;
    swift_willThrow();
    (v10[1])(a1, v9);
    v29 = *(v2 + v17);

    type metadata accessor for PackageStaticValidator();
    v30 = *(*v2 + 48);
    v31 = *(*v2 + 52);
    swift_deallocPartialClassInstance();
  }

  return v16;
}

unint64_t sub_249F3CB88()
{
  result = qword_27EF2A410;
  if (!qword_27EF2A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A410);
  }

  return result;
}

unint64_t sub_249F3CBDC()
{
  result = qword_27EF2A418;
  if (!qword_27EF2A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A418);
  }

  return result;
}

uint64_t type metadata accessor for PackageStaticValidator()
{
  result = qword_27EF2A428;
  if (!qword_27EF2A428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PackageStaticValidator.__allocating_init(url:)(char *a1)
{
  v2 = sub_249F4A2A8();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_249F4A308();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v36 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v36 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = v6[2];
  v44 = a1;
  v14(&v36 - v12, a1, v5);
  v15 = type metadata accessor for PackageStaticValidator();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms;
  *(v18 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms) = &unk_285D1AE28;
  if (sub_249F45CC4())
  {
    v20 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
    v14((v18 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url), v13, v5);
    v21 = v36;
    v14(v36, v18 + v20, v5);
    v42 = 0x727574616E676973;
    v43 = 0xE900000000000065;
    v23 = v38;
    v22 = v39;
    v24 = v40;
    (*(v39 + 104))(v38, *MEMORY[0x277CC91D8], v40);
    sub_249F3CBDC();
    v25 = v37;
    sub_249F4A2E8();
    (*(v22 + 8))(v23, v24);
    v26 = v6[1];
    v26(v21, v5);
    v27 = v41;
    v28 = sub_249F4A318();
    if (v27)
    {
      MEMORY[0x24C2087B0](v27);
      v28 = 0;
      v29 = 0xF000000000000000;
    }

    v15 = PackageValidator.init(signatureData:requireTrust:)(v28, v29, 1);
    v26(v13, v5);
    v26(v25, v5);
    v26(v44, v5);
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 0;
    *(v30 + 24) = 5;
    swift_willThrow();
    v31 = v6[1];
    v31(v13, v5);
    v32 = *(v18 + v19);

    v33 = *(*v18 + 48);
    v34 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
    v31(v44, v5);
  }

  return v15;
}

uint64_t sub_249F3D09C(uint64_t a1, uint64_t a2)
{
  v5 = sub_249F4A2A8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_249F4A308();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v31);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v32 = a1;
  v33 = a2;
  (*(v6 + 104))(v9, *MEMORY[0x277CC91D8], v5);
  sub_249F3CBDC();
  v29 = v2;
  sub_249F4A2E8();
  (*(v6 + 8))(v9, v5);
  v14 = [objc_opt_self() defaultManager];
  sub_249F4A2D8();
  v15 = sub_249F4A408();

  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    v17 = a2;
    v18 = v30;
    v19 = v31;
    v20 = v34;
    v21 = sub_249F4A318();
    if (v18)
    {
      return (*(v10 + 8))(v13, v19);
    }

    else
    {
      v26 = v21;
      v27 = v22;
      sub_249F48C60(v20, v17, v21, v22);
      (*(v10 + 8))(v13, v19);
      return sub_249F3DC7C(v26, v27);
    }
  }

  else
  {
    sub_249F3CB88();
    swift_allocError();
    *v24 = v34;
    *(v24 + 8) = a2;
    *(v24 + 16) = 0;
    *(v24 + 24) = 2;
    swift_willThrow();
    v25 = *(v10 + 8);

    return v25(v13, v31);
  }
}

uint64_t sub_249F3D3A8(char a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = *(v1 + 16);

  v6 = sub_249F46250();

  if (v2)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A420, &qword_249F4AE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F4AE50;
  *(inited + 32) = v6;
  v9 = sub_249F3E630(inited);
  swift_setDeallocating();
  type metadata accessor for FileMeasurer();
  swift_initStackObject();
  v73 = 0;
  v10 = FileMeasurer.init(_:)(v9);
  v11 = sub_249F47B00(v3 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url, v10);
  v68 = v6;
  v64 = a1;
  v12 = *(v3 + 16);
  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v70 = v13;

  result = swift_beginAccess();
  v18 = 0;
  v19 = (v15 + 63) >> 6;
  v65 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v69 = v11;
  v67 = v19;
  while (v17)
  {
    v20 = v18;
LABEL_10:
    v21 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v22 = v21 | (v20 << 6);
    v23 = (*(v70 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    v26 = *(*(v70 + 56) + 8 * v22);
    v27 = *(v11 + 24);
    v28 = *(v27 + 16);

    if (v28)
    {

      v29 = sub_249F3E200(v25, v24);
      if ((v30 & 1) == 0)
      {

        goto LABEL_16;
      }

      v31 = v14;
      v32 = v24;
      v33 = *(*(v27 + 56) + 8 * v29);

      v72[3] = v33;
      v72[0] = v26;
      v34 = swift_initStackObject();
      *(v34 + 16) = xmmword_249F4AE50;
      *(v34 + 32) = v68;
      v35 = v73;
      v36 = FileMeasurement.isSameFile(_:withSupportedAlgorithms:)(v72, v34);
      v73 = v35;
      if (v35)
      {

        swift_setDeallocating();
      }

      v37 = v36;
      swift_setDeallocating();

      if (v37)
      {

        v18 = v20;
        v11 = v69;
        v14 = v31;
        v19 = v67;
      }

      else
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_249F3E278(0, *(v65 + 16) + 1, 1, v65);
          v65 = result;
        }

        v42 = *(v65 + 16);
        v41 = *(v65 + 24);
        if (v42 >= v41 >> 1)
        {
          result = sub_249F3E278((v41 > 1), v42 + 1, 1, v65);
          v65 = result;
        }

        *(v65 + 16) = v42 + 1;
        v43 = v65 + 16 * v42;
        *(v43 + 32) = v25;
        *(v43 + 40) = v32;
        v18 = v20;
        v14 = v31;
        v19 = v67;
        v11 = v69;
      }
    }

    else
    {
LABEL_16:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_249F3E278(0, *(v66 + 16) + 1, 1, v66);
        v66 = result;
      }

      v39 = *(v66 + 16);
      v38 = *(v66 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_249F3E278((v38 > 1), v39 + 1, 1, v66);
        v66 = result;
      }

      *(v66 + 16) = v39 + 1;
      v40 = v66 + 16 * v39;
      *(v40 + 32) = v25;
      *(v40 + 40) = v24;
      v18 = v20;
      v11 = v69;
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v20 >= v19)
    {
      break;
    }

    v17 = *(v14 + 8 * v20);
    ++v18;
    if (v17)
    {
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v44 = *(v11 + 24);
  v45 = 1 << *(v44 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v44 + 64);
  v48 = (v45 + 63) >> 6;
  v49 = *(v11 + 24);

  v50 = 0;
  v71 = MEMORY[0x277D84F90];
  while (1)
  {
    v51 = v50;
    if (!v47)
    {
      break;
    }

LABEL_33:
    v52 = __clz(__rbit64(v47));
    v47 &= v47 - 1;
    v53 = (*(v44 + 48) + ((v50 << 10) | (16 * v52)));
    v55 = *v53;
    v54 = v53[1];
    v56 = *(v3 + 16);
    swift_beginAccess();
    v57 = *(*(v56 + 24) + 16);

    if (v57)
    {

      sub_249F3E200(v55, v54);
      if (v58)
      {

        continue;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_249F3E278(0, *(v71 + 16) + 1, 1, v71);
      v71 = result;
    }

    v60 = *(v71 + 16);
    v59 = *(v71 + 24);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      result = sub_249F3E278((v59 > 1), v60 + 1, 1, v71);
      v61 = v60 + 1;
      v71 = result;
    }

    *(v71 + 16) = v61;
    v62 = v71 + 16 * v60;
    *(v62 + 32) = v55;
    *(v62 + 40) = v54;
  }

  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v50 >= v48)
    {

      if (*(v71 + 16) || !((*(v66 + 16) == 0) | v64 & 1) || *(v65 + 16))
      {
        sub_249F3CB88();
        swift_allocError();
        *v63 = v71;
        *(v63 + 8) = v66;
        *(v63 + 16) = v65;
        *(v63 + 24) = 4;
        swift_willThrow();
      }
    }

    v47 = *(v44 + 64 + 8 * v50);
    ++v51;
    if (v47)
    {
      goto LABEL_33;
    }
  }

LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_249F3DA90()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms);
}

char *PackageStaticValidator.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  sub_249F3E76C(*(v0 + 5), *(v0 + 6));
  v3 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v4 = sub_249F4A308();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms];

  return v0;
}

uint64_t PackageStaticValidator.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  sub_249F3E76C(*(v0 + 5), *(v0 + 6));
  v3 = OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_url;
  v4 = sub_249F4A308();
  v5 = *(*(v4 - 8) + 8);

  v5(&v0[v3], v4);
  v6 = *&v0[OBJC_IVAR____TtC11EDPSecurity22PackageStaticValidator_supportedMeasurementAlgorithms];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_249F3DC7C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t sub_249F3DD18()
{
  v1 = *v0;
  sub_249F4A6C8();
  sub_249F4A6E8();
  return sub_249F4A6F8();
}

uint64_t sub_249F3DD8C()
{
  v1 = *v0;
  sub_249F4A6C8();
  sub_249F4A6E8();
  return sub_249F4A6F8();
}

_DWORD *sub_249F3DDD0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_249F3DDF4(uint64_t a1, id *a2)
{
  result = sub_249F4A418();
  *a2 = 0;
  return result;
}

uint64_t sub_249F3DE6C(uint64_t a1, id *a2)
{
  v3 = sub_249F4A428();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_249F3DEEC@<X0>(uint64_t *a1@<X8>)
{
  sub_249F4A438();
  v2 = sub_249F4A408();

  *a1 = v2;
  return result;
}

uint64_t sub_249F3DF30()
{
  v1 = *v0;
  v2 = sub_249F4A438();
  v3 = MEMORY[0x24C208070](v2);

  return v3;
}

uint64_t sub_249F3DF6C()
{
  v1 = *v0;
  sub_249F4A438();
  sub_249F4A458();
}

uint64_t sub_249F3DFC0()
{
  v1 = *v0;
  sub_249F4A438();
  sub_249F4A6C8();
  sub_249F4A458();
  v2 = sub_249F4A6F8();

  return v2;
}

uint64_t sub_249F3E048(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_249F4A438();
  v6 = v5;
  if (v4 == sub_249F4A438() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_249F4A658();
  }

  return v9 & 1;
}

uint64_t sub_249F3E0D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_249F4A408();

  *a2 = v5;
  return result;
}

uint64_t sub_249F3E118@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_249F4A438();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_249F3E144(uint64_t a1)
{
  v2 = sub_249F3EA7C(&qword_27EF2A488, type metadata accessor for URLResourceKey);
  v3 = sub_249F3EA7C(&qword_27EF2A490, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_249F3E200(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_249F4A6C8();
  sub_249F4A458();
  v6 = sub_249F4A6F8();

  return sub_249F3E384(a1, a2, v6);
}

char *sub_249F3E278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A450, &qword_249F4AF98);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_249F3E384(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_249F4A658())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_249F3E43C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A458, &unk_249F4AFA0);
    v3 = sub_249F4A518();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_249F4A438();
      sub_249F4A6C8();
      v29 = v7;
      sub_249F4A458();
      v9 = sub_249F4A6F8();

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
        v18 = sub_249F4A438();
        v20 = v19;
        if (v18 == sub_249F4A438() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_249F4A658();

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

  return MEMORY[0x277D84FA0];
}

uint64_t sub_249F3E630(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
    v3 = sub_249F4A518();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      v11 = *(v3 + 40);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_249F3E76C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249F3DC7C(a1, a2);
  }

  return a1;
}

uint64_t sub_249F3E788()
{
  result = sub_249F4A308();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_249F3E9E8(uint64_t a1, unint64_t *a2)
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

uint64_t sub_249F3EA7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FileMeasurement.isSameFile(_:withSupportedAlgorithms:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *a1;
    v5 = *v2;
    v6 = (a2 + 32);
    do
    {
      v8 = *v6++;
      v7 = v8;
      v9 = 0x3268736168;
      if (v8 != 2)
      {
        if (v7 != 5)
        {
          v18 = 1;
          goto LABEL_15;
        }

        v9 = 0x3568736168;
      }

      if (!*(v5 + 16))
      {
        goto LABEL_3;
      }

      v10 = sub_249F3E200(v9, 0xE500000000000000);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (*(v4 + 16))
      {
        v13 = (*(v5 + 56) + 16 * v10);
        v14 = *v13;
        v25 = v13[1];
        sub_249F40C18(*v13, v25);
        v15 = sub_249F3E200(v9, 0xE500000000000000);
        v17 = v16;

        if (v17)
        {
          v21 = (*(v4 + 56) + 16 * v15);
          v22 = *v21;
          v23 = v21[1];
          sub_249F40C18(*v21, v23);
          v24 = sub_249F42424(v14, v25, v22, v23);
          sub_249F3DC7C(v22, v23);
          sub_249F3DC7C(v14, v25);
          return v24 & 1;
        }

        sub_249F3DC7C(v14, v25);
      }

      else
      {
LABEL_3:
      }

LABEL_4:
      --v3;
    }

    while (v3);
  }

  v18 = 3;
  v7 = 1;
LABEL_15:
  sub_249F3ED2C();
  swift_allocError();
  *v19 = v7;
  *(v19 + 8) = 0;
  *(v19 + 16) = v18;
  swift_willThrow();
  return 0;
}

unint64_t sub_249F3ED2C()
{
  result = qword_27EF2A498;
  if (!qword_27EF2A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A498);
  }

  return result;
}

uint64_t sub_249F3ED98(uint64_t a1, unint64_t a2, int a3)
{
  v39 = a1;
  LODWORD(v3) = a3;
  v44 = a2;
  v4 = sub_249F4A3F8();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_249F4A3D8();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_249F4A3E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_249F4A3C8();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 5)
  {
    sub_249F43008(&qword_27EF2A510, MEMORY[0x277CC5560]);
    sub_249F4A3B8();
    v29 = v39;
    v30 = v44;
    sub_249F40C18(v39, v44);
    sub_249F41F80(v29, v30, v7);
    sub_249F3DC7C(v29, v30);
    sub_249F4A3A8();
    (*(v36 + 8))(v7, v4);
    v42 = v8;
    v43 = sub_249F43008(&qword_27EF2A518, MEMORY[0x277CC52E8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    v32 = v37;
    (*(v37 + 16))(boxed_opaque_existential_1, v11, v8);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_249F4A1D8();
    (*(v32 + 8))(v11, v8);
  }

  else
  {
    if (v3 != 2)
    {
      v3 = v3;
      sub_249F3ED2C();
      swift_allocError();
      *v33 = v3;
      *(v33 + 8) = 0;
      *(v33 + 16) = 1;
      swift_willThrow();
      return v3;
    }

    v23 = v19;
    v24 = v20;
    sub_249F43008(&qword_27EF2A520, MEMORY[0x277CC5540]);
    sub_249F4A3B8();
    v25 = v39;
    v26 = v44;
    sub_249F40C18(v39, v44);
    v27 = v38;
    sub_249F41D5C(v25, v26, v16);
    v38 = v27;
    sub_249F3DC7C(v25, v26);
    sub_249F4A3A8();
    (*(v13 + 8))(v16, v12);
    v42 = v23;
    v43 = sub_249F43008(&qword_27EF2A528, MEMORY[0x277CC5290]);
    v28 = __swift_allocate_boxed_opaque_existential_1(v41);
    (*(v24 + 16))(v28, v22, v23);
    __swift_project_boxed_opaque_existential_1(v41, v42);
    sub_249F4A1D8();
    (*(v24 + 8))(v22, v23);
  }

  v3 = v40;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v3;
}

uint64_t sub_249F3F328(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x3568736168;
  }

  else
  {
    v2 = 0x3268736168;
  }

  if (*a2)
  {
    v3 = 0x3568736168;
  }

  else
  {
    v3 = 0x3268736168;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_249F4A658();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_249F3F3A8()
{
  v1 = *v0;
  sub_249F4A6C8();
  sub_249F4A458();

  return sub_249F4A6F8();
}

uint64_t sub_249F3F418()
{
  *v0;
  sub_249F4A458();
}

uint64_t sub_249F3F46C()
{
  v1 = *v0;
  sub_249F4A6C8();
  sub_249F4A458();

  return sub_249F4A6F8();
}

uint64_t sub_249F3F4D8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_249F4A5E8();

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

void sub_249F3F538(uint64_t *a1@<X8>)
{
  v2 = 0x3268736168;
  if (*v1)
  {
    v2 = 0x3568736168;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_249F3F568()
{
  if (*v0)
  {
    return 0x3568736168;
  }

  else
  {
    return 0x3268736168;
  }
}

uint64_t sub_249F3F594@<X0>(char *a1@<X8>)
{
  v2 = sub_249F4A5E8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_249F3F610(uint64_t a1)
{
  v2 = sub_249F427E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249F3F64C(uint64_t a1)
{
  v2 = sub_249F427E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_249F3F688@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = (*(a1 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v6)))));
      v13 = *v11;
      v12 = v11[1];

      if (sub_249F4A5E8() > 1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    sub_249F3ED2C();
    swift_allocError();
    *v14 = v13;
    *(v14 + 8) = v12;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        *a2 = a1;
        return result;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FileMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4A0, &qword_249F4B170);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249F427E4();
  sub_249F4A708();
  if (v2)
  {
    goto LABEL_28;
  }

  v39 = a2;
  v40 = v7;
  v41 = a1;
  v12 = sub_249F4A618();
  v13 = v12;
  v45 = *(v12 + 16);
  if (!v45)
  {
    v15 = MEMORY[0x277D84F98];
LABEL_23:

    if (v15[2])
    {
      (*(v40 + 8))(v10, v6);
      *v39 = v15;
      v36 = v41;
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }

    sub_249F3ED2C();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0;
    *(v37 + 16) = 3;
    swift_willThrow();
    (*(v40 + 8))(v10, v6);
LABEL_27:
    a1 = v41;
LABEL_28:
    v36 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v36);
  }

  v14 = 0;
  v15 = MEMORY[0x277D84F98];
  v43 = v10;
  v44 = v6;
  v42 = v12;
  while (v14 < *(v13 + 16))
  {
    if (*(v13 + v14 + 32))
    {
      v19 = 0x3568736168;
    }

    else
    {
      v19 = 0x3268736168;
    }

    LOBYTE(v49) = *(v13 + v14 + 32);
    sub_249F42884();
    sub_249F4A608();
    if (v3)
    {
      (*(v40 + 8))(v10, v6);

      goto LABEL_27;
    }

    v46 = 0;
    v20 = v47;
    v21 = v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v15;
    v24 = sub_249F3E200(v19, 0xE500000000000000);
    v25 = v15[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_31;
    }

    v28 = v23;
    if (v15[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v23)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_249F411D0();
        if (v28)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_249F40C6C(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_249F3E200(v19, 0xE500000000000000);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_33;
      }

      v24 = v29;
      if (v28)
      {
LABEL_4:

        v15 = v49;
        v16 = (v49[7] + 16 * v24);
        v17 = *v16;
        v18 = v16[1];
        *v16 = v20;
        v16[1] = v21;
        sub_249F3DC7C(v17, v18);
        goto LABEL_5;
      }
    }

    v15 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v15[6] + 16 * v24);
    *v31 = v19;
    v31[1] = 0xE500000000000000;
    v32 = (v15[7] + 16 * v24);
    *v32 = v20;
    v32[1] = v21;
    v33 = v15[2];
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_32;
    }

    v15[2] = v35;
LABEL_5:
    ++v14;
    v6 = v44;
    v13 = v42;
    v10 = v43;
    v3 = v46;
    if (v45 == v14)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_249F4A678();
  __break(1u);
  return result;
}

uint64_t FileMeasurement.init(withHash:ofType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned int a3@<W2>, void *a4@<X8>)
{
  if (a3 == 2)
  {
    v8 = 0x3268736168;
  }

  else
  {
    if (a3 != 5)
    {
      v12 = a3;
      sub_249F3ED2C();
      swift_allocError();
      *v13 = v12;
      *(v13 + 8) = 0;
      *(v13 + 16) = 1;
      swift_willThrow();
      return sub_249F3DC7C(a1, a2);
    }

    v8 = 0x3568736168;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4B8, &qword_249F4B178);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F4AE50;
  *(inited + 32) = v8;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_249F40C18(a1, a2);
  v10 = sub_249F428D8(inited);
  swift_setDeallocating();
  sub_249F429F0(inited + 32);
  sub_249F3F688(v10, &v14);
  result = sub_249F3DC7C(a1, a2);
  if (!v4)
  {
    *a4 = v14;
  }

  return result;
}

uint64_t FileMeasurement.encode(to:)(void *a1)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4C8, &qword_249F4B188);
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v29 - v5;
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(v9, v7);
  sub_249F427E4();
  v33 = v6;
  sub_249F4A718();
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  v32 = xmmword_249F4B160;
  for (i = v10; v14; v10 = i)
  {
    v18 = v17;
LABEL_8:
    v19 = (*(v10 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v14)))));
    v20 = *v19;
    v21 = v19[1];

    v22 = sub_249F4A5E8();
    if (v22)
    {
      if (v22 != 1)
      {
        sub_249F3ED2C();
        swift_allocError();
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 16) = 0;
        swift_willThrow();

        return (*(v30 + 8))(v33, v34);
      }

      v23 = 1;
      if (!*(v10 + 16))
      {
LABEL_11:

        v24 = v32;
        goto LABEL_15;
      }
    }

    else
    {
      v23 = 0;
      if (!*(v10 + 16))
      {
        goto LABEL_11;
      }
    }

    v25 = sub_249F3E200(v20, v21);
    v27 = v26;

    v24 = v32;
    if (v27)
    {
      v31 = *(*(i + 56) + 16 * v25);
      sub_249F40C18(v31, *(&v31 + 1));
      v24 = v31;
    }

LABEL_15:
    v36 = v24;
    v37 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4D0, &qword_249F4B190);
    sub_249F42A58();
    sub_249F4A638();
    if (v2)
    {

      sub_249F3E76C(v36, *(&v36 + 1));
      return (*(v30 + 8))(v33, v34);
    }

    v14 &= v14 - 1;
    result = sub_249F3E76C(v36, *(&v36 + 1));
    v17 = v18;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      (*(v30 + 8))(v33, v34);
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t FileMeasurement.hashTypes()()
{
  v1 = *v0;
  v16 = MEMORY[0x277D84FA0];
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  while (v4)
  {
LABEL_11:
    v10 = (*(v1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v4)))));
    v12 = *v10;
    v11 = v10[1];
    swift_bridgeObjectRetain_n();
    v13 = sub_249F4A5E8();

    if (v13)
    {
      if (v13 != 1)
      {

        sub_249F3ED2C();
        swift_allocError();
        *v14 = v12;
        *(v14 + 8) = v11;
        *(v14 + 16) = 0;
        swift_willThrow();
      }

      v8 = 5;
    }

    else
    {
      v8 = 2;
    }

    v4 &= v4 - 1;

    result = sub_249F41558(&v15, v8);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return v16;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t FileMeasurement.bestHash()()
{
  v8 = *v0;
  v2 = &v8;
  v3 = FileMeasurement.hashTypes()();
  if (!v1)
  {
    v4 = v3;
    if (sub_249F48EE0(5, v3))
    {

      return 5;
    }

    else
    {
      v2 = 2;
      v5 = sub_249F48EE0(2, v4);

      if (!v5)
      {
        sub_249F3ED2C();
        swift_allocError();
        *v7 = 0;
        *(v7 + 8) = 0;
        *(v7 + 16) = 3;
        swift_willThrow();
      }
    }
  }

  return v2;
}

uint64_t FileMeasurement.hashData(forDigestAlgorithm:)(unsigned int a1)
{
  result = sub_249F42284(a1);
  if (!v1)
  {
    v4 = result;
    sub_249F40C18(result, v3);
    return v4;
  }

  return result;
}

BOOL sub_249F40320(uint64_t a1, uint64_t a2)
{
  v59[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
LABEL_73:
    v20 = 1;
    goto LABEL_76;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_75;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v57 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          goto LABEL_73;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v57 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_249F40C18(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        goto LABEL_76;
      }

      v21 = sub_249F3E200(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_249F3DC7C(v32, v33);
      v3 = a1;
      v8 = v57;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v59, 0, 14);
        sub_249F40C18(v26, v25);
        goto LABEL_64;
      }

      v52 = *(v26 + 24);
      v54 = *(v26 + 16);
      sub_249F40C18(v26, v25);
      v40 = sub_249F4A198();
      if (v40)
      {
        v41 = v40;
        v42 = sub_249F4A1B8();
        v43 = v54;
        if (__OFSUB__(v54, v42))
        {
          goto LABEL_84;
        }

        v51 = v54 - v42 + v41;
      }

      else
      {
        v51 = 0;
        v43 = v54;
      }

      if (__OFSUB__(v52, v43))
      {
        goto LABEL_83;
      }

      sub_249F4A1A8();
      v48 = v51;
LABEL_70:
      sub_249F40858(v48, v19, v18, v59);
      sub_249F3DC7C(v26, v25);
      sub_249F3DC7C(v19, v18);
      v47 = v59[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_249F40C18(v26, v25);
      v44 = sub_249F4A198();
      if (v44)
      {
        v53 = v44;
        v45 = sub_249F4A1B8();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v53;
      }

      else
      {
        v46 = 0;
      }

      sub_249F4A1A8();
      v48 = v46;
      goto LABEL_70;
    }

    v59[0] = v26;
    LOWORD(v59[1]) = v25;
    BYTE2(v59[1]) = BYTE2(v25);
    BYTE3(v59[1]) = BYTE3(v25);
    BYTE4(v59[1]) = BYTE4(v25);
    BYTE5(v59[1]) = BYTE5(v25);
    sub_249F40C18(v26, v25);
LABEL_64:
    sub_249F40858(v59, v19, v18, &v58);
    sub_249F3DC7C(v26, v25);
    sub_249F3DC7C(v19, v18);
    v47 = v58;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v57;
    if ((v47 & 1) == 0)
    {
      goto LABEL_76;
    }
  }

LABEL_74:
  sub_249F3DC7C(v19, v18);
LABEL_75:
  v20 = 0;
LABEL_76:
  v49 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_249F40858@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
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
    v10 = sub_249F4A198();
    if (v10)
    {
      v11 = sub_249F4A1B8();
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
      result = sub_249F4A1A8();
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
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
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
  v10 = sub_249F4A198();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_249F4A1B8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_249F4A1A8();
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

uint64_t sub_249F40A88(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_249F4236C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_249F3DC7C(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_249F40858(v14, a3, a4, &v13);
  v10 = v4;
  sub_249F3DC7C(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_249F40C18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_249F40C6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A508, &qword_249F4B4B0);
  v36 = a2;
  result = sub_249F4A5B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        sub_249F40C18(v37, *(&v37 + 1));
      }

      v26 = *(v8 + 40);
      sub_249F4A6C8();
      sub_249F4A458();
      result = sub_249F4A6F8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_249F40F28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A500, &unk_249F4B4A0);
  v38 = a2;
  result = sub_249F4A5B8();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_249F4A6C8();
      sub_249F4A458();
      result = sub_249F4A6F8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_249F411D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A508, &qword_249F4B4B0);
  v2 = *v0;
  v3 = sub_249F4A5A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_249F40C18(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_249F41354()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A500, &unk_249F4B4A0);
  v2 = *v0;
  v3 = sub_249F4A5A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

_BYTE *sub_249F414C4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_249F43050(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_249F43108(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_249F43184(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_249F41558(int *a1, int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_249F4A6C8();
  sub_249F4A6E8();
  v7 = sub_249F4A6F8();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 4 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_249F418A0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_249F41650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  result = sub_249F4A508();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

void sub_249F418A0(int a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_249F41650(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_249F419FC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_249F41B3C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_249F4A6C8();
  sub_249F4A6E8();
  v10 = sub_249F4A6F8();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for SecCSDigestAlgorithm(0);
    a2 = v13;
    while (*(*(v8 + 48) + 4 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 4 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_249F4A668();
  __break(1u);
}

void *sub_249F419FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  v2 = *v0;
  v3 = sub_249F4A4F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_249F41B3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  result = sub_249F4A508();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_249F41D5C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_249F4A3E8();
      sub_249F43008(&qword_27EF2A520, MEMORY[0x277CC5540]);
      result = sub_249F4A398();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_249F421A4(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5540], &qword_27EF2A520, MEMORY[0x277CC5540]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249F41F80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_8:
      sub_249F4A3F8();
      sub_249F43008(&qword_27EF2A510, MEMORY[0x277CC5560]);
      result = sub_249F4A398();
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_8;
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_249F421A4(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, MEMORY[0x277CC5560], &qword_27EF2A510, MEMORY[0x277CC5560]);
LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249F421A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), unint64_t *a6, void (*a7)(uint64_t))
{
  result = sub_249F4A198();
  if (!result || (result = sub_249F4A1B8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_249F4A1A8();
      a5(0);
      sub_249F43008(a6, a7);
      return sub_249F4A398();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_249F42284(unsigned int a1)
{
  v3 = *v1;
  if (a1 == 2)
  {
    v4 = 0x3268736168;
    if (*(v3 + 16))
    {
LABEL_4:
      v5 = sub_249F3E200(v4, 0xE500000000000000);
      v7 = v6;

      if (v7)
      {
        v8 = (*(v3 + 56) + 16 * v5);
        result = *v8;
        v10 = v8[1];
        return result;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (a1 != 5)
    {
      v11 = 1;
      goto LABEL_10;
    }

    v4 = 0x3568736168;
    if (*(v3 + 16))
    {
      goto LABEL_4;
    }
  }

LABEL_8:
  v11 = 2;
LABEL_10:
  sub_249F3ED2C();
  swift_allocError();
  *v12 = a1;
  *(v12 + 8) = 0;
  *(v12 + 16) = v11;
  return swift_willThrow();
}

uint64_t sub_249F4236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_249F4A198();
  v11 = result;
  if (result)
  {
    result = sub_249F4A1B8();
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

  sub_249F4A1A8();
  sub_249F40858(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_249F42424(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_249F40C18(a3, a4);
          return sub_249F40A88(v13, a2, a3, a4) & 1;
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

BOOL _s11EDPSecurity20FileMeasurementErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      if (*(a2 + 16))
      {
        v8 = *(a1 + 8);

LABEL_30:
        sub_249F42F7C(v5, v6, v7);
        sub_249F42F90(v2, v3, v4);
        sub_249F42F90(v5, v6, v7);
        return 0;
      }

      v15 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v17 = sub_249F4A658();
        sub_249F42F7C(v5, v6, 0);
        sub_249F42F7C(v2, v3, 0);
        sub_249F42F90(v2, v3, 0);
        sub_249F42F90(v5, v6, 0);
        return v17 & 1;
      }

      sub_249F42F7C(v15, v3, 0);
      sub_249F42F7C(v2, v3, 0);
      sub_249F42F90(v2, v3, 0);
      v20 = v2;
      v21 = v3;
      v22 = 0;
LABEL_34:
      sub_249F42F90(v20, v21, v22);
      return 1;
    }

    if (v7 != 1)
    {
      goto LABEL_30;
    }

    sub_249F42F90(*a1, v3, 1);
    v9 = v5;
    v10 = v6;
    v11 = 1;
    goto LABEL_10;
  }

  if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_30;
    }

    sub_249F42F90(*a1, v3, 2);
    v9 = v5;
    v10 = v6;
    v11 = 2;
LABEL_10:
    sub_249F42F90(v9, v10, v11);
    return v2 == v5;
  }

  if (!(v2 | v3))
  {
    if (v7 != 3 || (v6 | v5) != 0)
    {
      goto LABEL_30;
    }

    sub_249F42F90(*a1, v3, 3);
    v20 = 0;
    v21 = 0;
    v22 = 3;
    goto LABEL_34;
  }

  if (v7 != 3 || v5 != 1 || v6 != 0)
  {
    goto LABEL_30;
  }

  sub_249F42F90(*a1, v3, 3);
  v12 = 1;
  sub_249F42F90(1, 0, 3);
  return v12;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_249F427E4()
{
  result = qword_27EF2A4A8;
  if (!qword_27EF2A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4A8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_249F42884()
{
  result = qword_27EF2A4B0;
  if (!qword_27EF2A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4B0);
  }

  return result;
}

unint64_t sub_249F428D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A508, &qword_249F4B4B0);
    v3 = sub_249F4A5C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_249F40C18(v7, v8);
      result = sub_249F3E200(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_249F429F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A4C0, &qword_249F4B180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_249F42A58()
{
  result = qword_27EF2A4D8;
  if (!qword_27EF2A4D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2A4D0, &qword_249F4B190);
    sub_249F42B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4D8);
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

unint64_t sub_249F42B24()
{
  result = qword_27EF2A4E0;
  if (!qword_27EF2A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4E0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11EDPSecurity20FileMeasurementErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_249F42BA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249F42BF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_249F42C38(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_249F42C6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_249F42CB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FileMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FileMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_249F42E78()
{
  result = qword_27EF2A4E8;
  if (!qword_27EF2A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4E8);
  }

  return result;
}

unint64_t sub_249F42ED0()
{
  result = qword_27EF2A4F0;
  if (!qword_27EF2A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4F0);
  }

  return result;
}

unint64_t sub_249F42F28()
{
  result = qword_27EF2A4F8;
  if (!qword_27EF2A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A4F8);
  }

  return result;
}

uint64_t sub_249F42F7C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_249F42F90(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_249F43008(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249F43050(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_249F43108(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_249F4A1C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_249F4A188();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_249F4A328();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_249F43184(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_249F4A1C8();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_249F4A188();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t PackageSigner.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v4 = sub_249F4A308();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_249F43290(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_249F432F8()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_249F433C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_249F43428()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_249F43490(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_249F4354C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  v5 = sub_249F4A388();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_249F435D8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_249F4A388();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_249F436F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  v4 = sub_249F4A388();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_249F43778(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  swift_beginAccess();
  v4 = sub_249F4A388();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PackageSigner.__allocating_init(_:_:)(char *a1, unint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  PackageSigner.init(_:_:)(a1, a2);
  return v7;
}

uint64_t PackageSigner.init(_:_:)(char *a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_249F4A388();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_249F4A308();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError);
    swift_allocError();
    goto LABEL_10;
  }

  if (!sub_249F4A598())
  {
    goto LABEL_9;
  }

LABEL_3:
  v36 = v8;
  if ((sub_249F45CC4() & 1) == 0)
  {

    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError);
    swift_allocError();
    (*(v12 + 16))(v25, a1, v11);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v12 + 8))(a1, v11);
    goto LABEL_11;
  }

  v33 = v7;
  v34 = v3;
  sub_249F4A298();
  v16 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  (*(v12 + 32))(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url, v15, v11);
  v17 = [objc_opt_self() defaultManager];
  v35 = a1;
  v18 = v17;
  v31 = *(v12 + 16);
  v32 = v16;
  v31(v15, v4 + v16, v11);
  sub_249F4A2D8();
  v19 = v15;
  v20 = *(v12 + 8);
  v20(v19, v11);
  v21 = sub_249F4A408();

  v22 = [v18 fileExistsAtPath_];

  if ((v22 & 1) == 0)
  {

    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError);
    swift_allocError();
    v26 = v32;
    v31(v27, v4 + v32, v11);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v20(v35, v11);
    v20((v4 + v26), v11);
LABEL_11:
    type metadata accessor for PackageSigner(0);
    v28 = *(*v4 + 48);
    v29 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
    return v4;
  }

  *(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_certificateChain) = a2;
  *(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources) = MEMORY[0x277D84F98];
  type metadata accessor for FileMeasurer();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_249F3E630(&unk_285D1AFE0);
  *(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer) = v23;
  v24 = v37;
  sub_249F4A378();
  v20(v35, v11);
  (*(v36 + 32))(v4 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime, v24, v33);
  return v4;
}

uint64_t sub_249F43E44(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F43E7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (, sub_249F3E200(a1, a2), v9 = v8, , (v9 & 1) != 0))
  {
    type metadata accessor for ResourceManifestError();
    sub_249F4576C(&qword_27EF2A538, type metadata accessor for ResourceManifestError);
    swift_allocError();
    *v10 = a1;
    v10[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    swift_beginAccess();

    v12 = *(v3 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_249F455F0(v6, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v14;
    return swift_endAccess();
  }
}

uint64_t sub_249F44008(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  if (*(*(v3 + v7) + 16) && (, sub_249F3E200(a1, a2), v9 = v8, , (v9 & 1) != 0))
  {
    swift_beginAccess();

    v10 = *(v3 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    sub_249F455F0(v6, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + v7) = v14;
    return swift_endAccess();
  }

  else
  {
    type metadata accessor for PackageSignerError(0);
    sub_249F4576C(&qword_27EF2A530, type metadata accessor for PackageSignerError);
    swift_allocError();
    *v13 = a1;
    v13[1] = a2;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_249F44194(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v104 = a1;
  v117 = *MEMORY[0x277D85DE8];
  v102 = sub_249F4A2A8();
  v100 = *(v102 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x28223BE20](v102);
  v99 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_249F4A308();
  v101 = *(v6 - 8);
  v7 = *(v101 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_249F4A388();
  v103 = *(v10 - 8);
  v11 = *(v103 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v15 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  v16 = *(v2 + v15);

  v17 = sub_249F47B00(v2 + v14, v16);
  if (v3)
  {
    goto LABEL_31;
  }

  v95 = v13;
  v96 = v10;
  v92 = v14;
  v93 = v9;
  v94 = v6;
  v98 = 0;
  v18 = v17;

  v19 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  v97 = v2;
  v20 = *(v2 + v19);
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v109 = v20;

  swift_beginAccess();
  v25 = 0;
  v26 = ((v22 + 63) >> 6);
  v106 = v26;
  v108 = v18;
  v107 = v21;
  while (v24)
  {
LABEL_12:
    v31 = __clz(__rbit64(v24)) | (v25 << 6);
    v32 = (*(v109 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    v35 = *(*(v109 + 56) + 8 * v31);
    v36 = *(v18[3] + 16);

    if (v36)
    {

      sub_249F3E200(v33, v34);
      v38 = v37;

      if (v38)
      {
        type metadata accessor for ResourceManifestError();
        sub_249F4576C(&qword_27EF2A538, type metadata accessor for ResourceManifestError);
        swift_allocError();
        *v91 = v33;
        v91[1] = v34;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_31;
      }
    }

    swift_beginAccess();
    v39 = v35;

    v40 = v18[3];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v18[3];
    v42 = v116;
    v18[3] = 0x8000000000000000;
    v43 = v33;
    v45 = sub_249F3E200(v33, v34);
    v46 = v42[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_34;
    }

    v49 = v44;
    if (v42[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v44)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_249F41354();
        if (v49)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_249F40F28(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_249F3E200(v43, v34);
      if ((v49 & 1) != (v51 & 1))
      {
        result = sub_249F4A678();
        __break(1u);
        return result;
      }

      v45 = v50;
      if (v49)
      {
LABEL_5:

        v27 = v116;
        v28 = v116[7];
        v29 = *(v28 + 8 * v45);
        *(v28 + 8 * v45) = v39;

        goto LABEL_6;
      }
    }

    v27 = v116;
    v116[(v45 >> 6) + 8] |= 1 << v45;
    v52 = (v27[6] + 16 * v45);
    *v52 = v43;
    v52[1] = v34;
    *(v27[7] + 8 * v45) = v39;
    v53 = v27[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_35;
    }

    v27[2] = v55;
LABEL_6:
    v24 &= v24 - 1;
    v18 = v108;
    v108[3] = v27;
    swift_endAccess();

    v21 = v107;
    v26 = v106;
  }

  while (1)
  {
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
    }

    if (v30 >= v26)
    {
      break;
    }

    v24 = *(v21 + 8 * v30);
    ++v25;
    if (v24)
    {
      v25 = v30;
      goto LABEL_12;
    }
  }

  v56 = sub_249F4A268();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_249F4A258();
  sub_249F4A238();
  aBlock = v18;
  type metadata accessor for ResourceManifest();
  sub_249F4576C(&qword_27EF2A540, type metadata accessor for ResourceManifest);
  v59 = v98;
  v60 = sub_249F4A248();
  if (!v59)
  {
    v62 = v60;
    v63 = v61;
    v98 = 0;
    v106 = objc_opt_self();
    v64 = sub_249F4A338();
    v65 = v97;
    sub_249F44B44(*(v97 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_certificateChain));
    v109 = v63;
    v66 = sub_249F4A4B8();

    v67 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
    swift_beginAccess();
    v68 = v103;
    v69 = v65 + v67;
    v70 = v95;
    v71 = v96;
    (*(v103 + 16))(v95, v69, v96);
    v107 = v62;
    v72 = sub_249F4A368();
    (*(v68 + 8))(v70, v71);
    v73 = swift_allocObject();
    v74 = v105;
    *(v73 + 16) = v104;
    *(v73 + 24) = v74;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_249F457C4;
    *(v75 + 24) = v73;
    v114 = sub_249F457CC;
    v115 = v75;
    aBlock = MEMORY[0x277D85DD0];
    v111 = 1107296256;
    v112 = sub_249F44E04;
    v113 = &block_descriptor;
    v76 = _Block_copy(&aBlock);

    aBlock = 0;
    v77 = [v106 createSignature:v64 withCertChain:v66 withTime:v72 withRemoteHandler:v76 withError:&aBlock];
    _Block_release(v76);

    v78 = aBlock;
    if (v77)
    {
      v79 = sub_249F4A348();
      v81 = v80;

      aBlock = 0x727574616E676973;
      v111 = 0xE900000000000065;
      v82 = v100;
      v83 = v99;
      v84 = v102;
      (*(v100 + 104))(v99, *MEMORY[0x277CC91D8], v102);
      sub_249F3CBDC();
      v85 = v93;
      sub_249F4A2F8();
      (*(v82 + 8))(v83, v84);
      sub_249F4A358();
      (*(v101 + 8))(v85, v94);
      sub_249F3DC7C(v107, v109);
      v86 = v79;
      v87 = v81;
    }

    else
    {
      v88 = v78;
      sub_249F4A288();

      swift_willThrow();
      v86 = v107;
      v87 = v109;
    }

    sub_249F3DC7C(v86, v87);
  }

LABEL_31:

  v90 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_249F44B44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_249F4A598();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_249F454C0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x24C208110](i, a1);
        type metadata accessor for SecCertificate(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_249F454C0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_249F45CAC(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for SecCertificate(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_249F454C0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_249F45CAC(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_249F44D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = [objc_allocWithZone(SignatureResponse) init];
  v9 = a4(a1, a2, a3);
  v11 = v10;
  v12 = sub_249F4A338();
  [v8 setSignature_];

  sub_249F3DC7C(v9, v11);
  return v8;
}

id sub_249F44E04(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = sub_249F4A348();
  v9 = v8;

  v10 = v5(v7, v9, a3);
  sub_249F3DC7C(v7, v9);

  return v10;
}

uint64_t static PackageSigner.signPackage(_:_:_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_249F4A308();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, a1);
  v16 = type metadata accessor for PackageSigner(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();

  result = PackageSigner.init(_:_:)(v14, a2);
  if (!v5)
  {
    v65 = a4;
    v66 = a5;
    v67 = 0;
    v21 = a3 + 64;
    v22 = 1 << *(a3 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & *(a3 + 64);
    v25 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;

    v73 = v25;
    swift_beginAccess();
    v26 = 0;
    v27 = (v22 + 63) >> 6;
    v28 = v19;
    v69 = a3 + 64;
    v70 = v27;
    v71 = a3;
    v68 = v19;
    while (v24)
    {
LABEL_12:
      v33 = __clz(__rbit64(v24)) | (v26 << 6);
      v34 = (*(a3 + 48) + 16 * v33);
      v35 = *v34;
      v36 = *(*(a3 + 56) + 8 * v33);
      v37 = *(*(v28 + v73) + 16);
      v72 = v34[1];

      if (v37)
      {

        sub_249F3E200(v35, v72);
        v39 = v38;

        if (v39)
        {
          type metadata accessor for ResourceManifestError();
          sub_249F4576C(&qword_27EF2A538, type metadata accessor for ResourceManifestError);
          swift_allocError();
          v62 = v72;
          *v63 = v35;
          v63[1] = v62;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }
      }

      v40 = v73;
      swift_beginAccess();
      v41 = v36;

      v42 = *(v28 + v40);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74 = *(v28 + v40);
      v44 = v74;
      *(v28 + v40) = 0x8000000000000000;
      v45 = v35;
      v46 = v35;
      v47 = v72;
      v49 = sub_249F3E200(v46, v72);
      v50 = v44[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_27;
      }

      v53 = v48;
      if (v44[3] >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_249F41354();
        }
      }

      else
      {
        sub_249F40F28(v52, isUniquelyReferenced_nonNull_native);
        v54 = sub_249F3E200(v45, v47);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_29;
        }

        v49 = v54;
      }

      v56 = v47;
      v57 = v41;
      v27 = v70;
      a3 = v71;
      if (v53)
      {

        v29 = v74;
        v30 = v74[7];
        v31 = *(v30 + 8 * v49);
        *(v30 + 8 * v49) = v57;
      }

      else
      {
        v29 = v74;
        v74[(v49 >> 6) + 8] |= 1 << v49;
        v58 = (v29[6] + 16 * v49);
        *v58 = v45;
        v58[1] = v56;
        *(v29[7] + 8 * v49) = v57;
        v59 = v29[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_28;
        }

        v29[2] = v61;
      }

      v24 &= v24 - 1;
      v28 = v68;
      *(v68 + v73) = v29;
      swift_endAccess();

      v21 = v69;
    }

    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v27)
      {

        sub_249F44194(v65, v66);
      }

      v24 = *(v21 + 8 * v32);
      ++v26;
      if (v24)
      {
        v26 = v32;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    result = sub_249F4A678();
    __break(1u);
  }

  return result;
}

uint64_t PackageSigner.deinit()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_certificateChain);

  v4 = *(v0 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources);

  v5 = *(v0 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer);

  v6 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  v7 = sub_249F4A388();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t PackageSigner.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_url;
  v2 = sub_249F4A308();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_certificateChain);

  v4 = *(v0 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources);

  v5 = *(v0 + OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer);

  v6 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_signingTime;
  v7 = sub_249F4A388();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v8, v9);
}

char *sub_249F454C0(char *a1, int64_t a2, char a3)
{
  result = sub_249F454E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_249F454E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A568, &qword_249F4B548);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_249F455F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_249F3E200(a2, a3);
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
      sub_249F40F28(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_249F3E200(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_249F4A678();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_249F41354();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_249F4576C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_249F457CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_249F4580C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_additionalResources;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249F4586C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11EDPSecurity13PackageSigner_measurer;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_249F45924()
{
  result = sub_249F4A308();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_249F45998()
{
  result = sub_249F4A308();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_249F4A388();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_OWORD *sub_249F45CAC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_249F45CC4()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5D8, &qword_249F4B7B8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5E8, &qword_249F4B7C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F4AE50;
  v4 = *MEMORY[0x277CBE868];
  *(inited + 32) = *MEMORY[0x277CBE868];
  v5 = v4;
  sub_249F3E43C(inited);
  swift_setDeallocating();
  sub_249F48490(inited + 32);
  sub_249F4A2B8();

  v6 = sub_249F4A1F8();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_249F4A1E8();
  (*(v7 + 8))(v2, v6);
  return v8 & 1;
}

uint64_t sub_249F45EFC(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_249F45F8C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
}

uint64_t sub_249F45FEC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_249F46024(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

uint64_t ResourceManifest.__allocating_init()()
{
  type metadata accessor for ResourceManifest();
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F98];
  *(result + 16) = 1;
  *(result + 24) = v1;
  return result;
}

unint64_t sub_249F46114()
{
  sub_249F4A528();

  swift_beginAccess();
  v5 = *(v0 + 16);
  v1 = sub_249F4A648();
  MEMORY[0x24C208060](v1);

  MEMORY[0x24C208060](8236, 0xE200000000000000);
  swift_beginAccess();
  v4 = *(*(v0 + 24) + 16);
  v2 = sub_249F4A648();
  MEMORY[0x24C208060](v2);

  MEMORY[0x24C208060](0x6372756F73657220, 0xEB000000003E7365);
  return 0xD000000000000014;
}

uint64_t sub_249F46250()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(v0 + 24);

  v9 = 0;
  v10 = MEMORY[0x277D84FA0];
  while (v5)
  {
    v11 = v9;
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = *(*(v2 + 56) + ((v11 << 9) | (8 * v12)));
    if (*(v10 + 16))
    {
      v19 = *(*(v2 + 56) + ((v11 << 9) | (8 * v12)));

      v14 = &v19;
      v15 = FileMeasurement.hashTypes()();
      if (v1)
      {

LABEL_21:

        return v14;
      }

      v16 = v15;

      v10 = sub_249F46D48(v16, v10);

      v9 = v11;
    }

    else
    {

      v19 = v13;
      v14 = &v19;
      v10 = FileMeasurement.hashTypes()();

      if (v1)
      {
        goto LABEL_21;
      }

      v9 = v11;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  if (*(v10 + 16))
  {
    if (sub_249F48EE0(5, v10))
    {

      return 5;
    }

    else
    {
      v14 = 2;
      v17 = sub_249F48EE0(2, v10);

      if (!v17)
      {
        sub_249F3ED2C();
        swift_allocError();
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = 3;
        swift_willThrow();
      }
    }
  }

  else
  {

    v14 = type metadata accessor for ResourceManifestError();
    sub_249F46F58();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v14;
}

uint64_t sub_249F464DC()
{
  v1 = *v0;
  sub_249F4A6C8();
  MEMORY[0x24C2082B0](v1);
  return sub_249F4A6F8();
}

uint64_t sub_249F46550()
{
  v1 = *v0;
  sub_249F4A6C8();
  MEMORY[0x24C2082B0](v1);
  return sub_249F4A6F8();
}

uint64_t sub_249F46594()
{
  if (*v0)
  {
    result = 0x656372756F736572;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_249F465D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_249F4A658() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_249F4A658();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_249F466B8(uint64_t a1)
{
  v2 = sub_249F46FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_249F466F4(uint64_t a1)
{
  v2 = sub_249F46FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceManifest.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ResourceManifest.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_249F46788(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A570, &qword_249F4B560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249F46FB0();
  sub_249F4A718();
  swift_beginAccess();
  v11 = *(v3 + 16);
  v15 = 0;
  sub_249F4A628();
  if (!v2)
  {
    swift_beginAccess();
    v14 = *(v3 + 24);
    v13[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A580, &qword_249F4B568);
    sub_249F47058(&qword_27EF2A588, sub_249F47004);
    sub_249F4A638();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResourceManifest.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  ResourceManifest.init(from:)(a1);
  return v2;
}

uint64_t ResourceManifest.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A598, &qword_249F4B570);
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - v7;
  *(v1 + 16) = 1;
  v9 = (v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_249F46FB0();
  sub_249F4A708();
  if (v2)
  {
    type metadata accessor for ResourceManifest();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v5;
    v18 = 0;
    v12 = v16;
    v13 = sub_249F4A5F8();
    swift_beginAccess();
    *v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A580, &qword_249F4B568);
    v17 = 1;
    sub_249F47058(&qword_27EF2A5A0, sub_249F470DC);
    sub_249F4A608();
    (*(v11 + 8))(v8, v12);
    *(v3 + 24) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_249F46C18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ResourceManifest();
  v5 = swift_allocObject();
  result = ResourceManifest.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_249F46CB8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_249F4753C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_249F46D48(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_249F4753C(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_249F46CB8(v12, v6, a2, a1);

    MEMORY[0x24C2088A0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

uint64_t type metadata accessor for ResourceManifestError()
{
  result = qword_27EF2A5B0;
  if (!qword_27EF2A5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_249F46F58()
{
  result = qword_27EF2A538;
  if (!qword_27EF2A538)
  {
    type metadata accessor for ResourceManifestError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A538);
  }

  return result;
}

unint64_t sub_249F46FB0()
{
  result = qword_27EF2A578;
  if (!qword_27EF2A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A578);
  }

  return result;
}

unint64_t sub_249F47004()
{
  result = qword_27EF2A590;
  if (!qword_27EF2A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A590);
  }

  return result;
}

uint64_t sub_249F47058(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2A580, &qword_249F4B568);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_249F470DC()
{
  result = qword_27EF2A5A8;
  if (!qword_27EF2A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5A8);
  }

  return result;
}

uint64_t sub_249F47130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_249F47178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_249F471BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_249F473C8()
{
  result = sub_249F4A308();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_249F47438()
{
  result = qword_27EF2A5C0;
  if (!qword_27EF2A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5C0);
  }

  return result;
}

unint64_t sub_249F47490()
{
  result = qword_27EF2A5C8;
  if (!qword_27EF2A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5C8);
  }

  return result;
}

unint64_t sub_249F474E8()
{
  result = qword_27EF2A5D0;
  if (!qword_27EF2A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5D0);
  }

  return result;
}

uint64_t sub_249F4753C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = result;
  v41 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v23 = 0;
    v24 = 1 << *(a3 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(a3 + 56);
    v27 = (v24 + 63) >> 6;
    v28 = a4 + 56;
    v40 = 0;
LABEL_24:
    while (v26)
    {
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
LABEL_31:
      v32 = v29 | (v23 << 6);
      v33 = *(*(a3 + 48) + 4 * v32);
      v34 = *(a4 + 40);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      a4 = v41;
      v35 = -1 << *(v41 + 32);
      v36 = result & ~v35;
      if ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(v41 + 48) + 4 * v36) != v33)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v39 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_41;
        }

        ++v40;
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
LABEL_38:

        return sub_249F47848(v39, a2, v40, a3);
      }

      v31 = *(a3 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v26 = (v31 - 1) & v31;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v40 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v5 << 6)));
      v16 = *(a3 + 40);
      sub_249F4A6C8();
      sub_249F4A6E8();
      result = sub_249F4A6F8();
      a4 = v41;
      v17 = -1 << *(a3 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) != 0)
      {
        v21 = *(a3 + 48);
        if (*(v21 + 4 * v18) == v15)
        {
LABEL_18:
          v39[v19] |= v20;
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

          ++v40;
        }

        else
        {
          v22 = ~v17;
          while (1)
          {
            v18 = (v18 + 1) & v22;
            v19 = v18 >> 6;
            v20 = 1 << v18;
            if (((1 << v18) & *(v11 + 8 * (v18 >> 6))) == 0)
            {
              break;
            }

            if (*(v21 + 4 * v18) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_249F47848(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A460, &qword_249F4B7B0);
  result = sub_249F4A518();
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
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_249F4A6C8();
    sub_249F4A6E8();
    result = sub_249F4A6F8();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_249F47A50(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x2821FBFB0]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  v6 = sub_249F4A478();
  if (v7)
  {
    v6 = v5;
  }

  if (4 * v3 < v6 >> 14)
  {
    goto LABEL_14;
  }

  return MEMORY[0x2821FBFB0]();
}

uint64_t sub_249F47B00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v64 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5D8, &qword_249F4B7B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5E0, &qword_249F4B7C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v61 - v10;
  v12 = sub_249F4A2A8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_249F4A308();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v80 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v61 - v23;
  MEMORY[0x28223BE20](v22);
  v76 = &v61 - v25;
  v65 = a1;
  if ((sub_249F45CC4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v73 = v13;
  v74 = v12;
  v26 = [objc_opt_self() defaultManager];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2A5E8, &qword_249F4B7C8);
  v27 = swift_allocObject();
  v71 = xmmword_249F4AE50;
  *(v27 + 16) = xmmword_249F4AE50;
  v28 = *MEMORY[0x277CBE868];
  *(v27 + 32) = *MEMORY[0x277CBE868];
  v70 = v28;
  v29 = sub_249F4A4D8();

  v75 = v29;
  if (!v29)
  {
LABEL_19:
    type metadata accessor for ResourceManifestError();
    sub_249F46F58();
    swift_allocError();
    (*(v18 + 16))(v60, v65, v17);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  *&v79[0] = 0x727574616E676973;
  *(&v79[0] + 1) = 0xE900000000000065;
  v31 = v73;
  v30 = v74;
  (*(v73 + 104))(v16, *MEMORY[0x277CC91D8], v74);
  sub_249F3CBDC();
  sub_249F4A2F8();
  (*(v31 + 8))(v16, v30);
  v74 = (v18 + 56);
  v69 = (v18 + 48);
  v68 = (v18 + 32);
  v73 = v18 + 8;
  v63 = MEMORY[0x277D84F98];
  v32 = v66;
  v67 = v24;
  while (1)
  {
    while (1)
    {
      if ([v75 nextObject])
      {
        sub_249F4A4E8();
        swift_unknownObjectRelease();
      }

      else
      {
        v77 = 0u;
        v78 = 0u;
      }

      v79[0] = v77;
      v79[1] = v78;
      if (!*(&v78 + 1))
      {
        (*v73)(v76, v17);

        sub_249F484EC(v79, &qword_27EF2A5F0, &unk_249F4B7D0);
        (*v74)(v11, 1, 1, v17);
LABEL_22:
        sub_249F484EC(v11, &qword_27EF2A5E0, &qword_249F4B7C0);
        type metadata accessor for ResourceManifest();
        result = swift_allocObject();
        *(result + 16) = 1;
        *(result + 24) = v63;
        return result;
      }

      v35 = swift_dynamicCast();
      (*v74)(v11, v35 ^ 1u, 1, v17);
      if ((*v69)(v11, 1, v17) == 1)
      {
        (*v73)(v76, v17);

        goto LABEL_22;
      }

      (*v68)(v24, v11, v17);
      sub_249F4A298();
      inited = swift_initStackObject();
      *(inited + 16) = v71;
      v37 = v70;
      *(inited + 32) = v70;
      v38 = v37;
      sub_249F3E43C(inited);
      swift_setDeallocating();
      v39 = v80;
      sub_249F48490(inited + 32);
      sub_249F4A2B8();
      if (v3)
      {
        MEMORY[0x24C2087B0](v3);

        v33 = sub_249F4A1F8();
        (*(*(v33 - 8) + 56))(v32, 1, 1, v33);
        sub_249F484EC(v32, &qword_27EF2A5D8, &qword_249F4B7B8);
        v3 = 0;
        break;
      }

      v3 = 0;

      v40 = sub_249F4A1F8();
      v41 = *(v40 - 8);
      (*(v41 + 56))(v32, 0, 1, v40);
      v42 = sub_249F4A1E8();
      (*(v41 + 8))(v32, v40);
      if (v42 == 2)
      {
        v32 = v66;
        v39 = v80;
        break;
      }

      v32 = v66;
      v39 = v80;
      if ((v42 & 1) == 0)
      {
        break;
      }

LABEL_6:
      v34 = *v73;
      (*v73)(v39, v17);
      v24 = v67;
      v34(v67, v17);
    }

    if (sub_249F4A2C8())
    {
      goto LABEL_6;
    }

    sub_249F49C48(v79);
    v43 = *&v79[0];
    v62 = sub_249F4A2D8();
    v44 = v39;
    v45 = sub_249F4A2D8();
    v47 = v46;
    v62 = sub_249F4A468();

    result = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    v62 = sub_249F47A50(result, v45, v47);
    v50 = v49;
    v61 = v51;
    v53 = v52;

    v62 = MEMORY[0x24C208020](v62, v50, v61, v53);
    v55 = v54;

    v56 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v79[0] = v56;
    sub_249F455F0(v43, v62, v55, isUniquelyReferenced_nonNull_native);

    v58 = *v73;
    (*v73)(v44, v17);
    v59 = v67;
    v58(v67, v17);
    v63 = *&v79[0];
    v24 = v59;
  }

  __break(1u);
  return result;
}

uint64_t sub_249F48490(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F484EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PackageValidator.init(signatureData:requireTrust:)(uint64_t a1, unint64_t a2, char a3)
{
  v5 = v3;
  v47[1] = *MEMORY[0x277D85DE8];
  *(v3 + 40) = a1;
  *(v3 + 48) = a2;
  sub_249F48A78(a1, a2);
  sub_249F3E76C(0, 0xF000000000000000);
  *(v3 + 32) = 0;
  v9 = *(v3 + 48);
  if (v9 >> 60 != 15)
  {
    v11 = *(v3 + 40);
    v12 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v12 != 2)
      {
        goto LABEL_12;
      }

      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
    }

    else
    {
      if (!v12)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_12;
        }

LABEL_13:
        v16 = objc_opt_self();
        v17 = sub_249F4A338();
        v18 = a3;
        v19 = v17;
        v47[0] = 0;
        v44 = v18;
        v20 = [v16 validateSignature:v17 requireTrust:v18 & 1 withError:v47];

        v21 = v47[0];
        if (!v20)
        {
          v34 = v47[0];
          v35 = sub_249F4A288();

          swift_willThrow();
          sub_249F3CB88();
          swift_allocError();
          *(v36 + 8) = 0;
          *(v36 + 16) = 0;
          *v36 = v35;
          *(v36 + 24) = 0;
          swift_willThrow();
          sub_249F3E76C(v11, v9);
          goto LABEL_3;
        }

        v45 = v11;
        v22 = sub_249F4A228();
        v23 = *(v22 + 48);
        v24 = *(v22 + 52);
        swift_allocObject();
        v25 = v21;
        v26 = v20;
        sub_249F4A218();
        type metadata accessor for ResourceManifest();
        v46 = v26;
        v27 = [v26 validatedData];
        v28 = sub_249F4A348();
        v30 = v29;

        sub_249F48AB0();
        sub_249F4A208();
        sub_249F3DC7C(v28, v30);
        if (v4)
        {
          sub_249F3CB88();
          swift_allocError();
          *(v31 + 8) = 0;
          *(v31 + 16) = 0;
          *v31 = 2;
          *(v31 + 24) = 5;
          swift_willThrow();

          sub_249F3E76C(v45, v9);

          MEMORY[0x24C2087B0](v4);
          sub_249F3E76C(a1, a2);
          goto LABEL_16;
        }

        *(v5 + 16) = v47[0];
        *(v5 + 32) = [v46 isTrusted];
        v37 = [v46 certificateChain];
        v38 = sub_249F4A4C8();

        v39 = sub_249F4907C(v38);

        if (!v39)
        {
          sub_249F3CB88();
          swift_allocError();
          *(v42 + 8) = 0;
          *(v42 + 16) = 0;
          *v42 = 4;
          *(v42 + 24) = 5;
          swift_willThrow();

          sub_249F3E76C(v45, v9);

          sub_249F3E76C(a1, a2);
          v43 = *(v5 + 16);

          goto LABEL_16;
        }

        *(v5 + 24) = v39;
        if (v44)
        {
          v40 = v46;
          if ((*(v5 + 32) & 1) == 0)
          {
            sub_249F3CB88();
            swift_allocError();
            *(v41 + 8) = 0;
            *(v41 + 16) = 0;
            *v41 = 3;
            *(v41 + 24) = 5;
            swift_willThrow();

LABEL_26:
            sub_249F3E76C(v45, v9);

            sub_249F3E76C(a1, a2);
            goto LABEL_17;
          }
        }

        else
        {
          v40 = v46;
        }

        goto LABEL_26;
      }

      v13 = v11;
      v14 = v11 >> 32;
    }

    sub_249F48A78(*(v5 + 40), v9);
    if (v13 != v14)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_249F3CB88();
    swift_allocError();
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    *v15 = 1;
    *(v15 + 24) = 5;
    swift_willThrow();
    sub_249F3E76C(a1, a2);
    sub_249F3E76C(v11, v9);
    goto LABEL_16;
  }

  sub_249F3CB88();
  swift_allocError();
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  *v10 = 1;
  *(v10 + 24) = 5;
  swift_willThrow();
LABEL_3:
  sub_249F3E76C(a1, a2);
LABEL_16:
  sub_249F3E76C(*(v5 + 40), *(v5 + 48));
  type metadata accessor for PackageValidator();
  swift_deallocPartialClassInstance();
LABEL_17:
  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_249F48A78(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_249F40C18(a1, a2);
  }

  return a1;
}

unint64_t sub_249F48AB0()
{
  result = qword_27EF2A5F8;
  if (!qword_27EF2A5F8)
  {
    type metadata accessor for ResourceManifest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2A5F8);
  }

  return result;
}

void *PackageValidator.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_249F3E76C(v0[5], v0[6]);
  return v0;
}

uint64_t sub_249F48B38()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_249F48B70(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_249F48C60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  v10 = *(v4 + 16);
  swift_beginAccess();
  v11 = *(v10 + 24);
  if (!*(v11 + 16))
  {
    goto LABEL_7;
  }

  v12 = sub_249F3E200(a1, a2);
  if ((v13 & 1) == 0)
  {

LABEL_7:
    sub_249F3CB88();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    swift_willThrow();
  }

  v14 = *(*(v11 + 56) + 8 * v12);

  v15 = FileMeasurement.hashTypes()();
  if (v5)
  {
  }

  v16 = v15;
  if (sub_249F48EE0(5, v15))
  {

    v17 = 5;
    goto LABEL_9;
  }

  v17 = 2;
  v20 = sub_249F48EE0(2, v16);

  if (!v20)
  {
    sub_249F3ED2C();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 3;
    swift_willThrow();
  }

LABEL_9:
  v21 = sub_249F3ED98(a3, a4, v17);
  v23 = v22;
  v25 = sub_249F42284(v17);
  v27 = v26;
  sub_249F40C18(v25, v26);

  v28 = sub_249F42424(v21, v23, v25, v27);
  if ((v28 & 1) == 0)
  {
    sub_249F3CB88();
    swift_allocError();
    *v29 = a1;
    *(v29 + 8) = a2;
    *(v29 + 16) = 0;
    *(v29 + 24) = 1;
    swift_willThrow();
  }

  sub_249F3DC7C(v25, v27);
  return sub_249F3DC7C(v21, v23);
}

BOOL sub_249F48EE0(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_249F4A6C8();
  sub_249F4A6E8();
  v5 = sub_249F4A6F8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 4 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_249F48FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t PackageValidator.__allocating_init(signatureData:requireTrust:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = swift_allocObject();
  PackageValidator.init(signatureData:requireTrust:)(a1, a2, a3);
  return v6;
}

uint64_t sub_249F4907C(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_249F4A568();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_249F49760(i, v6);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_249F4A548();
    v4 = *(v7 + 16);
    sub_249F4A578();
    sub_249F4A588();
    sub_249F4A558();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t PackageValidator.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_249F3E76C(v0[5], v0[6]);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

BOOL _s11EDPSecurity21PackageValidatorErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 24);
  sub_249F3CB88();
  v10 = swift_allocError();
  *v11 = v2;
  *(v11 + 8) = v3;
  *(v11 + 16) = v4;
  *(v11 + 24) = v8;
  sub_249F496C4(v2, v3, v4, v8);
  v12 = sub_249F4A278();
  MEMORY[0x24C2087B0](v10);
  v13 = swift_allocError();
  *v14 = v5;
  *(v14 + 8) = v6;
  *(v14 + 16) = v7;
  *(v14 + 24) = v9;
  sub_249F496C4(v5, v6, v7, v9);
  v15 = sub_249F4A278();
  MEMORY[0x24C2087B0](v13);
  v16 = [v12 domain];
  v17 = sub_249F4A438();
  v19 = v18;

  v20 = [v15 domain];
  v21 = sub_249F4A438();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {

LABEL_5:
    v25 = [v12 code];
    v26 = [v15 code];

    return v25 == v26;
  }

  v24 = sub_249F4A658();

  if (v24)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_249F493C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_249F49414@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t get_enum_tag_for_layout_string_11EDPSecurity21PackageValidatorErrorO(uint64_t a1)
{
  if ((*(a1 + 24) & 7u) <= 4)
  {
    return *(a1 + 24) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_249F49494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 25))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 24);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_249F494DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_249F49524(uint64_t result, unsigned int a2)
{
  v2 = a2 - 5;
  if (a2 >= 5)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 5;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

id sub_249F496C4(id result, id a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 1u)
  {
    if (a4 != 2 && a4 != 3)
    {
      if (a4 != 4)
      {
        return result;
      }
    }

LABEL_10:
  }

  if (a4)
  {
    if (a4 == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {

    return result;
  }

  return result;
}

uint64_t sub_249F49760(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t FileMeasurer.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  FileMeasurer.init(_:)(a1);
  return v2;
}

uint64_t FileMeasurer.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_249F3E630(&unk_285D1B008);
  return v0;
}

uint64_t sub_249F49850()
{
  result = sub_249F3E630(&unk_285D1AEA0);
  qword_27EF2A638 = result;
  return result;
}

uint64_t sub_249F49878(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

uint64_t sub_249F498D8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_249F49910(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t FileMeasurer.init(_:)(uint64_t a1)
{
  *(v1 + 16) = sub_249F3E630(&unk_285D1AEC8);
  v3 = (v1 + 16);
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  for (i = 0; ; i = v11)
  {
    v10 = 0x27EF2A000uLL;
    if (!v6)
    {
      break;
    }

    v11 = i;
LABEL_10:
    v12 = *(*(a1 + 48) + ((v11 << 8) | (4 * __clz(__rbit64(v6)))));
    if (qword_27EF2A408 != -1)
    {
      swift_once();
      v10 = 0x27EF2A000;
    }

    v13 = *(v10 + 1592);
    if (!*(v13 + 16) || (v14 = *(v13 + 40), sub_249F4A6C8(), sub_249F4A6E8(), result = sub_249F4A6F8(), v15 = -1 << *(v13 + 32), v16 = result & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0))
    {
LABEL_19:

      sub_249F3ED2C();
      swift_allocError();
      *v18 = v12;
      *(v18 + 8) = 0;
      *(v18 + 16) = 1;
      swift_willThrow();
      v19 = v1;

      return v19;
    }

    v6 &= v6 - 1;
    v17 = ~v15;
    while (*(*(v13 + 48) + 4 * v16) != v12)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      swift_beginAccess();
      v20 = *v3;
      *v3 = a1;

      return v1;
    }

    v6 = *(a1 + 56 + 8 * v11);
    ++i;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t static FileMeasurer.measureFile(_:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for FileMeasurer();
  inited = swift_initStackObject();
  *(inited + 16) = sub_249F3E630(&unk_285D1B058);
  sub_249F49C48(a1);
}

uint64_t sub_249F49C48@<X0>(void *a1@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v7 = *(v4 + 56);
  v6 = v4 + 56;
  v5 = v7;
  v8 = 1 << *(*(v1 + 16) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v45 = (v8 + 63) >> 6;
  v46 = *(v1 + 16);

  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_7:
  v18 = v3;
  while (1)
  {
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v17 >= v45)
    {

      return sub_249F3F688(v12, a1);
    }

    v10 = *(v6 + 8 * v17);
    ++v11;
    if (v10)
    {
      while (1)
      {
        v19 = *(*(v46 + 48) + ((v17 << 8) | (4 * __clz(__rbit64(v10)))));
        v47 = 0x3268736168;
        if (v19 != 2)
        {
          if (v19 != 5)
          {
            sub_249F3ED2C();
            swift_allocError();
            *v43 = v19;
            *(v43 + 8) = 0;
            *(v43 + 16) = 1;
            swift_willThrow();
          }

          v47 = 0x3568736168;
        }

        v20 = sub_249F4A318();
        if (v18)
        {
        }

        v22 = v20;
        v23 = v21;
        v24 = sub_249F3ED98(v20, v21, v19);
        v3 = 0;
        v25 = v24;
        v27 = v26;
        sub_249F3DC7C(v22, v23);
        sub_249F40C18(v25, v27);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = sub_249F3E200(v47, 0xE500000000000000);
        v31 = v12[2];
        v32 = (v30 & 1) == 0;
        v33 = __OFADD__(v31, v32);
        v34 = v31 + v32;
        if (v33)
        {
          goto LABEL_29;
        }

        v35 = v30;
        if (v12[3] >= v34)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v29;
            sub_249F411D0();
            v29 = v41;
          }
        }

        else
        {
          sub_249F40C6C(v34, isUniquelyReferenced_nonNull_native);
          v29 = sub_249F3E200(v47, 0xE500000000000000);
          if ((v35 & 1) != (v36 & 1))
          {
            goto LABEL_31;
          }
        }

        v10 &= v10 - 1;
        if (v35)
        {
          v13 = v29;

          v14 = (v12[7] + 16 * v13);
          v15 = *v14;
          v16 = v14[1];
          *v14 = v25;
          v14[1] = v27;
          sub_249F3DC7C(v15, v16);
          sub_249F3DC7C(v25, v27);
          v11 = v17;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v12[(v29 >> 6) + 8] |= 1 << v29;
          v37 = (v12[6] + 16 * v29);
          *v37 = v47;
          v37[1] = 0xE500000000000000;
          v38 = (v12[7] + 16 * v29);
          *v38 = v25;
          v38[1] = v27;
          sub_249F3DC7C(v25, v27);
          v39 = v12[2];
          v33 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v33)
          {
            goto LABEL_30;
          }

          v12[2] = v40;
          v11 = v17;
          if (!v10)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v17 = v11;
        v18 = v3;
      }
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_249F4A678();
  __break(1u);
  return result;
}

uint64_t FileMeasurer.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t FileMeasurer.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_249F4A040@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}