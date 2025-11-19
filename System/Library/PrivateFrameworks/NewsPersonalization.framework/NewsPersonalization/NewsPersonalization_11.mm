uint64_t sub_1C6C177B4(_DWORD *a1)
{
  v2 = sub_1C6D77550();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77650();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77A50();
  sub_1C6D77640();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  *a1 = v13;
  sub_1C6D77A40();
  sub_1C6D77540();
  v15 = v14;
  v16 = *(v3 + 8);
  v16(v6, v2);
  a1[1] = v15;
  sub_1C6D77A40();
  sub_1C6D77530();
  v18 = v17;
  result = (v16)(v6, v2);
  a1[2] = v18;
  return result;
}

uint64_t XavierEventProcessor.process<A>(processEvent:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v63 = sub_1C6D77E20();
  v80 = *(v63 - 8);
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C6D76A40();
  v73 = *(v78 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C18370(0, &qword_1EDCE6210, MEMORY[0x1E69E3698]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v55 - v15;
  v67 = sub_1C6D76F90();
  *&v68 = *(v67 - 8);
  v17 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C18370(0, &qword_1EDCE4FD8, sub_1C6C183C4);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v55 - v21;
  sub_1C6C183C4();
  v24 = v23;
  v25 = *(v23 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1C6D77290();
  result = sub_1C6D77260();
  if ((result & 1) == 0)
  {
    v75 = v16;
    v79 = a1;
    sub_1C6C171A4(a1, v22);
    v30 = (*(v25 + 48))(v22, 1, v24);
    v74 = v12;
    v76 = a2;
    v77 = a3;
    if (v30 == 1)
    {
      result = sub_1C6C18AA8(v22, &qword_1EDCE4FD8, sub_1C6C183C4);
    }

    else
    {
      sub_1C6C18B04(v22, v28);
      v31 = *(v4 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_sessionTracker);
      sub_1C6CE3B08(v28, *&v28[*(v24 + 48)], *&v28[*(v24 + 48) + 8]);
      result = sub_1C6C18B68(v28);
    }

    v32 = v4;
    v33 = *(v4 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_actionTranslators);
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = *(v4 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_jsonDecoder);
      v36 = v33 + 32;
      v71 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration;
      v72 = v35;
      v70 = (v73 + 8);
      v66 = (v68 + 48);
      v60 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_personalizer;
      v59 = (v68 + 32);
      v58 = (v80 + 8);
      v57 = OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor_sessionTracker;
      v56 = (v68 + 8);
      v37 = MEMORY[0x1E69E6158];
      v55 = xmmword_1C6D7E630;
      v68 = xmmword_1C6D7EB10;
      v73 = v32;
      do
      {
        v80 = v34;
        sub_1C6B16F28(v36, v81);
        v38 = v82;
        v39 = v83;
        __swift_project_boxed_opaque_existential_1(v81, v82);
        v40 = *(v32 + v71);

        v41 = v74;
        sub_1C6D78230();

        v42 = v75;
        (*(v39 + 8))(v79, v72, v41, v76, v77, v38, v39);
        __swift_destroy_boxed_opaque_existential_1(v81);
        (*v70)(v41, v78);
        v43 = v67;
        if ((*v66)(v42, 1, v67) == 1)
        {
          result = sub_1C6C18AA8(v42, &qword_1EDCE6210, MEMORY[0x1E69E3698]);
        }

        else
        {
          v44 = v61;
          (*v59)(v61, v42, v43);
          if (qword_1EDCE03B8 != -1)
          {
            swift_once();
          }

          v45 = qword_1EDCE03C0;
          sub_1C6B1D314();
          v64 = v46;
          v47 = swift_allocObject();
          *(v47 + 16) = v55;
          sub_1C6C18CFC(&unk_1EDCE6220, 255, MEMORY[0x1E69E3698]);
          v48 = sub_1C6D7A0E0();
          v50 = v49;
          *(v47 + 56) = v37;
          *(v47 + 64) = sub_1C6B2064C();
          *(v47 + 32) = v48;
          *(v47 + 40) = v50;
          sub_1C6D79AC0();
          v65 = v45;
          sub_1C6D78D30();

          v51 = v73;
          v52 = *(v73 + v60);
          sub_1C6BE4020(v44);
          v53 = *(v51 + v57);
          v54 = v62;
          sub_1C6D77250();
          sub_1C6CE3D30(v44, v54);
          (*v58)(v54, v63);
          result = (*v56)(v44, v67);
          v32 = v73;
        }

        v36 += 40;
        v34 = v80 - 1;
      }

      while (v80 != 1);
    }
  }

  return result;
}

void sub_1C6C18370(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6C183C4()
{
  if (!qword_1EDCE4FE0[0])
  {
    type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDCE4FE0);
    }
  }
}

id XavierEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XavierEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C6C1857C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7C0](a1, ObjectType);
}

uint64_t sub_1C6C185CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7C8](a1, ObjectType);
}

uint64_t sub_1C6C1861C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7D0](a1, ObjectType);
}

uint64_t sub_1C6C1866C(uint64_t a1)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7E0](a1, ObjectType);
}

uint64_t sub_1C6C186BC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7B8](a1, a2, ObjectType);
}

uint64_t sub_1C6C18714(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7D8](a1, a2, ObjectType);
}

uint64_t sub_1C6C1876C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x1EEDEB7E8](a1, a2, a3, a4, ObjectType);
}

uint64_t XavierEventProcessor.configurationManager(_:appConfigurationDidChange:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_1C6D76A40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - v12;
  v14 = [a2 personalizationTreatment];
  sub_1C6B7A268();

  v15 = *(v3 + OBJC_IVAR____TtC19NewsPersonalization20XavierEventProcessor__configuration);
  (*(v6 + 16))(v9, v13, v5);

  sub_1C6D78240();

  return (*(v6 + 8))(v13, v5);
}

uint64_t sub_1C6C18AA8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C6C18370(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C18B04(uint64_t a1, uint64_t a2)
{
  sub_1C6C183C4();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C18B68(uint64_t a1)
{
  sub_1C6C183C4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C18C48()
{
  if (!qword_1EDCE6068)
  {
    sub_1C6D77A70();
    sub_1C6C18CFC(&qword_1EDCE5EF0, 255, MEMORY[0x1E69B48F0]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6068);
    }
  }
}

uint64_t sub_1C6C18CFC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t Com_Apple_News_Personalization_SessionMessageVersion.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 7;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6C18DC0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C18E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B84C68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6C18E78()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C18EFC()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7DE8);
  __swift_project_value_buffer(v0, qword_1EC1D7DE8);
  sub_1C6B4A290();
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D824E0;
  v5 = v21 + v4 + *(v2 + 56);
  *(v21 + v4) = 0;
  *v5 = "SESSION_MESSAGE_VERSION_UNKNOWN";
  *(v5 + 8) = 31;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v21 + v4 + v3 + *(v2 + 56);
  *(v21 + v4 + v3) = 1;
  *v9 = "SESSION_MESSAGE_VERSION_ONE";
  *(v9 + 8) = 27;
  *(v9 + 16) = 2;
  v8();
  v10 = (v21 + v4 + 2 * v3);
  v11 = v10 + *(v2 + 56);
  *v10 = 2;
  *v11 = "SESSION_MESSAGE_VERSION_TWO";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v21 + v4 + 3 * v3);
  v13 = v12 + *(v2 + 56);
  *v12 = 3;
  *v13 = "SESSION_MESSAGE_VERSION_THREE";
  *(v13 + 1) = 29;
  v13[16] = 2;
  v8();
  v14 = (v21 + v4 + 4 * v3);
  v15 = v14 + *(v2 + 56);
  *v14 = 4;
  *v15 = "SESSION_MESSAGE_VERSION_FOUR";
  *(v15 + 1) = 28;
  v15[16] = 2;
  v8();
  v16 = (v21 + v4 + 5 * v3);
  v17 = v16 + *(v2 + 56);
  *v16 = 5;
  *v17 = "SESSION_MESSAGE_VERSION_FIVE";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v21 + v4 + 6 * v3);
  v19 = v18 + *(v2 + 56);
  *v18 = 6;
  *v19 = "SESSION_MESSAGE_VERSION_SIX";
  *(v19 + 1) = 27;
  v19[16] = 2;
  v8();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionMessageVersion._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6C1928C()
{
  result = qword_1EDCE4DD0;
  if (!qword_1EDCE4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE4DD0);
  }

  return result;
}

unint64_t sub_1C6C192E4()
{
  result = qword_1EDCE4DC0;
  if (!qword_1EDCE4DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE4DC0);
  }

  return result;
}

unint64_t sub_1C6C1933C()
{
  result = qword_1EC1D7E00;
  if (!qword_1EC1D7E00)
  {
    sub_1C6C19394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E00);
  }

  return result;
}

void sub_1C6C19394()
{
  if (!qword_1EC1D7E08)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7E08);
    }
  }
}

unint64_t sub_1C6C193E8()
{
  result = qword_1EDCE4DC8;
  if (!qword_1EDCE4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE4DC8);
  }

  return result;
}

uint64_t sub_1C6C1943C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A10 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7DE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Com_Apple_News_Personalization_GroupType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Com_Apple_News_Personalization_GroupType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1C6C19548(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C6C19564(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1C6C19594(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_1C6D783E0();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v50 = &v46 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v51 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v46 - v13;
  sub_1C6B7A08C();
  v55 = *(v14 - 8);
  v56 = v14;
  v15 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C6D75F80();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v23 = sub_1C6D75F60();
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  if (qword_1EDCE2380 != -1)
  {
    swift_once();
  }

  sub_1C6B1D314();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C6D7E630;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1C6B2064C();
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  MEMORY[0x1EEE9AC00](v27);
  *(&v46 - 4) = a3;
  *(&v46 - 3) = v23;
  *(&v46 - 2) = v25;
  *(&v46 - 8) = a2 & 1;
  v28 = v61;
  sub_1C6D784F0();
  if (v28)
  {
  }

  else
  {

    v29 = v56;
    sub_1C6D78500();
    a3 = v58;
    v30 = v59;

    v31 = [v30 tagSuggestionsConfiguration];

    if (v31)
    {
      sub_1C6C1A688(v31, a2 & 1, &v60);

      v32 = v52;
      sub_1C6D783C0();
      sub_1C6BB320C();
      v33 = sub_1C6D786C0();
      v48 = v31;
      v47 = v33;
      v34 = v17;
      v35 = *(v53 + 8);
      v36 = v32;
      v37 = v54;
      v35(v36, v54);

      v38 = v51;
      sub_1C6D783C0();
      v61 = v34;
      v53 = sub_1C6D786D0();
      v35(v38, v37);

      v39 = v50;
      sub_1C6D783C0();
      v41 = v37;
      v52 = sub_1C6D786C0();
      v35(v39, v37);

      v42 = v49;
      sub_1C6D783C0();
      sub_1C6C1A7C0(&v60);
      v43 = sub_1C6D786D0();
      v35(v42, v41);
      v44 = sub_1C6C1A420(v47, v53);

      v57 = v44;
      sub_1C6C1A7F0(0, &unk_1EDCDF9E8, sub_1C6C1A854, MEMORY[0x1E69E62F8]);
      sub_1C6C1A8B4();
      a3 = sub_1C6D79680();

      v45 = sub_1C6C1A420(v52, v43);

      v57 = v45;
      sub_1C6D79680();

      (*(v55 + 8))(v61, v56);
    }

    else
    {
      sub_1C6C1A634();
      swift_allocError();
      swift_willThrow();
      (*(v55 + 8))(v17, v29);
    }
  }

  return a3;
}

uint64_t sub_1C6C19D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v52 = a5;
  v11 = sub_1C6D78810();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v45 - v19;
  v21 = [*(a1 + 24) tagSuggestionsConfiguration];
  if (v21)
  {
    v22 = v21;
    v49 = a6;
    v50 = a4;
    sub_1C6D787D0();
    v23 = [v22 recipeEventAggregationConfiguration];
    v54 = v11;
    v48 = a3;
    v53 = v20;
    if (v23)
    {
      v46 = v22;
      v47 = v12;
      v24 = v23;
      v25 = [v24 maxSessionEvents];
      sub_1C6BFEC6C([v24 eventConditions], v56);
      v26 = [v24 inputNames];
      v27 = sub_1C6D79780();

      v59 = v25;
      v60 = v56[0];
      v61 = v56[1];
      v62 = v57;
      v63 = v27;
      v28 = *(a2 + 32);
      MEMORY[0x1EEE9AC00](v29);
      *(&v45 - 2) = &v59;
      *(&v45 - 1) = a2;
      os_unfair_lock_lock((v28 + 24));
      v30 = v55;
      sub_1C6C1A93C((v28 + 16), v18);
      v55 = v30;
      v31 = (v28 + 24);
      if (v30)
      {
        os_unfair_lock_unlock(v31);
        sub_1C6BC624C(&v59);
        v12 = v47;
        if (qword_1EDCE2380 != -1)
        {
          swift_once();
        }

        v45 = qword_1EDCE2388;
        sub_1C6D79AA0();
        sub_1C6B1D314();
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1C6D7EB10;
        v33 = MEMORY[0x1E69E6158];
        *(v32 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1C6B2064C();
        *(v32 + 64) = v34;
        v35 = v50;
        *(v32 + 32) = a3;
        *(v32 + 40) = v35;
        *&v56[0] = 0;
        *(&v56[0] + 1) = 0xE000000000000000;
        v36 = v55;
        v64 = v55;
        sub_1C6B10A98(0, &qword_1EDCEA410);

        sub_1C6D79E60();
        v37 = v56[0];
        *(v32 + 96) = v33;
        *(v32 + 104) = v34;
        *(v32 + 72) = v37;
        sub_1C6D78D30();

        v55 = 0;
        v11 = v54;
        v20 = v53;
      }

      else
      {
        os_unfair_lock_unlock(v31);
        sub_1C6BC624C(&v59);

        v12 = v47;
        v20 = v53;
        v11 = v54;
        (*(v47 + 8))(v53, v54);
        (*(v12 + 32))(v20, v18, v11);
      }

      v22 = v46;
    }

    sub_1C6C1A688(v22, v52 & 1, &v58);
    (*(v12 + 16))(v51, v20, v11);
    sub_1C6C1A7F0(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
    v39 = *(sub_1C6D783E0() - 8);
    v40 = v12;
    v41 = *(v39 + 72);
    v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v43 = v22;
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1C6D80210;

    sub_1C6D783C0();

    sub_1C6D783C0();

    sub_1C6D783C0();

    sub_1C6D783C0();
    sub_1C6C1A7C0(&v58);
    sub_1C6C07550(v44);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    sub_1C6D78790();

    return (*(v40 + 8))(v53, v54);
  }

  else
  {
    sub_1C6C1A634();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_1C6C1A420(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1C6B395B4(0, v6, 0);
  v29 = v5;
  v30 = v4;
  v27 = a1;
  v28 = v6;
  v26 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v9;
      v31 = *(v9 - 1);
      v11 = *v8;
      v13 = *(v32 + 16);
      v12 = *(v32 + 24);

      if (v13 >= v12 >> 1)
      {
        result = sub_1C6B395B4((v12 > 1), v13 + 1, 1);
      }

      *(v32 + 16) = v13 + 1;
      v14 = v32 + 24 * v13;
      --v5;
      *(v14 + 32) = v31;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v29;
    v15 = v30;
    if (v30 <= v29)
    {
      return v32;
    }

    v17 = v28;
    v18 = (v27 + 16 * v28 + 40);
    while (v17 < v15)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        if (v17 >= v16)
        {
          goto LABEL_25;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = *(v26 + 32 + 4 * v17);
        v24 = *(v32 + 16);
        v23 = *(v32 + 24);

        if (v24 >= v23 >> 1)
        {
          result = sub_1C6B395B4((v23 > 1), v24 + 1, 1);
        }

        *(v32 + 16) = v24 + 1;
        v25 = v32 + 24 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v20;
        *(v25 + 48) = v22;
        ++v17;
        v18 += 2;
        v16 = v29;
        v15 = v30;
        if (v19 != v30)
        {
          continue;
        }
      }

      return v32;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1C6C1A634()
{
  result = qword_1EC1D7E10;
  if (!qword_1EC1D7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E10);
  }

  return result;
}

void sub_1C6C1A688(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = &selRef_bundleOutputConfiguration;
  if ((a2 & 1) == 0)
  {
    v4 = &selRef_nonBundleOutputConfiguration;
  }

  v5 = [a1 *v4];
  v6 = [v5 channelIDsOutputName];
  v21 = sub_1C6D795A0();
  v8 = v7;

  v9 = [v5 channelScoresOutputName];
  v10 = sub_1C6D795A0();
  v12 = v11;

  v13 = [v5 topicIDsOutputName];
  v14 = sub_1C6D795A0();
  v16 = v15;

  v17 = [v5 topicScoresOutputName];
  v18 = sub_1C6D795A0();
  v20 = v19;

  *a3 = v21;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v12;
  a3[4] = v14;
  a3[5] = v16;
  a3[6] = v18;
  a3[7] = v20;
}

void sub_1C6C1A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C1A854()
{
  if (!qword_1EDCE6680)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE6680);
    }
  }
}

unint64_t sub_1C6C1A8B4()
{
  result = qword_1EC1D7E18;
  if (!qword_1EC1D7E18)
  {
    sub_1C6C1A7F0(255, &unk_1EDCDF9E8, sub_1C6C1A854, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E18);
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

uint64_t sub_1C6C1A96C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C6C1A9B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C6C1AA28()
{
  result = qword_1EC1D7E20;
  if (!qword_1EC1D7E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E20);
  }

  return result;
}

uint64_t sub_1C6C1AAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1C6B396C4(0, v1, 0);
  v2 = v26;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_1C6D79CC0();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v23 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v11 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(v7 + 36);
    v12 = *(*(v7 + 56) + 8 * v6);
    swift_getKeyPath();

    swift_getAtKeyPath();

    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      result = sub_1C6B396C4((v13 > 1), v14 + 1, 1);
    }

    *(v26 + 16) = v14 + 1;
    *(v26 + 8 * v14 + 32) = v25;
    v9 = 1 << *(v7 + 32);
    if (v6 >= v9)
    {
      goto LABEL_22;
    }

    v3 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v11);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(v7 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v10 = v23;
    }

    else
    {
      v17 = v11 << 6;
      v18 = v11 + 1;
      v19 = (a1 + 72 + 8 * v11);
      v10 = v23;
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1C6B360A8(v6, v24, 0);
          v7 = a1;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v6, v24, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v9;
    if (v8 == v10)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t ChannelPickerSuggestionType.hashValue.getter()
{
  v1 = *v0;
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](v1);
  return sub_1C6D7A2B0();
}

uint64_t ChannelPickerSuggestion.suggestionID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ChannelPickerSuggestionsService.suggestions(count:type:)(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 > 1)
  {
    return sub_1C6C1AE00();
  }

  else
  {
    return sub_1C6C1B098(a1, v2 == 0);
  }
}

