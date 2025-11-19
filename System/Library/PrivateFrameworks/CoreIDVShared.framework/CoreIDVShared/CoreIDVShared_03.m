uint64_t sub_2259F7208()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259F72AC()
{
  sub_225CCE5B4();
}

uint64_t sub_2259F733C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_2259F73E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC0000004D415568;
  v5 = 0x7469573635325345;
  if (v2 != 1)
  {
    v5 = 0x453635325345;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x3635325345;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

CoreIDVShared::HardwareAttestationType_optional __swiftcall HardwareAttestationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HardwareAttestationType.rawValue.getter()
{
  v1 = 5260627;
  v2 = 5653577;
  if (*v0 != 2)
  {
    v2 = 20559;
  }

  if (*v0)
  {
    v1 = 17747;
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

uint64_t sub_2259F75BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_2259F7654()
{
  sub_225CCE5B4();
}

uint64_t sub_2259F76D8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_2259F7778(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 5260627;
  v4 = 0xE300000000000000;
  v5 = 5653577;
  if (*v1 != 2)
  {
    v5 = 20559;
    v4 = 0xE200000000000000;
  }

  if (*v1)
  {
    v3 = 17747;
    v2 = 0xE200000000000000;
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

uint64_t DIPKeyAlgorithm.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t _s13CoreIDVShared11ECIESOptionO9hashValueSivg_0()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t sub_2259F795C()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

unint64_t sub_2259F79A4()
{
  result = qword_27D73AF30;
  if (!qword_27D73AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF30);
  }

  return result;
}

unint64_t sub_2259F79FC()
{
  result = qword_27D73AF38;
  if (!qword_27D73AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF38);
  }

  return result;
}

unint64_t sub_2259F7A54()
{
  result = qword_27D73AF40;
  if (!qword_27D73AF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AF48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF40);
  }

  return result;
}

unint64_t sub_2259F7ABC()
{
  result = qword_27D73AF50;
  if (!qword_27D73AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HardwareAttestationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HardwareAttestationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ISO18013PresentmentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013PresentmentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2259F7DC0()
{
  result = qword_28105A110[0];
  if (!qword_28105A110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28105A110);
  }

  return result;
}

unint64_t sub_2259F7E14()
{
  result = qword_28105B6E0;
  if (!qword_28105B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6E0);
  }

  return result;
}

uint64_t KeyUsage.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

SecAccessControlRef __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> createBAAKeyACLWithDefaultLAContext(enableUAM:keyUsage:requireUserAuth:forSecureElement:)(Swift::Bool enableUAM, CoreIDVShared::KeyUsage keyUsage, Swift::Bool requireUserAuth, Swift::Bool forSecureElement)
{
  v7 = *keyUsage;
  v8 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v11 = v7;
  v9 = sub_2259F7FB0(v8, enableUAM, &v11, requireUserAuth, forSecureElement);

  return v9;
}

SecAccessControlRef sub_2259F7FB0(void *a1, char a2, char *a3, char a4, char a5)
{
  error[1] = *MEMORY[0x277D85DE8];
  v49 = *a3;
  error[0] = 0;
  if (a4)
  {
    v9 = 1073741825;
  }

  else
  {
    v9 = 0x40000000;
  }

  v10 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], v9, error);
  v11 = v10;
  if (v10)
  {
    v46 = a5;
    v47 = a2;
    v44 = a4;
    v48 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD73A0;
    *(inited + 32) = 0x6E666F6B70;
    v13 = MEMORY[0x277D83B88];
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 1;
    *(inited + 72) = v13;
    *(inited + 80) = 1668640112;
    *(inited + 88) = 0xE400000000000000;
    *(inited + 96) = 7;
    *(inited + 120) = v13;
    *(inited + 128) = 1869177443;
    *(inited + 136) = 0xE400000000000000;
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_225CD4890;
    v45 = a1;
    *(v14 + 32) = 0x636F696270;
    *(v14 + 40) = 0xE500000000000000;
    v15 = MEMORY[0x277CC9318];
    *(v14 + 48) = xmmword_225CD4150;
    *(v14 + 72) = v15;
    *(v14 + 80) = 0x746F696270;
    *(v14 + 120) = v13;
    *(v14 + 88) = 0xE500000000000000;
    *(v14 + 96) = 1;
    v16 = sub_225B2C92C(v14);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
    swift_arrayDestroy();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B0D0);
    *(inited + 144) = v16;
    *(inited + 168) = v17;
    *(inited + 176) = 1852795747;
    *(inited + 184) = 0xE400000000000000;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_225CD73B0;
    *(v18 + 32) = 0x6E666F6B70;
    *(v18 + 40) = 0xE500000000000000;
    *(v18 + 48) = 1;
    *(v18 + 72) = v13;
    *(v18 + 80) = 1668640112;
    *(v18 + 88) = 0xE400000000000000;
    *(v18 + 96) = 7;
    *(v18 + 120) = v13;
    *(v18 + 128) = 1869177443;
    *(v18 + 136) = 0xE400000000000000;
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_225CD4890;
    *(v19 + 32) = 0x636F696270;
    *(v19 + 40) = 0xE500000000000000;
    *(v19 + 48) = xmmword_225CD4150;
    *(v19 + 72) = MEMORY[0x277CC9318];
    *(v19 + 80) = 0x746F696270;
    *(v19 + 120) = v13;
    *(v19 + 88) = 0xE500000000000000;
    *(v19 + 96) = 2;
    v20 = sub_225B2C92C(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v18 + 168) = v17;
    *(v18 + 144) = v20;
    v21 = sub_225B2C92C(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = v17;
    *(inited + 216) = v17;
    *(inited + 192) = v21;
    v23 = sub_225B2C92C(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v24 = [v45 canEvaluatePolicy:1 error:0];
    v25 = MEMORY[0x277D839B0];
    if ((v24 & 1) == 0)
    {
      sub_225B2AC50(1869177443, 0xE400000000000000, &v51);
      sub_2259CB640(&v51, &qword_27D73DD90);
      sub_225B2AC50(1852795747, 0xE400000000000000, &v51);
      sub_2259CB640(&v51, &qword_27D73DD90);
      v52 = v25;
      LOBYTE(v51) = 1;
      sub_2259B9624(&v51, v50);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_225A03F40(v50, 7370083, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    }

    if (a2)
    {
      goto LABEL_8;
    }

    v28 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v29 = sub_225CCE444();
      v30 = [v28 BOOLForKey_];

      if (v30)
      {
LABEL_8:
        v52 = v25;
        LOBYTE(v51) = 1;
        sub_2259B9624(&v51, v50);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        sub_225A03F40(v50, 1953525616, 0xE400000000000000, v27);
      }
    }

    else
    {
    }

    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_225CD30F0;
    *(v31 + 32) = 7037807;
    v32 = v31 + 32;
    *(v31 + 40) = 0xE300000000000000;
    *(v31 + 72) = v25;
    *(v31 + 48) = 0;
    sub_225B2C92C(v31);
    swift_setDeallocating();
    sub_2259CB640(v32, &unk_27D73B090);
    swift_deallocClassInstance();
    if ((v46 & 1) == 0)
    {
      v52 = v25;
      LOBYTE(v51) = 1;
      sub_2259B9624(&v51, v50);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_225A03F40(v50, 1818584175, 0xE400000000000000, v33);
    }

    if (v49)
    {
      v52 = v25;
      LOBYTE(v51) = 1;
      sub_2259B9624(&v51, v50);
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = 7037807;
      v36 = 0xE300000000000000;
    }

    else
    {
      v52 = v17;
      *&v51 = v23;
      sub_2259B9624(&v51, v50);

      v34 = swift_isUniquelyReferenced_nonNull_native();
      v35 = 1852273519;
      v36 = 0xE400000000000000;
    }

    sub_225A03F40(v50, v35, v36, v34);
    v37 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1)
    {
      v38 = sub_225CCE444();
      v39 = [v37 BOOLForKey_];

      if (v39 & 1) != 0 || (v47)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (v47)
      {
LABEL_26:

        v11 = v48;
LABEL_34:
        v41 = v11;
        v42 = sub_225CCE2B4();

        SecAccessControlSetConstraints();

        return v11;
      }
    }

    v11 = v48;
    if (v49)
    {
    }

    else
    {
      if (v44)
      {
        *&v51 = v23;
      }

      else
      {

        LOBYTE(v51) = 1;
        v22 = MEMORY[0x277D839B0];
      }

      v52 = v22;
      sub_2259B9624(&v51, v50);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      sub_225A03F40(v50, 1852273519, 0xE400000000000000, v40);
    }

    goto LABEL_34;
  }

  LOWORD(v51) = 251;
  errorFromCFError(_:_:_:)(error[0], 0xD00000000000003ELL, 0x8000000225D16F60, &v51);
  swift_willThrow();
  return v11;
}

uint64_t sub_2259F8828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 120) = a5;
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2259F8850, 0, 0);
}

uint64_t sub_2259F8850()
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v1 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v2 = *(v1 + 2);
  sub_2259AA0E0(v2);
  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v2();
    sub_2259AA0D0(v2);
    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
  }

  else
  {
    v3 = &type metadata for DeviceIdentityCommon;
    v4 = &protocol witness table for DeviceIdentityCommon;
    *(v0 + 40) = &type metadata for DeviceIdentityCommon;
    *(v0 + 48) = &protocol witness table for DeviceIdentityCommon;
    v5 = swift_allocObject();
    *(v0 + 16) = v5;
    *(v5 + 40) = &type metadata for DeviceInformationProvider;
    *(v5 + 48) = &protocol witness table for DeviceInformationProvider;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v13 = (v4[1] + *v4[1]);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2259F8A3C;
  v7 = *(v0 + 120);
  v8 = *(v0 + 72);
  v9 = *(v0 + 80);
  v10 = *(v0 + 64);
  v11 = *(v0 + 56);

  return v13(v11, v10, v8, v9, v7, v3, v4);
}

uint64_t sub_2259F8A3C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_2259F8BD8;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_2259F8B70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2259F8B70()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_2259F8BD8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static DeviceIdentityCommon.new()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v2 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v3 = *(v2 + 2);
  sub_2259AA0E0(v3);
  os_unfair_lock_unlock(v2 + 8);
  if (v3)
  {
    v3();

    return sub_2259AA0D0(v3);
  }

  else
  {
    a1[3] = &type metadata for DeviceIdentityCommon;
    a1[4] = &protocol witness table for DeviceIdentityCommon;
    result = swift_allocObject();
    *a1 = result;
    *(result + 40) = &type metadata for DeviceInformationProvider;
    *(result + 48) = &protocol witness table for DeviceInformationProvider;
  }

  return result;
}

uint64_t sub_2259F8D34(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x2822009F8](sub_2259F8D54, 0, 0);
}

uint64_t sub_2259F8D54()
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v1 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v2 = *(v1 + 2);
  sub_2259AA0E0(v2);
  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v2();
    sub_2259AA0D0(v2);
    v3 = v0[5];
    v4 = v0[6];
  }

  else
  {
    v3 = &type metadata for DeviceIdentityCommon;
    v4 = &protocol witness table for DeviceIdentityCommon;
    v0[5] = &type metadata for DeviceIdentityCommon;
    v0[6] = &protocol witness table for DeviceIdentityCommon;
    v5 = swift_allocObject();
    v0[2] = v5;
    *(v5 + 40) = &type metadata for DeviceInformationProvider;
    *(v5 + 48) = &protocol witness table for DeviceInformationProvider;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v10 = (v4[2] + *v4[2]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_2259F8F38;
  v8 = v0[7];
  v7 = v0[8];

  return v10(v8, v7, v3, v4);
}

uint64_t sub_2259F8F38()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2259F90B0;
  }

  else
  {
    v2 = sub_2259F904C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259F904C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259F90B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259F9114()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v31 - v2;
  v4 = sub_225CCCCB4();
  v5 = [v4 code];

  if (v5 + 11 > 9)
  {
    v6 = 237;
  }

  else
  {
    v6 = word_225CD7718[v5 + 11];
  }

  swift_getErrorValue();
  v7 = sub_225CCFB24();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 20;
  v11 = sub_225CCCCB4();
  v12 = [v11 code];

  v13 = MEMORY[0x277D83BF8];
  *(inited + 64) = MEMORY[0x277D83B88];
  *(inited + 72) = v13;
  *(inited + 40) = v12;
  v14 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060);
  sub_2259CB5EC();
  v15 = swift_allocError();
  v17 = v16;
  v18 = sub_225CCE954();
  v19 = *(v18 - 8);
  (*(v19 + 56))(v3, 1, 1, v18);
  v20 = (*(v19 + 48))(v3, 1, v18);
  sub_2259CB640(v3, &unk_27D73B050);

  v21 = MEMORY[0x277D84F90];
  v22 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v22;
  sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v32);

  v24 = v32;
  v25 = sub_225B29AA0(0, 1, 1, v21);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 4) = v7;
  *(v28 + 5) = v9;
  *(v28 + 6) = 0xD000000000000028;
  *(v28 + 7) = 0x8000000225D16CF0;
  *(v28 + 8) = 0xD000000000000018;
  *(v28 + 9) = 0x8000000225D16D20;
  *(v28 + 10) = 165;
  if (v20)
  {
    v29 = v6;
  }

  else
  {
    v29 = 23;
  }

  *v17 = v29;
  *(v17 + 8) = v25;
  *(v17 + 16) = v7;
  *(v17 + 24) = v9;
  *(v17 + 32) = v24;
  *(v17 + 40) = 0;
  return v15;
}

uint64_t sub_2259F9464()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  off_27D73AF58 = result;
  return result;
}

uint64_t static DeviceIdentityCommon.instanceFactory.getter()
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v0 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v1 = *(v0 + 2);
  sub_2259AA0E0(v1);
  os_unfair_lock_unlock(v0 + 8);
  return v1;
}

void sub_2259F9530(uint64_t *a1@<X8>)
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v2 = off_27D73AF58;
  os_unfair_lock_lock(off_27D73AF58 + 8);
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  sub_2259AA0E0(v3);
  os_unfair_lock_unlock(v2 + 8);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_2259F95B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_2259AA0E0(*a1);
  if (qword_27D739EF8 != -1)
  {
    v2 = swift_once();
  }

  v4 = off_27D73AF58;
  MEMORY[0x28223BE20](v2, v3);
  os_unfair_lock_lock(v4 + 8);
  sub_225A02EB4(v4 + 2);
  os_unfair_lock_unlock(v4 + 8);
  return sub_2259AA0D0(v1);
}

uint64_t static DeviceIdentityCommon.instanceFactory.setter(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (qword_27D739EF8 != -1)
  {
    a1 = swift_once();
  }

  v3 = off_27D73AF58;
  MEMORY[0x28223BE20](a1, a2);
  os_unfair_lock_lock(v3 + 8);
  sub_2259F97A4(v3 + 2);
  os_unfair_lock_unlock(v3 + 8);
  return sub_2259AA0D0(v2);
}

uint64_t sub_2259F9744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (v6)
  {
    sub_2259AA0D0(v6);
  }

  if (a2)
  {
    v7 = a3;
  }

  else
  {
    v7 = 0;
  }

  *a1 = a2;
  a1[1] = v7;
  return sub_2259AA0E0(a2);
}

uint64_t (*static DeviceIdentityCommon.instanceFactory.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (qword_27D739EF8 != -1)
  {
    swift_once();
  }

  v2 = off_27D73AF58;
  a1[2] = off_27D73AF58;
  os_unfair_lock_lock(v2 + 8);
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  sub_2259AA0E0(v3);
  os_unfair_lock_unlock(v2 + 8);
  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_2259F986C;
}

uint64_t sub_2259F986C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[2];
  if (a2)
  {
    sub_2259AA0E0(v2);
    os_unfair_lock_lock((v3 + 32));
    sub_225A02EB4((v3 + 16));
    os_unfair_lock_unlock((v3 + 32));
    sub_2259AA0D0(v2);
  }

  else
  {
    os_unfair_lock_lock((v3 + 32));
    sub_225A02EB4((v3 + 16));
    os_unfair_lock_unlock((v3 + 32));
  }

  return sub_2259AA0D0(v2);
}

uint64_t DeviceIdentityCommon.fetchOrCreateCertificateWithDeviceIdentity(label:laContext:options:enableUAM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 120) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_225CCD954();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2259F99FC, 0, 0);
}

uint64_t sub_2259F99FC()
{
  v22 = v0;
  v1 = sub_2259F9EC8(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 120));
  *(v0 + 80) = v1;
  v20 = v1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = off_28105B918;
  v6 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v7 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v7));
  (*(v2 + 16))(v3, &v5[v6], v4);
  os_unfair_lock_unlock(&v5[v7]);

  v8 = sub_225CCD934();
  v9 = sub_225CCED04();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 64);
  v12 = *(v0 + 72);
  v13 = *(v0 + 56);
  if (v10)
  {
    v15 = *(v0 + 16);
    v14 = *(v0 + 24);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2259BE198(v15, v14, &v21);
    _os_log_impl(&dword_2259A7000, v8, v9, "creating BAA certificate with DeviceIdentity for label %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AA6F950](v17, -1, -1);
    MEMORY[0x22AA6F950](v16, -1, -1);
  }

  (*(v11 + 8))(v12, v13);
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_2259F9CB8;

  return DeviceIdentityCommon.callDeviceIdentity(baaOptions:)(v20);
}

uint64_t sub_2259F9CB8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = sub_2259F9E5C;
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = sub_2259F9DEC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2259F9DEC()
{

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

uint64_t sub_2259F9E5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259F9EC8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v312 = a2;
  v313 = sub_225CCD954();
  v314 = *(v313 - 8);
  v12 = MEMORY[0x28223BE20](v313, v11);
  v306 = &v296 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v296 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v304 = &v296 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v296 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v302 = &v296 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v307 = &v296 - v29;
  v30 = MEMORY[0x277D841D0];
  v309 = a1;
  v310 = v17;
  if (a4)
  {
    if (*(a4 + 16) && (v31 = sub_2259F1BAC(1u), (v32 & 1) != 0))
    {
      v33 = *(*(a4 + 56) + 16 * v31);

      v35 = v33;
    }

    else
    {
      v35 = 0;
      v34 = 0xE000000000000000;
    }

    v36 = sub_2259EDAD0(v35, v34);
    v38 = 15;
    if ((v37 & 1) == 0)
    {
      v38 = v36;
    }

    v311 = v38;
    if (*(a4 + 16))
    {
      sub_2259F1BAC(0);
      if (v39)
      {

        result = Data.init(base16Encoded:)();
        if (v41 >> 60 == 15)
        {
          v314 = 0x8000000225D16CF0;
          v313 = 0x8000000225D16E90;
          v42 = MEMORY[0x277D84F90];
          v43 = sub_225B2C248(MEMORY[0x277D84F90]);
          sub_2259CB5EC();
          swift_allocError();
          v45 = v44;
          v46 = sub_225CCE954();
          v47 = *(v46 - 8);
          v48 = v307;
          (*(v47 + 56))(v307, 1, 1, v46);
          LODWORD(v46) = (*(v47 + 48))(v48, 1, v46);
          sub_2259CB640(v48, &unk_27D73B050);
          if (v46)
          {
            v49 = 126;
          }

          else
          {
            v49 = 23;
          }

          v50 = sub_225B2C374(v42);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v315 = v50;
          sub_225B2C4A0(v43, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v315);

          v52 = v315;
          v53 = sub_225B29AA0(0, 1, 1, v42);
          v55 = *(v53 + 2);
          v54 = *(v53 + 3);
          if (v55 >= v54 >> 1)
          {
            v53 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v53);
          }

          *(v53 + 2) = v55 + 1;
          v56 = &v53[56 * v55];
          *(v56 + 4) = 0xD000000000000021;
          *(v56 + 5) = 0x8000000225D16F00;
          v57 = v314;
          *(v56 + 6) = 0xD000000000000028;
          *(v56 + 7) = v57;
          v58 = v313;
          *(v56 + 8) = 0xD000000000000034;
          *(v56 + 9) = v58;
          *(v56 + 10) = 286;
          *v45 = v49;
          *(v45 + 8) = v53;
          *(v45 + 16) = 0xD000000000000021;
          *(v45 + 24) = 0x8000000225D16F00;
          *(v45 + 32) = v52;
          *(v45 + 40) = 0;
          swift_willThrow();
          return v48;
        }

        v48 = result;
        v68 = v41;
        v138 = v41 >> 62;
        if ((v41 >> 62) > 1)
        {
          if (v138 != 2)
          {
            sub_2259B97A8(result, v41);
            goto LABEL_26;
          }

          v141 = *(result + 16);
          v140 = *(result + 24);
          v142 = __OFSUB__(v140, v141);
          v139 = v140 - v141;
          if (!v142)
          {
            goto LABEL_67;
          }

          __break(1u);
        }

        else if (!v138)
        {
          sub_2259B97A8(result, v41);
          v139 = BYTE6(v68);
LABEL_67:
          if (v139 >= 33)
          {
            v303 = v48;
            v314 = 0x8000000225D16CF0;
            v313 = 0x8000000225D16E90;
            v143 = MEMORY[0x277D84F90];
            v48 = v6;
            v144 = sub_225B2C248(MEMORY[0x277D84F90]);
            sub_2259CB5EC();
            v305 = swift_allocError();
            v146 = v145;
            v147 = sub_225CCE954();
            v148 = *(v147 - 8);
            v149 = v307;
            (*(v148 + 56))(v307, 1, 1, v147);
            LODWORD(v147) = (*(v148 + 48))(v149, 1, v147);
            sub_2259CB640(v149, &unk_27D73B050);
            if (v147)
            {
              v150 = 108;
            }

            else
            {
              v150 = 23;
            }

            v151 = sub_225B2C374(v143);
            v152 = swift_isUniquelyReferenced_nonNull_native();
            *&v315 = v151;
            sub_225B2C4A0(v144, sub_225B2AC40, 0, v152, &v315);

            v153 = v315;
            v154 = sub_225B29AA0(0, 1, 1, v143);
            v156 = *(v154 + 2);
            v155 = *(v154 + 3);
            if (v156 >= v155 >> 1)
            {
              v154 = sub_225B29AA0((v155 > 1), v156 + 1, 1, v154);
            }

            *(v154 + 2) = v156 + 1;
            v157 = &v154[56 * v156];
            *(v157 + 4) = 0xD00000000000002FLL;
            *(v157 + 5) = 0x8000000225D16F30;
            v158 = v314;
            *(v157 + 6) = 0xD000000000000028;
            *(v157 + 7) = v158;
            v159 = v313;
            *(v157 + 8) = 0xD000000000000034;
            *(v157 + 9) = v159;
            *(v157 + 10) = 289;
            *v146 = v150;
            *(v146 + 8) = v154;
            *(v146 + 16) = 0xD00000000000002FLL;
            *(v146 + 24) = 0x8000000225D16F30;
            *(v146 + 32) = v153;
            *(v146 + 40) = 0;
            swift_willThrow();
            v83 = v303;
            goto LABEL_38;
          }

          goto LABEL_26;
        }

        LODWORD(v139) = HIDWORD(result) - result;
        if (__OFSUB__(HIDWORD(result), result))
        {
          __break(1u);
          goto LABEL_129;
        }

        v139 = v139;
        goto LABEL_67;
      }
    }
  }

  else
  {
    v59 = sub_2259EDAD0(0, 0xE000000000000000);
    v61 = 15;
    if ((v60 & 1) == 0)
    {
      v61 = v59;
    }

    v311 = v61;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v62 = off_28105B918;
  v63 = *(*off_28105B918 + *v30 + 16);
  v64 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v64));
  (*(v314 + 16))(v23, &v62[v63], v313);
  os_unfair_lock_unlock(&v62[v64]);
  v65 = sub_225CCD934();
  v66 = sub_225CCED04();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_2259A7000, v65, v66, "nonce is not present for SEP based identity key generation", v67, 2u);
    MEMORY[0x22AA6F950](v67, -1, -1);
  }

  (*(v314 + 8))(v23, v313);
  v48 = 0;
  if (!a4)
  {
    v68 = 0xF000000000000000;
    goto LABEL_33;
  }

  v68 = 0xF000000000000000;
