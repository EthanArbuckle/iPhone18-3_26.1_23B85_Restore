double sub_24EE08618@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50);
  MEMORY[0x28223BE20](v4);
  v6 = (v20 - v5);
  v7 = *a1;
  v8 = v7 > 0x3E || ((1 << v7) & 0x7FFFFDFF3FFFFFEDLL) == 0;
  if (v8 && v7 - 65 >= 0x11)
  {
    LOBYTE(v20[0]) = *a1;
    SystemImage.rawValue.getter();
    v9 = sub_24F926E48();
  }

  else
  {
    LOBYTE(v20[0]) = *a1;
    SystemImage.rawValue.getter();
    v9 = sub_24F926DF8();
  }

  v10 = v9;
  v11 = *&a1[*(type metadata accessor for SystemImageButton() + 44)];
  KeyPath = swift_getKeyPath();
  v13 = (v6 + *(v4 + 36));
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30) + 28);
  v15 = *MEMORY[0x277CE1058];
  v16 = sub_24F926E78();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  *v6 = v10;
  v6[1] = KeyPath;
  v6[2] = v11;

  sub_24F927618();
  sub_24F9238C8();
  sub_24EE08CA0(v6, a2);
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A38) + 36));
  v18 = v20[1];
  *v17 = v20[0];
  v17[1] = v18;
  result = *&v21;
  v17[2] = v21;
  return result;
}

unint64_t sub_24EE08828()
{
  result = qword_27F230A28;
  if (!qword_27F230A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A20);
    sub_24E602068(&qword_27F230A30, &qword_27F230A18);
    sub_24E602068(&qword_27F222BB0, &qword_27F222BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A28);
  }

  return result;
}

uint64_t sub_24EE0890C()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for SystemImageButton() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[12], v1);

  return swift_deallocObject();
}

double sub_24EE08A08@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SystemImageButton() - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_24EE08618(v4, a1);
}

unint64_t sub_24EE08A94()
{
  result = qword_27F230A40;
  if (!qword_27F230A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A38);
    sub_24EE08B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A40);
  }

  return result;
}

unint64_t sub_24EE08B20()
{
  result = qword_27F230A48;
  if (!qword_27F230A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A50);
    sub_24E60156C();
    sub_24E602068(&qword_27F22DF40, &unk_27F22DF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A48);
  }

  return result;
}

uint64_t sub_24EE08BE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE08C48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE08CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EE08D10()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A20);
  sub_24EE08828();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for FlowAction();
  swift_getOpaqueTypeConformance2();
  sub_24EE08C48(&qword_27F219B98, type metadata accessor for FlowAction);
  sub_24EE08C48(&qword_27F219BA0, type metadata accessor for FlowAction);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EE08E68(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0DF1C();
  sub_24F92D128();
  v18 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v17 = 1;
    sub_24F92CD08();
    v9 = type metadata accessor for SocialMenuAction(0);
    v16 = 2;
    sub_24F9289E8();
    sub_24EE0D4C4(&qword_27F214060, MEMORY[0x277D21C48]);
    sub_24F92CCF8();
    v15 = *(v3 + *(v9 + 28));
    v14 = 3;
    sub_24EE0E02C();
    sub_24F92CCF8();
    v13 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
    sub_24E785388(&qword_27F21C1D8, sub_24E785400);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EE091A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v30 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230BB8);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = v30 - v5;
  v7 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = (v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v10 + 24);
  v12 = sub_24F9289E8();
  v13 = *(*(v12 - 8) + 56);
  v40 = v11;
  v13(v9 + v11, 1, 1, v12);
  v14 = v7[7];
  *(v9 + v14) = 82;
  v15 = v9 + v7[8];
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v39 = v15;
  sub_24E61DA68(v41, v15, qword_27F21B590);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0DF1C();
  v37 = v6;
  v16 = v38;
  sub_24F92D108();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v19 = v9;
    v20 = v39;
    v21 = v40;
LABEL_4:
    sub_24E601704(v19 + v21, &qword_27F213FB0);
    return sub_24E601704(v20, qword_27F24EC90);
  }

  v31 = v14;
  v17 = v34;
  v18 = v35;
  v38 = a1;
  LOBYTE(v41[0]) = 0;
  *v9 = sub_24F92CC28();
  v9[1] = v23;
  v30[1] = v23;
  LOBYTE(v41[0]) = 1;
  v24 = sub_24F92CC28();
  v32 = 0;
  v9[2] = v24;
  v9[3] = v25;
  LOBYTE(v41[0]) = 2;
  sub_24EE0D4C4(&qword_27F214018, MEMORY[0x277D21C48]);
  v26 = v32;
  sub_24F92CC18();
  if (v26)
  {
    (*(v17 + 8))(v37, v36);
    v21 = v40;
    v19 = v9;
    v20 = v39;
    __swift_destroy_boxed_opaque_existential_1(v38);

    if (!v32)
    {
    }

    goto LABEL_4;
  }

  sub_24E61DA68(v18, v9 + v40, &qword_27F213FB0);
  v43 = 3;
  sub_24EE0DF70();
  sub_24F92CC18();
  v27 = v9;
  v28 = v39;
  *(v9 + v31) = v41[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
  v43 = 4;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
  sub_24F92CC68();
  sub_24E61DA68(v41, v28, qword_27F24EC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C1A0);
  v43 = 5;
  sub_24E785388(&qword_27F21C1A8, sub_24E7851CC);
  sub_24F92CC68();
  v29 = v7[9];
  (*(v17 + 8))(v37, v36);
  *(v27 + v29) = *&v41[0];
  sub_24EE0DFC4(v27, v33, type metadata accessor for SocialMenuAction);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_24EE0EC3C(v27, type metadata accessor for SocialMenuAction);
}

uint64_t sub_24EE09778()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D496D6574737973;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 1970169197;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x6B726F77747261;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24EE09820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EE0E834(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EE09848(uint64_t a1)
{
  v2 = sub_24EE0DF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE09884(uint64_t a1)
{
  v2 = sub_24EE0DF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE09908()
{
  v1 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24EE0DFC4(v0, v6, type metadata accessor for SocialMenuItem);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    sub_24EE0DC80(v6, v3, type metadata accessor for SocialMenuAction);
    v7 = *v3;

    sub_24EE0EC3C(v3, type metadata accessor for SocialMenuAction);
  }

  else
  {
    v7 = *v6;
  }

  return v7;
}

uint64_t sub_24EE09A58(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AE8);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - v3;
  v33 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v33);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AF0);
  v36 = *(v5 - 8);
  v37 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AF8);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B00);
  v42 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0DA7C();
  sub_24F92D128();
  sub_24EE0DFC4(v40, v13, type metadata accessor for SocialMenuItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v13 + 2);
      LOBYTE(v44) = 1;
      sub_24EE0DB24();
      v19 = v14;
      sub_24F92CC98();
      LOBYTE(v44) = 0;
      v20 = v37;
      v21 = v41;
      sub_24F92CD08();

      if (v21)
      {

        (*(v36 + 8))(v7, v20);
        return (*(v42 + 8))(v16, v19);
      }

      else
      {
        v44 = v18;
        v43 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0);
        sub_24EE0DB78();
        sub_24F92CD48();
        (*(v36 + 8))(v7, v20);
        (*(v42 + 8))(v16, v19);
      }
    }

    else
    {
      v27 = v34;
      sub_24EE0DC80(v13, v34, type metadata accessor for SocialMenuAction);
      LOBYTE(v44) = 2;
      sub_24EE0DAD0();
      v28 = v35;
      sub_24F92CC98();
      sub_24EE0D4C4(&qword_27F230B18, type metadata accessor for SocialMenuAction);
      v29 = v39;
      sub_24F92CD48();
      (*(v38 + 8))(v28, v29);
      sub_24EE0EC3C(v27, type metadata accessor for SocialMenuAction);
      return (*(v42 + 8))(v16, v14);
    }
  }

  else
  {
    v23 = *(v13 + 2);
    LOBYTE(v44) = 0;
    sub_24EE0DC2C();
    v24 = v14;
    sub_24F92CC98();
    LOBYTE(v44) = 0;
    v25 = v32;
    v26 = v41;
    sub_24F92CD08();

    if (v26)
    {

      (*(v31 + 8))(v10, v25);
      return (*(v42 + 8))(v16, v24);
    }

    else
    {
      v44 = v23;
      v43 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0);
      sub_24EE0DB78();
      sub_24F92CD48();
      (*(v31 + 8))(v10, v25);
      (*(v42 + 8))(v16, v24);
    }
  }
}

uint64_t sub_24EE0A12C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B38);
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  MEMORY[0x28223BE20](v3);
  v79 = &v66 - v5;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B40);
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v78 = &v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B48);
  v8 = *(v7 - 8);
  v70 = v7;
  v71 = v8;
  MEMORY[0x28223BE20](v7);
  v76 = &v66 - v9;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B50);
  v80 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v11 = &v66 - v10;
  v12 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24EE0DA7C();
  v25 = v82;
  sub_24F92D108();
  if (!v25)
  {
    v82 = v14;
    v67 = v20;
    v68 = v17;
    v69 = v23;
    v26 = v76;
    v27 = v77;
    v29 = v78;
    v28 = v79;
    v30 = v81;
    v31 = sub_24F92CC78();
    v32 = (2 * *(v31 + 16)) | 1;
    v85 = v31;
    v86 = v31 + 32;
    v87 = 0;
    v88 = v32;
    v33 = sub_24E643434();
    if (v33 == 3 || v87 != v88 >> 1)
    {
      v37 = v11;
      v38 = sub_24F92C918();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
      *v40 = v12;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v80 + 8))(v37, v27);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33)
      {
        if (v33 == 1)
        {
          LOBYTE(v89) = 1;
          sub_24EE0DB24();
          sub_24F92CBA8();
          LOBYTE(v89) = 0;
          v34 = v72;
          v35 = sub_24F92CC28();
          v36 = v29;
          v55 = v54;
          v82 = v35;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0);
          v84 = 1;
          sub_24EE0DCE8();
          sub_24F92CC68();
          (*(v75 + 8))(v36, v34);
          (*(v80 + 8))(v11, v27);
          swift_unknownObjectRelease();
          v58 = v89;
          v59 = v68;
          *v68 = v82;
          v59[1] = v55;
          v59[2] = v58;
          swift_storeEnumTagMultiPayload();
          v60 = v59;
          v61 = v69;
          sub_24EE0DC80(v60, v69, type metadata accessor for SocialMenuItem);
          v62 = v81;
        }

        else
        {
          LOBYTE(v89) = 2;
          sub_24EE0DAD0();
          v42 = v27;
          v43 = v28;
          sub_24F92CBA8();
          v48 = v30;
          v49 = v42;
          v78 = v11;
          type metadata accessor for SocialMenuAction(0);
          sub_24EE0D4C4(&qword_27F225878, type metadata accessor for SocialMenuAction);
          v50 = v82;
          v51 = v73;
          sub_24F92CC68();
          v52 = v43;
          v53 = v80;
          (*(v74 + 8))(v52, v51);
          (*(v53 + 8))(v78, v49);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v61 = v69;
          sub_24EE0DC80(v50, v69, type metadata accessor for SocialMenuItem);
          v62 = v48;
        }
      }

      else
      {
        LOBYTE(v89) = 0;
        sub_24EE0DC2C();
        sub_24F92CBA8();
        v44 = v27;
        LOBYTE(v89) = 0;
        v45 = v70;
        v46 = sub_24F92CC28();
        v47 = v26;
        v57 = v56;
        v82 = v46;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0);
        v84 = 1;
        sub_24EE0DCE8();
        sub_24F92CC68();
        (*(v71 + 8))(v47, v45);
        (*(v80 + 8))(v11, v44);
        swift_unknownObjectRelease();
        v63 = v89;
        v64 = v67;
        *v67 = v82;
        v64[1] = v57;
        v64[2] = v63;
        swift_storeEnumTagMultiPayload();
        v65 = v64;
        v61 = v69;
        sub_24EE0DC80(v65, v69, type metadata accessor for SocialMenuItem);
        v62 = v30;
      }

      sub_24EE0DC80(v61, v62, type metadata accessor for SocialMenuItem);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_24EE0AA9C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0B1C8();
  sub_24F92D128();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A68);
  sub_24EE0B21C();
  sub_24F92CD48();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EE0AC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EE0AC90(uint64_t a1)
{
  v2 = sub_24EE0DAD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0ACCC(uint64_t a1)
{
  v2 = sub_24EE0DAD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0AD08()
{
  v1 = 0x70756F7267;
  if (*v0 != 1)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x476C6F72746E6F63;
  }
}

uint64_t sub_24EE0AD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EE0EA24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EE0AD8C(uint64_t a1)
{
  v2 = sub_24EE0DA7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0ADC8(uint64_t a1)
{
  v2 = sub_24EE0DA7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0AE04(uint64_t a1)
{
  v2 = sub_24EE0DC2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0AE40(uint64_t a1)
{
  v2 = sub_24EE0DC2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0AE7C()
{
  if (*v0)
  {
    return 0x736E6F69746361;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24EE0AEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EE0AF84(uint64_t a1)
{
  v2 = sub_24EE0DB24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0AFC0(uint64_t a1)
{
  v2 = sub_24EE0DB24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE0B058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EE0B0DC(uint64_t a1)
{
  v2 = sub_24EE0B1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE0B118(uint64_t a1)
{
  v2 = sub_24EE0B1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24EE0B154@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_24EE0D28C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_24EE0B19C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_24EA34448(a1, a2);
  if (!v3)
  {
    *a3 = v5;
  }
}

unint64_t sub_24EE0B1C8()
{
  result = qword_27F230A60;
  if (!qword_27F230A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A60);
  }

  return result;
}

unint64_t sub_24EE0B21C()
{
  result = qword_27F230A70;
  if (!qword_27F230A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A68);
    sub_24EE0D4C4(&qword_27F230A78, type metadata accessor for SocialMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A70);
  }

  return result;
}

uint64_t sub_24EE0B2F0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = type metadata accessor for SocialMenuActionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223840);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v21 - v9;
  v11 = sub_24F9232F8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v21 = type metadata accessor for SocialMenuAction(0);
  sub_24E60169C(v1 + *(v21 + 32), v28, qword_27F24EC90);
  sub_24EE0DFC4(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialMenuActionView);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_24EE0DC80(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for SocialMenuActionView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230CF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230CF8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D00);
  v16 = sub_24F9251E8();
  v17 = sub_24EE0F1C8();
  v18 = sub_24EE0D4C4(&qword_27F230D20, MEMORY[0x277CDE1B0]);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v14;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  sub_24E993DC0(*(v1 + *(v21 + 36)));
  return (*(v8 + 8))(v10, v22);
}

uint64_t sub_24EE0B680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = sub_24F9248C8();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9251E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D00);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230CF8);
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = &v23 - v13;
  v24 = a1;
  v30 = a1;
  v29 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D28);
  sub_24EE0F2BC();
  sub_24F926EA8();
  v15 = sub_24F926D18();
  KeyPath = swift_getKeyPath();
  v17 = &v11[*(v9 + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  sub_24F9251D8();
  v18 = sub_24EE0F1C8();
  v19 = sub_24EE0D4C4(&qword_27F230D20, MEMORY[0x277CDE1B0]);
  sub_24F9260E8();
  (*(v6 + 8))(v8, v5);
  sub_24E601704(v11, &qword_27F230D00);
  v20 = type metadata accessor for SocialMenuAction(0);
  sub_24E60169C(v24 + *(v20 + 32), v31, qword_27F24EC90);
  sub_24E601704(v31, qword_27F21B590);
  sub_24F9248B8();
  v31[0] = v9;
  v31[1] = v5;
  v31[2] = v18;
  v31[3] = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v25;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v26 + 8))(v4, v28);
  return (*(v12 + 8))(v14, v21);
}

uint64_t sub_24EE0BA90@<X0>(uint64_t a1@<X8>)
{
  sub_24E600AEC();

  result = sub_24F925E18();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24EE0BAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D48);
  MEMORY[0x28223BE20](v25);
  v24 = (&v24 - v3);
  v4 = type metadata accessor for GameIcon(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_24F9289E8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SocialMenuAction(0);
  v15 = a1;
  sub_24E60169C(a1 + *(v14 + 24), v9, &qword_27F213FB0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    (*(v11 + 16))(v6, v13, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v20 = v4[8];
    *&v6[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0);
    swift_storeEnumTagMultiPayload();
    v6[v4[5]] = 1;
    v6[v4[6]] = 1;
    v6[v4[7]] = 0;
    sub_24EE0DFC4(v6, v24, type metadata accessor for GameIcon);
    swift_storeEnumTagMultiPayload();
    sub_24EE0D4C4(&qword_27F216790, type metadata accessor for GameIcon);
    v17 = v26;
    sub_24F924E28();
    sub_24EE0EC3C(v6, type metadata accessor for GameIcon);
    (*(v11 + 8))(v13, v10);
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v16 = v24;
  v17 = v26;
  sub_24E601704(v9, &qword_27F213FB0);
  v18 = *(v15 + *(v14 + 28));
  if (v18 != 82)
  {
    if (v18 <= 0x3E && ((1 << v18) & 0x7FFFFDFF3FFFFFEDLL) != 0 || v18 - 65 < 0x11)
    {
      v27 = *(v15 + *(v14 + 28));
      SystemImage.rawValue.getter();
      v21 = sub_24F926DF8();
    }

    else
    {
      v28 = *(v15 + *(v14 + 28));
      SystemImage.rawValue.getter();
      v21 = sub_24F926E48();
    }

    *v16 = v21;
    swift_storeEnumTagMultiPayload();
    sub_24EE0D4C4(&qword_27F216790, type metadata accessor for GameIcon);
    sub_24F924E28();
    goto LABEL_10;
  }

  v19 = 1;
LABEL_11:
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D40);
  return (*(*(v22 - 8) + 56))(v17, v19, 1, v22);
}

uint64_t sub_24EE0BFD8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v64 = type metadata accessor for SocialMenuActionView(0);
  MEMORY[0x28223BE20](v64);
  v49 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for SocialMenuAction(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C68);
  MEMORY[0x28223BE20](v58);
  v51 = &v45 - v5;
  v55 = sub_24F9271F8();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C70);
  v11 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C78);
  MEMORY[0x28223BE20](v61);
  v60 = &v45 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C80);
  MEMORY[0x28223BE20](v53);
  v52 = &v45 - v18;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C88);
  MEMORY[0x28223BE20](v62);
  v56 = &v45 - v19;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230C90);
  v20 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v22 = &v45 - v21;
  v23 = type metadata accessor for SocialMenuItem(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EE0DFC4(v59, v25, type metadata accessor for SocialMenuItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *(v25 + 2);

      v65 = v27;
      swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0);
      sub_24E602068(&qword_27F230CB8, &qword_27F230AC0);
      v59 = sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView);
      v48 = v16;
      sub_24F927228();
      v28 = v10;
      v47 = v10;
      sub_24F9271E8();
      v46 = v11;
      v29 = *(v11 + 16);
      v30 = v57;
      v29(v13, v16, v57);
      v31 = v50;
      v32 = *(v50 + 16);
      v33 = v28;
      v34 = v55;
      v32(v7, v33, v55);
      v35 = v51;
      v29(v51, v13, v30);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230CC0);
      v32((v35 + *(v36 + 48)), v7, v34);
      v37 = *(v31 + 8);
      v37(v7, v34);
      v38 = *(v46 + 8);
      v38(v13, v30);
      sub_24E60169C(v35, v52, &qword_27F230C68);
      swift_storeEnumTagMultiPayload();
      sub_24E602068(&qword_27F230CA0, &qword_27F230C90);
      sub_24E602068(&qword_27F230CA8, &qword_27F230C68);
      v39 = v56;
      sub_24F924E28();
      sub_24E60169C(v39, v60, &qword_27F230C88);
      swift_storeEnumTagMultiPayload();
      sub_24EE0EB58();
      sub_24F924E28();
      sub_24E601704(v39, &qword_27F230C88);
      sub_24E601704(v35, &qword_27F230C68);
      v37(v47, v55);
      return (v38)(v48, v30);
    }

    else
    {
      sub_24EE0DC80(v25, v4, type metadata accessor for SocialMenuAction);
      v44 = v49;
      sub_24EE0DFC4(v4, v49, type metadata accessor for SocialMenuAction);
      sub_24EE0DFC4(v44, v60, type metadata accessor for SocialMenuActionView);
      swift_storeEnumTagMultiPayload();
      sub_24EE0EB58();
      sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView);
      sub_24F924E28();
      sub_24EE0EC3C(v44, type metadata accessor for SocialMenuActionView);
      return sub_24EE0EC3C(v4, type metadata accessor for SocialMenuAction);
    }
  }

  else
  {

    MEMORY[0x28223BE20](v41);
    sub_24EE0ECA4();
    sub_24F923718();

    v42 = v54;
    (*(v20 + 16))(v52, v22, v54);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F230CA0, &qword_27F230C90);
    sub_24E602068(&qword_27F230CA8, &qword_27F230C68);
    v43 = v56;
    sub_24F924E28();
    sub_24E60169C(v43, v60, &qword_27F230C88);
    swift_storeEnumTagMultiPayload();
    sub_24EE0EB58();
    sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView);
    sub_24F924E28();
    sub_24E601704(v43, &qword_27F230C88);
    return (*(v20 + 8))(v22, v42);
  }
}

