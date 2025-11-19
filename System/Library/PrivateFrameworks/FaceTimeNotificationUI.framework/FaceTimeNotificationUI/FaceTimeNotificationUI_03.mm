unint64_t sub_24AA63C74()
{
  result = qword_27EF860E8;
  if (!qword_27EF860E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860F0, &qword_24AAB91C8);
    sub_24AA63B30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF860E8);
  }

  return result;
}

void sub_24AA63D00(uint64_t a1@<X1>, char *a2@<X8>)
{
  swift_getObjectType();
  v4 = *(a1 + 8);
  swift_unknownObjectRetain();
  v5 = sub_24AAB35A4();
  v6 = sub_24AAB3574();
  if ([v5 isFaceTimeProvider])
  {
    swift_unknownObjectRelease();

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v8 = [v5 isTelephonyProvider];
    swift_unknownObjectRelease();

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v7 = 3;
    }
  }

  *a2 = v7;
}

uint64_t CallAvatarView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = sub_24AAB4404();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860F8, &qword_24AAB91D0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = *(a1 + 24);
  v36 = *(a1 + 16);
  v37 = v11;
  sub_24AAB3F34();
  v12 = sub_24AAB3EE4();
  v38 = *(v12 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v50 = OpaqueTypeConformance2;
  v51 = WitnessTable;
  v18 = swift_getWitnessTable();
  v48 = v12;
  v49 = v18;
  v35 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v20 = *(OpaqueTypeMetadata2 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = &v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - v25;
  v27 = v2;
  v28 = *(v2 + 16);
  v33 = *v27;
  sub_24AAB2F04();
  sub_24AAB4D24();
  v44 = v36;
  v45 = v37;
  v46 = v33;
  v47 = v28;
  sub_24AAB4914();
  (*(v39 + 8))(v10, v7);
  v29 = v40;
  sub_24AAB43F4();
  sub_24AAB4894();
  (*(v41 + 8))(v29, v42);
  (*(v38 + 8))(v15, v12);
  v48 = v12;
  v49 = v18;
  v30 = swift_getOpaqueTypeConformance2();
  sub_24AA8373C(v24, OpaqueTypeMetadata2, v30);
  v31 = *(v20 + 8);
  v31(v24, OpaqueTypeMetadata2);
  sub_24AA8373C(v26, OpaqueTypeMetadata2, v30);
  return (v31)(v26, OpaqueTypeMetadata2);
}

uint64_t sub_24AA64228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  v8 = *(v7 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v18 - v13;
  v15(v12);
  sub_24AA8373C(v11, a4, a5);
  v16 = *(v7 + 8);
  v16(v11, a4);
  sub_24AA8373C(v14, a4, a5);
  return (v16)(v14, a4);
}

uint64_t CallBadgeView.Badge.hashValue.getter()
{
  v1 = *v0;
  sub_24AAB54F4();
  MEMORY[0x24C225D50](v1);
  return sub_24AAB5524();
}

uint64_t CallBadgeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v2 = sub_24AAB4AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86100, &qword_24AAB91D8);
  v7 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76);
  v9 = &v69 - v8;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86108, &qword_24AAB91E0);
  v10 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v12 = &v69 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86110, &qword_24AAB91E8);
  v13 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v15 = &v69 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86118, &qword_24AAB91F0);
  v16 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75);
  v18 = &v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86120, &qword_24AAB91F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v69 - v21;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86128, &qword_24AAB9200);
  v23 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v25 = &v69 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86130, &qword_24AAB9208);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v73 = &v69 - v30;
  v31 = *v1;
  if (v31 <= 1)
  {
    v71 = v29;
    v72 = v28;
    if (v31)
    {
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v58 = qword_27EF919A8;
      sub_24AAB4B24();
      (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
      v59 = sub_24AAB4B14();

      (*(v3 + 8))(v6, v2);
      sub_24AAB4D44();
      sub_24AAB3D54();
      v87 = v89;
      v86 = v91;
      *&v78 = v59;
      *(&v78 + 1) = v88;
      LOBYTE(v79) = v89;
      *(&v79 + 1) = v90;
      LOBYTE(v80[0]) = v91;
      *(v80 + 8) = v92;
      __asm { FMOV            V0.2D, #4.0 }

      *(&v80[1] + 8) = _Q0;
      sub_24AAB4164();
      v61 = sub_24AAB4754();
      v63 = v62;
      LOBYTE(v59) = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86138, &qword_24AAB9210);
      sub_24AA655E0();
      sub_24AAB4854();
      sub_24AA158E8(v61, v63, v59 & 1);

      v84 = v80[1];
      *&v85 = *&v80[2];
      v82 = v79;
      v83 = v80[0];
      v81 = v78;
      sub_24AA169C4(&v81, &qword_27EF86138, &qword_24AAB9210);
      v46 = &qword_27EF86100;
      v47 = &qword_24AAB91D8;
      sub_24AA1695C(v9, v15, &qword_27EF86100, &qword_24AAB91D8);
      swift_storeEnumTagMultiPayload();
      sub_24AA65720();
      sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
      sub_24AAB42B4();
      sub_24AA1695C(v18, v12, &qword_27EF86118, &qword_24AAB91F0);
      swift_storeEnumTagMultiPayload();
      sub_24AA656F0();
      v48 = v73;
      sub_24AAB42B4();
      sub_24AA169C4(v18, &qword_27EF86118, &qword_24AAB91F0);
      v49 = v9;
    }

    else
    {
      sub_24AAB4AC4();
      sub_24AAB41D4();
      v32 = sub_24AAB41E4();
      (*(*(v32 - 8) + 56))(v22, 0, 1, v32);
      v33 = sub_24AAB4B04();

      sub_24AA169C4(v22, &qword_27EF86120, &qword_24AAB91F8);
      v34 = sub_24AAB4A14();
      sub_24AAB4D44();
      sub_24AAB3D54();
      v87 = v89;
      v86 = v91;
      *&v78 = v33;
      *(&v78 + 1) = v34;
      *&v79 = v88;
      BYTE8(v79) = v89;
      *&v80[0] = v90;
      BYTE8(v80[0]) = v91;
      __asm { FMOV            V1.2D, #2.0 }

      v80[1] = v92;
      v80[2] = _Q1;
      sub_24AAB4164();
      if (qword_27EF84C50 != -1)
      {
        swift_once();
      }

      v40 = qword_27EF919A8;
      v41 = sub_24AAB4754();
      v43 = v42;
      v45 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86170, &qword_24AAB9220);
      sub_24AA65750();
      sub_24AAB4854();
      sub_24AA158E8(v41, v43, v45 & 1);

      v84 = v80[1];
      v85 = v80[2];
      v82 = v79;
      v83 = v80[0];
      v81 = v78;
      sub_24AA169C4(&v81, &qword_27EF86170, &qword_24AAB9220);
      v46 = &qword_27EF86128;
      v47 = &qword_24AAB9200;
      sub_24AA1695C(v25, v15, &qword_27EF86128, &qword_24AAB9200);
      swift_storeEnumTagMultiPayload();
      sub_24AA65720();
      sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
      sub_24AAB42B4();
      sub_24AA1695C(v18, v12, &qword_27EF86118, &qword_24AAB91F0);
      swift_storeEnumTagMultiPayload();
      sub_24AA656F0();
      v48 = v73;
      sub_24AAB42B4();
      sub_24AA169C4(v18, &qword_27EF86118, &qword_24AAB91F0);
      v49 = v25;
    }

    v56 = v46;
    v57 = v47;
LABEL_14:
    sub_24AA169C4(v49, v56, v57);
    v65 = v77;
    sub_24AA65A34(v48, v77);
    return (*(v71 + 56))(v65, 0, 1, v72);
  }

  if (v31 == 2)
  {
    v71 = v29;
    v72 = v28;
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v50 = qword_27EF919A8;
    sub_24AAB4B24();
    (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
    v51 = sub_24AAB4B14();

    (*(v3 + 8))(v6, v2);
    sub_24AAB4D44();
    sub_24AAB3D54();
    v87 = v89;
    v86 = v91;
    *&v78 = v51;
    *(&v78 + 1) = v88;
    LOBYTE(v79) = v89;
    *(&v79 + 1) = v90;
    LOBYTE(v80[0]) = v91;
    *(v80 + 8) = v92;
    *&v80[2] = 0;
    *(&v80[1] + 1) = 0;
    sub_24AAB4164();
    v52 = sub_24AAB4754();
    v54 = v53;
    LOBYTE(v51) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86138, &qword_24AAB9210);
    sub_24AA655E0();
    sub_24AAB4854();
    sub_24AA158E8(v52, v54, v51 & 1);

    v84 = v80[1];
    *&v85 = *&v80[2];
    v82 = v79;
    v83 = v80[0];
    v81 = v78;
    sub_24AA169C4(&v81, &qword_27EF86138, &qword_24AAB9210);
    sub_24AA1695C(v9, v12, &qword_27EF86100, &qword_24AAB91D8);
    swift_storeEnumTagMultiPayload();
    sub_24AA656F0();
    sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
    v48 = v73;
    sub_24AAB42B4();
    v49 = v9;
    v56 = &qword_27EF86100;
    v57 = &qword_24AAB91D8;
    goto LABEL_14;
  }

  v67 = *(v29 + 56);
  v68 = v77;

  return v67(v68, 1, 1);
}

void AvatarView.makeUIViewController(context:)()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBF0]) init];
  sub_24AA65AA4();
  v3 = sub_24AAB5014();
  [v2 setContacts_];

  v4 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v5 = [v4 callerIDSyncMacEnabled];

  if (v5)
  {
    if (v1 >> 62)
    {
      if (sub_24AAB52F4() != 1 || !sub_24AAB52F4())
      {
        return;
      }
    }

    else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      return;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ([*(v1 + 32) contactType] == 1)
      {
        v6 = [v2 view];
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          [v7 setStyle_];
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void AvatarView.updateUIViewController(_:context:)(void *a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_24AA65AA4();
    v6 = a1;
    v7 = sub_24AAB5014();
    [v5 setContacts_];
  }
}

void sub_24AA65438(void *a1)
{
  v3 = *v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    sub_24AA65AA4();
    v6 = a1;
    v7 = sub_24AAB5014();
    [v5 setContacts_];
  }
}

uint64_t sub_24AA654F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA662A4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24AA65554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA662A4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24AA655B8()
{
  sub_24AA662A4();
  sub_24AAB4474();
  __break(1u);
}

unint64_t sub_24AA655E0()
{
  result = qword_27EF86140;
  if (!qword_27EF86140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86138, &qword_24AAB9210);
    sub_24AA6566C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86140);
  }

  return result;
}

unint64_t sub_24AA6566C()
{
  result = qword_27EF86148;
  if (!qword_27EF86148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86150, &qword_24AAB9218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86148);
  }

  return result;
}

unint64_t sub_24AA65750()
{
  result = qword_27EF86168;
  if (!qword_27EF86168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86170, &qword_24AAB9220);
    sub_24AA657DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86168);
  }

  return result;
}

unint64_t sub_24AA657DC()
{
  result = qword_27EF86178;
  if (!qword_27EF86178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86180, &qword_24AAB9228);
    sub_24AA65868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86178);
  }

  return result;
}

unint64_t sub_24AA65868()
{
  result = qword_27EF86188;
  if (!qword_27EF86188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86190, &unk_24AAB9230);
    sub_24AA658F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86188);
  }

  return result;
}

unint64_t sub_24AA658F4()
{
  result = qword_27EF852E8;
  if (!qword_27EF852E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852E8);
  }

  return result;
}

unint64_t sub_24AA65958()
{
  result = qword_27EF84FE8;
  if (!qword_27EF84FE8)
  {
    sub_24AAB44A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF84FE8);
  }

  return result;
}

uint64_t sub_24AA659B0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24AA65958();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24AA65A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86130, &qword_24AAB9208);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AA65AA4()
{
  result = qword_27EF861A0;
  if (!qword_27EF861A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF861A0);
  }

  return result;
}

unint64_t sub_24AA65B38()
{
  result = qword_27EF861A8;
  if (!qword_27EF861A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF861A8);
  }

  return result;
}

unint64_t sub_24AA65BAC()
{
  result = qword_27EF861B0[0];
  if (!qword_27EF861B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF861B0);
  }

  return result;
}

uint64_t sub_24AA65C00()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AA65C5C(uint64_t *a1, int a2)
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

uint64_t sub_24AA65CA4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CallBadgeView(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t storeEnumTagSinglePayload for CallBadgeView(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CallBadgeView.Badge(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CallBadgeView.Badge(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_24AA65FB8(uint64_t *a1, int a2)
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

uint64_t sub_24AA66000(uint64_t result, int a2, int a3)
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

uint64_t sub_24AA6604C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860F8, &qword_24AAB91D0);
  sub_24AAB3F34();
  sub_24AAB3EE4();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AA66144()
{
  result = qword_27EF86238;
  if (!qword_27EF86238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86240, qword_24AAB94F8);
    sub_24AA661F4(&qword_27EF86248, &qword_27EF86130, &qword_24AAB9208, sub_24AA656F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86238);
  }

  return result;
}

uint64_t sub_24AA661F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24AA659B0(&qword_27EF86198, &qword_27EF86100, &qword_24AAB91D8, sub_24AA655E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AA662A4()
{
  result = qword_27EF86250;
  if (!qword_27EF86250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86250);
  }

  return result;
}

id sub_24AA66320()
{
  v1 = *v0;
  v2 = objc_allocWithZone(type metadata accessor for AudioPowerSpectrumView());
  return sub_24AA66794(v1);
}

uint64_t sub_24AA66354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA68880();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24AA663B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA68880();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24AA6641C()
{
  sub_24AA68880();
  sub_24AAB4284();
  __break(1u);
}

uint64_t sub_24AA66444()
{
  result = sub_24AAB5164();
  dword_27EF91998 = v1;
  *algn_27EF9199C = v2;
  dword_27EF919A0 = v3;
  return result;
}

id sub_24AA66490()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD9E08]) init];
    [v4 setScale_];
    v5 = v4;
    v6 = sub_24AAB4EE4();
    [v5 setCompositingFilter_];

    LODWORD(v7) = 1057803469;
    [v5 setOpacity_];

    v8 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

char *sub_24AA66570()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView);
  }

  else
  {
    v4 = sub_24AA665D0();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_24AA665D0()
{
  type metadata accessor for DeviceWaveformView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_opt_self() orangeColor];
  v2 = *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor];
  *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor] = v1;
  v3 = v1;

  v4 = v0;
  [v4 setNeedsLayout];

  v5 = [v4 layer];
  CATransform3DMakeScale(&v7, -1.0, 1.0, 1.0);
  [v5 setTransform_];

  return v4;
}

char *sub_24AA666C0()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView);
  }

  else
  {
    type metadata accessor for DeviceWaveformView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [objc_opt_self() systemGreenColor];
    v6 = *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor];
    *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor] = v5;
    v7 = v5;

    [v4 setNeedsLayout];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_24AA66794(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_cancellables] = MEMORY[0x277D84FA0];
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_24AAB3B64();
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer] = 0;
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView] = 0;
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView] = 0;
  *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_viewModel] = a1;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 clearColor];
  [v11 setBackgroundColor_];

  v13 = sub_24AA666C0();
  [v11 addSubview_];

  v14 = sub_24AA66570();
  [v11 addSubview_];

  v15 = [v11 layer];
  v16 = sub_24AA66490();
  [v15 addSublayer_];

  sub_24AA66968();
  return v11;
}

uint64_t sub_24AA66968()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = v34 - v3;
  v4 = sub_24AAB5254();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862B0, &qword_24AAB9678);
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862B8, &qword_24AAB9680);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862C0, &qword_24AAB9688);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_viewModel);
  sub_24AA693E8();
  swift_beginAccess();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862C8, &unk_24AAB9690);
  sub_24AAB3BA4();
  swift_endAccess();
  v37 = sub_24AA16A68(&qword_27EF862D0, &qword_27EF862B8, &qword_24AAB9680);
  v36 = sub_24AA68158();
  sub_24AAB3C34();
  v22 = *(v12 + 8);
  v34[1] = v12 + 8;
  v35 = v22;
  v22(v15, v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24AA16A68(&qword_27EF862E0, &qword_27EF862C0, &qword_24AAB9688);
  sub_24AAB3C44();

  v23 = *(v17 + 8);
  v34[0] = v17 + 8;
  v23(v20, v16);
  v24 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_cancellables;
  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  swift_beginAccess();
  sub_24AAB3BA4();
  swift_endAccess();
  sub_24AAB3C34();
  v35(v15, v11);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_24AAB3C44();

  v23(v20, v16);
  v39 = v24;
  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v48 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough);

  v25 = v40;
  sub_24AAB5244();
  v26 = [objc_opt_self() mainRunLoop];
  v47 = v26;
  v27 = sub_24AAB5234();
  v28 = v42;
  (*(*(v27 - 8) + 56))(v42, 1, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
  sub_24AA68228();
  sub_24AA16A68(&qword_27EF862F0, &qword_27EF862A8, &unk_24AAB9668);
  sub_24AA68274();
  v29 = v41;
  sub_24AAB3C24();
  sub_24AA682CC(v28);

  (*(v43 + 8))(v25, v44);

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_24AA68334;
  *(v31 + 24) = v30;
  sub_24AA16A68(&qword_27EF86300, &qword_27EF862B0, &qword_24AAB9678);
  v32 = v45;
  sub_24AAB3C44();

  (*(v46 + 8))(v29, v32);
  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();
}

uint64_t sub_24AA6720C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough);
    v2 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
    sub_24AA16A68(&qword_27EF86308, &qword_27EF862A8, &unk_24AAB9668);
    sub_24AAB3B84();
  }

  return result;
}

void sub_24AA672DC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24AA67330();
  }
}

void sub_24AA67330()
{
  v1 = sub_24AA666C0();
  v2 = *&v1[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power];

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView;
  v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView);
  v5 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_viewModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v4;
  sub_24AAB3BB4();

  v7 = *&v6[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power];
  *&v6[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power] = v26[0];

  [v6 setNeedsLayout];

  [*(v0 + v3) setNeedsLayout];
  v8 = *(*(v0 + v3) + OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power);

  sub_24AA68600(v2, v8);

  v9 = sub_24AA66570();
  v10 = *&v9[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power];

  v11 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView;
  v12 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  sub_24AAB3BB4();

  v14 = *&v13[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power];
  *&v13[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power] = v26[0];

  [v13 setNeedsLayout];

  [*(v0 + v11) setNeedsLayout];
  v15 = *(*(v0 + v11) + OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power);

  sub_24AA68600(v10, v15);

  if (qword_27EF84C48 != -1)
  {
    swift_once();
  }

  sub_24AAB5164();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = objc_opt_self();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v17;
  *(v24 + 28) = v19;
  *(v24 + 32) = v21;
  v26[4] = sub_24AA68800;
  v26[5] = v24;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 1107296256;
  v26[2] = sub_24AA67840;
  v26[3] = &block_descriptor_2;
  v25 = _Block_copy(v26);

  [v22 animateWithDuration:0 delay:v25 usingSpringWithDamping:0 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.0];
  _Block_release(v25);
}

void sub_24AA6769C(float a1, float a2, float a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_24AA68860;
    *(v10 + 24) = v9;
    aBlock[4] = sub_24AA68374;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24AA67818;
    aBlock[3] = &block_descriptor_40;
    v11 = _Block_copy(aBlock);
    v12 = v7;

    *&v13 = a1;
    *&v14 = a2;
    *&v15 = a3;
    [v8 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
    _Block_release(v11);
  }
}

uint64_t sub_24AA67840(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id sub_24AA678B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24AA6799C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
  *&v4[v9] = [objc_opt_self() systemGreenColor];
  v10 = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews] = v10;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for DeviceWaveformView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = [v11 layer];
  v13 = sub_24AAB4EE4();
  [v12 setCompositingFilter_];

  sub_24AA67E80();
  return v11;
}

uint64_t sub_24AA67B98()
{
  v20.receiver = v0;
  v20.super_class = type metadata accessor for DeviceWaveformView();
  objc_msgSendSuper2(&v20, sel_layoutSubviews);
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24AAB52F4())
  {
    v18 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
    v19 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_power;

    if (!i)
    {
      break;
    }

    v6 = 0;
    Width = (Width + -38.75) / 30.0;
    v7 = Height - (Width + Width) - Width;
    Height = Width * 0.5;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C225BD0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v4 + 8 * v6 + 32);
      }

      v13 = v12;
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = *&v0[v19];
      v16 = 0.0;
      if (v6 < *(v15 + 16))
      {
        v16 = *(v15 + 4 * v6 + 32);
      }

      v8 = Width + v7 * v16;
      [v0 bounds];
      v9 = CGRectGetHeight(v23) * 0.5;
      [v13 setBackgroundColor_];
      [v13 setBounds_];
      v10 = [v13 layer];
      [v10 setPosition_];

      v11 = [v13 layer];
      [v11 setCornerRadius_];

      ++v6;
      if (v14 == i)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_24AA67E80()
{
  v1 = v0;
  v2 = *MEMORY[0x277CDA138];
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_barColor;
  v4 = 30;
  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUIP33_5E4BFF483B7A95AA7E6FD0B9F3B21C1818DeviceWaveformView_bandViews;
  do
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    v7 = [v6 layer];
    [v7 setAnchorPoint_];

    [v6 setBackgroundColor_];
    v8 = [v6 layer];
    [v8 setAllowsEdgeAntialiasing_];

    v9 = [v6 layer];
    [v9 setCornerCurve_];

    [v1 addSubview_];
    swift_beginAccess();
    v10 = v6;
    MEMORY[0x24C225850]();
    if (*((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((*&v1[v5] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_24AAB5044();
    }

    sub_24AAB5064();
    swift_endAccess();

    --v4;
  }

  while (v4);
}

id sub_24AA68038()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceWaveformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24AA68104()
{
  result = qword_27EF862A0;
  if (!qword_27EF862A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF862A0);
  }

  return result;
}

unint64_t sub_24AA68158()
{
  result = qword_27EF862D8;
  if (!qword_27EF862D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF863D0, qword_24AAB97D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF862D8);
  }

  return result;
}

uint64_t sub_24AA681D4()
{
  MEMORY[0x24C2266E0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24AA68228()
{
  result = qword_27EF862E8;
  if (!qword_27EF862E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF862E8);
  }

  return result;
}

unint64_t sub_24AA68274()
{
  result = qword_27EF862F8;
  if (!qword_27EF862F8)
  {
    sub_24AA68228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF862F8);
  }

  return result;
}

uint64_t sub_24AA682CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA6833C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA68374()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24AA683D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24AAB3BB4();

  *a2 = v5;
  return result;
}