LABEL_26:
  if (*(a4 + 16))
  {
    v69 = sub_2259F1BAC(4u);
    if (v70)
    {
      v71 = (*(a4 + 56) + 16 * v69);
      v73 = *v71;
      v72 = v71[1];

      if (v73 == 1702195828 && v72 == 0xE400000000000000)
      {

        goto LABEL_34;
      }
    }
  }

LABEL_33:
  v74 = sub_225CCF934();

  if (v74)
  {
LABEL_34:
    LOBYTE(v315) = 1;
    v75 = sub_2259F7FB0(a3, a5 & 1, &v315, 0, 0);
    if (!v6)
    {
      v76 = v75;
      v305 = 0;
      v303 = v48;
      v77 = *(v308 + 3);
      v78 = *(v308 + 4);
      __swift_project_boxed_opaque_existential_1(v308, v77);
      v79 = *(v78 + 80);
      v80 = v76;
      v81 = v79(v77, v78) ^ 1;
      goto LABEL_40;
    }

LABEL_37:
    v83 = v48;
LABEL_38:
    sub_2259B97A8(v83, v68);
    return v48;
  }

  LOBYTE(v315) = 0;
  v82 = sub_2259F7FB0(a3, a5 & 1, &v315, 0, 0);
  if (v6)
  {
    goto LABEL_37;
  }

  v305 = 0;
  v303 = v48;
  v80 = v82;
  v81 = 0;
LABEL_40:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF88);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_225CD73C0;
  v296 = *MEMORY[0x277D048A0];
  *(v84 + 32) = sub_225CCE474();
  *(v84 + 40) = v85;
  result = SecAccessControlCopyData();
  if (result)
  {
    v86 = result;
    v87 = sub_225CCCFA4();
    v89 = v88;

    v308 = v80;
    *(v84 + 72) = MEMORY[0x277CC9318];
    *(v84 + 48) = v87;
    *(v84 + 56) = v89;
    v90 = sub_225CCE474();
    v91 = MEMORY[0x277D83B88];
    *(v84 + 80) = v90;
    *(v84 + 88) = v92;
    *(v84 + 120) = v91;
    *(v84 + 96) = v311;
    *(v84 + 128) = sub_225CCE474();
    *(v84 + 136) = v93;
    *(v84 + 168) = v91;
    *(v84 + 144) = 0;
    *(v84 + 176) = sub_225CCE474();
    *(v84 + 184) = v94;
    *(v84 + 216) = MEMORY[0x277D839B0];
    *(v84 + 192) = v81 & 1;
    v300 = *MEMORY[0x277D04928];
    *(v84 + 224) = sub_225CCE474();
    *(v84 + 232) = v95;
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_225CD73D0;
    *(v97 + 32) = sub_225CCE474();
    *(v97 + 40) = v98;
    *(v97 + 48) = sub_225CCE474();
    *(v97 + 56) = v99;
    *(v97 + 64) = sub_225CCE474();
    *(v97 + 72) = v100;
    *(v97 + 80) = sub_225CCE474();
    *(v97 + 88) = v101;
    *(v97 + 96) = sub_225CCE474();
    *(v97 + 104) = v102;
    *(v97 + 112) = sub_225CCE474();
    *(v97 + 120) = v103;
    v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
    *(v84 + 264) = v299;
    *(v84 + 240) = v97;
    v301 = sub_225B2CD9C(v84);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF90);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v311 = v68;
    v298 = v96;
    if (a4 && *(a4 + 16) && (v104 = sub_2259F1BAC(5u), (v105 & 1) != 0) && ((v106 = (*(a4 + 56) + 16 * v104), *v106 == 1702195828) && v106[1] == 0xE400000000000000 || (sub_225CCF934() & 1) != 0))
    {
      v107 = v313;
      v108 = v314;
      v109 = MEMORY[0x277D841D0];
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v110 = off_28105B918;
      v111 = *(*off_28105B918 + *v109 + 16);
      v112 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v112));
      v113 = v304;
      v297 = *(v108 + 16);
      v297(v304, &v110[v111], v107);
      os_unfair_lock_unlock(&v110[v112]);
      v114 = v312;

      v115 = sub_225CCD934();
      v116 = sub_225CCED04();

      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *&v315 = v118;
        *v117 = 136315138;
        *(v117 + 4) = sub_2259BE198(v309, v114, &v315);
        _os_log_impl(&dword_2259A7000, v115, v116, "Allowing BAA key reuse for label %s", v117, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v118);
        MEMORY[0x22AA6F950](v118, -1, -1);
        MEMORY[0x22AA6F950](v117, -1, -1);

        v119 = *(v108 + 8);
        v119(v113, v313);
      }

      else
      {

        v119 = *(v108 + 8);
        v119(v113, v107);
      }

      v160 = sub_225CCE474();
      v162 = v161;
      v317 = MEMORY[0x277D83B88];
      *&v315 = 1;
      sub_2259B9624(&v315, &v321);
      v163 = v301;
      v164 = swift_isUniquelyReferenced_nonNull_native();
      v323 = v163;
      v165 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
      sub_225C2BC74(*v165, v160, v162, v164, &v323);

      __swift_destroy_boxed_opaque_existential_0(&v321);
      v48 = v323;
    }

    else
    {
      v120 = v313;
      v121 = v314;
      v122 = MEMORY[0x277D841D0];
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v110 = off_28105B918;
      v123 = *(*off_28105B918 + *v122 + 16);
      v124 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v124));
      v125 = v310;
      v297 = *(v121 + 16);
      v297(v310, &v110[v123], v120);
      os_unfair_lock_unlock(&v110[v124]);
      v126 = v312;

      v127 = sub_225CCD934();
      v128 = sub_225CCED04();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = v120;
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        *&v315 = v131;
        *v130 = 136315138;
        *(v130 + 4) = sub_2259BE198(v309, v126, &v315);
        _os_log_impl(&dword_2259A7000, v127, v128, "Not allowing BAA key reuse for label %s", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v131);
        MEMORY[0x22AA6F950](v131, -1, -1);
        MEMORY[0x22AA6F950](v130, -1, -1);

        v119 = *(v314 + 8);
        v119(v125, v129);
      }

      else
      {

        v119 = *(v121 + 8);
        v119(v125, v120);
      }

      v132 = sub_225CCE474();
      v134 = v133;
      v317 = MEMORY[0x277D83B88];
      *&v315 = 1;
      sub_2259B9624(&v315, &v321);
      v135 = v301;
      v136 = swift_isUniquelyReferenced_nonNull_native();
      v323 = v135;
      v137 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
      sub_225C2BC74(*v137, v132, v134, v136, &v323);

      __swift_destroy_boxed_opaque_existential_0(&v321);
      v48 = v323;
      if (!a4)
      {
        goto LABEL_89;
      }
    }

    v166 = v312;
    if (!*(a4 + 16) || (v167 = sub_2259F1BAC(6u), (v168 & 1) == 0) || ((v169 = (*(a4 + 56) + 16 * v167), *v169 != 1702195828) || v169[1] != 0xE400000000000000) && (sub_225CCF934() & 1) == 0)
    {
      v181 = v311;
      goto LABEL_90;
    }

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v170 = *(*v110 + *MEMORY[0x277D841D0] + 16);
    v171 = (*(*v110 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock(&v110[v171]);
    v172 = &v110[v170];
    v173 = v306;
    v174 = v313;
    v297(v306, v172, v313);
    os_unfair_lock_unlock(&v110[v171]);

    v175 = sub_225CCD934();
    v176 = sub_225CCED04();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = v175;
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *&v315 = v179;
      *v178 = 136315138;
      v180 = v309;
      *(v178 + 4) = sub_2259BE198(v309, v166, &v315);
      _os_log_impl(&dword_2259A7000, v177, v176, "Letting device identity manage keychain for label %s", v178, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v179);
      MEMORY[0x22AA6F950](v179, -1, -1);
      MEMORY[0x22AA6F950](v178, -1, -1);

      v119(v306, v313);
    }

    else
    {

      v119(v173, v174);
      v180 = v309;
    }

    v182 = sub_225CCE474();
    v184 = v183;
    v317 = MEMORY[0x277D837D0];
    *&v315 = v180;
    *(&v315 + 1) = v166;
    sub_2259B9624(&v315, &v321);

    v185 = swift_isUniquelyReferenced_nonNull_native();
    v323 = v48;
    v186 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
    MEMORY[0x28223BE20](v186, v186);
    v188 = (&v296 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v189 + 16))(v188);
    sub_225C2BDCC(*v188, v188[1], v182, v184, v185, &v323);

    __swift_destroy_boxed_opaque_existential_0(&v321);
    v48 = v323;
LABEL_89:
    v181 = v311;
LABEL_90:
    if (v181 >> 60 == 15)
    {
LABEL_102:
      if (a4 && *(a4 + 16) && (sub_2259F1BAC(7u), (v233 & 1) != 0))
      {

        v234 = sub_225CCCF04();
        v236 = v235;

        if (v236 >> 60 == 15)
        {
          v314 = 0x8000000225D16CF0;
          v313 = 0x8000000225D16E90;
          v237 = MEMORY[0x277D84F90];
          v238 = sub_225B2C248(MEMORY[0x277D84F90]);
          v310 = sub_2259CB5EC();
          v239 = swift_allocError();
          v241 = v240;
          v242 = sub_225CCE954();
          v243 = *(v242 - 8);
          v244 = *(v243 + 56);
          v245 = v307;
          v306 = (v243 + 56);
          v304 = v244;
          (v244)(v307, 1, 1, v242);
          v246 = *(v243 + 48);
          v309 = v242;
          v301 = v246;
          LODWORD(v242) = v246(v245, 1, v242);
          sub_2259CB640(v245, &unk_27D73B050);
          if (v242)
          {
            v247 = 122;
          }

          else
          {
            v247 = 23;
          }

          v248 = sub_225B2C374(v237);
          v249 = swift_isUniquelyReferenced_nonNull_native();
          *&v315 = v248;
          sub_225B2C4A0(v238, sub_225B2AC40, 0, v249, &v315);

          v250 = v315;
          v251 = sub_225B29AA0(0, 1, 1, v237);
          v253 = *(v251 + 2);
          v252 = *(v251 + 3);
          if (v253 >= v252 >> 1)
          {
            v251 = sub_225B29AA0((v252 > 1), v253 + 1, 1, v251);
          }

          *(v251 + 2) = v253 + 1;
          v254 = &v251[56 * v253];
          *(v254 + 4) = 0xD000000000000023;
          *(v254 + 5) = 0x8000000225D16E60;
          v255 = v314;
          *(v254 + 6) = 0xD000000000000028;
          *(v254 + 7) = v255;
          *(v254 + 8) = 0xD000000000000034;
          *(v254 + 9) = v313;
          *(v254 + 10) = 351;
          *v241 = v247;
          *(v241 + 8) = v251;
          *(v241 + 16) = 0xD000000000000023;
          *(v241 + 24) = 0x8000000225D16E60;
          *(v241 + 32) = v250;
          *(v241 + 40) = 0;
          swift_willThrow();
          v312 = 0x8000000225D16ED0;
          v256 = v239;
          v257 = v239;
          v258 = sub_225B2C248(MEMORY[0x277D84F90]);
          v259 = swift_allocError();
          v261 = v260;
          swift_getErrorValue();
          v262 = v320;
          v263 = v239;
          sub_225B21FAC(v262, &v315);

          v264 = *(&v315 + 1);
          v305 = v259;
          if (*(&v315 + 1))
          {
            v265 = v315;
            v310 = v316;
            v309 = v317;
            v266 = v318;
            v267 = v319;
          }

          else
          {
            *&v315 = v239;
            v276 = v239;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
            sub_2259D8718(0, &qword_281059A90);
            if (swift_dynamicCast())
            {
              v277 = v321;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_225CD30F0;
              *(inited + 32) = 20;
              v279 = [v277 code];
              v280 = MEMORY[0x277D83BF8];
              *(inited + 64) = MEMORY[0x277D83B88];
              *(inited + 72) = v280;
              *(inited + 40) = v279;
              v266 = sub_225B2C374(inited);
              swift_setDeallocating();
              sub_2259CB640(inited + 32, &qword_27D73B060);

              v281 = v239;
              v265 = 0;
              v310 = 0;
              v309 = 0;
              v264 = MEMORY[0x277D84F90];
            }

            else
            {
              *&v315 = v239;
              v282 = v239;
              v283 = v302;
              v284 = v309;
              v285 = swift_dynamicCast();
              (v304)(v283, v285 ^ 1u, 1, v284);
              LODWORD(v284) = v301(v283, 1, v284);
              sub_2259CB640(v283, &unk_27D73B050);
              if (v284)
              {
                v265 = 0;
              }

              else
              {
                v265 = 23;
              }

              v264 = MEMORY[0x277D84F90];
              v266 = sub_225B2C374(MEMORY[0x277D84F90]);
              v286 = v239;
              v310 = 0xD000000000000024;
              v309 = v312;
            }

            v267 = v239;
          }

          v287 = swift_isUniquelyReferenced_nonNull_native();
          *&v315 = v266;
          sub_225B2C4A0(v258, sub_225B2AC40, 0, v287, &v315);

          v288 = v315;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v264 = sub_225B29AA0(0, *(v264 + 2) + 1, 1, v264);
          }

          v290 = *(v264 + 2);
          v289 = *(v264 + 3);
          if (v290 >= v289 >> 1)
          {
            v264 = sub_225B29AA0((v289 > 1), v290 + 1, 1, v264);
          }

          *(v264 + 2) = v290 + 1;
          v291 = &v264[56 * v290];
          v292 = v312;
          *(v291 + 4) = 0xD000000000000024;
          *(v291 + 5) = v292;
          v293 = v314;
          *(v291 + 6) = 0xD000000000000028;
          *(v291 + 7) = v293;
          v294 = v313;
          *(v291 + 8) = 0xD000000000000034;
          *(v291 + 9) = v294;
          *(v291 + 10) = 355;
          *v261 = v265;
          v295 = v310;
          *(v261 + 8) = v264;
          *(v261 + 16) = v295;
          *(v261 + 24) = v309;
          *(v261 + 32) = v288;
          *(v261 + 40) = v267;
          swift_willThrow();
          sub_2259B97A8(v303, v311);
        }

        else
        {
          v268 = sub_225CCE474();
          v270 = v269;
          v317 = MEMORY[0x277CC9318];
          *&v315 = v234;
          *(&v315 + 1) = v236;
          sub_2259B9624(&v315, &v321);
          sub_2259CB710(v234, v236);
          v271 = swift_isUniquelyReferenced_nonNull_native();
          v323 = v48;
          v272 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
          MEMORY[0x28223BE20](v272, v272);
          v274 = (&v296 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v275 + 16))(v274);
          sub_225C2BFB4(*v274, v274[1], v268, v270, v271, &v323);

          sub_2259B97A8(v234, v236);
          sub_2259B97A8(v303, v181);
          __swift_destroy_boxed_opaque_existential_0(&v321);
          return v323;
        }
      }

      else
      {

        sub_2259B97A8(v303, v181);
      }

      return v48;
    }

    v190 = sub_225CCE474();
    v192 = v191;
    v317 = MEMORY[0x277CC9318];
    v193 = v303;
    *&v315 = v303;
    *(&v315 + 1) = v181;
    sub_2259B9624(&v315, &v321);
    sub_2259CB6FC(v193, v181);
    sub_2259CB710(v193, v181);
    LOBYTE(v193) = swift_isUniquelyReferenced_nonNull_native();
    v323 = v48;
    v194 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
    MEMORY[0x28223BE20](v194, v194);
    v196 = (&v296 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v197 + 16))(v196);
    sub_225C2BFB4(*v196, v196[1], v190, v192, v193, &v323);

    __swift_destroy_boxed_opaque_existential_0(&v321);
    v198 = v323;
    v199 = sub_225CCE474();
    if (*(v198 + 16))
    {
      v201 = sub_2259F18D4(v199, v200);
      v203 = v202;

      v204 = v299;
      if (v203)
      {
        sub_2259CB810(*(v198 + 56) + 32 * v201, &v315);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF98);
        if (swift_dynamicCast())
        {
          v205 = v321;
          v206 = sub_225CCE474();
          v208 = v207;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v205 = sub_225B29BC8(0, *(v205 + 2) + 1, 1, v205);
          }

          v210 = *(v205 + 2);
          v209 = *(v205 + 3);
          if (v210 >= v209 >> 1)
          {
            v205 = sub_225B29BC8((v209 > 1), v210 + 1, 1, v205);
          }

          *(v205 + 2) = v210 + 1;
          v211 = &v205[16 * v210];
          *(v211 + 4) = v206;
          *(v211 + 5) = v208;
          v212 = sub_225CCE474();
          v214 = v213;
          v317 = v299;
          *&v315 = v205;
          sub_2259B9624(&v315, &v321);
          v215 = swift_isUniquelyReferenced_nonNull_native();
          v323 = v198;
          v216 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
          MEMORY[0x28223BE20](v216, v216);
          v218 = (&v296 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v219 + 16))(v218);
          v220 = *v218;
          v221 = v212;
          v222 = v214;
          v223 = v215;
          goto LABEL_101;
        }
      }
    }

    else
    {

      v204 = v299;
    }

    v224 = sub_225CCE474();
    v226 = v225;
    v227 = swift_allocObject();
    *(v227 + 16) = xmmword_225CD30F0;
    *(v227 + 32) = sub_225CCE474();
    *(v227 + 40) = v228;
    v317 = v204;
    *&v315 = v227;
    sub_2259B9624(&v315, &v321);
    LOBYTE(v227) = swift_isUniquelyReferenced_nonNull_native();
    v323 = v198;
    v229 = __swift_mutable_project_boxed_opaque_existential_0(&v321, v322);
    MEMORY[0x28223BE20](v229, v229);
    v231 = (&v296 - ((v230 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v232 + 16))(v231);
    v220 = *v231;
    v221 = v224;
    v222 = v226;
    v223 = v227;
LABEL_101:
    sub_225C2C19C(v220, v221, v222, v223, &v323);

    sub_2259B97A8(v303, v181);
    __swift_destroy_boxed_opaque_existential_0(&v321);
    v48 = v323;
    goto LABEL_102;
  }

LABEL_129:
  __break(1u);
  return result;
}

uint64_t DeviceIdentityCommon.callDeviceIdentity(baaOptions:)(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_225CCF3F4();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_225CCF404();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v4 = sub_225CCEDA4();
  v1[18] = v4;
  v1[19] = *(v4 - 8);
  v1[20] = swift_task_alloc();
  sub_225CCDA64();
  v1[21] = swift_task_alloc();
  sub_225CCED84();
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2259FC284, 0, 0);
}

uint64_t sub_2259FC284()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  type metadata accessor for DeviceIdentityCommon.ScrtAttestationActor();
  v4 = swift_allocObject();
  v0[23] = v4;
  swift_defaultActor_initialize();
  *(v4 + 112) = 0;
  sub_2259D8718(0, &qword_28105BFA8);
  sub_225CCED74();
  sub_225CCDA54();
  (*(v2 + 104))(v1, *MEMORY[0x277D85260], v3);
  v0[24] = sub_225CCEDD4();
  sub_225CCEA54();
  v0[25] = 0;
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_2259FC494;
  v6 = v0[23];
  v7 = v0[10];

  return sub_2259FCBD4((v0 + 2), v7, v6);
}