uint64_t sub_24EE0CA70()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230AC0);
  type metadata accessor for SocialMenuActionView(0);
  sub_24E602068(&qword_27F230CB8, &qword_27F230AC0);
  sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView);
  return sub_24F927228();
}

uint64_t sub_24EE0CBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a3;
  v5 = sub_24F9241F8();
  v6 = *(v5 - 8);
  v38 = v5;
  v39 = v6;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F923DF8();
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B60);
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B68);
  v15 = *(v14 - 8);
  v33 = v14;
  v34 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B70);
  v19 = *(v18 - 8);
  v35 = v18;
  v36 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v31 - v20;
  v42 = a2;
  v41 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B80);
  sub_24E602068(&qword_27F230B88, &qword_27F230B78);
  sub_24EE0DE1C();
  sub_24F925AB8();
  sub_24F923DE8();
  v22 = sub_24E602068(&qword_27F230BA0, &qword_27F230B60);
  v23 = sub_24EE0D4C4(&qword_27F230BA8, MEMORY[0x277CDD9E0]);
  sub_24F926BB8();
  (*(v32 + 8))(v10, v8);
  (*(v31 + 8))(v13, v11);
  v24 = v37;
  sub_24F9241E8();
  v43 = v11;
  v44 = v8;
  v45 = v22;
  v46 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24EE0D4C4(&qword_27F212838, MEMORY[0x277CDDB18]);
  v27 = v33;
  v28 = v38;
  sub_24F926178();
  (*(v39 + 8))(v24, v28);
  (*(v34 + 8))(v17, v27);
  v43 = v27;
  v44 = v28;
  v45 = OpaqueTypeConformance2;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v35;
  sub_24F926888();
  return (*(v36 + 8))(v21, v29);
}

uint64_t sub_24EE0D130()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A68);
  type metadata accessor for SocialMenuItemView(0);
  sub_24E602068(&qword_27F230BB0, &qword_27F230A68);
  sub_24EE0D4C4(&qword_27F230B98, type metadata accessor for SocialMenuItemView);
  return sub_24F927228();
}

void *sub_24EE0D28C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE0B1C8();
  sub_24F92D108();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230A68);
    sub_24EE0D410();
    sub_24F92CC68();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

unint64_t sub_24EE0D410()
{
  result = qword_27F230A88;
  if (!qword_27F230A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230A68);
    sub_24EE0D4C4(&qword_27F225880, type metadata accessor for SocialMenuItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230A88);
  }

  return result;
}

uint64_t sub_24EE0D4C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE0D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EE0D5F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EE0D6C0()
{
  sub_24E6A7820();
  if (v0 <= 0x3F)
  {
    sub_24EE0D7B4();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F21C120, &qword_27F213840);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EE0D7B4()
{
  if (!qword_27F230AA0)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F230AA0);
    }
  }
}

void sub_24EE0D824()
{
  sub_24EE0D898();
  if (v0 <= 0x3F)
  {
    sub_24EE0D910();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24EE0D898()
{
  if (!qword_27F230AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230AC0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F230AB8);
    }
  }
}

void sub_24EE0D910()
{
  if (!qword_27F230AC8)
  {
    v0 = type metadata accessor for SocialMenuAction(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27F230AC8);
    }
  }
}

unint64_t sub_24EE0D95C()
{
  result = qword_27F230AD0;
  if (!qword_27F230AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230AD0);
  }

  return result;
}

unint64_t sub_24EE0D9D0()
{
  result = qword_27F230AD8;
  if (!qword_27F230AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230AD8);
  }

  return result;
}

unint64_t sub_24EE0DA28()
{
  result = qword_27F230AE0;
  if (!qword_27F230AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230AE0);
  }

  return result;
}

unint64_t sub_24EE0DA7C()
{
  result = qword_27F230B08;
  if (!qword_27F230B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B08);
  }

  return result;
}

unint64_t sub_24EE0DAD0()
{
  result = qword_27F230B10;
  if (!qword_27F230B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B10);
  }

  return result;
}

unint64_t sub_24EE0DB24()
{
  result = qword_27F230B20;
  if (!qword_27F230B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B20);
  }

  return result;
}

unint64_t sub_24EE0DB78()
{
  result = qword_27F230B28;
  if (!qword_27F230B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230AC0);
    sub_24EE0D4C4(&qword_27F230B18, type metadata accessor for SocialMenuAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B28);
  }

  return result;
}

unint64_t sub_24EE0DC2C()
{
  result = qword_27F230B30;
  if (!qword_27F230B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B30);
  }

  return result;
}

uint64_t sub_24EE0DC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE0DCE8()
{
  result = qword_27F230B58;
  if (!qword_27F230B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230AC0);
    sub_24EE0D4C4(&qword_27F225878, type metadata accessor for SocialMenuAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B58);
  }

  return result;
}

uint64_t sub_24EE0DDA4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230B78);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

unint64_t sub_24EE0DE1C()
{
  result = qword_27F230B90;
  if (!qword_27F230B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B80);
    sub_24EE0D4C4(&qword_27F230B98, type metadata accessor for SocialMenuItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230B90);
  }

  return result;
}

uint64_t sub_24EE0DEF0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24EE09908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_24EE0DF1C()
{
  result = qword_27F230BC0;
  if (!qword_27F230BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BC0);
  }

  return result;
}

unint64_t sub_24EE0DF70()
{
  result = qword_27F230BC8;
  if (!qword_27F230BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BC8);
  }

  return result;
}

uint64_t sub_24EE0DFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE0E02C()
{
  result = qword_27F230BD8;
  if (!qword_27F230BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BD8);
  }

  return result;
}

uint64_t sub_24EE0E140()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B68);
  sub_24F9241F8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230B60);
  sub_24F923DF8();
  sub_24E602068(&qword_27F230BA0, &qword_27F230B60);
  sub_24EE0D4C4(&qword_27F230BA8, MEMORY[0x277CDD9E0]);
  swift_getOpaqueTypeConformance2();
  sub_24EE0D4C4(&qword_27F212838, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EE0E2F4()
{
  result = qword_27F230BF0;
  if (!qword_27F230BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BF0);
  }

  return result;
}

unint64_t sub_24EE0E34C()
{
  result = qword_27F230BF8;
  if (!qword_27F230BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230BF8);
  }

  return result;
}

unint64_t sub_24EE0E3A4()
{
  result = qword_27F230C00;
  if (!qword_27F230C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C00);
  }

  return result;
}

unint64_t sub_24EE0E3FC()
{
  result = qword_27F230C08;
  if (!qword_27F230C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C08);
  }

  return result;
}

unint64_t sub_24EE0E454()
{
  result = qword_27F230C10;
  if (!qword_27F230C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C10);
  }

  return result;
}

unint64_t sub_24EE0E4AC()
{
  result = qword_27F230C18;
  if (!qword_27F230C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C18);
  }

  return result;
}

unint64_t sub_24EE0E504()
{
  result = qword_27F230C20;
  if (!qword_27F230C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C20);
  }

  return result;
}

unint64_t sub_24EE0E578()
{
  result = qword_27F230C28;
  if (!qword_27F230C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C28);
  }

  return result;
}

unint64_t sub_24EE0E5D0()
{
  result = qword_27F230C30;
  if (!qword_27F230C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C30);
  }

  return result;
}

unint64_t sub_24EE0E628()
{
  result = qword_27F230C38;
  if (!qword_27F230C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C38);
  }

  return result;
}

unint64_t sub_24EE0E680()
{
  result = qword_27F230C40;
  if (!qword_27F230C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C40);
  }

  return result;
}

unint64_t sub_24EE0E6D8()
{
  result = qword_27F230C48;
  if (!qword_27F230C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C48);
  }

  return result;
}

unint64_t sub_24EE0E730()
{
  result = qword_27F230C50;
  if (!qword_27F230C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C50);
  }

  return result;
}

unint64_t sub_24EE0E788()
{
  result = qword_27F230C58;
  if (!qword_27F230C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C58);
  }

  return result;
}

unint64_t sub_24EE0E7E0()
{
  result = qword_27F230C60;
  if (!qword_27F230C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C60);
  }

  return result;
}

uint64_t sub_24EE0E834(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEB00000000656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24EE0EA24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476C6F72746E6F63 && a2 == 0xEC00000070756F72;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_24EE0EB58()
{
  result = qword_27F230C98;
  if (!qword_27F230C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230C88);
    sub_24E602068(&qword_27F230CA0, &qword_27F230C90);
    sub_24E602068(&qword_27F230CA8, &qword_27F230C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230C98);
  }

  return result;
}

uint64_t sub_24EE0EC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE0ECA4()
{
  result = qword_27F230CC8;
  if (!qword_27F230CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230C70);
    sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230CC8);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_51Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_52Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_24EE0EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EE0EF20()
{
  result = qword_27F230CE0;
  if (!qword_27F230CE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230CE8);
    sub_24EE0EB58();
    sub_24EE0D4C4(&qword_27F230CB0, type metadata accessor for SocialMenuActionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230CE0);
  }

  return result;
}

uint64_t sub_24EE0EFF8()
{
  v1 = *(type metadata accessor for SocialMenuActionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for SocialMenuAction(0);
  v4 = *(v3 + 24);
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = v2 + *(v3 + 32);
  if (*(v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE0F158@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SocialMenuActionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EE0B680(v4, a1);
}

unint64_t sub_24EE0F1C8()
{
  result = qword_27F230D08;
  if (!qword_27F230D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D00);
    sub_24E602068(&qword_27F230D10, &qword_27F230D18);
    sub_24E602068(&unk_27F2554A0, &qword_27F212B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D08);
  }

  return result;
}

unint64_t sub_24EE0F2BC()
{
  result = qword_27F230D30;
  if (!qword_27F230D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D28);
    sub_24EE0F340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D30);
  }

  return result;
}

unint64_t sub_24EE0F340()
{
  result = qword_27F230D38;
  if (!qword_27F230D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D40);
    sub_24EE0D4C4(&qword_27F216790, type metadata accessor for GameIcon);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D38);
  }

  return result;
}

unint64_t sub_24EE0F410()
{
  result = qword_27F230D50;
  if (!qword_27F230D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D58);
    sub_24E99D1EC();
    sub_24E99D2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D50);
  }

  return result;
}

double ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ItemSupplementaryProvider.dequeueSupplementaryView(elementKind:at:for:in:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(a8 + 16))(&v14, a1, a2, a4, a6, a7, a8);
  if (v15)
  {
    sub_24E612C80(&v14, v16);
    v10 = v17;
    v11 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v12 = (*(v11 + 24))(a3, a5, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    sub_24EE0F5B8(&v14);
    return 0;
  }

  return v12;
}

uint64_t sub_24EE0F5B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TitledButton.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TitledButton.__allocating_init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  sub_24E65E064(a1, &v19);
  if (*(&v20 + 1))
  {
    sub_24E9BBAA8(a1);
    v22 = v19;
    v23 = v20;
    v24 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v13 = sub_24F91F668();
    v15 = v14;
    (*(v9 + 8))(v11, v8);
    v18[1] = v13;
    v18[2] = v15;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v19);
  }

  v16 = v23;
  *(v12 + 40) = v22;
  *(v12 + 56) = v16;
  *(v12 + 72) = v24;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  return v12;
}

uint64_t TitledButton.init(id:title:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v20);
  if (*(&v21 + 1))
  {
    sub_24E9BBAA8(a1);
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v11 + 8))(v13, v10);
    v19[1] = v14;
    v19[2] = v16;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v20);
  }

  v17 = v24;
  *(v5 + 40) = v23;
  *(v5 + 56) = v17;
  *(v5 + 72) = v25;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4;
  return v5;
}

uint64_t TitledButton.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TitledButton.init(deserializing:using:)(a1, a2);
  return v4;
}

void *TitledButton.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v44 = *v2;
  v45 = v3;
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F928388();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  sub_24F928398();
  v18 = sub_24F928348();
  if (v19)
  {
    v48 = v18;
    v49 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v21 = v7;
    v22 = a1;
    v24 = v23;
    (*(v21 + 8))(v9, v6);
    v48 = v20;
    v49 = v24;
    a1 = v22;
  }

  sub_24F92C7F8();
  v25 = *(v10 + 8);
  v25(v17, v53);
  v26 = v51;
  *(v4 + 5) = v50;
  *(v4 + 7) = v26;
  v4[9] = v52;
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v25(v14, v53);
  v30 = a1;
  if (v29)
  {
    v31 = v53;
    v4[2] = v27;
    v4[3] = v29;
    type metadata accessor for Action();
    v32 = v46;
    sub_24F928398();
    v33 = v47;
    v34 = v45;
    v35 = static Action.makeInstance(byDeserializing:using:)(v32, v47);
    if (!v34)
    {
      v40 = v35;
      v41 = sub_24F9285B8();
      (*(*(v41 - 8) + 8))(v33, v41);
      v25(v30, v31);
      v25(v32, v31);
      v4[4] = v40;
      return v4;
    }

    v36 = sub_24F9285B8();
    (*(*(v36 - 8) + 8))(v33, v36);
    v25(a1, v31);
    v25(v32, v31);
  }

  else
  {
    v37 = sub_24F92AC38();
    sub_24EE0FFB4(&qword_27F2213B8, 255, MEMORY[0x277D22548]);
    swift_allocError();
    *v38 = 0x656C746974;
    v38[1] = 0xE500000000000000;
    v38[2] = v44;
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D22530], v37);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v47, v39);
    v25(v30, v53);
  }

  sub_24E6585F8((v4 + 5));
  type metadata accessor for TitledButton();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t TitledButton.deinit()
{

  sub_24E6585F8(v0 + 40);
  return v0;
}

uint64_t TitledButton.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24EE0FFB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_24EE1000C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for TitledButton();
  v7 = swift_allocObject();
  result = TitledButton.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE100D8(_OWORD *a1)
{
  v2 = sub_24F922028();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_24EE17D1C(a1, &v40);
  sub_24F928438();
  sub_24E601704(v42, &qword_27F2129B0);
  sub_24F92A588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225778);
  v39 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v9 = sub_24F929768();
  sub_24F921FE8();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_24E9BD0D0();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_24F929638();
  *&v41[16] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v40);
  v14 = v13;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90);
  sub_24EE17E8C();
  v36 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_24E69A5C4(0, &qword_27F222300);
  sub_24EE17D1C(v10, &v40);

  sub_24EE17D1C(v10, &v40);

  v30 = sub_24F92BEF8();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x277D225C0];
  *&v40 = v30;
  sub_24F92A958();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

uint64_t sub_24EE1069C(_OWORD *a1)
{
  v2 = sub_24F922028();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  if (qword_27F210780 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v42[3] = &type metadata for AppStoreAMSEngagementRequest;
  v7 = swift_allocObject();
  v42[0] = v7;
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  *(v7 + 41) = *(a1 + 25);
  sub_24EE17D1C(a1, &v40);
  sub_24F928438();
  sub_24E601704(v42, &qword_27F2129B0);
  sub_24F92A588();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225778);
  v39 = sub_24F92A9E8();
  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v9 = sub_24F929768();
  sub_24F921FE8();

  v10 = a1;
  v11 = a1[1];
  v40 = *a1;
  *v41 = v11;
  *&v41[9] = *(a1 + 25);
  sub_24E9BD0D0();
  v12 = swift_allocObject();
  v13 = v36;
  *(v12 + 16) = v36;
  *&v41[8] = sub_24F929638();
  *&v41[16] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v40);
  v14 = v13;
  sub_24F929628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90);
  sub_24EE17E8C();
  v36 = sub_24F92A9B8();

  __swift_destroy_boxed_opaque_existential_1(&v40);
  v16 = v37;
  v15 = v38;
  v34 = *(v38 + 16);
  v34(v37, v6, v2);
  v17 = *(v15 + 80);
  v32 = v2;
  v33 = (v17 + 57) & ~v17;
  v18 = v6;
  v35 = v6;
  v19 = (v3 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v10[1];
  v20[1] = *v10;
  v20[2] = v21;
  *(v20 + 41) = *(v10 + 25);
  v22 = *(v15 + 32);
  v23 = v32;
  v22(v20 + ((v17 + 57) & ~v17), v16, v32);
  *(v20 + v19) = v39;
  v24 = v18;
  v25 = v23;
  v34(v16, v24, v23);
  v26 = swift_allocObject();
  v27 = v10[1];
  v26[1] = *v10;
  v26[2] = v27;
  *(v26 + 41) = *(v10 + 25);
  v22(v26 + v33, v16, v25);
  v28 = v39;
  *(v26 + v19) = v39;
  v29 = sub_24E69A5C4(0, &qword_27F222300);
  sub_24EE17D1C(v10, &v40);

  sub_24EE17D1C(v10, &v40);

  v30 = sub_24F92BEF8();
  *&v41[8] = v29;
  *&v41[16] = MEMORY[0x277D225C0];
  *&v40 = v30;
  sub_24F92A958();

  (*(v38 + 8))(v35, v25);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  return v28;
}