uint64_t sub_24AA68490(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return sub_24AAB3BC4();
}

void sub_24AA6852C()
{
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_cancellables) = MEMORY[0x277D84FA0];
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView_animateUpdatesPassthrough;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862A8, &unk_24AAB9668);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  *(v0 + v1) = sub_24AAB3B64();
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___backdropLayer) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___localAudioView) = 0;
  *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI22AudioPowerSpectrumView____lazy_storage___remoteAudioView) = 0;
  sub_24AAB53F4();
  __break(1u);
}

uint64_t sub_24AA68600(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    if (qword_27EF84C48 != -1)
    {
      return swift_once();
    }

    return result;
  }

  if (!v2)
  {
LABEL_23:
    if (qword_27EF84C48 != -1)
    {
      return swift_once();
    }

    return result;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  v5 = 1 - v2;
  v6 = 0.0;
  while (v5 != 1)
  {
    v7 = *v3;
    if (*v4 >= *v3)
    {
      v8 = *v3;
    }

    else
    {
      v8 = *v4;
    }

    if (v7 <= *v4)
    {
      v7 = *v4;
    }

    v9 = v7 - v8;
    if (v9 >= 0.25)
    {
      if (v6 < 0.25)
      {
        v6 = 0.25;
      }
    }

    else if (v9 >= 0.1)
    {
      if (v9 > v6)
      {
        v6 = v9;
      }
    }

    else if (v6 < 0.1)
    {
      v6 = 0.1;
      if (!v5)
      {
        goto LABEL_23;
      }

      goto LABEL_7;
    }

    if (!v5)
    {
      goto LABEL_23;
    }

LABEL_7:
    ++v5;
    ++v4;
    ++v3;
    if (v5 == 1)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return swift_once();
}

uint64_t sub_24AA687C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 36, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24AA68828()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_24AA68880()
{
  result = qword_27EF86310;
  if (!qword_27EF86310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86310);
  }

  return result;
}

id sub_24AA688E0()
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27EF919A8 = result;
  return result;
}

id sub_24AA6896C()
{
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v1 = qword_27EF919A8;
  qword_27EF919B0 = qword_27EF919A8;
  *algn_27EF919B8 = 0x617A696C61636F4CLL;
  qword_27EF919C0 = 0xEB00000000656C62;

  return v1;
}

uint64_t sub_24AA68A1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24AAB3BB4();

  return v1;
}

char *sub_24AA68A88(NSObject *a1)
{
  v2 = v1;
  v89 = a1;
  v3 = sub_24AAB3A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v77 = (&v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v6);
  v76 = (&v74 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v75 = (&v74 - v11);
  MEMORY[0x28223BE20](v10);
  v78 = (&v74 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF862C8, &unk_24AAB9690);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v74 - v16;
  v18 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v3, qword_27EF919D8);
  v86 = v4;
  v87 = v3;
  v20 = *(v4 + 16);
  v88 = v18;
  v79 = v20;
  v80 = v4 + 16;
  v20(&v2[v18], v19, v3);
  v21 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_callCenter;
  *&v2[v21] = [objc_opt_self() sharedInstance];
  v81 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller] = 0;
  v82 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer;
  *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer] = 0;
  v22 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel__localPowerSpectrum;
  v23 = sub_24AAB5054();
  *(v23 + 16) = 30;
  *(v23 + 32) = 0u;
  *(v23 + 48) = 0u;
  *(v23 + 64) = 0u;
  *(v23 + 80) = 0u;
  *(v23 + 96) = 0u;
  *(v23 + 112) = 0u;
  *(v23 + 128) = 0u;
  *(v23 + 144) = 0;
  v92 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF863D0, qword_24AAB97D0);
  sub_24AAB3B94();
  v83 = v22;
  v84 = v14;
  v24 = *(v14 + 32);
  v24(&v2[v22], v17, v13);
  v25 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel__remotePowerSpectrum;
  v26 = sub_24AAB5054();
  *(v26 + 16) = 30;
  *(v26 + 32) = 0u;
  *(v26 + 48) = 0u;
  *(v26 + 64) = 0u;
  *(v26 + 80) = 0u;
  *(v26 + 96) = 0u;
  *(v26 + 112) = 0u;
  *(v26 + 128) = 0u;
  *(v26 + 144) = 0;
  v92 = v26;
  sub_24AAB3B94();
  v85 = v13;
  v24(&v2[v25], v17, v13);
  v27 = v89;
  v28 = [v89 provider];
  v29 = [v28 isTelephonyProvider];

  if (v29)
  {
    *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_call] = v27;
    v30 = &v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken];
    *v30 = 0;
    *(v30 + 1) = 0;
    v30[16] = 1;
    v31 = type metadata accessor for AudioPowerSpectrumViewModel();
    v90.receiver = v2;
    v90.super_class = v31;
    return [&v90 init];
  }

  v33 = [*&v2[v21] activeConversationForCall_];
  v74 = v25;
  if (!v33)
  {
    v37 = v87;
    v39 = v88;
    v40 = v78;
    v79(v78, &v2[v88], v87);
    v34 = sub_24AAB3A64();
    v41 = sub_24AAB5124();
    if (os_log_type_enabled(v34, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_24AA0F000, v34, v41, "AudioPowerSpectrumViewModel: can't find conversation for call.", v42, 2u);
      MEMORY[0x24C226630](v42, -1, -1);
      v43 = v27;
    }

    else
    {
      v43 = v34;
      v34 = v27;
    }

    v62 = v40;
    v63 = v85;
    v64 = v86;
    goto LABEL_25;
  }

  v34 = v33;
  v78 = v21;
  v35 = [v33 mergedActiveRemoteParticipants];
  sub_24AA442A0(0, &unk_27EF863F0, 0x277D6EEA8);
  sub_24AA6A5B0();
  v36 = sub_24AAB5114();

  v37 = v87;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v38 = sub_24AAB52F4();
  }

  else
  {
    v38 = *(v36 + 16);
  }

  if (v38 != 1)
  {
    v39 = v88;
    v58 = v77;
    v79(v77, &v2[v88], v37);
    v43 = sub_24AAB3A64();
    v59 = sub_24AAB5124();
    if (os_log_type_enabled(v43, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "AudioPowerSpectrumViewModel: not initializing for group call.";
LABEL_22:
      _os_log_impl(&dword_24AA0F000, v43, v59, v61, v60, 2u);
      MEMORY[0x24C226630](v60, -1, -1);

LABEL_24:
      v62 = v58;
      v63 = v85;
      v64 = v86;
      v21 = v78;
      goto LABEL_25;
    }

LABEL_23:

    v43 = v27;
    goto LABEL_24;
  }

  v44 = [v34 mergedActiveRemoteParticipants];
  v45 = sub_24AAB5114();

  v46 = sub_24AA58C64(v45);

  if (!v46)
  {
    v39 = v88;
    v58 = v75;
    v79(v75, &v2[v88], v37);
    v43 = sub_24AAB3A64();
    v59 = sub_24AAB5124();
    if (os_log_type_enabled(v43, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "AudioPowerSpectrumViewModel: can't find remote participant for call.";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v47 = [v34 avcSessionToken];
  v48 = [v46 streamToken];
  v49 = v48;
  if (v47 && v48)
  {
    *&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_call] = v27;
    v50 = &v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken];
    *v50 = v47;
    *(v50 + 1) = v48;
    v50[16] = 0;
    v51 = type metadata accessor for AudioPowerSpectrumViewModel();
    v91.receiver = v2;
    v91.super_class = v51;
    v52 = v27;
    v53 = [&v91 init];
    sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
    v54 = v53;
    v55 = sub_24AAB5184();
    v56 = [objc_allocWithZone(MEMORY[0x277D6EDC8]) initWithDelegate:v54 queue:v55 binCount:30];

    v57 = *&v54[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller];
    *&v54[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller] = v56;

    return v54;
  }

  v77 = v46;
  v62 = v76;
  v79(v76, &v2[v88], v37);
  v69 = sub_24AAB3A64();
  v70 = sub_24AAB5124();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 134218240;
    *(v71 + 4) = v47;
    *(v71 + 12) = 2048;
    *(v71 + 14) = v49;
    _os_log_impl(&dword_24AA0F000, v69, v70, "AudioPowerSpectrumViewModel: invalid tokens (localParticipantToken = %ld, remoteParticipantToken = %ld).", v71, 0x16u);
    v72 = v71;
    v62 = v76;
    MEMORY[0x24C226630](v72, -1, -1);
    v73 = v27;
  }

  else
  {
    v73 = v69;
    v69 = v27;
  }

  v63 = v85;
  v64 = v86;
  v21 = v78;

  v43 = v34;
  v34 = v77;
  v39 = v88;
LABEL_25:

  v65 = *(v64 + 8);
  v65(v62, v37);
  v65(&v2[v39], v37);

  v66 = *(v84 + 8);
  v66(&v2[v83], v63);
  v66(&v2[v74], v63);
  type metadata accessor for AudioPowerSpectrumViewModel();
  v67 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v68 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_24AA693E8()
{
  v1 = (v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken);
  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_callCenter);
    v3 = [v2 callServicesClientCapabilities];
    [v3 setWantsFrequencyChangeNotifications_];

    v4 = [v2 callServicesClientCapabilities];
    [v4 save];

    v5 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_updateTelephonySpectrum selector:0 userInfo:1 repeats:0.0666666667];
    v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer);
    *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer) = v5;
    v12 = v5;

    [v12 fire];
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller);
    if (v7)
    {
      v8 = *v1;
      v9 = v1[1];
      v12 = v7;
      [v12 registerParticipantPowerSpectrum:v8];
      [v12 registerParticipantPowerSpectrum:v9];
    }

    else
    {
      v12 = sub_24AAB3A64();
      v10 = sub_24AAB5124();
      if (os_log_type_enabled(v12, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24AA0F000, v12, v10, "There is no TUAudioFrequencyController.", v11, 2u);
        MEMORY[0x24C226630](v11, -1, -1);
      }
    }
  }
}

id sub_24AA695C4()
{
  v1 = (v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken);
  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16))
  {
    result = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer);
    v3 = sel_invalidate;

    return [result v3];
  }

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller;
  result = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller);
  if (result)
  {
    v5 = v1[1];
    [result unregisterParticipantPowerSpectrum_];
    result = *(v0 + v4);
    if (result)
    {
      v3 = sel_unregisterParticipantPowerSpectrum_;

      return [result v3];
    }
  }

  return result;
}

id sub_24AA69680()
{
  v1 = &v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken];
  if (v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16])
  {
    [*&v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_telephonyTimer] invalidate];
  }

  else
  {
    v2 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller;
    v3 = *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_controller];
    if (v3)
    {
      v4 = v1[1];
      [v3 unregisterParticipantPowerSpectrum_];
      v5 = *&v0[v2];
      if (v5)
      {
        [v5 unregisterParticipantPowerSpectrum_];
      }
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for AudioPowerSpectrumViewModel();
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t type metadata accessor for AudioPowerSpectrumViewModel()
{
  result = qword_27EF863B8;
  if (!qword_27EF863B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_24AA699A0()
{
  v1 = *&v0[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_call];
  v2 = [v1 localFrequency];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24AAB2C04();
    v6 = v5;

    v7 = [v1 translationSession];
    if (v7 && (v7, [v1 isUplinkMuted]))
    {
      v8 = sub_24AAB5054();
      *(v8 + 16) = 30;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;
      *(v8 + 80) = 0u;
      *(v8 + 96) = 0u;
      *(v8 + 112) = 0u;
      *(v8 + 128) = 0u;
      *(v8 + 144) = 0;
    }

    else
    {
      sub_24AA69BAC(v4, v6);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v0;
    sub_24AAB3BC4();
    sub_24AA190E8(v4, v6);
  }

  result = [v1 remoteFrequency];
  if (result)
  {
    v11 = result;
    v12 = sub_24AAB2C04();
    v14 = v13;

    sub_24AA69BAC(v12, v14);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v0;
    sub_24AAB3BC4();
    return sub_24AA190E8(v12, v14);
  }

  return result;
}

uint64_t sub_24AA69BAC(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      v10 = v2;
      v9 = sub_24AA6A3DC(MEMORY[0x277D84F90]);

      goto LABEL_10;
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
LABEL_8:
    v8 = v2;
    v9 = sub_24AA6A4F4(v6, v7);

LABEL_10:
    v11 = *MEMORY[0x277D85DE8];
    return v9;
  }

  if (v3)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  __src = a1;
  v17 = a2;
  v18 = BYTE2(a2);
  v19 = BYTE3(a2);
  v20 = BYTE4(a2);
  v4 = (a2 >> 50) & 0x3F;
  v21 = BYTE5(a2);
  if (v4)
  {
    v5 = sub_24AA69FFC((a2 >> 50) & 0x3F, 0);
    memcpy(v5 + 4, &__src, 4 * v4);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  v13 = v2;
  v14 = sub_24AA6A3DC(v5);

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t sub_24AA69D8C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 && (a2 - a1 + 3) >= 7)
  {
    if (a2 - a1 >= 0)
    {
      v5 = a2 - a1;
    }

    else
    {
      v5 = a2 - a1 + 3;
    }

    v4 = sub_24AA69FFC(v5 >> 2, 0);
    memcpy(v4 + 4, a1, v5 & 0xFFFFFFFFFFFFFFFCLL);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v7 = sub_24AA6A3DC(v4);

  *a3 = v7;
  return result;
}

void sub_24AA69E5C()
{
  v0 = sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24AA69F4C();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_24AA69F4C()
{
  if (!qword_27EF863C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27EF863D0, qword_24AAB97D0);
    v0 = sub_24AAB3BD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF863C8);
    }
  }
}

uint64_t sub_24AA69FBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioPowerSpectrumViewModel();
  result = sub_24AAB3B44();
  *a1 = result;
  return result;
}

void *sub_24AA69FFC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E58, &qword_24AAB8CB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_24AA6A080(unint64_t result, uint64_t a2)
{
  if ((v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken + 16] & 1) == 0)
  {
    v3 = result;
    if (*&v2[OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioPowerSpectrumViewModel_participantsToken] == a2)
    {
      if (result >> 62)
      {
        v4 = sub_24AAB52F4();
      }

      else
      {
        v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v27 = MEMORY[0x277D84F90];
        result = sub_24AA5D45C(0, v4 & ~(v4 >> 63), 0);
        if ((v4 & 0x8000000000000000) == 0)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v4; ++i)
            {
              [MEMORY[0x24C225BD0](i v3)];
              v7 = v6;
              swift_unknownObjectRelease();
              v9 = *(v27 + 16);
              v8 = *(v27 + 24);
              if (v9 >= v8 >> 1)
              {
                sub_24AA5D45C((v8 > 1), v9 + 1, 1);
              }

              *(v27 + 16) = v9 + 1;
              *(v27 + 4 * v9 + 32) = v7;
            }
          }

          else
          {
            v16 = (v3 + 32);
            do
            {
              [*v16 floatValue];
              v19 = *(v27 + 16);
              v18 = *(v27 + 24);
              if (v19 >= v18 >> 1)
              {
                v20 = v17;
                sub_24AA5D45C((v18 > 1), v19 + 1, 1);
                v17 = v20;
              }

              *(v27 + 16) = v19 + 1;
              *(v27 + 4 * v19 + 32) = v17;
              ++v16;
              --v4;
            }

            while (v4);
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (result >> 62)
      {
        v10 = sub_24AAB52F4();
      }

      else
      {
        v10 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v10)
      {
        v28 = MEMORY[0x277D84F90];
        result = sub_24AA5D45C(0, v10 & ~(v10 >> 63), 0);
        if ((v10 & 0x8000000000000000) == 0)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != v10; ++j)
            {
              [MEMORY[0x24C225BD0](j v3)];
              v13 = v12;
              swift_unknownObjectRelease();
              v15 = *(v28 + 16);
              v14 = *(v28 + 24);
              if (v15 >= v14 >> 1)
              {
                sub_24AA5D45C((v14 > 1), v15 + 1, 1);
              }

              *(v28 + 16) = v15 + 1;
              *(v28 + 4 * v15 + 32) = v13;
            }
          }

          else
          {
            v21 = (v3 + 32);
            do
            {
              [*v21 floatValue];
              v24 = *(v28 + 16);
              v23 = *(v28 + 24);
              if (v24 >= v23 >> 1)
              {
                v25 = v22;
                sub_24AA5D45C((v23 > 1), v24 + 1, 1);
                v22 = v25;
              }

              *(v28 + 16) = v24 + 1;
              *(v28 + 4 * v24 + 32) = v22;
              ++v21;
              --v10;
            }

            while (v10);
          }

          goto LABEL_32;
        }

        goto LABEL_37;
      }
    }

LABEL_32:
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v2;
    return sub_24AAB3BC4();
  }

  return result;
}

uint64_t sub_24AA6A3DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    sub_24AA5D45C(0, v2, 0);
    result = v10;
    v4 = (a1 + 32);
    v5 = *(v10 + 16);
    do
    {
      if (*v4 >= -90.0)
      {
        v6 = *v4;
      }

      else
      {
        v6 = -90.0;
      }

      v7 = (v6 + 90.0) / 50.0;
      if (*v4 <= -40.0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 1.0;
      }

      v11 = result;
      v9 = *(result + 24);
      if (v5 >= v9 >> 1)
      {
        sub_24AA5D45C((v9 > 1), v5 + 1, 1);
        result = v11;
      }

      *(result + 16) = v5 + 1;
      *(result + 4 * v5 + 32) = v8;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_24AA6A4F4(uint64_t a1, uint64_t a2)
{
  result = sub_24AAB2A64();
  v6 = result;
  if (result)
  {
    result = sub_24AAB2A84();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v6 += a1 - result;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = sub_24AAB2A74();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = &v6[v10];
  if (v6)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  result = sub_24AA69D8C(v6, v12, &v13);
  if (!v2)
  {
    return v13;
  }

  return result;
}

unint64_t sub_24AA6A5B0()
{
  result = qword_27EF857D0;
  if (!qword_27EF857D0)
  {
    sub_24AA442A0(255, &unk_27EF863F0, 0x277D6EEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF857D0);
  }

  return result;
}

id sub_24AA6A618()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for UIBackgroundBlurViewView();
  v1 = objc_msgSendSuper2(&v17, sel_init);
  v2 = [v1 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86410, &unk_24AAB9940);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_24AAB7D10;
    v6 = *MEMORY[0x277CDA2C0];
    v7 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
    v8 = v2;
    v9 = [v7 initWithType_];
    v16[0] = xmmword_24AAB98B0;
    v16[1] = xmmword_24AAB98C0;
    v16[2] = xmmword_24AAB98D0;
    v16[3] = xmmword_24AAB98E0;
    v16[4] = xmmword_24AAB98F0;
    v10 = [objc_opt_self() valueWithCAColorMatrix_];
    v11 = sub_24AAB4EE4();
    [v9 setValue:v10 forKey:v11];

    v12 = sub_24AA6A900();
    *(v5 + 56) = v12;
    *(v5 + 32) = v9;
    v13 = sub_24AA6A94C();
    *(v5 + 88) = v12;
    *(v5 + 64) = v13;
    v14 = sub_24AAB5014();

    [v4 setFilters_];

    v2 = v1;
  }

  else
  {
    v14 = v1;
  }

  return v1;
}

id sub_24AA6A8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIBackgroundBlurViewView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24AA6A900()
{
  result = qword_27EF86418;
  if (!qword_27EF86418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF86418);
  }

  return result;
}

id sub_24AA6A94C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
  v1 = sub_24AAB5084();
  v2 = sub_24AAB4EE4();
  [v0 setValue:v1 forKey:v2];

  v3 = sub_24AAB5104();
  v4 = sub_24AAB4EE4();
  [v0 setValue:v3 forKey:v4];

  return v0;
}