uint64_t sub_2259FC494()
{

  return MEMORY[0x2822009F8](sub_2259FC590, 0, 0);
}

uint64_t sub_2259FC590()
{
  if (*(v0 + 33))
  {
    if (*(v0 + 33) == 1 || (v6 = *(v0 + 200), v7 = *(v0 + 24), *(v0 + 216) = *(v0 + 16), *(v0 + 224) = v7, *(v0 + 34) = *(v0 + 32), v6 == 3))
    {
      swift_willThrow();
      v8 = *(v0 + 192);

      v9 = *(v0 + 8);

      return v9();
    }

    else
    {
      v11 = *(v0 + 96);
      v10 = *(v0 + 104);
      v12 = *(v0 + 88);
      v13 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
      v15 = v14;
      sub_225CCFAF4();
      *(v0 + 64) = v13;
      *(v0 + 72) = v15;
      *(v0 + 48) = 0;
      *(v0 + 40) = 0;
      *(v0 + 56) = 1;
      v16 = sub_225A01B28(&qword_28105B8A0, MEMORY[0x277D85928]);
      sub_225CCFAD4();
      sub_225A01B28(&unk_28105B8A8, MEMORY[0x277D858F8]);
      sub_225CCF414();
      v17 = *(v11 + 8);
      *(v0 + 232) = v17;
      *(v0 + 240) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v17(v10, v12);
      v18 = swift_task_alloc();
      *(v0 + 248) = v18;
      *v18 = v0;
      v18[1] = sub_2259FC8D0;
      v20 = *(v0 + 112);
      v19 = *(v0 + 120);

      return MEMORY[0x2822008C8](v20, v0 + 40, v19, v16);
    }
  }

  else
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);

    v4 = *(v0 + 8);

    return v4(v2, v3);
  }
}

uint64_t sub_2259FC8D0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    v3 = sub_2259FCAE0;
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 232))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = sub_2259FCA28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2259FCA28()
{
  sub_225A01AC4(*(v0 + 216), *(v0 + 224), *(v0 + 34), 2);
  ++*(v0 + 200);
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_2259FC494;
  v2 = *(v0 + 184);
  v3 = *(v0 + 80);

  return sub_2259FCBD4(v0 + 16, v3, v2);
}

uint64_t sub_2259FCAE0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 34);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  sub_225A01AC4(v1, v2, v3, 2);
  v4 = *(v0 + 192);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2259FCBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v3[20] = swift_task_alloc();
  v4 = sub_225CCD954();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2259FCCD0, 0, 0);
}

uint64_t sub_2259FCCD0()
{
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  (*(v2 + 16))(v1, &v4[v5], v3);
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2259A7000, v7, v8, "creating BAA certificate with DeviceIdentity", v9, 2u);
    MEMORY[0x22AA6F950](v9, -1, -1);
  }

  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[21];
  v13 = v0[19];

  (*(v11 + 8))(v10, v12);

  return MEMORY[0x2822009F8](sub_2259FCE8C, v13, 0);
}

uint64_t sub_2259FCEB4()
{
  if (*(v0 + 242))
  {
    v1 = *(v0 + 144);
    v2 = sub_225CCE474();
    v4 = v3;
    *(v0 + 16) = 1;
    *(v0 + 40) = MEMORY[0x277D83B88];
    sub_2259B9624((v0 + 16), (v0 + 48));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = v1;
    v6 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 48, *(v0 + 72));
    sub_225C2BC74(*v6, v2, v4, isUniquelyReferenced_nonNull_native, &v13);

    __swift_destroy_boxed_opaque_existential_0(v0 + 48);
    v7 = v13;
  }

  else
  {
    v7 = *(v0 + 144);
  }

  v8 = swift_allocObject();
  *(v0 + 192) = v8;
  *(v8 + 16) = v7;
  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  v9[2] = 0x4072C00000000000;
  v9[3] = &unk_225CD7628;
  v9[4] = v8;
  v10 = swift_task_alloc();
  *(v0 + 208) = v10;
  *v10 = v0;
  v10[1] = sub_2259FD07C;

  return MEMORY[0x282200740](v0 + 104, &type metadata for DeviceIdentityResult, &type metadata for DeviceIdentityResult, 0, 0, &unk_225CD7638, v9, &type metadata for DeviceIdentityResult);
}

uint64_t sub_2259FD07C()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_2259FD224;
  }

  else
  {

    *(v2 + 224) = *(v2 + 104);
    v3 = sub_2259FD1A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2259FD1A8()
{
  v1 = *(v0 + 136);
  *v1 = *(v0 + 224);
  *(v1 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2259FD224()
{
  v27 = v0;
  v1 = *(v0 + 216);

  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 160);

    v4 = MEMORY[0x277D84F90];
    v5 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v6 = swift_allocError();
    v8 = v7;
    v9 = sub_225CCE954();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v3, 1, 1, v9);
    LODWORD(v9) = (*(v10 + 48))(v3, 1, v9);
    sub_2259CB640(v3, &unk_27D73B050);
    if (v9)
    {
      v11 = 304;
    }

    else
    {
      v11 = 23;
    }

    v12 = sub_225B2C374(v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v12;
    sub_225B2C4A0(v5, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v26);

    v14 = v26;
    v15 = sub_225B29AA0(0, 1, 1, v4);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
    }

    v18 = *(v0 + 136);
    *(v15 + 2) = v17 + 1;
    v19 = &v15[56 * v17];
    *(v19 + 4) = 0xD000000000000019;
    *(v19 + 5) = 0x8000000225D16D40;
    *(v19 + 6) = 0xD000000000000028;
    *(v19 + 7) = 0x8000000225D16CF0;
    *(v19 + 8) = 0xD00000000000001FLL;
    *(v19 + 9) = 0x8000000225D16D60;
    *(v19 + 10) = 261;
    *v8 = v11;
    *(v8 + 8) = v15;
    *(v8 + 16) = 0xD000000000000019;
    *(v8 + 24) = 0x8000000225D16D40;
    *(v8 + 32) = v14;
    *(v8 + 40) = 0;
    *v18 = v6;
    *(v18 + 8) = 0;
    *(v18 + 16) = 513;

    goto LABEL_16;
  }

  swift_getErrorValue();
  Error.dipErrorCode.getter(*(v0 + 88), (v0 + 240));
  v20 = *(v0 + 240);
  if (v20 != 236)
  {
    v21 = *(v0 + 136);
    *v21 = *(v0 + 216);
    *(v21 + 8) = 0;
    if (v20 == 237)
    {
      v22 = 513;
    }

    else
    {
      v22 = 256;
    }

    *(v21 + 16) = v22;
LABEL_16:

    v24 = *(v0 + 8);

    return v24();
  }

  v23 = *(v0 + 152);

  return MEMORY[0x2822009F8](sub_2259FD5C0, v23, 0);
}

uint64_t sub_2259FD5E8()
{
  v1 = v0[17];
  *v1 = v0[27];
  *(v1 + 8) = 0;
  *(v1 + 16) = 513;

  v2 = v0[1];

  return v2();
}

uint64_t sub_2259FD668(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2259FD700;

  return sub_2259FD884(a2);
}

uint64_t sub_2259FD700(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2259FD85C, 0, 0);
  }
}

uint64_t sub_2259FD8A4()
{
  v0[4] = sub_225BE0F54(v0[5]);
  v1 = swift_task_alloc();
  v0[6] = v1;
  *(v1 + 16) = v0 + 4;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2259FD9A8;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000022, 0x8000000225D16D80, sub_225A02D5C, v1, &type metadata for DeviceIdentityResult);
}

uint64_t sub_2259FD9A8()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2259FDB34;
  }

  else
  {

    v2 = sub_2259FDAC4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259FDAC4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_2259FDB34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DeviceIdentityCommon.deleteCertificateWithDeviceIdentity(label:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2259FDBC0, 0, 0);
}

uint64_t sub_2259FDBC0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  v4[2] = 0x4072C00000000000;
  v4[3] = &unk_225CD7418;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2259FDCF0;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;
  v8 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740](v5, v6, v7, 0, 0, &unk_225CEF170, v4, v8);
}

uint64_t sub_2259FDCF0()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2259FDE2C;
  }

  else
  {

    v2 = sub_2259FDE14;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259FDE2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259FDE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2259FDEB8, 0, 0);
}

uint64_t sub_2259FDEB8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2259FDFAC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001CLL, 0x8000000225D16C50, sub_225A02434, v3, v5);
}

uint64_t sub_2259FDFAC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2259FE0C8;
  }

  else
  {

    v2 = sub_225A02EA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2259FE0C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2259FE12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2259FE1F0;

  return DeviceIdentityCommon.fetchOrCreateCertificateWithDeviceIdentity(label:laContext:options:enableUAM:)(a1, a2, a3, a4, a5);
}

uint64_t sub_2259FE1F0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_2259FE300(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2259FE39C;

  return DeviceIdentityCommon.deleteCertificateWithDeviceIdentity(label:)(a1, a2);
}

uint64_t sub_2259FE39C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2259FE490(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02EA4;

  return DeviceIdentityCommon.callDeviceIdentity(baaOptions:)(a1);
}

void sub_2259FE524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &aBlock[-1] - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD4890;
  *(inited + 32) = sub_225CCE474();
  *(inited + 40) = v13;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_225CCE474();
  *(inited + 88) = v14;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = a2;
  *(inited + 104) = a3;

  v15 = sub_225B2C92C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B090);
  swift_arrayDestroy();
  sub_225BE11E0(v15);

  v16 = sub_225CCE2B4();

  (*(v7 + 16))(v11, a1, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v11, v6);
  v19 = (v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = a2;
  v19[1] = a3;
  aBlock[4] = sub_225A028EC;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2259FEF3C;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v20);
}

void sub_2259FE808(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v56 - v17;
  if (a3)
  {
    v64 = a4;
    v19 = a3;
    v20 = sub_2259F9114();
    v60 = "ivate.swiftinterface";
    v61 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v62 = swift_allocError();
    v22 = v21;
    swift_getErrorValue();
    v23 = v72;
    v24 = v20;
    sub_225B21FAC(v23, &v66);

    v25 = v67;
    v63 = 0x8000000225D16CD0;
    if (v67)
    {
      v59 = v66;
      v57 = v68;
      v58 = v69;
      v27 = v70;
      v26 = v71;
    }

    else
    {
      v66 = v20;
      v35 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v36 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v38 = [v36 code];
        v39 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v39;
        *(inited + 40) = v38;
        v27 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v40 = v20;
        v58 = 0;
        v57 = 0;
        v59 = 0;
        v25 = MEMORY[0x277D84F90];
      }

      else
      {
        v66 = v20;
        v41 = v20;
        v42 = sub_225CCE954();
        v43 = swift_dynamicCast();
        v44 = *(v42 - 8);
        (*(v44 + 56))(v18, v43 ^ 1u, 1, v42);
        v45 = (*(v44 + 48))(v18, 1, v42);
        sub_2259CB640(v18, &unk_27D73B050);
        if (v45)
        {
          v46 = 0;
        }

        else
        {
          v46 = 23;
        }

        v59 = v46;
        v25 = MEMORY[0x277D84F90];
        v27 = sub_225B2C374(MEMORY[0x277D84F90]);
        v47 = v20;
        v58 = 0x8000000225D16CD0;
        v57 = 0xD00000000000001ELL;
      }

      v26 = v20;
    }

    v48 = v60 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v27;
    sub_225B2C4A0(v61, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v66);

    v50 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_225B29AA0(0, *(v25 + 2) + 1, 1, v25);
    }

    v52 = *(v25 + 2);
    v51 = *(v25 + 3);
    if (v52 >= v51 >> 1)
    {
      v25 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v25);
    }

    *(v25 + 2) = v52 + 1;
    v53 = &v25[56 * v52];
    v54 = v63;
    *(v53 + 4) = 0xD00000000000001ELL;
    *(v53 + 5) = v54;
    *(v53 + 6) = 0xD000000000000028;
    *(v53 + 7) = 0x8000000225D16CF0;
    *(v53 + 8) = 0xD00000000000001CLL;
    *(v53 + 9) = v48;
    *(v53 + 10) = 382;
    *v22 = v59;
    v55 = v57;
    *(v22 + 8) = v25;
    *(v22 + 16) = v55;
    *(v22 + 24) = v58;
    *(v22 + 32) = v50;
    *(v22 + 40) = v26;
    v66 = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
    sub_225CCE924();
  }

  else
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v28 = off_28105B918;
    v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v30));
    (*(v11 + 16))(v14, &v28[v29], v10);
    os_unfair_lock_unlock(&v28[v30]);

    v31 = sub_225CCD934();
    v32 = sub_225CCED04();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v66 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2259BE198(a5, a6, &v66);
      _os_log_impl(&dword_2259A7000, v31, v32, "Device Identity deleted certificate %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AA6F950](v34, -1, -1);
      MEMORY[0x22AA6F950](v33, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10);
    sub_225CCE934();
  }
}

uint64_t sub_2259FEF3C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_225CCE814();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void sub_2259FEFF0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v30[-v6];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78);
  v8 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v9);
  v11 = &v30[-v10];
  v12 = sub_225CCE474();
  v14 = *a2;
  if (*(*a2 + 16))
  {
    v32 = v7;
    v33 = a1;
    v15 = sub_2259F18D4(v12, v13);
    v17 = v16;
    a1 = v33;

    if (v17)
    {
      sub_2259CB810(*(v14 + 56) + 32 * v15, aBlock);
      if (swift_dynamicCast())
      {
        v18 = v35;
        v19 = v36;
        v31 = sub_225CCE474();
        v21 = v20;
        v28 = sub_2259F5078();
        type metadata accessor for SecAccessControl(0);
        v38 = v29;
        aBlock[0] = v28;
        sub_225A051BC(aBlock, v31, v21);
        sub_2259BEF00(v18, v19);
        a1 = v33;
      }
    }
  }

  else
  {
  }

  sub_225BE11E0(v22);

  v23 = sub_225CCE2B4();

  v24 = v34;
  (*(v8 + 16))(v11, a1, v34);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v11, v24);
  v39 = sub_225A02D64;
  v40 = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2259FEF3C;
  v38 = &block_descriptor_90;
  v27 = _Block_copy(aBlock);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v27);
}

void sub_2259FF7AC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v103 - v14;
  v16 = sub_225CCD954();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a4;
  if (a3)
  {
    v105 = v15;
    v21 = a3;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v22 = off_28105B918;
    v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v24 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v24));
    (*(v17 + 16))(v20, &v22[v23], v16);
    os_unfair_lock_unlock(&v22[v24]);
    v25 = a3;
    v26 = sub_225CCD934();
    v27 = sub_225CCED14();

    v28 = os_log_type_enabled(v26, v27);
    v108 = a3;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v110 = v30;
      *v29 = 136446210;
      v31 = sub_225CCCCB4();
      v32 = [v31 debugDescription];

      v33 = sub_225CCE474();
      v35 = v34;

      v36 = sub_2259BE198(v33, v35, &v110);

      *(v29 + 4) = v36;
      _os_log_impl(&dword_2259A7000, v26, v27, "Device Identity Error: %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA6F950](v30, -1, -1);
      MEMORY[0x22AA6F950](v29, -1, -1);
    }

    (*(v17 + 8))(v20, v16);
    v37 = 0x8000000225D16E40;
    v38 = sub_2259F9114();
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v106 = swift_allocError();
    v41 = v40;
    swift_getErrorValue();
    v42 = v116;
    v43 = v38;
    sub_225B21FAC(v42, &v110);

    v44 = v111;
    v107 = 0x8000000225D16E40;
    if (v111)
    {
      v105 = v110;
      v37 = v113;
      v104 = v112;
      v45 = v114;
      v46 = v115;
    }

    else
    {
      v110 = v38;
      v52 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259D8718(0, &qword_281059A90);
      if (swift_dynamicCast())
      {
        v53 = v117;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v55 = [v53 code];
        v56 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v56;
        *(inited + 40) = v55;
        v45 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v57 = v38;
        v37 = 0;
        v104 = 0;
        v105 = 0;
        v44 = MEMORY[0x277D84F90];
      }

      else
      {
        v110 = v38;
        v89 = v38;
        v90 = sub_225CCE954();
        v91 = v105;
        v92 = swift_dynamicCast();
        v93 = *(v90 - 8);
        (*(v93 + 56))(v91, v92 ^ 1u, 1, v90);
        LODWORD(v90) = (*(v93 + 48))(v91, 1, v90);
        sub_2259CB640(v91, &unk_27D73B050);
        if (v90)
        {
          v94 = 0;
        }

        else
        {
          v94 = 23;
        }

        v105 = v94;
        v44 = MEMORY[0x277D84F90];
        v45 = sub_225B2C374(MEMORY[0x277D84F90]);
        v95 = v38;
        v104 = 0xD00000000000001ELL;
      }

      v46 = v38;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v45;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v110);

    v97 = v110;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_225B29AA0(0, *(v44 + 2) + 1, 1, v44);
    }

    v99 = *(v44 + 2);
    v98 = *(v44 + 3);
    if (v99 >= v98 >> 1)
    {
      v44 = sub_225B29AA0((v98 > 1), v99 + 1, 1, v44);
    }

    *(v44 + 2) = v99 + 1;
    v100 = &v44[56 * v99];
    v101 = v107;
    *(v100 + 4) = 0xD00000000000001ELL;
    *(v100 + 5) = v101;
    *(v100 + 6) = 0xD000000000000028;
    *(v100 + 7) = 0x8000000225D16CF0;
    *(v100 + 8) = 0xD000000000000022;
    *(v100 + 9) = 0x8000000225D16D80;
    *(v100 + 10) = 413;
    *v41 = v105;
    v102 = v104;
    *(v41 + 8) = v44;
    *(v41 + 16) = v102;
    *(v41 + 24) = v37;
    *(v41 + 32) = v97;
    *(v41 + 40) = v46;
    v110 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78);
    sub_225CCE924();
  }

  else if (a1)
  {
    if (a2 && *(a2 + 16) == 2)
    {
      sub_2259CB810(a2 + 32, &v110);
      type metadata accessor for SecCertificate(0);
      v47 = a1;
      swift_dynamicCast();
      v48 = v117;
      sub_2259CB810(a2 + 64, &v110);
      swift_dynamicCast();
      v49 = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF80);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_225CD73E0;
      *(v50 + 32) = v48;
      *(v50 + 40) = v49;
      v110 = v47;
      v111 = v50;
      v51 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78);
      sub_225CCE934();
      releaseCFObject(v51);
    }

    else
    {
      v108 = 0x8000000225D16CF0;
      v58 = a1;
      v59 = MEMORY[0x277D84F90];
      v60 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v61 = swift_allocError();
      v63 = v62;
      v64 = sub_225CCE954();
      v65 = *(v64 - 8);
      (*(v65 + 56))(v12, 1, 1, v64);
      LODWORD(v64) = (*(v65 + 48))(v12, 1, v64);
      sub_2259CB640(v12, &unk_27D73B050);
      if (v64)
      {
        v66 = 235;
      }

      else
      {
        v66 = 23;
      }

      v67 = sub_225B2C374(v59);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v110 = v67;
      sub_225B2C4A0(v60, sub_225B2AC40, 0, v68, &v110);

      v69 = v110;
      v70 = sub_225B29AA0(0, 1, 1, v59);
      v72 = *(v70 + 2);
      v71 = *(v70 + 3);
      if (v72 >= v71 >> 1)
      {
        v70 = sub_225B29AA0((v71 > 1), v72 + 1, 1, v70);
      }

      *(v70 + 2) = v72 + 1;
      v73 = &v70[56 * v72];
      *(v73 + 4) = 0xD00000000000002FLL;
      *(v73 + 5) = 0x8000000225D16E10;
      *(v73 + 6) = 0xD000000000000028;
      *(v73 + 7) = v108;
      *(v73 + 8) = 0xD000000000000022;
      *(v73 + 9) = 0x8000000225D16D80;
      *(v73 + 10) = 429;
      *v63 = v66;
      *(v63 + 8) = v70;
      *(v63 + 16) = 0xD00000000000002FLL;
      *(v63 + 24) = 0x8000000225D16E10;
      *(v63 + 32) = v69;
      *(v63 + 40) = 0;
      v110 = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78);
      sub_225CCE924();
      releaseCFObject(v58);
    }
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
    v75 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v76 = swift_allocError();
    v78 = v77;
    v79 = sub_225CCE954();
    v80 = *(v79 - 8);
    (*(v80 + 56))(v12, 1, 1, v79);
    LODWORD(v79) = (*(v80 + 48))(v12, 1, v79);
    sub_2259CB640(v12, &unk_27D73B050);
    if (v79)
    {
      v81 = 234;
    }

    else
    {
      v81 = 23;
    }

    v82 = sub_225B2C374(v74);
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v82;
    sub_225B2C4A0(v75, sub_225B2AC40, 0, v83, &v110);

    v84 = v110;
    v85 = sub_225B29AA0(0, 1, 1, v74);
    v87 = *(v85 + 2);
    v86 = *(v85 + 3);
    if (v87 >= v86 >> 1)
    {
      v85 = sub_225B29AA0((v86 > 1), v87 + 1, 1, v85);
    }

    *(v85 + 2) = v87 + 1;
    v88 = &v85[56 * v87];
    *(v88 + 4) = 0xD00000000000002ALL;
    *(v88 + 5) = 0x8000000225D16DE0;
    *(v88 + 6) = 0xD000000000000028;
    *(v88 + 7) = 0x8000000225D16CF0;
    *(v88 + 8) = 0xD000000000000022;
    *(v88 + 9) = 0x8000000225D16D80;
    *(v88 + 10) = 418;
    *v78 = v81;
    *(v78 + 8) = v85;
    *(v78 + 16) = 0xD00000000000002ALL;
    *(v78 + 24) = 0x8000000225D16DE0;
    *(v78 + 32) = v84;
    *(v78 + 40) = 0;
    v110 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78);
    sub_225CCE924();
  }
}