void sub_24EE10C60(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  v5 = [a1 data];
  if (v5 && (v6 = v5, v7 = sub_24F92AE38(), v6, v8 = sub_24E9E1CDC(v7), , v8))
  {
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v22 = &type metadata for AppStoreAMSEngagementRequest;
    v9 = swift_allocObject();
    v21[0] = v9;
    v10 = a2[1];
    v9[1] = *a2;
    v9[2] = v10;
    *(v9 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v18);
    sub_24F928438();
    sub_24E601704(v21, &qword_27F2129B0);
    sub_24F9283A8();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v18[0] = v8;

    sub_24F928438();
    sub_24E601704(v18, &qword_27F2129B0);
    sub_24F92A588();

    v18[0] = v8;
    sub_24F92A9C8();
  }

  else
  {
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    sub_24E615E00(qword_27F39B678, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v20[3] = &type metadata for AppStoreAMSEngagementRequest;
    v11 = swift_allocObject();
    v20[0] = v11;
    v12 = a2[1];
    v11[1] = *a2;
    v11[2] = v12;
    *(v11 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v18);
    sub_24F928438();
    sub_24E601704(v20, &qword_27F2129B0);
    sub_24F9283A8();
    v13 = [a1 data];
    if (v13)
    {
      v14 = v13;
      v15 = sub_24F92AE38();

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    }

    else
    {
      v15 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v15;
    v19 = v13;
    sub_24F928438();
    sub_24E601704(v18, &qword_27F2129B0);
    sub_24F92A5A8();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_24EE17F24();
    v16 = swift_allocError();
    *v17 = 1;
    sub_24F92A9A8();
  }
}

void sub_24EE11238(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  v5 = [a1 data];
  if (v5 && (v6 = v5, v7 = sub_24F92AE38(), v6, v8 = sub_24E9E1CDC(v7), , v8))
  {
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v22 = &type metadata for AppStoreAMSEngagementRequest;
    v9 = swift_allocObject();
    v21[0] = v9;
    v10 = a2[1];
    v9[1] = *a2;
    v9[2] = v10;
    *(v9 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v18);
    sub_24F928438();
    sub_24E601704(v21, &qword_27F2129B0);
    sub_24F9283A8();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v18[0] = v8;

    sub_24F928438();
    sub_24E601704(v18, &qword_27F2129B0);
    sub_24F92A588();

    v18[0] = v8;
    sub_24F92A9C8();
  }

  else
  {
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    sub_24E615E00(qword_27F39C9A8, v21);
    __swift_project_boxed_opaque_existential_1(v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    v20[3] = &type metadata for AppStoreAMSEngagementRequest;
    v11 = swift_allocObject();
    v20[0] = v11;
    v12 = a2[1];
    v11[1] = *a2;
    v11[2] = v12;
    *(v11 + 41) = *(a2 + 25);
    sub_24EE17D1C(a2, v18);
    sub_24F928438();
    sub_24E601704(v20, &qword_27F2129B0);
    sub_24F9283A8();
    v13 = [a1 data];
    if (v13)
    {
      v14 = v13;
      v15 = sub_24F92AE38();

      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218D8);
    }

    else
    {
      v15 = 0;
      v18[1] = 0;
      v18[2] = 0;
    }

    v18[0] = v15;
    v19 = v13;
    sub_24F928438();
    sub_24E601704(v18, &qword_27F2129B0);
    sub_24F92A5A8();

    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_24EE17F24();
    v16 = swift_allocError();
    *v17 = 1;
    sub_24F92A9A8();
  }
}

void sub_24EE11810(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v13[3] = &type metadata for AppStoreAMSEngagementRequest;
  v5 = swift_allocObject();
  v13[0] = v5;
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  *(v5 + 41) = *(a2 + 25);
  sub_24EE17D1C(a2, v12);
  sub_24F928438();
  sub_24E601704(v13, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v12, &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24EE17F24();
  v8 = swift_allocError();
  *v9 = a1;
  v10 = a1;
  sub_24F92A9A8();
}

void sub_24EE11B64(void *a1, _OWORD *a2)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  if (qword_27F210780 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  v13[3] = &type metadata for AppStoreAMSEngagementRequest;
  v5 = swift_allocObject();
  v13[0] = v5;
  v6 = a2[1];
  v5[1] = *a2;
  v5[2] = v6;
  *(v5 + 41) = *(a2 + 25);
  sub_24EE17D1C(a2, v12);
  sub_24F928438();
  sub_24E601704(v13, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v12[3] = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v11 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v12, &qword_27F2129B0);
  sub_24F92A5A8();

  sub_24EE17F24();
  v8 = swift_allocError();
  *v9 = a1;
  v10 = a1;
  sub_24F92A9A8();
}

id AppStoreOnDeviceRecommendationsManager.__allocating_init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v5[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_24EE11F58()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39C9C0 = sub_24F92AAE8();
  unk_27F39C9C8 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39C9A8);
  return sub_24F92AAD8();
}

id AppStoreOnDeviceRecommendationsManager.init(accountStore:bag:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_amsEngagement;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  *&v2[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_activeStoreAccount] = 0;
  *&v2[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_accountStore] = a1;
  *&v2[OBJC_IVAR____TtC12GameStoreKit38AppStoreOnDeviceRecommendationsManager_bag] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_24EE12158(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_24F922028();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v63 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v65 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v15 = *a1;
  if (v15 <= 3)
  {
    if (*a1 > 1u)
    {
      v61 = v3;
      v62 = v4;
    }

    else
    {
      if (!*a1)
      {
LABEL_13:
      }

      v61 = v3;
      v62 = v4;
    }
  }

  else
  {
    v61 = v3;
    v62 = v4;
  }

  v16 = 0x7265666E69;
  v17 = sub_24F92CE08();

  if (v17)
  {
    return result;
  }

  if (v15 == 1)
  {
    goto LABEL_13;
  }

  v19 = sub_24F92CE08();

  if (v19)
  {
    return result;
  }

  if (v15 >= 8)
  {
    goto LABEL_13;
  }

  v20 = sub_24F92CE08();

  if (v20)
  {
    return result;
  }

  v60 = v1;
  if (qword_27F210AD0 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v12 + 8))(v14, v11);
  if (v70 != 1)
  {
    if (qword_27F210780 == -1)
    {
LABEL_24:
      __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v21 = sub_24F92AB18();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v10, 1, v21) == 1)
  {
    sub_24E601704(v10, &qword_27F2330E0);
    if (qword_27F210780 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v23 = sub_24F92AB08();
  (*(v22 + 8))(v10, v21);
  if ([v23 ams:*MEMORY[0x277CEE148] accountFlagValueForAccountFlag:?])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v66 = 0u;
    v67 = 0u;
  }

  v24 = v62;
  v70 = v66;
  v71 = v67;
  if (!*(&v67 + 1))
  {
    sub_24E601704(&v70, &qword_27F2129B0);
LABEL_36:
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    goto LABEL_39;
  }

  if ((swift_dynamicCast() & 1) == 0 || v69 != 1)
  {
    goto LABEL_36;
  }

  v25 = [v23 ams_DSID];
  if (!v25)
  {
    if (qword_27F210780 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F9283A8();
    if (v15 > 3)
    {
      if (v15 > 5)
      {
        if (v15 == 6)
        {
          v35 = 0xE700000000000000;
          v16 = 0x73657461647075;
        }

        else
        {
          v35 = 0xE600000000000000;
          v16 = 0x656461637261;
        }
      }

      else if (v15 == 4)
      {
        v35 = 0xE500000000000000;
        v16 = 0x73656D6167;
      }

      else
      {
        v35 = 0xE600000000000000;
        v16 = 0x686372616573;
      }
    }

    else if (v15 > 1)
    {
      if (v15 == 2)
      {
        v35 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v35 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v35 = 0xE500000000000000;
    }

    *(&v71 + 1) = MEMORY[0x277D837D0];
    *&v70 = v16;
    *(&v70 + 1) = v35;
    sub_24F928438();
    sub_24E601704(&v70, &qword_27F2129B0);
    sub_24F9283A8();
LABEL_39:
    sub_24F92A588();
  }

  v26 = v25;
  v27 = [v25 stringValue];

  v28 = sub_24F92B0D8();
  v30 = v29;

  sub_24F929778();
  sub_24F929768();
  sub_24F921FF8();
  sub_24F92C058();
  v31 = sub_24F929768();
  sub_24F921FE8();

  v58 = v23;
  if (v15 > 3)
  {
    v32 = v61;
    v33 = v30;
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v34 = 0xE700000000000000;
        v16 = 0x73657461647075;
      }

      else
      {
        v34 = 0xE600000000000000;
        v16 = 0x656461637261;
      }
    }

    else if (v15 == 4)
    {
      v34 = 0xE500000000000000;
      v16 = 0x73656D6167;
    }

    else
    {
      v34 = 0xE600000000000000;
      v16 = 0x686372616573;
    }
  }

  else
  {
    v32 = v61;
    v33 = v30;
    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v34 = 0xE500000000000000;
        v16 = 0x7961646F74;
      }

      else
      {
        v34 = 0xE400000000000000;
        v16 = 1936748641;
      }
    }

    else
    {
      v34 = 0xE500000000000000;
    }
  }

  *&v70 = v16;
  *(&v70 + 1) = v34;
  *&v71 = v28;
  *(&v71 + 1) = v33;
  v72 = 0;
  v73 = 0;
  v56 = v33;

  v57 = sub_24EE1069C(&v70);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = *(v24 + 16);
  v36 = v63;
  v54(v63, v65, v32);
  v37 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v59 = v37 + v5;
  v52 = v28;
  v53 = (v37 + v5) & 0xFFFFFFFFFFFFFFF8;
  v60 = v53 + 8;
  v62 = v24;
  v38 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v51 = *(v24 + 32);
  v51(v40 + v37, v36);
  v41 = v60;
  *(v40 + v59) = v15;
  *(v40 + v41) = v55;
  v42 = (v40 + v38);
  v43 = v56;
  *v42 = v52;
  v42[1] = v43;
  v45 = ObjectType;
  v44 = v65;
  *(v40 + v39) = ObjectType;
  v54(v36, v44, v32);
  v46 = swift_allocObject();
  (v51)(v46 + v37, v36, v32);
  v47 = v60;
  *(v46 + v59) = v15;
  *(v46 + v47) = v45;
  v48 = sub_24E69A5C4(0, &qword_27F222300);
  v49 = sub_24F92BEF8();
  *(&v67 + 1) = v48;
  v68 = MEMORY[0x277D225C0];
  *&v66 = v49;
  sub_24F92A958();

  (*(v62 + 8))(v65, v32);
  return __swift_destroy_boxed_opaque_existential_1(&v66);
}

void sub_24EE131B4(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  sub_24F92C048();
  sub_24F929778();
  v8 = sub_24F929768();
  sub_24F921FE8();

  if (*(v7 + 16))
  {
    v9 = sub_24E76D644(0x7365736143657375, 0xE800000000000000);
    if (v10)
    {
      sub_24E643A9C(*(v7 + 56) + 32 * v9, &v24);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
      if (swift_dynamicCast())
      {
        v12 = v23[0];
        if (qword_27F210780 != -1)
        {
          swift_once();
        }

        __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93FC20;
        sub_24F9283A8();
        if (a3 <= 3u)
        {
          if (a3 > 1u)
          {
            if (a3 == 2)
            {
              v13 = 0xE500000000000000;
              v14 = 0x7961646F74;
            }

            else
            {
              v13 = 0xE400000000000000;
              v14 = 1936748641;
            }
          }

          else if (a3)
          {
            v13 = 0xE800000000000000;
            v14 = 0x64657463656C6573;
          }

          else
          {
            v13 = 0xE500000000000000;
            v14 = 0x7265666E69;
          }
        }

        else if (a3 <= 5u)
        {
          if (a3 == 4)
          {
            v13 = 0xE500000000000000;
            v14 = 0x73656D6167;
          }

          else
          {
            v13 = 0xE600000000000000;
            v14 = 0x686372616573;
          }
        }

        else if (a3 == 6)
        {
          v13 = 0xE700000000000000;
          v14 = 0x73657461647075;
        }

        else if (a3 == 7)
        {
          v13 = 0xE600000000000000;
          v14 = 0x656461637261;
        }

        else
        {
          v13 = 0xE700000000000000;
          v14 = 0x676E6964616F6CLL;
        }

        v26 = MEMORY[0x277D837D0];
        *&v24 = v14;
        *(&v24 + 1) = v13;
        sub_24F928438();
        sub_24E601704(&v24, &qword_27F2129B0);
        sub_24F9283A8();
        v26 = v11;
        *&v24 = v12;

        sub_24F928438();
        sub_24E601704(&v24, &qword_27F2129B0);
        sub_24F92A588();

        v15 = *(v12 + 16);
        if (v15)
        {
          swift_beginAccess();
          v16 = (v12 + 40);
          do
          {
            v18 = *(v16 - 1);
            v19 = *v16;
            __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
            *(swift_allocObject() + 16) = xmmword_24F93A400;

            sub_24F9283A8();
            v23[3] = MEMORY[0x277D837D0];
            v23[0] = v18;
            v23[1] = v19;

            sub_24F928438();
            sub_24E601704(v23, &qword_27F2129B0);
            sub_24F92A588();

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v17 = Strong;
              *&v24 = v18;
              *(&v24 + 1) = v19;
              v25 = a5;
              v26 = a6;
              v27 = 0;
              v28 = 32;

              sub_24EE1069C(&v24);
            }

            else
            {
            }

            v16 += 2;
            --v15;
          }

          while (v15);
        }
      }
    }
  }
}

uint64_t sub_24EE13700(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_24F92C048();
  sub_24F929778();
  v4 = sub_24F929768();
  sub_24F921FE8();

  if (qword_27F210780 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F9283A8();
  if (a3 <= 3u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v5 = 0xE500000000000000;
        v6 = 0x7961646F74;
      }

      else
      {
        v5 = 0xE400000000000000;
        v6 = 1936748641;
      }
    }

    else if (a3)
    {
      v5 = 0xE800000000000000;
      v6 = 0x64657463656C6573;
    }

    else
    {
      v5 = 0xE500000000000000;
      v6 = 0x7265666E69;
    }
  }

  else if (a3 <= 5u)
  {
    if (a3 == 4)
    {
      v5 = 0xE500000000000000;
      v6 = 0x73656D6167;
    }

    else
    {
      v5 = 0xE600000000000000;
      v6 = 0x686372616573;
    }
  }

  else if (a3 == 6)
  {
    v5 = 0xE700000000000000;
    v6 = 0x73657461647075;
  }

  else if (a3 == 7)
  {
    v5 = 0xE600000000000000;
    v6 = 0x656461637261;
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x676E6964616F6CLL;
  }

  v11 = MEMORY[0x277D837D0];
  v10[0] = v6;
  v10[1] = v5;
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0);
  sub_24F9283A8();
  swift_getErrorValue();
  v11 = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928438();
  sub_24E601704(v10, &qword_27F2129B0);
  sub_24F92A5A8();
}

uint64_t sub_24EE13A6C(uint64_t a1)
{
  v36 = a1;
  ObjectType = swift_getObjectType();
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922058();
  __swift_project_value_buffer(v11, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();
  v12 = sub_24F922038();
  v13 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v14 = v1;
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v12, v13, v16, "RecommendationPromise", "", v15, 2u);
    v17 = v15;
    v1 = v14;
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v18 = *(v2 + 16);
  v18(v7, v10, v1);
  sub_24F922098();
  swift_allocObject();
  v33 = sub_24F922088();
  v19 = v2 + 8;
  v20 = *(v2 + 8);
  v34 = v19;
  v20(v10, v1);
  sub_24F922038();
  sub_24F921FF8();
  v21 = sub_24F922038();
  v22 = sub_24F92C058();
  if (sub_24F92C478())
  {
    v23 = swift_slowAlloc();
    v32 = v1;
    v24 = v23;
    *v23 = 0;
    v25 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v21, v22, v25, "Recommendation", "", v24, 2u);
    v26 = v24;
    v1 = v32;
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v18(v7, v4, v1);
  swift_allocObject();
  v27 = sub_24F922088();
  v20(v4, v1);
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v28 = sub_24F92C448();
  MEMORY[0x28223BE20](v28);
  *(&v32 - 6) = v33;
  *(&v32 - 5) = v27;
  v29 = v37;
  *(&v32 - 4) = v36;
  *(&v32 - 3) = v29;
  *(&v32 - 2) = ObjectType;
  v30 = sub_24F92C458();

  return v30;
}

void *sub_24EE13E44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v62 = a6;
  v55 = a5;
  v63 = a4;
  v67 = a3;
  v68 = a2;
  v66 = a1;
  v60 = sub_24F922068();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F922028();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_24F92AC68();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v54 - v13;
  v14 = sub_24F9285B8();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F928388();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v54 - v22;
  sub_24F9298F8();
  v65 = MEMORY[0x25304F260]();
  if (v65)
  {
    v24 = v64;
    sub_24F92C2D8();
    v25 = v24;
    if (v24)
    {
      v64 = 0;
      if (qword_27F210780 != -1)
      {
        swift_once();
      }

      v63 = unk_27F39C9C8;
      v60 = __swift_project_boxed_opaque_existential_1(qword_27F39C9A8, qword_27F39C9C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      *&v70[8] = MEMORY[0x277D837D0];
      *&v69 = 0xD000000000000043;
      *(&v69 + 1) = 0x800000024FA5E980;
      sub_24F928438();
      sub_24E601704(&v69, &qword_27F2129B0);
      swift_getErrorValue();
      v26 = v71;
      v27 = v72;
      *&v70[8] = v72;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v26, v27);
      sub_24F928438();
      sub_24E601704(&v69, &qword_27F2129B0);
      sub_24F92A5A8();

      v53 = swift_allocObject();
      v29 = v67;
      v53[2] = v65;
      v53[3] = v29;
      v30 = v62;
      v53[4] = v24;
      v53[5] = v30;
      v31 = v66;

      v32 = v24;
      v33 = v61;
      v34 = v64;
      sub_24F92AC48();
      if (v34)
      {
      }

      else
      {
        v53 = sub_24F92AC58();

        (*(v56 + 8))(v33, v57);
      }
    }

    else
    {
      (*(v18 + 16))(v20, v23, v17);
      sub_24F9285A8();
      AppStoreAMSEngagementRequest.init(deserializing:using:)(v20, v16, &v69);
      (*(v18 + 8))(v23, v17);
      v73 = v69;
      v74[0] = *v70;
      *(v74 + 9) = *&v70[9];
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      v47 = swift_allocObject();
      v48 = v74[0];
      *(v47 + 16) = v73;
      *(v47 + 32) = v48;
      *(v47 + 41) = *(v74 + 9);
      *(v47 + 64) = v65;
      *(v47 + 72) = v46;
      v49 = v55;
      *(v47 + 80) = v67;
      *(v47 + 88) = v49;
      v50 = v66;

      v51 = v49;
      v52 = v54;
      sub_24F92AC48();
      v53 = sub_24F92AC58();

      (*(v56 + 8))(v52, v57);
    }
  }

  else
  {
    v66 = v10;
    v35 = v59;
    v36 = v60;
    v37 = v58;
    v38 = v8;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v39 = sub_24F922058();
    __swift_project_value_buffer(v39, qword_27F23DAC0);
    v40 = sub_24F922038();
    v41 = v66;
    sub_24F922078();
    LODWORD(v65) = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v35 + 88))(v7, v36) == *MEMORY[0x277D85B00])
      {
        v42 = "[Error] Interval already ended";
      }

      else
      {
        (*(v35 + 8))(v7, v36);
        v42 = "";
      }

      v41 = v66;
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v40, v65, v44, "Recommendation", v42, v43, 2u);
      MEMORY[0x2530542D0](v43, -1, -1);
    }

    (*(v37 + 8))(v41, v38);
    v53 = sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    swift_willThrow();
  }

  sub_24EE147C4();
  return v53;
}

uint64_t sub_24EE147C4()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "RecommendationPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EE14A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v20[0] = a7;
  v20[1] = a4;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a3, v10, v13);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a6;
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20[0];

  v18 = a6;
  sub_24F9298E8();
}