uint64_t sub_24AA6AC3C()
{
  result = sub_24AAB2B84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AA6AFF4()
{
  result = sub_24AAB2B84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AA6B098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AA6B170(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA6B250()
{
  result = sub_24AAB2B84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22FaceTimeNotificationUI10CallActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_22FaceTimeNotificationUI17ControlAppearanceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24AA6B388(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA6B3D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AA6B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_24AA6B568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA6B648()
{
  result = sub_24AAB2B84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24AA6B794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24AAB2B84();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24AA6B854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_24AAB2B84();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24AA6B918()
{
  result = sub_24AAB2B84();
  if (v1 <= 0x3F)
  {
    result = sub_24AA55CA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AA6BAB8()
{
  if (*v0 != 1 || (v0[*(type metadata accessor for ShareControl(0) + 44)] & 1) != 0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A08, &qword_24AABB538);
  v2 = *(type metadata accessor for MenuItem() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_24AAB7D10;
  v6 = v5 + v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v8 = v6 + *(v7 + 48);
  v9 = *(v7 + 64);
  sub_24AAB2B24();
  *v8 = xmmword_24AAB7030;
  *(v8 + 16) = 2;
  *(v6 + v9) = 1;
  v10 = *(*(v7 - 8) + 56);
  v10(v6, 0, 1, v7);
  v11 = v6 + v3;
  v12 = v11 + *(v7 + 48);
  v13 = *(v7 + 64);
  sub_24AAB2B24();
  *v12 = xmmword_24AAB9950;
  *(v12 + 16) = 2;
  *(v11 + v13) = v0[1];
  v10(v11, 0, 1, v7);
  return v5;
}

uint64_t sub_24AA6BCB8(uint64_t a1)
{
  v3 = *v1;
  sub_24AAB5514();
  v4 = v1[1];
  sub_24AAB5514();
  v19 = *(v1 + 8);
  v20 = v1[24];
  CallAction.hash(into:)(a1);
  v5 = type metadata accessor for ShareControl(0);
  v6 = v5[7];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v7)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v8 = &v1[v5[8]];
  v9 = *v8;
  v10 = *(v8 + 1);
  sub_24AAB4F64();
  v11 = &v1[v5[9]];
  v12 = *(v11 + 1);
  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (*v11)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v13)
  {
    sub_24AAB5514();
    if (v14)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v15 = v1[v5[10]];
  sub_24AAB5514();
  v16 = v1[v5[11]];
  sub_24AAB5514();
  v17 = v1[v5[12]];
  return sub_24AAB5514();
}

uint64_t sub_24AA6BE98(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_24AA6BEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AA6BF68(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  sub_24AA1B750(v5, v6);
  return v3;
}

uint64_t sub_24AA6C030(uint64_t a1, uint64_t (*a2)(void))
{
  v17 = *v2;
  v18 = *(v2 + 16);
  CallAction.hash(into:)(a1);
  v4 = a2(0);
  v5 = v4[5];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v6)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v7 = (v2 + v4[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_24AAB4F64();
  v10 = (v2 + v4[7]);
  v11 = v10[1];
  v13 = v10[2];
  v12 = v10[3];
  if (*v10)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v12)
  {
    sub_24AAB5514();
    if (v13)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v14 = *(v2 + v4[8]);
  sub_24AAB5514();
  v15 = *(v2 + v4[9]);
  return sub_24AAB5514();
}

uint64_t sub_24AA6C57C(uint64_t a1)
{
  v2 = *(v1 + 3);
  v3 = *(v1 + 4);
  v5 = *(v1 + 5);
  v4 = *(v1 + 6);
  v7 = *(v1 + 7);
  v6 = *(v1 + 8);
  v8 = *(v1 + 72);
  v9 = *(v1 + 73);
  v11 = *v1;
  v12 = *(v1 + 16);
  CallAction.hash(into:)(a1);
  sub_24AAB4F64();
  if (v5)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v6)
  {
    sub_24AAB5514();
    if (v7)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  sub_24AAB5514();
  return sub_24AAB5514();
}

uint64_t sub_24AA6C6A4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_24AA6C724()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[7];
  v3 = v0[8];

  sub_24AA1B750(v4, v3);
  return v1;
}

uint64_t sub_24AA6C78C()
{
  sub_24AAB54F4();
  sub_24AA6C57C(v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA6C7D0()
{
  sub_24AAB54F4();
  sub_24AA6C57C(v1);
  return sub_24AAB5524();
}

uint64_t sub_24AA6C810(uint64_t a1)
{
  v3 = *v1;
  sub_24AAB5514();
  v15 = *(v1 + 8);
  v16 = v1[24];
  CallAction.hash(into:)(a1);
  v4 = type metadata accessor for AcceptControl(0);
  v5 = v4[6];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v6)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v7 = &v1[v4[7]];
  v8 = *(v7 + 1);
  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (*v7)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v9)
  {
    sub_24AAB5514();
    if (v10)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v11 = v1[v4[8]];
  sub_24AAB5514();
  v12 = v1[v4[9]];
  sub_24AAB5514();
  v13 = v1[v4[10]];
  return sub_24AAB5514();
}

uint64_t sub_24AA6C9C4()
{
  if (*v0 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A08, &qword_24AABB538);
  v1 = *(type metadata accessor for MenuItem() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24AAB7070;
  v5 = v4 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v7 = v5 + *(v6 + 48);
  v8 = *(v6 + 64);
  sub_24AAB2B24();
  *v7 = xmmword_24AAB9960;
  *(v7 + 16) = 2;
  *(v5 + v8) = 1;
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  return v4;
}

uint64_t sub_24AA6CB3C()
{
  if (*v0)
  {
    return 0x69662E6F65646976;
  }

  else
  {
    return 0x69662E656E6F6870;
  }
}

uint64_t sub_24AA6CB74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_24AA15F10(v2, v3, v4);
}

uint64_t sub_24AA6CCD8()
{
  v1 = sub_24AAB4EC4();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  if (*(v0 + *(type metadata accessor for DeclineControlWithMenu(0) + 32)))
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A08, &qword_24AABB538);
  v6 = *(type metadata accessor for MenuItem() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = 4 * v7;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24AAB9970;
  v9 = v24 + v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  v11 = v9 + *(v10 + 48);
  v12 = *(v10 + 64);
  sub_24AAB2B24();
  *v11 = xmmword_24AAB9980;
  *(v11 + 16) = 2;
  *(v9 + v12) = 1;
  v22 = *(*(v10 - 8) + 56);
  v22(v9, 0, 1, v10);
  v22(v9 + v7, 1, 1, v10);
  v13 = v9 + 2 * v7;
  v14 = v13 + *(v10 + 48);
  v21 = *(v10 + 64);
  sub_24AAB4EB4();
  sub_24AAB4EA4();
  sub_24AAB4E94();
  sub_24AAB4EA4();
  sub_24AAB2B44();
  *v14 = xmmword_24AAB9990;
  *(v14 + 16) = 0;
  *(v13 + v21) = 1;
  v22(v13, 0, 1, v10);
  v15 = v9 + 3 * v7;
  v16 = v15 + *(v10 + 48);
  v17 = *(v10 + 64);
  sub_24AAB4EB4();
  sub_24AAB4EA4();
  sub_24AAB4E94();
  sub_24AAB4EA4();
  sub_24AAB2B44();
  *v16 = xmmword_24AAB99A0;
  *(v16 + 16) = 0;
  *(v15 + v17) = 1;
  v22(v15, 0, 1, v10);
  v18 = v9 + v23;
  v19 = v9 + v23 + *(v10 + 48);
  v20 = *(v10 + 64);
  sub_24AAB4EB4();
  sub_24AAB4EA4();
  sub_24AAB4E94();
  sub_24AAB4EA4();
  sub_24AAB2B44();
  *v19 = xmmword_24AAB99B0;
  *(v19 + 16) = 0;
  *(v18 + v20) = 1;
  v22(v18, 0, 1, v10);
  return v24;
}

uint64_t sub_24AA6D17C(uint64_t a1)
{
  v16 = *v1;
  v17 = *(v1 + 16);
  CallAction.hash(into:)(a1);
  v2 = type metadata accessor for DeclineControlWithMenu(0);
  v3 = v2[5];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v4)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v5 = (v1 + v2[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_24AAB4F64();
  v8 = (v1 + v2[7]);
  v9 = v8[1];
  v11 = v8[2];
  v10 = v8[3];
  if (*v8)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v10)
  {
    sub_24AAB5514();
    if (v11)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v12 = *(v1 + v2[8]);
  sub_24AAB5514();
  v13 = *(v1 + v2[9]);
  sub_24AAB5514();
  v14 = *(v1 + v2[10]);
  return sub_24AAB5514();
}

uint64_t sub_24AA6D36C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_24AAB54F4();
  a3(v5);
  return sub_24AAB5524();
}

uint64_t sub_24AA6D3D0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_24AAB54F4();
  a4(v6);
  return sub_24AAB5524();
}

uint64_t sub_24AA6D7BC(uint64_t a1, uint64_t (*a2)(void))
{
  v14 = *v2;
  v15 = *(v2 + 16);
  CallAction.hash(into:)(a1);
  v4 = a2(0);
  v5 = v4[5];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v6)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v7 = (v2 + v4[6]);
  v8 = v7[1];
  v10 = v7[2];
  v9 = v7[3];
  if (*v7)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v9)
  {
    sub_24AAB5514();
    if (v10)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v11 = *(v2 + v4[7]);
  sub_24AAB5514();
  v12 = *(v2 + v4[8]);
  return sub_24AAB5514();
}

uint64_t sub_24AA6E234(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  sub_24AA1B750(v5, v6);
  return v3;
}

uint64_t sub_24AA6E2C0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_24AAB54F4();
  a4(v7, a3);
  return sub_24AAB5524();
}

uint64_t sub_24AA6E370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(_BYTE *, uint64_t))
{
  sub_24AAB54F4();
  a5(v8, a4);
  return sub_24AAB5524();
}

uint64_t sub_24AA6E410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AA6E484(uint64_t a1)
{
  sub_24AAB54F4();
  v3 = (v1 + *(a1 + 40));
  v4 = *v3;
  v5 = v3[1];
  sub_24AAB4F64();
  return sub_24AAB5524();
}

uint64_t sub_24AA6E4D4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 40));
  v4 = *v3;
  v5 = v3[1];
  return sub_24AAB4F64();
}

uint64_t sub_24AA6E4E4(uint64_t a1, uint64_t a2)
{
  sub_24AAB54F4();
  v4 = (v2 + *(a2 + 40));
  v5 = *v4;
  v6 = v4[1];
  sub_24AAB4F64();
  return sub_24AAB5524();
}

uint64_t sub_24AA6E530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 40);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return sub_24AAB5474();
  }
}