uint64_t sub_225A00440()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_225A0047C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 48) = a1;
  *(v5 + 40) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A00520, 0, 0);
}

uint64_t sub_225A00520()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[6];
  v5 = sub_225CCE994();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_225A0130C(v1, &unk_225CD75D0, v7);
  sub_2259CB640(v1, &qword_27D73FE00);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v2;

  sub_225A0130C(v1, &unk_225CD75E0, v8);
  sub_2259CB640(v1, &qword_27D73FE00);
  v9 = swift_task_alloc();
  v0[10] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF68);
  *v9 = v0;
  v9[1] = sub_225A00730;

  return MEMORY[0x2822004C0](v0 + 2, v10);
}

uint64_t sub_225A00730()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_225A0096C;
  }

  else
  {
    *(v2 + 96) = *(v2 + 16);
    *(v2 + 25) = *(v2 + 24);
    v3 = sub_225A00854;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225A00854()
{
  v1 = *(v0 + 25);
  if (v1 == 255)
  {
    sub_225A02370();
    v2 = swift_allocError();
    LOBYTE(v1) = 1;
  }

  else
  {
    v2 = *(v0 + 96);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCEA84();
  if (v1)
  {
    *(v0 + 32) = v2;
    swift_willThrowTypedImpl();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_225A00988(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 64) = a2;
  *(v4 + 72) = a3;
  *(v4 + 56) = a4;
  *(v4 + 48) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A00A2C, 0, 0);
}

uint64_t sub_225A00A2C()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[7];
  v5 = sub_225CCE994();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  sub_225A0130C(v1, &unk_225CD7650, v7);
  sub_2259CB640(v1, &qword_27D73FE00);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v3;
  v8[5] = v2;

  sub_225A0130C(v1, &unk_225CD7660, v8);
  sub_2259CB640(v1, &qword_27D73FE00);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF70);
  *v9 = v0;
  v9[1] = sub_225A00C34;

  return MEMORY[0x2822004C0](v0 + 2, v10);
}

uint64_t sub_225A00C34()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_225A00EAC;
  }

  else
  {
    *(v2 + 104) = *(v2 + 16);
    *(v2 + 33) = *(v2 + 32);
    v3 = sub_225A00D58;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225A00D58()
{
  v1 = *(v0 + 33);
  if (v1 == 255)
  {
    sub_225A02370();
    v3 = swift_allocError();
    v2 = 0;
    LOBYTE(v1) = 1;
  }

  else
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
  sub_225CCEA84();
  if (v1)
  {
    *(v0 + 40) = v3;
    swift_willThrowTypedImpl();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6(v3, v2);
  }
}

uint64_t sub_225A00EC8(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_225CCF404();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225A00F88, 0, 0);
}

uint64_t sub_225A00F88()
{
  v1 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
  v3 = v2;
  sub_225CCFAF4();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_225A01064;

  return sub_225A015E8(v1, v3, 0, 0, 1);
}

uint64_t sub_225A01064()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_225A0126C;
  }

  else
  {
    v5 = sub_225A011D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225A011D4()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A0126C()
{
  sub_225A02370();
  swift_allocError();
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_225A0130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v19 - v9;
  sub_225A023C4(a1, v19 - v9);
  v11 = sub_225CCE994();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2259CB640(v10, &qword_27D73FE00);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_225CCE904();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_225CCE984();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_225A014F0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_225A02E94;

  return v8(a1);
}

uint64_t sub_225A015E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_225CCF3F4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_225A016E8, 0, 0);
}

uint64_t sub_225A016E8()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_225CCF404();
  v5 = sub_225A01B28(&qword_28105B8A0, MEMORY[0x277D85928]);
  sub_225CCFAD4();
  sub_225A01B28(&unk_28105B8A8, MEMORY[0x277D858F8]);
  sub_225CCF414();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_225A01878;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_225A01878()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A01A34, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_225A01A34()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_225A01AC4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_225A01B28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225A01B70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2259FE39C;

  return sub_2259FDE98(a1, v5, v4);
}

unint64_t sub_225A01C20()
{
  result = qword_27D73AF60;
  if (!qword_27D73AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AF60);
  }

  return result;
}

uint64_t dispatch thunk of DeviceIdentityCommonProtocol.fetchOrCreateCertificateWithDeviceIdentity(label:laContext:options:enableUAM:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_225A01DDC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_225A01DDC(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of DeviceIdentityCommonProtocol.deleteCertificateWithDeviceIdentity(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_225A02E94;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DeviceIdentityCommonProtocol.callDeviceIdentity(baaOptions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A02EAC;

  return v9(a1, a2, a3);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_225A02154(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225A0219C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225A021F4()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_225A02E94;

  return sub_225A00EC8(v2);
}

uint64_t sub_225A022B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225A014F0(a1, v4, v5, v6);
}

unint64_t sub_225A02370()
{
  result = qword_28105B6D0;
  if (!qword_28105B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6D0);
  }

  return result;
}

uint64_t sub_225A023C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A0243C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_225A024F4;

  return sub_225A00988(a2, a3, a4, a5);
}

uint64_t sub_225A024F4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_225A02610(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_225A02E90;

  return sub_225A00EC8(a2);
}

uint64_t sub_225A026A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = sub_225A0279C;

  return v7(v4 + 16);
}