void sub_24EE14BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[0] = a3;
  v19[1] = a2;
  v3 = sub_24F922068();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F922028();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v11 = sub_24F922058();
  __swift_project_value_buffer(v11, qword_27F23DAC0);
  v12 = sub_24F922038();
  sub_24F922078();
  v13 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "success=false";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v12, v13, v16, "Recommendation", v14, v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F93DE60;
  v19[6] = 0;
  v19[7] = 0xE000000000000000;
  sub_24F92C888();
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA5EAD0);
  MEMORY[0x253050C20](0xD000000000000035, 0x800000024FA5EAF0);
  v19[11] = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  sub_24F92CA38();
  MEMORY[0x253050C20](46, 0xE100000000000000);
  *(v17 + 56) = sub_24F92A868();
  __swift_allocate_boxed_opaque_existential_1((v17 + 32));
  sub_24F92A808();
  v18 = sub_24F9281A8();
}

uint64_t sub_24EE15144(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, char *, uint64_t))
{
  v53 = a6;
  v54 = a7;
  v55 = a5;
  v51 = a3;
  v52 = a1;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v50 = v13;
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F9298B8();
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a4 + 40) & 0xE0) == 0x40 && (*(a4 + 40) & 1) == 0)
  {
    v21 = *(v12 + 16);
    v45 = v17;
    v46 = v16;
    v21(v14, v51, v11, v18);
    v22 = *(v12 + 80);
    v47 = a8;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    v48 = a2;
    v49 = v12;
    v25 = v54;
    *(v24 + 16) = v53;
    *(v24 + 24) = v25;
    (*(v49 + 32))(v24 + v23, v14, v11);
    a2 = v48;

    sub_24F9298C8();
    v12 = v49;

    (*(v45 + 8))(v20, v46);
  }

  v26 = sub_24EE1069C(a4);
  v48 = *(v12 + 16);
  v49 = v26;
  v27 = v14;
  v48(v14, a2, v11);
  v28 = *(v12 + 80);
  v29 = v50;
  v30 = swift_allocObject();
  v32 = v52;
  v31 = v53;
  *(v30 + 2) = v55;
  *(v30 + 3) = v31;
  v33 = v54;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  v47 = *(v12 + 32);
  v47(&v30[(v28 + 48) & ~v28], v27, v11);
  v48(v27, v51, v11);
  v34 = (v28 + 40) & ~v28;
  v35 = (v29 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v54;
  v38 = v53;
  *(v36 + 2) = v55;
  *(v36 + 3) = v38;
  *(v36 + 4) = v37;
  v47(&v36[v34], v27, v11);
  v39 = v52;
  *&v36[v35] = v52;
  v40 = sub_24E69A5C4(0, &qword_27F222300);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v41 = v39;
  v42 = sub_24F92BEF8();
  v56[3] = v40;
  v56[4] = MEMORY[0x277D225C0];
  v56[0] = v42;
  sub_24F92A958();

  return __swift_destroy_boxed_opaque_existential_1(v56);
}

void sub_24EE1555C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F922068();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v13 = sub_24F92AAE8();
    __swift_project_value_buffer(v13, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v22 = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v14 = sub_24F922058();
    __swift_project_value_buffer(v14, qword_27F23DAC0);
    v15 = sub_24F922038();
    sub_24F922078();
    v16 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v17 = "success=false";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v15, v16, v19, "Recommendation", v17, v18, 2u);
      MEMORY[0x2530542D0](v18, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_24F93DE60;
    *(v20 + 56) = sub_24F92A868();
    __swift_allocate_boxed_opaque_existential_1((v20 + 32));
    sub_24F92A808();
    v21 = sub_24F9281A8();
  }
}

uint64_t sub_24EE15B90(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v20[1] = a2;
  v11 = sub_24F9281B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = *a1;
  (*(v12 + 16))(v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11, v14);
  v16 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = v15;
  *(v17 + 4) = a4;
  *(v17 + 5) = a5;
  (*(v12 + 32))(&v17[v16], v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);

  v18 = a4;

  sub_24F9298E8();
}

void sub_24EE15D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v9 = sub_24F922068();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  v14 = sub_24F922028();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v37 - v19;
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v21 = sub_24F92AAE8();
    __swift_project_value_buffer(v21, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v39 = v17;
    swift_beginAccess();
    *(a1 + 16) = 1;
    v44 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
    v22 = sub_24F92CF68();
    v23 = [objc_opt_self() valueWithObject:v22 inContext:a3];
    swift_unknownObjectRelease();
    if (v23)
    {
      v40 = v9;
      if (qword_27F211060 != -1)
      {
        swift_once();
      }

      v24 = sub_24F922058();
      v37[1] = __swift_project_value_buffer(v24, qword_27F23DAC0);
      v25 = sub_24F922038();
      sub_24F922078();
      v26 = sub_24F92C048();
      if (sub_24F92C478())
      {

        sub_24F9220A8();
        v38 = a4;

        v27 = v42;
        v28 = v40;
        v29 = v14;
        if ((*(v42 + 88))(v13, v40) == *MEMORY[0x277D85B00])
        {
          v30 = "[Error] Interval already ended";
        }

        else
        {
          (*(v27 + 8))(v13, v28);
          v30 = "success=true";
        }

        v31 = swift_slowAlloc();
        *v31 = 0;
        v32 = sub_24F922008();
        _os_signpost_emit_with_name_impl(&dword_24E5DD000, v25, v26, v32, "Recommendation", v30, v31, 2u);
        MEMORY[0x2530542D0](v31, -1, -1);
        v14 = v29;
      }

      v33 = *(v15 + 8);
      v38 = v15 + 8;
      v33(v20, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_24F93DE60;
      *(v34 + 56) = sub_24E69A5C4(0, &qword_27F21C8E0);
      *(v34 + 32) = v23;
      v35 = v23;
      v36 = sub_24F9281A8();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24EE16558(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[0] = a6;
  v22[1] = a2;
  v10 = sub_24F9281B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a5, v10, v13);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  (*(v11 + 32))(v17 + v15, v14, v10);
  *(v17 + v16) = a1;
  v18 = v22[0];
  *(v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22[0];

  v19 = a1;
  v20 = v18;
  sub_24F9298E8();
}

void sub_24EE166F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v8 = sub_24F922068();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922028();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    if (qword_27F210568 != -1)
    {
      swift_once();
    }

    v16 = sub_24F92AAE8();
    __swift_project_value_buffer(v16, qword_27F39C398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }

  else
  {
    v27[0] = a5;
    v27[1] = a3;
    swift_beginAccess();
    *(a1 + 16) = 1;
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v17 = sub_24F922058();
    __swift_project_value_buffer(v17, qword_27F23DAC0);
    v18 = sub_24F922038();
    sub_24F922078();
    v19 = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      if ((*(v9 + 88))(v11, v8) == *MEMORY[0x277D85B00])
      {
        v20 = "[Error] Interval already ended";
      }

      else
      {
        (*(v9 + 8))(v11, v8);
        v20 = "success=false";
      }

      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v18, v19, v22, "Recommendation", v20, v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F93DE60;
    v24 = sub_24E69A5C4(0, &qword_27F21C8E0);
    v25 = MEMORY[0x253051C90](v28, v27[0]);
    *(v23 + 56) = v24;
    *(v23 + 32) = v25;
    v26 = sub_24F9281A8();
  }
}

void sub_24EE16D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2330E0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  sub_24F92AB98();
  sub_24F92AB88();
  MEMORY[0x2530504F0]();

  v3 = sub_24F92AB18();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &qword_27F2330E0);
  }

  else
  {
    v5 = sub_24F92AB08();
    (*(v4 + 8))(v2, v3);
    v6 = [v5 ams_DSID];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 stringValue];

      v9 = sub_24F92B0D8();
      v11 = v10;

      *&v12 = v9;
      *(&v12 + 1) = v11;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v16 = 0x80;
      sub_24EE1069C(&v12);
    }
  }
}

id AppStoreOnDeviceRecommendationsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppStoreOnDeviceRecommendationsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EE1706C()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EE170A4()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24EE17164(uint64_t *a1)
{
  v3 = *(sub_24F922028() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + (v5 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = *(v1 + v5);

  sub_24EE131B4(a1, v1 + v4, v10, v7, v8, v9);
}

uint64_t sub_24EE17220()
{
  v1 = sub_24F922028();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24EE172B0(uint64_t a1)
{
  v3 = *(sub_24F922028() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + v4 + *(v3 + 64));

  return sub_24EE13700(a1, v1 + v4, v5);
}

uint64_t sub_24EE17408()
{

  return swift_deallocObject();
}

uint64_t sub_24EE17480()
{
  sub_24EA4FC98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_24EE17520(uint64_t *a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_24EE15B90(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24EE17598()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EE17680(void *a1)
{
  v3 = *(sub_24F9281B8() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24EE16558(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_24EE17724()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EE177F0()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_24EE1555C(v2, v3, v4);
}

uint64_t sub_24EE17854()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EE1794C()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  sub_24EE166F0(v6, v7, v0 + v2, v4, v5);
}

uint64_t objectdestroy_24Tm(void (*a1)(void))
{
  v3 = sub_24F9281B8();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);

  a1(*(v1 + 24));

  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

void sub_24EE17AEC()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_24EE15D14(v2, v3, v4, v5, v6);
}

uint64_t sub_24EE17B54()
{
  v1 = sub_24F9281B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24EE17C3C()
{
  v1 = *(sub_24F9281B8() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24EE14BE0(v3, v0 + v2, v4);
}

uint64_t sub_24EE17CD8()
{
  sub_24EA4FC98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_24EE17D78(uint64_t *a1, uint64_t *a2, void *a3)
{
  v4 = *a1;
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230D90);
  v6 = *(v5 + *a3);
  sub_24E953AD0(v4);
  v7 = sub_24F92AE28();

  v8 = [v6 enqueueData_];

  return sub_24F92A9D8();
}

uint64_t sub_24EE17E30()
{

  return swift_deallocObject();
}

unint64_t sub_24EE17E8C()
{
  result = qword_27F230D98;
  if (!qword_27F230D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230D90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230D98);
  }

  return result;
}

unint64_t sub_24EE17F24()
{
  result = qword_27F230DA0;
  if (!qword_27F230DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DA0);
  }

  return result;
}

uint64_t sub_24EE17FB4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_24F922028() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *a1;

  return a2(v7, v2 + 16, v2 + v5, v6);
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_24F922028();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 57) & ~*(v2 + 80);
  sub_24EA4FC98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24EE18164(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_24F922028() - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + 16, v2 + v5, v6);
}

__n128 SegmentedSearchResultsPageIntent.init(with:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD000000000000020;
  *(a2 + 8) = 0x800000024F9A3F10;
  v2 = *(a1 + 144);
  *(a2 + 144) = *(a1 + 128);
  *(a2 + 160) = v2;
  *(a2 + 176) = *(a1 + 160);
  v3 = *(a1 + 80);
  *(a2 + 80) = *(a1 + 64);
  *(a2 + 96) = v3;
  v4 = *(a1 + 112);
  *(a2 + 112) = *(a1 + 96);
  *(a2 + 128) = v4;
  v5 = *(a1 + 16);
  *(a2 + 16) = *a1;
  *(a2 + 32) = v5;
  result = *(a1 + 48);
  *(a2 + 48) = *(a1 + 32);
  *(a2 + 64) = result;
  return result;
}

uint64_t SegmentedSearchResultsPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SegmentedSearchResultsPageIntent.requestDescriptor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[10];
  v25 = v1[9];
  v26 = v3;
  v4 = v1[10];
  v27 = v1[11];
  v5 = v1[4];
  v6 = v1[6];
  v21 = v1[5];
  v7 = v21;
  v22 = v6;
  v8 = v1[6];
  v9 = v1[8];
  v23 = v1[7];
  v10 = v23;
  v24 = v9;
  v11 = v1[2];
  v18[0] = v1[1];
  v18[1] = v11;
  v12 = v1[4];
  v14 = v1[1];
  v13 = v1[2];
  v19 = v1[3];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[11];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_24E7B6680(v18, &v17);
}

JSValue __swiftcall SegmentedSearchResultsPageIntent.makeValue(in:)(JSContext in)
{
  v2 = v1[10];
  v21[8] = v1[9];
  v21[9] = v2;
  v21[10] = v1[11];
  v3 = v1[6];
  v21[4] = v1[5];
  v21[5] = v3;
  v4 = v1[8];
  v21[6] = v1[7];
  v21[7] = v4;
  v5 = v1[2];
  v21[0] = v1[1];
  v21[1] = v5;
  v6 = v1[4];
  v21[2] = v1[3];
  v21[3] = v6;
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v17 = v1[9];
    v18 = v1[10];
    v19 = v1[11];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v1[7];
    v16 = v1[8];
    v9 = v1[1];
    v10 = v1[2];
    v11 = v1[3];
    v12 = v1[4];
    sub_24E7B6680(v21, v20);
    sub_24E7B6474();
    sub_24F929FF8();
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    sub_24EB38BC8(v20);
    sub_24F92C328();
    return isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24EE184FC()
{
  result = qword_27F230DA8;
  if (!qword_27F230DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DA8);
  }

  return result;
}

unint64_t sub_24EE18554()
{
  result = qword_27F230DB0;
  if (!qword_27F230DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DB0);
  }

  return result;
}

unint64_t sub_24EE185AC()
{
  result = qword_27F230DB8;
  if (!qword_27F230DB8)
  {
    type metadata accessor for SegmentedSearchResultsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DB8);
  }

  return result;
}

id sub_24EE18604(uint64_t a1)
{
  v2 = v1[10];
  v21[8] = v1[9];
  v21[9] = v2;
  v21[10] = v1[11];
  v3 = v1[6];
  v21[4] = v1[5];
  v21[5] = v3;
  v4 = v1[8];
  v21[6] = v1[7];
  v21[7] = v4;
  v5 = v1[2];
  v21[0] = v1[1];
  v21[1] = v5;
  v6 = v1[4];
  v21[2] = v1[3];
  v21[3] = v6;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    v17 = v1[9];
    v18 = v1[10];
    v19 = v1[11];
    v13 = v1[5];
    v14 = v1[6];
    v15 = v1[7];
    v16 = v1[8];
    v9 = v1[1];
    v10 = v1[2];
    v11 = v1[3];
    v12 = v1[4];
    sub_24E7B6680(v21, v20);
    sub_24E7B6474();
    sub_24F929FF8();
    v20[8] = v17;
    v20[9] = v18;
    v20[10] = v19;
    v20[4] = v13;
    v20[5] = v14;
    v20[6] = v15;
    v20[7] = v16;
    v20[0] = v9;
    v20[1] = v10;
    v20[2] = v11;
    v20[3] = v12;
    sub_24EB38BC8(v20);
    sub_24F92C328();
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EE18768()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  sub_24EE18C20(&qword_27F230DC8);
  return sub_24F9230C8();
}

uint64_t DismissDashboardNotifier.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  swift_allocObject();
  *(v0 + 16) = sub_24F922FC8();
  return v0;
}

uint64_t DismissDashboardNotifier.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  swift_allocObject();
  *(v0 + 16) = sub_24F922FC8();
  return v0;
}

uint64_t sub_24EE1888C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v1;
  sub_24EA998B8(0, 0, v4, &unk_24F9957A0, v7);
}

uint64_t sub_24EE189B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24F92B7F8();
  *(v4 + 24) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EE18A48, v6, v5);
}

uint64_t sub_24EE18A48()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0);
  sub_24EE18C20(&qword_27F230DD0);
  sub_24F923048();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EE18AF0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t DismissDashboardNotifier.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24EE18C20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230DC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AdTransparencyAction.adTransparencyData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData);

  return v1;
}

char *AdTransparencyAction.__allocating_init(title:adTransparencyData:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v17 = sub_24F928AD8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v24 = sub_24F91F668();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v18 + 8))(a5, v17);
  sub_24E601704(v38, &qword_27F235830);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *AdTransparencyAction.init(title:adTransparencyData:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_24F91F6B8();
  v30 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830);
  }

  (*(v17 + 8))(a5, v16);
  sub_24E601704(v41, &qword_27F235830);
  v26 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t AdTransparencyAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v29 = *v3;
  v5 = sub_24F9285B8();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  v36 = a1;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v37 = v7;
  v17(v13, v7);
  if (v16)
  {
    v29 = v17;
    v18 = (v32 + OBJC_IVAR____TtC12GameStoreKit20AdTransparencyAction_adTransparencyData);
    *v18 = v14;
    v18[1] = v16;
    v19 = v36;
    (*(v8 + 16))(v11, v36, v37);
    v21 = v33;
    v20 = v34;
    v22 = v30;
    v23 = v35;
    (*(v33 + 16))(v30, v35, v34);
    v24 = v31;
    v25 = Action.init(deserializing:using:)(v11, v22);
    if (!v24)
    {
      v22 = v25;
    }

    (*(v21 + 8))(v23, v20);
    v29(v19, v37);
  }

  else
  {
    v26 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v27 = 0xD000000000000012;
    v27[1] = 0x800000024FA5EFB0;
    v22 = v29;
    v27[2] = v29;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D22530], v26);
    swift_willThrow();
    (*(v33 + 8))(v35, v34);
    v17(v36, v37);
    swift_deallocPartialClassInstance();
  }

  return v22;
}

uint64_t AdTransparencyAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return v0;
}

uint64_t AdTransparencyAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdTransparencyAction()
{
  result = qword_27F230DD8;
  if (!qword_27F230DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActionRunner.Origin.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EE19A9C(uint64_t a1, char a2, uint64_t a3, char *a4, uint64_t a5)
{
  v7 = v5;
  v26 = a5;
  v12 = sub_24F91F648();
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F927E38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *a4;
  sub_24E74EC40();
  *v18 = sub_24F92BEF8();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  LOBYTE(a4) = sub_24F927E68();
  v21 = *(v16 + 8);
  v20 = v16 + 8;
  v21(v18, v15);
  if ((a4 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v20 = v26;
  if (a2 & 1) != 0 && ((*(*v7 + 112))(a1))
  {
    sub_24F928AC8();
    (*(*v7 + 104))();
  }

  if ((v19 & 1) == 0)
  {
    sub_24F91F638();
    sub_24F91F5E8();
    v6 = v22;
    (*(v24 + 8))(v14, v25);
    if (qword_27F210788 == -1)
    {
LABEL_7:
      swift_beginAccess();
      qword_27F230F98 = v6;
      sub_24F929198();
      return (*(*v7 + 96))(a1, a3, v20);
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  return (*(*v7 + 96))(a1, a3, v20);
}

unint64_t sub_24EE19DB4()
{
  result = qword_27F230DE8;
  if (!qword_27F230DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DE8);
  }

  return result;
}

void static PresentationSizing<>.fixedSizeMedium.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4082C00000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4085400000000000;
  *(a1 + 24) = 0;
}

void static PresentationSizing<>.fixedSizeLarge.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4089A00000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4087C00000000000;
  *(a1 + 24) = 0;
}

void static PresentationSizing<>.onboarding.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4083800000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4087500000000000;
  *(a1 + 24) = 0;
}

void static PresentationSizing<>.playTogether.getter(uint64_t a1@<X8>)
{
  *a1 = 0x4080E00000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x4088300000000000;
  *(a1 + 24) = 0;
}

uint64_t sub_24EE1A3AC()
{
  if (*v0)
  {
    return 0x746867696568;
  }

  else
  {
    return 0x6874646977;
  }
}

uint64_t sub_24EE1A3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24EE1A4B4(uint64_t a1)
{
  v2 = sub_24EE1A700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE1A4F0(uint64_t a1)
{
  v2 = sub_24EE1A700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FixedPresentationSizing.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v11[0] = v1[2];
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1A700();
  sub_24F92D128();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  sub_24E620F7C();
  v9 = v11[1];
  sub_24F92CCF8();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v14;
    v15 = 1;
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EE1A700()
{
  result = qword_27F230DF8;
  if (!qword_27F230DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230DF8);
  }

  return result;
}

uint64_t FixedPresentationSizing.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230E00);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1A700();
  sub_24F92D108();
  if (!v2)
  {
    v16 = 0;
    sub_24E620E90();
    sub_24F92CC18();
    v9 = v13;
    v15 = v14;
    v16 = 1;
    sub_24F92CC18();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    v11 = v14;
    *a2 = v9;
    *(a2 + 8) = v15;
    *(a2 + 16) = v10;
    *(a2 + 24) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24EE1A9CC()
{
  result = qword_27F230E08;
  if (!qword_27F230E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E08);
  }

  return result;
}

unint64_t sub_24EE1AA24()
{
  result = qword_27F230E10;
  if (!qword_27F230E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E10);
  }

  return result;
}

unint64_t sub_24EE1AA7C()
{
  result = qword_27F230E18;
  if (!qword_27F230E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E18);
  }

  return result;
}