uint64_t sub_24AA6E5AC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865B8, type metadata accessor for CustomViewControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA6E64C(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865C0, type metadata accessor for CustomViewControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E6EC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865D0, type metadata accessor for KeypadControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E744(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865D8, type metadata accessor for KeypadControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E7E4(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865E8, type metadata accessor for WaitOnHoldControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E83C(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF865F0, type metadata accessor for WaitOnHoldControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E8DC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86600, type metadata accessor for ShareControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E934(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86608, type metadata accessor for ShareControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6E9D4(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86618, type metadata accessor for MoreMenuControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EA2C(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86620, type metadata accessor for MoreMenuControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EA84(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86628, type metadata accessor for MoreMenuControl);
  a1[2] = sub_24AA6E604(&qword_27EF86630, type metadata accessor for MoreMenuControl);
  result = sub_24AA6E604(&qword_27EF86638, type metadata accessor for MoreMenuControl);
  a1[3] = result;
  return result;
}

unint64_t sub_24AA6EB34()
{
  result = qword_27EF86640;
  if (!qword_27EF86640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86640);
  }

  return result;
}

unint64_t sub_24AA6EB88(uint64_t a1)
{
  result = sub_24AA6EBB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_24AA6EBB0()
{
  result = qword_27EF86648;
  if (!qword_27EF86648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86648);
  }

  return result;
}

unint64_t sub_24AA6EC04()
{
  result = qword_27EF86650;
  if (!qword_27EF86650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86650);
  }

  return result;
}

unint64_t sub_24AA6EC58(uint64_t a1)
{
  result = sub_24AA6EC04();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6ECC8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86660, type metadata accessor for DeclineControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6ED20(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86668, type metadata accessor for DeclineControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EDC0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86678, type metadata accessor for AcceptControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EE18(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86680, type metadata accessor for AcceptControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EEB8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86690, type metadata accessor for WaitOnHoldSuggestionControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EF58(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866A0, type metadata accessor for WaitOnHoldDeclineSuggestionControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6EFF8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866B0, type metadata accessor for UpgradeVideoControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F050(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866B8, type metadata accessor for UpgradeVideoControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F0F0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866C8, type metadata accessor for EndControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F148(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866D0, type metadata accessor for EndControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F1E8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866E0, type metadata accessor for RTTControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F240(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866E8, type metadata accessor for RTTControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F2E0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF866F8, type metadata accessor for DialControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F338(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86700, type metadata accessor for DialControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F3D8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86710, type metadata accessor for CancelDialControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F430(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86718, type metadata accessor for CancelDialControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F4D0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF85820, type metadata accessor for TitledSwapControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F570(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86730, type metadata accessor for SwapControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F5C8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86738, type metadata accessor for SwapControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F668(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86748, type metadata accessor for MergeControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F6C0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86750, type metadata accessor for MergeControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F760(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF85838, type metadata accessor for UnholdControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F800(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86768, type metadata accessor for DeclineControlWithMenu);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F858(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86770, type metadata accessor for DeclineControlWithMenu);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F8F8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86780, type metadata accessor for WaitOnHoldEndCallControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F950(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86788, type metadata accessor for WaitOnHoldEndCallControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6F9F0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86798, type metadata accessor for PickUpControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FA48(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867A0, type metadata accessor for PickUpControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FAE8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867B0, type metadata accessor for StopLiveVoicemailControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FB40(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867B8, type metadata accessor for StopLiveVoicemailControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FBE0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867C8, type metadata accessor for LiveVoicemailControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FC38(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867D0, type metadata accessor for LiveVoicemailControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FCD8(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867E0, type metadata accessor for DeclineWithMessageControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FD30(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867E8, type metadata accessor for DeclineWithMessageControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FDD0(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF867F8, type metadata accessor for BlockControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FE28(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86800, type metadata accessor for BlockControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA6FE80(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86808, type metadata accessor for DeclineWithMessageControl);
  a1[2] = sub_24AA6E604(&qword_27EF86810, type metadata accessor for DeclineWithMessageControl);
  result = sub_24AA6E604(&qword_27EF86818, type metadata accessor for DeclineWithMessageControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA6FF2C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86820, type metadata accessor for LiveVoicemailControl);
  a1[2] = sub_24AA6E604(&qword_27EF86828, type metadata accessor for LiveVoicemailControl);
  result = sub_24AA6E604(&qword_27EF86830, type metadata accessor for LiveVoicemailControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA6FFD8(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86838, type metadata accessor for StopLiveVoicemailControl);
  a1[2] = sub_24AA6E604(&qword_27EF86840, type metadata accessor for StopLiveVoicemailControl);
  result = sub_24AA6E604(&qword_27EF86848, type metadata accessor for StopLiveVoicemailControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70084(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86850, type metadata accessor for PickUpControl);
  a1[2] = sub_24AA6E604(&qword_27EF86858, type metadata accessor for PickUpControl);
  result = sub_24AA6E604(&qword_27EF86860, type metadata accessor for PickUpControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70130(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86868, type metadata accessor for WaitOnHoldEndCallControl);
  a1[2] = sub_24AA6E604(&qword_27EF86870, type metadata accessor for WaitOnHoldEndCallControl);
  result = sub_24AA6E604(&qword_27EF86878, type metadata accessor for WaitOnHoldEndCallControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA701DC(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86880, type metadata accessor for DeclineControlWithMenu);
  a1[2] = sub_24AA6E604(&qword_27EF86888, type metadata accessor for DeclineControlWithMenu);
  result = sub_24AA6E604(&qword_27EF86890, type metadata accessor for DeclineControlWithMenu);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70288(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86898, type metadata accessor for UnholdControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA702E0(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868A0, type metadata accessor for MergeControl);
  a1[2] = sub_24AA6E604(&qword_27EF868A8, type metadata accessor for MergeControl);
  result = sub_24AA6E604(&qword_27EF868B0, type metadata accessor for MergeControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA7038C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868B8, type metadata accessor for SwapControl);
  a1[2] = sub_24AA6E604(&qword_27EF868C0, type metadata accessor for SwapControl);
  result = sub_24AA6E604(&qword_27EF868C8, type metadata accessor for SwapControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70438(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF868D0, type metadata accessor for TitledSwapControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA70490(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868D8, type metadata accessor for CancelDialControl);
  a1[2] = sub_24AA6E604(&qword_27EF868E0, type metadata accessor for CancelDialControl);
  result = sub_24AA6E604(&qword_27EF868E8, type metadata accessor for CancelDialControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA7053C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF868F0, type metadata accessor for DialControl);
  a1[2] = sub_24AA6E604(&qword_27EF868F8, type metadata accessor for DialControl);
  result = sub_24AA6E604(&qword_27EF86900, type metadata accessor for DialControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA705E8(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86908, type metadata accessor for RTTControl);
  a1[2] = sub_24AA6E604(&qword_27EF86910, type metadata accessor for RTTControl);
  result = sub_24AA6E604(&qword_27EF86918, type metadata accessor for RTTControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70694(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86920, type metadata accessor for EndControl);
  a1[2] = sub_24AA6E604(&qword_27EF86928, type metadata accessor for EndControl);
  result = sub_24AA6E604(&qword_27EF86930, type metadata accessor for EndControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70740(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86938, type metadata accessor for UpgradeVideoControl);
  a1[2] = sub_24AA6E604(&qword_27EF86940, type metadata accessor for UpgradeVideoControl);
  result = sub_24AA6E604(&qword_27EF86948, type metadata accessor for UpgradeVideoControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA707EC(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86950, type metadata accessor for WaitOnHoldDeclineSuggestionControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA70844(uint64_t a1)
{
  result = sub_24AA6E604(&qword_27EF86958, type metadata accessor for WaitOnHoldSuggestionControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA7089C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86960, type metadata accessor for AcceptControl);
  a1[2] = sub_24AA6E604(&qword_27EF86968, type metadata accessor for AcceptControl);
  result = sub_24AA6E604(&qword_27EF86970, type metadata accessor for AcceptControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70948(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF86978, type metadata accessor for DeclineControl);
  a1[2] = sub_24AA6E604(&qword_27EF86980, type metadata accessor for DeclineControl);
  result = sub_24AA6E604(&qword_27EF86988, type metadata accessor for DeclineControl);
  a1[3] = result;
  return result;
}

unint64_t sub_24AA709F4(void *a1)
{
  a1[1] = sub_24AA70A2C();
  a1[2] = sub_24AA70A80();
  result = sub_24AA70AD4();
  a1[3] = result;
  return result;
}

unint64_t sub_24AA70A2C()
{
  result = qword_27EF86990;
  if (!qword_27EF86990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86990);
  }

  return result;
}

unint64_t sub_24AA70A80()
{
  result = qword_27EF86998;
  if (!qword_27EF86998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86998);
  }

  return result;
}

unint64_t sub_24AA70AD4()
{
  result = qword_27EF869A0;
  if (!qword_27EF869A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF869A0);
  }

  return result;
}

uint64_t sub_24AA70B28(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869A8, type metadata accessor for ShareControl);
  a1[2] = sub_24AA6E604(&qword_27EF869B0, type metadata accessor for ShareControl);
  result = sub_24AA6E604(&qword_27EF869B8, type metadata accessor for ShareControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70BD4(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869C0, type metadata accessor for WaitOnHoldControl);
  a1[2] = sub_24AA6E604(&qword_27EF869C8, type metadata accessor for WaitOnHoldControl);
  result = sub_24AA6E604(&qword_27EF869D0, type metadata accessor for WaitOnHoldControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70C80(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869D8, type metadata accessor for CustomViewControl);
  a1[2] = sub_24AA6E604(&qword_27EF869E0, type metadata accessor for CustomViewControl);
  result = sub_24AA6E604(&qword_27EF869E8, type metadata accessor for CustomViewControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70D2C(void *a1)
{
  a1[1] = sub_24AA6E604(&qword_27EF869F0, type metadata accessor for KeypadControl);
  a1[2] = sub_24AA6E604(&qword_27EF869F8, type metadata accessor for KeypadControl);
  result = sub_24AA6E604(&qword_27EF86A00, type metadata accessor for KeypadControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA70DD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v22 = *a1;
  v23 = v6;
  v24 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v8;
  v21 = v9;
  sub_24AA15F10(v22, v6, v7);
  sub_24AA15F10(v19, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_24AA15ED0(v19, v20, v21);
  sub_24AA15ED0(v22, v23, v24);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && ((v12 = v11[6], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_24AAB5474()) && (v16 = v11[7], sub_24AAAA8E0(*(a1 + v16), *(a1 + v16 + 8), *(a1 + v16 + 16), *(a1 + v16 + 24), *(a2 + v16), *(a2 + v16 + 8), *(a2 + v16 + 16), *(a2 + v16 + 24))) && *(a1 + v11[8]) == *(a2 + v11[8]))
  {
    v17 = *(a1 + v11[9]) ^ *(a2 + v11[9]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24AA70F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v23 = *(a1 + 48);
  v24 = *(a1 + 40);
  v21 = *(a1 + 64);
  v22 = *(a1 + 56);
  v17 = *(a1 + 73);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v20 = *(a2 + 40);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v18 = *(a2 + 72);
  v19 = *(a1 + 72);
  v16 = *(a2 + 73);
  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v28 = *a1;
  v29 = v2;
  v30 = v12;
  v25 = v5;
  v26 = v6;
  v27 = v13;
  sub_24AA15F10(v28, v2, v12);
  sub_24AA15F10(v5, v6, v13);
  LOBYTE(v5) = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v28, &v25);
  sub_24AA15ED0(v25, v26, v27);
  sub_24AA15ED0(v28, v29, v30);
  if ((v5 & 1) == 0 || (v3 != v7 || v4 != v8) && (sub_24AAB5474() & 1) == 0)
  {
    return 0;
  }

  v14 = sub_24AAAA8E0(v24, v23, v22, v21, v20, v9, v10, v11);
  result = 0;
  if (v14 && ((v19 ^ v18) & 1) == 0)
  {
    return v17 ^ v16 ^ 1u;
  }

  return result;
}

uint64_t sub_24AA71088(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v28 = v2;
  v29 = v3;
  v5 = *(a1 + 2);
  v7 = a1[24];
  v25 = *(a1 + 1);
  v26 = v5;
  v27 = v7;
  v8 = *(a2 + 2);
  v10 = a2[24];
  v22 = *(a2 + 1);
  v23 = v8;
  v24 = v10;
  sub_24AA15F10(v25, v5, v7);
  sub_24AA15F10(v22, v8, v10);
  v11 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v25, &v22);
  sub_24AA15ED0(v22, v23, v24);
  sub_24AA15ED0(v25, v26, v27);
  if ((v11 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = type metadata accessor for ShareControl(0);
  if ((MEMORY[0x24C2233A0](&a1[v12[7]], &a2[v12[7]]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v13 = v12[8];
  v14 = *&a1[v13];
  v15 = *&a1[v13 + 8];
  v16 = &a2[v13];
  if (v14 != *v16 || (v17 = a1, v18 = a2, v15 != *(v16 + 1)))
  {
    v19 = sub_24AAB5474();
    v18 = a2;
    v17 = a1;
    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v20 = v12[9];
  if (sub_24AAAA8E0(*&v17[v20], *&v17[v20 + 8], *&v17[v20 + 16], *&v17[v20 + 24], *&v18[v20], *&v18[v20 + 8], *&v18[v20 + 16], *&v18[v20 + 24]) && a1[v12[10]] == a2[v12[10]] && a1[v12[11]] == a2[v12[11]])
  {
    v21 = a1[v12[12]] ^ a2[v12[12]] ^ 1;
  }

  else
  {
LABEL_12:
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_24AA71224(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  v7 = *(a1 + 2);
  v8 = a1[24];
  v18 = *(a1 + 1);
  v19 = v7;
  v20 = v8;
  v9 = *(a2 + 2);
  v10 = a2[24];
  v15 = *(a2 + 1);
  v16 = v9;
  v17 = v10;
  sub_24AA15F10(v18, v7, v8);
  sub_24AA15F10(v15, v9, v10);
  v11 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_24AA15ED0(v15, v16, v17);
  sub_24AA15ED0(v18, v19, v20);
  if (v11 & 1) != 0 && (v12 = type metadata accessor for AcceptControl(0), (MEMORY[0x24C2233A0](&a1[v12[6]], &a2[v12[6]])) && (v13 = v12[7], sub_24AAAA8E0(*&a1[v13], *&a1[v13 + 8], *&a1[v13 + 16], *&a1[v13 + 24], *&a2[v13], *&a2[v13 + 8], *&a2[v13 + 16], *&a2[v13 + 24])) && a1[v12[8]] == a2[v12[8]] && a1[v12[9]] == a2[v12[9]])
  {
    v14 = a1[v12[10]] ^ a2[v12[10]] ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_24AA7136C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v18 = *a1;
  v19 = v6;
  v20 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v15 = *a2;
  v16 = v8;
  v17 = v9;
  sub_24AA15F10(v18, v6, v7);
  sub_24AA15F10(v15, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v18, &v15);
  sub_24AA15ED0(v15, v16, v17);
  sub_24AA15ED0(v18, v19, v20);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && (v12 = v11[6], sub_24AAAA8E0(*(a1 + v12), *(a1 + v12 + 8), *(a1 + v12 + 16), *(a1 + v12 + 24), *(a2 + v12), *(a2 + v12 + 8), *(a2 + v12 + 16), *(a2 + v12 + 24))) && *(a1 + v11[7]) == *(a2 + v11[7]))
  {
    v13 = *(a1 + v11[8]) ^ *(a2 + v11[8]) ^ 1;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_24AA7148C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17 = *a2;
  v18 = v6;
  v19 = v7;
  sub_24AA15F10(v20, v4, v5);
  sub_24AA15F10(v17, v6, v7);
  v8 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v20, &v17);
  sub_24AA15ED0(v17, v18, v19);
  sub_24AA15ED0(v20, v21, v22);
  if (v8 & 1) != 0 && (v9 = type metadata accessor for DeclineControlWithMenu(0), (MEMORY[0x24C2233A0](a1 + v9[5], a2 + v9[5])) && ((v10 = v9[6], v11 = *(a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v11 == *v13) && v12 == v13[1] || (sub_24AAB5474()) && (v14 = v9[7], sub_24AAAA8E0(*(a1 + v14), *(a1 + v14 + 8), *(a1 + v14 + 16), *(a1 + v14 + 24), *(a2 + v14), *(a2 + v14 + 8), *(a2 + v14 + 16), *(a2 + v14 + 24))) && *(a1 + v9[8]) == *(a2 + v9[8]) && *(a1 + v9[9]) == *(a2 + v9[9]))
  {
    v15 = *(a1 + v9[10]) ^ *(a2 + v9[10]) ^ 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t CallAction.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x24C225D50](28);

      return sub_24AAB4F64();
    }

    else
    {
      v6 = *v1;
      switch(v3)
      {
        case 1:
          v7 = 1;
          break;
        case 2:
          v7 = 2;
          break;
        case 3:
          v7 = 3;
          break;
        case 4:
          v7 = 4;
          break;
        case 5:
          v7 = 6;
          break;
        case 6:
          v7 = 7;
          break;
        case 7:
          v7 = 8;
          break;
        case 8:
          v7 = 9;
          break;
        case 9:
          v7 = 10;
          break;
        case 10:
          v7 = 11;
          break;
        case 11:
          v7 = 12;
          break;
        case 12:
          v7 = 13;
          break;
        case 13:
          v7 = 14;
          break;
        case 14:
          v7 = 15;
          break;
        case 15:
          v7 = 16;
          break;
        case 16:
          v7 = 17;
          break;
        case 17:
          v7 = 18;
          break;
        case 18:
          v7 = 19;
          break;
        case 19:
          v7 = 20;
          break;
        case 20:
          v7 = 21;
          break;
        case 21:
          v7 = 22;
          break;
        case 22:
          v7 = 23;
          break;
        case 23:
          v7 = 24;
          break;
        case 24:
          v7 = 25;
          break;
        case 25:
          v7 = 26;
          break;
        case 26:
          v7 = 27;
          break;
        default:
          v7 = 0;
          break;
      }

      return MEMORY[0x24C225D50](v7);
    }
  }

  else
  {
    MEMORY[0x24C225D50](5);

    return MEMORY[0x2821FE678](a1, v3, v4);
  }
}

uint64_t CallAction.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24AAB54F4();
  CallAction.hash(into:)(v3);
  return sub_24AAB5524();
}

uint64_t sub_24AA71970()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24AAB54F4();
  CallAction.hash(into:)(v3);
  return sub_24AAB5524();
}

uint64_t sub_24AA719C8()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_24AAB54F4();
  CallAction.hash(into:)(v3);
  return sub_24AAB5524();
}

uint64_t sub_24AA71A18()
{
  sub_24AA43A54(v0, v25);
  if (v27 > 2u)
  {
    if (v27 == 3)
    {
      sub_24AA15A64(v25, v22);
      sub_24AA15A64(v26, &v18);
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0x2864656B63617473, 0xED0000203A706F74);
      v13 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v14 = *(v13 + 24);
      sub_24AAB5464();
      v5 = 0x6D6F74746F62202CLL;
      v6 = 0xEA0000000000203ALL;
    }

    else
    {
      if (v27 != 4)
      {
        return 1701736302;
      }

      sub_24AA15A64(v25, v22);
      sub_24AA15A64(v26, &v18);
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0xD000000000000019, 0x800000024AAD2BE0);
      v3 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v4 = *(v3 + 24);
      sub_24AAB5464();
      v5 = 0x696C69617274202CLL;
      v6 = 0xEC000000203A676ELL;
    }

    MEMORY[0x24C2257F0](v5, v6);
    v15 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    v16 = *(v15 + 24);
    sub_24AAB5464();
    MEMORY[0x24C2257F0](41, 0xE100000000000000);
    v12 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(&v18);
    goto LABEL_13;
  }

  if (v27)
  {
    if (v27 == 1)
    {
      sub_24AA15A64(v25, v22);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0xD000000000000016, 0x800000024AAD2C20);
      v1 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v2 = *(v1 + 24);
      sub_24AAB5464();
    }

    else
    {
      sub_24AA15A64(v25, v22);
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_24AAB5374();
      MEMORY[0x24C2257F0](0xD000000000000017, 0x800000024AAD2C00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
      sub_24AAB53E4();
    }

    MEMORY[0x24C2257F0](41, 0xE100000000000000);
    v12 = v18;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    return v12;
  }

  v7 = *&v25[0];
  sub_24AAB5374();

  strcpy(v22, "hud(controls: ");
  HIBYTE(v22[1]) = -18;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85060, &unk_24AABB850);
  v9 = MEMORY[0x24C225880](v7, v8);
  v11 = v10;

  MEMORY[0x24C2257F0](v9, v11);

  MEMORY[0x24C2257F0](41, 0xE100000000000000);
  return v22[0];
}

uint64_t sub_24AA71DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a3;
  v44 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AAB5274();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = *(TupleTypeMetadata2 - 8);
  v11 = *(v39 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v14 = &v36 - v13;
  v42 = *(v9 - 8);
  v15 = v42;
  v16 = *(v42 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v41 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v45 = v6;
  (*(v6 + 16))(&v36 - v22, v4, a2);
  v24 = *(v6 + 56);
  v24(v23, 0, 1, a2);
  sub_24AA168B4(v44, v46);
  v25 = swift_dynamicCast();
  v24(v21, v25 ^ 1u, 1, a2);
  v40 = TupleTypeMetadata2;
  v26 = *(TupleTypeMetadata2 + 48);
  v44 = v15;
  v27 = *(v15 + 16);
  v27(v14, v23, v9);
  v43 = v21;
  v27(&v14[v26], v21, v9);
  v28 = *(v45 + 48);
  if (v28(v14, 1, a2) != 1)
  {
    v27(v41, v14, v9);
    if (v28(&v14[v26], 1, a2) != 1)
    {
      v31 = v45;
      v32 = v37;
      (*(v45 + 32))(v37, &v14[v26], a2);
      v33 = v41;
      v30 = sub_24AAB4E74();
      v34 = *(v31 + 8);
      v34(v32, a2);
      v29 = *(v42 + 8);
      v29(v23, v9);
      v34(v33, a2);
      v29(v14, v9);
      goto LABEL_8;
    }

    v29 = *(v42 + 8);
    v29(v23, v9);
    (*(v45 + 8))(v41, a2);
    goto LABEL_6;
  }

  v29 = *(v42 + 8);
  v29(v23, v9);
  if (v28(&v14[v26], 1, a2) != 1)
  {
LABEL_6:
    (*(v39 + 8))(v14, v40);
    v30 = 0;
    goto LABEL_8;
  }

  v29(v14, v9);
  v30 = 1;
LABEL_8:
  v29(v43, v9);
  return v30 & 1;
}

uint64_t LocalizedStringResource.hash(into:)()
{
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (!v0)
  {
    return sub_24AAB5514();
  }

  sub_24AAB5514();
  sub_24AAB4F64();
}

uint64_t LocalizedStringResource.hashValue.getter()
{
  sub_24AAB54F4();
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v0)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AA723B8()
{
  sub_24AAB54F4();
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v0)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t sub_24AA72460()
{
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (!v0)
  {
    return sub_24AAB5514();
  }

  sub_24AAB5514();
  sub_24AAB4F64();
}

uint64_t sub_24AA72508()
{
  sub_24AAB54F4();
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v0)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  return sub_24AAB5524();
}

uint64_t _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v14 = *a1;
      v10 = sub_24AAB5554();
      sub_24AA15ED0(v3, v2, 0);
      v11 = v6;
      v12 = v5;
      v13 = 0;
      goto LABEL_11;
    }

    goto LABEL_20;
  }

  if (v4 != 1)
  {
    v16 = *a1;
    switch(v3)
    {
      case 1:
        if (v7 != 2 || v6 != 1 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v20 = 1;
        sub_24AA15ED0(1, 0, 2);
        return v20;
      case 2:
        if (v7 != 2 || v6 != 2 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 2;
        goto LABEL_257;
      case 3:
        if (v7 != 2 || v6 != 3 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 3;
        goto LABEL_257;
      case 4:
        if (v7 != 2 || v6 != 4 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 4;
        goto LABEL_257;
      case 5:
        if (v7 != 2 || v6 != 5 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 5;
        goto LABEL_257;
      case 6:
        if (v7 != 2 || v6 != 6 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 6;
        goto LABEL_257;
      case 7:
        if (v7 != 2 || v6 != 7 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 7;
        goto LABEL_257;
      case 8:
        if (v7 != 2 || v6 != 8 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 8;
        goto LABEL_257;
      case 9:
        if (v7 != 2 || v6 != 9 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 9;
        goto LABEL_257;
      case 10:
        if (v7 != 2 || v6 != 10 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 10;
        goto LABEL_257;
      case 11:
        if (v7 != 2 || v6 != 11 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 11;
        goto LABEL_257;
      case 12:
        if (v7 != 2 || v6 != 12 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 12;
        goto LABEL_257;
      case 13:
        if (v7 != 2 || v6 != 13 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 13;
        goto LABEL_257;
      case 14:
        if (v7 != 2 || v6 != 14 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 14;
        goto LABEL_257;
      case 15:
        if (v7 != 2 || v6 != 15 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 15;
        goto LABEL_257;
      case 16:
        if (v7 != 2 || v6 != 16 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 16;
        goto LABEL_257;
      case 17:
        if (v7 != 2 || v6 != 17 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 17;
        goto LABEL_257;
      case 18:
        if (v7 != 2 || v6 != 18 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 18;
        goto LABEL_257;
      case 19:
        if (v7 != 2 || v6 != 19 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 19;
        goto LABEL_257;
      case 20:
        if (v7 != 2 || v6 != 20 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 20;
        goto LABEL_257;
      case 21:
        if (v7 != 2 || v6 != 21 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 21;
        goto LABEL_257;
      case 22:
        if (v7 != 2 || v6 != 22 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 22;
        goto LABEL_257;
      case 23:
        if (v7 != 2 || v6 != 23 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 23;
        goto LABEL_257;
      case 24:
        if (v7 != 2 || v6 != 24 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 24;
        goto LABEL_257;
      case 25:
        if (v7 != 2 || v6 != 25 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 25;
        goto LABEL_257;
      case 26:
        if (v7 != 2 || v6 != 26 || v5 != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 26;
        goto LABEL_257;
      default:
        if (v7 != 2 || (v5 | v6) != 0)
        {
          goto LABEL_20;
        }

        sub_24AA15ED0(*a1, v2, 2);
        v18 = 0;
LABEL_257:
        sub_24AA15ED0(v18, 0, 2);
        v20 = 1;
        break;
    }

    return v20;
  }

  if (v7 != 1)
  {
    v19 = *(a1 + 8);

LABEL_20:
    sub_24AA15F10(v6, v5, v7);
    sub_24AA15ED0(v3, v2, v4);
    sub_24AA15ED0(v6, v5, v7);
    return 0;
  }

  if (v3 != v6 || v2 != v5)
  {
    v9 = *a1;
    LOBYTE(v10) = sub_24AAB5474();
    sub_24AA15F10(v6, v5, 1);
    sub_24AA15F10(v3, v2, 1);
    sub_24AA15ED0(v3, v2, 1);
    v11 = v6;
    v12 = v5;
    v13 = 1;
LABEL_11:
    sub_24AA15ED0(v11, v12, v13);
    return v10 & 1;
  }

  v20 = 1;
  sub_24AA15F10(*a1, v2, 1);
  sub_24AA15F10(v3, v2, 1);
  sub_24AA15ED0(v3, v2, 1);
  sub_24AA15ED0(v3, v2, 1);
  return v20;
}

unint64_t sub_24AA72C1C()
{
  result = qword_27EF86A10;
  if (!qword_27EF86A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A10);
  }

  return result;
}

unint64_t sub_24AA72C74()
{
  result = qword_27EF86A18;
  if (!qword_27EF86A18)
  {
    sub_24AAB2B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A18);
  }

  return result;
}

uint64_t sub_24AA72CCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AA72D14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_24AA72D58(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_24AA72D80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 81))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 80);
  if (v3 >= 6)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24AA72DBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA72E10(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_24AA72E4C(uint64_t a1, uint64_t a2)
{
  sub_24AA43A54(a1, v55);
  sub_24AA43A54(a2, v57);
  if (v56 > 1u)
  {
    if (v56 == 2)
    {
      sub_24AA43A54(v55, v53);
      if (v59 == 2)
      {
LABEL_16:
        sub_24AA15A64(v53, &v50);
        sub_24AA15A64(v57, v48);
        v21 = *(&v51 + 1);
        v22 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v44 = v21;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v43);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_1Tm, v22, v21);
        v24 = v49;
        v25 = __swift_project_boxed_opaque_existential_1(v48, v49);
        *(&v37 + 1) = v24;
        v26 = __swift_allocate_boxed_opaque_existential_1Tm(&v36);
        (*(*(v24 - 8) + 16))(v26, v25, v24);
        sub_24AA168B4(v43, v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
        if (swift_dynamicCast())
        {
          v27 = *(&v46 + 1);
          v28 = v47;
          __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
          v19 = sub_24AA71DB8(&v36, v27, v28);
          __swift_destroy_boxed_opaque_existential_1Tm(&v45);
        }

        else
        {
          v47 = 0;
          v45 = 0u;
          v46 = 0u;
          sub_24AA169C4(&v45, &qword_27EF85078, &qword_24AAB6A18);
          v19 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v36);
        v29 = v43;
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        v33 = &v50;
LABEL_33:
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        sub_24AA4214C(v55);
        return v19 & 1;
      }
    }

    else
    {
      if (v56 != 3)
      {
        goto LABEL_20;
      }

      sub_24AA43A54(v55, v53);
      if (v59 == 3)
      {
        sub_24AA15A64(v53, &v50);
        sub_24AA15A64(v57, v48);
        sub_24AA15A64(v54, &v45);
        sub_24AA15A64(&v58, v43);
        v3 = *(&v51 + 1);
        v4 = __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v42 = v3;
        v5 = __swift_allocate_boxed_opaque_existential_1Tm(v41);
        (*(*(v3 - 8) + 16))(v5, v4, v3);
        v6 = v49;
        v7 = __swift_project_boxed_opaque_existential_1(v48, v49);
        v40 = v6;
        v8 = __swift_allocate_boxed_opaque_existential_1Tm(v39);
        (*(*(v6 - 8) + 16))(v8, v7, v6);
        sub_24AA168B4(v41, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
        if (swift_dynamicCast())
        {
          v9 = *(&v37 + 1);
          v10 = v38;
          __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          LOBYTE(v9) = sub_24AA71DB8(v39, v9, v10);
          __swift_destroy_boxed_opaque_existential_1Tm(&v36);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          if (v9)
          {
            v11 = *(&v46 + 1);
            v12 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
            v42 = v11;
            v13 = __swift_allocate_boxed_opaque_existential_1Tm(v41);
            (*(*(v11 - 8) + 16))(v13, v12, v11);
            v14 = v44;
            v15 = __swift_project_boxed_opaque_existential_1(v43, v44);
            v40 = v14;
            v16 = __swift_allocate_boxed_opaque_existential_1Tm(v39);
            (*(*(v14 - 8) + 16))(v16, v15, v14);
            sub_24AA168B4(v41, v35);
            if (swift_dynamicCast())
            {
              v17 = *(&v37 + 1);
              v18 = v38;
              __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
              v19 = sub_24AA71DB8(v39, v17, v18);
              __swift_destroy_boxed_opaque_existential_1Tm(&v36);
            }

            else
            {
              v38 = 0;
              v36 = 0u;
              v37 = 0u;
              sub_24AA169C4(&v36, &qword_27EF85078, &qword_24AAB6A18);
              v19 = 0;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v39);
            __swift_destroy_boxed_opaque_existential_1Tm(v41);
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v38 = 0;
          v36 = 0u;
          v37 = 0u;
          sub_24AA169C4(&v36, &qword_27EF85078, &qword_24AAB6A18);
          __swift_destroy_boxed_opaque_existential_1Tm(v39);
          __swift_destroy_boxed_opaque_existential_1Tm(v41);
          v19 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        v29 = &v45;
        goto LABEL_32;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

LABEL_19:
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    goto LABEL_20;
  }

  if (v56)
  {
    if (v56 == 1)
    {
      sub_24AA43A54(v55, v53);
      if (v59 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_24AA43A54(v55, v53);
    v20 = *&v53[0];
    if (!v59)
    {
      v30 = *&v57[0];
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85010, &qword_24AABB840);
      v48[0] = v20;
      *(&v46 + 1) = v49;
      *&v45 = v30;
      sub_24AA168B4(v48, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85070, &qword_24AAB6A10);
      if (swift_dynamicCast())
      {
        v31 = *(&v51 + 1);
        v32 = v52;
        __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
        v19 = sub_24AA71DB8(&v45, v31, v32);
        __swift_destroy_boxed_opaque_existential_1Tm(&v50);
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
        sub_24AA169C4(&v50, &qword_27EF85078, &qword_24AAB6A18);
        v19 = 0;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
      v33 = v48;
      goto LABEL_33;
    }
  }

LABEL_20:
  sub_24AA169C4(v55, &qword_27EF86A20, &qword_24AABB838);
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_24AA734BC(uint64_t a1, uint64_t a2)
{
  sub_24AA43A54(a1, v5);
  v3 = v6 == 0;
  sub_24AA4214C(v5);
  sub_24AA43A54(a2, v5);
  LODWORD(a2) = v6;
  sub_24AA4214C(v5);
  return v3 ^ (a2 == 0);
}

uint64_t (*EnvironmentValues.performCallAction.getter())()
{
  sub_24AA73590();
  sub_24AAB40A4();
  *(swift_allocObject() + 16) = v1;
  return sub_24AA736C8;
}

unint64_t sub_24AA73590()
{
  result = qword_27EF86A30;
  if (!qword_27EF86A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A30);
  }

  return result;
}

uint64_t sub_24AA73690()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24AA736C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t EnvironmentValues.performCallAction.setter(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_24AA73590();
  return sub_24AAB40B4();
}

uint64_t sub_24AA7376C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_24AA73794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AA16768(a1, v13);
  v11[0] = swift_getKeyPath();
  v11[1] = 0;
  v12 = 0;
  *&v13[40] = xmmword_24AABB860;
  v14 = 0;
  sub_24AA16768(a1 + 40, v9);
  v7[0] = swift_getKeyPath();
  v7[1] = 0;
  v8 = 0;
  *&v9[40] = xmmword_24AABB860;
  v10 = 0;
  sub_24AA58880(v11, v6);
  sub_24AA58880(v7, v5);
  sub_24AA58880(v6, a2);
  sub_24AA58880(v5, a2 + 88);
  sub_24AA588DC(v7);
  sub_24AA588DC(v11);
  sub_24AA588DC(v5);
  return sub_24AA588DC(v6);
}

uint64_t sub_24AA7387C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24AAB41B4();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  return sub_24AA73794(v1, a1 + 24);
}

uint64_t sub_24AA738B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24AA16768(a1, v12);
  v10[0] = swift_getKeyPath();
  v10[1] = 0;
  v11 = 0;
  v12[5] = 0x4041800000000000;
  sub_24AA16768(a1 + 40, v9);
  v7[0] = swift_getKeyPath();
  v7[1] = 0;
  v8 = 0;
  v9[5] = 0x4041800000000000;
  sub_24AA158F8(v10, v6);
  sub_24AA158F8(v7, v5);
  sub_24AA158F8(v6, a2);
  sub_24AA158F8(v5, a2 + 72);
  sub_24AA16820(v7);
  sub_24AA16820(v10);
  sub_24AA16820(v5);
  return sub_24AA16820(v6);
}

uint64_t sub_24AA73998@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24AAB4104();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  return sub_24AA738B8(v1, a1 + 24);
}

void (*EnvironmentValues.performCallAction.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_24AA73590();
  sub_24AAB40A4();
  v5 = swift_allocObject();
  *(v5 + 16) = *(v4 + 16);
  *v4 = sub_24AA77904;
  *(v4 + 8) = v5;
  return sub_24AA73ACC;
}

void sub_24AA73ACC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    v2[2] = sub_24AA778D4;
    v2[3] = v7;

    sub_24AAB40B4();
    v8 = v2[1];
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
    v2[2] = sub_24AA778D4;
    v2[3] = v9;
    sub_24AAB40B4();
  }

  free(v2);
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24AA73BF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA73C3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AA73CC0@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_24AAB42D4();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86AF8, &qword_24AABBD90);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B00, &qword_24AABBD98);
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B08, &qword_24AABBDA0);
  v16 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v18 = &v26 - v17;
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84ED8, &qword_24AAB6708);
  sub_24AA15A84();
  sub_24AAB4624();
  sub_24AAB42C4();
  v19 = sub_24AA16A68(&qword_27EF86B10, &qword_27EF86AF8, &qword_24AABBD90);
  v20 = sub_24AA77548(&qword_27EF86B18, MEMORY[0x277CDE0B8]);
  sub_24AAB47D4();
  (*(v30 + 8))(v5, v2);
  (*(v7 + 8))(v10, v6);
  v34 = v6;
  v35 = v2;
  v36 = v19;
  v37 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v28;
  sub_24AAB48B4();
  (*(v29 + 8))(v15, v21);
  v22 = sub_24AAB4A44();
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(v27 + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v32 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B20, &qword_24AABBDD8);
  sub_24AA77114();
  sub_24AA77348();
  sub_24AAB4884();
  return sub_24AA169C4(v18, &qword_27EF86B08, &qword_24AABBDA0);
}

uint64_t sub_24AA7411C(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  v9 = (*(v3 + 16))(v2, v3);
  swift_getKeyPath();
  sub_24AA77500(a1, v8);
  v4 = swift_allocObject();
  v5 = v8[1];
  v4[1] = v8[0];
  v4[2] = v5;
  v6 = v8[3];
  v4[3] = v8[2];
  v4[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F20, &qword_24AABBE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EF0, &qword_24AAB6710);
  sub_24AA16A68(&qword_27EF84F28, &qword_27EF84F20, &qword_24AABBE20);
  sub_24AA77548(&qword_27EF84F30, type metadata accessor for MenuItem);
  sub_24AA15B08();
  return sub_24AAB4C74();
}

uint64_t sub_24AA742BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v49 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F08, &qword_24AAB6718);
  v4 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v6 = &v42[-v5];
  v7 = sub_24AAB2B84();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F38, &unk_24AAB6780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v42[-v13];
  v15 = sub_24AAB4C64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for MenuItem();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v42[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24AA15E0C(a1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
  {
    sub_24AAB4C54();
    (*(v16 + 16))(v14, v19, v15);
    swift_storeEnumTagMultiPayload();
    sub_24AA77548(&qword_27EF84EF8, MEMORY[0x277CDF088]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    return (*(v16 + 8))(v19, v15);
  }

  else
  {
    v26 = &v23[*(v24 + 48)];
    v44 = v11;
    v27 = *v26;
    v28 = *(v26 + 1);
    v43 = v23[*(v24 + 64)];
    v29 = v6;
    v30 = v26[16];
    (*(v46 + 32))(v10, v23, v47);
    sub_24AA77500(v45, v50);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    *(v31 + 24) = v28;
    *(v31 + 32) = v30;
    v32 = v50[1];
    *(v31 + 40) = v50[0];
    *(v31 + 56) = v32;
    v33 = v50[3];
    *(v31 + 72) = v50[2];
    *(v31 + 88) = v33;
    MEMORY[0x28223BE20](v31);
    *&v42[-16] = v10;
    v34 = v27;
    v35 = v27;
    v36 = v28;
    v37 = v28;
    LOBYTE(v28) = v38;
    sub_24AA15F00(v34, v36, v38);
    sub_24AAB4BB4();
    KeyPath = swift_getKeyPath();
    v40 = swift_allocObject();
    *(v40 + 16) = (v43 & 1) == 0;
    v41 = (v29 + *(v48 + 36));
    *v41 = KeyPath;
    v41[1] = sub_24AA7790C;
    v41[2] = v40;
    sub_24AA77748(v29, v14);
    swift_storeEnumTagMultiPayload();
    sub_24AA77548(&qword_27EF84EF8, MEMORY[0x277CDF088]);
    sub_24AA15BC4();
    sub_24AAB42B4();
    sub_24AA15EC0(v35, v37, v28);
    sub_24AA169C4(v29, &qword_27EF84F08, &qword_24AAB6718);
    return (*(v46 + 8))(v10, v47);
  }
}

uint64_t sub_24AA7480C(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  v9 = (*(v3 + 16))(v2, v3);
  swift_getKeyPath();
  sub_24AA77500(a1, v8);
  v4 = swift_allocObject();
  v5 = v8[1];
  v4[1] = v8[0];
  v4[2] = v5;
  v6 = v8[3];
  v4[3] = v8[2];
  v4[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F20, &qword_24AABBE20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B50, &qword_24AABBDF0);
  sub_24AA16A68(&qword_27EF84F28, &qword_27EF84F20, &qword_24AABBE20);
  sub_24AA77548(&qword_27EF84F30, type metadata accessor for MenuItem);
  sub_24AA773CC();
  return sub_24AAB4C74();
}

uint64_t sub_24AA749AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B60, &unk_24AABBDF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  v13 = type metadata accessor for MenuItem();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24AAB2B84();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA15E0C(a1, v16);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F40, &unk_24AABB540);
  if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
  {
    sub_24AA77590(v16);
    return (*(v9 + 56))(a3, 1, 1, v8);
  }

  else
  {
    v40 = v8;
    v41 = a3;
    v24 = &v16[*(v22 + 48)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = v24[16];
    v28 = v16[*(v22 + 64)];
    (*(v18 + 32))(v21, v16, v17);
    if (v28 == 1)
    {
      sub_24AA77500(v42, v46);
      v29 = swift_allocObject();
      v39[1] = v39;
      *(v29 + 16) = v25;
      *(v29 + 24) = v26;
      *(v29 + 32) = v27;
      v30 = v46[1];
      *(v29 + 40) = v46[0];
      *(v29 + 56) = v30;
      v31 = v46[3];
      *(v29 + 72) = v46[2];
      *(v29 + 88) = v31;
      MEMORY[0x28223BE20](v29);
      v39[-2] = v21;
      sub_24AA15F00(v25, v26, v27);
      v42 = v17;
      v32 = v27;
      v33 = v43;
      sub_24AAB4BB4();
      v34 = v32;
      v17 = v42;
      sub_24AA15EC0(v25, v26, v34);
      v36 = v44;
      v35 = v45;
      (*(v44 + 32))(v12, v33, v45);
      v37 = 0;
    }

    else
    {
      sub_24AA15EC0(v25, v26, v27);
      v37 = 1;
      v36 = v44;
      v35 = v45;
    }

    (*(v36 + 56))(v12, v37, 1, v35);
    v38 = v41;
    sub_24AA775EC(v12, v41);
    (*(v9 + 56))(v38, 0, 1, v40);
    return (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_24AA74E20(uint64_t (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_24AAB4094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 0)
  {
    return a1(v11);
  }

  v15 = *a4;
  v14 = *(a4 + 8);
  if (*(a4 + 16) == 1)
  {
    v16 = *(a4 + 8);
  }

  else
  {
    v18 = v11;

    sub_24AAB5134();
    v19 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA15934();
    (*(v9 + 8))(v13, v18);
    v15 = v21[0];
  }

  v21[0] = a1;
  v21[1] = a2;
  v22 = a3;
  v15(v21);
}

uint64_t sub_24AA74FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_24AAB4ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24AAB2B84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v13 = qword_27EF919A8;
  sub_24AAB2CC4();
  v23[1] = sub_24AAB4F14();
  v23[2] = v14;
  sub_24AA15894();
  v15 = sub_24AAB4774();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = (*(v9 + 8))(v12, v8);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v21;
  return result;
}

uint64_t sub_24AA75208@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v125 = sub_24AAB4354();
  v124 = *(v125 - 8);
  v3 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_24AAB4404();
  v120 = *(v121 - 8);
  v5 = *(v120 + 64);
  MEMORY[0x28223BE20](v121);
  v119 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24AAB2CD4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v117 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24AAB4ED4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v114 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24AAB2B84();
  v116 = *(v118 - 8);
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v118);
  v115 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v126 = sub_24AAB4C44();
  v15 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v17 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24AAB3F14();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A38, &qword_24AABB9D0);
  v23 = *(*(v22 - 1) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v100 - v24;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A40, &qword_24AABB9D8);
  v102 = *(v103 - 8);
  v26 = *(v102 + 64);
  MEMORY[0x28223BE20](v103);
  v28 = &v100 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A48, &qword_24AABB9E0);
  v105 = *(v106 - 8);
  v29 = *(v105 + 64);
  MEMORY[0x28223BE20](v106);
  v104 = &v100 - v30;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A50, &qword_24AABB9E8);
  v31 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A58, &qword_24AABB9F0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v108 = &v100 - v36;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A60, &qword_24AABB9F8);
  v37 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v100 - v38;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A68, &qword_24AABBA00);
  v112 = *(v113 - 8);
  v39 = *(v112 + 64);
  MEMORY[0x28223BE20](v113);
  v111 = &v100 - v40;
  sub_24AA58880(v1, &v129);
  v41 = swift_allocObject();
  v42 = v132;
  *(v41 + 48) = v131;
  *(v41 + 64) = v42;
  *(v41 + 80) = v133;
  *(v41 + 96) = v134;
  v43 = v130;
  *(v41 + 16) = v129;
  *(v41 + 32) = v43;
  v127 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A70, &qword_24AABBA08);
  sub_24AA767BC();
  sub_24AAB4BB4();
  v44 = *(v1 + 48);
  v45 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v101 = sub_24AAA9504(v44, v45);
  v100 = v46;
  if (*(v2 + 81))
  {
    v47 = *MEMORY[0x277CE0118];
    v48 = sub_24AAB4184();
    (*(*(v48 - 8) + 104))(v17, v47, v48);
    sub_24AA77548(&qword_27EF86A90, MEMORY[0x277CE1260]);
  }

  else
  {
    v49 = *(v18 + 20);
    v50 = *MEMORY[0x277CE0118];
    v51 = sub_24AAB4184();
    (*(*(v51 - 8) + 104))(&v21[v49], v50, v51);
    __asm { FMOV            V0.2D, #12.0 }

    *v21 = _Q0;
    sub_24AA77548(&qword_27EF86AD0, MEMORY[0x277CDFC08]);
  }

  v57 = sub_24AAB4C94();
  v58 = *(v2 + 64);
  v59 = *(v2 + 72);
  v60 = *(v2 + 80);
  v126 = 0u;
  if (v60 == 1)
  {
    sub_24AA16768(v2 + 24, &v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
    }

    else
    {
      v126 = xmmword_24AABB870;
    }
  }

  *&v25[v22[11]] = v57;
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v61 = v22[9];
  *&v25[v61] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v62 = &v25[v22[10]];
  v63 = v100;
  *v62 = v101;
  v62[1] = v63;
  v64 = &v25[v22[12]];
  *v64 = v58;
  *(v64 + 1) = v59;
  v64[16] = v60;
  v65 = &v25[v22[13]];
  v66 = v126;
  *v65 = v126;
  v65[1] = v66;
  sub_24AA16A68(&qword_27EF86A98, &qword_27EF86A40, &qword_24AABB9D8);
  sub_24AA16A68(&qword_27EF86AA0, &qword_27EF86A38, &qword_24AABB9D0);
  v67 = v104;
  v68 = v103;
  sub_24AAB47E4();
  sub_24AA169C4(v25, &qword_27EF86A38, &qword_24AABB9D0);
  (*(v102 + 8))(v28, v68);
  v69 = *(v2 + 48);
  v70 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v69);
  LOBYTE(v69) = (*(v70 + 32))(v69, v70);
  KeyPath = swift_getKeyPath();
  v72 = swift_allocObject();
  *(v72 + 16) = v69 & 1;
  (*(v105 + 32))(v33, v67, v106);
  v73 = &v33[*(v107 + 36)];
  *v73 = KeyPath;
  v73[1] = sub_24AA56AD0;
  v73[2] = v72;
  v74 = *(v2 + 48);
  v75 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1((v2 + 24), v74);
  v76 = v115;
  (*(v75 + 16))(v74, v75);
  sub_24AAB2B14();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v77 = qword_27EF919A8;
  sub_24AAB2CC4();
  *&v129 = sub_24AAB4F14();
  *(&v129 + 1) = v78;
  sub_24AA15894();
  v79 = sub_24AAB4774();
  v81 = v80;
  v83 = v82;
  (*(v116 + 8))(v76, v118);
  sub_24AA768E8();
  v84 = v108;
  sub_24AAB4854();
  sub_24AA158E8(v79, v81, v83 & 1);

  sub_24AA169C4(v33, &qword_27EF86A50, &qword_24AABB9E8);
  v85 = sub_24AAB4D64();
  v87 = v86;
  v88 = v110;
  v89 = v109;
  v90 = &v109[*(v110 + 36)];
  sub_24AA763B0(v2, v90);
  *(v90 + 8) = v85;
  *(v90 + 9) = v87;
  sub_24AA76A70(v84, v89);
  v91 = v119;
  sub_24AAB43F4();
  v92 = sub_24AA76AE0();
  v93 = v111;
  sub_24AAB4894();
  (*(v120 + 8))(v91, v121);
  sub_24AA169C4(v89, &qword_27EF86A60, &qword_24AABB9F8);
  sub_24AA58880(v2, &v129);
  v94 = swift_allocObject();
  v95 = v132;
  *(v94 + 48) = v131;
  *(v94 + 64) = v95;
  *(v94 + 80) = v133;
  *(v94 + 96) = v134;
  v96 = v130;
  *(v94 + 16) = v129;
  *(v94 + 32) = v96;
  v97 = v122;
  sub_24AAB4344();
  v128[0] = v88;
  v128[1] = v92;
  swift_getOpaqueTypeConformance2();
  v98 = v113;
  sub_24AAB4874();

  (*(v124 + 8))(v97, v125);
  return (*(v112 + 8))(v93, v98);
}

uint64_t sub_24AA76018@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB2CD4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_24AAB4ED4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_24AAB2B84();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768((a1 + 3), &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA0, &unk_24AAB66B0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(&v32, &v38);
    v13 = *(&v39 + 1);
    v14 = v40;
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    (*(v14 + 16))(v13, v14);
    v32 = sub_24AAB4AC4();
    v33 = 0uLL;
    LOBYTE(v34) = 0;
    sub_24AAB42B4();
    v30 = v35;
    v31 = v36;
    v15 = v37;
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    v18 = v30;
    v17 = v31;
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_24AA169C4(&v32, &qword_27EF86AD8, &qword_24AABBB08);
    v19 = a1[6];
    v20 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v19);
    (*(v20 + 16))(v19, v20);
    sub_24AAB2B14();
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v21 = qword_27EF919A8;
    sub_24AAB2CC4();
    *&v38 = sub_24AAB4F14();
    *(&v38 + 1) = v22;
    sub_24AA15894();
    v23 = sub_24AAB4774();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    *&v35 = v23;
    *(&v35 + 1) = v25;
    *&v36 = v27 & 1;
    *(&v36 + 1) = v29;
    v37 = 1;
    result = sub_24AAB42B4();
    v17 = v39;
    v18 = v38;
    v15 = v40;
  }

  *a2 = v18;
  *(a2 + 16) = v17;
  *(a2 + 32) = v15;
  return result;
}

double sub_24AA763B0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_24AA16768(a1 + 24, &KeyPath);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EA8, &unk_24AABBAD0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(v11, v13);
    v3 = v14;
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v5 = *((*(v4 + 16))(v3, v4) + 16);

    if (v5)
    {
      sub_24AA16768(v13, v10 + 8);
      KeyPath = swift_getKeyPath();
      LOBYTE(v10[0]) = 0;
      v6 = v10[2];
      a2[2] = v10[1];
      a2[3] = v6;
      v7 = v10[0];
      *a2 = KeyPath;
      a2[1] = v7;
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    sub_24AA169C4(v11, &qword_27EF84EB0, &unk_24AAB66C0);
  }

  result = 0.0;
  a2[2] = 0u;
  a2[3] = 0u;
  *a2 = 0u;
  a2[1] = 0u;
  return result;
}

uint64_t sub_24AA764F8(uint64_t a1)
{
  v2 = sub_24AAB4094();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA16768(a1 + 24, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A28, &qword_24AABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F48, &unk_24AABBAC0);
  if (swift_dynamicCast())
  {
    sub_24AA15A64(&v15, v20);
    v8 = *a1;
    v7 = *(a1 + 8);
    if (*(a1 + 16) == 1)
    {
      v9 = *(a1 + 8);
    }

    else
    {
      v11 = *a1;

      sub_24AAB5134();
      v12 = sub_24AAB44B4();
      sub_24AAB3A54();

      sub_24AAB4084();
      swift_getAtKeyPath();
      sub_24AA15934();
      (*(v3 + 8))(v6, v2);
      v8 = v18;
    }

    v13 = v21;
    v14 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v14 + 16))(&v18, v13, v14);
    v15 = v18;
    LOBYTE(v16) = v19;
    v8(&v15);

    sub_24AA15ED0(v15, *(&v15 + 1), v16);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_24AA169C4(&v15, &qword_27EF84F50, &qword_24AAB67C0);
  }
}

double sub_24AA76778@<D0>(uint64_t a1@<X8>)
{
  sub_24AA76018(*(v1 + 16), v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

unint64_t sub_24AA767BC()
{
  result = qword_27EF86A78;
  if (!qword_27EF86A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A70, &qword_24AABBA08);
    sub_24AA76840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A78);
  }

  return result;
}

unint64_t sub_24AA76840()
{
  result = qword_27EF86A80;
  if (!qword_27EF86A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A88, &qword_24AABBA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86A80);
  }

  return result;
}

unint64_t sub_24AA768E8()
{
  result = qword_27EF86AA8;
  if (!qword_27EF86AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A50, &qword_24AABB9E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A40, &qword_24AABB9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A38, &qword_24AABB9D0);
    sub_24AA16A68(&qword_27EF86A98, &qword_27EF86A40, &qword_24AABB9D8);
    sub_24AA16A68(&qword_27EF86AA0, &qword_27EF86A38, &qword_24AABB9D0);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AA8);
  }

  return result;
}

uint64_t sub_24AA76A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86A58, &qword_24AABB9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AA76AE0()
{
  result = qword_27EF86AB0;
  if (!qword_27EF86AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A60, &qword_24AABB9F8);
    sub_24AA76B98();
    sub_24AA16A68(&qword_27EF86AC0, &qword_27EF86AC8, &qword_24AABBAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AB0);
  }

  return result;
}

unint64_t sub_24AA76B98()
{
  result = qword_27EF86AB8;
  if (!qword_27EF86AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A58, &qword_24AABB9F0);
    sub_24AA768E8();
    sub_24AA77548(&qword_27EF84FE8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AB8);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24AA76C68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA76CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_24AA76D2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24AA76D74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24AA76DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_24AA76E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RoundedControl.Style(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_24AA76F58()
{
  result = qword_27EF86AE0;
  if (!qword_27EF86AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86AE8, qword_24AABBC30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86A60, &qword_24AABB9F8);
    sub_24AA76AE0();
    swift_getOpaqueTypeConformance2();
    sub_24AA77548(&qword_27EF84FE8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AE0);
  }

  return result;
}

unint64_t sub_24AA77054()
{
  result = qword_27EF86AF0;
  if (!qword_27EF86AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86AF0);
  }

  return result;
}

unint64_t sub_24AA77114()
{
  result = qword_27EF86B28;
  if (!qword_27EF86B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B08, &qword_24AABBDA0);
    sub_24AA771CC();
    sub_24AA16A68(&qword_27EF85DF0, &qword_27EF85DF8, &qword_24AAB8C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B28);
  }

  return result;
}

unint64_t sub_24AA771CC()
{
  result = qword_27EF86B30;
  if (!qword_27EF86B30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B38, &unk_24AABBDE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86AF8, &qword_24AABBD90);
    sub_24AAB42D4();
    sub_24AA16A68(&qword_27EF86B10, &qword_27EF86AF8, &qword_24AABBD90);
    sub_24AA77548(&qword_27EF86B18, MEMORY[0x277CDE0B8]);
    swift_getOpaqueTypeConformance2();
    sub_24AA77548(&qword_27EF84FE8, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B30);
  }

  return result;
}

unint64_t sub_24AA77348()
{
  result = qword_27EF86B40;
  if (!qword_27EF86B40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B20, &qword_24AABBDD8);
    sub_24AA773CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B40);
  }

  return result;
}

unint64_t sub_24AA773CC()
{
  result = qword_27EF86B48;
  if (!qword_27EF86B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B50, &qword_24AABBDF0);
    sub_24AA77450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B48);
  }

  return result;
}

unint64_t sub_24AA77450()
{
  result = qword_27EF86B58;
  if (!qword_27EF86B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B60, &unk_24AABBDF8);
    sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86B58);
  }

  return result;
}

uint64_t sub_24AA77548(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24AA77590(uint64_t a1)
{
  v2 = type metadata accessor for MenuItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24AA775EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B60, &unk_24AABBDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_24AA15934();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 40));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_76Tm()
{
  sub_24AA15EC0(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_24AA15934();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_24AA77748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F08, &qword_24AAB6718);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA77840()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B08, &qword_24AABBDA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86B20, &qword_24AABBDD8);
  sub_24AA77114();
  sub_24AA77348();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CallNotificationView.init(viewModel:)@<X0>(void *a1@<X8>)
{
  a1[2] = 0;
  v2 = *(type metadata accessor for CallNotificationView(0) + 24);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CallNotificationViewModel();
  result = sub_24AAB4B54();
  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t View.notificationBackground()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for NotificationBackground(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24AAB3EE4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v17 = *(v5 + 20);
  *&v8[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x24C225190](v8, a1, v5, a2);
  sub_24AA81D94(v8, type metadata accessor for NotificationBackground);
  v18 = sub_24AA80D80(&qword_27EF86B88, type metadata accessor for NotificationBackground);
  v24 = a2;
  v25 = v18;
  swift_getWitnessTable();
  v19 = v10[2];
  v19(v16, v14, v9);
  v20 = v10[1];
  v20(v14, v9);
  v19(v23, v16, v9);
  return (v20)(v16, v9);
}

uint64_t CallNotificationView.viewModel.getter()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return v2;
}

uint64_t sub_24AA77D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  result = sub_24AAB4B64();
  *a2 = v4;
  return result;
}

uint64_t sub_24AA77DD0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  return sub_24AAB4B74();
}

uint64_t CallNotificationView.viewModel.setter()
{
  v2 = *v0;
  v3 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  return sub_24AAB4B74();
}

void (*CallNotificationView.viewModel.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v6 = *v1;
  v5 = v1[1];
  v4[6] = *v1;
  v4[7] = v5;
  *v4 = v6;
  v4[1] = v5;

  v4[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  return sub_24AA77F28;
}

void sub_24AA77F28(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[2] = *(*a1 + 48);
  v2[5] = v2[4];
  v4 = v2[8];
  v2[3] = v3;
  if (a2)
  {

    sub_24AAB4B74();

    v5 = v2[4];
  }

  else
  {
    sub_24AAB4B74();
  }

  free(v2);
}

uint64_t CallNotificationView.$viewModel.getter()
{
  v3 = *v0;
  v4 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B84();
  return v2;
}

uint64_t sub_24AA7802C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24AAB4094();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for CallNotificationView(0);
  sub_24AA1695C(v1 + *(v12 + 24), v11, &qword_27EF85290, &qword_24AAB9020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24AAB3CE4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_24AAB5134();
    v16 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_24AA78234@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v3 = sub_24AAB3CE4();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = *(v98 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v95 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v94 = &v82 - v7;
  v8 = sub_24AAB4DB4();
  v96 = *(v8 - 8);
  v97 = v8;
  v9 = *(v96 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85438, &qword_24AABC780);
  v12 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v93 = &v82 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EB8, &qword_24AABC788);
  v102 = *(v14 - 8);
  v15 = *(v102 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v91 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v90 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EC0, &qword_24AABC790);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EC8, &qword_24AABC798);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v101 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v82 - v30;
  v32 = *a1;
  v33 = a1[1];
  v103 = a1;
  v106 = v32;
  v107 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v34 = sub_24AA1F130();

  if (v34)
  {
    v35 = sub_24AAB40E4();
  }

  else
  {
    v35 = sub_24AAB4104();
  }

  *v31 = v35;
  *(v31 + 1) = 0;
  v31[16] = 0;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86ED0, &qword_24AABC7A0);
  sub_24AA78B1C(v103, &v31[*(v36 + 44)]);
  v106 = v32;
  v107 = v33;
  sub_24AAB4B64();
  v37 = v104;
  swift_getKeyPath();
  v106 = v37;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v38 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  v39 = *(v37 + v38);

  if (!v39)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  v104 = v39;
  sub_24AA80D80(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
  sub_24AAB2CF4();

  v41 = *(v39 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel);
  v40 = *(v39 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__statusLabel + 8);

  if (v40)
  {
    v104 = v41;
    v105 = v40;
    sub_24AA15894();
    v42 = v25;
    v43 = sub_24AAB4774();
    v44 = v23;
    v46 = v45;
    v48 = v47;
    v88 = v11;
    sub_24AAB4554();
    v83 = sub_24AAB4704();
    v82 = v49;
    v89 = v14;
    v51 = v50;

    v52 = v43;
    v25 = v42;
    v53 = v46;
    v23 = v44;
    sub_24AA158E8(v52, v53, v48 & 1);

    v54 = [objc_opt_self() secondaryLabelColor];
    v104 = sub_24AAB49C4();
    v55 = v83;
    v56 = v82;
    v86 = sub_24AAB46F4();
    v85 = v57;
    v84 = v58;
    v87 = v59;
    LOBYTE(v58) = v51 & 1;
    v14 = v89;
    sub_24AA158E8(v55, v56, v58);

    v60 = v94;
    sub_24AA7802C(v94);
    v62 = v98;
    v61 = v99;
    v63 = v95;
    (*(v98 + 104))(v95, *MEMORY[0x277CDF3C0], v99);
    LOBYTE(v55) = sub_24AAB3CD4();
    v64 = *(v62 + 8);
    v64(v63, v61);
    v64(v60, v61);
    v65 = v96;
    v66 = MEMORY[0x277CE13B8];
    if ((v55 & 1) == 0)
    {
      v66 = MEMORY[0x277CE13B0];
    }

    v67 = v88;
    v68 = v97;
    (*(v96 + 104))(v88, *v66, v97);
    v69 = v93;
    (*(v65 + 32))(&v93[*(v92 + 36)], v67, v68);
    v70 = v85;
    *v69 = v86;
    *(v69 + 1) = v70;
    v69[16] = v84 & 1;
    *(v69 + 3) = v87;
    KeyPath = swift_getKeyPath();
    v72 = v69;
    v73 = v91;
    sub_24AA1A25C(v72, v91, &qword_27EF85438, &qword_24AABC780);
    v74 = v73 + *(v14 + 36);
    *v74 = KeyPath;
    *(v74 + 8) = 0;
    v75 = v73;
    v76 = v90;
    sub_24AA1A25C(v75, v90, &qword_27EF86EB8, &qword_24AABC788);
    sub_24AA1A25C(v76, v25, &qword_27EF86EB8, &qword_24AABC788);
    v77 = 0;
  }

  else
  {
LABEL_9:
    v77 = 1;
  }

  (*(v102 + 56))(v25, v77, 1, v14);
  v78 = v101;
  sub_24AA1695C(v31, v101, &qword_27EF86EC8, &qword_24AABC798);
  sub_24AA1695C(v25, v23, &qword_27EF86EC0, &qword_24AABC790);
  v79 = v100;
  sub_24AA1695C(v78, v100, &qword_27EF86EC8, &qword_24AABC798);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86ED8, &qword_24AABC7D0);
  sub_24AA1695C(v23, v79 + *(v80 + 48), &qword_27EF86EC0, &qword_24AABC790);
  sub_24AA169C4(v25, &qword_27EF86EC0, &qword_24AABC790);
  sub_24AA169C4(v31, &qword_27EF86EC8, &qword_24AABC798);
  sub_24AA169C4(v23, &qword_27EF86EC0, &qword_24AABC790);
  return sub_24AA169C4(v78, &qword_27EF86EC8, &qword_24AABC798);
}

uint64_t sub_24AA78B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v101 = sub_24AAB40D4();
  v99 = *(v101 - 8);
  v3 = *(v99 + 64);
  MEMORY[0x28223BE20](v101);
  v96 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EE0, &qword_24AABC7D8);
  v100 = *(v102 - 8);
  v5 = *(v100 + 64);
  v6 = MEMORY[0x28223BE20](v102);
  v97 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v98 = &v95 - v8;
  v9 = type metadata accessor for CallStatusViewModel(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v103 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EE8, &qword_24AABC7E0);
  v12 = *(*(v113 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v113);
  v115 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v95 - v15;
  v117 = sub_24AAB3F04();
  v111 = *(v117 - 8);
  v16 = *(v111 + 64);
  MEMORY[0x28223BE20](v117);
  v110 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CallNotificationView(0);
  v105 = *(v18 - 8);
  v19 = *(v105 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EF0, &qword_24AABC7E8);
  v108 = *(v20 - 8);
  v109 = v20;
  v21 = *(v108 + 64);
  MEMORY[0x28223BE20](v20);
  v107 = &v95 - v22;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86EF8, &qword_24AABC7F0);
  v23 = *(v118 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v118);
  v106 = &v95 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F00, &qword_24AABC7F8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v114 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v95 - v30;
  v32 = *a1;
  v33 = a1;
  v119 = a1[1];
  v120 = v32;
  *&v150 = v32;
  *(&v150 + 1) = v119;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v34 = v134;
  swift_getKeyPath();
  *&v150 = v34;
  v104 = sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  LODWORD(a1) = *(v34 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

  v35 = 1;
  if (a1 == 1)
  {
    sub_24AA832B8(v33, &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
    v36 = (*(v105 + 80) + 16) & ~*(v105 + 80);
    v37 = swift_allocObject();
    sub_24AA80DCC(&v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v37 + v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F80, &qword_24AABC898);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86F88, &qword_24AABC8A0);
    v39 = sub_24AA833B0();
    *&v150 = v38;
    *(&v150 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    v40 = v107;
    sub_24AAB4BB4();
    v41 = v110;
    sub_24AAB3EF4();
    sub_24AA16A68(&qword_27EF86FB8, &qword_27EF86EF0, &qword_24AABC7E8);
    sub_24AA80D80(&qword_27EF86FC0, MEMORY[0x277CDDB18]);
    v42 = v106;
    v43 = v109;
    v44 = v117;
    sub_24AAB47D4();
    (*(v111 + 8))(v41, v44);
    (*(v108 + 8))(v40, v43);
    (*(v23 + 32))(v31, v42, v118);
    v35 = 0;
  }

  v45 = *(v23 + 56);
  v117 = v31;
  v45(v31, v35, 1, v118);
  v46 = v120;
  *&v134 = v120;
  *(&v134 + 1) = v119;
  sub_24AAB4B84();
  v47 = v150;
  v48 = v151;
  swift_getKeyPath();
  v150 = v47;
  *&v151 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F08, &qword_24AABD230);
  v49 = v121;
  sub_24AAB4C04();

  *&v124 = v46;
  v50 = v119;
  *(&v124 + 1) = v119;
  sub_24AAB4B84();
  v51 = v134;
  v52 = v135;
  swift_getKeyPath();
  v134 = v51;
  *&v135 = v52;
  sub_24AAB4C04();

  v118 = *(&v124 + 1);
  v53 = v124;
  LODWORD(v111) = v125;

  v54 = v120;
  v141 = v120;
  v142 = v50;
  sub_24AAB4B64();
  v55 = sub_24AA1F130();

  v56 = type metadata accessor for CallStatusView();
  *(v49 + v56[9]) = 0;
  v57 = v56[10];
  *(v49 + v57) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v58 = v49 + v56[5];
  v59 = v118;
  *v58 = v53;
  *(v58 + 8) = v59;
  *(v58 + 16) = v111;
  *(v49 + v56[6]) = !v55;
  *(v49 + v56[7]) = 1;
  *(v49 + v56[8]) = 0x4041000000000000;
  *(v49 + *(v113 + 36)) = 0;
  *&v150 = v54;
  *(&v150 + 1) = v50;
  sub_24AAB4B64();
  sub_24AA3A2B0(&v150);

  if (v155 == 255)
  {
    sub_24AA169C4(&v150, &qword_27EF85568, &qword_24AABC830);
    *&v150 = v54;
    *(&v150 + 1) = v50;
    sub_24AAB4B64();
    v61 = v134;
    swift_getKeyPath();
    *&v150 = v61;
    sub_24AAB2CF4();

    v62 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v61 + v62, &v150);

    v136 = v152;
    v137 = v153;
    v138 = v154;
    LODWORD(v62) = v155;
    v139[0] = v155;
    v134 = v150;
    v135 = v151;
    sub_24AA4214C(&v134);
    v60 = v117;
    if (v62)
    {
      *&v150 = v54;
      *(&v150 + 1) = v50;
      sub_24AAB4B64();
      v63 = v134;
      swift_getKeyPath();
      *&v150 = v63;
      sub_24AAB2CF4();

      v64 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
      swift_beginAccess();
      sub_24AA43A54(v63 + v64, &v141);

      LOBYTE(v150) = 1;
      *(&v150 + 1) = 0x4014000000000000;
      LOBYTE(v134) = 0;
      *(&v134 + 1) = 0x4014000000000000;
      sub_24AA82490();
      v147 = sub_24AAB3DA4();
      sub_24AA1695C(&v141, &v150, &qword_27EF86F10, &qword_24AABC838);
      LOBYTE(v156) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F10, &qword_24AABC838);
      sub_24AA82F50();
      sub_24AAB42B4();
      sub_24AA1695C(&v124, &v134, &qword_27EF86F28, &qword_24AABC840);
      v140 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F28, &qword_24AABC840);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F30, &qword_24AABC848);
      sub_24AA8305C();
      sub_24AA830E0();
      sub_24AAB42B4();
      sub_24AA169C4(&v124, &qword_27EF86F28, &qword_24AABC840);
      sub_24AA169C4(&v141, &qword_27EF86F10, &qword_24AABC838);
      goto LABEL_12;
    }

    *&v150 = v54;
    *(&v150 + 1) = v50;
    sub_24AAB4B64();
    v65 = v134;
    swift_getKeyPath();
    *&v150 = v65;
    sub_24AAB2CF4();

    v66 = *(v65 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waveformViewModel);
    v67 = v66;

    if (v66)
    {
      *&v150 = v54;
      *(&v150 + 1) = v50;
      sub_24AAB4B64();
      v68 = v134;
      swift_getKeyPath();
      *&v150 = v68;
      sub_24AAB2CF4();

      v69 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__statusViewModel;
      swift_beginAccess();
      v70 = v103;
      sub_24AA832B8(v68 + v69, v103, type metadata accessor for CallStatusViewModel);

      v71 = *(v70 + 24);

      sub_24AA81D94(v70, type metadata accessor for CallStatusViewModel);
      if (!v71)
      {
        v80 = v67;
        sub_24AAB4D44();
        sub_24AAB3D54();
        v113 = v141;
        v81 = v142;
        v82 = v144;
        v120 = v145;
        v118 = v143;
        v119 = v146;
        v83 = v96;
        sub_24AAB40C4();
        sub_24AAB4DA4();
        v84 = sub_24AA80D80(&qword_27EF86F78, MEMORY[0x277CE0068]);
        v85 = v98;
        v86 = v101;
        sub_24AAB3CC4();

        (*(v99 + 8))(v83, v86);
        v87 = v100;
        v88 = v102;
        (*(v100 + 16))(v97, v85, v102);
        *&v150 = v86;
        *(&v150 + 1) = v84;
        swift_getOpaqueTypeConformance2();
        v89 = sub_24AAB3DC4();
        (*(v87 + 8))(v85, v88);
        LOBYTE(v84) = sub_24AAB4524();
        v90 = sub_24AAB4514();
        sub_24AAB4514();
        if (sub_24AAB4514() != v84)
        {
          v90 = sub_24AAB4514();
        }

        v123 = v81;
        v122 = v82;
        sub_24AAB3C54();
        v130 = 0;
        *&v124 = v80;
        *(&v124 + 1) = v113;
        LOBYTE(v125) = v123;
        *(&v125 + 1) = *v133;
        DWORD1(v125) = *&v133[3];
        *(&v125 + 1) = v118;
        LOBYTE(v126) = v122;
        *(&v126 + 1) = *v132;
        DWORD1(v126) = *&v132[3];
        *(&v126 + 1) = v120;
        *&v127 = v119;
        *(&v127 + 1) = v89;
        LOBYTE(v128) = v90;
        DWORD1(v128) = *&v131[3];
        *(&v128 + 1) = *v131;
        *(&v128 + 1) = v91;
        *&v129[0] = v92;
        *(&v129[0] + 1) = v93;
        *&v129[1] = v94;
        BYTE8(v129[1]) = 0;
        v137 = v127;
        v138 = v128;
        *v139 = v129[0];
        *&v139[9] = *(v129 + 9);
        v134 = v124;
        v135 = v125;
        v136 = v126;
        v140 = 1;
        sub_24AA1695C(&v124, &v150, &qword_27EF86F30, &qword_24AABC848);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F28, &qword_24AABC840);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F30, &qword_24AABC848);
        sub_24AA8305C();
        sub_24AA830E0();
        sub_24AAB42B4();

        sub_24AA169C4(&v124, &qword_27EF86F30, &qword_24AABC848);
        goto LABEL_5;
      }
    }

    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    v157 = -256;
    goto LABEL_12;
  }

  v148[2] = v152;
  v148[3] = v153;
  v148[4] = v154;
  v149 = v155;
  v148[0] = v150;
  v148[1] = v151;
  sub_24AA43A54(v148, &v141);
  LOBYTE(v150) = 1;
  *(&v150 + 1) = 0x4014000000000000;
  LOBYTE(v134) = 0;
  *(&v134 + 1) = 0x4014000000000000;
  sub_24AA82490();
  v147 = sub_24AAB3DA4();
  sub_24AA1695C(&v141, &v150, &qword_27EF86F10, &qword_24AABC838);
  LOBYTE(v156) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F10, &qword_24AABC838);
  sub_24AA82F50();
  sub_24AAB42B4();
  sub_24AA1695C(&v124, &v134, &qword_27EF86F28, &qword_24AABC840);
  v140 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F28, &qword_24AABC840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F30, &qword_24AABC848);
  sub_24AA8305C();
  sub_24AA830E0();
  sub_24AAB42B4();
  sub_24AA169C4(&v124, &qword_27EF86F28, &qword_24AABC840);
  sub_24AA169C4(&v141, &qword_27EF86F10, &qword_24AABC838);
  sub_24AA4214C(v148);
LABEL_5:
  v60 = v117;
LABEL_12:
  v72 = v114;
  sub_24AA1695C(v60, v114, &qword_27EF86F00, &qword_24AABC7F8);
  v73 = v121;
  v74 = v115;
  sub_24AA1695C(v121, v115, &qword_27EF86EE8, &qword_24AABC7E0);
  sub_24AA1695C(&v150, &v134, &qword_27EF86F68, &qword_24AABC860);
  v75 = v60;
  v76 = v116;
  sub_24AA1695C(v72, v116, &qword_27EF86F00, &qword_24AABC7F8);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F70, &qword_24AABC868);
  sub_24AA1695C(v74, v76 + v77[12], &qword_27EF86EE8, &qword_24AABC7E0);
  v78 = v76 + v77[16];
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_24AA1695C(&v134, v76 + v77[20], &qword_27EF86F68, &qword_24AABC860);
  sub_24AA169C4(&v150, &qword_27EF86F68, &qword_24AABC860);
  sub_24AA169C4(v73, &qword_27EF86EE8, &qword_24AABC7E0);
  sub_24AA169C4(v75, &qword_27EF86F00, &qword_24AABC7F8);
  sub_24AA169C4(&v134, &qword_27EF86F68, &qword_24AABC860);
  sub_24AA169C4(v74, &qword_27EF86EE8, &qword_24AABC7E0);
  return sub_24AA169C4(v72, &qword_27EF86F00, &qword_24AABC7F8);
}

uint64_t sub_24AA79E54(void *a1)
{
  v1 = a1[1];
  *&v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v3 = xmmword_24AAB6FD0;
  v4 = 2;
  sub_24AA2F6C4(&v3);
}

uint64_t sub_24AA79EC8@<X0>(uint64_t a1@<X8>)
{
  v27[1] = a1;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86FC8, &qword_24AABC8B8);
  v1 = *(v27[0] - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v27[0]);
  v4 = v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86FA0, &qword_24AABC8A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86F88, &qword_24AABC8A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - v11;
  v27[7] = sub_24AAB4AC4();
  sub_24AAB4594();
  sub_24AAB47C4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24AAB7D10;
  v14 = sub_24AAB4534();
  *(inited + 32) = v14;
  v15 = sub_24AAB4524();
  *(inited + 33) = v15;
  v16 = sub_24AAB4514();
  sub_24AAB4514();
  if (sub_24AAB4514() != v14)
  {
    v16 = sub_24AAB4514();
  }

  sub_24AAB4514();
  if (sub_24AAB4514() != v15)
  {
    v16 = sub_24AAB4514();
  }

  sub_24AAB3C54();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  (*(v1 + 32))(v8, v4, v27[0]);
  v25 = &v8[*(v5 + 36)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  sub_24AA1A25C(v8, v12, &qword_27EF86FA0, &qword_24AABC8A8);
  v12[*(v9 + 36)] = 0;
  sub_24AA833B0();
  sub_24AAB4794();
  return sub_24AA169C4(v12, &qword_27EF86F88, &qword_24AABC8A0);
}

void sub_24AA7A1E0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v22 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  swift_getKeyPath();
  v21 = v19[0];
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v5 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callScreeningViewModel;
  swift_beginAccess();
  v6 = *(v19[0] + v5);

  if (v6)
  {
    swift_getKeyPath();
    v19[0] = v6;
    sub_24AA80D80(&qword_27EF85610, type metadata accessor for CallScreeningViewModel);
    sub_24AAB2CF4();

    if (*(v6 + OBJC_IVAR____TtC22FaceTimeNotificationUI22CallScreeningViewModel__isShowingTranscripts) == 1)
    {
      CallScreeningViewModel.transcriptView()(v19);

      v7 = v19[0];
      v8 = v19[0];
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v19[0] = v3;
  v19[1] = v4;
  sub_24AAB4B64();
  v9 = v20;
  swift_getKeyPath();
  v19[0] = v9;
  sub_24AAB2CF4();

  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__callTranslationViewModel;
  swift_beginAccess();
  v11 = *&v9[v10];

  if (!v11)
  {
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  swift_getKeyPath();
  v20 = v11;
  sub_24AA80D80(&qword_27EF85520, type metadata accessor for CallTranslationViewModel);
  sub_24AAB2CF4();

  if (v11[32] != 1)
  {

    goto LABEL_12;
  }

  v12 = OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController;
  v13 = *&v11[OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_viewController];
  if (!v13)
  {
    v14 = *&v11[OBJC_IVAR____TtC22FaceTimeNotificationUI24CallTranslationViewModel_worker];
    v13 = sub_24AAB2F44();
    v15 = *&v11[v12];
    *&v11[v12] = v13;
  }

  v16 = v13;

  v17 = v16;
LABEL_13:
  v18 = v7;
  sub_24AA4345C(v13);

  sub_24AA421A0(v13);
  *a2 = v7;
  a2[1] = v13;
  sub_24AA421A0(v13);
}

uint64_t sub_24AA7A520(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v141 = v2;
  v3 = type metadata accessor for CallNotificationView(0);
  v130 = *(v3 - 8);
  v4 = *(v130 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v131 = v5;
  v139 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DA0, &qword_24AABC3E0);
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = *(v136 + 64);
  MEMORY[0x28223BE20](v6);
  v133 = &v126 - v8;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DA8, &qword_24AABC3E8);
  v9 = *(*(v132 - 8) + 64);
  MEMORY[0x28223BE20](v132);
  v138 = &v126 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DB0, &qword_24AABC3F0);
  v144 = *(v11 - 8);
  v145 = v11;
  v12 = *(v144 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v135 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v134 = &v126 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DB8, &qword_24AABC3F8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v140 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v126 - v20;
  v22 = v1[1];
  *&v193[0] = *v1;
  v23 = *&v193[0];
  *(&v193[0] + 1) = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v25 = *&v192[0];
  swift_getKeyPath();
  *&v193[0] = v25;
  v26 = sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v27 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
  swift_beginAccess();
  sub_24AA43A54(v25 + v27, &v156);

  v199 = v161[0];
  v196 = v158;
  v197 = v159;
  v198 = v160;
  v194 = v156;
  v195 = v157;
  v148 = v23;
  v149 = v26;
  v146 = v22;
  v147 = v21;
  v142 = v24;
  v143 = v1;
  if (LOBYTE(v161[0]))
  {
    sub_24AA4214C(&v194);
    *&v193[0] = v23;
    *(&v193[0] + 1) = v22;
    sub_24AAB4B64();
    v28 = *(*&v192[0] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    v29 = *(*&v192[0] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call + 8);
    swift_getObjectType();
    LOBYTE(v28) = sub_24AAB3944();

    if (v28)
    {
      sub_24AAB4A44();
      v30 = sub_24AAB4A54();

      sub_24AAB4D44();
      sub_24AAB3D54();
      *&v182[6] = v194;
      *&v182[22] = v195;
      *&v182[38] = v196;
      v31 = sub_24AAB44C4();
      *&v183[0] = v30;
      WORD4(v183[0]) = 256;
      *(v183 + 10) = *v182;
      *(&v183[1] + 10) = *&v182[16];
      *(&v183[2] + 10) = *&v182[32];
      *(&v183[3] + 1) = *&v182[46];
      LOBYTE(v184[0]) = v31;
      *(v184 + 8) = 0u;
      *(&v184[1] + 8) = 0u;
      BYTE8(v184[2]) = 1;
      *&v193[0] = v23;
      *(&v193[0] + 1) = v22;
      sub_24AAB4B64();
      v32 = *&v192[0];
      swift_getKeyPath();
      *&v193[0] = v32;
      sub_24AAB2CF4();

      v33 = *(v32 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

      if (v33)
      {

        v34 = sub_24AAB41C4();
      }

      else
      {
        v34 = sub_24AAB41B4();
      }

      v129 = v34;
      v150 = 1;
      sub_24AA7C0E8(v143, v193);
      v175[0] = v193[4];
      v175[1] = v193[5];
      v175[2] = v193[6];
      v176 = *&v193[7];
      v174[0] = v193[0];
      v174[1] = v193[1];
      v174[2] = v193[2];
      v174[3] = v193[3];
      v177[0] = v193[0];
      v177[1] = v193[1];
      v177[2] = v193[2];
      v177[3] = v193[3];
      v178[0] = v193[4];
      v178[1] = v193[5];
      v178[2] = v193[6];
      v179 = *&v193[7];
      sub_24AA1695C(v174, v192, &qword_27EF86E00, &qword_24AABC528);
      sub_24AA169C4(v177, &qword_27EF86E00, &qword_24AABC528);
      *(&v180[4] + 7) = v175[0];
      *(&v180[5] + 7) = v175[1];
      *(&v180[6] + 7) = v175[2];
      *(v180 + 7) = v174[0];
      *(&v180[1] + 7) = v174[1];
      *(&v180[2] + 7) = v174[2];
      *(&v180[7] + 7) = v176;
      *(&v180[3] + 7) = v174[3];
      v59 = v150;
      v60 = sub_24AAB44D4();
      LOBYTE(v203) = 1;
      *&v193[0] = v148;
      *(&v193[0] + 1) = v146;
      sub_24AAB4B64();
      v61 = *&v192[0];
      swift_getKeyPath();
      *&v193[0] = v61;
      sub_24AAB2CF4();

      v62 = *(v61 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

      if (v62)
      {

        sub_24AAB4D54();
      }

      else
      {
        sub_24AAB4D44();
      }

      sub_24AAB3F24();
      *&v181[55] = v212;
      *&v181[71] = v213;
      *&v181[87] = v214;
      *&v181[103] = v215;
      *&v181[7] = v209;
      *&v181[23] = v210;
      *&v181[39] = v211;
      LOBYTE(v193[0]) = 1;
      *(&v193[0] + 1) = 0x4014000000000000;
      LOBYTE(v192[0]) = 0;
      *(&v192[0] + 1) = 0x4014000000000000;
      sub_24AA82490();
      sub_24AAB3DA4();
      MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
      sub_24AAB4D74();

      sub_24AAB3DB4();

      v63 = sub_24AAB3D64();

      v185[0] = v129;
      LOBYTE(v185[1]) = v59;
      *(&v185[5] + 1) = v180[4];
      *(&v185[6] + 1) = v180[5];
      *(&v185[7] + 1) = v180[6];
      v185[8] = *(&v180[6] + 15);
      *(&v185[1] + 1) = v180[0];
      *(&v185[2] + 1) = v180[1];
      *(&v185[3] + 1) = v180[2];
      *(&v185[4] + 1) = v180[3];
      LOBYTE(v185[9]) = v60;
      *(&v185[9] + 8) = 0u;
      *(&v185[10] + 8) = 0u;
      BYTE8(v185[11]) = 1;
      *(&v185[16] + 9) = *&v181[80];
      *(&v185[17] + 9) = *&v181[96];
      *(&v185[15] + 9) = *&v181[64];
      *(&v185[11] + 9) = *v181;
      *(&v185[12] + 9) = *&v181[16];
      *(&v185[13] + 9) = *&v181[32];
      *(&v185[14] + 9) = *&v181[48];
      *(&v185[18] + 1) = *&v181[111];
      *&v185[19] = v63;
      v160 = v184[0];
      v161[0] = v184[1];
      *(v161 + 9) = *(&v184[1] + 9);
      v156 = v183[0];
      v157 = v183[1];
      v158 = v183[2];
      v159 = v183[3];
      memcpy(v192, v185, 0x138uLL);
      v166 = v184[0];
      v167[0] = v184[1];
      *(v167 + 9) = *(&v184[1] + 9);
      v162 = v183[0];
      v163 = v183[1];
      v164 = v183[2];
      v165 = v183[3];
      v155[0] = v183[0];
      v155[1] = v183[1];
      *(&v155[5] + 9) = *(&v184[1] + 9);
      v155[2] = v183[2];
      v155[3] = v183[3];
      v155[4] = v184[0];
      v155[5] = v184[1];
      memcpy(v186, v185, 0x138uLL);
      memcpy(&v155[7], v185, 0x138uLL);
      sub_24AA1695C(v183, v193, &qword_27EF86DE0, &qword_24AABC4E8);
      sub_24AA1695C(v185, v193, &qword_27EF86E08, &qword_24AABC530);
      sub_24AA1695C(&v162, v193, &qword_27EF86DE0, &qword_24AABC4E8);
      sub_24AA1695C(v186, v193, &qword_27EF86E08, &qword_24AABC530);
      sub_24AA169C4(v192, &qword_27EF86E08, &qword_24AABC530);
      v172 = v160;
      v173[0] = v161[0];
      *(v173 + 9) = *(v161 + 9);
      v168 = v156;
      v169 = v157;
      v170 = v158;
      v171 = v159;
      sub_24AA169C4(&v168, &qword_27EF86DE0, &qword_24AABC4E8);
      memcpy(v193, v155, 0x1A8uLL);
      BYTE8(v193[26]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E10, &qword_24AABC538);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E18, &qword_24AABC540);
      sub_24AA16A68(&qword_27EF86E20, &qword_27EF86E10, &qword_24AABC538);
      sub_24AA16A68(&qword_27EF86E28, &qword_27EF86E18, &qword_24AABC540);
      sub_24AAB42B4();
      sub_24AA169C4(v185, &qword_27EF86E08, &qword_24AABC530);
      sub_24AA169C4(v183, &qword_27EF86DE0, &qword_24AABC4E8);
      v23 = v148;
      v22 = v146;
    }

    else
    {
      v201 = 0;
      memset(v200, 0, sizeof(v200));
      v202 = -1;
    }
  }

  else
  {
    sub_24AA4214C(&v194);
    v129 = sub_24AAB41B4();
    LOBYTE(v186[0]) = 0;
    sub_24AA7A1E0(v1, v193);
    v126 = *(&v193[0] + 1);
    v127 = *&v193[0];
    sub_24AAB4D44();
    sub_24AAB3D54();
    v35 = v203;
    v36 = v22;
    v37 = v205;
    v38 = v207;
    v39 = v208;
    v154 = v204;
    v153 = v206;
    LOBYTE(v193[0]) = 1;
    *(&v193[0] + 1) = 0x4014000000000000;
    LOBYTE(v192[0]) = 0;
    *(&v192[0] + 1) = 0x4014000000000000;
    v128 = sub_24AA82490();
    sub_24AAB3DA4();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v40 = sub_24AAB3D64();

    v177[0] = v129;
    LOBYTE(v177[1]) = v186[0];
    *(&v177[1] + 1) = v127;
    *&v177[2] = v126;
    *(&v177[2] + 1) = v35;
    LOBYTE(v177[3]) = v154;
    *(&v177[3] + 1) = v37;
    LOBYTE(v178[0]) = v153;
    *(&v178[0] + 1) = v38;
    v41 = v148;
    *&v178[1] = v39;
    *(&v178[1] + 1) = v40;
    *&v193[0] = v148;
    *(&v193[0] + 1) = v36;
    sub_24AAB4B64();
    v42 = sub_24AA1F130();

    LODWORD(v129) = v42;
    *&v193[0] = v41;
    *(&v193[0] + 1) = v36;
    sub_24AAB4B64();
    v43 = *&v192[0];
    swift_getKeyPath();
    *&v193[0] = v43;
    sub_24AAB2CF4();

    v44 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel___controlsRecipe;
    swift_beginAccess();
    sub_24AA43A54(v43 + v44, &v209);

    LOBYTE(v193[0]) = 1;
    *(&v193[0] + 1) = 0x4014000000000000;
    LOBYTE(v192[0]) = 0;
    *(&v192[0] + 1) = 0x4014000000000000;
    *(&v214 + 1) = sub_24AAB3DA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_24AAB7D10;
    LOBYTE(v43) = sub_24AAB44C4();
    *(v45 + 32) = v43;
    v46 = sub_24AAB44F4();
    *(v45 + 33) = v46;
    v47 = sub_24AAB4514();
    sub_24AAB4514();
    if (sub_24AAB4514() != v43)
    {
      v47 = sub_24AAB4514();
    }

    v48 = !v42;

    sub_24AAB4514();
    if (sub_24AAB4514() != v46)
    {
      v47 = sub_24AAB4514();
    }

    sub_24AAB3C54();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v174[2] = v211;
    v174[3] = v212;
    v175[0] = v213;
    v175[1] = v214;
    v174[0] = v209;
    v174[1] = v210;
    v151 = 0;
    KeyPath = swift_getKeyPath();
    *&v193[0] = v41;
    *(&v193[0] + 1) = v146;
    sub_24AAB4B64();
    v58 = sub_24AA1F130();

    v186[2] = v174[2];
    v186[3] = v174[3];
    v186[4] = v175[0];
    v186[5] = v175[1];
    v186[0] = v174[0];
    v186[1] = v174[1];
    LOBYTE(v186[6]) = v47;
    *(&v186[6] + 1) = v50;
    *&v186[7] = v52;
    *(&v186[7] + 1) = v54;
    *&v186[8] = v56;
    BYTE8(v186[8]) = v151;
    HIDWORD(v186[8]) = *&v152[3];
    *(&v186[8] + 9) = *v152;
    *&v186[9] = KeyPath;
    BYTE8(v186[9]) = v58;
    v164 = v177[2];
    v165 = v177[3];
    v166 = v178[0];
    v167[0] = v178[1];
    v162 = v177[0];
    v163 = v177[1];
    sub_24AA1695C(v186, v185, &qword_27EF86E30, &qword_24AABC570);
    v170 = v164;
    v171 = v165;
    v172 = v166;
    v173[0] = v167[0];
    v168 = v162;
    v169 = v163;
    v192[2] = v164;
    v192[3] = v165;
    v192[4] = v166;
    v192[5] = v167[0];
    v192[0] = v162;
    v192[1] = v163;
    *&v192[6] = 0;
    BYTE8(v192[6]) = v129;
    BYTE9(v192[6]) = v48;
    sub_24AA1695C(v185, &v192[7], &qword_27EF86E30, &qword_24AABC570);
    sub_24AA1695C(v177, v193, &qword_27EF86E38, &qword_24AABC578);
    sub_24AA1695C(&v168, v193, &qword_27EF86E38, &qword_24AABC578);
    sub_24AA169C4(v185, &qword_27EF86E30, &qword_24AABC570);
    v183[2] = v164;
    v183[3] = v165;
    v184[0] = v166;
    v184[1] = v167[0];
    v183[0] = v162;
    v183[1] = v163;
    sub_24AA169C4(v183, &qword_27EF86E38, &qword_24AABC578);
    sub_24AA1695C(v192, v193, &qword_27EF86E10, &qword_24AABC538);
    BYTE8(v193[26]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E10, &qword_24AABC538);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E18, &qword_24AABC540);
    sub_24AA16A68(&qword_27EF86E20, &qword_27EF86E10, &qword_24AABC538);
    v22 = v146;
    sub_24AA16A68(&qword_27EF86E28, &qword_27EF86E18, &qword_24AABC540);
    sub_24AAB42B4();
    sub_24AA169C4(v177, &qword_27EF86E38, &qword_24AABC578);
    v23 = v148;
    sub_24AA169C4(v192, &qword_27EF86E10, &qword_24AABC538);
    sub_24AA169C4(v186, &qword_27EF86E30, &qword_24AABC570);
  }

  *&v193[0] = v23;
  *(&v193[0] + 1) = v22;
  sub_24AAB4B64();
  v64 = *&v192[0];
  swift_getKeyPath();
  v65 = &qword_27EF85000;
  *&v193[0] = v64;
  sub_24AAB2CF4();

  v66 = *(v64 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__moreMenuViewModel);

  if (v66)
  {
    sub_24AAB30C4();
    v69 = v145;
    if (v67)
    {
      v70 = v68;
      v129 = v67;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DE8, &qword_24AABC4F0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_24AAB7D10;
      v72 = sub_24AAB44C4();
      *(v71 + 32) = v72;
      v73 = sub_24AAB44F4();
      *(v71 + 33) = v73;
      v74 = sub_24AAB4514();
      sub_24AAB4514();
      if (sub_24AAB4514() != v72)
      {
        v74 = sub_24AAB4514();
      }

      sub_24AAB4514();
      if (sub_24AAB4514() != v73)
      {
        v74 = sub_24AAB4514();
      }

      sub_24AAB3C54();
      *&v193[0] = v70;
      BYTE8(v193[0]) = v74;
      *&v193[1] = v75;
      *(&v193[1] + 1) = v76;
      *&v193[2] = v77;
      *(&v193[2] + 1) = v78;
      LOBYTE(v193[3]) = 0;

      LOBYTE(v192[0]) = sub_24AAB30D4() & 1;
      v128 = type metadata accessor for CallNotificationView;
      v79 = v143;
      v80 = v139;
      sub_24AA832B8(v143, v139, type metadata accessor for CallNotificationView);
      v81 = *(v130 + 80);
      v127 = v70;
      v82 = (v81 + 16) & ~v81;
      v130 = v82 + v131;
      v131 = (v82 + v131 + 7) & 0xFFFFFFFFFFFFFFF8;
      v83 = v131;
      v84 = swift_allocObject();
      sub_24AA80DCC(v80, v84 + v82);
      *(v84 + v83) = v66;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DF0, &qword_24AABC4F8);
      sub_24AA82840();
      v85 = v133;
      sub_24AAB4954();

      v86 = v79;
      v87 = v79;
      v88 = v128;
      sub_24AA832B8(v87, v80, v128);
      v89 = swift_allocObject();
      sub_24AA80DCC(v80, v89 + v82);
      v90 = v138;
      (*(v136 + 32))(v138, v85, v137);
      v91 = (v90 + *(v132 + 36));
      *v91 = sub_24AA829E8;
      v91[1] = v89;
      v91[2] = 0;
      v91[3] = 0;
      sub_24AA832B8(v86, v80, v88);
      v92 = v131;
      v93 = swift_allocObject();
      sub_24AA80DCC(v80, v93 + v82);
      *(v93 + v92) = v66;
      v94 = v135;
      sub_24AA1A25C(v90, v135, &qword_27EF86DA8, &qword_24AABC3E8);
      v69 = v145;
      v95 = (v94 + *(v145 + 36));
      *v95 = 0;
      v95[1] = 0;
      v95[2] = sub_24AA82B38;
      v95[3] = v93;
      v96 = v94;
      v97 = v134;
      sub_24AA1A25C(v96, v134, &qword_27EF86DB0, &qword_24AABC3F0);
      v98 = v147;
      sub_24AA1A25C(v97, v147, &qword_27EF86DB0, &qword_24AABC3F0);
      v99 = 0;
      v23 = v148;
      v22 = v146;
      v65 = &qword_27EF85000;
    }

    else
    {

      v99 = 1;
      v98 = v147;
    }
  }

  else
  {
    v99 = 1;
    v98 = v147;
    v69 = v145;
  }

  (*(v144 + 56))(v98, v99, 1, v69);
  *&v193[0] = v23;
  *(&v193[0] + 1) = v22;
  sub_24AAB4B64();
  v100 = *&v192[0];
  swift_getKeyPath();
  v101 = v65[154];
  *&v193[0] = v100;
  sub_24AAB2CF4();

  v102 = *(v100 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__isHoldDetected);

  if (v102 != 1)
  {
    goto LABEL_27;
  }

  *&v193[0] = v23;
  *(&v193[0] + 1) = v22;
  sub_24AAB4B64();
  v103 = *&v192[0];
  swift_getKeyPath();
  v104 = v65[154];
  *&v193[0] = v103;
  sub_24AAB2CF4();

  v105 = *(v103 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__userHasDeclinedSmartHolding);

  if ((v105 & 1) == 0)
  {
    sub_24AAB4A44();
    v106 = sub_24AAB4A54();

    sub_24AAB4D44();
    sub_24AAB3D54();
    *&v191[6] = v183[0];
    *&v191[22] = v183[1];
    *&v191[38] = v183[2];
    v107 = sub_24AAB44C4();
    v108 = v107;
    LODWORD(v145) = v107;
    LOBYTE(v193[0]) = 1;
    v186[0] = sub_24AAB4104();
    LOBYTE(v186[1]) = 1;
    sub_24AA7D014(&v186[1] + 8);
    v187 = sub_24AAB44D4();
    v188 = 0u;
    v189 = 0u;
    v190 = 1;
    sub_24AA1695C(v186, v185, &qword_27EF86DD8, &qword_24AABC4E0);
    *&v174[0] = v106;
    WORD4(v174[0]) = 256;
    *(v174 + 10) = *v191;
    *(&v174[1] + 10) = *&v191[16];
    *(&v174[2] + 10) = *&v191[32];
    *(&v174[3] + 1) = *&v191[46];
    LOBYTE(v175[0]) = v108;
    *(v175 + 8) = 0u;
    *(&v175[1] + 8) = 0u;
    BYTE8(v175[2]) = 1;
    v192[1] = v174[1];
    v192[0] = v174[0];
    *(&v192[5] + 9) = *(&v175[1] + 9);
    v192[5] = v175[1];
    v192[4] = v175[0];
    v192[2] = v174[2];
    v192[3] = v174[3];
    sub_24AA1695C(v185, &v192[7], &qword_27EF86DD8, &qword_24AABC4E0);
    sub_24AA1695C(v174, v193, &qword_27EF86DE0, &qword_24AABC4E8);
    sub_24AA169C4(v186, &qword_27EF86DD8, &qword_24AABC4E0);
    v65 = &qword_27EF85000;
    sub_24AA169C4(v185, &qword_27EF86DD8, &qword_24AABC4E0);
    *&v177[0] = v106;
    WORD4(v177[0]) = 256;
    v23 = v148;
    *(v177 + 10) = *v191;
    *(&v177[1] + 10) = *&v191[16];
    *(&v177[2] + 10) = *&v191[32];
    *(&v177[3] + 1) = *&v191[46];
    LOBYTE(v178[0]) = v145;
    *(v178 + 8) = 0u;
    *(&v178[1] + 8) = 0u;
    BYTE8(v178[2]) = 1;
    sub_24AA169C4(v177, &qword_27EF86DE0, &qword_24AABC4E8);
    memcpy(v193, v192, 0x269uLL);
  }

  else
  {
LABEL_27:
    bzero(v193, 0x269uLL);
  }

  *&v192[0] = v23;
  *(&v192[0] + 1) = v22;
  sub_24AAB4B64();
  v109 = *&v186[0];
  swift_getKeyPath();
  v110 = v65[154];
  *&v192[0] = v109;
  sub_24AAB2CF4();

  v111 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingRTT;
  swift_beginAccess();
  v112 = *(v109 + v111);

  v148 = 0;
  v149 = 0;
  v113 = 0;
  v114 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  if (v112 == 1)
  {
    *&v192[0] = v23;
    *(&v192[0] + 1) = v22;
    sub_24AAB4B64();
    v115 = *(*&v186[0] + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel_call);
    swift_unknownObjectRetain();

    objc_opt_self();
    v149 = swift_dynamicCastObjCClass();
    if (v149)
    {
      sub_24AAB4D44();
      sub_24AAB3D54();
      v113 = *&v185[0];
      v114 = BYTE8(v185[0]);
      v148 = *&v185[1];
      v145 = BYTE8(v185[1]);
      v143 = *(&v185[2] + 1);
      v144 = *&v185[2];
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRelease();
      v148 = 0;
      v149 = 0;
      v113 = 0;
      v114 = 0;
      v144 = 0;
      v145 = 0;
      v143 = 0;
    }
  }

  sub_24AA1695C(v200, v186, &qword_27EF86DC0, &qword_24AABC4A0);
  v116 = v147;
  v117 = v113;
  v118 = v140;
  sub_24AA1695C(v147, v140, &qword_27EF86DB8, &qword_24AABC3F8);
  sub_24AA1695C(v193, v192, &qword_27EF86DC8, &qword_24AABC4A8);
  v119 = v141;
  sub_24AA1695C(v186, v141, &qword_27EF86DC0, &qword_24AABC4A0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86DD0, &qword_24AABC4B0);
  sub_24AA1695C(v118, v119 + v120[12], &qword_27EF86DB8, &qword_24AABC3F8);
  sub_24AA1695C(v192, v119 + v120[16], &qword_27EF86DC8, &qword_24AABC4A8);
  v121 = (v119 + v120[20]);
  v122 = v148;
  v123 = v149;
  *v121 = v149;
  v121[1] = v117;
  v121[2] = v114;
  v121[3] = v122;
  v124 = v144;
  v121[4] = v145;
  v121[5] = v124;
  v121[6] = v143;
  sub_24AA169C4(v193, &qword_27EF86DC8, &qword_24AABC4A8);
  sub_24AA169C4(v116, &qword_27EF86DB8, &qword_24AABC3F8);
  sub_24AA169C4(v200, &qword_27EF86DC0, &qword_24AABC4A0);

  sub_24AA169C4(v192, &qword_27EF86DC8, &qword_24AABC4A8);
  sub_24AA169C4(v118, &qword_27EF86DB8, &qword_24AABC3F8);
  return sub_24AA169C4(v186, &qword_27EF86DC0, &qword_24AABC4A0);
}

uint64_t sub_24AA7C0E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855C0, &unk_24AAB7270);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v99 = &v90 - v8;
  v9 = sub_24AAB2AA4();
  v10 = *(v9 - 8);
  v92 = v9;
  v93 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v90 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v91 = &v90 - v14;
  v15 = sub_24AAB4154();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = a1[1];
  *&v109 = *a1;
  v17 = v109;
  *(&v109 + 1) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  v20 = v117;
  swift_getKeyPath();
  *&v109 = v20;
  v21 = sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  LODWORD(a1) = *(v20 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showWaitOnHoldErrorSymbol);

  v96 = v18;
  v97 = v17;
  v94 = v21;
  v95 = v19;
  if (a1 == 1)
  {
    sub_24AAB4144();
    sub_24AAB4134();
    sub_24AAB4AC4();
    sub_24AAB4124();

    sub_24AAB4134();
    *&v109 = v17;
    *(&v109 + 1) = v18;
    sub_24AAB4B64();
    v22 = v117;
    swift_getKeyPath();
    *&v109 = v22;
    sub_24AAB2CF4();

    v23 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
    swift_beginAccess();
    v24 = v99;
    sub_24AA1695C(v22 + v23, v99, &qword_27EF855C0, &unk_24AAB7270);

    v25 = v93;
    v26 = *(v93 + 48);
    v27 = v24;
    v28 = v92;
    if (v26(v27, 1, v92) == 1)
    {
      v29 = v91;
      sub_24AAB2A94();
      v30 = v26(v99, 1, v28);
      v31 = v29;
      if (v30 != 1)
      {
        sub_24AA169C4(v99, &qword_27EF855C0, &unk_24AAB7270);
      }
    }

    else
    {
      v31 = v91;
      (*(v25 + 32))(v91, v99, v28);
    }

    sub_24AAB4114();
    (*(v25 + 8))(v31, v28);
    sub_24AAB4134();
    sub_24AAB4174();
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v37 = qword_27EF919A8;
    v38 = sub_24AAB4754();
    v40 = v39;
    v42 = v41;
    sub_24AAB45F4();
    v43 = sub_24AAB4704();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    sub_24AA158E8(v38, v40, v42 & 1);

    KeyPath = swift_getKeyPath();
    v51 = swift_getKeyPath();
    LOBYTE(v107[0]) = v47 & 1;
    LOBYTE(v101) = 0;
    v100 = 0;
    *&v109 = v43;
    *(&v109 + 1) = v45;
    LOBYTE(v110) = v47 & 1;
    *(&v110 + 1) = v49;
    *&v111 = KeyPath;
    *(&v111 + 1) = 2;
    LOBYTE(v112) = 0;
    *(&v112 + 1) = v51;
    LOBYTE(v113) = 0;
    *(&v113 + 1) = *&v115[0];
    *(&v113 + 1) = *(v115 + 7);
    LOBYTE(v114) = 0;
  }

  else
  {
    *&v109 = v17;
    *(&v109 + 1) = v18;
    sub_24AAB4B64();
    v32 = v117;
    swift_getKeyPath();
    *&v109 = v32;
    sub_24AAB2CF4();

    v33 = OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldStatusMessage;
    swift_beginAccess();
    sub_24AA1695C(v32 + v33, v7, &qword_27EF855C0, &unk_24AAB7270);

    v34 = v92;
    v35 = v93;
    v36 = *(v93 + 48);
    if (v36(v7, 1, v92) == 1)
    {
      sub_24AAB2A94();
      if (v36(v7, 1, v34) != 1)
      {
        sub_24AA169C4(v7, &qword_27EF855C0, &unk_24AAB7270);
      }
    }

    else
    {
      (*(v35 + 32))(v90, v7, v34);
    }

    v52 = sub_24AAB4764();
    v54 = v53;
    v56 = v55;
    sub_24AAB45F4();
    v99 = sub_24AAB4704();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_24AA158E8(v52, v54, v56 & 1);

    v63 = swift_getKeyPath();
    v64 = swift_getKeyPath();
    LOBYTE(v115[0]) = v60 & 1;
    LOBYTE(v107[0]) = 0;
    LOBYTE(v109) = 1;
    *(&v109 + 1) = 0x4014000000000000;
    LOBYTE(v117) = 0;
    *(&v117 + 1) = 0x4014000000000000;
    sub_24AA82490();
    sub_24AAB3DA4();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v65 = sub_24AAB3D64();

    LOBYTE(v101) = 1;
    *&v109 = v99;
    *(&v109 + 1) = v58;
    LOBYTE(v110) = v60 & 1;
    *(&v110 + 1) = v62;
    *&v111 = v63;
    *(&v111 + 1) = 2;
    LOBYTE(v112) = 0;
    *(&v112 + 1) = v64;
    LOBYTE(v113) = 0;
    *(&v113 + 1) = v65;
    LOBYTE(v114) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E40, &qword_24AABC6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86E48, &qword_24AABC6B8);
  sub_24AA82C58();
  sub_24AA82DC8();
  sub_24AAB42B4();
  *&v109 = v97;
  *(&v109 + 1) = v96;
  sub_24AAB4B64();
  v66 = *&v115[0];
  swift_getKeyPath();
  *&v109 = v66;
  sub_24AAB2CF4();

  v68 = *(v66 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle);
  v67 = *(v66 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__waitOnHoldPickUpTitle + 8);

  if (v67)
  {
    *&v109 = v68;
    *(&v109 + 1) = v67;
    sub_24AA15894();
    v69 = sub_24AAB4774();
    v71 = v70;
    v73 = v72;
    sub_24AAB45F4();
    v74 = sub_24AAB4704();
    v76 = v75;
    v78 = v77;

    sub_24AA158E8(v69, v71, v73 & 1);

    LODWORD(v109) = sub_24AAB4314();
    v67 = sub_24AAB46F4();
    v80 = v79;
    LOBYTE(v71) = v81;
    v83 = v82;
    sub_24AA158E8(v74, v76, v78 & 1);

    v84 = v71 & 1;
    sub_24AA1A814(v67, v80, v71 & 1);
  }

  else
  {
    v80 = 0;
    v84 = 0;
    v83 = 0;
  }

  v103 = v119;
  v104 = v120;
  v105 = v121;
  v106 = v122;
  v107[2] = v119;
  v107[3] = v120;
  v101 = v117;
  v102 = v118;
  v107[4] = v121;
  v108 = v122;
  v107[0] = v117;
  v107[1] = v118;
  v109 = v117;
  v110 = v118;
  LOBYTE(v114) = v122;
  v112 = v120;
  v113 = v121;
  v111 = v119;
  sub_24AA1695C(v107, v115, &qword_27EF86E90, &qword_24AABC6D8);
  sub_24AA82E80(v67, v80, v84, v83);
  sub_24AA82EC4(v67, v80, v84, v83);
  v85 = v112;
  v86 = v98;
  *(v98 + 32) = v111;
  *(v86 + 48) = v85;
  *(v86 + 64) = v113;
  v87 = v114;
  v88 = v110;
  *v86 = v109;
  *(v86 + 16) = v88;
  *(v86 + 80) = v87;
  *(v86 + 88) = v67;
  *(v86 + 96) = v80;
  *(v86 + 104) = v84;
  *(v86 + 112) = v83;
  sub_24AA82EC4(v67, v80, v84, v83);
  v115[2] = v103;
  v115[3] = v104;
  v115[4] = v105;
  v116 = v106;
  v115[0] = v101;
  v115[1] = v102;
  return sub_24AA169C4(v115, &qword_27EF86E90, &qword_24AABC6D8);
}

void sub_24AA7CBD4(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    v5 = *a3;
    v6 = a3[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
    sub_24AAB4B64();
    if (*(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v4 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
      sub_24AA1CEF0(0);
    }

    sub_24AAB30E4();
  }
}

uint64_t sub_24AA7CD4C(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  if (*(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) == 1)
  {
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 1;
    sub_24AA1CEF0(1);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA7CEAC(uint64_t *a1)
{
  v4 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  if (*(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingSecondaryMoreMenuView) = 0;
    sub_24AA1CEF0(0);
  }

  return sub_24AAB30E4();
}

uint64_t sub_24AA7D014@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24AAB41C4();
  LOBYTE(v45[0]) = 1;
  sub_24AA7D36C(&v17);
  v38 = v21;
  v39 = v22;
  v40[0] = *v23;
  *(v40 + 12) = *&v23[12];
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = v19;
  v41[3] = v20;
  v41[4] = v21;
  v41[5] = v22;
  v42[0] = *v23;
  *(v42 + 12) = *&v23[12];
  sub_24AA1695C(&v34, v16, &qword_27EF86E98, &qword_24AABC708);
  sub_24AA169C4(v41, &qword_27EF86E98, &qword_24AABC708);
  *&v33[71] = v38;
  *&v33[87] = v39;
  *&v33[103] = v40[0];
  *&v33[115] = *(v40 + 12);
  *&v33[7] = v34;
  *&v33[23] = v35;
  *&v33[39] = v36;
  *&v33[55] = v37;
  v3 = v45[0];
  *&v17 = sub_24AAB41B4();
  *(&v17 + 1) = 0x4018000000000000;
  LOBYTE(v18) = 0;
  sub_24AA7D6A4(&v18 + 8);
  v4 = sub_24AAB4D44();
  v24 = 0;
  v25 = v4;
  v26 = v5;
  v6 = sub_24AAB4504();
  sub_24AAB3C54();
  v27 = v6;
  v28 = v7;
  v29 = v8;
  v30 = v9;
  v31 = v10;
  v32 = 0;
  sub_24AA1695C(&v17, v16, &qword_27EF86EA0, &qword_24AABC710);
  *&v44[33] = *&v33[32];
  *&v44[17] = *&v33[16];
  *&v44[81] = *&v33[80];
  *&v44[97] = *&v33[96];
  *&v44[113] = *&v33[112];
  *&v44[49] = *&v33[48];
  v43 = v2;
  v44[0] = v3;
  *&v44[128] = *&v33[127];
  *&v44[65] = *&v33[64];
  *&v44[1] = *v33;
  v11 = *&v44[96];
  *(a1 + 96) = *&v44[80];
  *(a1 + 112) = v11;
  *(a1 + 128) = *&v44[112];
  *(a1 + 144) = *&v44[128];
  v12 = *&v44[32];
  *(a1 + 32) = *&v44[16];
  *(a1 + 48) = v12;
  v13 = *&v44[64];
  *(a1 + 64) = *&v44[48];
  *(a1 + 80) = v13;
  v14 = *v44;
  *a1 = v43;
  *(a1 + 16) = v14;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  sub_24AA1695C(v16, a1 + 168, &qword_27EF86EA0, &qword_24AABC710);
  sub_24AA1695C(&v43, v45, &qword_27EF86EA8, &qword_24AABC718);
  sub_24AA169C4(&v17, &qword_27EF86EA0, &qword_24AABC710);
  sub_24AA169C4(v16, &qword_27EF86EA0, &qword_24AABC710);
  v52 = *&v33[80];
  v53 = *&v33[96];
  *v54 = *&v33[112];
  v48 = *&v33[16];
  v49 = *&v33[32];
  v50 = *&v33[48];
  v51 = *&v33[64];
  v45[0] = v2;
  v45[1] = 0;
  v46 = v3;
  *&v54[15] = *&v33[127];
  v47 = *v33;
  return sub_24AA169C4(v45, &qword_27EF86EA8, &qword_24AABC718);
}

uint64_t sub_24AA7D36C@<X0>(uint64_t a1@<X8>)
{
  sub_24AAB4164();
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v2 = qword_27EF919A8;
  v3 = sub_24AAB4754();
  v5 = v4;
  v7 = v6;
  sub_24AAB4614();
  v8 = sub_24AAB4704();
  v10 = v9;
  v12 = v11;

  sub_24AA158E8(v3, v5, v7 & 1);

  sub_24AAB4574();
  v13 = sub_24AAB4634();
  v36 = v14;
  v37 = v13;
  v35 = v15;
  v34 = v16;
  sub_24AA158E8(v8, v10, v12 & 1);

  sub_24AAB4164();
  v17 = sub_24AAB4754();
  v19 = v18;
  LOBYTE(v3) = v20;
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = v3 & 1;
  v26 = sub_24AAB45F4();
  v27 = swift_getKeyPath();
  v28 = sub_24AAB4314();
  v38[96] = v35 & 1;
  *&v39 = v17;
  *(&v39 + 1) = v19;
  LOBYTE(v40) = v25;
  *(&v40 + 1) = v22;
  v41 = KeyPath;
  LOBYTE(v42) = 1;
  *(&v42 + 1) = v24;
  v43[0] = 0;
  *&v43[8] = v27;
  *&v43[16] = v26;
  *&v43[24] = v28;
  *a1 = v37;
  *(a1 + 8) = v36;
  *(a1 + 16) = v35 & 1;
  v29 = *v44;
  *(a1 + 20) = *&v44[3];
  *(a1 + 17) = v29;
  *(a1 + 24) = v34;
  v30 = v42;
  v31 = *v43;
  *(a1 + 108) = *&v43[12];
  *(a1 + 80) = v30;
  *(a1 + 96) = v31;
  v32 = v41;
  *(a1 + 48) = v40;
  *(a1 + 64) = v32;
  *(a1 + 32) = v39;
  v45[0] = v17;
  v45[1] = v19;
  v46 = v25;
  v47 = v22;
  v48 = KeyPath;
  v49 = 0;
  v50 = 1;
  v51 = v24;
  v52 = 0;
  v53 = v27;
  v54 = v26;
  v55 = v28;
  sub_24AA1A814(v37, v36, v35 & 1);

  sub_24AA1695C(&v39, v38, &qword_27EF86EB0, &qword_24AABC778);
  sub_24AA169C4(v45, &qword_27EF86EB0, &qword_24AABC778);
  sub_24AA158E8(v37, v36, v35 & 1);
}

uint64_t sub_24AA7D6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WaitOnHoldSuggestionControl(0);
  v26[3] = v2;
  v26[4] = sub_24AA80D80(&qword_27EF86690, type metadata accessor for WaitOnHoldSuggestionControl);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v26);
  *boxed_opaque_existential_1Tm = xmmword_24AAB7040;
  *(boxed_opaque_existential_1Tm + 16) = 2;
  v4 = boxed_opaque_existential_1Tm + v2[5];
  sub_24AAB2B24();
  v5 = (boxed_opaque_existential_1Tm + v2[6]);
  v6 = sub_24AAB4A64();
  v7 = sub_24AAB4A44();
  v8 = sub_24AAB4A14();
  *v5 = 0;
  v5[1] = v6;
  v5[2] = v7;
  v5[3] = v8;
  *(boxed_opaque_existential_1Tm + v2[7]) = 0;
  *(boxed_opaque_existential_1Tm + v2[8]) = 0;
  v24[0] = swift_getKeyPath();
  v24[1] = 0;
  v25 = 0;
  v27 = xmmword_24AABBE40;
  v28 = 256;
  v9 = type metadata accessor for WaitOnHoldDeclineSuggestionControl(0);
  v21[3] = v9;
  v21[4] = sub_24AA80D80(&qword_27EF866A0, type metadata accessor for WaitOnHoldDeclineSuggestionControl);
  v10 = __swift_allocate_boxed_opaque_existential_1Tm(v21);
  *v10 = xmmword_24AABBE50;
  *(v10 + 16) = 2;
  v11 = v10 + v9[5];
  sub_24AAB2B24();
  v12 = (v10 + v9[6]);
  v13 = sub_24AAB4A64();
  v14 = sub_24AAB4A44();
  v15 = sub_24AAB4A14();
  *v12 = 0;
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  *(v10 + v9[7]) = 0;
  *(v10 + v9[8]) = 0;
  v19[0] = swift_getKeyPath();
  v19[1] = 0;
  v20 = 0;
  v22 = xmmword_24AABBE40;
  v23 = 256;
  sub_24AA58880(v24, v18);
  sub_24AA58880(v19, v17);
  sub_24AA58880(v18, a1);
  sub_24AA58880(v17, a1 + 88);
  sub_24AA588DC(v19);
  sub_24AA588DC(v24);
  sub_24AA588DC(v17);
  return sub_24AA588DC(v18);
}

uint64_t CallNotificationView.displayCall.getter@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B98, &qword_24AABBF08);
  v66 = *(v67 - 8);
  v2 = *(v66 + 64);
  MEMORY[0x28223BE20](v67);
  v65 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C88, &qword_24AABBF10);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BA0, &qword_24AABBF18);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BA8, &qword_24AABBF20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = (&v59 - v16);
  *v17 = sub_24AAB4D34();
  v17[1] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB0, &qword_24AABBF28);
  sub_24AA7E22C(v1, (v17 + *(v19 + 44)));
  v62 = v1;
  v21 = v1[1];
  *&v72 = *v1;
  v20 = v72;
  *(&v72 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86B90, &qword_24AABBF00);
  sub_24AAB4B64();
  sub_24AA1F130();

  sub_24AAB4D44();
  sub_24AAB3F24();
  sub_24AA1A25C(v17, v13, &qword_27EF86BA8, &qword_24AABBF20);
  v22 = &v13[*(v10 + 44)];
  v23 = v77;
  *(v22 + 4) = v76;
  *(v22 + 5) = v23;
  *(v22 + 6) = v78;
  v24 = v73;
  *v22 = v72;
  *(v22 + 1) = v24;
  v25 = v75;
  *(v22 + 2) = v74;
  *(v22 + 3) = v25;
  *&v79 = v20;
  *(&v79 + 1) = v21;
  sub_24AAB4B64();
  v26 = v70;
  swift_getKeyPath();
  *&v79 = v26;
  sub_24AA80D80(&qword_27EF854D8, type metadata accessor for CallNotificationViewModel);
  sub_24AAB2CF4();

  v27 = *(v26 + OBJC_IVAR____TtC22FaceTimeNotificationUI25CallNotificationViewModel__showingKeypad);

  sub_24AAB4D44();
  sub_24AAB3D54();
  sub_24AA1A25C(v13, v8, &qword_27EF86BA0, &qword_24AABBF18);
  v28 = *(v5 + 44);
  v64 = v8;
  v29 = &v8[v28];
  v30 = v80;
  *v29 = v79;
  *(v29 + 1) = v30;
  *(v29 + 2) = v81;
  v31 = type metadata accessor for CallNotificationView(0);
  v63 = &v59;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31 - 8);
  sub_24AA832B8(v62, &v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CallNotificationView);
  sub_24AAB50C4();
  v34 = sub_24AAB50B4();
  v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v34;
  *(v36 + 24) = v37;
  sub_24AA80DCC(&v59 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
  v38 = sub_24AAB50F4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  v42 = &v59 - v41;
  sub_24AAB50D4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v60 = sub_24AAB3E94();
    v61 = &v59;
    v59 = *(v60 - 8);
    v43 = *(v59 + 64);
    MEMORY[0x28223BE20](v60);
    v45 = &v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    v70 = 0;
    v71 = 0xE000000000000000;
    v62 = &v59;
    sub_24AAB5374();

    v70 = 0xD00000000000003ELL;
    v71 = 0x800000024AAD2CE0;
    v69 = 230;
    v46 = sub_24AAB5444();
    MEMORY[0x24C2257F0](v46);

    MEMORY[0x28223BE20](v47);
    (*(v39 + 16))(&v59 - v41, v42, v38);
    sub_24AAB3E84();
    (*(v39 + 8))(v42, v38);
    v48 = v65;
    sub_24AA1A25C(v64, v65, &qword_27EF84C88, &qword_24AABBF10);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C90, &qword_24AAB62B0);
    (*(v59 + 32))(v48 + *(v49 + 36), v45, v60);
  }

  else
  {
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84C98, &qword_24AAB62B8);
    v48 = v65;
    v51 = (v65 + *(v50 + 36));
    v52 = sub_24AAB3E14();
    (*(v39 + 32))(&v51[*(v52 + 20)], &v59 - v41, v38);
    *v51 = &unk_24AABBF60;
    *(v51 + 1) = v36;
    sub_24AA1A25C(v64, v48, &qword_27EF84C88, &qword_24AABBF10);
  }

  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86BB8, &unk_24AABBF70) + 36);
  v54 = *MEMORY[0x277CDF3C0];
  v55 = sub_24AAB3CE4();
  v56 = *(v55 - 8);
  v57 = v68;
  (*(v56 + 104))(v68 + v53, v54, v55);
  (*(v56 + 56))(v57 + v53, 0, 1, v55);
  return (*(v66 + 32))(v57, v48, v67);
}