uint64_t sub_225A0279C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_225A028D4;
  }

  else
  {
    v2 = sub_225A028B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_225A028EC(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  sub_2259FE808(a1, a2, a3, v3 + v8, v10, v11);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225A029C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_2259FD668(a1, v4);
}

uint64_t sub_225A02A68(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = *(v2 + 3);
  v7 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_225A02E94;

  return sub_225A0243C(a1, a2, v8, v7, v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_225A02B88(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_225A02E94;

  return sub_225A02610(a1, v4);
}

uint64_t objectdestroy_45Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_225A02C90(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_225A02E94;

  return sub_225A026A8(a1, v4, v5, v6);
}

void sub_225A02D64(void *a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF78) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  sub_2259FF7AC(a1, a2, a3, v8);
}

uint64_t sub_225A02DF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_225A02E40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t DeviceIdentityKey.init(key:certificates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t DeviceIdentityOptions.aclData.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t DeviceIdentityOptions.init(validityMinutes:isDecryptionKey:aclData:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 9) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  return result;
}

uint64_t DeviceIdentityKeystore.fetchOrCreateCertificate(label:options:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = a3;
  *(v4 + 160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v4 + 184) = swift_task_alloc();
  v6 = a4[1];
  *(v4 + 192) = *a4;
  *(v4 + 208) = v6;

  return MEMORY[0x2822009F8](sub_225A03008, 0, 0);
}

uint64_t sub_225A03008()
{
  v1 = *(v0 + 201) << 8;
  v2 = sub_225B2CECC(MEMORY[0x277D84F90]);
  if (v1 != 512)
  {
    v3 = *(v0 + 208);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    if (v5)
    {
      sub_2259CB6FC(v3, v4);
      if ((v5 & 0x100) == 0)
      {
LABEL_7:
        v12 = *(v0 + 208);
        v11 = *(v0 + 216);
        v14 = *(v0 + 192);
        v13 = *(v0 + 200);
        if (v11 >> 60 == 15)
        {
          sub_225A05070(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));
        }

        else
        {
          sub_2259CB6FC(*(v0 + 208), *(v0 + 216));
          v15 = sub_225CCCF84();
          v17 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_225A04090(v15, v17, 7, isUniquelyReferenced_nonNull_native);
          sub_225A05070(v14, v13, v12, v11);
          sub_225A05070(v14, v13, v12, v11);
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(v0 + 152) = *(v0 + 192);
      sub_2259CB6FC(v3, v4);
      v6 = sub_225CCF824();
      v8 = v7;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      sub_225A04090(v6, v8, 1, v9);
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_7;
      }
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_225A04090(1702195828, 0xE400000000000000, 4, v10);
    goto LABEL_7;
  }

LABEL_10:
  v19 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A04090(1702195828, 0xE400000000000000, 5, v19);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_225A04090(1702195828, 0xE400000000000000, 6, v20);
  v21 = v2;
  *(v0 + 224) = v2;
  v22 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  *(v0 + 232) = v22;
  v23 = swift_task_alloc();
  *(v0 + 240) = v23;
  *v23 = v0;
  v23[1] = sub_225A032A0;
  v25 = *(v0 + 168);
  v24 = *(v0 + 176);

  return sub_2259F8828(v25, v24, v22, v21, 0);
}

uint64_t sub_225A032A0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 248) = v2;

  if (v2)
  {
    v7 = sub_225A0346C;
  }

  else
  {

    *(v6 + 256) = a2;
    *(v6 + 264) = a1;
    v7 = sub_225A033DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_225A033DC()
{
  v1 = *(v0 + 160);
  v4 = *(v0 + 256);

  *v1 = vextq_s8(v4, v4, 8uLL);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225A0346C()
{
  v44 = v0;
  v1 = v0[31];
  v2 = v0[29];

  v3 = v1;
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  swift_getErrorValue();
  v7 = v0[13];
  v8 = v1;
  sub_225B21FAC(v7, &v38);

  v9 = v39;
  if (v39)
  {
    v10 = v40;
    v36 = v41;
    v37 = v38;
    v11 = v42;
    v1 = v43;
  }

  else
  {
    v12 = v0[31];
    v0[16] = v12;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    v14 = swift_dynamicCast();
    v15 = v0[31];
    if (v14)
    {
      v16 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v18 = [v16 code];
      v19 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v19;
      *(inited + 40) = v18;
      v11 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v20 = v15;
      v36 = 0;
      v37 = 0;
      v10 = 0;
      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      v21 = v0[23];
      v0[18] = v15;
      v22 = v15;
      v23 = sub_225CCE954();
      v24 = swift_dynamicCast();
      v25 = *(v23 - 8);
      (*(v25 + 56))(v21, v24 ^ 1u, 1, v23);
      LODWORD(v25) = (*(v25 + 48))(v21, 1, v23);
      sub_2259CB640(v21, &unk_27D73B050);
      if (v25)
      {
        v26 = 0;
      }

      else
      {
        v26 = 23;
      }

      v37 = v26;
      v9 = MEMORY[0x277D84F90];
      v11 = sub_225B2C374(MEMORY[0x277D84F90]);
      v27 = v15;
      v36 = 0;
      v10 = 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v11;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v38);

  v29 = v38;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_225B29AA0(0, *(v9 + 2) + 1, 1, v9);
  }

  v31 = *(v9 + 2);
  v30 = *(v9 + 3);
  if (v31 >= v30 >> 1)
  {
    v9 = sub_225B29AA0((v30 > 1), v31 + 1, 1, v9);
  }

  v32 = v0[31];

  *(v9 + 2) = v31 + 1;
  v33 = &v9[56 * v31];
  *(v33 + 4) = 0;
  *(v33 + 5) = 0;
  *(v33 + 6) = 0xD00000000000002ALL;
  *(v33 + 7) = 0x8000000225D16FA0;
  *(v33 + 8) = 0xD000000000000028;
  *(v33 + 9) = 0x8000000225D16FD0;
  *(v33 + 10) = 91;
  *v6 = v37;
  *(v6 + 8) = v9;
  *(v6 + 16) = v10;
  *(v6 + 24) = v36;
  *(v6 + 32) = v29;
  *(v6 + 40) = v1;
  swift_willThrow();

  v34 = v0[1];

  return v34();
}

uint64_t DeviceIdentityKeystore.deleteKeysAndCertificates(label:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  *(v2 + 152) = swift_task_alloc();
  v5 = swift_task_alloc();
  *(v2 + 160) = v5;
  *v5 = v2;
  v5[1] = sub_225A0396C;

  return sub_2259F8D34(a1, a2);
}

uint64_t sub_225A0396C()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225A03AA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225A03AA8()
{
  v43 = v0;
  v1 = v0[21];
  v2 = v1;
  v3 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v5 = v4;
  swift_getErrorValue();
  v6 = v0[13];
  v7 = v1;
  sub_225B21FAC(v6, &v37);

  v8 = v38;
  if (v38)
  {
    v9 = v39;
    v35 = v40;
    v36 = v37;
    v10 = v41;
    v1 = v42;
  }

  else
  {
    v11 = v0[21];
    v0[16] = v11;
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    v13 = swift_dynamicCast();
    v14 = v0[21];
    if (v13)
    {
      v15 = v0[17];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v17 = [v15 code];
      v18 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v18;
      *(inited + 40) = v17;
      v10 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v19 = v14;
      v35 = 0;
      v36 = 0;
      v9 = 0;
      v8 = MEMORY[0x277D84F90];
    }

    else
    {
      v20 = v0[19];
      v0[18] = v14;
      v21 = v14;
      v22 = sub_225CCE954();
      v23 = swift_dynamicCast();
      v24 = *(v22 - 8);
      (*(v24 + 56))(v20, v23 ^ 1u, 1, v22);
      LODWORD(v24) = (*(v24 + 48))(v20, 1, v22);
      sub_2259CB640(v20, &unk_27D73B050);
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = 23;
      }

      v36 = v25;
      v8 = MEMORY[0x277D84F90];
      v10 = sub_225B2C374(MEMORY[0x277D84F90]);
      v26 = v14;
      v35 = 0;
      v9 = 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v10;
  sub_225B2C4A0(v3, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v37);

  v28 = v37;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_225B29AA0(0, *(v8 + 2) + 1, 1, v8);
  }

  v30 = *(v8 + 2);
  v29 = *(v8 + 3);
  if (v30 >= v29 >> 1)
  {
    v8 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v8);
  }

  v31 = v0[21];

  *(v8 + 2) = v30 + 1;
  v32 = &v8[56 * v30];
  *(v32 + 4) = 0;
  *(v32 + 5) = 0;
  *(v32 + 6) = 0xD00000000000002ALL;
  *(v32 + 7) = 0x8000000225D16FA0;
  *(v32 + 8) = 0xD000000000000021;
  *(v32 + 9) = 0x8000000225D17000;
  *(v32 + 10) = 100;
  *v5 = v36;
  *(v5 + 8) = v8;
  *(v5 + 16) = v9;
  *(v5 + 24) = v35;
  *(v5 + 32) = v28;
  *(v5 + 40) = v1;
  swift_willThrow();

  v33 = v0[1];

  return v33();
}

uint64_t sub_225A03EE0(char a1, uint64_t a2)
{
  v3 = *(*v2 + 24);
  if (v3 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v3 < a2)
    {
      v4 = a2;
      v5 = 0;
      goto LABEL_9;
    }

    sub_225A45624();
    return 0;
  }

  v4 = a2;
  v5 = 1;
LABEL_9:
  sub_225A42B40(v4, v5);
  return 1;
}

_OWORD *sub_225A03F40(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2259F18D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_225A43EF0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_225A404FC(v16, a4 & 1);
    v11 = sub_2259F18D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_2259B9624(a1, v22);
  }

  else
  {
    sub_225A9F748(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_225A04090(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2259F1BAC(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_225A440E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_225A40810(v16, a4 & 1);
    v11 = sub_2259F1BAC(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_225A9F7B4(v11, a3, a1, a2, v21);
  }
}

_OWORD *sub_225A041C8(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_225CCF454();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20]();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2259F1C5C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_225A44248();
      goto LABEL_7;
    }

    sub_225A40AB0(v17, a3 & 1);
    v23 = sub_2259F1C5C(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_225A9F7FC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_0(v21);

  return sub_2259B9624(a1, v21);
}

uint64_t sub_225A043A0(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2259F19CC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_225A43D70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_225A3FEA4(v14, a3 & 1);
    v9 = sub_2259F19CC(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 40 * v9;
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_2259A9C20(a1, v20);
  }

  else
  {

    return sub_225A9F8BC(v9, a2, a1, v19);
  }
}

unint64_t sub_225A04590(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2259F1D7C(a1, a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_225A44BD0();
      result = v17;
      goto LABEL_8;
    }

    sub_225A419E8(v14, a3 & 1);
    result = sub_2259F1D7C(a1, a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_13:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if ((v15 & 1) == 0)
  {
    sub_225A9F928(result, a1, a2, *v4);

    return sub_2259CB710(a1, a2);
  }

  return result;
}

unint64_t sub_225A046A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2259F1900(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_225A45330();
      v13 = v21;
      goto LABEL_8;
    }

    sub_225A425C0(v18, a5 & 1);
    v13 = sub_2259F1900(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *v24;
    v26 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2;
    v27 = *(v24 + 16);
    *(v24 + 16) = a3;

    return sub_2259F6140(v25, v26, v27);
  }

  else
  {

    return sub_225A9F968(v13, a4, a1, a2, a3, v23);
  }
}

_OWORD *sub_225A047EC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2259F1AA8(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_225A454A4();
      v8 = v16;
      goto LABEL_8;
    }

    sub_225A42860(v13, a3 & 1);
    v8 = sub_2259F1AA8(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return sub_2259B9624(a1, v19);
  }

  else
  {
    sub_225A9F9B8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_225A0492C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2259F18D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_225A45624();
      v11 = v19;
      goto LABEL_8;
    }

    sub_225A42B40(v16, a4 & 1);
    v11 = sub_2259F18D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_225CCFAC4();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  sub_225A9FA20(v11, a2, a3, a1, v21);
}

uint64_t sub_225A04AB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2259F18D4(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_2259F18D4(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

uint64_t sub_225A04C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2259F18D4(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_225A45904();
      v13 = v21;
      goto LABEL_8;
    }

    sub_225A43098(v18, a5 & 1);
    v13 = sub_2259F18D4(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_225A9FA68(v13, a3, a4, a1, a2, v23);
  }
}

unint64_t sub_225A04D6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2259F18D4(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_225A45BDC();
      result = v19;
      goto LABEL_8;
    }

    sub_225A435F8(v16, a4 & 1);
    result = sub_2259F18D4(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = sub_225CCFAC4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
  }

  else
  {
    sub_225A9FA20(result, a2, a3, a1, v21);
  }

  return result;
}

uint64_t sub_225A04E9C(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2259F2024(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_225A45D44();
      goto LABEL_7;
    }

    sub_225A43898(v17, a3 & 1);
    v28 = sub_2259F2024(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2259F6158(a2, v11);
      return sub_225A9FAB8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_225A05070(uint64_t a1, __int16 a2, uint64_t a3, unint64_t a4)
{
  if ((a2 & 0xFF00) != 0x200)
  {
    return sub_2259B97A8(a3, a4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225A050C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_225A05118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_225A051BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2259B9624(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_225A03F40(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_2259CB640(a1, &qword_27D73DD90);
    sub_225B2AC50(a2, a3, v9);

    return sub_2259CB640(v9, &qword_27D73DD90);
  }

  return result;
}

uint64_t sub_225A0528C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2259B9624(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_225A041C8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_225CCF454();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_2259CB640(a1, &qword_27D73DD90);
    sub_225B2ACF4(a2, v9);
    v7 = sub_225CCF454();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_2259CB640(v9, &qword_27D73DD90);
  }

  return result;
}

uint64_t sub_225A053A8(uint64_t a1, char a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_2259A9C20(a1, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    result = sub_225A043A0(v14, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
  }

  else
  {
    sub_2259CB640(a1, &qword_27D73B028);
    v7 = sub_2259F19CC(a2);
    if (v8)
    {
      v9 = v7;
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!v10)
      {
        sub_225A43D70();
        v11 = v13;
      }

      sub_2259A9C20((*(v11 + 56) + 40 * v9), v14);
      sub_225B2B474(v9, v11);
      *v3 = v11;
    }

    else
    {
      v15 = 0;
      memset(v14, 0, sizeof(v14));
    }

    return sub_2259CB640(v14, &qword_27D73B028);
  }

  return result;
}

uint64_t sub_225A054B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_225A04550(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2259F18D4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_225A44BA8();
        v14 = v16;
      }

      result = sub_225B2B9D8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_225A055AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_225A0492C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_2259F18D4(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_225A45624();
        v14 = v16;
      }

      result = sub_225B2B9D8(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_225A056A4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE20);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v16 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_2259CB640(a1, &qword_27D73FE20);
    sub_225B2AE70(a2, v8);
    sub_225A0E298(a2, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
    return sub_2259CB640(v8, &qword_27D73FE20);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_225A04E9C(v13, a2, isUniquelyReferenced_nonNull_native);
    result = sub_225A0E298(a2, type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier);
    *v2 = v17;
  }

  return result;
}

uint64_t DigitalPresentmentResponseTopics.identity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
}

uint64_t sub_225A05904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225A0598C(uint64_t a1)
{
  v2 = sub_225A05B94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225A059C8(uint64_t a1)
{
  v2 = sub_225A05B94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DigitalPresentmentResponseTopics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - v6;
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A05B94();
  v9 = *v1;
  v11 = v1[1];
  v12 = v9;

  sub_225CCFCE4();
  v14 = v11;
  v13 = v12;
  v15 = v8;
  sub_225A05BE8();
  sub_225CCF7E4();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_225A05B94()
{
  result = qword_27D73AFB8;
  if (!qword_27D73AFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFB8);
  }

  return result;
}

unint64_t sub_225A05BE8()
{
  result = qword_27D73AFC0;
  if (!qword_27D73AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFC0);
  }

  return result;
}

uint64_t DigitalPresentmentResponseTopics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225A05B94();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_225A05DB4();
    sub_225CCF6E4();
    (*(v6 + 8))(v9, v5);
    v10 = v14;
    v11 = v13[1];
    *a2 = v13[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225A05DB4()
{
  result = qword_27D73AFD0;
  if (!qword_27D73AFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFD0);
  }

  return result;
}

uint64_t DigitalPresentmentResponseCryptor.init(sessionTranscript:presentmentType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_225CCF454();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v25 = a1;
  sub_225A0DEBC(a1, a3, type metadata accessor for ISO18013SessionTranscript);
  v12 = type metadata accessor for DigitalPresentmentResponseCryptor();
  v13 = *(v12 + 20);
  v26 = a3;
  *(a3 + v13) = v11;
  sub_225CCD424();
  swift_allocObject();
  v14 = sub_225CCD414();
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_27D73D108);
  v16 = *(v7 + 16);
  v16(v10, v15, v6);
  v29 = &type metadata for ISO18013PresentmentType;
  v28[0] = v11;
  v17 = sub_225CCD404();
  sub_225A0528C(v28, v10);
  v17(v27, 0);
  v18 = *(v12 + 24);
  v24 = v12;
  v19 = v26;
  *(v26 + v18) = v14;
  sub_225CCD3A4();
  swift_allocObject();

  v20 = sub_225CCD394();
  v16(v10, v15, v6);
  v29 = &type metadata for ISO18013PresentmentType;
  v28[0] = v11;
  v21 = sub_225CCD374();
  sub_225A0528C(v28, v10);
  v21(v27, 0);

  result = sub_225A0E298(v25, type metadata accessor for ISO18013SessionTranscript);
  *(v19 + *(v24 + 28)) = v20;
  return result;
}

uint64_t type metadata accessor for DigitalPresentmentResponseCryptor()
{
  result = qword_27D73B000;
  if (!qword_27D73B000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *DigitalPresentmentResponseCryptor.encrypt(_:to:)(__int128 *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v88 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v85 - v9;
  v11 = sub_225CCDEA4();
  v89 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v86 = a1[1];
  v87 = v15;
  v16 = *(a1 + 32);
  v17.value = SecTrustRef.getLeafCertificate()().value;
  if (v17.value)
  {
    value = v17.value;
    v85[1] = v1;
    v90 = v2;
    v19 = SecCertificateCopyKey(v17.value);
    if (v19 && (v20 = v19, v21 = copyPublicKeyDataFromSecKeyPublic(_:)(v19), v23 = v22, v20, v23 >> 60 != 15))
    {
      *&v92 = v21;
      *(&v92 + 1) = v23;
      sub_2259CB710(v21, v23);
      v70 = v90;
      sub_225CCDE94();
      v26 = v70;
      if (!v70)
      {
        v92 = v87;
        v93 = v86;
        LOBYTE(v94) = v16;
        v26 = DigitalPresentmentResponseCryptor.encrypt(_:to:)(&v92, v14);
        (*(v89 + 8))(v14, v11);
        sub_2259B97A8(v21, v23);

        return v26;
      }

      sub_2259B97A8(v21, v23);
    }

    else
    {
      v89 = 0x8000000225D17080;
      v24 = MEMORY[0x277D84F90];
      v25 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v26 = swift_allocError();
      v28 = v27;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v10, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v10, 1, v29);
      sub_2259CB640(v10, &unk_27D73B050);
      if (v29)
      {
        v31 = 249;
      }

      else
      {
        v31 = 23;
      }

      v32 = sub_225B2C374(v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = v32;
      sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v92);

      v34 = v92;
      v35 = sub_225B29AA0(0, 1, 1, v24);
      v37 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v37 >= v36 >> 1)
      {
        v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
      }

      *(v35 + 2) = v37 + 1;
      v38 = &v35[56 * v37];
      *(v38 + 4) = 0xD000000000000035;
      *(v38 + 5) = 0x8000000225D170C0;
      v39 = v89;
      *(v38 + 6) = 0xD000000000000035;
      *(v38 + 7) = v39;
      strcpy(v38 + 64, "encrypt(_:to:)");
      v38[79] = -18;
      *(v38 + 10) = 66;
      *v28 = v31;
      *(v28 + 8) = v35;
      *(v28 + 16) = 0xD000000000000035;
      *(v28 + 24) = 0x8000000225D170C0;
      *(v28 + 32) = v34;
      *(v28 + 40) = 0;
      swift_willThrow();
    }
  }

  else
  {
    v90 = 0x8000000225D17080;
    v40 = MEMORY[0x277D84F90];
    v41 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v43 = v42;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v10, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v10, 1, v44);
    sub_2259CB640(v10, &unk_27D73B050);
    if (v44)
    {
      v46 = 269;
    }

    else
    {
      v46 = 23;
    }

    v47 = sub_225B2C374(v40);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v47;
    sub_225B2C4A0(v41, sub_225B2AC40, 0, v48, &v92);

    v49 = v92;
    v50 = sub_225B29AA0(0, 1, 1, v40);
    v52 = *(v50 + 2);
    v51 = *(v50 + 3);
    if (v52 >= v51 >> 1)
    {
      v50 = sub_225B29AA0((v51 > 1), v52 + 1, 1, v50);
    }

    *(v50 + 2) = v52 + 1;
    v53 = &v50[56 * v52];
    *(v53 + 4) = 0xD00000000000001CLL;
    *(v53 + 5) = 0x8000000225D17060;
    *(v53 + 6) = 0xD000000000000035;
    *(v53 + 7) = v90;
    strcpy(v53 + 64, "encrypt(_:to:)");
    v53[79] = -18;
    *(v53 + 10) = 63;
    *v43 = v46;
    *(v43 + 8) = v50;
    *(v43 + 16) = 0xD00000000000001CLL;
    *(v43 + 24) = 0x8000000225D17060;
    *(v43 + 32) = v49;
    *(v43 + 40) = 0;
    swift_willThrow();
  }

  v54 = v26;
  v89 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v55 = swift_allocError();
  v57 = v56;
  swift_getErrorValue();
  v58 = v96;
  v59 = v26;
  sub_225B21FAC(v58, &v92);

  v60 = *(&v92 + 1);
  v90 = v55;
  if (*(&v92 + 1))
  {
    v88 = v92;
    v61 = *(&v93 + 1);
    *&v87 = v93;
    v62 = v94;
    v63 = v95;
  }

  else
  {
    *&v92 = v26;
    v64 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v65 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v67 = [v65 code];
      v68 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v68;
      *(inited + 40) = v67;
      v62 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v69 = v26;
      v88 = 0;
      *&v87 = 0;
      v61 = 0;
      v60 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v92 = v26;
      v71 = v26;
      v72 = sub_225CCE954();
      v73 = v88;
      v74 = swift_dynamicCast();
      v75 = *(v72 - 8);
      (*(v75 + 56))(v73, v74 ^ 1u, 1, v72);
      LODWORD(v75) = (*(v75 + 48))(v73, 1, v72);
      sub_2259CB640(v73, &unk_27D73B050);
      if (v75)
      {
        v76 = 0;
      }

      else
      {
        v76 = 23;
      }

      v88 = v76;
      v60 = MEMORY[0x277D84F90];
      v62 = sub_225B2C374(MEMORY[0x277D84F90]);
      v77 = v26;
      *&v87 = 0;
      v61 = 0;
    }

    v63 = v26;
  }

  v78 = swift_isUniquelyReferenced_nonNull_native();
  *&v92 = v62;
  sub_225B2C4A0(v89, sub_225B2AC40, 0, v78, &v92);

  v79 = v92;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v60 = sub_225B29AA0(0, *(v60 + 2) + 1, 1, v60);
  }

  v81 = *(v60 + 2);
  v80 = *(v60 + 3);
  if (v81 >= v80 >> 1)
  {
    v60 = sub_225B29AA0((v80 > 1), v81 + 1, 1, v60);
  }

  *(v60 + 2) = v81 + 1;
  v82 = &v60[56 * v81];
  *(v82 + 4) = 0;
  *(v82 + 5) = 0;
  *(v82 + 6) = 0xD000000000000035;
  *(v82 + 7) = 0x8000000225D17080;
  strcpy(v82 + 64, "encrypt(_:to:)");
  v82[79] = -18;
  *(v82 + 10) = 72;
  *v57 = v88;
  v83 = v87;
  *(v57 + 8) = v60;
  *(v57 + 16) = v83;
  *(v57 + 24) = v61;
  *(v57 + 32) = v79;
  *(v57 + 40) = v63;
  swift_willThrow();

  return v26;
}

char *DigitalPresentmentResponseCryptor.encrypt(_:to:)(uint64_t a1, uint64_t a2)
{
  *&v135 = a2;
  v3 = sub_225CCD954();
  v136 = *(v3 - 8);
  v137 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v134 = &v127[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v133 = &v127[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v10);
  v132 = &v127[-v11];
  v142 = sub_225CCDDE4();
  v140 = *(v142 - 8);
  MEMORY[0x28223BE20](v142, v12);
  v141 = &v127[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_225CCDDC4();
  v138 = *(v14 - 8);
  *&v139 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v127[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_225CCDDD4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v127[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = type metadata accessor for HPKESuiteKwV1(0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v127[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(a1 + 16);
  v171[0] = *a1;
  v171[1] = v27;
  v28 = *(a1 + 32);
  v172 = *(a1 + 32);
  v130 = *(a1 + 16);
  v131 = v171[0];
  v29 = v143;
  v30 = sub_225A07DDC();
  if (v29)
  {
    v143 = 0;
    v32 = v29;
LABEL_24:
    v88 = "No leaf certificate on trust";
    v89 = v32;
    v90 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v175 = swift_allocError();
    v92 = v91;
    swift_getErrorValue();
    v93 = v156;
    v94 = v32;
    sub_225B21FAC(v93, &v147);

    v95 = *(&v147 + 1);
    if (*(&v147 + 1))
    {
      v96 = v32;
      v141 = v148;
      v142 = v147;
      v140 = *(&v148 + 1);
      v32 = *(&v149 + 1);
      v97 = v149;
    }

    else
    {
      *&v139 = "No leaf certificate on trust";
      *&v147 = v32;
      v98 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v99 = v144[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_225CD30F0;
        *(v100 + 32) = 20;
        v101 = [v99 code];
        v102 = MEMORY[0x277D83BF8];
        *(v100 + 64) = MEMORY[0x277D83B88];
        *(v100 + 72) = v102;
        *(v100 + 40) = v101;
        v97 = sub_225B2C374(v100);
        swift_setDeallocating();
        sub_2259CB640(v100 + 32, &qword_27D73B060);
        swift_deallocClassInstance();

        v103 = v32;
        v141 = 0;
        v142 = 0;
        v140 = 0;
        v95 = MEMORY[0x277D84F90];
        v96 = v32;
      }

      else
      {
        *&v147 = v32;
        v104 = v32;
        v105 = sub_225CCE954();
        v106 = v32;
        v107 = v133;
        v108 = swift_dynamicCast();
        v109 = *(v105 - 8);
        (*(v109 + 56))(v107, v108 ^ 1u, 1, v105);
        LODWORD(v109) = (*(v109 + 48))(v107, 1, v105);
        sub_2259CB640(v107, &unk_27D73B050);
        if (v109)
        {
          v110 = 0;
        }

        else
        {
          v110 = 23;
        }

        v142 = v110;
        v95 = MEMORY[0x277D84F90];
        v97 = sub_225B2C374(MEMORY[0x277D84F90]);
        v111 = v106;
        v140 = 0;
        v141 = 0;
        v96 = v106;
        v32 = v106;
      }

      v88 = v139;
    }

    v112 = v88 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v147 = v97;
    sub_225B2C4A0(v90, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v147);

    v114 = v147;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_225B29AA0(0, *(v95 + 2) + 1, 1, v95);
    }

    v116 = *(v95 + 2);
    v115 = *(v95 + 3);
    if (v116 >= v115 >> 1)
    {
      v95 = sub_225B29AA0((v115 > 1), v116 + 1, 1, v95);
    }

    *(v95 + 2) = v116 + 1;
    v117 = &v95[56 * v116];
    *(v117 + 4) = 0;
    *(v117 + 5) = 0;
    *(v117 + 6) = 0xD000000000000035;
    *(v117 + 7) = v112;
    strcpy(v117 + 64, "encrypt(_:to:)");
    v117[79] = -18;
    *(v117 + 10) = 101;
    v118 = v141;
    *v92 = v142;
    *(v92 + 8) = v95;
    *(v92 + 16) = v118;
    *(v92 + 24) = v140;
    *(v92 + 32) = v114;
    *(v92 + 40) = v32;
    swift_willThrow();

    return v95;
  }

  v128 = v28;
  v129 = 0;
  *v26 = &type metadata for AEADScheme_AES_128_GCM;
  *(v26 + 1) = &off_283903448;
  v143 = v23[5];
  v33 = v31;
  v34 = v30;
  (*(v19 + 104))(v22, *MEMORY[0x277CC5450], v18);
  (*(v138 + 13))(v17, *MEMORY[0x277CC5438], v139);
  (*(v140 + 13))(v141, *MEMORY[0x277CC5460], v142);
  v35 = v33;
  sub_2259CB710(v34, v33);
  sub_225CCDDA4();
  *&v26[v23[7]] = xmmword_225CD3100;
  v36 = v23[8];
  v37 = type metadata accessor for HPKEPrivateKey(0);
  (*(*(v37 - 8) + 56))(&v26[v36], 1, 1, v37);
  v38 = &v26[v23[6]];
  v142 = v34;
  v143 = v35;
  *v38 = v34;
  v38[1] = v35;
  v39 = type metadata accessor for DigitalPresentmentResponseCryptor();
  v40 = v175;
  if (!*(v175 + *(v39 + 20)))
  {
    v141 = v26;
    v175 = 0x8000000225D17080;
    v53 = MEMORY[0x277D84F90];
    v54 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v55 = swift_allocError();
    v57 = v56;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    v60 = v132;
    (*(v59 + 56))(v132, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v60, 1, v58);
    sub_2259CB640(v60, &unk_27D73B050);
    if (v58)
    {
      v61 = 721;
    }

    else
    {
      v61 = 23;
    }

    v62 = sub_225B2C374(v53);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    *&v147 = v62;
    sub_225B2C4A0(v54, sub_225B2AC40, 0, v63, &v147);

    v64 = v147;
    v65 = sub_225B29AA0(0, 1, 1, v53);
    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    if (v67 >= v66 >> 1)
    {
      v65 = sub_225B29AA0((v66 > 1), v67 + 1, 1, v65);
    }

    *(v65 + 2) = v67 + 1;
    v68 = &v65[56 * v67];
    *(v68 + 4) = 0xD000000000000042;
    *(v68 + 5) = 0x8000000225D17100;
    *(v68 + 6) = 0xD000000000000035;
    *(v68 + 7) = v175;
    strcpy(v68 + 64, "encrypt(_:to:)");
    v68[79] = -18;
    *(v68 + 10) = 89;
    *v57 = v61;
    *(v57 + 8) = v65;
    *(v57 + 16) = 0xD000000000000042;
    *(v57 + 24) = 0x8000000225D17100;
    *(v57 + 32) = v64;
    *(v57 + 40) = 0;
    v32 = v55;
    swift_willThrow();
    sub_2259BEF00(v142, v143);
    sub_225A0E298(v141, type metadata accessor for HPKESuiteKwV1);
    v143 = 0;
    goto LABEL_24;
  }

  v41 = v136;
  if (*(v175 + *(v39 + 20)) == 1)
  {
    v141 = v26;
    *&v139 = v39;
    v166[0] = v131;
    v166[1] = v130;
    v167 = v128;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v42 = off_28105B918;
    v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v44 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v44));
    v45 = *(v41 + 16);
    *&v131 = v43;
    v46 = &v42[v43];
    v47 = v134;
    v48 = v137;
    v140 = v45;
    v45(v134, v46, v137);
    v132 = v42;
    os_unfair_lock_unlock(&v42[v44]);
    MEMORY[0x28223BE20](v49, v50);
    *&v127[-16] = v40;
    *&v127[-8] = v166;
    Logger.sensitive(_:)(sub_225A0DE4C);
    v138 = *(v41 + 8);
    v138(v47, v48);
    v51 = *(v40 + *(v139 + 24));
    v145 = sub_225CCD424();
    v146 = &protocol witness table for CBOREncoder;
    v144[0] = v51;

    v26 = v141;
    v52 = v129;
    sub_225A0AB54(v166, v135, v144, &v147);
    if (v52)
    {
      sub_2259BEF00(v142, v143);
      sub_225A0E298(v26, type metadata accessor for HPKESuiteKwV1);
      __swift_destroy_boxed_opaque_existential_0(v144);
      v143 = 0;
      v32 = v52;
      goto LABEL_24;
    }

    __swift_destroy_boxed_opaque_existential_0(v144);
    v175 = 0;
    v163 = v153;
    v164 = v154;
    v165[0] = v155[0];
    *&v139 = v51;
    *(v165 + 9) = *(v155 + 9);
    v159 = v149;
    v160 = v150;
    v161 = v151;
    v162 = v152;
    v157 = v147;
    v158 = v148;
    v71 = v132;
    os_unfair_lock_lock(&v132[v44]);
    v140(v47, &v71[v131], v137);
    os_unfair_lock_unlock(&v71[v44]);
    sub_225A0DE54(&v157, &v147, &qword_27D73AFE8);
    sub_225B41E00(v47, &v157);
    sub_2259CB640(&v157, &qword_27D73AFE8);
    v138(v47, v137);
    v153 = v163;
    v154 = v164;
    v155[0] = v165[0];
    *(v155 + 9) = *(v165 + 9);
    v149 = v159;
    v150 = v160;
    v151 = v161;
    v152 = v162;
    v147 = v157;
    v148 = v158;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFE8);
    sub_2259D8B24(&qword_27D73AFF0, &qword_27D73AFE8);
    v72 = v175;
    v73 = sub_225CCD3F4();
    v75 = v72;
    if (v72)
    {
      sub_225A0E298(v26, type metadata accessor for HPKESuiteKwV1);
      sub_2259BEF00(v142, v143);
      sub_2259CB640(&v157, &qword_27D73AFE8);
LABEL_23:
      v143 = 0;
      v32 = v75;
      goto LABEL_24;
    }

    v95 = v73;
    v120 = v74;
    sub_2259CB640(&v157, &qword_27D73AFE8);
    v76 = v132;
  }

  else
  {
    v69 = *(v175 + *(v39 + 24));
    v145 = sub_225CCD424();
    v146 = &protocol witness table for CBOREncoder;
    v144[0] = v69;

    v70 = v129;
    sub_225A0BED4(v171, v135, v144, &v147);
    v175 = v70;
    if (v70)
    {
      sub_2259BEF00(v142, v143);
      sub_225A0E298(v26, type metadata accessor for HPKESuiteKwV1);
      __swift_destroy_boxed_opaque_existential_0(v144);
      v143 = 0;
      v32 = v175;
      goto LABEL_24;
    }

    v141 = v69;
    __swift_destroy_boxed_opaque_existential_0(v144);
    v169[0] = v153;
    v169[1] = v154;
    v170[0] = v155[0];
    *(v170 + 9) = *(v155 + 9);
    v168[2] = v149;
    v168[3] = v150;
    v168[4] = v151;
    v168[5] = v152;
    v168[0] = v147;
    v168[1] = v148;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v76 = off_28105B918;
    v77 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v78 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v78));
    v79 = *(v41 + 16);
    v80 = &v76[v77];
    v81 = v41;
    v82 = v134;
    v83 = v137;
    v140 = v79;
    v79(v134, v80, v137);
    os_unfair_lock_unlock(&v76[v78]);
    sub_225A0DE54(v168, &v147, &qword_27D73AFD8);
    sub_225B41E14(v82, v168);
    sub_2259CB640(v168, &qword_27D73AFD8);
    v84 = *(v81 + 8);
    v84(v82, v83);
    v173 = *(v168 + 8);
    v174 = *(v169 + 8);
    sub_225A0DD9C(&v173, &v147);
    sub_225A0DD9C(&v174, &v147);
    sub_2259CB640(v168, &qword_27D73AFD8);
    v139 = v174;
    v147 = v173;
    v148 = v174;
    v135 = v173;
    sub_225A0DDF8();
    v85 = v175;
    v86 = sub_225CCD3F4();
    v75 = v85;
    if (v85)
    {
      sub_225A0E298(v26, type metadata accessor for HPKESuiteKwV1);
      sub_2259BEF00(v142, v143);
      sub_2259BEF00(v135, *(&v135 + 1));
      sub_2259BEF00(v139, *(&v139 + 1));
      goto LABEL_23;
    }

    v95 = v86;
    v120 = v87;
    v138 = v84;
    sub_2259BEF00(v135, *(&v135 + 1));
    sub_2259BEF00(v139, *(&v139 + 1));
  }

  v175 = 0;
  v121 = v26;
  v122 = v134;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v123 = *(*v76 + *MEMORY[0x277D841D0] + 16);
  v124 = (*(*v76 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock(&v76[v124]);
  v125 = &v76[v123];
  v126 = v137;
  v140(v122, v125, v137);
  os_unfair_lock_unlock(&v76[v124]);
  sub_2259CB710(v95, v120);
  sub_225B420C4(v122, v95, v120);
  sub_2259BEF00(v95, v120);
  sub_2259BEF00(v142, v143);
  v138(v122, v126);
  sub_225A0E298(v121, type metadata accessor for HPKESuiteKwV1);
  return v95;
}

uint64_t sub_225A07DDC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v44 - v4;
  v6 = sub_225CCF454();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  v11 = *(v0 + *(type metadata accessor for DigitalPresentmentResponseCryptor() + 20));
  if (qword_27D739F68 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_27D73D108);
  (*(v7 + 16))(v10, v12, v6);
  v53 = &type metadata for ISO18013PresentmentType;
  LOBYTE(v50) = v11;
  v13 = sub_225CCD404();
  sub_225A0528C(&v50, v10);
  v13(&v57, 0);
  type metadata accessor for ISO18013SessionTranscript(0);
  sub_225A0E4A0(&qword_27D73B048, type metadata accessor for ISO18013SessionTranscript);
  v14 = sub_225CCD3F4();
  if (v1)
  {
    v48 = v15;
    v49 = v14;

    v16 = v1;
    v46 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v47 = swift_allocError();
    v18 = v17;
    swift_getErrorValue();
    v19 = v56;
    v20 = v1;
    sub_225B21FAC(v19, &v50);

    v21 = v51;
    if (v51)
    {
      v45 = v50;
      v22 = v52;
      v44 = v53;
      v24 = v54;
      v23 = v55;
    }

    else
    {
      v50 = v1;
      v27 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v28 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v30 = [v28 code];
        v31 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v31;
        *(inited + 40) = v30;
        v24 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v32 = v1;
        v44 = 0;
        v22 = 0;
        v45 = 0;
        v21 = MEMORY[0x277D84F90];
      }

      else
      {
        v50 = v1;
        v33 = v1;
        v34 = sub_225CCE954();
        v35 = swift_dynamicCast();
        v36 = *(v34 - 8);
        (*(v36 + 56))(v5, v35 ^ 1u, 1, v34);
        LODWORD(v34) = (*(v36 + 48))(v5, 1, v34);
        sub_2259CB640(v5, &unk_27D73B050);
        if (v34)
        {
          v37 = 0;
        }

        else
        {
          v37 = 23;
        }

        v45 = v37;
        v21 = MEMORY[0x277D84F90];
        v24 = sub_225B2C374(MEMORY[0x277D84F90]);
        v38 = v1;
        v44 = 0;
        v22 = 0;
      }

      v23 = v1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v24;
    sub_225B2C4A0(v46, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v50);

    v40 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_225B29AA0(0, *(v21 + 2) + 1, 1, v21);
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    if (v42 >= v41 >> 1)
    {
      v21 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v21);
    }

    *(v21 + 2) = v42 + 1;
    v43 = &v21[56 * v42];
    *(v43 + 4) = 0;
    *(v43 + 5) = 0;
    *(v43 + 6) = 0xD000000000000035;
    *(v43 + 7) = 0x8000000225D17080;
    *(v43 + 8) = 0x286F666E49746567;
    *(v43 + 9) = 0xE900000000000029;
    *(v43 + 10) = 159;
    *v18 = v45;
    *(v18 + 8) = v21;
    *(v18 + 16) = v22;
    *(v18 + 24) = v44;
    *(v18 + 32) = v40;
    *(v18 + 40) = v23;
    swift_willThrow();

    return v49;
  }

  else
  {
    v25 = v14;

    return v25;
  }
}

uint64_t sub_225A08440(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000044, 0x8000000225D17370);
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0;
}