uint64_t OfferItemDetailPage.learnMoreTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);

  return v1;
}

uint64_t OfferItemDetailPage.__allocating_init(offerItem:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:learnMoreTitle:additionalInfo:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v75 = a8;
  v76 = a4;
  v72 = a5;
  v73 = a7;
  LODWORD(v77) = a6;
  v81 = a15;
  v82 = a14;
  v83 = a13;
  v84 = a12;
  v79 = a3;
  v80 = a11;
  v85 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - v20;
  MEMORY[0x28223BE20](v22);
  v78 = &v64 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v64 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v64 - v32;
  v34 = swift_allocObject();
  v74 = a1;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem) = a1;
  v71 = a2;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork) = a2;
  v35 = *v72;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video) = v79;
  v36 = (v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);
  v37 = v75;
  *v36 = v73;
  v36[1] = v37;
  v75 = a9;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_additionalInfo) = a9;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v35;
  *(v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v77;
  sub_24E60169C(v84, v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v83, v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v82, v34 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
  v73 = v28;
  v38 = *(v28 + 16);
  v38(v33, v85, v27);
  sub_24E60169C(v81, v26, &qword_27F2218B0);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 2;
  v38(v30, v33, v27);
  v77 = v26;
  v39 = v26;
  v40 = v78;
  sub_24E60169C(v39, v78, &qword_27F2218B0);
  *(v34 + 16) = 0;
  v38((v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v30, v27);
  *(v34 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v80;
  sub_24E60169C(v40, v21, &qword_27F2218B0);
  v41 = sub_24F9285B8();
  v70 = *(v41 - 8);
  v42 = *(v70 + 48);
  v43 = v21;
  v44 = v21;
  v45 = v41;
  if (v42(v44, 1, v41) == 1)
  {

    sub_24E601704(v81, &qword_27F2218B0);
    sub_24E601704(v82, &qword_27F223CE8);
    sub_24E601704(v83, &qword_27F223CE8);
    sub_24E601704(v84, &qword_27F223CE8);
    v46 = *(v73 + 8);
    v46(v85, v27);
    sub_24E601704(v40, &qword_27F2218B0);
    v46(v30, v27);
    sub_24E601704(v77, &qword_27F2218B0);
    v46(v33, v27);
    v47 = v43;
  }

  else
  {
    v65 = v42;
    v72 = v43;
    v66 = v30;
    v67 = v27;
    v48 = v73;
    v68 = v33;
    v49 = qword_27F2105F0;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v50, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v51 = v86;
    v52 = v70;
    if (v86)
    {
    }

    v53 = *(v52 + 8);
    v53(v72, v45);
    v54 = v78;
    if (!v51)
    {

      sub_24E601704(v81, &qword_27F2218B0);
      sub_24E601704(v82, &qword_27F223CE8);
      sub_24E601704(v83, &qword_27F223CE8);
      sub_24E601704(v84, &qword_27F223CE8);
      v58 = *(v48 + 8);
      v59 = v67;
      v58(v85, v67);
      sub_24E601704(v54, &qword_27F2218B0);
      v58(v66, v59);
      sub_24E601704(v77, &qword_27F2218B0);
      v58(v68, v59);
      return v34;
    }

    v55 = v69;
    sub_24E60169C(v78, v69, &qword_27F2218B0);
    if (v65(v55, 1, v45) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v81, &qword_27F2218B0);
      v60 = v45;
      sub_24E601704(v82, &qword_27F223CE8);
      sub_24E601704(v83, &qword_27F223CE8);
      sub_24E601704(v84, &qword_27F223CE8);
      v61 = *(v48 + 8);
      v62 = v67;
      v61(v85, v67);
      sub_24E601704(v54, &qword_27F2218B0);
      v61(v66, v62);
      sub_24E601704(v77, &qword_27F2218B0);
      v61(v68, v62);
      v53(v69, v60);
      return v34;
    }

    sub_24E601704(v81, &qword_27F2218B0);
    sub_24E601704(v82, &qword_27F223CE8);
    sub_24E601704(v83, &qword_27F223CE8);
    sub_24E601704(v84, &qword_27F223CE8);
    v56 = *(v48 + 8);
    v57 = v67;
    v56(v85, v67);
    sub_24E601704(v54, &qword_27F2218B0);
    v56(v66, v57);
    sub_24E601704(v77, &qword_27F2218B0);
    v56(v68, v57);
    v47 = v55;
  }

  sub_24E601704(v47, &qword_27F2218B0);
  return v34;
}

char *OfferItemDetailPage.init(offerItem:artwork:video:shareAction:mediaOverlayStyle:includeBorderInDarkMode:learnMoreTitle:additionalInfo:pageMetrics:pageRenderEvent:learnMoreActionMetrics:backButtonActionMetrics:closeButtonActionMetrics:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v69 = a4;
  v70 = a8;
  v68 = a7;
  LODWORD(v71) = a6;
  v66 = a5;
  v74 = a3;
  v75 = a15;
  v76 = a14;
  v77 = a13;
  v72 = a11;
  v78 = a12;
  v79 = a10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0);
  MEMORY[0x28223BE20](v18 - 8);
  v63 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v60 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  v28 = sub_24F928818();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v60 - v33;
  v64 = a1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem) = a1;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork) = a2;
  v35 = *v66;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video) = v74;
  v36 = (v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);
  v37 = v70;
  *v36 = v68;
  v36[1] = v37;
  v67 = a2;
  v68 = a9;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_additionalInfo) = a9;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v35;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v71;
  sub_24E60169C(v78, v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v77, v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  sub_24E60169C(v76, v15 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
  v65 = v29;
  v38 = *(v29 + 16);
  v38(v34, v79, v28);
  sub_24E60169C(v75, v27, &qword_27F2218B0);
  *(v15 + OBJC_IVAR____TtC12GameStoreKit22AppPromotionDetailPage_promotionType) = 2;
  v38(v31, v34, v28);
  v71 = v27;
  sub_24E60169C(v27, v24, &qword_27F2218B0);
  *(v15 + 16) = 0;
  v70 = v31;
  v38((v15 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v31, v28);
  v66 = v15;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v72;
  v39 = v24;
  v40 = v73;
  sub_24E60169C(v24, v73, &qword_27F2218B0);
  v41 = sub_24F9285B8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  if (v43(v40, 1, v41) == 1)
  {

    sub_24E601704(v75, &qword_27F2218B0);
    sub_24E601704(v76, &qword_27F223CE8);
    sub_24E601704(v77, &qword_27F223CE8);
    sub_24E601704(v78, &qword_27F223CE8);
    v44 = *(v65 + 8);
    v44(v79, v28);
    sub_24E601704(v39, &qword_27F2218B0);
    v44(v70, v28);
    sub_24E601704(v71, &qword_27F2218B0);
    v44(v34, v28);
    v45 = v40;
  }

  else
  {
    v46 = v39;
    v61 = v28;
    v62 = v34;
    v47 = v65;
    v48 = qword_27F2105F0;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578);
    __swift_project_value_buffer(v49, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570);
    sub_24F9285C8();
    v50 = v80;
    if (v80)
    {
    }

    v51 = *(v42 + 8);
    v51(v73, v41);
    if (!v50)
    {

      sub_24E601704(v75, &qword_27F2218B0);
      sub_24E601704(v76, &qword_27F223CE8);
      sub_24E601704(v77, &qword_27F223CE8);
      sub_24E601704(v78, &qword_27F223CE8);
      v55 = *(v47 + 8);
      v56 = v61;
      v55(v79, v61);
      sub_24E601704(v46, &qword_27F2218B0);
      v55(v70, v56);
      sub_24E601704(v71, &qword_27F2218B0);
      v55(v62, v56);
      return v66;
    }

    v52 = v63;
    sub_24E60169C(v46, v63, &qword_27F2218B0);
    if (v43(v52, 1, v41) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v75, &qword_27F2218B0);
      sub_24E601704(v76, &qword_27F223CE8);
      sub_24E601704(v77, &qword_27F223CE8);
      sub_24E601704(v78, &qword_27F223CE8);
      v57 = *(v47 + 8);
      v58 = v61;
      v57(v79, v61);
      sub_24E601704(v46, &qword_27F2218B0);
      v57(v70, v58);
      sub_24E601704(v71, &qword_27F2218B0);
      v57(v62, v58);
      v51(v52, v41);
      return v66;
    }

    sub_24E601704(v75, &qword_27F2218B0);
    sub_24E601704(v76, &qword_27F223CE8);
    sub_24E601704(v77, &qword_27F223CE8);
    sub_24E601704(v78, &qword_27F223CE8);
    v53 = *(v47 + 8);
    v54 = v61;
    v53(v79, v61);
    sub_24E601704(v46, &qword_27F2218B0);
    v53(v70, v54);
    sub_24E601704(v71, &qword_27F2218B0);
    v53(v62, v54);
    v45 = v52;
  }

  sub_24E601704(v45, &qword_27F2218B0);
  return v66;
}

uint64_t OfferItemDetailPage.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v96 = v4;
  v7 = *v4;
  v81 = v3;
  v82 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = v73 - v9;
  v10 = sub_24F9285B8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v80 = v73 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v73 - v16;
  v18 = sub_24F928388();
  v89 = *(v18 - 8);
  v90 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v74 = v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v79 = v73 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v84 = v73 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v83 = v73 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = v73 - v27;
  type metadata accessor for OfferItem();
  v91 = a1;
  sub_24F928398();
  v30 = v11 + 16;
  v29 = *(v11 + 16);
  v94 = a2;
  v95 = v10;
  v92 = v29;
  (v29)(v17, a2, v10);
  sub_24EE1CB84(&qword_27F230E20, type metadata accessor for OfferItem);
  sub_24F929548();
  if (!v97)
  {
    v68 = sub_24F92AC38();
    sub_24EE1CB84(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v69 = 0x657449726566666FLL;
    v69[1] = 0xE90000000000006DLL;
    v69[2] = v82;
    (*(*(v68 - 8) + 104))(v69, *MEMORY[0x277D22530], v68);
    swift_willThrow();
    (*(v11 + 8))(v94, v95);
    (*(v89 + 8))(v91, v90);
LABEL_10:
    type metadata accessor for OfferItemDetailPage();
    swift_deallocPartialClassInstance();
    return v30;
  }

  v78 = v11;
  v88 = v97;
  type metadata accessor for Artwork();
  sub_24F928398();
  v31 = v94;
  v93 = v11 + 16;
  v32 = v95;
  v33 = v92;
  (v92)(v17, v94);
  sub_24EE1CB84(&qword_27F219660, type metadata accessor for Artwork);
  sub_24F929548();
  v34 = v97;
  type metadata accessor for Video();
  sub_24F928398();
  v33(v17, v31, v32);
  sub_24EE1CB84(&qword_27F221590, type metadata accessor for Video);
  sub_24F929548();
  v73[1] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem;
  v35 = v96;
  *(v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_offerItem) = v88;
  v36 = v97;
  v73[2] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_artwork) = v34;
  v73[3] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_video) = v36;
  v76 = v36;

  v77 = v34;

  v37 = v91;
  sub_24F928398();
  sub_24EA303C8();
  sub_24F928208();
  v38 = v90;
  v39 = v89 + 8;
  v40 = *(v89 + 8);
  v40(v28, v90);
  v41 = v40;
  v86 = v40;
  v87 = v39;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_mediaOverlayStyle) = v97;
  v42 = v83;
  sub_24F928398();
  v43 = sub_24F928278();
  v41(v42, v38);
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_includeBorderInDarkMode) = v43 & 1;
  sub_24F928AD8();
  v44 = v37;
  sub_24F928398();
  v45 = v17;
  v46 = v17;
  v48 = v94;
  v47 = v95;
  v49 = v92;
  v92(v46, v94, v95);
  v50 = v85;
  sub_24F929548();
  v83 = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics;
  sub_24EB29268(v50, v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics);
  sub_24F928398();
  v49(v45, v48, v47);
  sub_24F929548();
  v73[0] = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics;
  sub_24EB29268(v50, v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics);
  sub_24F928398();
  v49(v45, v48, v47);
  sub_24F929548();
  v51 = OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics;
  sub_24EB29268(v50, v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics);
  v52 = v84;
  sub_24F928398();
  v53 = sub_24F928348();
  v55 = v54;
  v56 = v90;
  v86(v52);
  v57 = v44;
  if (!v55)
  {
    v70 = sub_24F92AC38();
    sub_24EE1CB84(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    strcpy(v71, "learnMoreTitle");
    v71[15] = -18;
    *(v71 + 2) = v82;
    (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D22530], v70);
    swift_willThrow();
    v61 = v94;
    goto LABEL_7;
  }

  v58 = (v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreTitle);
  *v58 = v53;
  v58[1] = v55;
  v59 = v79;
  sub_24F928398();
  v60 = v80;
  v61 = v94;
  v92(v80, v94, v95);
  v62 = v81;
  v63 = sub_24F0151C0(v59, v60);
  if (v62)
  {
LABEL_7:

    (*(v78 + 8))(v61, v95);
    (v86)(v57, v56);

    if (v55)
    {
    }

    v30 = v96;
    sub_24E601704(&v83[v96], &qword_27F223CE8);
    sub_24E601704(v30 + v73[0], &qword_27F223CE8);
    sub_24E601704(v30 + v51, &qword_27F223CE8);
    goto LABEL_10;
  }

  *(v96 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_additionalInfo) = v63;
  v64 = v74;
  (*(v89 + 16))(v74, v57, v56);
  v65 = v75;
  v66 = v95;
  v92(v75, v61, v95);
  v67 = v61;
  v30 = AppPromotionDetailPage.init(deserializing:using:)(v64, v65);

  (*(v78 + 8))(v67, v66);
  (v86)(v57, v56);
  return v30;
}

uint64_t type metadata accessor for OfferItemDetailPage()
{
  result = qword_27F230E28;
  if (!qword_27F230E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE1CB84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24EE1CBFC()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
}

uint64_t OfferItemDetailPage.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_learnMoreActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_backButtonActionMetrics, &qword_27F223CE8);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19OfferItemDetailPage_closeButtonActionMetrics, &qword_27F223CE8);
  return v0;
}

uint64_t OfferItemDetailPage.__deallocating_deinit()
{
  OfferItemDetailPage.deinit();

  return swift_deallocClassInstance();
}

void sub_24EE1CE60()
{
  sub_24EB293E8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24EE1CFE4()
{
  result = type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24EE1D184@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230E58);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ContinuePlayingDataIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1DA3C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_24E61C064(&qword_27F213E38);
  v14 = v19;
  sub_24F92CC68();
  sub_24EE1DB44(v20, v13, type metadata accessor for Player);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_24F92CC58();
  v21 = 2;
  v15 = sub_24F92CC58();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15;
  sub_24EE1DBAC(v13, v17, type metadata accessor for ContinuePlayingDataIntent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EE1DA90(v13, type metadata accessor for ContinuePlayingDataIntent);
}

uint64_t sub_24EE1D4C4()
{
  v1 = 0x65674178616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6C7573655278616DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616C70;
  }
}

uint64_t sub_24EE1D51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EE1DE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EE1D544(uint64_t a1)
{
  v2 = sub_24EE1DA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE1D580(uint64_t a1)
{
  v2 = sub_24EE1DA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EE1D5F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230E68);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ContinuePlayingPreloadIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE1DAF0();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24EE1DB44(v13, v11, type metadata accessor for Player);
    sub_24EE1DB44(v11, v12, type metadata accessor for ContinuePlayingPreloadIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EE1D854(uint64_t a1)
{
  v2 = sub_24EE1DAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE1D890(uint64_t a1)
{
  v2 = sub_24EE1DAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE1D904@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24EE1DBAC(v2, boxed_opaque_existential_1, type metadata accessor for Player);
  v6 = sub_24E607D0C(inited);
  swift_setDeallocating();
  sub_24ED2CD6C(inited + 32);
  v7 = sub_24E80FFAC(v6);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24EE1DA3C()
{
  result = qword_27F230E60;
  if (!qword_27F230E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E60);
  }

  return result;
}

uint64_t sub_24EE1DA90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EE1DAF0()
{
  result = qword_27F230E70;
  if (!qword_27F230E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E70);
  }

  return result;
}

uint64_t sub_24EE1DB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EE1DBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EE1DC38()
{
  result = qword_27F230E78;
  if (!qword_27F230E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E78);
  }

  return result;
}

unint64_t sub_24EE1DC90()
{
  result = qword_27F230E80;
  if (!qword_27F230E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E80);
  }

  return result;
}

unint64_t sub_24EE1DCE8()
{
  result = qword_27F230E88;
  if (!qword_27F230E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E88);
  }

  return result;
}

unint64_t sub_24EE1DD40()
{
  result = qword_27F230E90;
  if (!qword_27F230E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E90);
  }

  return result;
}

unint64_t sub_24EE1DD98()
{
  result = qword_27F230E98;
  if (!qword_27F230E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230E98);
  }

  return result;
}

unint64_t sub_24EE1DDF0()
{
  result = qword_27F230EA0;
  if (!qword_27F230EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EA0);
  }

  return result;
}

uint64_t sub_24EE1DE44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65674178616DLL && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C7573655278616DLL && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EE1DF70(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
      v4 = sub_24F92B618();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_24E60169C(v3, v4 + v6, &qword_27F213800);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_24E60169C(v3, v9, &qword_27F213800);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_24EE1E878(v3);
    return v4;
  }

  return result;
}