uint64_t sub_1C6C1AE00()
{
  v1 = [*(v0 + 88) mostFrequentLocation];
  if (v1)
  {
    v2 = v1;
    sub_1C6D77FA0();
    v3 = sub_1C6D77F90();
    if (v3)
    {
      if (qword_1EC1D5A70 != -1)
      {
        swift_once();
      }

      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C6D7E630;
      v5 = [v2 description];
      v6 = sub_1C6D795A0();
      v8 = v7;

      *(v4 + 56) = MEMORY[0x1E69E6158];
      *(v4 + 64) = sub_1C6B2064C();
      *(v4 + 32) = v6;
      *(v4 + 40) = v8;
      sub_1C6D79AC0();
      sub_1C6D78D30();
    }

    MEMORY[0x1EEE9AC00](v3);
    sub_1C6C1E738();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    v12 = sub_1C6D78350();

    return v12;
  }

  else
  {
    if (qword_1EC1D5A70 != -1)
    {
      swift_once();
    }

    sub_1C6D79AA0();
    sub_1C6D78D30();
    sub_1C6C1E7B4();
    swift_allocError();
    *v14 = 0;
    sub_1C6C1E738();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    return sub_1C6D782F0();
  }
}

uint64_t sub_1C6C1B098(uint64_t a1, char a2)
{
  v5 = v2[8];
  v6 = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v5);
  (*(v6 + 8))(&v193, 0, v5, v6);
  __swift_project_boxed_opaque_existential_1(&v193, v195);
  v7 = sub_1C6C1C5C4();
  __swift_destroy_boxed_opaque_existential_1(&v193);
  v8 = sub_1C6C1CDCC(0, a2);
  v16 = v8;
  if (!v8)
  {

    sub_1C6C1E7B4();
    swift_allocError();
    *v39 = 0;
    sub_1C6C1E738();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    return sub_1C6D782F0();
  }

  v186 = a1;
  v174 = a2;
  v17 = *(v8 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v19 = 0;
    v191 = v8 + 32;
    v20 = v7 + 56;
    v188 = *(v8 + 16);
    while (1)
    {
      if (v19 >= *(v16 + 16))
      {
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
        goto LABEL_172;
      }

      v21 = (v191 + 16 * v19);
      v23 = *v21;
      v22 = v21[1];
      ++v19;
      if (!*(v7 + 16))
      {
        break;
      }

      v24 = *(v7 + 40);
      sub_1C6D7A260();

      sub_1C6D79610();
      v25 = sub_1C6D7A2B0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      if ((*(v20 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = (*(v7 + 48) + 16 * v27);
          v30 = *v29 == v23 && v29[1] == v22;
          if (v30 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v20 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        if (v19 == v17)
        {
          goto LABEL_26;
        }
      }

      else
      {
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6B39280(0, *(v18 + 16) + 1, 1);
        }

        v32 = *(v18 + 16);
        v31 = *(v18 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1C6B39280((v31 > 1), v32 + 1, 1);
        }

        *(v18 + 16) = v32 + 1;
        v33 = v18 + 16 * v32;
        *(v33 + 32) = v23;
        *(v33 + 40) = v22;
        v17 = v188;
        if (v19 == v188)
        {
          goto LABEL_26;
        }
      }
    }

    goto LABEL_19;
  }

LABEL_26:

  sub_1C6B75C84(v186, v18);
  v165 = v36;
  v37 = v36 >> 1;
  v172 = v34;
  v192 = v36 >> 1;
  v178 = v35;
  if (v35 == v36 >> 1)
  {
    v38 = MEMORY[0x1E69E7CC8];
    goto LABEL_130;
  }

  v189 = v7 + 56;
  v43 = v34 + 8;
  v161 = v37 - 1;
  v175 = v35 - 1;
  v176 = v34 + 8 + 16 * v35;
  v38 = MEMORY[0x1E69E7CC8];
  v44 = -v37;
  v45 = v35;
  v162 = v34 + 8;
  do
  {
    v169 = v38;
    v46 = (v43 + 16 * v45);
    v47 = v45;
    while (1)
    {
      if (v45 < v178 || v47 >= v37)
      {
        goto LABEL_170;
      }

      v182 = v47;
      v49 = *(v46 - 1);
      v48 = *v46;
      sub_1C6B18CB8(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1C6D7E630;
      v180 = v49;
      *(v50 + 32) = v49;
      *(v50 + 40) = v48;
      v184 = v48;
      swift_bridgeObjectRetain_n();
      v51 = sub_1C6C1CDCC(v50, v174 & 1);

      if (v51)
      {
        break;
      }

      if (qword_1EC1D5A70 != -1)
      {
        swift_once();
      }

      v47 = v182 + 1;
      sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1C6D7E630;
      *(v52 + 56) = MEMORY[0x1E69E6158];
      *(v52 + 64) = sub_1C6B2064C();
      *(v52 + 32) = v180;
      *(v52 + 40) = v48;

      sub_1C6D78D30();

      v46 += 2;
      if (v37 == v182 + 1)
      {
        v38 = v169;
        goto LABEL_130;
      }
    }

    v53 = *(v51 + 16);
    if (v53)
    {
      v54 = 0;
      v167 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        while (1)
        {
          if (v54 >= *(v51 + 16))
          {
            goto LABEL_171;
          }

          v55 = (v51 + 32 + 16 * v54);
          v57 = *v55;
          v56 = v55[1];
          ++v54;
          if (*(v7 + 16))
          {
            break;
          }

LABEL_53:
          v65 = v175;
          v66 = v176;
          while (v44 + v65 != -1)
          {
            if (++v65 >= v37)
            {
              __break(1u);
              goto LABEL_165;
            }

            if (*(v66 - 1) != v57 || *v66 != v56)
            {
              v66 += 2;
              if ((sub_1C6D7A130() & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_40;
          }

          v68 = v167;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6B39280(0, *(v167 + 16) + 1, 1);
            v68 = v167;
          }

          v70 = *(v68 + 16);
          v69 = *(v68 + 24);
          if (v70 >= v69 >> 1)
          {
            sub_1C6B39280((v69 > 1), v70 + 1, 1);
            v68 = v167;
          }

          *(v68 + 16) = v70 + 1;
          v167 = v68;
          v71 = v68 + 16 * v70;
          *(v71 + 32) = v57;
          *(v71 + 40) = v56;
          v37 = v192;
          if (v54 == v53)
          {
            goto LABEL_69;
          }
        }

        v58 = *(v7 + 40);
        sub_1C6D7A260();

        sub_1C6D79610();
        v59 = sub_1C6D7A2B0();
        v60 = -1 << *(v7 + 32);
        v61 = v59 & ~v60;
        if (((*(v189 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
        {
          goto LABEL_53;
        }

        v62 = ~v60;
        while (1)
        {
          v63 = (*(v7 + 48) + 16 * v61);
          v64 = *v63 == v57 && v63[1] == v56;
          if (v64 || (sub_1C6D7A130() & 1) != 0)
          {
            break;
          }

          v61 = (v61 + 1) & v62;
          if (((*(v189 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

LABEL_40:

        if (v54 == v53)
        {
          goto LABEL_69;
        }
      }
    }

    v167 = MEMORY[0x1E69E7CC0];
LABEL_69:

    v72 = *(v167 + 16);
    if (v72 >= 3)
    {
      v73 = 3;
    }

    else
    {
      v73 = *(v167 + 16);
    }

    if (v72)
    {
      v74 = 0;
      v168 = MEMORY[0x1E69E7CC8];
      v164 = v73;
      while (1)
      {
        if (v74 == v73)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
          goto LABEL_176;
        }

        v166 = v74;
        v79 = (v167 + 32 + 16 * v74);
        v81 = *v79;
        v80 = v79[1];
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_1C6D7E630;
        v171 = v81;
        *(v82 + 32) = v81;
        *(v82 + 40) = v80;
        v173 = v80;
        swift_bridgeObjectRetain_n();
        v83 = sub_1C6C1CDCC(v82, v174 & 1);

        if (!v83)
        {
          if (qword_1EC1D5A70 != -1)
          {
            swift_once();
          }

          sub_1C6D79AA0();
          sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_1C6D7E630;
          *(v104 + 56) = MEMORY[0x1E69E6158];
          *(v104 + 64) = sub_1C6B2064C();
          *(v104 + 32) = v81;
          *(v104 + 40) = v80;

          sub_1C6D78D30();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v193 = v168;
          v106 = sub_1C6B5DEA8(v81, v80);
          v108 = *(v168 + 16);
          v109 = (v107 & 1) == 0;
          v110 = __OFADD__(v108, v109);
          v111 = v108 + v109;
          if (!v110)
          {
            v112 = v107;
            if (*(v168 + 24) >= v111)
            {
              v73 = v164;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v120 = v106;
                sub_1C6B73864();
                v106 = v120;
                v73 = v164;
              }
            }

            else
            {
              sub_1C6B6FFA8(v111, isUniquelyReferenced_nonNull_native);
              v106 = sub_1C6B5DEA8(v81, v80);
              v73 = v164;
              if ((v112 & 1) != (v113 & 1))
              {
LABEL_178:
                result = sub_1C6D7A1C0();
                __break(1u);
                return result;
              }
            }

            v114 = v193;
            v168 = v193;
            if (v112)
            {
              v115 = v193[7];
              v116 = *(v115 + 8 * v106);
              *(v115 + 8 * v106) = MEMORY[0x1E69E7CC0];

LABEL_127:
              v77 = v166;
              goto LABEL_76;
            }

            v193[(v106 >> 6) + 8] |= 1 << v106;
            v117 = (v114[6] + 16 * v106);
            *v117 = v171;
            v117[1] = v80;
            *(v114[7] + 8 * v106) = MEMORY[0x1E69E7CC0];
            v118 = v114[2];
            v110 = __OFADD__(v118, 1);
            v119 = v118 + 1;
            if (!v110)
            {
              v114[2] = v119;
              goto LABEL_127;
            }

LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

LABEL_176:
          __break(1u);
          goto LABEL_177;
        }

        v84 = *(v83 + 16);
        if (!v84)
        {
          v86 = MEMORY[0x1E69E7CC0];
          goto LABEL_119;
        }

        v85 = 0;
        v86 = MEMORY[0x1E69E7CC0];
        do
        {
          v163 = v86;
          while (1)
          {
            if (v85 >= *(v83 + 16))
            {
              goto LABEL_169;
            }

            v87 = (v83 + 32 + 16 * v85);
            v88 = *v87;
            v89 = v87[1];
            ++v85;
            if (*(v7 + 16))
            {
              v90 = *(v7 + 40);
              sub_1C6D7A260();

              sub_1C6D79610();
              v91 = sub_1C6D7A2B0();
              v92 = -1 << *(v7 + 32);
              v93 = v91 & ~v92;
              if ((*(v189 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
              {
                v94 = ~v92;
                do
                {
                  v95 = (*(v7 + 48) + 16 * v93);
                  v96 = *v95 == v88 && v95[1] == v89;
                  if (v96 || (sub_1C6D7A130() & 1) != 0)
                  {
                    goto LABEL_83;
                  }

                  v93 = (v93 + 1) & v94;
                }

                while (((*(v189 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) != 0);
              }
            }

            else
            {
            }

            v97 = v175;
            v98 = v176;
            while (v44 + v97 != -1)
            {
              if (++v97 >= v192)
              {
LABEL_163:
                __break(1u);

                swift_unknownObjectRelease();

                if (qword_1EC1D5A70 == -1)
                {
LABEL_3:
                  sub_1C6D79AA0();
                  sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
                  v9 = swift_allocObject();
                  *(v9 + 16) = xmmword_1C6D7E630;
                  v193 = 0;
                  v194 = 0xE000000000000000;
                  sub_1C6B10A98(0, &qword_1EDCEA410);
                  sub_1C6D79E60();
                  v11 = v193;
                  v10 = v194;
                  *(v9 + 56) = MEMORY[0x1E69E6158];
                  *(v9 + 64) = sub_1C6B2064C();
                  *(v9 + 32) = v11;
                  *(v9 + 40) = v10;
                  sub_1C6D78D30();

                  sub_1C6C1E738();
                  v13 = *(v12 + 48);
                  v14 = *(v12 + 52);
                  swift_allocObject();
                  return sub_1C6D782F0();
                }

LABEL_172:
                swift_once();
                goto LABEL_3;
              }

              if (*(v98 - 1) != v88 || *v98 != v89)
              {
                v98 += 2;
                if ((sub_1C6D7A130() & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_83;
            }

            v193 = v81;
            v194 = v173;
            sub_1C6B16CF0();
            if ((sub_1C6D79C30() & 1) == 0)
            {
              break;
            }

LABEL_83:

            v37 = v192;
            if (v85 == v84)
            {
              v86 = v163;
              goto LABEL_119;
            }
          }

          v86 = v163;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6B39280(0, *(v163 + 16) + 1, 1);
            v86 = v163;
          }

          v101 = *(v86 + 16);
          v100 = *(v86 + 24);
          v102 = v101 + 1;
          if (v101 >= v100 >> 1)
          {
            sub_1C6B39280((v100 > 1), v101 + 1, 1);
            v102 = v101 + 1;
            v86 = v163;
          }

          *(v86 + 16) = v102;
          v103 = v86 + 16 * v101;
          *(v103 + 32) = v88;
          *(v103 + 40) = v89;
          v37 = v192;
        }

        while (v85 != v84);
LABEL_119:

        if (*(v86 + 16) >= 4uLL)
        {
          sub_1C6B6E3BC(v86, v86 + 32, 0, 7uLL);
          v76 = v75;
        }

        else
        {

          v76 = v86;
        }

        v77 = v166;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v193 = v168;
        sub_1C6BC558C(v76, v171, v173, v78);

        v168 = v193;
        v73 = v164;
LABEL_76:
        v74 = v77 + 1;
        if (v74 == v73)
        {
          goto LABEL_129;
        }
      }
    }

    v168 = MEMORY[0x1E69E7CC8];
LABEL_129:
    v45 = v182 + 1;
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v193 = v169;
    sub_1C6BC5560(v168, v180, v184, v121);

    v38 = v193;
    v43 = v162;
  }

  while (v161 != v182);
LABEL_130:

  v122 = v172;
  v123 = v178;
  sub_1C6C1E808(v172, v178, v165, v38);

  v124 = v37 - v178;
  if (__OFSUB__(v37, v178))
  {
    goto LABEL_174;
  }

  v125 = v38;
  if (v124)
  {
    v193 = MEMORY[0x1E69E7CC0];
    sub_1C6B39714(0, v124 & ~(v124 >> 63), 0);
    if (v124 < 0)
    {
      goto LABEL_175;
    }

    v126 = 0;
    v127 = v193;
    v177 = v37 - v178;
    v170 = v38;
    while (2)
    {
      v128 = v126 + 1;
      if (__OFADD__(v126, 1))
      {
        goto LABEL_166;
      }

      if (v123 >= v37 || v126 >= v124)
      {
        goto LABEL_167;
      }

      v190 = v127;
      v129 = (v122 + 16 * v123);
      v131 = *v129;
      v130 = v129[1];
      v132 = *(v125 + 16);

      v185 = v128;
      v187 = v130;
      if (v132 && (v133 = sub_1C6B5DEA8(v131, v130), (v134 & 1) != 0))
      {
        v179 = v123;
        v135 = *(*(v125 + 56) + 8 * v133);
        v136 = v135 + 64;
        v137 = 1 << *(v135 + 32);
        if (v137 < 64)
        {
          v138 = ~(-1 << v137);
        }

        else
        {
          v138 = -1;
        }

        v139 = v138 & *(v135 + 64);
        v140 = (v137 + 63) >> 6;
        v183 = v135;
        swift_bridgeObjectRetain_n();
        v141 = 0;
        v142 = MEMORY[0x1E69E7CC0];
        v181 = v131;
        if (v139)
        {
          goto LABEL_147;
        }

        while (1)
        {
          v143 = v141 + 1;
          if (__OFADD__(v141, 1))
          {
            __break(1u);
            goto LABEL_163;
          }

          if (v143 >= v140)
          {
            break;
          }

          v139 = *(v136 + 8 * v143);
          ++v141;
          if (v139)
          {
            v141 = v143;
            do
            {
LABEL_147:
              v144 = __clz(__rbit64(v139)) | (v141 << 6);
              v145 = (*(v183 + 48) + 16 * v144);
              v146 = *v145;
              v147 = v145[1];
              v148 = *(*(v183 + 56) + 8 * v144);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v142 = sub_1C6B66700(0, *(v142 + 2) + 1, 1, v142);
              }

              v150 = *(v142 + 2);
              v149 = *(v142 + 3);
              if (v150 >= v149 >> 1)
              {
                v142 = sub_1C6B66700((v149 > 1), v150 + 1, 1, v142);
              }

              v139 &= v139 - 1;
              *(v142 + 2) = v150 + 1;
              v151 = &v142[24 * v150];
              *(v151 + 4) = v146;
              *(v151 + 5) = v147;
              *(v151 + 6) = v148;
              v131 = v181;
            }

            while (v139);
          }
        }

        v122 = v172;
        v123 = v179;
        v37 = v192;
        v125 = v170;
      }

      else
      {
        v142 = MEMORY[0x1E69E7CC0];
      }

      v127 = v190;
      v193 = v190;
      v153 = *(v190 + 16);
      v152 = *(v190 + 24);
      if (v153 >= v152 >> 1)
      {
        sub_1C6B39714((v152 > 1), v153 + 1, 1);
        v127 = v193;
      }

      *(v127 + 16) = v153 + 1;
      v154 = (v127 + 24 * v153);
      v154[4] = v131;
      v154[5] = v187;
      v154[6] = v142;
      v110 = __OFADD__(v123++, 1);
      if (v110)
      {
        goto LABEL_168;
      }

      v126 = v185;
      v124 = v177;
      if (v185 == v177)
      {
        v155 = v127;

        v156 = v155;
        goto LABEL_161;
      }

      continue;
    }
  }

  v156 = MEMORY[0x1E69E7CC0];
LABEL_161:
  v193 = v156;
  sub_1C6C1E738();
  v158 = *(v157 + 48);
  v159 = *(v157 + 52);
  swift_allocObject();
  v160 = sub_1C6D78300();
  swift_unknownObjectRelease();
  return v160;
}

void sub_1C6C1C248(void *a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3[8];
  v9 = a3[9];
  __swift_project_boxed_opaque_existential_1(a3 + 5, v8);
  (*(v9 + 8))(v49, 0, v8, v9);
  __swift_project_boxed_opaque_existential_1(v49, v49[3]);
  v10 = sub_1C6C1C5C4();
  __swift_destroy_boxed_opaque_existential_1(v49);
  v11 = [a1 tagIDsForLocation:a4 searchOption:(a2 & 1) == 0];
  v12 = sub_1C6D79780();

  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = 0;
    v48 = *(v12 + 16);
    v16 = v10 + 56;
    do
    {
      if (v15 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v17 = (v12 + 32 + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      ++v15;
      if (*(v10 + 16))
      {
        v20 = *(v10 + 40);
        sub_1C6D7A260();

        sub_1C6D79610();
        v21 = sub_1C6D7A2B0();
        v22 = -1 << *(v10 + 32);
        v23 = v21 & ~v22;
        if ((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          v24 = ~v22;
          while (1)
          {
            v25 = (*(v10 + 48) + 16 * v23);
            v26 = *v25 == v19 && v25[1] == v18;
            if (v26 || (sub_1C6D7A130() & 1) != 0)
            {
              break;
            }

            v23 = (v23 + 1) & v24;
            if (((*(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          continue;
        }
      }

      else
      {
      }

LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6B39280(0, *(v14 + 16) + 1, 1);
        v14 = v50;
      }

      v29 = *(v14 + 16);
      v28 = *(v14 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6B39280((v28 > 1), v29 + 1, 1);
        v14 = v50;
      }

      *(v14 + 16) = v29 + 1;
      v30 = v14 + 16 * v29;
      *(v30 + 32) = v19;
      *(v30 + 40) = v18;
      v13 = v48;
    }

    while (v15 != v13);
  }

  sub_1C6B75C84(a5, v14);
  v34 = v33 >> 1;
  v35 = (v33 >> 1) - v32;
  if (__OFSUB__(v33 >> 1, v32))
  {
    goto LABEL_36;
  }

  if (!v35)
  {
LABEL_32:
    swift_unknownObjectRelease();
    return;
  }

  v36 = v31;
  v37 = v32;
  v49[0] = MEMORY[0x1E69E7CC0];
  sub_1C6B39714(0, v35 & ~(v35 >> 63), 0);
  if ((v35 & 0x8000000000000000) == 0)
  {
    v38 = v49[0];
    if (v37 <= v34)
    {
      v39 = v34;
    }

    else
    {
      v39 = v37;
    }

    v40 = v39 - v37;
    v41 = (v36 + 16 * v37 + 8);
    while (v40)
    {
      v43 = *(v41 - 1);
      v42 = *v41;
      v49[0] = v38;
      v45 = *(v38 + 16);
      v44 = *(v38 + 24);

      if (v45 >= v44 >> 1)
      {
        sub_1C6B39714((v44 > 1), v45 + 1, 1);
        v38 = v49[0];
      }

      *(v38 + 16) = v45 + 1;
      v46 = (v38 + 24 * v45);
      v46[4] = v43;
      v46[5] = v42;
      v46[6] = MEMORY[0x1E69E7CC0];
      --v40;
      v41 += 2;
      if (!--v35)
      {
        goto LABEL_32;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C6C1C5C4()
{
  v4 = MEMORY[0x1E69E7CD0];
  v0 = sub_1C6D76070();
  sub_1C6CDE994(v0);
  v1 = sub_1C6D76080();
  sub_1C6CDE994(v1);
  v2 = sub_1C6D76090();
  sub_1C6CDE994(v2);
  return v4;
}

void sub_1C6C1C648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_1C6C1E8B4(0, &qword_1EC1D7E50, sub_1C6C1EB90, MEMORY[0x1E69D6B18]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();

  sub_1C6D78350();
  v18 = a5[15];
  v19 = a5[16];
  __swift_project_boxed_opaque_existential_1(a5 + 12, v18);
  (*(v19 + 24))(0, v18, v19);
  v20 = sub_1C6D78210();
  sub_1C6D781F0();

  v21 = swift_allocObject();
  v21[2] = sub_1C6C1EB50;
  v21[3] = v14;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a3;
  v21[8] = a4;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1C6C1ECC0;
  *(v22 + 24) = v21;

  v23 = a6;

  v24 = sub_1C6D78210();
  sub_1C6D782B0();
}

void sub_1C6C1C86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1C6C1ED30;
  *(v10 + 24) = v8;
  v12[4] = sub_1C6C1ED38;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1C6C1C9F4;
  v12[3] = &block_descriptor_4;
  v11 = _Block_copy(v12);

  [v9 fetchLocalAreasProvider_];
  _Block_release(v11);
}

void sub_1C6C1C980(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  swift_unknownObjectRetain();
  v5 = a2;
  a3(v6);
  swift_unknownObjectRelease();
}

uint64_t sub_1C6C1C9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1C6C1CA74(void *a1, id a2, uint64_t a3, void (*a4)(void), int a5, void *a6, uint64_t a7, uint64_t a8, void (*a9)(void), uint64_t a10)
{
  if (a1)
  {
    v14 = *(a3 + 16);
    if (a2)
    {
      swift_unknownObjectRetain();
      v15 = a2;
      if (qword_1EC1D5A70 != -1)
      {
        swift_once();
      }

      sub_1C6D79AA0();
      sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1C6D7E630;
      swift_getErrorValue();
      v17 = sub_1C6D7A1D0();
      v19 = v18;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1C6B2064C();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      sub_1C6D78D30();

      if (v14)
      {
        v20 = v14;
        v21 = [v20 channelPickerSuggestionsConfiguration];
        v22 = a8;
        if (v21)
        {
          v23 = v21;
          v24 = [v21 filterLocationSuggestionsOnlyToAppleNewsLocal];
        }

        else
        {
          v24 = 0;
        }
      }

      else
      {
        v24 = 0;
        v22 = a8;
      }

      sub_1C6C1C248(a1, v24, a6, a7, v22);
      a4();

      swift_unknownObjectRelease();
      return;
    }

    if (v14)
    {
      swift_unknownObjectRetain();
      v29 = v14;
      v30 = [v29 channelPickerSuggestionsConfiguration];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 filterLocationSuggestionsOnlyToAppleNewsLocal];

LABEL_24:
        sub_1C6C1C248(a1, v32, a6, a7, a8);
        a4();
        swift_unknownObjectRelease();

        return;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v32 = 0;
    goto LABEL_24;
  }

  if (a2)
  {
    v25 = a2;
    (a9)(a2);
    v26 = a2;
  }

  else
  {
    sub_1C6C1E7B4();
    v33 = swift_allocError();
    *v34 = 0;
    a9();
    v26 = v33;
  }
}

uint64_t sub_1C6C1CDCC(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_1C6D783E0();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D75F80();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F70();
  v18 = sub_1C6D75F60();
  v20 = v19;
  (*(v14 + 8))(v17, v13);
  if (qword_1EC1D5A70 != -1)
  {
    swift_once();
  }

  sub_1C6B1A47C(0, &qword_1EDCEA8A0, &qword_1EDCEA890, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C6D7E630;
  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1C6B2064C();
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;

  sub_1C6D79AC0();
  sub_1C6D78D30();

  v22 = *(v3 + 24);
  v23 = swift_allocObject();
  v24 = swift_weakInit();
  MEMORY[0x1EEE9AC00](v24);
  *(&v32 - 6) = v23;
  *(&v32 - 40) = a2 & 1;
  *(&v32 - 4) = a1;
  *(&v32 - 3) = v18;
  *(&v32 - 2) = v20;
  v25 = v40;
  sub_1C6D784F0();
  if (v25)
  {
  }

  else
  {

    v26 = v37;
    sub_1C6D78500();
    v22 = v38;
    v27 = v39;

    v28 = [v27 channelPickerSuggestionsConfiguration];

    if (v28)
    {
      sub_1C6C1D70C(*(v3 + 16), a2 & 1);
      v30 = v33;
      sub_1C6D783C0();
      sub_1C6BB320C();
      v22 = sub_1C6D786C0();

      (*(v34 + 8))(v30, v35);
    }

    else
    {
      sub_1C6C1E7B4();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }

    (*(v36 + 8))(v12, v26);
  }

  return v22;
}

void sub_1C6C1D2AC(uint64_t a1@<X0>, char a2@<W2>, char *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v42 = a4;
  v39 = a3;
  v41 = a6;
  sub_1C6C1E8B4(0, &qword_1EDCEA320, MEMORY[0x1E6996150], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v38 - v12;
  v14 = sub_1C6D783E0();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = sub_1C6D78810();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = *(a1 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [v18 channelPickerSuggestionsConfiguration];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1C6C1D70C(*(v20 + 16), a2 & 1);
      if (!v6)
      {
        v25 = &selRef_bundleInputOutputConfiguration;
        if (!*(v20 + 16))
        {
          v25 = &selRef_nonBundleInputOutputConfiguration;
        }

        v38[2] = v24;
        v26 = *v25;
        v38[1] = v23;
        v27 = [v22 v26];
        v28 = [v27 contextFeatureKey];
        v38[3] = a5;
        v29 = v28;

        sub_1C6D795A0();
        v38[0] = v30;

        sub_1C6C1D7B8(v39, v20, v22);
        sub_1C6D78800();
        sub_1C6D783C0();
        sub_1C6D78740();
        v31 = sub_1C6D78760();
        (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
        sub_1C6D78830();
        v39 = "st ID %{public}@";
        sub_1C6C1E8B4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], MEMORY[0x1E69E6F90]);
        v32 = v40;
        v33 = *(v40 + 72);
        v34 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1C6D7E630;
        sub_1C6D783C0();
        sub_1C6C07550(v35);
        swift_setDeallocating();
        (*(v32 + 8))(v35 + v34, v14);
        swift_deallocClassInstance();

        sub_1C6D78790();
      }
    }

    else
    {
      sub_1C6C1E7B4();
      swift_allocError();
      *v37 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_1C6C1E7B4();
    swift_allocError();
    *v36 = 3;
    swift_willThrow();
  }
}

uint64_t sub_1C6C1D70C(char a1, char a2)
{
  v4 = &selRef_bundleInputOutputConfiguration;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_nonBundleInputOutputConfiguration;
  }

  v5 = [v2 *v4];
  v6 = v5;
  v7 = &selRef_generalChannelSuggestionsOutputName;
  if ((a2 & 1) == 0)
  {
    v7 = &selRef_newsPlusChannelSuggestionsOutputName;
  }

  v8 = [v5 *v7];

  v9 = sub_1C6D795A0();
  return v9;
}

uint64_t sub_1C6C1D7B8(uint64_t a1, uint64_t a2, id a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    v4 = *(a2 + 32);
    v6 = [a3 userContextConfiguration];
    [v6 maximumTagCount];

    v7 = [a3 userContextConfiguration];
    [v7 maximumTopicTagsPerHeadline];

    v11 = MEMORY[0x1E69E7CC0];
    v9 = MEMORY[0x1EEE9AC00](v8);
    (*(*v4 + 160))(0, 0, 0, sub_1C6C1E918, v9);
    v3 = v11;
  }

  return v3;
}

void *ChannelPickerSuggestionsService.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();
  v4 = v0[11];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  return v0;
}

uint64_t ChannelPickerSuggestionsService.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = v0[10];
  swift_unknownObjectRelease();
  v4 = v0[11];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocClassInstance();
}

unint64_t sub_1C6C1D9A0()
{
  result = qword_1EC1D7E30;
  if (!qword_1EC1D7E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E30);
  }

  return result;
}

uint64_t sub_1C6C1D9F4(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *v2;
  v4 = *a2;
  if (v4 >= 2)
  {
    return sub_1C6C1AE00();
  }

  else
  {
    return sub_1C6C1B098(a1, v4 == 0);
  }
}

uint64_t sub_1C6C1DA54(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1C6C1DA9C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1C6C1DB18(uint64_t a1, BOOL *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v100 = a2;
  v91 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v8 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v97 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6C1E8B4(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = v88 - v13;
  sub_1C6C1E8B4(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = v88 - v16;
  v106 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v106 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v98 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v20 = *(v101 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v90 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = v88 - v24;
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v102 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C1E8B4(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v111 = v88 - v30;
  v31 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v112 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v110 = v88 - v36;
  v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v113 = *(v37 - 8);
  v38 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 16);
  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_37:
    *v100 = *(*a3 + 2) >= a4;
    return;
  }

  v109 = (v32 + 48);
  v89 = (v20 + 56);
  v94 = (v20 + 48);
  v108 = v31;
  v95 = (v17 + 48);
  while (1)
  {
    while (1)
    {
      if (v42 > *(v41 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      --v42;
      v43 = v41;
      sub_1C6C1EA14(v41 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v42, v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (*(*a3 + 2) >= a4)
      {
        sub_1C6C1EA7C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_37;
      }

      v44 = v111;
      sub_1C6C1E924(v40, v111, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((*v109)(v44, 1, v31) != 1)
      {
        break;
      }

      sub_1C6C1EA7C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C1E9A4(v44, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_4:
      v41 = v43;
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    v45 = v44;
    v46 = v110;
    sub_1C6C1EADC(v45, v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C1EA14(v46, v112, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v106;
    v48 = v107;
    if (EnumCaseMultiPayload != 2)
    {
      sub_1C6C1EA7C(v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6C1EA7C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C1EA7C(v112, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v31 = v108;
      goto LABEL_4;
    }

    v50 = v102;
    sub_1C6C1EADC(v112, v102, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v93 = v25;
    sub_1C6C1E924(v50 + *(v25 + 24), v48, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v51 = *v95;
    if ((*v95)(v48, 1, v49) == 1)
    {
      v52 = v98;
      *v98 = 0;
      *(v52 + 1) = 0xE000000000000000;
      (*v89)(&v52[*(v49 + 20)], 1, 1, v101);
      v53 = &v52[*(v49 + 24)];
      sub_1C6D78A30();
      v54 = v51(v48, 1, v49);
      v55 = v99;
      if (v54 != 1)
      {
        sub_1C6C1E9A4(v48, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v52 = v98;
      sub_1C6C1EADC(v48, v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v55 = v99;
    }

    sub_1C6C1E924(&v52[*(v49 + 20)], v55, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C1EA7C(v52, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if ((*v94)(v55, 1, v101) != 1)
    {
      break;
    }

    sub_1C6C1EA7C(v102, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C1EA7C(v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C1EA7C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C1E9A4(v55, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v25 = v93;
    v31 = v108;
LABEL_22:
    v41 = v43;
    if (!v42)
    {
      goto LABEL_37;
    }
  }

  v56 = v55;
  v57 = v96;
  sub_1C6C1EADC(v56, v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v58 = v57;
  v59 = v90;
  sub_1C6C1EA14(v58, v90, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v60 = v59;
  v61 = v97;
  sub_1C6C1EADC(v60, v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v62 = *(v61 + *(v91 + 20));
  swift_beginAccess();
  v64 = v62[3];
  v63 = v62[4];
  v65 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v65;
  v105 = v63;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v65 = sub_1C6B6592C(0, *(v65 + 2) + 1, 1, v65);
    *a3 = v65;
  }

  v68 = *(v65 + 2);
  v67 = *(v65 + 3);
  v103 = a4;
  if (v68 >= v67 >> 1)
  {
    v65 = sub_1C6B6592C((v67 > 1), v68 + 1, 1, v65);
    *a3 = v65;
  }

  *(v65 + 2) = v68 + 1;
  v69 = &v65[16 * v68];
  v70 = v105;
  *(v69 + 4) = v64;
  *(v69 + 5) = v70;
  v105 = a3;
  v71 = *a3;
  swift_beginAccess();
  v88[1] = sub_1C6B75C84(v92, v62[2]);
  v73 = v72;
  v75 = v74;
  v77 = v76 >> 1;

  v78 = v77 - v75;
  v31 = v108;
  if (v77 == v75)
  {
LABEL_21:
    swift_unknownObjectRelease();
    sub_1C6C1EA7C(v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C1EA7C(v102, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C1EA7C(v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C1EA7C(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C1EA7C(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    a4 = v103;
    a3 = v105;
    v25 = v93;
    goto LABEL_22;
  }

  if (v75 <= v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = v75;
  }

  v80 = v79 - v75;
  v81 = (v73 + 16 * v75 + 8);
  while (v80)
  {
    if (*(v71 + 2) < v103)
    {
      v82 = *(v81 - 1);
      v83 = *v81;

      v84 = swift_isUniquelyReferenced_nonNull_native();
      *v105 = v71;
      v104 = v82;
      if ((v84 & 1) == 0)
      {
        v71 = sub_1C6B6592C(0, *(v71 + 2) + 1, 1, v71);
        *v105 = v71;
      }

      v86 = *(v71 + 2);
      v85 = *(v71 + 3);
      if (v86 >= v85 >> 1)
      {
        v71 = sub_1C6B6592C((v85 > 1), v86 + 1, 1, v71);
        *v105 = v71;
      }

      *(v71 + 2) = v86 + 1;
      v87 = &v71[16 * v86];
      *(v87 + 4) = v104;
      *(v87 + 5) = v83;
      v71 = *v105;
      --v80;
      v81 += 2;
      --v78;
      v31 = v108;
      if (v78)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
}

void sub_1C6C1E738()
{
  if (!qword_1EC1D7E38)
  {
    sub_1C6B18CB8(255, &qword_1EC1D7E40, &type metadata for ChannelPickerSuggestion, MEMORY[0x1E69E62F8]);
    v0 = sub_1C6D78360();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D7E38);
    }
  }
}

unint64_t sub_1C6C1E7B4()
{
  result = qword_1EC1D7E48;
  if (!qword_1EC1D7E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7E48);
  }

  return result;
}

uint64_t sub_1C6C1E808(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v11 = MEMORY[0x1E69E7CD0];
  sub_1C6CE3A10(a1, a2, a3);
  v5 = sub_1C6C1AAB8(a4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;

      sub_1C6CDEA98(v9);
      --v6;
    }

    while (v6);
  }

  return v11;
}

void sub_1C6C1E8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C1E924(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6C1E8B4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C1E9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6C1E8B4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C1EA14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C1EA7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6C1EADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C1EB50(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

void sub_1C6C1EB90()
{
  if (!qword_1EC1D7E58)
  {
    sub_1C6C1E8B4(255, &qword_1EC1D7E60, sub_1C6C1EC5C, MEMORY[0x1E69E6720]);
    sub_1C6B1A47C(255, &qword_1EC1D7ED0, &qword_1EDCEA410, MEMORY[0x1E69E7280], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D7E58);
    }
  }
}

unint64_t sub_1C6C1EC5C()
{
  result = qword_1EC1D7E68;
  if (!qword_1EC1D7E68)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC1D7E68);
  }

  return result;
}

uint64_t sub_1C6C1ECF4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1 + 2);
}

uint64_t sub_1C6C1ED38()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t getEnumTagSinglePayload for ChannelPickerSuggestionsService.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChannelPickerSuggestionsService.Errors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C6C1EEB4()
{
  result = qword_1EC1D7ED8;
  if (!qword_1EC1D7ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7ED8);
  }

  return result;
}

uint64_t sub_1C6C1EF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77E80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69B4BD0])
  {
    v10 = MEMORY[0x1E69E3780];
LABEL_41:
    v12 = *v10;
    v13 = sub_1C6D77090();
    v14 = *(*(v13 - 8) + 104);
    v15 = a1;
    v16 = v12;
    return v14(v15, v16, v13);
  }

  if (v9 == *MEMORY[0x1E69B4BA0])
  {
    v10 = MEMORY[0x1E69E3758];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4BD8])
  {
    v10 = MEMORY[0x1E69E3788];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B60])
  {
    v10 = MEMORY[0x1E69E3720];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B68])
  {
    v10 = MEMORY[0x1E69E3728];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B70])
  {
    v10 = MEMORY[0x1E69E3730];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4BB8])
  {
    v10 = MEMORY[0x1E69E3770];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B98])
  {
    v10 = MEMORY[0x1E69E3750];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B30])
  {
    v10 = MEMORY[0x1E69E36F8];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B80])
  {
    v10 = MEMORY[0x1E69E3738];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B88])
  {
    v10 = MEMORY[0x1E69E3740];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B40])
  {
    v10 = MEMORY[0x1E69E3708];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B48])
  {
    v10 = MEMORY[0x1E69E3710];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B90])
  {
    v10 = MEMORY[0x1E69E3748];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4BC8])
  {
    v10 = MEMORY[0x1E69E3778];
    goto LABEL_41;
  }

  v11 = v9;
  if (v9 == *MEMORY[0x1E69B4BA8])
  {
    v10 = MEMORY[0x1E69E3760];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B28])
  {
    v10 = MEMORY[0x1E69E36F0];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B58])
  {
    v10 = MEMORY[0x1E69E3718];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4BB0])
  {
    v10 = MEMORY[0x1E69E3768];
    goto LABEL_41;
  }

  if (v9 == *MEMORY[0x1E69B4B38])
  {
    v10 = MEMORY[0x1E69E3700];
    goto LABEL_41;
  }

  v18 = *MEMORY[0x1E69B4BE0];
  v13 = sub_1C6D77090();
  v14 = *(*(v13 - 8) + 104);
  if (v11 != v18)
  {
    v14(a1, *MEMORY[0x1E69E3780], v13);
    return (*(v5 + 8))(v8, v4);
  }

  v16 = *MEMORY[0x1E69E3790];
  v15 = a1;
  return v14(v15, v16, v13);
}

id Assembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Assembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1C6C1F3DC(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_1C6D77E80() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_1C6C20164(&qword_1EDCE5E48, MEMORY[0x1E69B4BF0]);
  }

  while ((sub_1C6D79560() & 1) == 0);
  return v4 != v5;
}

void sub_1C6C1F4E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v96 = a2;
  v6 = sub_1C6D773B0();
  v87 = *(v6 - 8);
  *&v88 = v6;
  v7 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1C6D77E80();
  v89 = *(v93 - 8);
  v9 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1C6D77E60();
  v95 = *(v91 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C20100(0, &qword_1EDCE5E58, MEMORY[0x1E69B4B10], MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v78 - v15;
  v97 = sub_1C6D77510();
  v94 = *(v97 - 8);
  v17 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C1FFE0();
  v20 = v19;
  v21 = *(v19 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C6D77290();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  (*(v29 + 16))(&v78 - v28, a1, v25, v27);
  if (swift_dynamicCast())
  {
    v85 = a3;
    (*(v21 + 8))(v24, v20);
    v30 = sub_1C6D77270();
    v31 = sub_1C6D77330();
    v33 = v32;

    if (!v3)
    {
      sub_1C6C20164(&qword_1EDCE5FB0, MEMORY[0x1E69B45E8]);
      v34 = v100;
      v35 = v97;
      sub_1C6D75AF0();
      v96 = v31;
      sub_1C6D774E0();
      v37 = sub_1C6D77E40();
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v16, 1, v37) == 1)
      {
        (*(v94 + 8))(v34, v35);
        sub_1C6B1C9F0(v96, v33);
        sub_1C6C20074(v16);
        v39 = sub_1C6D76F90();
        (*(*(v39 - 8) + 56))(v85, 1, 1, v39);
      }

      else
      {
        v83 = v33;
        v84 = 0;
        v81 = sub_1C6D77E30();
        v82 = v40;
        (*(v38 + 8))(v16, v37);
        v41 = v90;
        sub_1C6D774F0();
        v42 = v92;
        sub_1C6D77E50();
        v43 = v95 + 8;
        v79 = *(v95 + 8);
        v79(v41, v91);
        v44 = sub_1C6D77E70();
        v45 = v89;
        v46 = v89 + 8;
        v80 = *(v89 + 8);
        v80(v42, v93);
        if (v44)
        {
          v47 = v86;
          v48 = v100;
          sub_1C6D77500();
          v49 = sub_1C6D773A0();
          sub_1C6B1C9F0(v96, v83);
          (*(v87 + 8))(v47, v88);
          (*(v94 + 8))(v48, v35);
          v50 = v85;
          v51 = v82;
          *v85 = v81;
          v50[1] = v51;
          v50[2] = v49;
          v52 = *MEMORY[0x1E69E3680];
          v53 = sub_1C6D76F90();
          v54 = *(v53 - 8);
          (*(v54 + 104))(v50, v52, v53);
          (*(v54 + 56))(v50, 0, 1, v53);
        }

        else
        {
          sub_1C6C20100(0, &qword_1EC1D7EE8, MEMORY[0x1E69B4BF0], MEMORY[0x1E69E6F90]);
          v55 = *(v45 + 72);
          v56 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          v57 = swift_allocObject();
          v95 = v43;
          v58 = v57;
          v88 = xmmword_1C6D7EB10;
          *(v57 + 16) = xmmword_1C6D7EB10;
          v59 = v57 + v56;
          v60 = *(v45 + 104);
          v61 = v93;
          v60(v59, *MEMORY[0x1E69B4B50], v93);
          v60(v59 + v55, *MEMORY[0x1E69B4BC0], v61);
          v62 = v100;
          sub_1C6D774F0();
          v63 = v92;
          sub_1C6D77E50();
          v64 = v41;
          v65 = v79;
          v79(v64, v91);
          LOBYTE(v60) = sub_1C6C1F3DC(v63, v58);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v80(v63, v61);
          v66 = v85;
          if (v60)
          {
            (*(v94 + 8))(v62, v35);
            sub_1C6B1C9F0(v96, v83);
          }

          else
          {
            v89 = v46;
            v67 = v82;
            if (qword_1EDCEA6A0 != -1)
            {
              swift_once();
            }

            v87 = qword_1EDCEA6A8;
            sub_1C6D79AA0();
            sub_1C6C20100(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
            v68 = swift_allocObject();
            *(v68 + 16) = v88;
            v69 = MEMORY[0x1E69E6158];
            *(v68 + 56) = MEMORY[0x1E69E6158];
            v70 = sub_1C6B2064C();
            *(v68 + 64) = v70;
            *(v68 + 32) = v81;
            *(v68 + 40) = v67;
            v98 = 0;
            v99 = 0xE000000000000000;
            v71 = v90;
            v72 = v100;
            sub_1C6D774F0();
            v73 = v92;
            sub_1C6D77E50();
            v65(v71, v91);
            v74 = v93;
            sub_1C6D79E60();
            v80(v73, v74);
            v75 = v98;
            v76 = v99;
            *(v68 + 96) = v69;
            *(v68 + 104) = v70;
            *(v68 + 72) = v75;
            *(v68 + 80) = v76;
            sub_1C6D78D30();
            sub_1C6B1C9F0(v96, v83);

            (*(v94 + 8))(v72, v97);
            v66 = v85;
          }

          v77 = sub_1C6D76F90();
          (*(*(v77 - 8) + 56))(v66, 1, 1, v77);
        }
      }
    }
  }

  else
  {
    v36 = sub_1C6D76F90();
    (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }
}

void sub_1C6C1FFE0()
{
  if (!qword_1EDCE6028)
  {
    sub_1C6D77520();
    sub_1C6C20164(&qword_1EDCE5FA8, MEMORY[0x1E69B45F8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6028);
    }
  }
}

uint64_t sub_1C6C20074(uint64_t a1)
{
  sub_1C6C20100(0, &qword_1EDCE5E58, MEMORY[0x1E69B4B10], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C6C20100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6C20164(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C6C201AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31[1] = a2;
  v6 = sub_1C6D77B40();
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C20604();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(v31 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_1C6D77270();
    v21 = sub_1C6D77330();
    v23 = v22;

    if (!v3)
    {
      sub_1C6C20698(&qword_1EC1D7EF0, MEMORY[0x1E69B4948]);
      v24 = v32;
      sub_1C6D75AF0();
      a3[3] = v6;
      v26 = MEMORY[0x1E69B4948];
      a3[4] = sub_1C6C20698(&qword_1EC1D7EF8, MEMORY[0x1E69B4948]);
      a3[5] = sub_1C6C20698(&qword_1EC1D7F00, v26);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v31[0] + 32))(boxed_opaque_existential_2, v24, v6);
      sub_1C6B1C9F0(v21, v23);
      v28 = *MEMORY[0x1E69E3678];
      v29 = sub_1C6D76F90();
      v30 = *(v29 - 8);
      (*(v30 + 104))(a3, v28, v29);
      (*(v30 + 56))(a3, 0, 1, v29);
    }
  }

  else
  {
    v25 = sub_1C6D76F90();
    (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }
}

void sub_1C6C20604()
{
  if (!qword_1EDCE6058)
  {
    sub_1C6D77B50();
    sub_1C6C20698(&qword_1EDCE5ED8, MEMORY[0x1E69B4960]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6058);
    }
  }
}

uint64_t sub_1C6C20698(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C206E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C20718(void *a1)
{
  v1 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  return ConfigurationManagerType.fetchArticleEmbeddingsConfigurationIfNeeded(cachedOnly:)();
}

uint64_t sub_1C6C2076C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [*a1 fittingConfiguration];
  v4 = [v3 articleReadRequirements];

  v5 = [v2 fittingConfiguration];
  v6 = [v5 articleSeenRequirements];

  v7 = [v2 fittingConfiguration];
  v42 = [v7 embeddingType];

  v8 = [v2 fittingConfiguration];
  v9 = [v8 logisticRegressionClassifierConfiguration];

  sub_1C6C20BD4(v48);
  v41 = [v2 requiredDimensions];
  v10 = [v2 fittingConfiguration];
  v11 = [v10 maximumRatioOfArticleSeenEmbeddingsToArticleReadEmbeddings];

  if (v11)
  {
    [v11 doubleValue];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v2 fittingConfiguration];
  [v14 earliestAllowedEmbeddingEventTimestamp];
  v16 = v15;

  v17 = [v2 fittingConfiguration];
  v51 = [v17 haltEmbeddingProcessingAfterEncounteringNonMatchingEmbeddingsInSession];

  v18 = [v4 minimumDuration];
  v19 = v18;
  if (v18)
  {
    v40 = [v18 integerValue];
  }

  else
  {
    v40 = 0;
  }

  v50 = v19 == 0;
  v20 = [v4 minimumNumberOfEmbeddings];
  v21 = v20;
  if (v20)
  {
    v39 = [v20 integerValue];
  }

  else
  {
    v39 = 0;
  }

  v47 = v21 == 0;
  v22 = [v4 maximumNumberOfEmbeddings];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 integerValue];
  }

  else
  {
    v24 = 0;
  }

  v46 = v23 == 0;
  v25 = [v6 minimumDuration];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 integerValue];
  }

  else
  {
    v27 = 0;
  }

  v45 = v26 == 0;
  v28 = [v6 minimumNumberOfEmbeddings];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 integerValue];
  }

  else
  {
    v30 = 0;
  }

  v44 = v29 == 0;
  v31 = [v6 maximumNumberOfEmbeddings];
  v32 = v31;
  if (v31)
  {
    v33 = [v31 integerValue];
  }

  else
  {
    v33 = 0;
  }

  v34 = v50;
  v35 = *(*(a2 + 64) + 40);
  v36 = v48[1];
  *(v35 + 104) = v48[0];
  *(v35 + 161) = *&v49[9];
  v37 = v48[2];
  *(v35 + 152) = *v49;
  *(v35 + 136) = v37;
  *v35 = v40;
  *(v35 + 8) = v34;
  *(v35 + 16) = v39;
  *(v35 + 24) = v47;
  *(v35 + 32) = v24;
  *(v35 + 40) = v46;
  *(v35 + 48) = v27;
  *(v35 + 56) = v45;
  *(v35 + 64) = v30;
  *(v35 + 72) = v44;
  *(v35 + 80) = v33;
  *(v35 + 88) = v32 == 0;
  *(v35 + 96) = v42;
  *(v35 + 120) = v36;
  *(v35 + 184) = v41;
  *(v35 + 192) = v13;
  *(v35 + 200) = v11 == 0;
  *(v35 + 208) = v16;
  *(v35 + 216) = v51;
  return swift_continuation_throwingResume();
}

void sub_1C6C20BD4(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 l2Penalty];
  v5 = v4;
  v6 = 0;
  v7 = 0;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v8;
  }

  v9 = [v2 l1Penalty];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v6 = v11;
  }

  v12 = [v2 maximumIterations];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 integerValue];
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 stepSize];
  v16 = v15;
  v17 = 0;
  v18 = 0;
  if (v15)
  {
    [v15 doubleValue];
    v18 = v19;
  }

  v20 = [v2 convergenceThreshold];
  v21 = v20;
  if (v20)
  {
    [v20 doubleValue];
    v17 = v22;
  }

  *a1 = v7;
  *(a1 + 8) = v5 == 0;
  *(a1 + 16) = v6;
  *(a1 + 24) = v10 == 0;
  *(a1 + 32) = v14;
  *(a1 + 40) = v13 == 0;
  *(a1 + 48) = v18;
  *(a1 + 56) = v16 == 0;
  *(a1 + 64) = v17;
  *(a1 + 72) = v21 == 0;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = &a1[*(v8 + 24)];
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked()
{
  result = qword_1EDCE4928;
  if (!qword_1EDCE4928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6C20FA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  v13 = &a2[*(v9 + 24)];
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6C21138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleLiked.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    v20 = &v15[*(v10 + 24)];
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleLiked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleLiked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.init()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D78A30();
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  v3 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_1C6C21810()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7F08);
  __swift_project_value_buffer(v0, qword_1EC1D7F08);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7E630;
  v6 = v5 + v4 + *(v2 + 56);
  *(v5 + v4) = 1;
  *v6 = "article";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleLiked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6C21AB0();
    }
  }

  return result;
}

uint64_t sub_1C6C21AB0()
{
  v0 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6C22500(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.traverse<A>(visitor:)()
{
  result = sub_1C6C21BBC(v0);
  if (!v1)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6C21BBC(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  sub_1C6B482A8(a1 + *(v11 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1C6B4833C(v5);
  }

  sub_1C6B483C8(v5, v10);
  sub_1C6C22500(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v10, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleLiked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked();
  sub_1C6C22500(&qword_1EC1D7F20, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C21E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C22500(qword_1EC1D7F40, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6C21F18@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5A18 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7F08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6C21FC0(uint64_t a1)
{
  v2 = sub_1C6C22500(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6C2202C()
{
  sub_1C6C22500(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B25_SessionEventArticleLikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  sub_1C6B49A50();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked() + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6C22500(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6C22500(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C22548(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1C6B1E6A8(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DebugRecommendedIssuesServiceResult.recommendedIssuePublishers.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t DebugRecommendedIssuesServiceResult.userContext.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t DebugRecommendedIssuesServiceResult.allTagIDs.getter()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_1C6B1E610(v1);

  v4 = sub_1C6C26A28(v2, v3);

  return v4;
}

uint64_t sub_1C6C22794(unsigned __int8 a1)
{
  sub_1C6D7A260();
  MEMORY[0x1CCA56740](a1);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C227F8()
{
  sub_1C6D7A260();
  sub_1C6C2276C(v2, *v0);
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6C22838()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 112)));
  return v0;
}

uint64_t sub_1C6C228C4()
{
  sub_1C6C22838();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C2291C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v36 = a1;
  v4 = *v1;
  v5 = sub_1C6D783E0();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C();
  v38 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v15 = v4[12];
  v40 = v3;
  v41 = &v43;
  (*(v4[11] + 24))(sub_1C6C26B08, v39, v4[10], v4[11], v12);
  if (v2)
  {
  }

  v33 = v8;
  v34 = v5;
  v35 = v10;
  v16 = v38;
  sub_1C6D78500();
  v17 = v42;

  v18 = [v17 recommendedIssuesConfiguration];

  if (!v18)
  {
    type metadata accessor for RecommendedIssuesService.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();
    (*(v35 + 8))(v14, v16);
  }

  if (*(v3 + *(*v3 + 104)))
  {
    v19 = &selRef_bundleInputOutputConfiguration;
  }

  else
  {
    v19 = &selRef_nonBundleInputOutputConfiguration;
  }

  v20 = [v18 *v19];
  v21 = [v20 recommendedIssuePublisherOutputName];

  sub_1C6D795A0();
  v22 = v18;
  v23 = v33;
  sub_1C6D783C0();
  sub_1C6C26D94(&qword_1EDCE7A60, sub_1C6B7A08C);
  result = sub_1C6D786C0();
  v26 = v43;
  v28 = v34;
  v27 = v35;
  v29 = v37;
  if (v43)
  {
    v30 = v22;
    v31 = result;

    (*(v29 + 8))(v23, v28);
    (*(v27 + 8))(v14, v16);

    v32 = v36;
    *v36 = v31;
    v32[1] = v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C22D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v8 = *a2;
  v9 = sub_1C6D78810();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D783E0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v82 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v81 = v68 - v18;
  v80 = sub_1C6D75F80();
  v75 = *(v80 - 8);
  v19 = *(v75 + 64);
  v20 = MEMORY[0x1EEE9AC00](v80);
  v22 = v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [*(a1 + 24) recommendedIssuesConfiguration];
  if (v23)
  {
    v79 = v23;
    v69 = v14;
    v70 = v12;
    v71 = v13;
    v72 = a4;
    v73 = v4;
    sub_1C6D75F70();
    if (qword_1EDCE0C58 != -1)
    {
      swift_once();
    }

    v76 = MEMORY[0x1E69E6F90];
    sub_1C6B1A4E4(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    v77 = xmmword_1C6D7E630;
    *(v24 + 16) = xmmword_1C6D7E630;
    sub_1C6C26D94(&qword_1EDCEA390, MEMORY[0x1E69695A8]);
    v78 = v22;
    v25 = sub_1C6D7A0E0();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = sub_1C6B2064C();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    if (*(a2 + *(*a2 + 104)))
    {
      v28 = &selRef_bundleInputOutputConfiguration;
    }

    else
    {
      v28 = &selRef_nonBundleInputOutputConfiguration;
    }

    v29 = v79;
    v30 = [v79 *v28];
    v31 = [v30 recommendedIssuePublisherOutputName];

    sub_1C6D795A0();
    sub_1C6D783C0();
    v32 = [v29 *v28];
    v33 = [v32 contextFeatureKey];

    sub_1C6D795A0();
    v34 = v82;
    sub_1C6D783C0();
    v35 = (a2 + *(*a2 + 112));
    v36 = v35[3];
    v37 = v35[4];
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v38 = [v29 userContextConfiguration];
    v39 = [v38 maximumTagCount];

    v40 = [v29 userContextConfiguration];
    v41 = [v40 maximumTopicTagsPerHeadline];

    v42 = sub_1C6C234E8(v39, v41, v36, v37);
    v43 = *v74;
    *v74 = v42;

    sub_1C6B9656C(v42);
    v45 = v44;

    sub_1C6B1A4E4(0, &qword_1EDCE7D20, sub_1C6B9F304, v76);
    sub_1C6B9F304();
    v47 = v46 - 8;
    v48 = *(*(v46 - 8) + 72);
    v49 = (*(*(v46 - 8) + 80) + 32) & ~*(*(v46 - 8) + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v77;
    v51 = v50 + v49;
    v52 = *(v47 + 56);
    v53 = v69;
    v54 = *(v69 + 16);
    v55 = v71;
    v54(v51, v34, v71);
    *(v51 + v52) = v45;
    v56 = *MEMORY[0x1E6996130];
    v57 = sub_1C6D78760();
    (*(*(v57 - 8) + 104))(v51 + v52, v56, v57);
    sub_1C6D787D0();
    v74 = sub_1C6D75F60();
    v68[0] = "leLiked";
    v68[1] = v58;
    sub_1C6B1A4E4(0, &qword_1EDCE64A0, MEMORY[0x1E6996088], v76);
    v59 = *(v53 + 72);
    v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v77;
    v62 = v81;
    v54(v61 + v60, v81, v55);
    sub_1C6B68E34(v61);
    swift_setDeallocating();
    v63 = *(v53 + 8);
    v63(v61 + v60, v55);
    swift_deallocClassInstance();
    sub_1C6D78790();

    v63(v82, v55);
    v63(v62, v55);
    return (*(v75 + 8))(v78, v80);
  }

  else
  {
    v65 = *(v8 + 80);
    v66 = *(v8 + 88);
    type metadata accessor for RecommendedIssuesService.Errors();
    swift_getWitnessTable();
    swift_allocError();
    *v67 = 1;
    return swift_willThrow();
  }
}

void *sub_1C6C234E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E7CC0];
  v5[2] = &v6;
  v5[3] = a1;
  v5[4] = a2;
  SessionDataProviderType.visitSessions(reversed:stoppableVisitor:)(0, sub_1C6C26B3C, v5, a3, a4);
  result = v6;
  if (!v6[2])
  {

    return &unk_1F4671908;
  }

  return result;
}

uint64_t sub_1C6C2355C()
{
  sub_1C6C2291C(&v3);
  if (!v1)
  {
    v0 = v3;
  }

  return v0;
}

void sub_1C6C235EC(uint64_t a1, BOOL *a2, char **a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v100 = a2;
  v91 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  v8 = *(*(v91 - 8) + 64);
  MEMORY[0x1EEE9AC00](v91);
  v97 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E6720];
  sub_1C6B1A4E4(0, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v99 = v88 - v13;
  sub_1C6B1A4E4(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, v10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v107 = v88 - v16;
  v106 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v106 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v98 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v20 = *(v101 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v90 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = v88 - v24;
  v25 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v102 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1A4E4(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, v10);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v111 = v88 - v30;
  v31 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v112 = v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v110 = v88 - v36;
  v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
  v113 = *(v37 - 8);
  v38 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v40 = v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a1 + 16);
  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_37:
    *v100 = *(*a3 + 2) >= a4;
    return;
  }

  v109 = (v32 + 48);
  v89 = (v20 + 56);
  v94 = (v20 + 48);
  v108 = v31;
  v95 = (v17 + 48);
  while (1)
  {
    while (1)
    {
      if (v42 > *(v41 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      --v42;
      v43 = v41;
      sub_1C6C26C38(v41 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v42, v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      if (*(*a3 + 2) >= a4)
      {
        sub_1C6C26CA0(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        goto LABEL_37;
      }

      v44 = v111;
      sub_1C6C26B48(v40, v111, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if ((*v109)(v44, 1, v31) != 1)
      {
        break;
      }

      sub_1C6C26CA0(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C26BC8(v44, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_4:
      v41 = v43;
      if (!v42)
      {
        goto LABEL_37;
      }
    }

    v45 = v44;
    v46 = v110;
    sub_1C6C1EADC(v45, v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C26C38(v46, v112, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v106;
    v48 = v107;
    if (EnumCaseMultiPayload != 2)
    {
      sub_1C6C26CA0(v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6C26CA0(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
      sub_1C6C26CA0(v112, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v31 = v108;
      goto LABEL_4;
    }

    v50 = v102;
    sub_1C6C1EADC(v112, v102, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v93 = v25;
    sub_1C6C26B48(v50 + *(v25 + 24), v48, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    v51 = *v95;
    if ((*v95)(v48, 1, v49) == 1)
    {
      v52 = v98;
      *v98 = 0;
      *(v52 + 1) = 0xE000000000000000;
      (*v89)(&v52[*(v49 + 20)], 1, 1, v101);
      v53 = &v52[*(v49 + 24)];
      sub_1C6D78A30();
      v54 = v51(v48, 1, v49);
      v55 = v99;
      if (v54 != 1)
      {
        sub_1C6C26BC8(v48, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      }
    }

    else
    {
      v52 = v98;
      sub_1C6C1EADC(v48, v98, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v55 = v99;
    }

    sub_1C6C26B48(&v52[*(v49 + 20)], v55, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C26CA0(v52, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
    if ((*v94)(v55, 1, v101) != 1)
    {
      break;
    }

    sub_1C6C26CA0(v102, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C26CA0(v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C26CA0(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C26BC8(v55, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    v25 = v93;
    v31 = v108;
LABEL_22:
    v41 = v43;
    if (!v42)
    {
      goto LABEL_37;
    }
  }

  v56 = v55;
  v57 = v96;
  sub_1C6C1EADC(v56, v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v58 = v57;
  v59 = v90;
  sub_1C6C26C38(v58, v90, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  v60 = v59;
  v61 = v97;
  sub_1C6C1EADC(v60, v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  v62 = *(v61 + *(v91 + 20));
  swift_beginAccess();
  v64 = v62[3];
  v63 = v62[4];
  v65 = *a3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v65;
  v105 = v63;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v65 = sub_1C6B6592C(0, *(v65 + 2) + 1, 1, v65);
    *a3 = v65;
  }

  v68 = *(v65 + 2);
  v67 = *(v65 + 3);
  v103 = a4;
  if (v68 >= v67 >> 1)
  {
    v65 = sub_1C6B6592C((v67 > 1), v68 + 1, 1, v65);
    *a3 = v65;
  }

  *(v65 + 2) = v68 + 1;
  v69 = &v65[16 * v68];
  v70 = v105;
  *(v69 + 4) = v64;
  *(v69 + 5) = v70;
  v105 = a3;
  v71 = *a3;
  swift_beginAccess();
  v88[1] = sub_1C6B75C84(v92, v62[2]);
  v73 = v72;
  v75 = v74;
  v77 = v76 >> 1;

  v78 = v77 - v75;
  v31 = v108;
  if (v77 == v75)
  {
LABEL_21:
    swift_unknownObjectRelease();
    sub_1C6C26CA0(v96, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
    sub_1C6C26CA0(v102, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
    sub_1C6C26CA0(v110, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6C26CA0(v40, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6C26CA0(v97, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
    a4 = v103;
    a3 = v105;
    v25 = v93;
    goto LABEL_22;
  }

  if (v75 <= v77)
  {
    v79 = v77;
  }

  else
  {
    v79 = v75;
  }

  v80 = v79 - v75;
  v81 = (v73 + 16 * v75 + 8);
  while (v80)
  {
    if (*(v71 + 2) < v103)
    {
      v82 = *(v81 - 1);
      v83 = *v81;

      v84 = swift_isUniquelyReferenced_nonNull_native();
      *v105 = v71;
      v104 = v82;
      if ((v84 & 1) == 0)
      {
        v71 = sub_1C6B6592C(0, *(v71 + 2) + 1, 1, v71);
        *v105 = v71;
      }

      v86 = *(v71 + 2);
      v85 = *(v71 + 3);
      if (v86 >= v85 >> 1)
      {
        v71 = sub_1C6B6592C((v85 > 1), v86 + 1, 1, v71);
        *v105 = v71;
      }

      *(v71 + 2) = v86 + 1;
      v87 = &v71[16 * v86];
      *(v87 + 4) = v104;
      *(v87 + 5) = v83;
      v71 = *v105;
      --v80;
      v81 += 2;
      --v78;
      v31 = v108;
      if (v78)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1C6C2420C(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1CCA56710](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1C6C253F4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C6C242F4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C6D783E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
  v36 = a2;
  v13 = sub_1C6D79500();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1C6C26D94(&qword_1EDCE5D20, MEMORY[0x1E6996088]);
      v23 = sub_1C6D79560();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1C6C25518(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1C6C245D4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0]);
  v36 = a2;
  v13 = sub_1C6D79500();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1C6C26D94(&unk_1EDCE7B00, MEMORY[0x1E6968FB0]);
      v23 = sub_1C6D79560();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_1C6C257E4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1C6C248B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C6C07A2C(0, &qword_1EDCEA490);
  result = sub_1C6D79D20();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1C6D7A260();
      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C6C24B20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C6C07A2C(0, &qword_1EC1D7AB0);
  result = sub_1C6D79D20();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      result = MEMORY[0x1CCA56710](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1C6C24D54(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C6D783E0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C6C07864();
  result = sub_1C6D79D20();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
      result = sub_1C6D79500();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1C6C250A4(uint64_t a1)
{
  v2 = v1;
  v41 = sub_1C6D75DE0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1C6C26D00();
  result = sub_1C6D79D20();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0]);
      result = sub_1C6D79500();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_1C6C253F4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6C24B20(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1C6C25C18();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C6C26208(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1CCA56710](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C25518(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1C6D783E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6C24D54(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1C6C25D90(MEMORY[0x1E6996088], sub_1C6C07864);
      goto LABEL_12;
    }

    sub_1C6C26408(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
  v15 = sub_1C6D79500();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1C6C26D94(&qword_1EDCE5D20, MEMORY[0x1E6996088]);
      v23 = sub_1C6D79560();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

uint64_t sub_1C6C257E4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_1C6D75DE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C6C250A4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1C6C25D90(MEMORY[0x1E6968FB0], sub_1C6C26D00);
      goto LABEL_12;
    }

    sub_1C6C26718(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0]);
  v16 = sub_1C6D79500();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1C6C26D94(&unk_1EDCE7B00, MEMORY[0x1E6968FB0]);
      v24 = sub_1C6D79560();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1C6D7A1B0();
  __break(1u);
  return result;
}

void *sub_1C6C25AB0()
{
  v1 = v0;
  sub_1C6C07A2C(0, &qword_1EDCEA490);
  v2 = *v0;
  v3 = sub_1C6D79D10();
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
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_1C6C25C18()
{
  v1 = v0;
  sub_1C6C07A2C(0, &qword_1EC1D7AB0);
  v2 = *v0;
  v3 = sub_1C6D79D10();
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

void *sub_1C6C25D90(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  a2(0);
  v10 = *v2;
  v11 = sub_1C6D79D10();
  v12 = v11;
  if (*(v10 + 16))
  {
    v26 = v4;
    result = (v11 + 56);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 56 + 8 * v14)
    {
      result = memmove(result, (v10 + 56), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v10 + 56);
    v20 = (v17 + 63) >> 6;
    v27 = v6 + 32;
    for (i = v6 + 16; v19; result = (*(v6 + 32))(*(v12 + 48) + v24, v9, v5))
    {
      v21 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v24 = *(v6 + 72) * (v21 | (v16 << 6));
      (*(v6 + 16))(v9, *(v10 + 48) + v24, v5);
    }

    v22 = v16;
    while (1)
    {
      v16 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v16 >= v20)
      {

        v4 = v26;
        goto LABEL_21;
      }

      v23 = *(v10 + 56 + 8 * v16);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v12;
  }

  return result;
}

uint64_t sub_1C6C25FC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C6C07A2C(0, &qword_1EDCEA490);
  result = sub_1C6D79D20();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1C6D7A260();

      sub_1C6D79610();
      result = sub_1C6D7A2B0();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1C6C26208(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1C6C07A2C(0, &qword_1EC1D7AB0);
  result = sub_1C6D79D20();
  v6 = result;
  if (*(v3 + 16))
  {
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
      result = MEMORY[0x1CCA56710](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1C6C26408(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C6D783E0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C6C07864();
  v10 = sub_1C6D79D20();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1C6C26D94(&qword_1EDCE7A68, MEMORY[0x1E6996088]);
      result = sub_1C6D79500();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C6C26718(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1C6D75DE0();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1C6C26D00();
  v10 = sub_1C6D79D20();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0]);
      result = sub_1C6D79500();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t sub_1C6C26A28(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1C6B1E6A8(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1C6C26B48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B1A4E4(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6C26BC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B1A4E4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6C26C38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6C26CA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6C26D00()
{
  if (!qword_1EDCE6510)
  {
    sub_1C6D75DE0();
    sub_1C6C26D94(&unk_1EDCE7B10, MEMORY[0x1E6968FB0]);
    v0 = sub_1C6D79D40();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6510);
    }
  }
}

uint64_t sub_1C6C26D94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C6C26E00()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *v0;
  switch(*v0)
  {
    case 1:
      result = 0x636E75614C707061;
      break;
    case 2:
      result = 0x6570697773;
      break;
    case 3:
      result = 0x656E696C64616568;
      break;
    case 4:
      result = 0x7061546575737369;
      break;
    case 5:
      result = 0x6B6E696C70656564;
      break;
    case 6:
      result = 0x6E6164726F666661;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x6976614E72657375;
      break;
    case 9:
      result = 0x61646F4D6E65706FLL;
      break;
    case 0xALL:
      result = 0x6369747241636F74;
      break;
    case 0xBLL:
      result = 0x6163696669746F6ELL;
      break;
    case 0xCLL:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6C26FA4(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(sub_1C6D783E0() - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_1C6C27088(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a4 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      a2(&v18, v17);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v18;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t FCReadonlyPersonalizationAggregateStore.lookupAll()()
{
  v1 = [v0 allAggregates];
  sub_1C6B0C69C(0, &qword_1EDCEA4D0, 0x1E69B6EE8);
  v2 = sub_1C6D79490();

  return v2;
}

uint64_t FCReadonlyPersonalizationAggregateStore.lookup(with:option:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = a1;
  return sub_1C6C27088(MEMORY[0x1E69E7CC8], sub_1C6C275D4, v3, a1);
}

uint64_t sub_1C6C272A0(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t))
{
  v34 = a1;
  v33 = a4;
  v6 = sub_1C6D77050();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BAB388();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v16 = a2[1];
  v18 = sub_1C6D79570();
  v19 = [a3 aggregateForFeatureKey_];

  if (v19)
  {

    return sub_1C6BC214C(v19, v17, v16);
  }

  else
  {
    v21 = v32;
    (*(v12 + 16))(v15, v33, v11);
    result = (*(v12 + 88))(v15, v11);
    if (result == *MEMORY[0x1E69E3220])
    {
      (*(v12 + 96))(v15, v11);
      v22 = *(v15 + 1);
      v33 = *v15;
      sub_1C6D77030();
      v23 = sub_1C6D76FE0();
      v25 = v24;
      (*(v21 + 8))(v9, v6);
      if (v17 == v23 && v16 == v25)
      {

        v28 = v34;
      }

      else
      {
        v27 = sub_1C6D7A130();

        v28 = v34;
        if ((v27 & 1) == 0)
        {
        }
      }

      v33(&v35, v17, v16);

      v29 = v35;
      v30 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *v28;
      sub_1C6BC55B8(v29, v17, v16, isUniquelyReferenced_nonNull_native);

      *v28 = v35;
    }

    else if (result != *MEMORY[0x1E69E3228])
    {
      return (*(v12 + 8))(v15, v11);
    }
  }

  return result;
}

id sub_1C6C275FC@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  result = _sSo39FCReadonlyPersonalizationAggregateStoreC04NewsB0E06createC03for6clicks11impressionsSo019NTPBPersonalizationC0CSS_S2dtF_0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C6C27624(uint64_t a1, uint64_t a2)
{
  v4[2] = *v2;
  v4[3] = a2;
  v4[4] = a1;
  return sub_1C6C27088(MEMORY[0x1E69E7CC8], sub_1C6C277E8, v4, a1);
}

id _sSo39FCReadonlyPersonalizationAggregateStoreC04NewsB0E06createC03for6clicks11impressionsSo019NTPBPersonalizationC0CSS_S2dtF_0(double a1, double a2)
{
  v4 = sub_1C6D77050();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77030();
  sub_1C6D76FE0();
  (*(v5 + 8))(v8, v4);

  result = [objc_allocWithZone(MEMORY[0x1E69B6EE8]) init];
  if (result)
  {
    v10 = result;
    v11 = sub_1C6D79570();
    [v10 setFeatureKey_];

    [v10 setClicks_];
    [v10 setImpressions_];
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C6C27800(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31[1] = a2;
  v6 = sub_1C6D77E00();
  v31[0] = *(v6 - 8);
  v7 = *(v31[0] + 64);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6C27C58();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C6D77290();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  (*(v19 + 16))(v31 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_1C6D77270();
    v21 = sub_1C6D77330();
    v23 = v22;

    if (!v3)
    {
      sub_1C6C27CEC(&qword_1EC1D7FC8, MEMORY[0x1E69B4AC0]);
      v24 = v32;
      sub_1C6D75AF0();
      a3[3] = v6;
      v26 = MEMORY[0x1E69B4AC0];
      a3[4] = sub_1C6C27CEC(&qword_1EC1D7FD0, MEMORY[0x1E69B4AC0]);
      a3[5] = sub_1C6C27CEC(&qword_1EC1D7FD8, v26);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a3);
      (*(v31[0] + 32))(boxed_opaque_existential_2, v24, v6);
      sub_1C6B1C9F0(v21, v23);
      v28 = *MEMORY[0x1E69E3618];
      v29 = sub_1C6D76F90();
      v30 = *(v29 - 8);
      (*(v30 + 104))(a3, v28, v29);
      (*(v30 + 56))(a3, 0, 1, v29);
    }
  }

  else
  {
    v25 = sub_1C6D76F90();
    (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }
}

void sub_1C6C27C58()
{
  if (!qword_1EDCE6038)
  {
    sub_1C6D77E10();
    sub_1C6C27CEC(&qword_1EDCE5E60, MEMORY[0x1E69B4AD8]);
    v0 = sub_1C6D77290();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE6038);
    }
  }
}

uint64_t sub_1C6C27CEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PackageService.__allocating_init(resourceService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C6B15E34(a1, v2 + 16);
  return v2;
}

uint64_t PackageService.fetchPackages(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1C6D75DE0();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = type metadata accessor for Package();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6C27ECC, 0, 0);
}

uint64_t sub_1C6C27ECC()
{
  v13 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v4 = *(v2 + 16);
  if (v4 && (v5 = v0[3], v6 = sub_1C6B6732C(v4, 0), v11 = sub_1C6B67FC8(&v12, v6 + 4, v4, v5), , v7 = sub_1C6B688C4(), v11 != v4))
  {
    __break(1u);
  }

  else
  {
    v0[13] = sub_1C6D793A0();

    v8 = *(MEMORY[0x1E69D6B08] + 4);
    v9 = swift_task_alloc();
    v0[14] = v9;
    *v9 = v0;
    v9[1] = sub_1C6C28044;
    v7 = (v0 + 2);
  }

  return MEMORY[0x1EEE44EE0](v7);
}

uint64_t sub_1C6C28044()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_1C6C2853C;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_1C6C28160;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6C28160()
{
  v1 = v0[2];
  v54 = v0[10];
  v55 = v0[11];
  v53 = v0[9];
  v2 = v0[6];
  sub_1C6C28984();
  result = sub_1C6D79EF0();
  v4 = result;
  v5 = 0;
  v6 = *(v1 + 64);
  v47 = v1 + 64;
  v58 = v1;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v6;
  v10 = (v7 + 63) >> 6;
  v51 = (v2 + 16);
  v52 = (v2 + 32);
  v49 = result + 64;
  v50 = (v2 + 8);
  v56 = result;
  v48 = v10;
  if ((v8 & v6) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v12 = (v9 - 1) & v9;
LABEL_10:
      v15 = v11 | (v5 << 6);
      v16 = (*(v58 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      v19 = *(*(v58 + 56) + 8 * v15);

      v20 = v19;
      v21 = [v20 fileURL];
      if (!v21)
      {
        break;
      }

      v22 = v21;
      v59 = v12;
      v23 = v57[11];
      v60 = v57[12];
      v61 = v17;
      v24 = v57[7];
      v25 = v57[8];
      v26 = v57[5];
      sub_1C6D75D90();

      (*v52)(v25, v24, v26);
      v27 = [v20 resourceID];
      v28 = sub_1C6D795A0();
      v30 = v29;

      *v23 = v28;
      *(v55 + 8) = v30;
      (*v51)(v23 + *(v53 + 20), v25, v26);
      v31 = (v23 + *(v53 + 24));
      v31[3] = sub_1C6C28A40();
      *v31 = v20;
      v32 = v25;
      v4 = v56;
      (*v50)(v32, v26);
      sub_1C6C28A8C(v23, v60);
      *(v49 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v33 = (v56[6] + 16 * v15);
      *v33 = v61;
      v33[1] = v18;
      result = sub_1C6C28A8C(v60, v56[7] + *(v54 + 72) * v15);
      v34 = v56[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
LABEL_21:
        __break(1u);
        return result;
      }

      v56[2] = v36;
      v10 = v48;
      v9 = v59;
      if (!v59)
      {
        goto LABEL_5;
      }
    }

    sub_1C6C289EC();
    swift_allocError();
    swift_willThrow();

    v43 = v57[11];
    v42 = v57[12];
    v45 = v57[7];
    v44 = v57[8];

    v46 = v57[1];

    return v46();
  }

  else
  {
LABEL_5:
    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v5 >= v10)
      {
        break;
      }

      v14 = *(v47 + 8 * v5);
      ++v13;
      if (v14)
      {
        v11 = __clz(__rbit64(v14));
        v12 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    v38 = v57[11];
    v37 = v57[12];
    v40 = v57[7];
    v39 = v57[8];

    v41 = v57[1];

    return v41(v4);
  }
}

uint64_t sub_1C6C2853C()
{
  v1 = v0[13];

  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t type metadata accessor for Package()
{
  result = qword_1EDCE8060;
  if (!qword_1EDCE8060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PackageService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1C6C28688(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6C28720;

  return PackageService.fetchPackages(for:)(a1);
}

uint64_t sub_1C6C28720(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t Package.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Package.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Package() + 20);
  v4 = sub_1C6D75DE0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Package.interestToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Package() + 24);

  return sub_1C6C28AF0(v3, a1);
}

uint64_t sub_1C6C28910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6D75DE0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1C6C28984()
{
  if (!qword_1EDCE64E0)
  {
    type metadata accessor for Package();
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE64E0);
    }
  }
}

unint64_t sub_1C6C289EC()
{
  result = qword_1EC1D7FE0;
  if (!qword_1EC1D7FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7FE0);
  }

  return result;
}

unint64_t sub_1C6C28A40()
{
  result = qword_1EDCE7F20;
  if (!qword_1EDCE7F20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCE7F20);
  }

  return result;
}

uint64_t sub_1C6C28A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Package();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C28AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C6C28B80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Package();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6C28C18()
{
  result = sub_1C6D75DE0();
  if (v1 <= 0x3F)
  {
    result = sub_1C6B10D00();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C6C28CC0()
{
  result = qword_1EC1D7FE8;
  if (!qword_1EC1D7FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7FE8);
  }

  return result;
}

void sub_1C6C28D14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  v12 = *(a1 + 24);
  v13 = OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_features;
  swift_beginAccess();
  sub_1C6C29224(v2 + v13, v11);
  v14 = sub_1C6D78810();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v11, 1, v14) == 1)
  {
    sub_1C6C292B8(v11);
    v16 = [v12 eventAggregationConfiguration];
    if (v16)
    {
      v17 = v16;
      v18 = v2;
      v19 = *(v2 + 16);
      v20 = sub_1C6BA9F44(a2, v16);
      (*(v15 + 16))(v8, a2, v14);
      (*(v15 + 56))(v8, 0, 1, v14);
      swift_beginAccess();
      sub_1C6C29398(v8, v18 + v13);
      swift_endAccess();
      v21 = v18 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount;
      os_unfair_lock_lock((v18 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount));
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      os_unfair_lock_unlock(v21);
    }

    else
    {
      sub_1C6C29344();
      swift_allocError();
      *v22 = 0;
      swift_willThrow();
    }
  }

  else
  {
    (*(v15 + 32))(a2, v11, v14);
  }
}

uint64_t sub_1C6C28FA8()
{
  v1 = v0[2];

  sub_1C6C292B8(v0 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_features);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1C6C2901C()
{
  sub_1C6C290F4(319, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C6C290F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6C29158()
{
  if (!qword_1EDCE65B0)
  {
    v0 = sub_1C6D79C00();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65B0);
    }
  }
}

uint64_t sub_1C6C291CC()
{
  v1 = *v0 + OBJC_IVAR____TtC19NewsPersonalization25UserEventsFeatureResolver_eventHistoryCount;
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  os_unfair_lock_unlock(v1);
  return (v2 > 0) & ~v3;
}

uint64_t sub_1C6C29224(uint64_t a1, uint64_t a2)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6C292B8(uint64_t a1)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C6C29344()
{
  result = qword_1EC1D7FF8;
  if (!qword_1EC1D7FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7FF8);
  }

  return result;
}

uint64_t sub_1C6C29398(uint64_t a1, uint64_t a2)
{
  sub_1C6C290F4(0, &qword_1EDCEA310, MEMORY[0x1E6996170], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C6C29440()
{
  result = qword_1EC1D8000;
  if (!qword_1EC1D8000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8000);
  }

  return result;
}

uint64_t ArticleDislikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleDislikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  sub_1C6D773F0();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6C2A900(&qword_1EDCE5FD0, MEMORY[0x1E69B4598]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleDislikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v16 - v6;
  v8 = sub_1C6D77430();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  sub_1C6D77410();
  (*(v9 + 8))(v12, v8);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6C2A900(&qword_1EDCE5F20, MEMORY[0x1E69B4818]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C6D7A130();
  }

  v14 = *(v1 + 8);
  v14(v4, v0);
  v14(v7, v0);

  return v13 & 1;
}

uint64_t ArticleDislikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleDislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C29BFC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00]();
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6C29D08(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77B80();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleDislikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77BA0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleDislikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77BC0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleDislikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77BB0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6C2A640(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77B80();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleDislikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77BC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C2A900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C6C2A9A0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B80();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6C2AAA0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77B90();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleDislikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6C2ABF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77B80();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6C2AD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00]();
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6C2AE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77B80();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6C2AF04()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  sub_1C6D77BC0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6C2B084@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ArticleScoringWork.init(requestID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D75F80();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t ArticleScoringWork.requestContext(with:dataProvider:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C6D78810();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a1)
  {
    v37 = a3;
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v8);
    v10 = *(v9 + 16);
    v11 = a1;
    v12 = v10(v8, v9);
    if (qword_1EDCEA920 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C6D7E630;
    v14 = *(v12 + 16);
    v15 = MEMORY[0x1E69E65A8];
    *(v13 + 56) = MEMORY[0x1E69E6530];
    *(v13 + 64) = v15;
    *(v13 + 32) = v14;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 8))(v16, v17);
    v19 = &selRef_bundleOutputConfiguration;
    if ((v18 & 1) == 0)
    {
      v19 = &selRef_nonBundleOutputConfiguration;
    }

    v35 = [v11 *v19];
    v20 = a2[3];
    v21 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v20);
    v22 = (*(v21 + 32))(v35, v20, v21);
    v24 = v23;
    v36 = v12;
    v25 = a2[3];
    v26 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v25);
    (*(v26 + 24))(v11, v25, v26);
    sub_1C6D75F60();
    sub_1C6B7A158();
    v27 = sub_1C6D783E0();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1C6D7E630;

    sub_1C6D783C0();
    sub_1C6B68E34(v31);
    swift_setDeallocating();
    (*(v28 + 8))(v31 + v30, v27);
    swift_deallocClassInstance();
    sub_1C6D78790();

    result = type metadata accessor for ArticleScoringWork.Context(0);
    v33 = (v37 + *(result + 20));
    *v33 = v22;
    v33[1] = v24;
    *(v37 + *(result + 24)) = v36;
  }

  else
  {
    sub_1C6C2B55C();
    swift_allocError();
    *v34 = 0;
    v34[1] = 0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C6C2B55C()
{
  result = qword_1EDCE2370;
  if (!qword_1EDCE2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2370);
  }

  return result;
}

uint64_t ArticleScoringWork.product(with:resultFeatures:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ArticleScoringWork.Context(0);
  v10 = (a1 + *(v9 + 20));
  v11 = *v10;
  v12 = v10[1];

  sub_1C6D783C0();
  sub_1C6D78810();
  sub_1C6C2C090();
  v13 = sub_1C6D786D0();
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v15 = *(v14 + 16);
    if (v15)
    {
      v35 = MEMORY[0x1E69E7CC0];
      sub_1C6B39260(0, v15, 0);
      v16 = v35;
      v17 = *(v35 + 16);
      v18 = 32;
      do
      {
        v19 = *(v14 + v18);
        v35 = v16;
        v20 = v16[3];
        if (v17 >= v20 >> 1)
        {
          sub_1C6B39260((v20 > 1), v17 + 1, 1);
          v16 = v35;
        }

        v16[2] = v17 + 1;
        *&v16[v17 + 4] = v19;
        v18 += 4;
        ++v17;
        --v15;
      }

      while (v15);
    }

    else
    {

      v16 = MEMORY[0x1E69E7CC0];
    }

    v21 = v16[2];
    v22 = *(a1 + *(v9 + 24));
    if (v21 == *(v22 + 16))
    {
      if (qword_1EDCEA920 != -1)
      {
        swift_once();
      }

      sub_1C6B1D314();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E6530];
      *(v23 + 16) = xmmword_1C6D7E630;
      v25 = MEMORY[0x1E69E65A8];
      *(v23 + 56) = v24;
      *(v23 + 64) = v25;
      *(v23 + 32) = v21;
      sub_1C6D79AC0();
      sub_1C6D78D30();

      v9 = sub_1C6C2BFB0(v26, v16);
    }

    else
    {

      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1C6D79D50();

      v35 = 0x20646E756F46;
      v36 = 0xE600000000000000;
      v34 = v21;
      v9 = MEMORY[0x1E69E6590];
      v27 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v27);

      MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
      v34 = *(v22 + 16);
      v28 = sub_1C6D7A0E0();
      MEMORY[0x1CCA55B00](v28);

      v29 = v35;
      v30 = v36;
      sub_1C6C2B55C();
      swift_allocError();
      *v31 = v29;
      v31[1] = v30;
      swift_willThrow();
    }
  }

  return v9;
}

uint64_t sub_1C6C2B998(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = *(a1 + *(type metadata accessor for ArticleScoringWork.Context(0) + 24));
  if (v3 == v4[2])
  {
    if (qword_1EDCEA920 != -1)
    {
      swift_once();
    }

    sub_1C6B1D314();
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E6530];
    *(v5 + 16) = xmmword_1C6D7E630;
    v7 = MEMORY[0x1E69E65A8];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v3;
    sub_1C6D79AC0();
    sub_1C6D78D30();

    v8 = sub_1C6C2BFB0(v4, a2);

    return v8;
  }

  else
  {
    sub_1C6D79D50();

    v10 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v10);

    MEMORY[0x1CCA55B00](0xD000000000000015, 0x80000001C6D9F880);
    v13 = v4[2];
    v11 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v11);

    sub_1C6C2B55C();
    swift_allocError();
    *v12 = 0x20646E756F46;
    v12[1] = 0xE600000000000000;
    return swift_willThrow();
  }
}

void sub_1C6C2BBC4(void *a1, void *a2, char a3, void *a4)
{
  v8 = a1[2];

  if (!v8 || !a2[2])
  {
    goto LABEL_24;
  }

  v10 = a1[4];
  v9 = a1[5];
  v45 = a1;
  v11 = a2[4];
  v12 = *a4;

  v13 = sub_1C6B5DEA8(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    sub_1C6B6E868(v18, a3 & 1);
    v20 = *a4;
    v13 = sub_1C6B5DEA8(v10, v9);
    if ((v19 & 1) == (v21 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v13 = sub_1C6D7A1C0();
    __break(1u);
  }

  if (a3)
  {
LABEL_8:
    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v24 = v13;
  sub_1C6B72BD8();
  v13 = v24;
  if (v19)
  {
LABEL_9:
    v22 = swift_allocError();
    swift_willThrow();
    v23 = v22;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_29;
  }

LABEL_12:
  v25 = *a4;
  *(*a4 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v26 = (v25[6] + 16 * v13);
  *v26 = v10;
  v26[1] = v9;
  *(v25[7] + 8 * v13) = v11;
  v27 = v25[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v17)
  {
    v25[2] = v28;
    v29 = v45[2];
    if (v29 != 1)
    {
      v19 = v45 + 7;
      v30 = a2 + 5;
      v31 = 1;
      while (v31 < v29)
      {
        v32 = a2[2];
        if (v31 == v32)
        {
          goto LABEL_24;
        }

        if (v31 >= v32)
        {
          goto LABEL_28;
        }

        v10 = *(v19 - 1);
        v9 = *v19;
        v11 = *v30;
        v33 = *a4;

        v34 = sub_1C6B5DEA8(v10, v9);
        v36 = v33[2];
        v37 = (v35 & 1) == 0;
        v17 = __OFADD__(v36, v37);
        v38 = v36 + v37;
        if (v17)
        {
          goto LABEL_25;
        }

        a3 = v35;
        if (v33[3] < v38)
        {
          sub_1C6B6E868(v38, 1);
          v39 = *a4;
          v34 = sub_1C6B5DEA8(v10, v9);
          if ((a3 & 1) != (v40 & 1))
          {
            goto LABEL_6;
          }
        }

        if (a3)
        {
          goto LABEL_9;
        }

        v41 = *a4;
        *(*a4 + 8 * (v34 >> 6) + 64) |= 1 << v34;
        v42 = (v41[6] + 16 * v34);
        *v42 = v10;
        v42[1] = v9;
        *(v41[7] + 8 * v34) = v11;
        v43 = v41[2];
        v17 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v17)
        {
          goto LABEL_26;
        }

        ++v31;
        v41[2] = v44;
        v29 = v45[2];
        v19 += 2;
        ++v30;
        if (v31 == v29)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_27;
    }

LABEL_24:

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD00000000000001BLL, 0x80000001C6D9F860);
  sub_1C6D79E60();
  MEMORY[0x1CCA55B00](39, 0xE100000000000000);
  sub_1C6D79EB0();
  __break(1u);
}

uint64_t sub_1C6C2BFB0(void *a1, void *a2)
{
  if (a2[2] >= a1[2])
  {
    v4 = a1[2];
  }

  else
  {
    v4 = a2[2];
  }

  if (v4)
  {
    sub_1C6C2C290();
    v5 = sub_1C6D79F20();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v7 = v5;

  sub_1C6C2BBC4(a1, a2, 1, &v7);
  return v7;
}

unint64_t sub_1C6C2C090()
{
  result = qword_1EC1D8018;
  if (!qword_1EC1D8018)
  {
    sub_1C6D78810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8018);
  }

  return result;
}

uint64_t sub_1C6C2C160()
{
  result = sub_1C6D75F80();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C6C2C1F4()
{
  sub_1C6D787B0();
  if (v0 <= 0x3F)
  {
    sub_1C6B855D0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6C2C290()
{
  if (!qword_1EDCEA470)
  {
    v0 = sub_1C6D79F30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCEA470);
    }
  }
}

id sub_1C6C2C2F0(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v2[1];
  [a1 source];
  v6 = FCStringFromNotificationSource();
  v7 = sub_1C6D795A0();
  v9 = v8;

  result = [a1 feedItem];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v11 = result;
  v12 = [result publisherID];

  if (v12)
  {
    v13 = sub_1C6D795A0();
    v15 = v14;

    if (*(v4 + 16))
    {

      v16 = sub_1C6B5DEA8(v13, v15);
      if (v17)
      {
        v18 = (*(v4 + 56) + 16 * v16);
        v19 = *v18;
        v20 = v18[1];
        if (v20)
        {
          v21 = *(v20 + 16);
          v22 = v18[1];

          if (v21)
          {
            v23 = sub_1C6B5DEA8(v7, v9);
            if (v24)
            {
              v25 = *(*(v20 + 56) + 8 * v23);
            }
          }
        }

        return swift_bridgeObjectRelease_n();
      }
    }
  }

  if (!*(v5 + 16))
  {
  }

  v26 = sub_1C6B5DEA8(v7, v9);
  v28 = v27;

  if (v28)
  {
    v29 = *(*(v5 + 56) + 8 * v26);
  }

  return result;
}

uint64_t NotificationScoringServiceConfiguration.PublisherSourceMultiplier.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1C6C2D444(0, &qword_1EC1D8020, sub_1C6C2C75C, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v18[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D7A2C0();
  if (v2)
  {

    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6C2C75C();
    sub_1C6D7A2D0();
    LOBYTE(v19[0]) = 0;
    sub_1C6D79FC0();
    v14 = v13;
    sub_1C6C2CF5C(0, &qword_1EDCE7F70);
    v18[7] = 1;
    sub_1C6C2CB48(&qword_1EC1D8030);
    sub_1C6D79F90();
    (*(v7 + 8))(v10, v6);
    v16 = v19[0];
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_1C6D7A140();
    v14 = v15;
    __swift_destroy_boxed_opaque_existential_1(v19);
    v16 = 0;
  }

  *a2 = v14;
  a2[1] = v16;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6C2C75C()
{
  result = qword_1EC1D8028;
  if (!qword_1EC1D8028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8028);
  }

  return result;
}

unint64_t sub_1C6C2C7B0()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C2C7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001C6DA0E70 == a2 || (sub_1C6D7A130() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA0E90 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C6D7A130();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C6C2C8CC(uint64_t a1)
{
  v2 = sub_1C6C2C75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C2C908(uint64_t a1)
{
  v2 = sub_1C6C2C75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationScoringServiceConfiguration.PublisherSourceMultiplier.encode(to:)(void *a1)
{
  sub_1C6C2D444(0, &qword_1EC1D8038, sub_1C6C2C75C, &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier.CodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - v8;
  v10 = *v1;
  v13 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C2C75C();
  sub_1C6D7A300();
  v16 = 0;
  sub_1C6D7A060();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1C6C2CF5C(0, &qword_1EDCE7F70);
    sub_1C6C2CB48(&qword_1EDCDFBE0);
    sub_1C6D7A030();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C6C2CB48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C6C2CF5C(255, &qword_1EDCE7F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

NewsPersonalization::NotificationScoringServiceConfiguration __swiftcall NotificationScoringServiceConfiguration.init(publisherSourceMultipliers:sourceMultipliers:)(Swift::OpaquePointer publisherSourceMultipliers, Swift::OpaquePointer sourceMultipliers)
{
  v2->_rawValue = publisherSourceMultipliers._rawValue;
  v2[1]._rawValue = sourceMultipliers._rawValue;
  result.sourceMultipliers = sourceMultipliers;
  result.publisherSourceMultipliers = publisherSourceMultipliers;
  return result;
}

uint64_t NotificationScoringServiceConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1C6C2D444(0, &qword_1EC1D8040, sub_1C6C2CF08, &type metadata for NotificationScoringServiceConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C2CF08();
  sub_1C6D7A2D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v6;
  v12 = v16;
  sub_1C6C2CF5C(0, &qword_1EC1D8050);
  v17 = 0;
  sub_1C6C2D4AC(&qword_1EC1D8058, sub_1C6C2CFB4);
  sub_1C6D79F90();
  v14 = v18;
  if (!v18)
  {
    v14 = sub_1C6B61080(MEMORY[0x1E69E7CC0]);
  }

  sub_1C6C2CF5C(0, &qword_1EDCE7F70);
  v17 = 1;
  sub_1C6C2CB48(&qword_1EC1D8030);
  sub_1C6D79F90();
  v15 = v18;
  if (!v18)
  {
    v15 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);
  }

  (*(v11 + 8))(v9, v5);
  *v12 = v14;
  v12[1] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1C6C2CF08()
{
  result = qword_1EC1D8048;
  if (!qword_1EC1D8048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8048);
  }

  return result;
}

void sub_1C6C2CF5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1C6D794F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1C6C2CFB4()
{
  result = qword_1EC1D8060;
  if (!qword_1EC1D8060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8060);
  }

  return result;
}

unint64_t sub_1C6C2D008()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0xD00000000000001ALL;
  }

  *v0;
  return result;
}

uint64_t sub_1C6C2D044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD00000000000001ALL && 0x80000001C6DA0EB0 == a2;
  if (v6 || (sub_1C6D7A130() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C6DA0E90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C6D7A130();

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

uint64_t sub_1C6C2D124(uint64_t a1)
{
  v2 = sub_1C6C2CF08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C6C2D160(uint64_t a1)
{
  v2 = sub_1C6C2CF08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationScoringServiceConfiguration.encode(to:)(void *a1)
{
  sub_1C6C2D444(0, &qword_1EC1D8068, sub_1C6C2CF08, &type metadata for NotificationScoringServiceConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = *v1;
  v14 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6C2CF08();

  sub_1C6D7A300();
  v17 = v9;
  v16 = 0;
  sub_1C6C2CF5C(0, &qword_1EC1D8050);
  sub_1C6C2D4AC(&qword_1EC1D8070, sub_1C6C2D534);
  v11 = v15;
  sub_1C6D7A090();

  if (!v11)
  {
    v17 = v14;
    v16 = 1;
    sub_1C6C2CF5C(0, &qword_1EDCE7F70);
    sub_1C6C2CB48(&qword_1EDCDFBE0);
    sub_1C6D7A090();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1C6C2D444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1C6C2D4AC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1C6C2CF5C(255, &qword_1EC1D8050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C6C2D534()
{
  result = qword_1EC1D8078;
  if (!qword_1EC1D8078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8078);
  }

  return result;
}

uint64_t sub_1C6C2D598(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C6C2D5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

unint64_t sub_1C6C2D678()
{
  result = qword_1EC1D8080;
  if (!qword_1EC1D8080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8080);
  }

  return result;
}

unint64_t sub_1C6C2D6D0()
{
  result = qword_1EC1D8088;
  if (!qword_1EC1D8088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8088);
  }

  return result;
}

unint64_t sub_1C6C2D728()
{
  result = qword_1EC1D8090;
  if (!qword_1EC1D8090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8090);
  }

  return result;
}

unint64_t sub_1C6C2D780()
{
  result = qword_1EC1D8098;
  if (!qword_1EC1D8098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D8098);
  }

  return result;
}

unint64_t sub_1C6C2D7D8()
{
  result = qword_1EC1D80A0;
  if (!qword_1EC1D80A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D80A0);
  }

  return result;
}

unint64_t sub_1C6C2D830()
{
  result = qword_1EC1D80A8;
  if (!qword_1EC1D80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D80A8);
  }

  return result;
}

void *sub_1C6C2D884@<X0>(void *a1@<X0>, __int16 *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = [result possiblyUnfetchedAppConfiguration];
  swift_unknownObjectRelease();
  if (([v6 respondsToSelector_] & 1) == 0)
  {
    result = swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v7 = [v6 personalizationEventTrackingEnabled];
  result = swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
LABEL_8:
    v10 = 2;
    goto LABEL_9;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v12 == 2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FC0();
  if (v11 != 2)
  {
    v10 = v12 & 1 | ((v11 & 1) << 8);
LABEL_9:
    *a2 = v10;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C6C2DA34(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FE0();
  if (v8 == 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A08(0, qword_1EDCE9BF8, _s7FactoryCMa_0, &off_1EEB69450, type metadata accessor for SessionManager);
  result = sub_1C6D77FD0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1C6D77FD0();
  if (result)
  {
    v7 = result;
    type metadata accessor for SessionTracker();
    swift_allocObject();
    return sub_1C6CE5020(v8, v5, v7);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C6C2DB88(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  _s7FactoryCMa_0();
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B10A98(0, &unk_1EDCE9840);
    result = sub_1C6D77FE0();
    if (v8)
    {
      sub_1C6B10A08(0, qword_1EDCE9BF8, _s7FactoryCMa_0, &off_1EEB69450, type metadata accessor for SessionManager);
      v6 = swift_allocObject();
      *(v6 + 64) = 0;
      *(v6 + 16) = v4;
      sub_1C6B15E34(&v7, v6 + 24);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6C2DCA8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1C6D79B80();
  v3 = v2;

  _s7FactoryCMa_0();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v3;
  *(result + 32) = 6;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_1C6C2DD28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SessionStorage();
    result = swift_allocObject();
    *(result + 16) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SessionStorage;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C2DDC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
  v5 = v4;
  result = sub_1C6D77FD0();
  if (result)
  {
    a2[3] = v5;
    a2[4] = &protocol witness table for <> SessionDataProvider<A>;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6C2DE6C(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE7E28, &protocolRef_FCUserEventHistoryStorageType);
  result = sub_1C6D77FD0();
  if (result)
  {
    v4 = result;
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C6B10A08(0, qword_1EDCE96F0, type metadata accessor for UserEventHistorySessionUnarchiver, &protocol witness table for UserEventHistorySessionUnarchiver, type metadata accessor for SessionDataProvider);
    result = sub_1C6D77FD0();
    if (result)
    {
      v6 = result;
      type metadata accessor for UserEventHistoryJSONSerializer();
      result = swift_allocObject();
      *(result + 16) = v4;
      *(result + 24) = v6;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C6C2DF80(void *a1@<X0>, SEL *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6B0F7A8(0, &unk_1EDCE6540, &protocolRef_FCNewsAppConfigurationManager);
  v6 = sub_1C6D77FD0();
  if (v6)
  {
    v7 = [v6 possiblyUnfetchedAppConfiguration];
    swift_unknownObjectRelease();
    if ([v7 respondsToSelector_])
    {
      v8 = [v7 newsPersonalizationConfiguration];
      swift_unknownObjectRelease();
      v9 = [v8 articleEmbeddingsConfiguration];

      v10 = [v9 *a2];
      v11 = [v10 shouldPersist];
    }

    else
    {
      swift_unknownObjectRelease();
      v11 = 0;
    }

    *a3 = v11;
  }

  else
  {
    __break(1u);
  }
}

unint64_t ComputeServiceScoringService.score(tags:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_computeService);
    v3 = *(v1 + OBJC_IVAR____TtC19NewsPersonalization28ComputeServiceScoringService_isSubscribed);

    v5 = sub_1C6B1E610(v4);

    v9 = sub_1C6BB25FC(v2, v3, v5);

    sub_1C6C2C290();
    v10 = sub_1C6D79EF0();
    v11 = v10;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = v10 + 64;
    if (v16)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_15:
        v22 = v19 | (v12 << 6);
        v23 = (*(v9 + 48) + 16 * v22);
        v25 = *v23;
        v24 = v23[1];
        v26 = *(*(v9 + 56) + 4 * v22);
        *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v27 = (v11[6] + 16 * v22);
        *v27 = v25;
        v27[1] = v24;
        *(v11[7] + 8 * v22) = v26;
        v28 = v11[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          break;
        }

        v11[2] = v30;

        if (!v16)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v20 = v12;
      while (1)
      {
        v12 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v12 >= v17)
        {

          return v11;
        }

        v21 = v13[v12];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v16 = (v21 - 1) & v21;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
    swift_once();
    sub_1C6D79AA0();
    sub_1C6B1D314();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1C6D7E630;
    sub_1C6B10A98(0, &qword_1EDCEA410);
    sub_1C6D79E60();
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1C6B2064C();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    sub_1C6D78D30();

    v11 = sub_1C6B5F1EC(MEMORY[0x1E69E7CC0]);

    return v11;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];

    return sub_1C6B5F1EC(v7);
  }
}