void DigitalPresentmentResponseCryptor.decrypt(_:with:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v114 = a3;
  v101 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v100 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v99 = v97 - v12;
  v115 = sub_225CCDDE4();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v13);
  v113 = v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_225CCDDC4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v15);
  v111 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_225CCDDD4();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v17);
  v106 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for HPKEPrivateKey(0);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v19);
  v103 = v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for HPKESuiteKwV1(0);
  MEMORY[0x28223BE20](v105, v21);
  v116 = (v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_225CCD954();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v28 = off_28105B918;
  v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v30));
  (*(v24 + 16))(v27, &v28[v29], v23);
  os_unfair_lock_unlock(&v28[v30]);
  sub_2259CB710(a1, a2);
  sub_225B42A90(v27, a1, a2);
  sub_2259BEF00(a1, a2);
  (*(v24 + 8))(v27, v23);
  v31 = v117;
  v32 = sub_225A07DDC();
  if (v31)
  {
    v34 = v31;
  }

  else
  {
    v44 = v32;
    v45 = v33;
    v98 = 0;
    v97[1] = a1;
    v97[2] = a2;
    v46 = v103;
    sub_225A0DEBC(v114, v103, type metadata accessor for HPKEPrivateKey);
    v47 = v116;
    *v116 = &type metadata for AEADScheme_AES_128_GCM;
    v47[1] = &off_283903448;
    v117 = v44;
    v48 = v105;
    (*(v102 + 104))(v106, *MEMORY[0x277CC5450], v104);
    (*(v109 + 104))(v111, *MEMORY[0x277CC5438], v110);
    (*(v112 + 13))(v113, *MEMORY[0x277CC5460], v115);
    sub_2259CB710(v117, v45);
    sub_225CCDDA4();
    v49 = v48[8];
    sub_225A0DF24(v46, v47 + v49);
    v50 = v47 + v49;
    v51 = v117;
    (*(v107 + 56))(v50, 0, 1, v108);
    *(v47 + v48[7]) = xmmword_225CD4150;
    v52 = (v47 + v48[6]);
    *v52 = v51;
    v52[1] = v45;
    v53 = type metadata accessor for DigitalPresentmentResponseCryptor();
    if (*(v4 + *(v53 + 20)))
    {
      if (*(v4 + *(v53 + 20)) == 1)
      {
        v54 = v98;
        sub_225A0936C(v47, &v119);
        v55 = v54;
        if (!v54)
        {
          sub_225A0E298(v47, type metadata accessor for HPKESuiteKwV1);
          sub_2259BEF00(v51, v45);
          v56 = v121;
          v57 = v120;
          v58 = v101;
          *v101 = v119;
          v58[1] = v57;
          *(v58 + 32) = v56;
          return;
        }
      }

      else
      {
        v96 = v98;
        sub_225A09650(v47, v101);
        v55 = v96;
        if (!v96)
        {
          sub_225A0E298(v47, type metadata accessor for HPKESuiteKwV1);
          sub_2259BEF00(v51, v45);
          return;
        }
      }

      sub_225A0E298(v47, type metadata accessor for HPKESuiteKwV1);
      sub_2259BEF00(v51, v45);
      v34 = v55;
    }

    else
    {
      v115 = v45;
      v114 = 0x8000000225D17080;
      v113 = 0x8000000225D17150;
      v80 = MEMORY[0x277D84F90];
      v81 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v34 = swift_allocError();
      v83 = v82;
      v84 = sub_225CCE954();
      v85 = *(v84 - 8);
      v86 = v99;
      (*(v85 + 56))(v99, 1, 1, v84);
      LODWORD(v84) = (*(v85 + 48))(v86, 1, v84);
      sub_2259CB640(v86, &unk_27D73B050);
      if (v84)
      {
        v87 = 721;
      }

      else
      {
        v87 = 23;
      }

      v88 = sub_225B2C374(v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v119 = v88;
      sub_225B2C4A0(v81, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v119);

      v90 = v119;
      v91 = sub_225B29AA0(0, 1, 1, v80);
      v93 = *(v91 + 2);
      v92 = *(v91 + 3);
      if (v93 >= v92 >> 1)
      {
        v91 = sub_225B29AA0((v92 > 1), v93 + 1, 1, v91);
      }

      v94 = v117;
      *(v91 + 2) = v93 + 1;
      v95 = &v91[56 * v93];
      *(v95 + 4) = 0xD000000000000042;
      *(v95 + 5) = 0x8000000225D17170;
      *(v95 + 6) = 0xD000000000000035;
      *(v95 + 7) = v114;
      *(v95 + 8) = 0xD000000000000010;
      *(v95 + 9) = v113;
      *(v95 + 10) = 116;
      *v83 = v87;
      *(v83 + 8) = v91;
      *(v83 + 16) = 0xD000000000000042;
      *(v83 + 24) = 0x8000000225D17170;
      *(v83 + 32) = v90;
      *(v83 + 40) = 0;
      swift_willThrow();
      sub_2259BEF00(v94, v115);
      sub_225A0E298(v116, type metadata accessor for HPKESuiteKwV1);
    }
  }

  v35 = "No leaf certificate on trust";
  v117 = " with this cryptor";
  v36 = v34;
  v37 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v39 = v38;
  swift_getErrorValue();
  v40 = v123;
  v41 = v34;
  sub_225B21FAC(v40, &v119);

  v42 = *(&v119 + 1);
  if (*(&v119 + 1))
  {
    v116 = v119;
    v114 = *(&v120 + 1);
    v115 = v120;
    v43 = v121;
    v113 = v122;
  }

  else
  {
    v112 = "No leaf certificate on trust";
    *&v119 = v34;
    v59 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v60 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v62 = [v60 code];
      v63 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v63;
      *(inited + 40) = v62;
      v43 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v64 = v34;
      v116 = 0;
      v115 = 0;
      v114 = 0;
      v42 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v119 = v34;
      v65 = v34;
      v66 = sub_225CCE954();
      v67 = v100;
      v68 = swift_dynamicCast();
      v69 = *(v66 - 8);
      (*(v69 + 56))(v67, v68 ^ 1u, 1, v66);
      LODWORD(v69) = (*(v69 + 48))(v67, 1, v66);
      sub_2259CB640(v67, &unk_27D73B050);
      if (v69)
      {
        v70 = 0;
      }

      else
      {
        v70 = 23;
      }

      v116 = v70;
      v42 = MEMORY[0x277D84F90];
      v43 = sub_225B2C374(MEMORY[0x277D84F90]);
      v71 = v34;
      v115 = 0;
      v114 = 0;
    }

    v113 = v34;
    v35 = v112;
  }

  v72 = v35 | 0x8000000000000000;
  v73 = v117 | 0x8000000000000000;
  v74 = swift_isUniquelyReferenced_nonNull_native();
  *&v119 = v43;
  sub_225B2C4A0(v37, sub_225B2AC40, 0, v74, &v119);

  v75 = v119;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v42 = sub_225B29AA0(0, *(v42 + 2) + 1, 1, v42);
  }

  v77 = *(v42 + 2);
  v76 = *(v42 + 3);
  if (v77 >= v76 >> 1)
  {
    v42 = sub_225B29AA0((v76 > 1), v77 + 1, 1, v42);
  }

  *(v42 + 2) = v77 + 1;
  v78 = &v42[56 * v77];
  *(v78 + 4) = 0;
  *(v78 + 5) = 0;
  *(v78 + 6) = 0xD000000000000035;
  *(v78 + 7) = v72;
  *(v78 + 8) = 0xD000000000000010;
  *(v78 + 9) = v73;
  *(v78 + 10) = 124;
  *v39 = v116;
  v79 = v115;
  *(v39 + 8) = v42;
  *(v39 + 16) = v79;
  *(v39 + 24) = v114;
  *(v39 + 32) = v75;
  *(v39 + 40) = v113;
  swift_willThrow();
}

uint64_t sub_225A0936C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v16 = a2;
  v17 = a1;
  v3 = sub_225CCD954();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + *(type metadata accessor for DigitalPresentmentResponseCryptor() + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFE8);
  sub_2259D8B24(&qword_27D73B030, &qword_27D73AFE8);
  v8 = v29;
  result = sub_225CCD364();
  if (!v8)
  {
    v10 = v15;
    v29 = 0;
    v27[6] = v24;
    v27[7] = v25;
    v28[0] = v26[0];
    *(v28 + 9) = *(v26 + 9);
    v27[2] = v20;
    v27[3] = v21;
    v27[4] = v22;
    v27[5] = v23;
    v27[0] = v18;
    v27[1] = v19;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v11 = off_28105B918;
    v12 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v13 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v13));
    (*(v10 + 16))(v6, &v11[v12], v3);
    os_unfair_lock_unlock(&v11[v13]);
    sub_225A0DE54(v27, &v18, &qword_27D73AFE8);
    sub_225B42584(v6, v27);
    sub_2259CB640(v27, &qword_27D73AFE8);
    (*(v10 + 8))(v6, v3);
    *(&v19 + 1) = sub_225CCD3A4();
    *&v20 = &protocol witness table for CBORDecoder;
    *&v18 = v7;

    sub_225A0D254(v27, 0, &v18, v16);
    sub_2259CB640(v27, &qword_27D73AFE8);
    return __swift_destroy_boxed_opaque_existential_0(&v18);
  }

  return result;
}

uint64_t sub_225A09650@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v6 = sub_225CCD954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + *(type metadata accessor for DigitalPresentmentResponseCryptor() + 28));
  sub_225A0E3FC();
  result = sub_225CCD364();
  if (!v3)
  {
    v23 = a2;
    v24 = a1;
    v42 = 0;
    v13 = v25[0];
    v14 = v25[1];
    v22 = v25[2];
    v21 = v26;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v15 = off_28105B918;
    v16 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v17 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v17));
    (*(v7 + 16))(v10, &v15[v16], v6);
    os_unfair_lock_unlock(&v15[v17]);
    sub_2259CB710(v13, v14);
    v18 = v22;
    v19 = v21;
    sub_2259CB710(v22, v21);
    sub_225B42820(v10, v13, v14, v18, v19);
    sub_2259BEF00(v13, v14);
    sub_2259BEF00(v18, v19);
    (*(v7 + 8))(v10, v6);
    sub_2259CB710(v13, v14);
    sub_2259CB710(v18, v19);
    sub_225A0E458(0, 0, 1);
    v28[0] = 0;
    v29 = v13;
    v30 = v14;
    v31 = xmmword_225CD4150;
    v32 = xmmword_225CD3100;
    v33 = xmmword_225CD3100;
    v34 = xmmword_225CD3100;
    v35 = xmmword_225CD3100;
    v36 = v18;
    v37 = v19;
    v38 = 0;
    v39 = 0;
    v40 = xmmword_225CD7890;
    v41 = 0;
    v20 = sub_225CCD3A4();
    v27 = &protocol witness table for CBORDecoder;
    v26 = v20;
    v25[0] = v11;

    sub_225A0D7F8(v28, 0, v25, v23);
    sub_2259CB640(v28, &qword_27D73AFD8);
    sub_2259BEF00(v13, v14);
    sub_2259BEF00(v18, v19);
    return __swift_destroy_boxed_opaque_existential_0(v25);
  }

  return result;
}

uint64_t DigitalPresentmentResponseCryptor.decryptWithoutDecoding(_:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v104 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v91 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v90 = v89 - v10;
  v105 = sub_225CCDDE4();
  v102 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v11);
  v103 = v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_225CCDDC4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v13);
  v101 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_225CCDDD4();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v15);
  v96 = v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for HPKEPrivateKey(0);
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v17);
  v93 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for HPKESuiteKwV1(0);
  MEMORY[0x28223BE20](v95, v19);
  v106 = v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_225CCD954();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v26 = off_28105B918;
  v27 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v28 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v28));
  (*(v22 + 16))(v25, &v26[v27], v21);
  os_unfair_lock_unlock(&v26[v28]);
  sub_2259CB710(a1, a2);
  sub_225B42A90(v25, a1, a2);
  sub_2259BEF00(a1, a2);
  (*(v22 + 8))(v25, v21);
  v29 = v107;
  v30 = sub_225A07DDC();
  if (!v29)
  {
    v33 = v30;
    v89[0] = a1;
    v89[1] = a2;
    v107 = 0;
    v34 = v31;
    v35 = v93;
    sub_225A0DEBC(v104, v93, type metadata accessor for HPKEPrivateKey);
    v36 = v106;
    *v106 = &type metadata for AEADScheme_AES_128_GCM;
    *(v36 + 1) = &off_283903448;
    v37 = v95;
    (*(v92 + 104))(v96, *MEMORY[0x277CC5450], v94);
    (*(v99 + 104))(v101, *MEMORY[0x277CC5438], v100);
    (*(v102 + 104))(v103, *MEMORY[0x277CC5460], v105);
    sub_2259CB710(v33, v34);
    sub_225CCDDA4();
    v38 = v37[8];
    sub_225A0DF24(v35, &v36[v38]);
    (*(v97 + 56))(&v36[v38], 0, 1, v98);
    *&v36[v37[7]] = xmmword_225CD4150;
    v39 = &v36[v37[6]];
    *v39 = v33;
    v39[1] = v34;
    v40 = type metadata accessor for DigitalPresentmentResponseCryptor();
    if (!*(v108 + *(v40 + 20)))
    {
      v108 = v33;
      v105 = v34;
      v104 = 0x8000000225D17080;
      v103 = 0x8000000225D171C0;
      v43 = MEMORY[0x277D84F90];
      v44 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v32 = swift_allocError();
      v46 = v45;
      v47 = sub_225CCE954();
      v48 = *(v47 - 8);
      v49 = v90;
      (*(v48 + 56))(v90, 1, 1, v47);
      LODWORD(v47) = (*(v48 + 48))(v49, 1, v47);
      sub_2259CB640(v49, &unk_27D73B050);
      if (v47)
      {
        v50 = 721;
      }

      else
      {
        v50 = 23;
      }

      v51 = sub_225B2C374(v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v51;
      sub_225B2C4A0(v44, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v110);

      v53 = v110;
      v54 = sub_225B29AA0(0, 1, 1, v43);
      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = sub_225B29AA0((v55 > 1), v56 + 1, 1, v54);
      }

      *(v54 + 2) = v56 + 1;
      v57 = &v54[56 * v56];
      *(v57 + 4) = 0xD000000000000042;
      *(v57 + 5) = 0x8000000225D17170;
      *(v57 + 6) = 0xD000000000000035;
      *(v57 + 7) = v104;
      *(v57 + 8) = 0xD00000000000001FLL;
      *(v57 + 9) = v103;
      *(v57 + 10) = 138;
      *v46 = v50;
      *(v46 + 8) = v54;
      *(v46 + 16) = 0xD000000000000042;
      *(v46 + 24) = 0x8000000225D17170;
      *(v46 + 32) = v53;
      *(v46 + 40) = 0;
      swift_willThrow();
      sub_2259BEF00(v108, v105);
      sub_225A0E298(v106, type metadata accessor for HPKESuiteKwV1);
      goto LABEL_18;
    }

    v41 = v33;
    if (*(v108 + *(v40 + 20)) == 1)
    {
      v42 = v107;
      sub_225A0936C(v36, &v110);
      v32 = v42;
      if (!v42)
      {
        v105 = v34;
        sub_225A0DF88();
LABEL_33:
        v65 = sub_225CCD3F4();
        sub_225A0E298(v36, type metadata accessor for HPKESuiteKwV1);
        sub_2259BEF00(v41, v105);

        return v65;
      }
    }

    else
    {
      v58 = v107;
      sub_225A09650(v36, &v110);
      v32 = v58;
      if (!v58)
      {
        v105 = v34;
        sub_225A05BE8();
        goto LABEL_33;
      }
    }

    sub_225A0E298(v36, type metadata accessor for HPKESuiteKwV1);
    sub_2259BEF00(v41, v34);
    goto LABEL_18;
  }

  v32 = v29;
LABEL_18:
  v107 = " with this cryptor";
  v59 = v32;
  v60 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v108 = swift_allocError();
  v62 = v61;
  swift_getErrorValue();
  v63 = v116;
  v64 = v32;
  sub_225B21FAC(v63, &v110);

  v65 = v111;
  if (v111)
  {
    v106 = v110;
    v105 = v112;
    v104 = v113;
    v66 = v114;
    v67 = v115;
  }

  else
  {
    v110 = v32;
    v68 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v69 = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v71 = [v69 code];
      v72 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v72;
      *(inited + 40) = v71;
      v66 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v73 = v32;
      v106 = 0;
      v105 = 0;
      v104 = 0;
      v65 = MEMORY[0x277D84F90];
    }

    else
    {
      v110 = v32;
      v74 = v32;
      v75 = sub_225CCE954();
      v76 = v91;
      v77 = swift_dynamicCast();
      v78 = *(v75 - 8);
      (*(v78 + 56))(v76, v77 ^ 1u, 1, v75);
      LODWORD(v78) = (*(v78 + 48))(v76, 1, v75);
      sub_2259CB640(v76, &unk_27D73B050);
      if (v78)
      {
        v79 = 0;
      }

      else
      {
        v79 = 23;
      }

      v106 = v79;
      v65 = MEMORY[0x277D84F90];
      v66 = sub_225B2C374(MEMORY[0x277D84F90]);
      v80 = v32;
      v105 = 0;
      v104 = 0;
    }

    v67 = v32;
  }

  v81 = v107 | 0x8000000000000000;
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v110 = v66;
  sub_225B2C4A0(v60, sub_225B2AC40, 0, v82, &v110);

  v83 = v110;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_225B29AA0(0, *(v65 + 16) + 1, 1, v65);
  }

  v85 = *(v65 + 16);
  v84 = *(v65 + 24);
  if (v85 >= v84 >> 1)
  {
    v65 = sub_225B29AA0((v84 > 1), v85 + 1, 1, v65);
  }

  *(v65 + 16) = v85 + 1;
  v86 = (v65 + 56 * v85);
  v86[4] = 0;
  v86[5] = 0;
  v86[6] = 0xD000000000000035;
  v86[7] = 0x8000000225D17080;
  v86[8] = 0xD00000000000001FLL;
  v86[9] = v81;
  v86[10] = 147;
  *v62 = v106;
  v87 = v105;
  *(v62 + 8) = v65;
  *(v62 + 16) = v87;
  *(v62 + 24) = v104;
  *(v62 + 32) = v83;
  *(v62 + 40) = v67;
  swift_willThrow();

  return v65;
}

uint64_t sub_225A0A870(uint64_t a1, unint64_t a2)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000003BLL, 0x8000000225D171E0);
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v4 = sub_225CCE384();
  v6 = v5;

  MEMORY[0x22AA6CE70](v4, v6);

  return 0;
}

uint64_t sub_225A0A984()
{
  type metadata accessor for DigitalPresentmentResponseCryptor();
  sub_225A0DF88();
  v0 = sub_225CCD3F4();
  v2 = v1;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000003DLL, 0x8000000225D17330);
  sub_225B34448(v0, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0);
  v3 = sub_225CCE384();
  v5 = v4;

  MEMORY[0x22AA6CE70](v3, v5);

  sub_2259BEF00(v0, v2);
  return 0;
}