uint64_t static VersionStringUtil.isShortVersionString(_:atLeast:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24E600AEC();
  v6 = sub_24F92C4E8();
  v52 = a4;
  v53 = v6;
  v51 = a3;

  v7 = sub_24F92C4E8();
  v8 = *(v6 + 16);

  v9 = *(v7 + 16);

  if (v8 != v9)
  {
    v11 = v8 - v9 >= 0 ? v8 - v9 : v9 - v8;
    v12 = *(v6 + 16);
    v13 = *(v7 + 16);
    v14 = sub_24EE1E658(0x30, 0xE100000000000000, v11);
    result = sub_24EA0A4AC(v14);
    if (v13 >= v12)
    {
      v6 = v53;
    }
  }

  v15 = 0;
  v16 = *(v6 + 16);
  while (1)
  {
    if (v15 == v16)
    {
LABEL_80:

      return 1;
    }

    if (v15 >= *(v6 + 16))
    {
      break;
    }

    v17 = *(v7 + 16);
    if (v15 == v17)
    {
      goto LABEL_80;
    }

    if (v15 >= v17)
    {
      goto LABEL_84;
    }

    v18 = (v6 + 32 + 16 * v15);
    v19 = *v18;
    v20 = v18[1];
    v21 = HIBYTE(v20) & 0xF;
    v22 = v19 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v20) & 0xF;
    }

    else
    {
      v23 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_82;
    }

    v24 = (v7 + 32 + 16 * v15);
    v26 = *v24;
    v25 = v24[1];
    if ((v20 & 0x1000000000000000) == 0)
    {
      if ((v20 & 0x2000000000000000) != 0)
      {
        v51 = v19;
        v52 = v20 & 0xFFFFFFFFFFFFFFLL;
        if (v19 == 43)
        {
          if (!v21)
          {
            goto LABEL_85;
          }

          if (--v21)
          {
            v28 = 0;
            v38 = &v51 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v19 == 45)
        {
          if (!v21)
          {
            goto LABEL_86;
          }

          if (--v21)
          {
            v28 = 0;
            v32 = &v51 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v34 - v33;
              if (__OFSUB__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v21)
        {
          v28 = 0;
          v43 = &v51;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v21)
            {
              goto LABEL_73;
            }
          }
        }
      }

      else
      {
        if ((v19 & 0x1000000000000000) != 0)
        {
          result = (v20 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          result = sub_24F92C928();
        }

        v27 = *result;
        if (v27 == 43)
        {
          if (v22 < 1)
          {
            goto LABEL_87;
          }

          v21 = v22 - 1;
          if (v22 != 1)
          {
            v28 = 0;
            if (!result)
            {
              goto LABEL_64;
            }

            v35 = (result + 1);
            while (1)
            {
              v36 = *v35 - 48;
              if (v36 > 9)
              {
                break;
              }

              v37 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v37 + v36;
              if (__OFADD__(v37, v36))
              {
                break;
              }

              ++v35;
              if (!--v21)
              {
                goto LABEL_73;
              }
            }
          }
        }

        else if (v27 == 45)
        {
          if (v22 < 1)
          {
            goto LABEL_88;
          }

          v21 = v22 - 1;
          if (v22 != 1)
          {
            v28 = 0;
            if (result)
            {
              v29 = (result + 1);
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_72;
                }

                v31 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  goto LABEL_72;
                }

                v28 = v31 - v30;
                if (__OFSUB__(v31, v30))
                {
                  goto LABEL_72;
                }

                ++v29;
                if (!--v21)
                {
                  goto LABEL_73;
                }
              }
            }

LABEL_64:
            LOBYTE(v21) = 0;
LABEL_73:
            v46 = v21;

            if (v46)
            {
              goto LABEL_81;
            }

            goto LABEL_74;
          }
        }

        else
        {
          if (!v22)
          {
            goto LABEL_72;
          }

          v28 = 0;
          if (!result)
          {
            goto LABEL_64;
          }

          while (1)
          {
            v41 = *result - 48;
            if (v41 > 9)
            {
              break;
            }

            v42 = 10 * v28;
            if ((v28 * 10) >> 64 != (10 * v28) >> 63)
            {
              break;
            }

            v28 = v42 + v41;
            if (__OFADD__(v42, v41))
            {
              break;
            }

            ++result;
            if (!--v22)
            {
              goto LABEL_64;
            }
          }
        }
      }

LABEL_72:
      v28 = 0;
      LOBYTE(v21) = 1;
      goto LABEL_73;
    }

    v28 = sub_24F2D9F38(v19, v20, 10);
    v50 = v48;

    if (v50)
    {
LABEL_81:

LABEL_82:

      return 0;
    }

LABEL_74:
    result = sub_24E9EEBE0(v26, v25);
    if (v47)
    {
      goto LABEL_82;
    }

    ++v15;
    if (v28 != result)
    {
      v49 = result;

      return v28 >= v49;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

uint64_t sub_24EE1E554(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213908);
    v4 = sub_24F92B618();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 88;
      do
      {
        sub_24E60169C(v3, v14, &qword_27F213908);
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_24E60169C(v3, v14, &qword_27F213908);
    return v5;
  }

  return result;
}

void *sub_24EE1E658(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_24F92B618();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

void *sub_24EE1E704(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    sub_24EE1E790();
    v4 = sub_24F92B618();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

unint64_t sub_24EE1E790()
{
  result = qword_27F225108;
  if (!qword_27F225108)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F225108);
  }

  return result;
}

uint64_t sub_24EE1E7DC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EA8);
    v4 = sub_24F92B618();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_24EE1E878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EE1E90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a2;
  v33 = a1;
  v37 = a5;
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_24F924038();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  v20 = sub_24F924E38();
  v35 = *(v20 - 8);
  v36 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  if (v33)
  {
    sub_24E615E00(v32, v40);
    MEMORY[0x25304C420](v40, a3, &type metadata for HeroRubberBandEffectModifier, a4);
    sub_24EE1F9C0(v40);
    v23 = sub_24E63E080();
    v38 = a4;
    v39 = v23;
    WitnessTable = swift_getWitnessTable();
    sub_24E7896B8(v16, v13, WitnessTable);
    v25 = *(v14 + 8);
    v25(v16, v13);
    sub_24E7896B8(v19, v13, WitnessTable);
    sub_24ECCCBA0(v16, v13);
    v25(v16, v13);
    v25(v19, v13);
  }

  else
  {
    sub_24E7896B8(v34, a3, a4);
    sub_24E7896B8(v12, a3, a4);
    v26 = sub_24E63E080();
    v45 = a4;
    v46 = v26;
    swift_getWitnessTable();
    sub_24ECCCC98(v9, v13, a3);
    v27 = *(v7 + 8);
    v27(v9, a3);
    v27(v12, a3);
  }

  v28 = sub_24E63E080();
  v43 = a4;
  v44 = v28;
  v41 = swift_getWitnessTable();
  v42 = a4;
  v29 = v36;
  v30 = swift_getWitnessTable();
  sub_24E7896B8(v22, v29, v30);
  return (*(v35 + 8))(v22, v29);
}

uint64_t sub_24EE1ED18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EC8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - v11;
  if (a1)
  {
    v30 = a3;
    v31 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_24F93A400;
    *(v13 + 32) = a1;
    *(v13 + 40) = a2;
    swift_retain_n();

    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v13);
    sub_24F923BD8();
    v14 = sub_24F9257F8();
    v15 = sub_24F924058();
    v16 = v40[5];
    v40[3] = sub_24F925048();
    v40[4] = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(v40);
    sub_24F925258();
    v35 = v16;
    v37 = v42;
    v36 = v41;
    v38 = v15;
    v39 = v14;
    sub_24E615E00(v40, v34);
    v17 = swift_allocObject();
    sub_24E612C80(v34, v17 + 16);
    *(v17 + 56) = a4;
    *(v17 + 64) = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230ED0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230ED8);
    v20 = sub_24EE1F7C8();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EE8);
    v22 = sub_24F9243B8();
    v23 = sub_24EE1F854();
    v32 = v22;
    v33 = v23;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v32 = v21;
    v33 = OpaqueTypeConformance2;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x25304BC60](sub_24EE1F7B8, v17, v18, v19, v20, v25);

    __swift_destroy_boxed_opaque_existential_1(v40);
    v26 = v30;
    (*(v31 + 32))(v30, v12, v8);
    return (*(v31 + 56))(v26, 0, 1, v8);
  }

  else
  {
    v28 = *(v9 + 56);

    return v28(a3, 1, 1, v8, v10);
  }
}

uint64_t sub_24EE1F0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = v2[2];
  v8 = sub_24F9275F8();
  v10 = v9;
  v11 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EB0) + 36);
  sub_24EE1ED18(v5, v7, v11, v6);
  v12 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EB8) + 36));
  *v12 = v8;
  v12[1] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EC0);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

double sub_24EE1F1F0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  CGRectInset(*&a2, 0.0, -*v5);
  sub_24F927788();
  result = *&v8;
  *a1 = v8;
  *(a1 + 16) = v9;
  *(a1 + 32) = v10;
  return result;
}

void (*sub_24EE1F244(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24EE1F2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE1FCB8();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24EE1F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24EE1FCB8();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24EE1F394(uint64_t a1)
{
  v2 = sub_24EE1FCB8();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_24EE1F3E0@<X0>(uint64_t a1@<X8>)
{
  sub_24E615E00(v1, v10);
  v3 = swift_allocObject();
  sub_24E612C80(v10, v3 + 16);
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F10);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230ED8);
  v6 = sub_24E602068(&qword_27F230F18, &qword_27F230F10);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EE8);
  sub_24F9243B8();
  sub_24EE1F854();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x25304BC60](sub_24EE1FD0C, v3, v4, v5, v6, OpaqueTypeConformance2);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F20);
  v9 = a1 + *(result + 36);
  *v9 = 0x408F400000000000;
  *(v9 + 8) = 256;
  return result;
}

uint64_t sub_24EE1F5A0(double a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230EE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v27 - v10;
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_24F9239B8();
  MinY = CGRectGetMinY(v28);
  if (MinY > 0.0)
  {
    v13 = MinY;
  }

  else
  {
    v13 = 0.0;
  }

  sub_24F923998();
  v15 = v13 + v14 + a1;
  sub_24F923998();
  v17 = v15 / v16;
  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  sub_24F927878();
  v20 = v19;
  v22 = v21;
  v23 = sub_24F9243B8();
  v24 = sub_24EE1F854();
  MEMORY[0x253049230](v23, v24, v18, v17, v20, v22);
  v27[0] = v23;
  v27[1] = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x253049240](v8, OpaqueTypeConformance2, 0.0, -v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_24EE1F780()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocObject();
}

unint64_t sub_24EE1F7C8()
{
  result = qword_27F230EE0;
  if (!qword_27F230EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230ED0);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EE0);
  }

  return result;
}

unint64_t sub_24EE1F854()
{
  result = qword_27F230EF0;
  if (!qword_27F230EF0)
  {
    sub_24F9243B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EF0);
  }

  return result;
}

unint64_t sub_24EE1F8C0()
{
  result = qword_27F230EF8;
  if (!qword_27F230EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EB0);
    sub_24E602068(&qword_27F230F00, &qword_27F230EC0);
    sub_24E602068(&qword_27F230F08, &qword_27F230EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230EF8);
  }

  return result;
}

unint64_t sub_24EE1FA04()
{
  result = qword_27F230F28;
  if (!qword_27F230F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230ED8);
    sub_24E602068(&qword_27F230F18, &qword_27F230F10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230EE8);
    sub_24F9243B8();
    sub_24EE1F854();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F230F30, &qword_27F230F38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F28);
  }

  return result;
}

unint64_t sub_24EE1FC0C()
{
  result = qword_27F230F50;
  if (!qword_27F230F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F50);
  }

  return result;
}

unint64_t sub_24EE1FC64()
{
  result = qword_27F230F58;
  if (!qword_27F230F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F58);
  }

  return result;
}

unint64_t sub_24EE1FCB8()
{
  result = qword_27F230F60;
  if (!qword_27F230F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230F60);
  }

  return result;
}

uint64_t sub_24EE1FDBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v25 - v4;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F68);
  v6 = *(v25[0] - 8);
  MEMORY[0x28223BE20](v25[0]);
  v8 = v25 - v7;
  v9 = sub_24F9232F8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_24E7538CC(v2 + 16, v36);
  sub_24EE20574(v2, &v26);
  v10 = swift_allocObject();
  v11 = v27;
  *(v10 + 16) = v26;
  *(v10 + 32) = v11;
  *(v10 + 48) = v28;
  *(v10 + 64) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F70);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F78);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F80);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F211B58);
  v15 = sub_24E602068(&qword_27F212910, &qword_27F211B58);
  v16 = sub_24EC9FF88();
  v32 = v14;
  v33 = &type metadata for ActionLabelStyle;
  v34 = v15;
  v35 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = v13;
  v33 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v32 = v12;
  v33 = v18;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v19 = sub_24F9271D8();
  v26 = 0u;
  v27 = 0u;
  *&v28 = 0;
  v30 = v19;
  v31 = sub_24EA41794();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28 + 1);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(boxed_opaque_existential_1, v21, v22);
  sub_24E602068(&qword_27F230F88, &qword_27F230F68);
  sub_24E620DE8();
  v23 = v25[0];
  sub_24F926178();
  sub_24E6A56E8(&v26);
  return (*(v6 + 8))(v8, v23);
}

uint64_t sub_24EE2018C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = sub_24F9248C8();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B58);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230F78);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *a1;
  v17 = a1[1];
  v30 = v16;
  v31 = v17;
  sub_24E600AEC();

  sub_24F926EB8();
  LOBYTE(v30) = 0;
  v18 = sub_24E602068(&qword_27F212910, &qword_27F211B58);
  v19 = sub_24EC9FF88();
  sub_24F9260E8();
  (*(v5 + 8))(v7, v4);
  v30 = v4;
  v31 = &type metadata for ActionLabelStyle;
  v32 = v18;
  v33 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_24F9268B8();
  (*(v9 + 8))(v11, v8);
  v21 = v26;
  sub_24F9248B8();
  v30 = v8;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v24;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  (*(v27 + 8))(v21, v29);
  return (*(v25 + 8))(v15, v22);
}

uint64_t sub_24EE205AC()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  return swift_deallocObject();
}

uint64_t sub_24EE205FC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F230F68);
  sub_24E602068(&qword_27F230F88, &qword_27F230F68);
  sub_24E620DE8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t JSNetworkPerformanceMetrics.metricsData.getter()
{
  v0 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v1 = sub_24F92A1D8();
  v3 = MEMORY[0x277D837D0];
  if (v2)
  {
    v49 = MEMORY[0x277D837D0];
    *&v48 = v1;
    *(&v48 + 1) = v2;
    sub_24E612B0C(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000014, 0x800000024FA5F0E0, isUniquelyReferenced_nonNull_native);
    v50 = v0;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000014, 0x800000024FA5F0E0, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
  }

  v5 = sub_24F92A1E8();
  if (v6)
  {
    v49 = v3;
    *&v48 = v5;
    *(&v48 + 1) = v6;
    sub_24E612B0C(&v48, v47);
    v7 = v50;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x4C525565676170, 0xE700000000000000, v8);
    v50 = v7;
  }

  else
  {
    sub_24E98EF1C(0x4C525565676170, 0xE700000000000000, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
  }

  v9 = sub_24F92A198();
  v11 = sub_24E99058C(v9, v10 & 1);
  if (v11)
  {
    v12 = v11;
    v49 = sub_24E9421D0();
    *&v48 = v12;
    sub_24E612B0C(&v48, v47);
    v13 = v50;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000010, 0x800000024FA5F100, v14);
    v50 = v13;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000010, 0x800000024FA5F100, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
  }

  v15 = sub_24F92A1A8();
  v17 = sub_24E99058C(v15, v16 & 1);
  if (v17)
  {
    v18 = v17;
    v49 = sub_24E9421D0();
    *&v48 = v18;
    sub_24E612B0C(&v48, v47);
    v19 = v50;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000011, 0x800000024FA5F120, v20);
    v50 = v19;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F120, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
  }

  v21 = sub_24F92A188();
  v23 = sub_24E99058C(v21, v22 & 1);
  if (v23)
  {
    v24 = v23;
    v49 = sub_24E9421D0();
    *&v48 = v24;
    sub_24E612B0C(&v48, v47);
    v25 = v50;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x65736E6F70736572, 0xEF656D6954646E45, v26);
    v50 = v25;
  }

  else
  {
    sub_24E98EF1C(0x65736E6F70736572, 0xEF656D6954646E45, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
  }

  v27 = sub_24F92A1B8();
  if (v27 != 2)
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v49 = sub_24E9421D0();
    *&v48 = v28;
    sub_24E612B0C(&v48, v47);
    v29 = v50;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0xD000000000000011, 0x800000024FA5F140, v30);
    v50 = v29;
  }

  v31 = sub_24F92A178();
  v33 = sub_24E99058C(v31, v32 & 1);
  if (v33)
  {
    v34 = v33;
    v49 = sub_24E9421D0();
    *&v48 = v34;
    sub_24E612B0C(&v48, v47);
    v35 = v50;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x6174536573726170, 0xEE00656D69547472, v36);
    v50 = v35;
  }

  else
  {
    sub_24E98EF1C(0x6174536573726170, 0xEE00656D69547472, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
  }

  v37 = sub_24F92A168();
  v39 = sub_24E99058C(v37, v38 & 1);
  if (v39)
  {
    v40 = v39;
    v49 = sub_24E9421D0();
    *&v48 = v40;
    sub_24E612B0C(&v48, v47);
    v41 = v50;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v47, 0x646E456573726170, 0xEC000000656D6954, v42);
    if (!*(v41 + 16))
    {
      return sub_24F928658();
    }
  }

  else
  {
    sub_24E98EF1C(0x646E456573726170, 0xEC000000656D6954, &v48);
    sub_24E601704(&v48, &qword_27F2129B0);
    v41 = v50;
    if (!*(v50 + 16))
    {
      return sub_24F928658();
    }
  }

  v43 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
  if (v44)
  {
    sub_24E643A9C(*(v41 + 56) + 32 * v43, &v48);
    if (swift_dynamicCast())
    {
      v45 = HIBYTE(*(&v47[0] + 1)) & 0xFLL;
      if ((*(&v47[0] + 1) & 0x2000000000000000) == 0)
      {
        v45 = *&v47[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
      }
    }
  }

  return sub_24F928658();
}