void sub_225A0AB54(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v199 = a3;
  *&v212 = a2;
  v181 = a4;
  v230 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v183 = &v181 - v7;
  v8 = sub_225CCDDB4();
  v206 = *(v8 - 8);
  v207 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v205 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_225CCDEA4();
  v201 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v11);
  v203 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCDE24();
  v197 = *(v13 - 8);
  v198 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v211 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCE164();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v210 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_225CCDBA4();
  *&v214 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v20);
  v209 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_225CCD954();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[1];
  v227 = *a1;
  v228 = v27;
  v229 = *(a1 + 32);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v28 = off_28105B918;
  v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v30));
  v31 = *(v23 + 16);
  v191 = v23 + 16;
  v192 = v29;
  v190 = v31;
  v31(v26, &v28[v29], v22);
  v193 = v30;
  v194 = v28;
  os_unfair_lock_unlock(&v28[v30]);
  MEMORY[0x28223BE20](v32, v33);
  *(&v181 - 2) = v213;
  Logger.cryptoParam(_:)(sub_225A0E450);
  v34 = *(v23 + 8);
  v184 = v26;
  v195 = v23 + 8;
  v189 = v34;
  v35 = (v34)(v26, v22);
  v36 = MEMORY[0x22AA6C6C0](v35);
  v196 = v22;
  v37 = v36;
  v39 = v38;
  v40 = sub_225A0E4A0(&qword_27D73AE10, MEMORY[0x277CC5540]);
  v41 = v210;
  sub_225CCDB94();
  sub_2259CB710(v37, v39);
  v42 = v202;
  sub_2259DB138(v37, v39);
  *&v202 = v42;
  sub_2259BEF00(v37, v39);
  v43 = v209;
  v187 = v40;
  sub_225CCDB84();
  sub_2259BEF00(v37, v39);
  v44 = *(v17 + 8);
  v182 = v16;
  v188 = v17 + 8;
  v186 = v44;
  v44(v41, v16);
  v45 = sub_225A0E4A0(&qword_27D73AE58, MEMORY[0x277CC5290]);
  v46 = v208;
  v185 = v45;
  v47 = sub_225CCE154();
  v49 = sub_2259D732C(v47, v48);

  v50 = sub_2259D8490(v49);
  v51 = v213;
  *&v200 = v50;
  *(&v200 + 1) = v52;

  v53 = *(v214 + 8);
  *&v214 = v214 + 8;
  v53(v43, v46);
  (*(v201 + 16))(v203, v212, v204);
  v54 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v206 + 16))(v205, v51 + *(v54 + 20), v207);
  v55 = v51 + *(v54 + 24);
  sub_2259CB710(*v55, *(v55 + 1));
  v56 = v202;
  sub_225CCDDF4();
  v57 = v56;
  if (v56)
  {
    sub_2259BEF00(v200, *(&v200 + 1));
    goto LABEL_44;
  }

  v206 = v54;
  v207 = v55;
  *&v212 = v53;
  v58 = v210;
  v59 = v199[3];
  v60 = v199[4];
  __swift_project_boxed_opaque_existential_1(v199, v59);
  v61 = *(v60 + 8);
  v62 = sub_225A0DF88();
  v63 = v61(&v227, &type metadata for DigitalPresentmentResponseTopics, v62, v59, v60);
  v65 = v64;
  v204 = v63;
  v66 = sub_225CCDE04();
  v68 = v66;
  v69 = v67;
  v70 = v67 >> 62;
  v205 = v65;
  if ((v67 >> 62) > 1)
  {
    if (v70 != 2)
    {
      v71 = v58;
      *(&v226 + 6) = 0;
      *&v226 = 0;
      v72 = &v226;
      goto LABEL_32;
    }

    v73 = *(v66 + 16);
    v74 = *(v66 + 24);
    v75 = sub_225CCCA44();
    if (v75)
    {
      v76 = sub_225CCCA74();
      if (__OFSUB__(v73, v76))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v75 += v73 - v76;
    }

    v77 = __OFSUB__(v74, v73);
    v78 = v74 - v73;
    if (!v77)
    {
      v79 = sub_225CCCA64();
      if (v79 >= v78)
      {
        v80 = v78;
      }

      else
      {
        v80 = v79;
      }

      v81 = v80 + v75;
      if (v75)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0;
      }

      sub_225A63FC0(v75, v82, &v220);
      sub_2259BEF00(v68, v69);
      v83 = v209;
      v71 = v210;
      goto LABEL_33;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v70)
  {
    v84 = (v66 >> 32) - v66;
    if (v66 >> 32 >= v66)
    {
      v85 = sub_225CCCA44();
      if (!v85)
      {
LABEL_24:
        v87 = v209;
        v88 = sub_225CCCA64();
        if (v88 >= v84)
        {
          v89 = (v68 >> 32) - v68;
        }

        else
        {
          v89 = v88;
        }

        v90 = v89 + v85;
        if (v85)
        {
          v91 = v90;
        }

        else
        {
          v91 = 0;
        }

        sub_225A63FC0(v85, v91, &v220);
        sub_2259BEF00(v68, v69);
        v92 = v206;
        v71 = v210;
        v83 = v87;
        goto LABEL_34;
      }

      v86 = sub_225CCCA74();
      if (!__OFSUB__(v68, v86))
      {
        v85 += v68 - v86;
        goto LABEL_24;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  v71 = v58;
  *&v226 = v66;
  WORD4(v226) = v67;
  BYTE10(v226) = BYTE2(v67);
  BYTE11(v226) = BYTE3(v67);
  BYTE12(v226) = BYTE4(v67);
  BYTE13(v226) = BYTE5(v67);
  v72 = (&v226 + BYTE6(v67));
LABEL_32:
  sub_225A63FC0(&v226, v72, &v220);
  sub_2259BEF00(v68, v69);
  v83 = v209;
LABEL_33:
  v92 = v206;
LABEL_34:
  v206 = *(&v220 + 1);
  v203 = v220;
  v202 = xmmword_225CD3100;
  v226 = xmmword_225CD3100;
  v93 = (v213 + *(v92 + 28));
  v94 = v93[1];
  v213 = v93;
  if (v94 >> 60 == 15)
  {
    v95 = v184;
    v96 = v71;
    v97 = v182;
    v98 = v207;
    v99 = 0;
  }

  else
  {
    v100 = *v93;
    sub_2259CB710(*v93, v94);
    v96 = v71;
    v97 = v182;
    sub_225CCDB94();
    sub_2259CB710(v100, v94);
    v201 = v100;
    sub_2259DB138(v100, v94);
    v199 = 0;
    sub_2259B97A8(v100, v94);
    sub_225CCDB84();
    v186(v71, v97);
    v101 = v208;
    v102 = sub_225CCE154();
    v104 = sub_2259D732C(v102, v103);

    v105 = sub_2259D8490(v104);
    v107 = v106;

    (v212)(v83, v101);
    sub_2259B97A8(v226, *(&v226 + 1));
    *&v226 = v105;
    *(&v226 + 1) = v107;
    v99 = v199;
    v109 = v193;
    v108 = v194;
    os_unfair_lock_lock(&v194[v193]);
    v110 = v184;
    v111 = v196;
    v190(v184, &v108[v192], v196);
    os_unfair_lock_unlock(&v108[v109]);
    sub_225B3EAA4(v110, &v226);
    v112 = v94;
    v95 = v110;
    sub_2259B97A8(v201, v112);
    v189(v110, v111);
    v98 = v207;
  }

  v113 = *v98;
  v114 = v98[1];
  sub_225CCDB94();
  sub_2259CB710(v113, v114);
  sub_2259DB138(v113, v114);
  v207 = v99;
  sub_2259BEF00(v113, v114);
  v115 = v209;
  sub_225CCDB84();
  v186(v96, v97);
  v116 = v208;
  v117 = sub_225CCE154();
  v119 = sub_2259D732C(v117, v118);

  v120 = sub_2259D8490(v119);
  v122 = v121;

  (v212)(v115, v116);
  v123 = v193;
  v124 = v194;
  os_unfair_lock_lock(&v194[v193]);
  v125 = v196;
  v190(v95, &v124[v192], v196);
  os_unfair_lock_unlock(&v124[v123]);
  sub_2259CB710(v120, v122);
  sub_225B41958();
  sub_2259BEF00(v120, v122);
  v189(v95, v125);
  v210 = *(&v226 + 1);
  v126 = v226;
  v127 = v203;
  v128 = v206;
  *&v220 = v203;
  *(&v220 + 1) = v206;
  v129 = v200;
  v221 = v200;
  v222 = v202;
  v223 = v226;
  v224 = v202;
  *&v225 = v120;
  *(&v225 + 1) = v122;
  v218 = v204;
  v219 = v205;
  v130 = *v213;
  v131 = v213[1];
  v209 = *v213;
  if (v131 >> 60 == 15)
  {
    v132 = 0;
  }

  else
  {
    v132 = v130;
  }

  v133 = 0xC000000000000000;
  if (v131 >> 60 != 15)
  {
    v133 = v131;
  }

  v216 = v132;
  v217 = v133;
  *&v212 = v120;
  *&v214 = v122;
  sub_2259CB710(v120, v122);
  sub_2259CB710(v127, v128);
  sub_2259CB710(v129, *(&v129 + 1));
  sub_2259CB6FC(v126, v210);
  sub_2259CB6FC(v209, v131);
  sub_2259DB42C();
  v134 = v211;
  v135 = v207;
  v136 = sub_225CCDE14();
  if (!v135)
  {
    v213 = 0;
    v210 = v137;
    v168 = v136;
    sub_2259BEF00(v216, v217);
    v170 = v193;
    v169 = v194;
    os_unfair_lock_lock(&v194[v193]);
    v171 = v184;
    v172 = v196;
    v190(v184, &v169[v192], v196);
    v173 = &v169[v170];
    v174 = v168;
    v175 = v210;
    os_unfair_lock_unlock(v173);
    sub_2259CB710(v174, v175);
    sub_225B41BAC();
    sub_2259BEF00(v174, v175);
    v189(v171, v172);
    LOBYTE(v171) = shouldIncludeUnencryptedData()();
    sub_2259BEF00(v204, v205);
    sub_2259BEF00(v212, v214);
    sub_2259BEF00(v129, *(&v129 + 1));
    sub_2259BEF00(v203, v206);
    (*(v197 + 8))(v134, v198);
    if (v171)
    {
      v212 = v227;
      v176 = v229;
      v214 = v228;
    }

    else
    {
      v176 = 0;
      v214 = xmmword_225CD7890;
      v212 = 0u;
    }

    v177 = v223;
    v178 = v181;
    *(v181 + 40) = v222;
    *(v178 + 56) = v177;
    v179 = v225;
    *(v178 + 72) = v224;
    *(v178 + 88) = v179;
    v180 = v221;
    *(v178 + 8) = v220;
    *v178 = 0;
    *(v178 + 24) = v180;
    *(v178 + 104) = v174;
    *(v178 + 112) = v175;
    sub_225A0E458(0, 0, 1);
    *(v178 + 136) = v214;
    *(v178 + 120) = v212;
    *(v178 + 152) = v176;
    sub_2259B97A8(v226, *(&v226 + 1));
    return;
  }

  sub_2259BEF00(v212, v214);
  sub_2259BEF00(v129, *(&v129 + 1));
  sub_2259BEF00(v203, v206);
  sub_225A0E354(&v220);
  sub_2259BEF00(v216, v217);
  (*(v197 + 8))(v134, v198);
  sub_2259BEF00(v204, v205);
  sub_2259B97A8(v226, *(&v226 + 1));
  v57 = v135;
LABEL_44:
  *&v214 = 0x8000000225D17280;
  *&v212 = "t the message using HPKE";
  v138 = v57;
  v139 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v213 = swift_allocError();
  v141 = v140;
  swift_getErrorValue();
  v142 = v215;
  v143 = v57;
  sub_225B21FAC(v142, &v220);

  v144 = *(&v220 + 1);
  if (*(&v220 + 1))
  {
    v210 = v221;
    v211 = v220;
    v208 = *(&v222 + 1);
    v145 = v222;
    v209 = *(&v221 + 1);
  }

  else
  {
    v207 = 0;
    *&v220 = v57;
    v146 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v147 = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v149 = [v147 code];
      v150 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v150;
      *(inited + 40) = v149;
      v145 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v151 = v57;
      v209 = 0;
      v210 = 0;
      v144 = MEMORY[0x277D84F90];
      v211 = 283;
    }

    else
    {
      *&v220 = v57;
      v152 = v57;
      v153 = sub_225CCE954();
      v154 = v183;
      v155 = swift_dynamicCast();
      v156 = *(v153 - 8);
      (*(v156 + 56))(v154, v155 ^ 1u, 1, v153);
      LODWORD(v156) = (*(v156 + 48))(v154, 1, v153);
      sub_2259CB640(v154, &unk_27D73B050);
      if (v156)
      {
        v157 = 283;
      }

      else
      {
        v157 = 23;
      }

      v211 = v157;
      v144 = MEMORY[0x277D84F90];
      v145 = sub_225B2C374(MEMORY[0x277D84F90]);
      v158 = v57;
      v210 = 0xD000000000000028;
      v209 = v214;
    }

    v208 = v57;
  }

  v159 = v212 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v220 = v145;
  sub_225B2C4A0(v139, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v220);

  v161 = v220;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v144 = sub_225B29AA0(0, *(v144 + 2) + 1, 1, v144);
  }

  v163 = *(v144 + 2);
  v162 = *(v144 + 3);
  if (v163 >= v162 >> 1)
  {
    v144 = sub_225B29AA0((v162 > 1), v163 + 1, 1, v144);
  }

  *(v144 + 2) = v163 + 1;
  v164 = &v144[56 * v163];
  v165 = v214;
  *(v164 + 4) = 0xD000000000000028;
  *(v164 + 5) = v165;
  *(v164 + 6) = 0xD00000000000001CLL;
  *(v164 + 7) = 0x8000000225D17220;
  *(v164 + 8) = 0xD000000000000024;
  *(v164 + 9) = v159;
  *(v164 + 10) = 651;
  v166 = v210;
  *v141 = v211;
  *(v141 + 8) = v144;
  *(v141 + 16) = v166;
  v167 = v208;
  *(v141 + 24) = v209;
  *(v141 + 32) = v161;
  *(v141 + 40) = v167;
  swift_willThrow();
}

void sub_225A0BED4(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v199 = a3;
  *&v212 = a2;
  v181 = a4;
  v230 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v183 = &v181 - v7;
  v8 = sub_225CCDDB4();
  v206 = *(v8 - 8);
  v207 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v205 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_225CCDEA4();
  v201 = *(v204 - 8);
  MEMORY[0x28223BE20](v204, v11);
  v203 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_225CCDE24();
  v197 = *(v13 - 8);
  v198 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v211 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_225CCE164();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v210 = &v181 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_225CCDBA4();
  *&v214 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v20);
  v209 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_225CCD954();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[1];
  v227 = *a1;
  v228 = v27;
  v229 = *(a1 + 32);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v28 = off_28105B918;
  v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v30 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v30));
  v31 = *(v23 + 16);
  v191 = v23 + 16;
  v192 = v29;
  v190 = v31;
  v31(v26, &v28[v29], v22);
  v193 = v30;
  v194 = v28;
  os_unfair_lock_unlock(&v28[v30]);
  MEMORY[0x28223BE20](v32, v33);
  *(&v181 - 2) = v213;
  Logger.cryptoParam(_:)(sub_225A0E4E8);
  v34 = *(v23 + 8);
  v184 = v26;
  v195 = v23 + 8;
  v189 = v34;
  v35 = (v34)(v26, v22);
  v36 = MEMORY[0x22AA6C6C0](v35);
  v196 = v22;
  v37 = v36;
  v39 = v38;
  v40 = sub_225A0E4A0(&qword_27D73AE10, MEMORY[0x277CC5540]);
  v41 = v210;
  sub_225CCDB94();
  sub_2259CB710(v37, v39);
  v42 = v202;
  sub_2259DB138(v37, v39);
  *&v202 = v42;
  sub_2259BEF00(v37, v39);
  v43 = v209;
  v187 = v40;
  sub_225CCDB84();
  sub_2259BEF00(v37, v39);
  v44 = *(v17 + 8);
  v182 = v16;
  v188 = v17 + 8;
  v186 = v44;
  v44(v41, v16);
  v45 = sub_225A0E4A0(&qword_27D73AE58, MEMORY[0x277CC5290]);
  v46 = v208;
  v185 = v45;
  v47 = sub_225CCE154();
  v49 = sub_2259D732C(v47, v48);

  v50 = sub_2259D8490(v49);
  v51 = v213;
  *&v200 = v50;
  *(&v200 + 1) = v52;

  v53 = *(v214 + 8);
  *&v214 = v214 + 8;
  v53(v43, v46);
  (*(v201 + 16))(v203, v212, v204);
  v54 = type metadata accessor for HPKESuiteKwV1(0);
  (*(v206 + 16))(v205, v51 + *(v54 + 20), v207);
  v55 = v51 + *(v54 + 24);
  sub_2259CB710(*v55, *(v55 + 1));
  v56 = v202;
  sub_225CCDDF4();
  v57 = v56;
  if (v56)
  {
    sub_2259BEF00(v200, *(&v200 + 1));
    goto LABEL_44;
  }

  v206 = v54;
  v207 = v55;
  *&v212 = v53;
  v58 = v210;
  v59 = v199[3];
  v60 = v199[4];
  __swift_project_boxed_opaque_existential_1(v199, v59);
  v61 = *(v60 + 8);
  v62 = sub_225A05BE8();
  v63 = v61(&v227, &type metadata for ISO18013Response, v62, v59, v60);
  v65 = v64;
  v204 = v63;
  v66 = sub_225CCDE04();
  v68 = v66;
  v69 = v67;
  v70 = v67 >> 62;
  v205 = v65;
  if ((v67 >> 62) > 1)
  {
    if (v70 != 2)
    {
      v71 = v58;
      *(&v226 + 6) = 0;
      *&v226 = 0;
      v72 = &v226;
      goto LABEL_32;
    }

    v73 = *(v66 + 16);
    v74 = *(v66 + 24);
    v75 = sub_225CCCA44();
    if (v75)
    {
      v76 = sub_225CCCA74();
      if (__OFSUB__(v73, v76))
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v75 += v73 - v76;
    }

    v77 = __OFSUB__(v74, v73);
    v78 = v74 - v73;
    if (!v77)
    {
      v79 = sub_225CCCA64();
      if (v79 >= v78)
      {
        v80 = v78;
      }

      else
      {
        v80 = v79;
      }

      v81 = v80 + v75;
      if (v75)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0;
      }

      sub_225A63FC0(v75, v82, &v220);
      sub_2259BEF00(v68, v69);
      v83 = v209;
      v71 = v210;
      goto LABEL_33;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v70)
  {
    v84 = (v66 >> 32) - v66;
    if (v66 >> 32 >= v66)
    {
      v85 = sub_225CCCA44();
      if (!v85)
      {
LABEL_24:
        v87 = v209;
        v88 = sub_225CCCA64();
        if (v88 >= v84)
        {
          v89 = (v68 >> 32) - v68;
        }

        else
        {
          v89 = v88;
        }

        v90 = v89 + v85;
        if (v85)
        {
          v91 = v90;
        }

        else
        {
          v91 = 0;
        }

        sub_225A63FC0(v85, v91, &v220);
        sub_2259BEF00(v68, v69);
        v92 = v206;
        v71 = v210;
        v83 = v87;
        goto LABEL_34;
      }

      v86 = sub_225CCCA74();
      if (!__OFSUB__(v68, v86))
      {
        v85 += v68 - v86;
        goto LABEL_24;
      }

LABEL_65:
      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  v71 = v58;
  *&v226 = v66;
  WORD4(v226) = v67;
  BYTE10(v226) = BYTE2(v67);
  BYTE11(v226) = BYTE3(v67);
  BYTE12(v226) = BYTE4(v67);
  BYTE13(v226) = BYTE5(v67);
  v72 = (&v226 + BYTE6(v67));
LABEL_32:
  sub_225A63FC0(&v226, v72, &v220);
  sub_2259BEF00(v68, v69);
  v83 = v209;
LABEL_33:
  v92 = v206;
LABEL_34:
  v206 = *(&v220 + 1);
  v203 = v220;
  v202 = xmmword_225CD3100;
  v226 = xmmword_225CD3100;
  v93 = (v213 + *(v92 + 28));
  v94 = v93[1];
  v213 = v93;
  if (v94 >> 60 == 15)
  {
    v95 = v184;
    v96 = v71;
    v97 = v182;
    v98 = v207;
    v99 = 0;
  }

  else
  {
    v100 = *v93;
    sub_2259CB710(*v93, v94);
    v96 = v71;
    v97 = v182;
    sub_225CCDB94();
    sub_2259CB710(v100, v94);
    v201 = v100;
    sub_2259DB138(v100, v94);
    v199 = 0;
    sub_2259B97A8(v100, v94);
    sub_225CCDB84();
    v186(v71, v97);
    v101 = v208;
    v102 = sub_225CCE154();
    v104 = sub_2259D732C(v102, v103);

    v105 = sub_2259D8490(v104);
    v107 = v106;

    (v212)(v83, v101);
    sub_2259B97A8(v226, *(&v226 + 1));
    *&v226 = v105;
    *(&v226 + 1) = v107;
    v99 = v199;
    v109 = v193;
    v108 = v194;
    os_unfair_lock_lock(&v194[v193]);
    v110 = v184;
    v111 = v196;
    v190(v184, &v108[v192], v196);
    os_unfair_lock_unlock(&v108[v109]);
    sub_225B3EAA4(v110, &v226);
    v112 = v94;
    v95 = v110;
    sub_2259B97A8(v201, v112);
    v189(v110, v111);
    v98 = v207;
  }

  v113 = *v98;
  v114 = v98[1];
  sub_225CCDB94();
  sub_2259CB710(v113, v114);
  sub_2259DB138(v113, v114);
  v207 = v99;
  sub_2259BEF00(v113, v114);
  v115 = v209;
  sub_225CCDB84();
  v186(v96, v97);
  v116 = v208;
  v117 = sub_225CCE154();
  v119 = sub_2259D732C(v117, v118);

  v120 = sub_2259D8490(v119);
  v122 = v121;

  (v212)(v115, v116);
  v123 = v193;
  v124 = v194;
  os_unfair_lock_lock(&v194[v193]);
  v125 = v196;
  v190(v95, &v124[v192], v196);
  os_unfair_lock_unlock(&v124[v123]);
  sub_2259CB710(v120, v122);
  sub_225B41958();
  sub_2259BEF00(v120, v122);
  v189(v95, v125);
  v210 = *(&v226 + 1);
  v126 = v226;
  v127 = v203;
  v128 = v206;
  *&v220 = v203;
  *(&v220 + 1) = v206;
  v129 = v200;
  v221 = v200;
  v222 = v202;
  v223 = v226;
  v224 = v202;
  *&v225 = v120;
  *(&v225 + 1) = v122;
  v218 = v204;
  v219 = v205;
  v130 = *v213;
  v131 = v213[1];
  v209 = *v213;
  if (v131 >> 60 == 15)
  {
    v132 = 0;
  }

  else
  {
    v132 = v130;
  }

  v133 = 0xC000000000000000;
  if (v131 >> 60 != 15)
  {
    v133 = v131;
  }

  v216 = v132;
  v217 = v133;
  *&v212 = v120;
  *&v214 = v122;
  sub_2259CB710(v120, v122);
  sub_2259CB710(v127, v128);
  sub_2259CB710(v129, *(&v129 + 1));
  sub_2259CB6FC(v126, v210);
  sub_2259CB6FC(v209, v131);
  sub_2259DB42C();
  v134 = v211;
  v135 = v207;
  v136 = sub_225CCDE14();
  if (!v135)
  {
    v213 = 0;
    v210 = v137;
    v168 = v136;
    sub_2259BEF00(v216, v217);
    v170 = v193;
    v169 = v194;
    os_unfair_lock_lock(&v194[v193]);
    v171 = v184;
    v172 = v196;
    v190(v184, &v169[v192], v196);
    v173 = &v169[v170];
    v174 = v168;
    v175 = v210;
    os_unfair_lock_unlock(v173);
    sub_2259CB710(v174, v175);
    sub_225B41BAC();
    sub_2259BEF00(v174, v175);
    v189(v171, v172);
    LOBYTE(v171) = shouldIncludeUnencryptedData()();
    sub_2259BEF00(v204, v205);
    sub_2259BEF00(v212, v214);
    sub_2259BEF00(v129, *(&v129 + 1));
    sub_2259BEF00(v203, v206);
    (*(v197 + 8))(v134, v198);
    if (v171)
    {
      v212 = v227;
      v176 = v229;
      v214 = v228;
    }

    else
    {
      v176 = 0;
      v214 = xmmword_225CD7890;
      v212 = 0u;
    }

    v177 = v223;
    v178 = v181;
    *(v181 + 40) = v222;
    *(v178 + 56) = v177;
    v179 = v225;
    *(v178 + 72) = v224;
    *(v178 + 88) = v179;
    v180 = v221;
    *(v178 + 8) = v220;
    *v178 = 0;
    *(v178 + 24) = v180;
    *(v178 + 104) = v174;
    *(v178 + 112) = v175;
    sub_225A0E458(0, 0, 1);
    *(v178 + 136) = v214;
    *(v178 + 120) = v212;
    *(v178 + 152) = v176;
    sub_2259B97A8(v226, *(&v226 + 1));
    return;
  }

  sub_2259BEF00(v212, v214);
  sub_2259BEF00(v129, *(&v129 + 1));
  sub_2259BEF00(v203, v206);
  sub_225A0E354(&v220);
  sub_2259BEF00(v216, v217);
  (*(v197 + 8))(v134, v198);
  sub_2259BEF00(v204, v205);
  sub_2259B97A8(v226, *(&v226 + 1));
  v57 = v135;
LABEL_44:
  *&v214 = 0x8000000225D17280;
  *&v212 = "t the message using HPKE";
  v138 = v57;
  v139 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v213 = swift_allocError();
  v141 = v140;
  swift_getErrorValue();
  v142 = v215;
  v143 = v57;
  sub_225B21FAC(v142, &v220);

  v144 = *(&v220 + 1);
  if (*(&v220 + 1))
  {
    v210 = v221;
    v211 = v220;
    v208 = *(&v222 + 1);
    v145 = v222;
    v209 = *(&v221 + 1);
  }

  else
  {
    v207 = 0;
    *&v220 = v57;
    v146 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v147 = v226;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v149 = [v147 code];
      v150 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v150;
      *(inited + 40) = v149;
      v145 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060);

      v151 = v57;
      v209 = 0;
      v210 = 0;
      v144 = MEMORY[0x277D84F90];
      v211 = 283;
    }

    else
    {
      *&v220 = v57;
      v152 = v57;
      v153 = sub_225CCE954();
      v154 = v183;
      v155 = swift_dynamicCast();
      v156 = *(v153 - 8);
      (*(v156 + 56))(v154, v155 ^ 1u, 1, v153);
      LODWORD(v156) = (*(v156 + 48))(v154, 1, v153);
      sub_2259CB640(v154, &unk_27D73B050);
      if (v156)
      {
        v157 = 283;
      }

      else
      {
        v157 = 23;
      }

      v211 = v157;
      v144 = MEMORY[0x277D84F90];
      v145 = sub_225B2C374(MEMORY[0x277D84F90]);
      v158 = v57;
      v210 = 0xD000000000000028;
      v209 = v214;
    }

    v208 = v57;
  }

  v159 = v212 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v220 = v145;
  sub_225B2C4A0(v139, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v220);

  v161 = v220;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v144 = sub_225B29AA0(0, *(v144 + 2) + 1, 1, v144);
  }

  v163 = *(v144 + 2);
  v162 = *(v144 + 3);
  if (v163 >= v162 >> 1)
  {
    v144 = sub_225B29AA0((v162 > 1), v163 + 1, 1, v144);
  }

  *(v144 + 2) = v163 + 1;
  v164 = &v144[56 * v163];
  v165 = v214;
  *(v164 + 4) = 0xD000000000000028;
  *(v164 + 5) = v165;
  *(v164 + 6) = 0xD00000000000001CLL;
  *(v164 + 7) = 0x8000000225D17220;
  *(v164 + 8) = 0xD000000000000024;
  *(v164 + 9) = v159;
  *(v164 + 10) = 651;
  v166 = v210;
  *v141 = v211;
  *(v141 + 8) = v144;
  *(v141 + 16) = v166;
  v167 = v208;
  *(v141 + 24) = v209;
  *(v141 + 32) = v161;
  *(v141 + 40) = v167;
  swift_willThrow();
}

void sub_225A0D254(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v54 - v10;
  v13 = *(a1 + 104);
  v12 = *(a1 + 112);
  v14 = *(a1 + 56);
  v73[2] = *(a1 + 40);
  v73[3] = v14;
  v15 = *(a1 + 88);
  v73[4] = *(a1 + 72);
  v73[5] = v15;
  v16 = *(a1 + 24);
  v73[0] = *(a1 + 8);
  v73[1] = v16;
  v17 = *(a1 + 56);
  v69 = *(a1 + 40);
  v70 = v17;
  v18 = *(a1 + 88);
  v71 = *(a1 + 72);
  v72 = v18;
  v19 = *(a1 + 24);
  v67 = *(a1 + 8);
  v68 = v19;
  sub_225A0E2F8(v73, &v61);
  v20 = HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(v13, v12, &v67, a2);
  if (v4)
  {
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v61 = v67;
    v62 = v68;
    sub_225A0E354(&v61);
    v57 = "CoreIDVShared/HPKEKwV1.swift";
    v28 = v4;
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v59 = swift_allocError();
    v30 = v29;
    swift_getErrorValue();
    v31 = v60;
    v32 = v4;
    sub_225B21FAC(v31, &v67);

    v33 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      v56 = v67;
      v54 = *(&v69 + 1);
      v34 = v69;
      v55 = v68;
    }

    else
    {
      *&v67 = v4;
      v35 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v36 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v38 = [v36 code];
        v39 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v39;
        *(inited + 40) = v38;
        v34 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v40 = v4;
        v55 = 0uLL;
        v56 = 0;
        v33 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v67 = v4;
        v41 = v4;
        v42 = sub_225CCE954();
        v43 = swift_dynamicCast();
        v44 = *(v42 - 8);
        (*(v44 + 56))(v11, v43 ^ 1u, 1, v42);
        LODWORD(v44) = (*(v44 + 48))(v11, 1, v42);
        sub_2259CB640(v11, &unk_27D73B050);
        if (v44)
        {
          v45 = 0;
        }

        else
        {
          v45 = 23;
        }

        v56 = v45;
        v33 = MEMORY[0x277D84F90];
        v34 = sub_225B2C374(MEMORY[0x277D84F90]);
        v46 = v4;
        v55 = 0uLL;
      }

      v54 = v4;
    }

    v47 = v57 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v34;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v67);

    v49 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
    }

    v51 = *(v33 + 2);
    v50 = *(v33 + 3);
    if (v51 >= v50 >> 1)
    {
      v33 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v33);
    }

    *(v33 + 2) = v51 + 1;
    v52 = &v33[56 * v51];
    *(v52 + 4) = 0;
    *(v52 + 5) = 0;
    *(v52 + 6) = 0xD00000000000001CLL;
    *(v52 + 7) = 0x8000000225D17220;
    *(v52 + 8) = 0xD000000000000038;
    *(v52 + 9) = v47;
    *(v52 + 10) = 668;
    *v30 = v56;
    v53 = v55;
    *(v30 + 8) = v33;
    *(v30 + 16) = v53;
    *(v30 + 32) = v49;
    *(v30 + 40) = v54;
    swift_willThrow();
  }

  else
  {
    v22 = v20;
    v23 = v21;
    v58 = v11;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v61 = v67;
    v62 = v68;
    sub_225A0E354(&v61);
    v24 = a3[3];
    v25 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v24);
    v26 = *(v25 + 8);
    v27 = sub_225A0E3A8();
    v26(&type metadata for DigitalPresentmentResponseTopics, v22, v23, &type metadata for DigitalPresentmentResponseTopics, v27, v24, v25);
    sub_2259BEF00(v22, v23);
  }
}

void sub_225A0D7F8(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v54 - v10;
  v13 = *(a1 + 104);
  v12 = *(a1 + 112);
  v14 = *(a1 + 56);
  v73[2] = *(a1 + 40);
  v73[3] = v14;
  v15 = *(a1 + 88);
  v73[4] = *(a1 + 72);
  v73[5] = v15;
  v16 = *(a1 + 24);
  v73[0] = *(a1 + 8);
  v73[1] = v16;
  v17 = *(a1 + 56);
  v69 = *(a1 + 40);
  v70 = v17;
  v18 = *(a1 + 88);
  v71 = *(a1 + 72);
  v72 = v18;
  v19 = *(a1 + 24);
  v67 = *(a1 + 8);
  v68 = v19;
  sub_225A0E2F8(v73, &v61);
  v20 = HPKESuiteKwV1.openMessageHPKEWithoutDecoding(data:params:authenticationContext:)(v13, v12, &v67, a2);
  if (v4)
  {
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v61 = v67;
    v62 = v68;
    sub_225A0E354(&v61);
    v57 = "CoreIDVShared/HPKEKwV1.swift";
    v28 = v4;
    v58 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v59 = swift_allocError();
    v30 = v29;
    swift_getErrorValue();
    v31 = v60;
    v32 = v4;
    sub_225B21FAC(v31, &v67);

    v33 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      v56 = v67;
      v54 = *(&v69 + 1);
      v34 = v69;
      v55 = v68;
    }

    else
    {
      *&v67 = v4;
      v35 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48);
      sub_2259E4540();
      if (swift_dynamicCast())
      {
        v36 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_225CD30F0;
        *(inited + 32) = 20;
        v38 = [v36 code];
        v39 = MEMORY[0x277D83BF8];
        *(inited + 64) = MEMORY[0x277D83B88];
        *(inited + 72) = v39;
        *(inited + 40) = v38;
        v34 = sub_225B2C374(inited);
        swift_setDeallocating();
        sub_2259CB640(inited + 32, &qword_27D73B060);

        v40 = v4;
        v55 = 0uLL;
        v56 = 0;
        v33 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v67 = v4;
        v41 = v4;
        v42 = sub_225CCE954();
        v43 = swift_dynamicCast();
        v44 = *(v42 - 8);
        (*(v44 + 56))(v11, v43 ^ 1u, 1, v42);
        LODWORD(v44) = (*(v44 + 48))(v11, 1, v42);
        sub_2259CB640(v11, &unk_27D73B050);
        if (v44)
        {
          v45 = 0;
        }

        else
        {
          v45 = 23;
        }

        v56 = v45;
        v33 = MEMORY[0x277D84F90];
        v34 = sub_225B2C374(MEMORY[0x277D84F90]);
        v46 = v4;
        v55 = 0uLL;
      }

      v54 = v4;
    }

    v47 = v57 | 0x8000000000000000;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v67 = v34;
    sub_225B2C4A0(v58, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v67);

    v49 = v67;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_225B29AA0(0, *(v33 + 2) + 1, 1, v33);
    }

    v51 = *(v33 + 2);
    v50 = *(v33 + 3);
    if (v51 >= v50 >> 1)
    {
      v33 = sub_225B29AA0((v50 > 1), v51 + 1, 1, v33);
    }

    *(v33 + 2) = v51 + 1;
    v52 = &v33[56 * v51];
    *(v52 + 4) = 0;
    *(v52 + 5) = 0;
    *(v52 + 6) = 0xD00000000000001CLL;
    *(v52 + 7) = 0x8000000225D17220;
    *(v52 + 8) = 0xD000000000000038;
    *(v52 + 9) = v47;
    *(v52 + 10) = 668;
    *v30 = v56;
    v53 = v55;
    *(v30 + 8) = v33;
    *(v30 + 16) = v53;
    *(v30 + 32) = v49;
    *(v30 + 40) = v54;
    swift_willThrow();
  }

  else
  {
    v22 = v20;
    v23 = v21;
    v58 = v11;
    v63 = v69;
    v64 = v70;
    v65 = v71;
    v66 = v72;
    v61 = v67;
    v62 = v68;
    sub_225A0E354(&v61);
    v24 = a3[3];
    v25 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v24);
    v26 = *(v25 + 8);
    v27 = sub_225A05DB4();
    v26(&type metadata for ISO18013Response, v22, v23, &type metadata for ISO18013Response, v27, v24, v25);
    sub_2259BEF00(v22, v23);
  }
}

unint64_t sub_225A0DDF8()
{
  result = qword_27D73AFE0;
  if (!qword_27D73AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFE0);
  }

  return result;
}

uint64_t sub_225A0DE54(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A0DEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225A0DF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPKEPrivateKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_225A0DF88()
{
  result = qword_27D73AFF8;
  if (!qword_27D73AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73AFF8);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_225A0DFF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_225A0E04C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_225A0E0DC()
{
  result = type metadata accessor for ISO18013SessionTranscript(319);
  if (v1 <= 0x3F)
  {
    result = sub_225CCD424();
    if (v2 <= 0x3F)
    {
      result = sub_225CCD3A4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_225A0E194()
{
  result = qword_27D73B010;
  if (!qword_27D73B010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B010);
  }

  return result;
}

unint64_t sub_225A0E1EC()
{
  result = qword_27D73B018;
  if (!qword_27D73B018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B018);
  }

  return result;
}

unint64_t sub_225A0E244()
{
  result = qword_27D73B020;
  if (!qword_27D73B020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B020);
  }

  return result;
}

uint64_t sub_225A0E298(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_225A0E3A8()
{
  result = qword_27D73B038;
  if (!qword_27D73B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B038);
  }

  return result;
}

unint64_t sub_225A0E3FC()
{
  result = qword_27D73B040;
  if (!qword_27D73B040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73B040);
  }

  return result;
}

uint64_t sub_225A0E458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_225A0E4A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225A0E4F0()
{
  v0 = sub_225CCE474();
  v2 = v1;
  if (v0 == sub_225CCE474() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_225CCF934();
  }

  return v5 & 1;
}

uint64_t sub_225A0E5A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = a1;
  if (a1 <= 4u)
  {
    v12 = 0x8000000225D0B210;
    v13 = 0x8000000225D0B230;
    v14 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v14 = 0xD000000000000022;
      v13 = 0x8000000225D0B250;
    }

    if (a1 == 2)
    {
      v14 = 0xD00000000000001DLL;
    }

    else
    {
      v12 = v13;
    }

    v15 = 0x8000000225D0B1D0;
    v16 = 0xD000000000000016;
    if (a1)
    {
      v16 = 0xD00000000000001DLL;
      v15 = 0x8000000225D0B1F0;
    }

    if (a1 <= 1u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v14;
    }

    if (v3 <= 1)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x8000000225D0B2B0;
    v5 = 0xD000000000000028;
    v6 = 0x8000000225D0B2E0;
    if (a1 == 9)
    {
      v7 = 0xD000000000000021;
    }

    else
    {
      v7 = 0xD000000000000028;
    }

    if (a1 != 9)
    {
      v6 = 0x8000000225D0B310;
    }

    if (a1 != 8)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x645F797269707865;
    v9 = 0x8000000225D0B280;
    if (a1 == 6)
    {
      v9 = 0xEB00000000657461;
    }

    else
    {
      v8 = 0xD000000000000021;
    }

    if (a1 == 5)
    {
      v8 = 0x61645F6575737369;
      v9 = 0xEA00000000006574;
    }

    if (a1 <= 7u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 7)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0x8000000225D0B1D0;
        if (v10 != 0xD000000000000016)
        {
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      v18 = "domestic_vehicle_restrictions";
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v2 = 0x8000000225D0B230;
          if (v10 != 0xD00000000000001BLL)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v2 = 0x8000000225D0B250;
          if (v10 != 0xD000000000000022)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_64;
      }

      v18 = "domestic_vehicle_endorsements";
    }

    v2 = (v18 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001DLL)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a2 <= 7u)
  {
    if (a2 == 5)
    {
      if (v10 != 0x61645F6575737369)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    if (a2 == 6)
    {
      v2 = 0xEB00000000657461;
      if (v10 != 0x645F797269707865)
      {
        goto LABEL_66;
      }

      goto LABEL_64;
    }

    v17 = "domestic_vehicle_restriction_code";
LABEL_60:
    v2 = (v17 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000021)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (a2 == 8)
  {
    v19 = "domestic_vehicle_restriction_description";
  }

  else
  {
    if (a2 == 9)
    {
      v17 = "domestic_vehicle_endorsement_code";
      goto LABEL_60;
    }

    v19 = "domestic_vehicle_endorsement_description";
  }

  v2 = (v19 - 32) | 0x8000000000000000;
  if (v10 != 0xD000000000000028)
  {
LABEL_66:
    v20 = sub_225CCF934();
    goto LABEL_67;
  }

LABEL_64:
  if (v11 != v2)
  {
    goto LABEL_66;
  }

  v20 = 1;
LABEL_67:

  return v20 & 1;
}

uint64_t sub_225A0E8BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0x656D737365737361;
  v5 = 0xEB0000000073746ELL;
  v6 = 0x6269737365636361;
  v7 = 0xED00007974696C69;
  if (a1 != 4)
  {
    v6 = 0x6E6F6974706163;
    v7 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x656C746954627573;
  if (a1 != 1)
  {
    v9 = 0x7374656C6C7562;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xEB0000000073746ELL;
      if (v10 != 0x656D737365737361)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xED00007974696C69;
      if (v10 != 0x6269737365636361)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E6F6974706163)
      {
LABEL_34:
        v13 = sub_225CCF934();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656C746954627573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7374656C6C7562)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x656C746974)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_225A0EAC4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006574;
  v3 = 0x61645F6575737369;
  v4 = a1;
  v5 = 0xE400000000000000;
  v6 = 1852270963;
  v7 = 0xE500000000000000;
  if (a1 != 5)
  {
    v6 = 0x65756C6176;
    v5 = 0xE500000000000000;
  }

  v8 = 0x7365646F63;
  if (a1 != 3)
  {
    v8 = 1701080931;
    v7 = 0xE400000000000000;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xD000000000000015;
  v10 = 0x8000000225D0AF50;
  v11 = 0x645F797269707865;
  v12 = 0xEB00000000657461;
  if (a1 == 1)
  {
    v11 = 0x61645F6575737369;
    v12 = 0xEA00000000006574;
  }

  if (a1)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000225D0AF50;
      if (v13 != 0xD000000000000015)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    if (a2 != 1)
    {
      v2 = 0xEB00000000657461;
      if (v13 != 0x645F797269707865)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE400000000000000;
        if (v13 != 1852270963)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x65756C6176)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0xE500000000000000;
      if (v13 != 0x7365646F63)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0xE400000000000000;
    v3 = 1701080931;
  }

  if (v13 != v3)
  {
LABEL_37:
    v15 = sub_225CCF934();
    goto LABEL_38;
  }

LABEL_34:
  if (v14 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}