uint64_t PageRenderMetricsEvent.metricsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116[2] = a1;
  v3 = 0xD000000000000011;
  v4 = sub_24F92A1F8();
  v5 = *(v4 - 8);
  v123 = v4;
  v124 = v5;
  MEMORY[0x28223BE20](v4);
  v122 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_24F928698();
  v7 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v151 = v9;
  v10 = MEMORY[0x277D837D0];
  *(&v144 + 1) = MEMORY[0x277D837D0];
  *&v143 = 0x646E655265676170;
  *(&v143 + 1) = 0xEA00000000007265;
  sub_24E612B0C(&v143, v150);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149 = v9;
  sub_24E81C1D4(v150, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v12 = v149;
  swift_beginAccess();
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  *(&v144 + 1) = v10;
  v15 = 0x800000024FA5A1B0;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0xD000000000000011;
  }

  *&v143 = v13;
  *(&v143 + 1) = v15;
  sub_24E612B0C(&v143, v150);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v12;
  sub_24E81C1D4(v150, 0x6369706F74, 0xE500000000000000, v16);
  v17 = v148;
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19 = sub_24E9421D0();
  *(&v144 + 1) = v19;
  *&v143 = v18;
  sub_24E612B0C(&v143, v150);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v17;
  sub_24E81C1D4(v150, 0x726556746E657665, 0xEC0000006E6F6973, v20);
  v21 = v148;
  v151 = v148;
  if ((byte_27F230F90 & 1) == 0)
  {
    if (qword_27F210600 != -1)
    {
      swift_once();
    }

    *(&v144 + 1) = v10;
    v143 = xmmword_27F22D918;
    sub_24E612B0C(&v143, v150);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v21;
    sub_24E81C1D4(v150, 0xD000000000000014, 0x800000024FA44C30, v22);
    v21 = v148;
    v151 = v148;
    byte_27F230F90 = 1;
  }

  swift_beginAccess();
  v23 = sub_24E99058C(*(v2 + 40), *(v2 + 48));
  if (v23)
  {
    *(&v144 + 1) = v19;
    *&v143 = v23;
    sub_24E612B0C(&v143, v150);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v21;
    sub_24E81C1D4(v150, 0xD000000000000011, 0x800000024FA5F160, v24);
    v151 = v147;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F160, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v25 = sub_24E99058C(*(v2 + 56), *(v2 + 64));
  if (v25)
  {
    *(&v144 + 1) = v19;
    *&v143 = v25;
    sub_24E612B0C(&v143, v150);
    v26 = v151;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v26;
    sub_24E81C1D4(v150, 0x6570704165676170, 0xEE00656D69547261, v27);
    v151 = v146;
  }

  else
  {
    sub_24E98EF1C(0x6570704165676170, 0xEE00656D69547261, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v28 = sub_24E99058C(*(v2 + 72), *(v2 + 80));
  if (v28)
  {
    *(&v144 + 1) = v19;
    *&v143 = v28;
    sub_24E612B0C(&v143, v150);
    v29 = v151;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v29;
    sub_24E81C1D4(v150, 0xD000000000000011, 0x800000024FA5F180, v30);
    v151 = v142;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F180, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  v31 = *(v2 + 88);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  v117 = v2;
  v118 = v19;
  if (v32)
  {
    v142 = MEMORY[0x277D84F90];

    sub_24F457900(0, v32, 0);
    v34 = v142;
    v121 = v7;
    v35 = (v7 + 8);
    v36 = 32;
    do
    {
      v37 = v31;
      v143 = *(v31 + v36);
      v144 = *(v31 + v36 + 16);
      v145[0] = *(v31 + v36 + 32);
      *(v145 + 9) = *(v31 + v36 + 41);
      v38 = v125;
      PageRenderMetricsEvent.DOMChange.metricsData.getter();
      v3 = sub_24F928688();
      (*v35)(v38, v126);
      v142 = v34;
      v40 = v34[2];
      v39 = v34[3];
      if (v40 >= v39 >> 1)
      {
        sub_24F457900((v39 > 1), v40 + 1, 1);
        v34 = v142;
      }

      v34[2] = v40 + 1;
      v34[v40 + 4] = v3;
      v36 += 64;
      --v32;
      v31 = v37;
    }

    while (v32);

    *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
    *&v143 = v34;
    sub_24E612B0C(&v143, v150);
    v41 = v151;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v41;
    sub_24E81C1D4(v150, 0x676E6168436D6F64, 0xEA00000000007365, v42);
    v151 = v141;
    v2 = v117;
    v19 = v118;
    v33 = MEMORY[0x277D84F90];
    v7 = v121;
  }

  swift_beginAccess();
  v43 = *(v2 + 96);
  v44 = *(v43 + 16);
  if (v44)
  {
    *&v143 = v33;

    sub_24F457900(0, v44, 0);
    v45 = v143;
    v46 = v125;
    v47 = *(v124 + 16);
    v48 = *(v124 + 80);
    v116[1] = v43;
    v3 = v43 + ((v48 + 32) & ~v48);
    v120 = *(v124 + 72);
    v121 = v47;
    v119 = (v7 + 8);
    v124 += 16;
    v49 = (v124 - 8);
    do
    {
      v51 = v122;
      v50 = v123;
      (v121)(v122, v3, v123);
      JSNetworkPerformanceMetrics.metricsData.getter();
      v52 = sub_24F928688();
      (*v119)(v46, v126);
      (*v49)(v51, v50);
      *&v143 = v45;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_24F457900((v53 > 1), v54 + 1, 1);
        v45 = v143;
      }

      *(v45 + 16) = v54 + 1;
      *(v45 + 8 * v54 + 32) = v52;
      v3 += v120;
      --v44;
    }

    while (v44);

    *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BC98);
    *&v143 = v45;
    sub_24E612B0C(&v143, v150);
    v55 = v151;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v55;
    sub_24E81C1D4(v150, 0x7374736575716572, 0xE800000000000000, v56);
    v151 = v141;
    v2 = v117;
    v19 = v118;
    v33 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v57 = sub_24E99058C(*(v2 + 104), *(v2 + 112));
  if (v57)
  {
    *(&v144 + 1) = v19;
    *&v143 = v57;
    sub_24E612B0C(&v143, v150);
    v58 = v151;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v58;
    sub_24E81C1D4(v150, 0xD000000000000018, 0x800000024FA5CB70, v59);
    v151 = v140;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000018, 0x800000024FA5CB70, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v60 = sub_24E99058C(*(v2 + 120), *(v2 + 128));
  if (v60)
  {
    *(&v144 + 1) = v19;
    *&v143 = v60;
    sub_24E612B0C(&v143, v150);
    v61 = v151;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v61;
    sub_24E81C1D4(v150, 0xD00000000000001ELL, 0x800000024FA5CB90, v62);
    v151 = v139;
  }

  else
  {
    sub_24E98EF1C(0xD00000000000001ELL, 0x800000024FA5CB90, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v63 = sub_24E99058C(*(v2 + 136), *(v2 + 144));
  if (v63)
  {
    *(&v144 + 1) = v19;
    *&v143 = v63;
    sub_24E612B0C(&v143, v150);
    v64 = v151;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v64;
    sub_24E81C1D4(v150, 0xD000000000000016, 0x800000024FA5CBB0, v65);
    v151 = v138;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000016, 0x800000024FA5CBB0, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v66 = sub_24E99058C(*(v2 + 152), *(v2 + 160));
  if (v66)
  {
    *(&v144 + 1) = v19;
    *&v143 = v66;
    sub_24E612B0C(&v143, v150);
    v67 = v151;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v67;
    sub_24E81C1D4(v150, 0xD000000000000011, 0x800000024FA5F1A0, v68);
    v151 = v137;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000011, 0x800000024FA5F1A0, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v69 = *(v2 + 168);
  if (v69 && *(v69 + 16))
  {
    *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230FA8);
    *&v143 = v69;
    sub_24E612B0C(&v143, v150);

    v70 = v151;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v70;
    sub_24E81C1D4(v150, 0xD000000000000015, 0x800000024FA5CCD0, v71);
    v151 = v136;
  }

  swift_beginAccess();
  v72 = *(v2 + 176);
  if (v72)
  {
    v73 = *(v72 + 16);
    if (v73)
    {
      *&v143 = v33;

      v74 = &v143;
      sub_24F92C978();
      v75 = 0;
      while (v75 < *(v72 + 16))
      {
        v76 = *(v72 + 8 * v75 + 32);
        v135 = v76;
        v77 = v76;
        sub_24EE24600(&v135, v150);

        ++v75;
        v33 = *&v150[0];
        sub_24F92C948();
        v3 = *(v143 + 16);
        sub_24F92C988();
        sub_24F92C998();
        v74 = &v143;
        sub_24F92C958();
        if (v73 == v75)
        {

          v78 = v143;
          *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230FA0);
          *&v143 = v78;
          sub_24E612B0C(&v143, v150);
          v79 = v151;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v135 = v79;
          sub_24E81C1D4(v150, 0x73726F727265, 0xE600000000000000, v80);
          v151 = v135;
          v19 = v118;
          goto LABEL_50;
        }
      }

      __break(1u);
      goto LABEL_84;
    }
  }

LABEL_50:
  swift_beginAccess();
  v81 = sub_24E99058C(*(v2 + 184), *(v2 + 192));
  if (v81)
  {
    *(&v144 + 1) = v19;
    *&v143 = v81;
    sub_24E612B0C(&v143, v150);
    v82 = v151;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v82;
    sub_24E81C1D4(v150, 0xD00000000000001BLL, 0x800000024FA5F1C0, v83);
    v151 = v134;
  }

  else
  {
    sub_24E98EF1C(0xD00000000000001BLL, 0x800000024FA5F1C0, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v84 = sub_24E99058C(*(v2 + 200), *(v2 + 208));
  if (v84)
  {
    *(&v144 + 1) = v19;
    *&v143 = v84;
    sub_24E612B0C(&v143, v150);
    v85 = v151;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v85;
    sub_24E81C1D4(v150, 0xD000000000000019, 0x800000024FA5F1E0, v86);
    v151 = v133;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000019, 0x800000024FA5F1E0, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v87 = sub_24E99058C(*(v2 + 216), *(v2 + 224));
  if (v87)
  {
    *(&v144 + 1) = v19;
    *&v143 = v87;
    sub_24E612B0C(&v143, v150);
    v88 = v151;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v88;
    sub_24E81C1D4(v150, 0xD000000000000018, 0x800000024FA5C9B0, v89);
    v151 = v132;
  }

  else
  {
    sub_24E98EF1C(0xD000000000000018, 0x800000024FA5C9B0, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v90 = sub_24E99058C(*(v2 + 232), *(v2 + 240));
  if (v90)
  {
    *(&v144 + 1) = v19;
    *&v143 = v90;
    sub_24E612B0C(&v143, v150);
    v91 = v151;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v91;
    sub_24E81C1D4(v150, 0x74536C6C6143736ALL, 0xEF656D6954747261, v92);
    v151 = v131;
  }

  else
  {
    sub_24E98EF1C(0x74536C6C6143736ALL, 0xEF656D6954747261, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  swift_beginAccess();
  v93 = sub_24E99058C(*(v2 + 248), *(v2 + 256));
  if (v93)
  {
    *(&v144 + 1) = v19;
    *&v143 = v93;
    sub_24E612B0C(&v143, v150);
    v94 = v151;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v94;
    sub_24E81C1D4(v150, 0x6E456C6C6143736ALL, 0xED0000656D695464, v95);
    v151 = v130;
  }

  else
  {
    sub_24E98EF1C(0x6E456C6C6143736ALL, 0xED0000656D695464, &v143);
    sub_24E601704(&v143, &qword_27F2129B0);
  }

  v96 = *(v2 + 257);
  if (v96 != 2)
  {
    v97 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(&v144 + 1) = v19;
    *&v143 = v97;
    sub_24E612B0C(&v143, v150);
    v98 = v151;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v98;
    sub_24E81C1D4(v150, 0x746144776F4C7369, 0xED000065646F4D61, v99);
    v151 = v130;
  }

  swift_beginAccess();
  if ((*(v2 + 272) & 1) == 0)
  {
    v100 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(&v144 + 1) = v19;
    *&v143 = v100;
    sub_24E612B0C(&v143, v150);
    v101 = v151;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v101;
    sub_24E81C1D4(v150, 0xD000000000000011, 0x800000024FA5CAD0, v102);
    v151 = v129;
  }

  swift_beginAccess();
  v103 = *(v2 + 273);
  if (v103 != 2)
  {
    v104 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(&v144 + 1) = v19;
    *&v143 = v104;
    sub_24E612B0C(&v143, v150);
    v105 = v151;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v105;
    sub_24E81C1D4(v150, 0xD000000000000010, 0x800000024FA5F200, v106);
    v151 = v128;
  }

  swift_beginAccess();
  if (*(v2 + 288) == 1)
  {
    v74 = v151;
  }

  else
  {
    v107 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(&v144 + 1) = v19;
    *&v143 = v107;
    sub_24E612B0C(&v143, v150);
    v108 = v151;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v108;
    sub_24E81C1D4(v150, 0xD000000000000019, 0x800000024FA5CAF0, v109);
    v74 = v127;
    v151 = v127;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221948);
  v72 = sub_24F92A2C8();
  v3 = *(v72 - 8);
  v75 = *(v3 + 72);
  v110 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_24F93A400;
  v33 = v73 + v110;
  sub_24F92A288();
  if (qword_27F2102C0 != -1)
  {
LABEL_84:
    swift_once();
  }

  v111 = __swift_project_value_buffer(v72, qword_27F229C98);
  (*(v3 + 16))(v33 + v75, v111, v72);
  sub_24E805DFC(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v74 + 2))
  {
    v112 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
    if (v113)
    {
      sub_24E643A9C(*(v74 + 7) + 32 * v112, &v143);
      if (swift_dynamicCast())
      {
        v114 = HIBYTE(*(&v150[0] + 1)) & 0xFLL;
        if ((*(&v150[0] + 1) & 0x2000000000000000) == 0)
        {
          v114 = *&v150[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v114)
        {
        }
      }
    }
  }

  return sub_24F928658();
}

uint64_t static PageRenderMetricsEvent.lastInteractionTime.setter(double a1)
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27F230F98 = *&a1;
  return result;
}

uint64_t JSNetworkPerformanceMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v64 = a3;
  v72 = sub_24F9288E8();
  v73 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v57 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v47[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v47[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v47[-v16];
  sub_24F928398();
  v18 = sub_24F928348();
  v62 = v19;
  v63 = v18;
  v20 = *(v7 + 8);
  v20(v17, v6);
  v49 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v60 = v22;
  v61 = v21;
  v69 = v6;
  v20(v14, v6);
  v68 = v7 + 8;
  sub_24F928398();
  v48 = *MEMORY[0x277D21C38];
  v23 = v73;
  v24 = v73 + 104;
  v71 = *(v73 + 104);
  v25 = v72;
  v71(v5);
  v67 = v24;
  v59 = sub_24F928228();
  v58 = v26;
  v27 = *(v23 + 8);
  v73 = v23 + 8;
  v70 = v27;
  v27(v5, v25);
  v66 = v20;
  v20(v11, v6);
  v28 = v49;
  sub_24F928398();
  v29 = v48;
  v30 = v71;
  (v71)(v5, v48, v25);
  v56 = sub_24F928228();
  v55 = v31;
  v32 = v70;
  v70(v5, v25);
  v20(v11, v69);
  sub_24F928398();
  v33 = v29;
  v34 = v29;
  v35 = v72;
  v30(v5, v33, v72);
  v54 = sub_24F928228();
  v52 = v36;
  v32(v5, v35);
  v37 = v69;
  v38 = v66;
  v66(v11, v69);
  sub_24F928398();
  v53 = sub_24F928278();
  v38(v11, v37);
  v39 = v57;
  v40 = v28;
  sub_24F928398();
  v41 = v72;
  (v71)(v5, v34, v72);
  v51 = sub_24F928228();
  v50 = v42;
  v70(v5, v41);
  v43 = v66;
  v66(v39, v37);
  sub_24F928398();
  (v71)(v5, v34, v41);
  sub_24F928228();
  v70(v5, v41);
  v44 = v69;
  v43(v39, v69);
  sub_24F92A1C8();
  v45 = sub_24F9285B8();
  (*(*(v45 - 8) + 8))(v65, v45);
  return v43(v40, v44);
}

uint64_t PageRenderMetricsEvent.DOMChange.metricsData.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v10 = sub_24E99058C(v1, v2);
  if (v10)
  {
    v11 = v10;
    v32 = sub_24E9421D0();
    *&v31 = v11;
    sub_24E612B0C(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x617453646C697562, 0xEE00656D69547472, isUniquelyReferenced_nonNull_native);
    v33 = v9;
  }

  else
  {
    sub_24E98EF1C(0x617453646C697562, 0xEE00656D69547472, &v31);
    sub_24E601704(&v31, &qword_27F2129B0);
  }

  v13 = sub_24E99058C(v3, v4);
  if (v13)
  {
    v14 = v13;
    v32 = sub_24E9421D0();
    *&v31 = v14;
    sub_24E612B0C(&v31, v30);
    v15 = v33;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x646E45646C697562, 0xEC000000656D6954, v16);
    v33 = v15;
  }

  else
  {
    sub_24E98EF1C(0x646E45646C697562, 0xEC000000656D6954, &v31);
    sub_24E601704(&v31, &qword_27F2129B0);
  }

  v17 = sub_24E99058C(v5, v6);
  if (v17)
  {
    v18 = v17;
    v32 = sub_24E9421D0();
    *&v31 = v18;
    sub_24E612B0C(&v31, v30);
    v19 = v33;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x74537265646E6572, 0xEF656D6954747261, v20);
    v33 = v19;
  }

  else
  {
    sub_24E98EF1C(0x74537265646E6572, 0xEF656D6954747261, &v31);
    sub_24E601704(&v31, &qword_27F2129B0);
  }

  v21 = sub_24E99058C(v7, v8);
  if (v21)
  {
    v22 = v21;
    v32 = sub_24E9421D0();
    *&v31 = v22;
    sub_24E612B0C(&v31, v30);
    v23 = v33;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v30, 0x6E457265646E6572, 0xED0000656D695464, v24);
    v25 = v23;
    if (!*(v23 + 16))
    {
      return sub_24F928658();
    }
  }

  else
  {
    sub_24E98EF1C(0x6E457265646E6572, 0xED0000656D695464, &v31);
    sub_24E601704(&v31, &qword_27F2129B0);
    v25 = v33;
    if (!*(v33 + 16))
    {
      return sub_24F928658();
    }
  }

  v26 = sub_24E76D644(0x6369706F74, 0xE500000000000000);
  if (v27)
  {
    sub_24E643A9C(*(v25 + 56) + 32 * v26, &v31);
    if (swift_dynamicCast())
    {
      v28 = HIBYTE(*(&v30[0] + 1)) & 0xFLL;
      if ((*(&v30[0] + 1) & 0x2000000000000000) == 0)
      {
        v28 = *&v30[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
      }
    }
  }

  return sub_24F928658();
}

uint64_t PageRenderMetricsEvent.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageRenderMetricsEvent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *PageRenderMetricsEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  *(v2 + 48) = 1;
  v2[7] = 0;
  *(v2 + 64) = 1;
  v2[9] = 0;
  *(v2 + 80) = 1;
  v9 = MEMORY[0x277D84F90];
  v2[11] = MEMORY[0x277D84F90];
  v2[12] = v9;
  v2[13] = 0;
  *(v2 + 112) = 1;
  v2[15] = 0;
  *(v2 + 128) = 1;
  v2[17] = 0;
  *(v2 + 144) = 1;
  v2[19] = 0;
  *(v2 + 160) = 1;
  v2[21] = 0;
  v2[22] = 0;
  v2[23] = 0;
  *(v2 + 192) = 1;
  v2[25] = 0;
  *(v2 + 208) = 1;
  v2[27] = 0;
  *(v2 + 224) = 1;
  v2[29] = 0;
  *(v2 + 240) = 1;
  v2[31] = 0;
  *(v2 + 128) = 513;
  v2[33] = 0;
  *(v2 + 136) = 513;
  v2[35] = 0;
  *(v2 + 288) = 1;
  sub_24F9281F8();
  v10 = sub_24F928E68();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_24E601704(v8, qword_27F221C40);
LABEL_5:
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v16 = 0xD000000000000011;
    v16[1] = 0x800000024FA49C20;
    v16[2] = v5;
    v16[3] = v9;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D22540], v15);
    swift_willThrow();
    v17 = sub_24F9285B8();
    (*(*(v17 - 8) + 8))(v21, v17);
    v18 = sub_24F928388();
    (*(*(v18 - 8) + 8))(a1, v18);

    swift_deallocPartialClassInstance();
    return v3;
  }

  v12 = sub_24F928E48();
  (*(v11 + 8))(v8, v10);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = sub_24F9285B8();
  (*(*(v13 - 8) + 8))(v21, v13);
  v14 = sub_24F928388();
  (*(*(v14 - 8) + 8))(a1, v14);
  v3[2] = v12;
  return v3;
}

uint64_t sub_24EE230B8()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 88) = MEMORY[0x277D84F90];
  *(v0 + 96) = v1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 513;
  *(v0 + 264) = 0;
  *(v0 + 272) = 513;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 16) = sub_24E608448(v1);
  return v0;
}

void sub_24EE23164()
{
  v0 = [objc_opt_self() processInfo];
  [v0 ask_launchTime];
  v2 = v1;

  qword_27F230F98 = v2;
}

double static PageRenderMetricsEvent.lastInteractionTime.getter()
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *&qword_27F230F98;
}

uint64_t (*static PageRenderMetricsEvent.lastInteractionTime.modify())()
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_24EE232C4@<D0>(void *a1@<X8>)
{
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = *&qword_27F230F98;
  *a1 = qword_27F230F98;
  return result;
}

uint64_t sub_24EE23340(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27F210788 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  qword_27F230F98 = v1;
  return result;
}

uint64_t PageRenderMetricsEvent.topic.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PageRenderMetricsEvent.topic.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t PageRenderMetricsEvent.pageRequestedTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.pageAppearTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.pageDisappearTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t (*PageRenderMetricsEvent.domChanges.modify(void *a1))(void *a1)
{
  *a1 = *(v1 + 88);
  a1[1] = v1;

  return sub_24EE237B0;
}

uint64_t PageRenderMetricsEvent.requests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

uint64_t PageRenderMetricsEvent.resourceRequestStartTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.resourceRequestOnScreenEndTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.resourceRequestEndTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.pageUserReadyTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.networkQualityReports.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t PageRenderMetricsEvent.errors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t PageRenderMetricsEvent.rootViewModelParseStartTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 184) = a1;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.rootViewModelParseEndTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 200) = a1;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.rootViewModelPresentTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 216) = a1;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.jsCallStartTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 232) = a1;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.jsCallEndTime.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 248) = a1;
  *(v2 + 256) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.xpSessionDuration.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 264) = a1;
  *(v2 + 272) = a2 & 1;
  return result;
}

uint64_t PageRenderMetricsEvent.xpSamplingForced.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 273) = a1;
  return result;
}

uint64_t PageRenderMetricsEvent.xpSamplingPercentageUsers.setter(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(v2 + 280) = a1;
  *(v2 + 288) = a2 & 1;
  return result;
}

unint64_t PageRenderMetricsEvent.description.getter()
{
  v0 = sub_24F928698();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PageRenderMetricsEvent.metricsData.getter(v3);
  v4 = sub_24F928688();
  (*(v1 + 8))(v3, v0);
  v10 = v4;
  v11 = sub_24ECE1BD0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D928);
  sub_24ECE1DB8();
  sub_24E600AEC();
  v5 = sub_24F92B4D8();
  v7 = v6;

  v10 = 0;
  v11 = 0xE000000000000000;
  sub_24F92C888();

  v10 = 0xD000000000000017;
  v11 = 0x800000024FA5F220;
  MEMORY[0x253050C20](v5, v7);

  MEMORY[0x253050C20](41, 0xE100000000000000);
  return v10;
}

uint64_t sub_24EE24600@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  v15 = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2231C0);
  if (swift_dynamicCast())
  {
    sub_24E612E28(v13, v16);
    v6 = v17;
    v7 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    (*(v7 + 16))(v6, v7);
    v8 = sub_24F92B098();

    *&v13[0] = 0xD000000000000010;
    *(&v13[0] + 1) = 0x800000024FA4BBE0;
    [v4 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v9 = v18;
    v10 = __swift_project_boxed_opaque_existential_1(v16, v17);
    MEMORY[0x28223BE20](v10);
    (*(v9 + 24))(sub_24EE24B98);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_24E601704(v13, &qword_27F2231C8);
    swift_getErrorValue();
    sub_24F92CFE8();
    v12 = sub_24F92B098();

    v16[0] = 0xD000000000000010;
    v16[1] = 0x800000024FA4BBE0;
    [v4 __swift_setObject_forKeyedSubscript_];

    result = swift_unknownObjectRelease();
  }

  *a2 = v4;
  return result;
}

uint64_t sub_24EE24880(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_24E643A9C(a3, v9);
  sub_24F92B188();
  v7 = sub_24F92B098();

  v9[0] = a1;
  v9[1] = a2;

  [a4 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

uint64_t PageRenderMetricsEvent.deinit()
{

  return v0;
}

uint64_t PageRenderMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EE24A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = PageRenderMetricsEvent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EE24A84(void *a1, uint64_t a2)
{
  *(*a2 + 88) = *a1;
}

uint64_t sub_24EE24B2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EE24B4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t EditorialMediaFlavor.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_24F928348();
  if (v7)
  {
    v8 = v6;
    v9 = v7;

    v10 = sub_24F92CB88();

    if (v10 < 4)
    {

      v11 = sub_24F9285B8();
      (*(*(v11 - 8) + 8))(a2, v11);
      v12 = sub_24F928388();
      result = (*(*(v12 - 8) + 8))(a1, v12);
      *a3 = v10;
      return result;
    }

    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v19;
    *v19 = v8;
    v19[1] = v9;
    v19[2] = &type metadata for EditorialMediaFlavor;
    v18 = MEMORY[0x277D22520];
  }

  else
  {
    v14 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = v15;
    v17 = MEMORY[0x277D84F90];
    *v15 = &type metadata for EditorialMediaFlavor;
    v15[1] = v17;
    v18 = MEMORY[0x277D22538];
  }

  (*(*(v14 - 8) + 104))(v16, *v18, v14);
  swift_willThrow();
  v20 = sub_24F9285B8();
  (*(*(v20 - 8) + 8))(a2, v20);
  v21 = sub_24F928388();
  return (*(*(v21 - 8) + 8))(a1, v21);
}

GameStoreKit::EditorialMediaFlavor_optional __swiftcall EditorialMediaFlavor.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t EditorialMediaFlavor.rawValue.getter()
{
  v1 = 0x69746F4D6F726568;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_24EE24EE0()
{
  result = qword_27F230FB0;
  if (!qword_27F230FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FB0);
  }

  return result;
}

uint64_t sub_24EE24F34()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EE25010()
{
  sub_24F92B218();
}

uint64_t sub_24EE250D8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EE251BC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00397836316E6FLL;
  v3 = 0x69746F4D6F726568;
  v4 = 0x800000024FA3F070;
  v5 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000017;
  }

  else
  {
    v4 = 0x800000024FA3F090;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000024FA3F050;
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

uint64_t sub_24EE25290(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24EE25310(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DismissDashboardAction()
{
  result = qword_27F230FB8;
  if (!qword_27F230FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EE253CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230FC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DismissDashboardAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EE256AC();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E862F10();
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24EE25700(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24EE2561C(uint64_t a1)
{
  v2 = sub_24EE256AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EE25658(uint64_t a1)
{
  v2 = sub_24EE256AC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EE256AC()
{
  result = qword_27F230FD0;
  if (!qword_27F230FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FD0);
  }

  return result;
}

uint64_t sub_24EE25700(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DismissDashboardAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EE25778()
{
  result = qword_27F230FD8;
  if (!qword_27F230FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FD8);
  }

  return result;
}

unint64_t sub_24EE257D0()
{
  result = qword_27F230FE0;
  if (!qword_27F230FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FE0);
  }

  return result;
}

unint64_t sub_24EE25828()
{
  result = qword_27F230FE8;
  if (!qword_27F230FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F230FE8);
  }

  return result;
}

uint64_t sub_24EE25890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for GameActivityDraftGameInfo(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 40);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24EE259C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for GameActivityDraftGameInfo(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_24EE25B0C()
{
  type metadata accessor for Player(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for GameActivityPlayersDraft();
    if (v1 <= 0x3F)
    {
      sub_24EE25CA8();
      if (v2 <= 0x3F)
      {
        sub_24F928FD8();
        if (v3 <= 0x3F)
        {
          sub_24E6CAE80();
          if (v4 <= 0x3F)
          {
            type metadata accessor for GameActivityDraftGameInfo(319);
            if (v5 <= 0x3F)
            {
              sub_24EE2A4C8(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_24EE2A4C8(319, &qword_27F2362E0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
                if (v7 <= 0x3F)
                {
                  sub_24EE2A4C8(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
                  if (v8 <= 0x3F)
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
}

void sub_24EE25CA8()
{
  if (!qword_27F231000)
  {
    type metadata accessor for GameActivityPlayerPickerDataSource(255);
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F231000);
    }
  }
}

uint64_t sub_24EE25D1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = type metadata accessor for PlayerPickerView.SearchableModifier(0);
  MEMORY[0x28223BE20](v37);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PlayerPickerView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231008);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  *v12 = sub_24F924C98();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231010);
  sub_24EE26104(v2, &v12[*(v13 + 44)]);
  sub_24EE29CC0(v2, v8, type metadata accessor for PlayerPickerView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_24EE298BC(v8, v15 + v14, type metadata accessor for PlayerPickerView);
  v16 = &v12[*(v10 + 44)];
  sub_24F923AD8();
  sub_24F92B818();
  *v16 = &unk_24F9A5220;
  *(v16 + 1) = v15;
  v35 = v5;
  v36 = v2;
  v17 = (v2 + *(v5 + 24));
  v19 = *v17;
  v18 = v17[1];
  v43 = v19;
  v44 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018);
  sub_24F926F58();
  v20 = v39;
  v21 = v40;
  v22 = v41;
  swift_getKeyPath();
  v43 = v20;
  v44 = v21;
  v45 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F10);
  sub_24F927188();

  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;

  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    v27 = 1;
  }

  else
  {
    v27 = *(v36 + *(v35 + 52));
  }

  *v4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v28 = v37;
  v29 = *(v37 + 20);
  *(v4 + v29) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v30 = (v4 + *(v28 + 24));
  *v30 = v23;
  v30[1] = v24;
  v30[2] = v25;
  v30[3] = v26;
  *(v4 + *(v28 + 28)) = v27;
  v31 = v38;
  sub_24E6009C8(v12, v38, &qword_27F231008);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231020);
  return sub_24EE298BC(v4, v31 + *(v32 + 36), type metadata accessor for PlayerPickerView.SearchableModifier);
}

uint64_t sub_24EE26104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a2;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231028);
  MEMORY[0x28223BE20](v140);
  v133 = v111 - v3;
  v116 = sub_24F924848();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for PlayerSuggestionView();
  MEMORY[0x28223BE20](v130);
  v138 = v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F255140);
  MEMORY[0x28223BE20](v129);
  v131 = v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v128 = v111 - v8;
  MEMORY[0x28223BE20](v9);
  v132 = v111 - v10;
  v124 = sub_24F9248C8();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_24F926C08();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231030);
  MEMORY[0x28223BE20](v120);
  v14 = v111 - v13;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231038);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = v111 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231040);
  MEMORY[0x28223BE20](v16 - 8);
  v127 = v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v135 = v111 - v19;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231048);
  MEMORY[0x28223BE20](v134);
  v137 = v111 - v20;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231050);
  MEMORY[0x28223BE20](v136);
  v22 = v111 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231058);
  MEMORY[0x28223BE20](v23);
  v139 = v111 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231060);
  MEMORY[0x28223BE20](v25);
  v27 = v111 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255060);
  MEMORY[0x28223BE20](v28);
  v30 = v111 - v29;
  v31 = type metadata accessor for PlayerPickerView(0);
  v32 = a1 + v31[11];
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v145) = v33;
  *(&v145 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220);
  sub_24F926F38();
  if (v142 == 1)
  {
    sub_24F923798();
    v35 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231098) + 36)];
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217118) + 28);
    v37 = *MEMORY[0x277CDF438];
    v38 = sub_24F9234F8();
    (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
    *v35 = swift_getKeyPath();
    v39 = sub_24F9257F8();
    v40 = &v30[*(v28 + 36)];
    *v40 = v39;
    *(v40 + 8) = 0u;
    *(v40 + 24) = 0u;
    v40[40] = 1;
    sub_24E60169C(v30, v27, &unk_27F255060);
    swift_storeEnumTagMultiPayload();
    sub_24EE29A98();
    sub_24EE29C08();
    sub_24F924E28();
    return sub_24E601704(v30, &unk_27F255060);
  }

  else
  {
    v111[1] = v25;
    v112 = v27;
    v111[0] = v28;
    v113 = v23;
    v42 = a1 + v31[12];
    v43 = *v42;
    v44 = *(v42 + 8);
    LOBYTE(v42) = *(v42 + 16);
    *&v145 = v43;
    *(&v145 + 1) = v44;
    LOBYTE(v146) = v42;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0);
    MEMORY[0x25304CAF0](&v142, v45);
    v46 = a1;
    if (v142)
    {
      if (qword_27F210D28 != -1)
      {
        swift_once();
      }

      v47 = v130;
      v48 = v126;
      if ((byte_27F39D1B1 & 1) != 0 || *(a1 + v31[13]) == 1)
      {
        *v14 = sub_24F9249A8();
        *(v14 + 1) = 0;
        v14[16] = 1;
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310B0);
        sub_24EE27700(a1, &v14[*(v49 + 44)]);
        v50 = sub_24F9257F8();
        v51 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310B8) + 36)];
        *v51 = v50;
        *(v51 + 8) = 0u;
        *(v51 + 24) = 0u;
        v51[40] = 1;
        sub_24F927618();
        sub_24F9238C8();
        v52 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310C0) + 36)];
        v53 = v146;
        *v52 = v145;
        *(v52 + 1) = v53;
        *(v52 + 2) = v147;
        v54 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310C8) + 36)];
        v55 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
        v56 = type metadata accessor for GradientBackground(0);
        (*(*(v56 - 8) + 56))(&v54[v55], 1, 1, v56);
        *v54 = swift_getKeyPath();
        v54[8] = 0;
        *(v54 + 3) = 0;
        *(v54 + 4) = 0;
        *(v54 + 2) = 0x4036000000000000;
        *(v54 + 20) = 1;
        (*(v118 + 104))(v117, *MEMORY[0x277CE0ED0], v119);
        v57 = sub_24F926D58();
        v58 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310D0) + 36)];
        *v58 = v57;
        v58[1] = 0x4014000000000000;
        v58[2] = 0;
        v58[3] = 0;
        LOBYTE(v57) = sub_24F9257F8();
        v59 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310D8) + 36)];
        *v59 = v57;
        *(v59 + 8) = 0u;
        *(v59 + 24) = 0u;
        v59[40] = 1;
        LOBYTE(v57) = sub_24F925828();
        sub_24F923318();
        v60 = &v14[*(v120 + 36)];
        *v60 = v57;
        *(v60 + 1) = v61;
        *(v60 + 2) = v62;
        *(v60 + 3) = v63;
        *(v60 + 4) = v64;
        v60[40] = 0;
        v65 = v122;
        sub_24F9248B8();
        sub_24EE29DA0();
        v66 = v121;
        _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
        (*(v123 + 8))(v65, v124);
        sub_24E601704(v14, &qword_27F231030);
        v67 = *(v48 + 36);
        v68 = *MEMORY[0x277CDF3C0];
        v69 = sub_24F9234D8();
        v70 = *(v69 - 8);
        (*(v70 + 104))(v66 + v67, v68, v69);
        (*(v70 + 56))(v66 + v67, 0, 1, v69);
        v71 = v135;
        sub_24E6009C8(v66, v135, &qword_27F231038);
        v72 = 0;
      }

      else
      {
        v72 = 1;
        v71 = v135;
      }

      (*(v125 + 56))(v71, v72, 1, v48);
      v79 = v31[6];
      v80 = *(v46 + v31[5]);
      v82 = *(v46 + v79 + 8);
      v142 = *(v46 + v79);
      v81 = v142;
      v143 = v82;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231018);
      sub_24F926F38();
      v83 = sub_24F8EFE20();

      v142 = v81;
      v143 = v82;
      sub_24F926F38();
      v84 = v144;
      swift_getKeyPath();
      v142 = v84;
      sub_24EE2A1FC(&qword_27F254F30, type metadata accessor for GameActivityPlayerPickerDataSource);
      sub_24F91FD88();

      v85 = *(v84 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText);
      v86 = *(v84 + OBJC_IVAR____TtC12GameStoreKit34GameActivityPlayerPickerDataSource__searchText + 8);

      if ((v86 & 0x2000000000000000) != 0)
      {
        v87 = HIBYTE(v86) & 0xF;
      }

      else
      {
        v87 = v85 & 0xFFFFFFFFFFFFLL;
      }

      v88 = v138;
      sub_24EE29CC0(v46, &v138[v47[9]], type metadata accessor for Player);
      v89 = v47[10];
      sub_24EE29CC0(v46 + v31[10], &v88[v89], type metadata accessor for GameActivityDraftGameInfo);
      v90 = type metadata accessor for GameActivityDraftGameInfo(0);
      (*(*(v90 - 8) + 56))(&v88[v89], 0, 1, v90);
      v91 = v46 + v31[14];
      v92 = *(v91 + 8);
      if (*(v91 + 32) == 1)
      {
        v93 = *(v91 + 8);
      }

      else
      {
        v94 = *v91;
        v95 = *(v91 + 16);
        v96 = *(v91 + 24);

        sub_24F92BDC8();
        v97 = sub_24F9257A8();
        sub_24F921FD8();

        v98 = v114;
        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E669FC4(v94, v92, v95, v96, 0);
        (*(v115 + 8))(v98, v116);
        v93 = v143;
      }

      v99 = v87 != 0;
      v100 = v138;
      *v138 = v80;
      v100[1] = v83;
      v100[2] = 0;
      v100[3] = 0;
      *(v100 + 32) = v99;
      v100[5] = 0;
      v100[6] = 0;
      *(v100 + v47[11]) = 1;
      *(v100 + v47[12]) = 2;
      *(v100 + v47[13]) = v93;
      v101 = sub_24F9257F8();
      v102 = v100;
      v103 = v128;
      sub_24EE298BC(v102, v128, type metadata accessor for PlayerSuggestionView);
      v104 = v103 + *(v129 + 36);
      *v104 = v101;
      *(v104 + 8) = 0u;
      *(v104 + 24) = 0u;
      *(v104 + 40) = 1;
      v105 = v132;
      sub_24EE29D28(v103, v132);
      v106 = v135;
      v107 = v127;
      sub_24E60169C(v135, v127, &qword_27F231040);
      v108 = v131;
      sub_24E60169C(v105, v131, &qword_27F255140);
      v109 = v133;
      sub_24E60169C(v107, v133, &qword_27F231040);
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2310A8);
      sub_24E60169C(v108, v109 + *(v110 + 48), &qword_27F255140);
      sub_24E601704(v108, &qword_27F255140);
      sub_24E601704(v107, &qword_27F231040);
      sub_24E60169C(v109, v137, &qword_27F231028);
      swift_storeEnumTagMultiPayload();
      sub_24EE299E0();
      sub_24E602068(&qword_27F231088, &qword_27F231028);
      v77 = v139;
      sub_24F924E28();
      sub_24E601704(v109, &qword_27F231028);
      sub_24E601704(v105, &qword_27F255140);
      sub_24E601704(v106, &qword_27F231040);
      v78 = v112;
    }

    else
    {
      *v22 = sub_24F924C88();
      *(v22 + 1) = 0;
      v22[16] = 1;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F231068);
      sub_24EE2732C(a1, &v22[*(v73 + 44)]);
      v74 = sub_24F9257F8();
      v75 = v137;
      v76 = &v22[*(v136 + 36)];
      *v76 = v74;
      *(v76 + 8) = 0u;
      *(v76 + 24) = 0u;
      v76[40] = 1;
      sub_24E60169C(v22, v75, &qword_27F231050);
      swift_storeEnumTagMultiPayload();
      sub_24EE299E0();
      sub_24E602068(&qword_27F231088, &qword_27F231028);
      v77 = v139;
      sub_24F924E28();
      sub_24E601704(v22, &qword_27F231050);
      v78 = v112;
    }

    sub_24E60169C(v77, v78, &qword_27F231058);
    swift_storeEnumTagMultiPayload();
    sub_24EE29A98();
    sub_24EE29C08();
    sub_24F924E28();
    return sub_24E601704(v77, &qword_27F231058);
  }
}