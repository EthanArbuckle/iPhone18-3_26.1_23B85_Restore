unint64_t sub_19091E814()
{
  result = qword_1EAD57018;
  if (!qword_1EAD57018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57018);
  }

  return result;
}

unint64_t sub_19091E86C()
{
  result = qword_1EAD57020;
  if (!qword_1EAD57020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57020);
  }

  return result;
}

unint64_t sub_19091E8C4()
{
  result = qword_1EAD57030;
  if (!qword_1EAD57030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57030);
  }

  return result;
}

unint64_t sub_19091E91C()
{
  result = qword_1EAD57038;
  if (!qword_1EAD57038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57038);
  }

  return result;
}

uint64_t sub_19091E9C0()
{
  v0 = sub_190D51460();
  __swift_allocate_value_buffer(v0, qword_1EAD9DAE0);
  __swift_project_value_buffer(v0, qword_1EAD9DAE0);
  return sub_190D51430();
}

uint64_t sub_19091EA6C@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57090);
  v45 = *(v53 - 8);
  v1 = MEMORY[0x1EEE9AC00](v53);
  v43 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v42 - v3;
  v4 = type metadata accessor for Reaction();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57098);
  v57 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v42 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v49 = &v42 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v47 = &v42 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v48 = &v42 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v50 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v52 = &v42 - v20;
  *v6 = 0;
  swift_storeEnumTagMultiPayload();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570A0);
  v60 = sub_190920558();
  v59 = sub_190920A48(&qword_1EAD55388);
  v58 = sub_190233640(&qword_1EAD570A8, &qword_1EAD570A0);
  v21 = v50;
  sub_190D50D90();
  v22 = sub_190233640(&qword_1EAD570B0, &qword_1EAD57098);
  sub_190D50D30();
  v23 = v57 + 8;
  v24 = *(v57 + 8);
  v24(v21, v7);
  v56 = v24;
  *v6 = 1;
  swift_storeEnumTagMultiPayload();
  v25 = v48;
  sub_190D50D90();
  v54 = v22;
  sub_190D50D30();
  v24(v25, v7);
  *v6 = 2;
  swift_storeEnumTagMultiPayload();
  v26 = v47;
  sub_190D50D90();
  sub_190D50D30();
  v56(v26, v7);
  *v6 = 4;
  swift_storeEnumTagMultiPayload();
  v27 = v49;
  sub_190D50D90();
  sub_190D50D30();
  v28 = v56;
  v56(v27, v7);
  *v6 = 3;
  swift_storeEnumTagMultiPayload();
  v29 = v51;
  sub_190D50D90();
  sub_190D50D30();
  v28(v29, v7);
  v57 = v23;
  *v6 = 5;
  swift_storeEnumTagMultiPayload();
  v30 = v42;
  sub_190D50D90();
  sub_190D50D30();
  v28(v30, v7);
  v31 = v43;
  sub_190D50DB0();
  sub_190233640(&qword_1EAD570B8, &qword_1EAD57090);
  v32 = v44;
  v33 = v53;
  sub_190D50D30();
  v34 = *(v45 + 8);
  v34(v31, v33);
  v35 = v47;
  v36 = v51;
  v38 = v49;
  v37 = v50;
  v39 = v48;
  sub_190D50D20();
  v34(v32, v53);
  v40 = v56;
  v56(v36, v7);
  v40(v38, v7);
  v40(v35, v7);
  v40(v39, v7);
  v40(v37, v7);
  return (v40)(v52, v7);
}

uint64_t sub_19091F31C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570C8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570A0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  sub_190920558();
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570D8);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570D0);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  sub_190D50BB0();
  v10 = sub_190233640(&qword_1EAD570A8, &qword_1EAD570A0);
  MEMORY[0x193AEC530](v7, &type metadata for SendMessageReactionIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x193AEC520](v9, &type metadata for SendMessageReactionIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_19091F638@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570C0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570C8);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570A0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  sub_190920558();
  sub_190D50BE0();
  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570D0);
  sub_190D50BC0();

  sub_190D50BD0();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD570D8);
  sub_190D50BC0();

  sub_190D50BD0();
  sub_190D50BF0();
  sub_190D50BB0();
  v10 = sub_190233640(&qword_1EAD570A8, &qword_1EAD570A0);
  MEMORY[0x193AEC530](v7, &type metadata for SendMessageReactionIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x193AEC520](v9, &type metadata for SendMessageReactionIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_19091F96C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[105] = a3;
  v3[104] = a2;
  v3[103] = a1;
  v3[106] = type metadata accessor for Reaction();
  v3[107] = swift_task_alloc();
  sub_190D572A0();
  v3[108] = sub_190D57290();
  v5 = sub_190D57240();
  v3[109] = v5;
  v3[110] = v4;

  return MEMORY[0x1EEE6DFA0](sub_19091FA40, v5, v4);
}

uint64_t sub_19091FA40()
{
  sub_190D50810();
  v1 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v1;
  v2 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v2;
  v3 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v3;
  v4 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v4;
  v5 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v5;
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v0 + 888) = v6;
  sub_190D52690();
  sub_190889CE4(v0 + 16);
  v8 = swift_task_alloc();
  *(v0 + 896) = v8;
  *v8 = v0;
  v8[1] = sub_19091FB38;

  return (sub_190888E50)(v7, v6);
}

uint64_t sub_19091FB38(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[113] = a1;
  v4[114] = a2;
  v4[115] = v2;

  if (v2)
  {
    v5 = v4[110];
    v6 = v4[109];
    v7 = sub_190920250;
  }

  else
  {

    v5 = v4[110];
    v6 = v4[109];
    v7 = sub_19091FC64;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_19091FC64()
{
  v1 = *(v0 + 904);

  *(v0 + 816) = v1;
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_190D581C0())
  {
    v3 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = *(v0 + 904) + 32;
    while (!__OFSUB__(i--, 1))
    {
      if (v3)
      {
        v7 = MEMORY[0x193AF3B90](i, *(v0 + 904));
      }

      else
      {
        if ((i & 0x8000000000000000) != 0)
        {
          goto LABEL_14;
        }

        if (i >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v7 = *(v5 + 8 * i);
      }

      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      v1 = v9 == 0;

      if (v9 || !i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  LOBYTE(v1) = 1;
LABEL_18:
  v10 = swift_task_alloc();
  *(v10 + 16) = v0 + 816;
  v11 = sub_190CD9E90(sub_190920978, v10, i, v1);

  if (!v11)
  {
    goto LABEL_29;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {

LABEL_29:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v24 = sub_190D53040();
    __swift_project_value_buffer(v24, qword_1EAD9E840);
    v25 = sub_190D53020();
    v26 = sub_190D576A0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_19020E000, v25, v26, "Failed to find an IMMessagePartChatItem to react to", v27, 2u);
      MEMORY[0x193AF7A40](v27, -1, -1);
    }

    v28 = *(v0 + 912);

    sub_190920998();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();

    goto LABEL_40;
  }

  v13 = [objc_opt_self() chatItemWithIMChatItem:v12 balloonMaxWidth:0.0];
  if (!v13)
  {
LABEL_35:
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v30 = sub_190D53040();
    __swift_project_value_buffer(v30, qword_1EAD9E840);
    v31 = sub_190D53020();
    v32 = sub_190D576A0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_19020E000, v31, v32, "Failed to cast CKChatItem to CKMessagePartChatItem", v33, 2u);
      MEMORY[0x193AF7A40](v33, -1, -1);
    }

    v34 = *(v0 + 912);

    sub_190920998();
    swift_allocError();
    *v35 = 1;
    swift_willThrow();

    goto LABEL_40;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_35;
  }

  v16 = v15;
  sub_190D50810();
  if (swift_getEnumCaseMultiPayload())
  {
    if (qword_1EAD521B0 != -1)
    {
      swift_once();
    }

    v17 = sub_190D53040();
    __swift_project_value_buffer(v17, qword_1EAD9E840);
    v18 = sub_190D53020();
    v19 = sub_190D576A0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_19020E000, v18, v19, "Trying to send unsupported reaction type", v20, 2u);
      MEMORY[0x193AF7A40](v20, -1, -1);
    }

    v21 = *(v0 + 912);
    v22 = *(v0 + 856);

    sub_190920998();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();

    sub_1909209EC(v22);
LABEL_40:

    v36 = *(v0 + 8);
    goto LABEL_41;
  }

  v38 = *(v0 + 912);
  [v38 sendMessageAcknowledgment:**(v0 + 856) + 2000 forChatItem:v16];
  sub_190D50810();
  v39 = *(v0 + 608);
  *(v0 + 752) = *(v0 + 592);
  *(v0 + 768) = v39;
  v40 = *(v0 + 640);
  *(v0 + 784) = *(v0 + 624);
  *(v0 + 800) = v40;
  v41 = *(v0 + 544);
  *(v0 + 688) = *(v0 + 528);
  *(v0 + 704) = v41;
  v42 = *(v0 + 576);
  *(v0 + 720) = *(v0 + 560);
  *(v0 + 736) = v42;
  v43 = *(v0 + 512);
  *(v0 + 656) = *(v0 + 496);
  *(v0 + 672) = v43;
  sub_190888AC8();
  sub_190D506A0();

  v44 = *(v0 + 768);
  *(v0 + 432) = *(v0 + 752);
  *(v0 + 448) = v44;
  v45 = *(v0 + 800);
  *(v0 + 464) = *(v0 + 784);
  *(v0 + 480) = v45;
  v46 = *(v0 + 704);
  *(v0 + 368) = *(v0 + 688);
  *(v0 + 384) = v46;
  v47 = *(v0 + 736);
  *(v0 + 400) = *(v0 + 720);
  *(v0 + 416) = v47;
  v48 = *(v0 + 672);
  *(v0 + 336) = *(v0 + 656);
  *(v0 + 352) = v48;
  sub_190889CE4(v0 + 336);

  v36 = *(v0 + 8);
LABEL_41:

  return v36();
}

uint64_t sub_190920250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1909202C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51A00 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DAE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190920370(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57080);
  v5 = sub_190233640(&qword_1EAD57088, &qword_1EAD57080);

  return MEMORY[0x1EEDB4008](KeyPath, sub_19091EA6C, 0, v4, a2, v5);
}

uint64_t sub_190920438(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_190221DA4;

  return sub_19091F96C(a1, v5, v4);
}

uint64_t sub_1909204E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1909205AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_19092050C(uint64_t a1)
{
  v2 = sub_190920558();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190920558()
{
  result = qword_1EAD57060;
  if (!qword_1EAD57060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57060);
  }

  return result;
}

uint64_t sub_1909205AC()
{
  v0 = sub_190D50C80();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD557E8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v22 = &v19 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57068);
  v24 = sub_190D51460();
  v13 = *(v24 - 8);
  v23 = *(v13 + 56);
  v25 = v13 + 56;
  v23(v12, 1, 1, v24);
  sub_19092095C(v37);
  v33 = v37[6];
  v34 = v37[7];
  v35 = v37[8];
  v36 = v37[9];
  v29 = v37[2];
  v30 = v37[3];
  v31 = v37[4];
  v32 = v37[5];
  v27 = v37[0];
  v28 = v37[1];
  v14 = sub_190D50590();
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  v15(v7, 1, 1, v14);
  v21 = *MEMORY[0x1E695A500];
  v16 = *(v1 + 104);
  v19 = v1 + 104;
  v20 = v16;
  v16(v3);
  sub_190888A1C();
  v17 = v22;
  v26 = sub_190D50880();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57070);
  v23(v17, 1, 1, v24);
  v15(v9, 1, 1, v14);
  v20(v3, v21, v0);
  sub_190920A48(&qword_1EAD55060);
  sub_190D50850();
  return v26;
}

double sub_19092095C(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_190920998()
{
  result = qword_1EAD57078;
  if (!qword_1EAD57078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57078);
  }

  return result;
}

uint64_t sub_1909209EC(uint64_t a1)
{
  v2 = type metadata accessor for Reaction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190920A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Reaction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_190920AA0()
{
  result = qword_1EAD570E0;
  if (!qword_1EAD570E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD570E0);
  }

  return result;
}

char *static SwipeActionIndicator.generateReplyIndicator()()
{
  v0 = sub_190D56ED0();
  v1 = [objc_opt_self() systemImageNamed_];

  v2 = objc_allocWithZone(type metadata accessor for SwipeActionIndicator());
  return sub_190921310(v1);
}

id static SwipeActionIndicator.generateMaterialReplyIndicator()()
{
  v0 = objc_opt_self();
  v1 = sub_190D56ED0();
  v2 = [v0 ckImageNamed_];

  v3 = sub_190D56ED0();
  v4 = [v0 ckImageNamed_];

  v5 = objc_allocWithZone(type metadata accessor for MaterialSwipeActionIndicator());
  return sub_190921EE4(v4, v2);
}

double sub_190920E0C()
{
  v1 = OBJC_IVAR___CKSwipeActionIndicator_currentScale;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_190920E98()
{
  v1 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190920F90()
{
  v1 = *(v0 + OBJC_IVAR___CKSwipeActionIndicator_imageView);
  if (v1)
  {
    v2 = v1;
    sub_190A86BA4();
  }
}

void sub_19092103C()
{
  v1 = *(v0 + OBJC_IVAR___CKSwipeActionIndicator_imageView);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 layer];
    v4 = sub_190D51C70();
    v5 = sub_190D56ED0();
    [v3 setValue:v4 forKeyPath:v5];
  }
}

void (*sub_190921120(double *a1))(uint64_t a1)
{
  v3 = OBJC_IVAR___CKSwipeActionIndicator_imageView;
  *(a1 + 1) = v1;
  *(a1 + 2) = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = v4;
    v6 = sub_190A86BA4();
  }

  else
  {
    v6 = 0.0;
  }

  *a1 = v6;
  return sub_190921198;
}

void sub_190921198(uint64_t a1)
{
  v1 = *(*(a1 + 8) + *(a1 + 16));
  if (v1)
  {
    v5 = v1;
    v2 = [v5 layer];
    v3 = sub_190D51C70();
    v4 = sub_190D56ED0();
    [v2 setValue:v3 forKeyPath:v4];
  }
}

char *sub_190921310(void *a1)
{
  *&v1[OBJC_IVAR___CKSwipeActionIndicator_imageView] = 0;
  *&v1[OBJC_IVAR___CKSwipeActionIndicator_currentScale] = 0;
  *&v1[OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SwipeActionIndicator();
  v3 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v4 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v5 = v3;
  v6 = [v4 initWithImage_];
  [v5 addSubview_];
  v7 = *&v5[OBJC_IVAR___CKSwipeActionIndicator_imageView];
  *&v5[OBJC_IVAR___CKSwipeActionIndicator_imageView] = v6;
  v8 = v6;

  sub_1909214B0();
  return v5;
}

uint64_t sub_1909214B0()
{
  v1 = OBJC_IVAR___CKSwipeActionIndicator_imageView;
  v2 = *(v0 + OBJC_IVAR___CKSwipeActionIndicator_imageView);
  if (v2)
  {
    [v2 setContentMode_];
    v3 = *(v0 + v1);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = v3;
      v6 = [v4 systemGray2Color];
      [v5 setTintColor_];
    }
  }

  [v0 setClipsToBounds_];
  v7 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  *(v0 + v7) = 0;
  v8 = OBJC_IVAR___CKSwipeActionIndicator_currentScale;
  v9 = swift_beginAccess();
  *(v0 + v8) = 0x3FF0000000000000;
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))(v9);
}

void sub_1909215E0()
{
  v1 = OBJC_IVAR___CKSwipeActionIndicator_imageView;
  v2 = *(v0 + OBJC_IVAR___CKSwipeActionIndicator_imageView);
  if (v2)
  {
    v3 = v0;
    v4 = *MEMORY[0x1E6979928];
    v5 = objc_allocWithZone(MEMORY[0x1E6979378]);
    v6 = v2;
    v7 = [v5 initWithType_];
    sub_190A86CA4(v7);

    v8 = *(v3 + v1);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 layer];
      v11 = sub_190D51C70();
      v12 = sub_190D56ED0();
      [v10 setValue:v11 forKeyPath:v12];
    }
  }
}

id sub_1909217C0(CGFloat a1, CGFloat a2)
{
  v5 = OBJC_IVAR___CKSwipeActionIndicator_currentScale;
  swift_beginAccess();
  *&v2[v5] = a1;
  v6 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  *&v2[v6] = a2;
  v7 = *(MEMORY[0x1E695EFD0] + 16);
  *&v10.a = *MEMORY[0x1E695EFD0];
  *&v10.c = v7;
  *&v10.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v9, &v10, a1, a1);
  v10 = v9;
  CGAffineTransformTranslate(&v9, &v10, a2, 0.0);
  v10 = v9;
  return [v2 setTransform_];
}

uint64_t sub_190921994(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for SwipeActionIndicator();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

void sub_190921AF4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_opt_self() sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    [v4 *a3];
  }

  else
  {
    __break(1u);
  }
}

void sub_190921B70(SEL *a1)
{
  v2 = [objc_opt_self() sharedBehaviors];
  if (v2)
  {
    v3 = v2;
    [v2 *a1];
  }

  else
  {
    __break(1u);
  }
}

void sub_190921BE0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_190D56ED0();
  v2 = [v0 BOOLForKey_];

  byte_1EAD570E8 = v2;
}

void sub_190921D3C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_vibrancyStroke) layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];

  v4 = [*(v0 + OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView) layer];
  v5 = sub_190D51C70();
  v6 = sub_190D56ED0();
  [v4 setValue:v5 forKeyPath:v6];
}

void (*sub_190921E68(uint64_t a1))()
{
  *(a1 + 8) = v1;
  *a1 = sub_190A86BA4();
  return sub_190921EBC;
}

id sub_190921EE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_vibrancyStroke;
  if (qword_1EAD51A08 != -1)
  {
    swift_once();
  }

  v7 = byte_1EAD570E8;
  v8 = objc_allocWithZone(type metadata accessor for VibrancyBackgroundLayerView());
  *&v3[v6] = sub_190C205CC(v7, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView;
  v10 = byte_1EAD570E8;
  v11 = objc_allocWithZone(type metadata accessor for CKUnborderedBackdropMaterialView());
  *&v3[v9] = sub_1908F0230(v10, 0.0, 0.0, 0.0, 0.0);
  v20.receiver = v3;
  v20.super_class = type metadata accessor for MaterialSwipeActionIndicator();
  v12 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  if (a1)
  {
    if (a2)
    {
      v13 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
      v14 = v12;
      v15 = [v13 initWithImage_];
      [v15 setContentMode_];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      [v16 setContentMode_];
      v17 = OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_vibrancyStroke;
      [*&v14[OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_vibrancyStroke] setMaskView_];
      v18 = OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView;
      [*&v14[OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView] setMaskView_];
      [v14 addSubview_];
      [v14 addSubview_];
      sub_1909214B0();

      a1 = v14;
    }
  }

  else
  {
    a1 = a2;
  }

  return v12;
}

void sub_19092221C()
{
  v1 = [v0 layer];
  [v1 setAllowsGroupOpacity_];
}

void sub_190922278()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MaterialSwipeActionIndicator();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_vibrancyStroke];
  [v0 bounds];
  [v1 setFrame_];
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView];
  [v0 bounds];
  [v2 setFrame_];
  v3 = [v1 maskView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame_];
  }

  v5 = [v2 maskView];
  if (v5)
  {
    v6 = v5;
    [v0 bounds];
    [v6 setFrame_];
  }
}

void sub_1909223D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit28MaterialSwipeActionIndicator_materialView);
}

id sub_190922428(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_190922720()
{
  v1 = OBJC_IVAR____TtC7ChatKit19CKPillShapedXButton_ckTintColor;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1909227C8(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit19CKPillShapedXButton_ckTintColor;
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsUpdateConfiguration];
}

id (*sub_190922828(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_190900A68;
}

void sub_19092288C()
{
  v0 = sub_190D57E10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57F90();
  v4 = [objc_opt_self() defaultFontForTextStyle_];
  if (v4)
  {
    v5 = v4;
    [v4 pointSize];
    v7 = v6;

    v8 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:v7];
    v9 = sub_190D56ED0();
    v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

    v11 = v10;
    sub_190D57F60();
    (*(v1 + 104))(v3, *MEMORY[0x1E69DC508], v0);
    sub_190D57E20();
    v12 = objc_opt_self();
    v13 = [v12 whiteColor];
    sub_190D57F00();
    v14 = [v12 grayColor];
    sub_190D57EF0();
  }

  else
  {
    __break(1u);
  }
}

id CKPillShapedXButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKPillShapedXButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  v4[OBJC_IVAR____TtC7ChatKit19CKPillShapedXButton_ckTintColor] = 1;
  v12 = type metadata accessor for CKPillShapedXButton();
  v18.receiver = v4;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  sub_19092288C();
  v14 = sub_190D57FB0();
  (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
  sub_190D57FE0();
  aBlock[4] = sub_190922CE0;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_37;
  v15 = _Block_copy(aBlock);
  [v13 setConfigurationUpdateHandler_];
  _Block_release(v15);

  return v13;
}

uint64_t sub_190922CE0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57FD0();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1908F00B4(v7);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = objc_opt_self();
  v14 = [v13 grayColor];
  if ([a1 isEnabled])
  {
    v15 = v14;
  }

  else
  {
    v15 = [v14 colorWithAlphaComponent_];
  }

  v16 = v15;
  v17 = [a1 isHighlighted];
  v25 = v16;
  if (v17)
  {
    v18 = [v13 systemGrayColor];
    [v18 colorWithAlphaComponent_];
  }

  else
  {
    v19 = v16;
  }

  sub_190D57EF0();
  if ([a1 isHighlighted] && (v20 = objc_msgSend(a1, sel_traitCollection), v21 = objc_msgSend(v20, sel_userInterfaceStyle), v20, v21 == 2))
  {
    v22 = [v13 whiteColor];
    [v22 colorWithAlphaComponent_];
  }

  else
  {
    v23 = [v13 whiteColor];
  }

  sub_190D57F00();
  (*(v9 + 16))(v5, v11, v8);
  (*(v9 + 56))(v5, 0, 1, v8);
  sub_190D57FE0();

  return (*(v9 + 8))(v11, v8);
}

id CKPillShapedXButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKPillShapedXButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19092322C()
{
  sub_1909233C0(319, &qword_1EAD52C00, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981AA0]);
  if (v0 <= 0x3F)
  {
    sub_1909233C0(319, &qword_1EAD571B8, _s9ViewModelCMa_11, MEMORY[0x1E6981AA0]);
    if (v1 <= 0x3F)
    {
      sub_19081C950();
      if (v2 <= 0x3F)
      {
        sub_1909233C0(319, &qword_1EAD55988, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1909233C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_190923468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_190D54800();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_19022FD14(v2 + *(a1 + 48), &v15 - v10, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_190D53A60();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_190D576B0();
    v14 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_19092366C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = 6;
  v8 = _s11ContentViewVMa_0();
  v9 = *(v8 + 48);
  v10 = &a4[*(v8 + 44)];
  *&a4[v9] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for DetailsViewConfiguration();
  sub_190925514(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration);
  v11 = a1;
  sub_190D56340();
  _s9ViewModelCMa_11();
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel_downloadAttachmentsTextFont;
  v16 = v11;
  *(v12 + v13) = sub_190D55490();
  v14 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel_buttonFont;
  *(v12 + v14) = sub_190D55360();
  v15 = OBJC_IVAR____TtCV7ChatKit32DetailsViewDownloadAssetsSection9ViewModel_buttonColor;
  *(v12 + v15) = sub_190D55D50();
  sub_190D51C50();
  sub_190D51C50();
  *(v12 + 16) = v16;
  sub_190925514(&qword_1EAD5A2F0, _s9ViewModelCMa_11);
  sub_190D56340();
  *v10 = a2;
  v10[1] = a3;
  sub_19029063C(a2);
  sub_190C1A690();
  sub_19022123C(a2);
}

uint64_t sub_190923884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v4 = *(a1 + 16);
  v47 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55E40);
  v6 = sub_190D54200();
  v50 = sub_190D58050();
  v53 = *(v50 - 8);
  v7 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v51 = &v46 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD571C8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v46 - v14;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD571D0);
  v16 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60);
  v20 = v2;
  sub_190D56320();
  v21 = v61[0];
  v22 = sub_190C1A870();

  v24 = 1;
  v57 = v19;
  v48 = v4;
  if (v22 < 1)
  {
    v26 = v20;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v23);
    v25 = *(a1 + 24);
    *(&v46 - 4) = v4;
    *(&v46 - 3) = v25;
    *(&v46 - 2) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57210);
    v26 = v20;
    sub_1909251C8();
    sub_190D562E0();
    v19 = v57;
    v61[0] = sub_190D55DA0();
    sub_1909252E0();
    v61[0] = sub_190D55E60();
    v27 = sub_190D561E0();
    *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD571F0) + 36)] = v27;
    v15[*(v12 + 36)] = 1;
    sub_19081E40C(v15, v19, &qword_1EAD571C8);
    v24 = 0;
  }

  (*(v13 + 56))(v19, v24, 1, v12);
  v28 = *&v26[*(a1 + 44)];
  v29 = v51;
  if (v28)
  {
    LOBYTE(v61[0]) = *v26;
    v30 = v46;
    v28(v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
    sub_190D56320();

    v31 = [objc_opt_self() currentDevice];
    v32 = [v31 userInterfaceIdiom];

    if (v32 == 5)
    {
      v33 = sub_190D55DA0();
    }

    else
    {
      v33 = 0;
    }

    v35 = v48;
    v61[0] = v33;
    v34 = *(a1 + 24);
    sub_190D55940();

    (*(v47 + 8))(v30, v35);
    (*(*(v6 - 8) + 56))(v29, 0, 1, v6);
  }

  else
  {
    (*(*(v6 - 8) + 56))(v51, 1, 1, v6);
    v34 = *(a1 + 24);
  }

  v36 = sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
  v61[3] = v34;
  v61[4] = v36;
  v61[2] = swift_getWitnessTable();
  v37 = v50;
  WitnessTable = swift_getWitnessTable();
  v39 = v54;
  sub_19096BC74(v29, v37, WitnessTable);
  v40 = v53;
  v41 = *(v53 + 8);
  v41(v29, v37);
  v42 = v57;
  v43 = v52;
  sub_19022FD14(v57, v52, &qword_1EAD571D0);
  v61[0] = v43;
  v44 = v55;
  (*(v40 + 16))(v55, v39, v37);
  v61[1] = v44;
  v60[0] = v49;
  v60[1] = v37;
  v58 = sub_190924F70();
  v59 = WitnessTable;
  sub_190B74A3C(v61, 2uLL, v60);
  v41(v39, v37);
  sub_19022EEA4(v42, &qword_1EAD571D0);
  v41(v44, v37);
  return sub_19022EEA4(v43, &qword_1EAD571D0);
}

__n128 sub_190923FBC@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57220);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v10 - v3;
  *v4 = sub_190D54AC0();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57238);
  sub_190924130(&v4[*(v5 + 44)]);
  sub_190D56500();
  sub_190D54430();
  sub_19081E40C(v4, a1, &qword_1EAD57220);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57210) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_190924130@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57240);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57248);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v48 = &v41 - v8;
  v10 = _s11ContentViewVMa_0();
  sub_190924754(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();
  v11 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_190DD1D90;
  swift_getKeyPath();
  v56 = v11;
  sub_190925514(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel);
  sub_190D51C20();

  v13 = v11[2];
  v14 = sub_190C1A870();

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(v12 + 56) = sub_19021DC70();
  *(v12 + 64) = sub_190925514(&qword_1EAD57250, sub_19021DC70);
  *(v12 + 32) = v15;
  v16 = sub_1908E9E4C();
  v18 = v17;

  v56 = v16;
  v57 = v18;
  sub_19081E484();
  v19 = sub_190D555F0();
  v21 = v20;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();
  sub_190D50920();

  v43 = sub_190D555B0();
  v42 = v24;
  LOBYTE(v12) = v25;
  v44 = v26;

  sub_19081E474(v19, v21, v23 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();

  LOBYTE(v19) = sub_190D552B0();
  LOBYTE(v11) = v12 & 1;
  LOBYTE(v56) = v12 & 1;
  LOBYTE(v52) = 0;
  v27 = v47;
  sub_190924AC0(v10, v47);
  v28 = v49;
  sub_19022FD14(v48, v49, &qword_1EAD57248);
  v29 = v45;
  sub_19022FD14(v27, v45, &qword_1EAD57240);
  v30 = v28;
  v31 = v46;
  sub_19022FD14(v30, v46, &qword_1EAD57248);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57258);
  v33 = (v31 + *(v32 + 48));
  v34 = v43;
  v35 = v42;
  *&v52 = v43;
  *(&v52 + 1) = v42;
  LOBYTE(v53) = v12 & 1;
  *(&v53 + 1) = *v51;
  DWORD1(v53) = *&v51[3];
  v36 = v44;
  *(&v53 + 1) = v44;
  LOBYTE(v54) = v19;
  *(&v54 + 1) = *v50;
  DWORD1(v54) = *&v50[3];
  *(&v54 + 1) = 0;
  *v55 = 0;
  v41 = xmmword_190DDF430;
  *&v55[8] = xmmword_190DDF430;
  v55[24] = 0;
  v37 = v52;
  v38 = v53;
  *(v33 + 57) = *&v55[9];
  v39 = *v55;
  v33[2] = v54;
  v33[3] = v39;
  *v33 = v37;
  v33[1] = v38;
  sub_19022FD14(v29, v31 + *(v32 + 64), &qword_1EAD57240);
  sub_19022FD14(&v52, &v56, &qword_1EAD596C0);
  sub_19022EEA4(v47, &qword_1EAD57240);
  sub_19022EEA4(v48, &qword_1EAD57248);
  sub_19022EEA4(v29, &qword_1EAD57240);
  v56 = v34;
  v57 = v35;
  v58 = v11;
  *v59 = *v51;
  *&v59[3] = *&v51[3];
  v60 = v36;
  v61 = v19;
  *v62 = *v50;
  *&v62[3] = *&v50[3];
  v63 = 0;
  v64 = 0;
  v65 = v41;
  v66 = 0;
  sub_19022EEA4(&v56, &qword_1EAD596C0);
  return sub_19022EEA4(v49, &qword_1EAD57248);
}

double sub_190924754@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_190D53A60();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57268);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  v25 = v2;
  sub_190D56320();

  v26 = sub_190D55EA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();

  sub_190923468(a1, v10);
  sub_190D55D50();
  (*(v5 + 104))(v8, *MEMORY[0x1E697DBB8], v4);
  sub_190D53A50();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = sub_190D55DF0();

  v15(v10, v4);
  KeyPath = swift_getKeyPath();
  v18 = (v14 + *(v12 + 44));
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
  v20 = *MEMORY[0x1E69816C0];
  v21 = sub_190D55F00();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  *v14 = v26;
  v14[1] = KeyPath;
  v14[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();

  LOBYTE(v18) = sub_190D552B0();
  v22 = v27;
  sub_1909254A4(v14, v27);
  v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57248) + 36);
  *v23 = v18;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  result = 8.0;
  *(v23 + 24) = xmmword_190DDF440;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_190924AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_190D54910();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v12 = *(v11 - 8);
  v28 = v11;
  v29 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();
  v15 = sub_190B04E2C();
  v17 = v16;

  v33 = v15;
  v34 = v17;
  (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(a1 + 16);
  (*(v9 + 32))(v19 + v18, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_19081E484();
  sub_190D56080();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();

  sub_190D54900();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  sub_190925514(&qword_1EAD57260, MEMORY[0x1E697C4D0]);
  v20 = v32;
  v21 = v28;
  v22 = v30;
  sub_190D55720();
  (*(v31 + 8))(v8, v22);
  (*(v29 + 8))(v14, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();
  v23 = sub_190B0501C();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57240);
  v26 = (v20 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v23;
  return result;
}

uint64_t sub_190924EB0()
{
  _s11ContentViewVMa_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57130);
  sub_190D56320();
  sub_190B05180();
}

unint64_t sub_190924F1C()
{
  result = qword_1EAD571C0;
  if (!qword_1EAD571C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD571C0);
  }

  return result;
}

unint64_t sub_190924F70()
{
  result = qword_1EAD571D8;
  if (!qword_1EAD571D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD571D0);
    sub_190924FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD571D8);
  }

  return result;
}

unint64_t sub_190924FF4()
{
  result = qword_1EAD571E0;
  if (!qword_1EAD571E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD571C8);
    sub_190925080();
    sub_190925280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD571E0);
  }

  return result;
}

unint64_t sub_190925080()
{
  result = qword_1EAD571E8;
  if (!qword_1EAD571E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD571F0);
    sub_190925138();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD571E8);
  }

  return result;
}

unint64_t sub_190925138()
{
  result = qword_1EAD571F8;
  if (!qword_1EAD571F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57200);
    sub_1909251C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD571F8);
  }

  return result;
}

unint64_t sub_1909251C8()
{
  result = qword_1EAD57208;
  if (!qword_1EAD57208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57210);
    sub_190233640(&qword_1EAD57218, &qword_1EAD57220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57208);
  }

  return result;
}

unint64_t sub_190925280()
{
  result = qword_1EAD57228;
  if (!qword_1EAD57228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57228);
  }

  return result;
}

unint64_t sub_1909252E0()
{
  result = qword_1EAD57230;
  if (!qword_1EAD57230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57230);
  }

  return result;
}

uint64_t sub_190925334()
{
  _s11ContentViewVMa_0();

  return sub_190924EB0();
}

uint64_t sub_1909253DC(uint64_t a1)
{
  v2 = sub_190D55F00();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_190D54540();
}

uint64_t sub_1909254A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190925514(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_19092555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, unint64_t a7, void *a8, uint64_t a9, unint64_t a10, char a11, __int128 a12)
{
  v95 = a6;
  v88 = a5;
  v89 = a2;
  v90 = a4;
  v86 = a1;
  v87 = a3;
  v14 = type metadata accessor for BannerButton(0);
  v98 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for BannerView();
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for AvatarImageModel(0);
  v19 = *(v97 - 8);
  v20 = MEMORY[0x1EEE9AC00](v97);
  v22 = (&v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x1EEE9AC00](v20);
  i = &v85 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v85 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v85 - v29);
  v92 = v16;
  v93 = v18;
  v91 = a8;
  if (a7)
  {
    if (a7 >> 62)
    {
      v28 = sub_190D581C0();
    }

    else
    {
      v28 = *((a7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      *&v102 = MEMORY[0x1E69E7CC0];
      sub_19082DE7C(0, v28 & ~(v28 >> 63), 0);
      if (v28 < 0)
      {
        goto LABEL_55;
      }

      v31 = v102;
      if ((a7 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v28; ++i)
        {
          v33 = MEMORY[0x193AF3B90](i, a7);
          sub_190D50450();
          *v30 = 0;
          v30[1] = v33;
          *&v102 = v31;
          v35 = *(v31 + 16);
          v34 = *(v31 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_19082DE7C(v34 > 1, v35 + 1, 1);
            v31 = v102;
          }

          *(v31 + 16) = v35 + 1;
          sub_1909296E0(v30, v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v35, type metadata accessor for AvatarImageModel);
        }
      }

      else
      {
        i = a7 + 32;
        do
        {
          v44 = *i;
          v45 = *i;
          sub_190D50450();
          *v22 = 0;
          v22[1] = v44;
          *&v102 = v31;
          v47 = *(v31 + 16);
          v46 = *(v31 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_19082DE7C(v46 > 1, v47 + 1, 1);
            v31 = v102;
          }

          *(v31 + 16) = v47 + 1;
          sub_1909296E0(v22, v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v47, type metadata accessor for AvatarImageModel);
          i += 8;
          --v28;
        }

        while (v28);
      }
    }

    goto LABEL_29;
  }

  v32 = v95;
  if (!v95)
  {
    v31 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  if (v95 >> 62)
  {
    goto LABEL_56;
  }

  v36 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v31 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v37 = v32;
    *&v102 = MEMORY[0x1E69E7CC0];
    sub_19082DE7C(0, v36 & ~(v36 >> 63), 0);
    if (v36 < 0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v31 = v102;
    v38 = v37;
    if ((v37 & 0xC000000000000001) != 0)
    {
      v39 = 0;
      do
      {
        v40 = v38;
        v41 = MEMORY[0x193AF3B90](v39);
        sub_190D50450();
        *v28 = v41;
        *(v28 + 8) = 0;
        *&v102 = v31;
        v43 = *(v31 + 16);
        v42 = *(v31 + 24);
        i = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          sub_19082DE7C(v42 > 1, v43 + 1, 1);
          v31 = v102;
        }

        ++v39;
        *(v31 + 16) = i;
        sub_1909296E0(v28, v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v43, type metadata accessor for AvatarImageModel);
        v38 = v40;
      }

      while (v36 != v39);
    }

    else
    {
      v76 = (v37 + 32);
      do
      {
        v77 = *v76;
        v78 = *v76;
        sub_190D50450();
        *i = v77;
        *(i + 8) = 0;
        *&v102 = v31;
        v80 = *(v31 + 16);
        v79 = *(v31 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_19082DE7C(v79 > 1, v80 + 1, 1);
          v31 = v102;
        }

        *(v31 + 16) = v80 + 1;
        sub_1909296E0(i, v31 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v80, type metadata accessor for AvatarImageModel);
        ++v76;
        --v36;
      }

      while (v36);
    }
  }

LABEL_29:
  v48 = v96;
  v49 = a10;
  if (!(a10 >> 62))
  {
    v28 = *((a10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_31;
  }

  while (1)
  {
    v81 = v49;
    v82 = sub_190D581C0();
    v49 = v81;
    v28 = v82;
LABEL_31:
    v19 = MEMORY[0x1E69E7CC0];
    if (!v28)
    {
      break;
    }

    v50 = v49;
    *&v102 = MEMORY[0x1E69E7CC0];
    sub_19082DE38(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v83 = v32;
      v84 = sub_190D581C0();
      v32 = v83;
      v36 = v84;
      goto LABEL_15;
    }

    i = 0;
    v19 = v102;
    v51 = v50;
    v96 = v50;
    v97 = v50 & 0xC000000000000001;
    v94 = v50 & 0xFFFFFFFFFFFFFF8;
    v95 = v28;
    while (1)
    {
      v52 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v97)
      {
        v53 = MEMORY[0x193AF3B90](i, v51);
      }

      else
      {
        if (i >= *(v94 + 16))
        {
          goto LABEL_51;
        }

        v53 = v51[i + 4];
      }

      v54 = v53;
      v99[0] = v53;
      sub_190925EB0(v99, v48);

      *&v102 = v19;
      v56 = *(v19 + 16);
      v55 = *(v19 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_19082DE38(v55 > 1, v56 + 1, 1);
        v19 = v102;
      }

      *(v19 + 16) = v56 + 1;
      sub_1909296E0(v48, v19 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v56, type metadata accessor for BannerButton);
      ++i;
      v51 = v96;
      if (v52 == v95)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

LABEL_42:
  v98 = a12;
  *&v102 = v86;
  *(&v102 + 1) = v89;
  *&v103 = v87;
  *(&v103 + 1) = v90;
  LOBYTE(v104) = v88 & 1;
  v57 = v91;
  *(&v104 + 1) = v31;
  *&v105 = v91;
  *(&v105 + 1) = a9;
  *&v106 = v19;
  BYTE8(v106) = a11 & 1;
  v107 = a12;
  v101[3] = &type metadata for BannerModel;
  v101[4] = &off_1F0412848;
  v58 = swift_allocObject();
  v101[0] = v58;
  v59 = v105;
  v58[3] = v104;
  v58[4] = v59;
  v60 = v107;
  v58[5] = v106;
  v58[6] = v60;
  v61 = v103;
  v58[1] = v102;
  v58[2] = v61;
  KeyPath = swift_getKeyPath();
  v63 = v93;
  *v93 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  v64 = v92;
  sub_19083B854(v101, &v100);
  sub_190D50920();
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  v65 = v57;
  sub_19029063C(v98);
  sub_1908C03C8(&v102, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998);
  sub_190D55FC0();
  __swift_destroy_boxed_opaque_existential_0(v101);
  v66 = v63 + v64[6];
  *v66 = sub_1908B9430;
  *(v66 + 1) = 0;
  v66[16] = 0;
  *(v63 + v64[7]) = 0x4042000000000000;
  *(v63 + v64[8]) = 0x403C000000000000;
  v67 = v64[9];
  v68 = [objc_opt_self() currentDevice];
  v69 = [v68 userInterfaceIdiom];

  *(v63 + v67) = v69;
  v70 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68));
  v71 = sub_190D54B60();
  v72 = [v71 view];
  if (!v72)
  {
    goto LABEL_58;
  }

  v73 = v72;
  v74 = [objc_opt_self() clearColor];
  [v73 setBackgroundColor_];

  sub_190D54B40();
  v75 = [v71 view];

  if (v75)
  {

    sub_1908C0424(&v102);

    return;
  }

LABEL_59:
  __break(1u);
}

size_t sub_190925EB0@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MenuItem(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = [*a1 menuItems];
  v41 = a2;
  if (!v8)
  {
    v14 = 0;
    goto LABEL_19;
  }

  v9 = v8;
  sub_1902188FC(0, &qword_1EAD55C60);
  v10 = sub_190D57180();

  if (v10 >> 62)
  {
    v11 = sub_190D581C0();
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_18:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_4:
  v40 = v7;
  v47 = MEMORY[0x1E69E7CC0];
  result = sub_19082DF20(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
    __break(1u);
    return result;
  }

  v13 = 0;
  v14 = v47;
  v15 = v10;
  v42 = v10 & 0xC000000000000001;
  v43 = v11;
  v44 = v10;
  do
  {
    if (v42)
    {
      v16 = MEMORY[0x193AF3B90](v13, v15);
    }

    else
    {
      v16 = *(v15 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = [v16 title];
    v19 = sub_190D56F10();
    v21 = v20;

    v22 = [v17 imageName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_190D56F10();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v27 = [v17 handler];
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *v6 = v19;
    v6[1] = v21;
    v6[2] = v24;
    v6[3] = v26;
    v6[4] = sub_190841AA4;
    v6[5] = v28;
    sub_190D50450();

    v47 = v14;
    v30 = *(v14 + 16);
    v29 = *(v14 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_19082DF20(v29 > 1, v30 + 1, 1);
      v14 = v47;
    }

    ++v13;
    *(v14 + 16) = v30 + 1;
    sub_1909296E0(v6, v14 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, type metadata accessor for MenuItem);
    v15 = v44;
  }

  while (v43 != v13);

  v7 = v40;
LABEL_19:
  v31 = [v7 title];
  v32 = sub_190D56F10();
  v33 = v7;
  v35 = v34;

  v36 = [v33 handler];
  if (v36)
  {
    v37 = v36;
    v36 = swift_allocObject();
    v36[2] = v37;
    v38 = sub_19084CED8;
  }

  else
  {
    v38 = 0;
  }

  v39 = v41;
  *v41 = v32;
  v39[1] = v35;
  v39[2] = v38;
  v39[3] = v36;
  v39[4] = v14;
  type metadata accessor for BannerButton(0);
  return sub_190D50450();
}

uint64_t sub_1909264A0()
{
  IMSetUserLoginIntent();

  return IMSetUserIgnoreLogoutIntent();
}

void sub_1909264D0()
{
  v0 = sub_190D515F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = CKMessagesPreferencesURL();
    if (v6)
    {
      v7 = v6;
      sub_190D515B0();

      v8 = sub_190D51570();
      (*(v1 + 8))(v3, v0);
    }

    else
    {
      v8 = 0;
    }

    sub_190820FDC(MEMORY[0x1E69E7CC0]);
    v9 = sub_190D56D60();

    [v5 openSensitiveURL:v8 withOptions:v9];
  }

  else
  {
    __break(1u);
  }
}

id CKBannerViewFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKBannerViewFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBannerViewFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKBannerViewFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKBannerViewFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1909267E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, void *a7, unint64_t a8, char a9, __int128 a10)
{
  v91 = a8;
  v88 = a5;
  v80 = a1;
  v81 = a3;
  v89 = type metadata accessor for AvatarImageModel(0);
  v14 = *(v89 - 8);
  v15 = MEMORY[0x1EEE9AC00](v89);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v78 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v78 - v24);
  v26 = type metadata accessor for BannerButton(0);
  v90 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v79 = (&v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = type metadata accessor for BannerView();
  MEMORY[0x1EEE9AC00](v82);
  v85 = a4;
  v86 = (&v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = a7;
  v84 = a2;
  if (a6)
  {
    if (a6 >> 62)
    {
      v17 = sub_190D581C0();
    }

    else
    {
      v17 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      *&v95 = MEMORY[0x1E69E7CC0];
      sub_19082DE7C(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        goto LABEL_55;
      }

      v29 = v95;
      if ((a6 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v17; ++i)
        {
          v31 = MEMORY[0x193AF3B90](i, a6);
          sub_190D50450();
          *v23 = 0;
          *(v23 + 8) = v31;
          *&v95 = v29;
          v33 = *(v29 + 16);
          v32 = *(v29 + 24);
          v20 = v33 + 1;
          if (v33 >= v32 >> 1)
          {
            sub_19082DE7C(v32 > 1, v33 + 1, 1);
            v29 = v95;
          }

          *(v29 + 16) = v20;
          sub_1909296E0(v23, v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v33, type metadata accessor for AvatarImageModel);
        }
      }

      else
      {
        v39 = (a6 + 32);
        do
        {
          v40 = *v39;
          v41 = *v39;
          sub_190D50450();
          *v25 = 0;
          v25[1] = v40;
          *&v95 = v29;
          v43 = *(v29 + 16);
          v42 = *(v29 + 24);
          v20 = v43 + 1;
          if (v43 >= v42 >> 1)
          {
            sub_19082DE7C(v42 > 1, v43 + 1, 1);
            v29 = v95;
          }

          *(v29 + 16) = v20;
          sub_1909296E0(v25, v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v43, type metadata accessor for AvatarImageModel);
          ++v39;
          --v17;
        }

        while (v17);
      }
    }

    goto LABEL_29;
  }

  v23 = v88;
  if (!v88)
  {
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  if (v88 >> 62)
  {
    goto LABEL_56;
  }

  v34 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:
  v29 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    *&v95 = MEMORY[0x1E69E7CC0];
    sub_19082DE7C(0, v34 & ~(v34 >> 63), 0);
    if (v34 < 0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v29 = v95;
    if ((v23 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v34; ++j)
      {
        v36 = MEMORY[0x193AF3B90](j, v23);
        sub_190D50450();
        *v17 = v36;
        *(v17 + 8) = 0;
        *&v95 = v29;
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        v20 = v38 + 1;
        if (v38 >= v37 >> 1)
        {
          sub_19082DE7C(v37 > 1, v38 + 1, 1);
          v29 = v95;
        }

        *(v29 + 16) = v20;
        sub_1909296E0(v17, v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, type metadata accessor for AvatarImageModel);
      }
    }

    else
    {
      v71 = (v23 + 32);
      do
      {
        v72 = *v71;
        v73 = *v71;
        sub_190D50450();
        *v20 = v72;
        *(v20 + 8) = 0;
        *&v95 = v29;
        v75 = *(v29 + 16);
        v74 = *(v29 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_19082DE7C(v74 > 1, v75 + 1, 1);
          v29 = v95;
        }

        *(v29 + 16) = v75 + 1;
        sub_1909296E0(v20, v29 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v75, type metadata accessor for AvatarImageModel);
        ++v71;
        --v34;
      }

      while (v34);
    }
  }

LABEL_29:
  v44 = v91;
  if (!(v91 >> 62))
  {
    v45 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_31;
  }

  while (1)
  {
    v76 = v44;
    v77 = sub_190D581C0();
    v44 = v76;
    v45 = v77;
LABEL_31:
    v14 = MEMORY[0x1E69E7CC0];
    if (!v45)
    {
      break;
    }

    v17 = v44;
    *&v95 = MEMORY[0x1E69E7CC0];
    sub_19082DE38(0, v45 & ~(v45 >> 63), 0);
    if (v45 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v34 = sub_190D581C0();
      goto LABEL_15;
    }

    v20 = 0;
    v14 = v95;
    v46 = v17;
    v88 = v45;
    v89 = v17 & 0xC000000000000001;
    v87 = v17 & 0xFFFFFFFFFFFFFF8;
    v23 = v79;
    while (1)
    {
      v47 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v89)
      {
        v48 = MEMORY[0x193AF3B90](v20, v46);
      }

      else
      {
        if (v20 >= *(v87 + 16))
        {
          goto LABEL_51;
        }

        v48 = *(v46 + 8 * v20 + 32);
      }

      v49 = v48;
      v92[0] = v48;
      sub_190925EB0(v92, v23);

      *&v95 = v14;
      v51 = *(v14 + 16);
      v50 = *(v14 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_19082DE38(v50 > 1, v51 + 1, 1);
        v14 = v95;
      }

      *(v14 + 16) = v51 + 1;
      sub_1909296E0(v23, v14 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v51, type metadata accessor for BannerButton);
      ++v20;
      v46 = v91;
      if (v47 == v88)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
  }

LABEL_42:
  *&v95 = v80;
  *(&v95 + 1) = v84;
  *&v96 = v81;
  *(&v96 + 1) = v85;
  LOBYTE(v97) = 1;
  v52 = v83;
  *(&v97 + 1) = v29;
  v98 = v83;
  *&v99 = v14;
  BYTE8(v99) = a9 & 1;
  v100 = a10;
  v94[3] = &type metadata for BannerModel;
  v94[4] = &off_1F0412848;
  v53 = swift_allocObject();
  v94[0] = v53;
  v54 = v98;
  v53[3] = v97;
  v53[4] = v54;
  v55 = v100;
  v53[5] = v99;
  v53[6] = v55;
  v56 = v96;
  v53[1] = v95;
  v53[2] = v56;
  KeyPath = swift_getKeyPath();
  v58 = v86;
  *v86 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  v59 = v82;
  sub_19083B854(v94, &v93);
  v60 = v52;
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  sub_19029063C(a10);
  sub_1908C03C8(&v95, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998);
  sub_190D55FC0();
  __swift_destroy_boxed_opaque_existential_0(v94);
  v61 = v58 + v59[6];
  *v61 = sub_1908B9430;
  *(v61 + 1) = 0;
  v61[16] = 0;
  *(v58 + v59[7]) = 0x4042000000000000;
  *(v58 + v59[8]) = 0x403C000000000000;
  v62 = v59[9];
  v63 = [objc_opt_self() currentDevice];
  v64 = [v63 userInterfaceIdiom];

  *(v58 + v62) = v64;
  v65 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68));
  v66 = sub_190D54B60();
  v67 = [v66 view];
  if (!v67)
  {
    goto LABEL_58;
  }

  v68 = v67;
  v69 = [objc_opt_self() clearColor];
  [v68 setBackgroundColor_];

  sub_190D54B40();
  v70 = [v66 view];

  if (v70)
  {

    sub_1908C0424(&v95);

    return;
  }

LABEL_59:
  __break(1u);
}

void sub_190927110()
{
  v0 = type metadata accessor for BannerButton(0);
  v95 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v96 = (&v85 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = type metadata accessor for BannerView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = CKFrameworkBundle();
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = v5;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v94 = sub_190D56F10();
  v11 = v10;

  v12 = CKMyAccountName();
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = v12;
  v14 = sub_190D56F10();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

LABEL_9:
    v26 = CKFrameworkBundle();
    if (!v26)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v27 = v26;
    v28 = sub_190D56ED0();
    v29 = sub_190D56ED0();
    v30 = [v27 localizedStringForKey:v28 value:0 table:v29];

    v24 = sub_190D56F10();
    v93 = v31;

LABEL_11:
    v32 = CKFrameworkBundle();
    if (!v32)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v33 = v32;
    v91 = v24;
    v92 = v2;
    v34 = sub_190D56ED0();
    v35 = sub_190D56ED0();
    v36 = [v33 localizedStringForKey:v34 value:0 table:v35];

    if (!v36)
    {
      sub_190D56F10();
      v36 = sub_190D56ED0();
    }

    v37 = objc_allocWithZone(CKBannerButtonObject);
    *&v103 = sub_1909264A0;
    *(&v103 + 1) = 0;
    *&v101 = MEMORY[0x1E69E9820];
    *(&v101 + 1) = 1107296256;
    *&v102 = sub_19084156C;
    *(&v102 + 1) = &block_descriptor_24;
    v38 = _Block_copy(&v101);

    v39 = [v37 initWithTitle:v36 handler:v38];
    _Block_release(v38);

    v40 = CKFrameworkBundle();
    if (!v40)
    {
      goto LABEL_35;
    }

    v41 = v40;
    v89 = v4;
    v90 = v11;
    v42 = sub_190D56ED0();
    v43 = sub_190D56ED0();
    v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

    if (!v44)
    {
      sub_190D56F10();
      v44 = sub_190D56ED0();
    }

    v45 = objc_allocWithZone(CKBannerButtonObject);
    *&v103 = sub_1909264D0;
    *(&v103 + 1) = 0;
    *&v101 = MEMORY[0x1E69E9820];
    *(&v101 + 1) = 1107296256;
    *&v102 = sub_19084156C;
    *(&v102 + 1) = &block_descriptor_27_0;
    v46 = _Block_copy(&v101);

    v47 = [v45 initWithTitle:v44 handler:v46];
    _Block_release(v46);

    v48 = sub_190D55EA0();
    v49 = sub_190D55D40();
    KeyPath = swift_getKeyPath();
    *&v101 = v48;
    *(&v101 + 1) = KeyPath;
    *&v102 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57270);
    sub_1909295F0();
    v51 = sub_190D561E0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD5CE0;
    *(inited + 32) = v39;
    v97 = (inited + 32);
    *(inited + 40) = v47;
    v107 = MEMORY[0x1E69E7CC0];
    sub_190D50920();
    v88 = v39;
    v87 = v47;
    sub_19082DE38(0, 2, 0);
    v53 = v107;
    v54 = v96;
    v85 = inited & 0xFFFFFFFFFFFFFF8;
    if ((inited & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x193AF3B90](0, inited);
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v55 = *v97;
    }

    v56 = v55;
    v86 = v51;
    *&v101 = v55;
    sub_190925EB0(&v101, v54);

    v57 = v54;
    v59 = *(v53 + 16);
    v58 = *(v53 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_19082DE38(v58 > 1, v59 + 1, 1);
      v53 = v107;
    }

    *(v53 + 16) = v59 + 1;
    v60 = (*(v95 + 80) + 32) & ~*(v95 + 80);
    v61 = *(v95 + 72);
    sub_1909296E0(v57, v53 + v60 + v61 * v59, type metadata accessor for BannerButton);
    v62 = v57;
    if ((inited & 0xC000000000000001) != 0)
    {
      v63 = MEMORY[0x193AF3B90](1, inited);
      goto LABEL_27;
    }

    if (*(v85 + 16) >= 2uLL)
    {
      v63 = *(inited + 40);
LABEL_27:
      v64 = v63;
      *&v101 = v63;
      sub_190925EB0(&v101, v57);

      v107 = v53;
      v66 = *(v53 + 16);
      v65 = *(v53 + 24);
      v67 = v90;
      if (v66 >= v65 >> 1)
      {
        sub_19082DE38(v65 > 1, v66 + 1, 1);
        v53 = v107;
      }

      *(v53 + 16) = v66 + 1;
      sub_1909296E0(v62, v53 + v60 + v61 * v66, type metadata accessor for BannerButton);
      *&v101 = v94;
      *(&v101 + 1) = v67;
      *&v102 = v91;
      *(&v102 + 1) = v93;
      LOBYTE(v103) = 0;
      *(&v103 + 1) = MEMORY[0x1E69E7CC0];
      *&v104 = 0;
      *(&v104 + 1) = v86;
      *&v105 = v53;
      BYTE8(v105) = 0;
      v106 = 0uLL;
      v100[3] = &type metadata for BannerModel;
      v100[4] = &off_1F0412848;
      v68 = swift_allocObject();
      v100[0] = v68;
      v69 = v104;
      v68[3] = v103;
      v68[4] = v69;
      v70 = v106;
      v68[5] = v105;
      v68[6] = v70;
      v71 = v102;
      v68[1] = v101;
      v68[2] = v71;
      v72 = swift_getKeyPath();
      v73 = v89;
      *v89 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
      swift_storeEnumTagMultiPayload();
      v74 = v92;
      sub_19083B854(v100, &v99);
      sub_190D50920();
      sub_190D52690();
      sub_190D52690();
      sub_190D50920();
      sub_1908C03C8(&v101, &v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998);
      sub_190D55FC0();
      __swift_destroy_boxed_opaque_existential_0(v100);
      v75 = v73 + v74[6];
      *v75 = sub_1908B9430;
      *(v75 + 1) = 0;
      v75[16] = 0;
      *(v73 + v74[7]) = 0x4042000000000000;
      *(v73 + v74[8]) = 0x403C000000000000;
      v76 = v74[9];
      v77 = [objc_opt_self() currentDevice];
      v78 = [v77 userInterfaceIdiom];

      *(v73 + v76) = v78;
      v79 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68));
      v80 = sub_190D54B60();
      v81 = [v80 view];
      if (v81)
      {
        v82 = v81;
        v83 = [objc_opt_self() clearColor];
        [v82 setBackgroundColor_];

        sub_190D54B40();
        v84 = [v80 view];

        if (v84)
        {

          sub_1908C0424(&v101);

          swift_setDeallocating();
          swift_arrayDestroy();
          return;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_190DD1D90;
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_19081EA10();
  *(v18 + 32) = v14;
  *(v18 + 40) = v16;
  v19 = CKFrameworkBundle();
  if (v19)
  {
    v20 = v19;
    v21 = sub_190D56ED0();
    v22 = sub_190D56ED0();
    v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

    sub_190D56F10();
    v24 = sub_190D56EE0();
    v93 = v25;

    goto LABEL_11;
  }

LABEL_39:
  __break(1u);
}

void sub_190927C38()
{
  v0 = type metadata accessor for BannerButton(0);
  v83 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v84 = (&v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = type metadata accessor for BannerView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = CKFrameworkBundle();
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v82 = sub_190D56F10();
  v11 = v10;

  v12 = CKFrameworkBundle();
  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = v12;
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v81 = sub_190D56F10();
  v18 = v17;

  v19 = CKFrameworkBundle();
  if (!v19)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = v19;
  v77 = v2;
  v78 = v18;
  v79 = v4;
  v80 = v11;
  v21 = sub_190D56ED0();
  v22 = sub_190D56ED0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    sub_190D56F10();
    v23 = sub_190D56ED0();
  }

  v24 = objc_allocWithZone(CKBannerButtonObject);
  *&v91 = sub_190926678;
  *(&v91 + 1) = 0;
  *&v89 = MEMORY[0x1E69E9820];
  *(&v89 + 1) = 1107296256;
  *&v90 = sub_19084156C;
  *(&v90 + 1) = &block_descriptor_17_0;
  v25 = _Block_copy(&v89);

  v26 = [v24 initWithTitle:v23 handler:v25];
  _Block_release(v25);

  v27 = CKFrameworkBundle();
  v28 = v84;
  if (!v27)
  {
    goto LABEL_28;
  }

  v29 = v27;
  v30 = sub_190D56ED0();
  v31 = sub_190D56ED0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  if (!v32)
  {
    sub_190D56F10();
    v32 = sub_190D56ED0();
  }

  v33 = objc_allocWithZone(CKBannerButtonObject);
  *&v91 = sub_19085C134;
  *(&v91 + 1) = 0;
  *&v89 = MEMORY[0x1E69E9820];
  *(&v89 + 1) = 1107296256;
  *&v90 = sub_19084156C;
  *(&v90 + 1) = &block_descriptor_20_0;
  v34 = _Block_copy(&v89);

  v35 = [v33 initWithTitle:v32 handler:v34];
  _Block_release(v34);

  v36 = sub_190D55EA0();
  v37 = sub_190D55D40();
  KeyPath = swift_getKeyPath();
  *&v89 = v36;
  *(&v89 + 1) = KeyPath;
  *&v90 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57270);
  sub_1909295F0();
  v39 = sub_190D561E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD5CE0;
  *(inited + 32) = v26;
  v85 = (inited + 32);
  *(inited + 40) = v35;
  v95 = MEMORY[0x1E69E7CC0];
  v76 = v39;
  sub_190D50920();
  v75 = v26;
  v74 = v35;
  sub_19082DE38(0, 2, 0);
  v41 = v95;
  v73 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x193AF3B90](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v42 = *v85;
  }

  v43 = v42;
  *&v89 = v42;
  sub_190925EB0(&v89, v28);

  v44 = v28;
  v46 = *(v41 + 16);
  v45 = *(v41 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_19082DE38(v45 > 1, v46 + 1, 1);
    v41 = v95;
  }

  *(v41 + 16) = v46 + 1;
  v47 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v48 = *(v83 + 72);
  sub_1909296E0(v44, v41 + v47 + v48 * v46, type metadata accessor for BannerButton);
  if ((inited & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x193AF3B90](1, inited);
    goto LABEL_19;
  }

  if (*(v73 + 16) < 2uLL)
  {
    goto LABEL_24;
  }

  v49 = *(inited + 40);
LABEL_19:
  v50 = v49;
  *&v89 = v49;
  sub_190925EB0(&v89, v44);

  v95 = v41;
  v52 = *(v41 + 16);
  v51 = *(v41 + 24);
  v53 = v80;
  v54 = v78;
  if (v52 >= v51 >> 1)
  {
    v72 = v78;
    sub_19082DE38(v51 > 1, v52 + 1, 1);
    v54 = v72;
    v41 = v95;
  }

  *(v41 + 16) = v52 + 1;
  sub_1909296E0(v44, v41 + v47 + v48 * v52, type metadata accessor for BannerButton);
  *&v89 = v82;
  *(&v89 + 1) = v53;
  *&v90 = v81;
  *(&v90 + 1) = v54;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = MEMORY[0x1E69E7CC0];
  *&v92 = 0;
  *(&v92 + 1) = v76;
  *&v93 = v41;
  BYTE8(v93) = 0;
  v94 = 0uLL;
  v88[3] = &type metadata for BannerModel;
  v88[4] = &off_1F0412848;
  v55 = swift_allocObject();
  v88[0] = v55;
  v56 = v92;
  v55[3] = v91;
  v55[4] = v56;
  v57 = v94;
  v55[5] = v93;
  v55[6] = v57;
  v58 = v90;
  v55[1] = v89;
  v55[2] = v58;
  v59 = swift_getKeyPath();
  v60 = v79;
  *v79 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  v61 = v77;
  sub_19083B854(v88, &v87);
  sub_190D50920();
  sub_190D52690();
  sub_190D52690();
  sub_190D50920();
  sub_1908C03C8(&v89, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998);
  sub_190D55FC0();
  __swift_destroy_boxed_opaque_existential_0(v88);
  v62 = v60 + v61[6];
  *v62 = sub_1908B9430;
  *(v62 + 1) = 0;
  v62[16] = 0;
  *(v60 + v61[7]) = 0x4042000000000000;
  *(v60 + v61[8]) = 0x403C000000000000;
  v63 = v61[9];
  v64 = [objc_opt_self() currentDevice];
  v65 = [v64 userInterfaceIdiom];

  *(v60 + v63) = v65;
  v66 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68));
  v67 = sub_190D54B60();
  v68 = [v67 view];
  if (!v68)
  {
    goto LABEL_29;
  }

  v69 = v68;
  v70 = [objc_opt_self() clearColor];
  [v69 setBackgroundColor_];

  sub_190D54B40();
  v71 = [v67 view];

  if (v71)
  {

    sub_1908C0424(&v89);

    swift_setDeallocating();
    swift_arrayDestroy();
    return;
  }

LABEL_30:
  __break(1u);
}

void sub_190928648()
{
  v0 = type metadata accessor for BannerButton(0);
  v83 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v84 = (&v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = type metadata accessor for BannerView();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = CKFrameworkBundle();
  if (!v5)
  {
    goto LABEL_25;
  }

  v6 = v5;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  v82 = sub_190D56F10();
  v11 = v10;

  v12 = CKFrameworkBundle();
  if (!v12)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = v12;
  v14 = sub_190D56ED0();
  v15 = sub_190D56ED0();
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v81 = sub_190D56F10();
  v18 = v17;

  v19 = CKFrameworkBundle();
  if (!v19)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = v19;
  v77 = v2;
  v78 = v18;
  v79 = v4;
  v80 = v11;
  v21 = sub_190D56ED0();
  v22 = sub_190D56ED0();
  v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

  if (!v23)
  {
    sub_190D56F10();
    v23 = sub_190D56ED0();
  }

  v24 = objc_allocWithZone(CKBannerButtonObject);
  *&v91 = sub_1909266AC;
  *(&v91 + 1) = 0;
  *&v89 = MEMORY[0x1E69E9820];
  *(&v89 + 1) = 1107296256;
  *&v90 = sub_19084156C;
  *(&v90 + 1) = &block_descriptor_38;
  v25 = _Block_copy(&v89);

  v26 = [v24 initWithTitle:v23 handler:v25];
  _Block_release(v25);

  v27 = CKFrameworkBundle();
  v28 = v84;
  if (!v27)
  {
    goto LABEL_28;
  }

  v29 = v27;
  v30 = sub_190D56ED0();
  v31 = sub_190D56ED0();
  v32 = [v29 localizedStringForKey:v30 value:0 table:v31];

  if (!v32)
  {
    sub_190D56F10();
    v32 = sub_190D56ED0();
  }

  v33 = objc_allocWithZone(CKBannerButtonObject);
  *&v91 = sub_19085C134;
  *(&v91 + 1) = 0;
  *&v89 = MEMORY[0x1E69E9820];
  *(&v89 + 1) = 1107296256;
  *&v90 = sub_19084156C;
  *(&v90 + 1) = &block_descriptor_13;
  v34 = _Block_copy(&v89);

  v35 = [v33 initWithTitle:v32 handler:v34];
  _Block_release(v34);

  v36 = sub_190D55EA0();
  v37 = sub_190D55D40();
  KeyPath = swift_getKeyPath();
  *&v89 = v36;
  *(&v89 + 1) = KeyPath;
  *&v90 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57270);
  sub_1909295F0();
  v39 = sub_190D561E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD5CE0;
  *(inited + 32) = v26;
  v85 = (inited + 32);
  *(inited + 40) = v35;
  v95 = MEMORY[0x1E69E7CC0];
  v76 = v39;
  sub_190D50920();
  v75 = v26;
  v74 = v35;
  sub_19082DE38(0, 2, 0);
  v41 = v95;
  v73 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x193AF3B90](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v42 = *v85;
  }

  v43 = v42;
  *&v89 = v42;
  sub_190925EB0(&v89, v28);

  v44 = v28;
  v46 = *(v41 + 16);
  v45 = *(v41 + 24);
  if (v46 >= v45 >> 1)
  {
    sub_19082DE38(v45 > 1, v46 + 1, 1);
    v41 = v95;
  }

  *(v41 + 16) = v46 + 1;
  v47 = (*(v83 + 80) + 32) & ~*(v83 + 80);
  v48 = *(v83 + 72);
  sub_1909296E0(v44, v41 + v47 + v48 * v46, type metadata accessor for BannerButton);
  if ((inited & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x193AF3B90](1, inited);
    goto LABEL_19;
  }

  if (*(v73 + 16) < 2uLL)
  {
    goto LABEL_24;
  }

  v49 = *(inited + 40);
LABEL_19:
  v50 = v49;
  *&v89 = v49;
  sub_190925EB0(&v89, v44);

  v95 = v41;
  v52 = *(v41 + 16);
  v51 = *(v41 + 24);
  v53 = v80;
  v54 = v78;
  if (v52 >= v51 >> 1)
  {
    v72 = v78;
    sub_19082DE38(v51 > 1, v52 + 1, 1);
    v54 = v72;
    v41 = v95;
  }

  *(v41 + 16) = v52 + 1;
  sub_1909296E0(v44, v41 + v47 + v48 * v52, type metadata accessor for BannerButton);
  *&v89 = v82;
  *(&v89 + 1) = v53;
  *&v90 = v81;
  *(&v90 + 1) = v54;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = MEMORY[0x1E69E7CC0];
  *&v92 = 0;
  *(&v92 + 1) = v76;
  *&v93 = v41;
  BYTE8(v93) = 0;
  v94 = 0uLL;
  v88[3] = &type metadata for BannerModel;
  v88[4] = &off_1F0412848;
  v55 = swift_allocObject();
  v88[0] = v55;
  v56 = v92;
  v55[3] = v91;
  v55[4] = v56;
  v57 = v94;
  v55[5] = v93;
  v55[6] = v57;
  v58 = v90;
  v55[1] = v89;
  v55[2] = v58;
  v59 = swift_getKeyPath();
  v60 = v79;
  *v79 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  v61 = v77;
  sub_19083B854(v88, &v87);
  sub_190D50920();
  sub_190D52690();
  sub_190D52690();
  sub_190D50920();
  sub_1908C03C8(&v89, &v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998);
  sub_190D55FC0();
  __swift_destroy_boxed_opaque_existential_0(v88);
  v62 = v60 + v61[6];
  *v62 = sub_1908B9430;
  *(v62 + 1) = 0;
  v62[16] = 0;
  *(v60 + v61[7]) = 0x4042000000000000;
  *(v60 + v61[8]) = 0x403C000000000000;
  v63 = v61[9];
  v64 = [objc_opt_self() currentDevice];
  v65 = [v64 userInterfaceIdiom];

  *(v60 + v63) = v65;
  v66 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68));
  v67 = sub_190D54B60();
  v68 = [v67 view];
  if (!v68)
  {
    goto LABEL_29;
  }

  v69 = v68;
  v70 = [objc_opt_self() clearColor];
  [v69 setBackgroundColor_];

  sub_190D54B40();
  v71 = [v67 view];

  if (v71)
  {

    sub_1908C0424(&v89);

    swift_setDeallocating();
    swift_arrayDestroy();
    return;
  }

LABEL_30:
  __break(1u);
}

void sub_190929058()
{
  v0 = type metadata accessor for BannerView();
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = CKFrameworkBundle();
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = sub_190D56ED0();
  v6 = sub_190D56ED0();
  v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

  v8 = sub_190D56F10();
  v10 = v9;

  v11 = CKFrameworkBundle();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_190D56ED0();
  v14 = sub_190D56ED0();
  v15 = [v12 localizedStringForKey:v13 value:0 table:v14];

  v16 = sub_190D56F10();
  v18 = v17;

  v19 = sub_190D55ED0();
  v20 = CKFrameworkBundle();
  v21 = sub_190D55E40();
  KeyPath = swift_getKeyPath();
  *&v42 = v19;
  *(&v42 + 1) = KeyPath;
  *&v43 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57270);
  sub_1909295F0();
  v23 = sub_190D561E0();
  *&v42 = v8;
  *(&v42 + 1) = v10;
  *&v43 = v16;
  *(&v43 + 1) = v18;
  LOBYTE(v44) = 0;
  *(&v44 + 1) = MEMORY[0x1E69E7CC0];
  *&v45 = 0;
  *(&v45 + 1) = v23;
  *&v46 = MEMORY[0x1E69E7CC0];
  BYTE8(v46) = 0;
  v47 = 0uLL;
  v41[3] = &type metadata for BannerModel;
  v41[4] = &off_1F0412848;
  v24 = swift_allocObject();
  v41[0] = v24;
  v25 = v45;
  v24[3] = v44;
  v24[4] = v25;
  v26 = v47;
  v24[5] = v46;
  v24[6] = v26;
  v27 = v43;
  v24[1] = v42;
  v24[2] = v27;
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  sub_19083B854(v41, &v40);
  sub_190D52690();
  sub_190D52690();
  sub_190D50920();
  sub_1908C03C8(&v42, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55998);
  sub_190D55FC0();
  __swift_destroy_boxed_opaque_existential_0(v41);
  v28 = v2 + v0[6];
  *v28 = sub_1908B9430;
  *(v28 + 1) = 0;
  v28[16] = 0;
  *(v2 + v0[7]) = 0x4042000000000000;
  *(v2 + v0[8]) = 0x403C000000000000;
  v29 = v0[9];
  v30 = [objc_opt_self() currentDevice];
  v31 = [v30 userInterfaceIdiom];

  *(v2 + v29) = v31;
  v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55C68));
  v33 = sub_190D54B60();
  v34 = [v33 view];
  if (!v34)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v35 = v34;
  v36 = [objc_opt_self() clearColor];
  [v35 setBackgroundColor_];

  sub_190D54B40();
  v37 = [v33 view];

  if (v37)
  {

    sub_1908C0424(&v42);

    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1909295F0()
{
  result = qword_1EAD45288;
  if (!qword_1EAD45288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD57270);
    sub_19092967C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45288);
  }

  return result;
}

unint64_t sub_19092967C()
{
  result = qword_1EAD451E0;
  if (!qword_1EAD451E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD451E0);
  }

  return result;
}

uint64_t sub_1909296E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_190929770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  sub_190D50920();
  v9(a2, a3, a4, a5);
}

void *sub_1909297E8()
{
  v1 = v0;
  v2 = [v0 subviews];
  sub_1902188FC(0, &qword_1EAD46530);
  v3 = sub_190D57180();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_23:
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v4 = sub_190D581C0();
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, v3);
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      swift_getObjectType();
      v10 = swift_conformsToProtocol2();
      if (v10)
      {
        if (v9)
        {
          break;
        }
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v30 = v1;
    v11 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_190836128(0, v6[2] + 1, 1, v6);
    }

    v14 = v6[2];
    v13 = v6[3];
    if (v14 >= v13 >> 1)
    {
      v6 = sub_190836128((v13 > 1), v14 + 1, 1, v6);
    }

    v15 = v11;
    v1 = v30;
    v6[2] = v14 + 1;
    v16 = &v6[2 * v14];
    v16[4] = v9;
    v16[5] = v15;
  }

  while (v5 != v4);
LABEL_24:

  v17 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundMaskContainer];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_190836128(0, v6[2] + 1, 1, v6);
  }

  v19 = v6[2];
  v18 = v6[3];
  if (v19 >= v18 >> 1)
  {
    v6 = sub_190836128((v18 > 1), v19 + 1, 1, v6);
  }

  v6[2] = v19 + 1;
  v20 = &v6[2 * v19];
  v20[4] = v17;
  v20[5] = &off_1F0421E70;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v22 = result;
    v23 = [result usesTapbackRefreshStyling];

    if (v23)
    {
      v24 = v6[2];
      v25 = v6[3];
      v26 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeMaskContainer];
      if (v24 >= v25 >> 1)
      {
        v28 = v25 > 1;
        v29 = v26;
        v6 = sub_190836128(v28, v24 + 1, 1, v6);
        v26 = v29;
      }

      v6[2] = v24 + 1;
      v27 = &v6[2 * v24];
      v27[4] = v26;
      v27[5] = &off_1F0421E70;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190929BD8()
{
  v1 = sub_1909297E8();
  v2 = v1[2];
  if (v2)
  {
    v3 = (v1 + 4);
    type metadata accessor for TapbackPickerBalloonMaskContainer();
    do
    {
      v4 = *v3;
      if (!swift_dynamicCastClass())
      {
        v5 = v4;
        [v0 bounds];
        [v5 setFrame_];
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_190929D5C()
{
  v1 = sub_1909297E8();
  v2 = v1[2];
  if (v2)
  {
    v3 = (v1 + 4);
    do
    {
      v4 = *v3;
      v3 += 2;
      v5 = v4;
      v6 = [v0 tintColor];
      [v5 setTintColor_];

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_190929E78()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_190929ED8(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id sub_190929F7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

void sub_19092A080(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3 = *(*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView) + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView);
  Strong = swift_unknownObjectWeakLoadStrong();
  [v3 setReferenceView_];

  v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (v6)
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = v6;

    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    a1 = v7;
  }
}

void (*sub_19092A190(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_gradientReferenceView;
  *(v3 + 48) = v1;
  *(v3 + 56) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19092A228;
}

void sub_19092A228(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    v5 = *(v3 + 48);
    swift_endAccess();

    v6 = *(*(v5 + OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView) + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView);
    Strong = swift_unknownObjectWeakLoadStrong();
    [v6 setReferenceView_];

    v8 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
    swift_beginAccess();
    if (*(v5 + v8))
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }
  }

  free(v3);
}

void *sub_19092A39C()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_19092A464(void *a1)
{
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_19092A530();
}

void sub_19092A4CC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  sub_19092A530();
}

void sub_19092A530()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = sub_19098B380();
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer);
  v7 = *(v6 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
  *(v6 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView) = v5;
  v8 = v5;
  sub_190BEE5A4(v7);

  if (*(v1 + v2))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_beginAccess();
    swift_unknownObjectWeakAssign();

    v10 = *(v1 + v2);
    if (v10)
    {
      *(v10 + OBJC_IVAR___CKTapbackPickerViewController_tapbackPickerViewControllerEmojiKeyboardCellDelegate + 8) = &off_1F040B7F0;
      swift_unknownObjectWeakAssign();
    }
  }
}

void (*sub_19092A670(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_19092A6D4;
}

void sub_19092A6D4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_19092A530();
  }
}

id sub_19092A754()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_19092A800(void *a1)
{
  sub_19092FF80(a1);
}

void (*sub_19092A838(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_19092A8C0;
}

void sub_19092A8C0(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = sub_1909297E8();
    v5 = v4[2];
    if (v5)
    {
      v6 = v4 + 5;
      do
      {
        v8 = v3[3];
        v7 = v3[4];
        v9 = *(v6 - 1);
        v10 = *v6;
        ObjectType = swift_getObjectType();
        v12 = *(v8 + v7);
        v13 = *(v10 + 56);
        v14 = v9;
        v13(v12, ObjectType, v10);

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  free(v3);
}

uint64_t sub_19092A9DC()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_19092AA74(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  *(v2 + v4) = a1;
  v14 = sub_1909297E8();
  v5 = v14[2];
  if (v5)
  {
    v6 = v14 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v2 + v4);
      v11 = *(v8 + 32);
      v12 = v7;
      v11(v10, ObjectType, v8);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

void (*sub_19092AB50(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_19092ABD8;
}

void sub_19092ABD8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = sub_1909297E8();
    v5 = v4[2];
    if (v5)
    {
      v6 = v4 + 5;
      do
      {
        v8 = v3[3];
        v7 = v3[4];
        v9 = *(v6 - 1);
        v10 = *v6;
        ObjectType = swift_getObjectType();
        v12 = *(v8 + v7);
        v13 = *(v10 + 32);
        v14 = v9;
        v13(v12, ObjectType, v10);

        v6 += 2;
        --v5;
      }

      while (v5);
    }
  }

  free(v3);
}

char *TapbackPickerBalloonParentView.init(tapbackPickerPreferredContentSize:)(double a1, double a2)
{
  v3 = v2;
  *&v2[OBJC_IVAR___CKTapbackPickerBalloonParentView_gradientBufferSize] = 0x4049000000000000;
  v6 = OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for TapbackPickerInputController()) init];
  v7 = OBJC_IVAR___CKTapbackPickerBalloonParentView_presentationTintColor;
  *&v2[v7] = [objc_opt_self() whiteColor];
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeContainerView;
  type metadata accessor for TapbackPickerStrokeContainerView();
  *&v2[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView;
  type metadata accessor for TapbackPickerBackgroundContainerView();
  *&v2[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR___CKTapbackPickerBalloonParentView_motionManager;
  *&v2[v10] = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *&v2[OBJC_IVAR___CKTapbackPickerBalloonParentView_timer] = 0;
  v2[OBJC_IVAR___CKTapbackPickerBalloonParentView_ignoreGyro] = 0;
  *&v2[OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController] = 0;
  v11 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  v12 = [objc_allocWithZone(type metadata accessor for TapbackPickerBalloonDisplayConfiguration()) init];
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode] = 0;
  v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsPileDestOut] = 0;
  v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsMaterialBackground] = 0;
  v13 = &v12[OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize];
  swift_beginAccess();
  *v13 = a1;
  v13[1] = a2;
  v14 = type metadata accessor for TapbackPickerBottomPileViewContainer();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_bottomPileMetaballContainer] = sub_190C76818(v12);
  swift_beginAccess();
  v16 = *&v3[v11];
  v17 = objc_allocWithZone(v14);
  *&v17[OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_bottomPileContentContainer] = sub_190C76818(v16);
  v18 = *&v3[v11];
  v19 = objc_allocWithZone(type metadata accessor for TapbackPickerPrimaryContainer());
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_primaryContainer] = sub_1909429B4(v18);
  v20 = *&v3[v11];
  v21 = objc_allocWithZone(type metadata accessor for TapbackPickerMessageBalloonContainer());
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_messageBalloonContainer] = sub_1908CAD34(v20, 0);
  v22 = *&v3[v11];
  v23 = objc_allocWithZone(type metadata accessor for TapbackPickerBalloonAccessoryView());
  v24 = v22;
  v25 = sub_190BF4364(v24);

  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer] = v25;
  v26 = *&v3[v11];
  v27 = type metadata accessor for TapbackPickerTopPileViewContainer();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_frontPileMetaballContainer] = sub_190C76818(v26);
  v29 = *&v3[v11];
  v30 = objc_allocWithZone(v27);
  *&v30[OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_frontPileContentContainer] = sub_190C76818(v29);
  v31 = *&v3[v11];
  v32 = objc_allocWithZone(type metadata accessor for TapbackPickerSentTapbackContainer());
  v33 = v31;
  v34 = sub_1909429B4(v33);
  v34[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled] = 0;
  v35 = *MEMORY[0x1E6979808];
  v36 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v37 = v34;
  v38 = [v36 initWithType_];
  sub_190A87064(v38);

  v37[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v39 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v39);

  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_sentTapbackContainer] = v37;
  v40 = *&v3[v11];
  v41 = objc_allocWithZone(type metadata accessor for TapbackPickerBalloonMaskContainer());
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundMaskContainer] = sub_1909429B4(v40);
  v42 = *&v3[v11];
  v43 = objc_allocWithZone(type metadata accessor for TapbackPickerStrokeMaskContainer());
  *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeMaskContainer] = sub_1909429B4(v42);
  v69.receiver = v3;
  v69.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  v44 = objc_msgSendSuper2(&v69, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v45 = objc_opt_self();
  v46 = v44;
  result = [v45 sharedBehaviors];
  if (result)
  {
    v48 = result;
    v49 = [result usesTapbackRefreshStyling];

    if (v49)
    {
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      v50 = &unk_1EAD57000;
    }

    else
    {
      [v46 addSubview_];
      v51 = OBJC_IVAR___CKTapbackPickerBalloonParentView_primaryContainer;
      v52 = *(*&v46[OBJC_IVAR___CKTapbackPickerBalloonParentView_primaryContainer] + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
      *(v52 + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent) = 0;
      v53 = *(v52 + OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView);
      v50 = &unk_1EAD57000;
      if (v53)
      {
        [v53 setImage_];
      }

      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
      [v46 addSubview_];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53D50);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_190DD1D90;
    v55 = sub_190D53270();
    v56 = MEMORY[0x1E69DC0F8];
    *(v54 + 32) = v55;
    *(v54 + 40) = v56;
    MEMORY[0x193AF3550](v54, sel_interfaceStyleChanged);
    swift_unknownObjectRelease();

    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_190DD1D90;
    v58 = sub_190919AB4();
    *(v57 + 32) = &type metadata for CKTranscriptBackgroundActiveTrait;
    *(v57 + 40) = v58;
    MEMORY[0x193AF3550](v57, sel_updateForBackgroundState);
    swift_unknownObjectRelease();

    v59 = v50[86];
    swift_beginAccess();
    *&v46[v59] = 0;
    v68 = sub_1909297E8();
    v60 = v68[2];
    if (v60)
    {
      v61 = v68 + 5;
      do
      {
        v62 = *(v61 - 1);
        v63 = *v61;
        ObjectType = swift_getObjectType();
        v65 = *&v46[v59];
        v66 = *(v63 + 32);
        v67 = v62;
        v66(v65, ObjectType, v63);

        v61 += 2;
        --v60;
      }

      while (v60);
    }

    return v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_19092B548()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsMaterialBackground;
  v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsMaterialBackground] = v3;
  v23 = sub_1909297E8();
  v5 = v23[2];
  if (v5)
  {
    v6 = v23 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = v1[v4];
      v11 = *(v8 + 128);
      v12 = v7;
      v11(v10, ObjectType, v8);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  v14 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeContainerView];
  v15 = v1[v4];
  v16 = *(v14 + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground);
  *(v14 + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground) = v15;
  if (v15 != v16)
  {
    result = sub_19092F8AC();
  }

  v17 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView];
  v18 = v1[v4];
  v19 = v17[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground];
  v17[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground] = v18;
  if (v18 != v19)
  {
    if (v18)
    {
      [*&v17[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView] removeFromSuperview];
      v20 = *&v17[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView];
      v21 = sel_addSubview_;
      v22 = v17;
    }

    else
    {
      [v17 addSubview_];
      v22 = *&v17[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView];
      v21 = sel_removeFromSuperview;
    }

    return [v22 v21];
  }

  return result;
}

id TapbackPickerBalloonParentView.__deallocating_deinit()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_timer;
  v2 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_timer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  [*&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_motionManager] stopGyroUpdates];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_19092B854()
{
  v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_timer;
  v2 = *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_timer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }

  v4 = *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_motionManager);

  return [v4 stopGyroUpdates];
}

void sub_19092BA70()
{
  v1 = v0;
  v73 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_bottomPileMetaballContainer];
  *&v73[OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8] = &off_1F040B7B0;
  swift_unknownObjectWeakAssign();
  v2 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_bottomPileContentContainer];
  *(v2 + OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8) = &off_1F040B7B0;
  swift_unknownObjectWeakAssign();
  *(*&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_frontPileMetaballContainer] + OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8) = &off_1F040B7B0;
  swift_unknownObjectWeakAssign();
  v3 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_frontPileContentContainer];
  *(v3 + OBJC_IVAR____TtC7ChatKit30TapbackPickerPileViewContainer_delegate + 8) = &off_1F040B7B0;
  swift_unknownObjectWeakAssign();
  *(v2 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled) = 0;
  v4 = *MEMORY[0x1E6979808];
  v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v5);

  *(v2 + OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled) = 0;
  v6 = *MEMORY[0x1E6979928];
  v7 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v70 = v2;
  sub_190A87064(v7);

  *(v3 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_isAlphaThresholdFilterEnabled) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v8);

  *(v3 + OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  sub_190A87064(v9);

  v71 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeContainerView];
  [v71 setHidden_];
  v72 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView];
  [v72 setHidden_];
  v10 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer];
  v11 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill;
  *(*(v10 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_delegate + 8) = &off_1F040B750;
  swift_unknownObjectWeakAssign();
  *(*(v10 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail) + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate + 8) = &off_1F040B770;
  swift_unknownObjectWeakAssign();
  *(*(v10 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton) + OBJC_IVAR____TtC7ChatKit29TapbackPickerCancelButtonView_delegate + 8) = &off_1F040B790;
  swift_unknownObjectWeakAssign();
  v12 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController];
  [*(v10 + v11) addSubview_];
  *&v12[OBJC_IVAR____TtC7ChatKit28TapbackPickerInputController_inputControllerDelegate + 8] = &off_1F040B7C0;
  swift_unknownObjectWeakAssign();
  [v12 setDelegate_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD86A0;
  v15 = [v12 centerXAnchor];
  v16 = [*(v10 + v11) centerXAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v14 + 32) = v17;
  v18 = [v12 centerYAnchor];
  v19 = [*(v10 + v11) centerYAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v14 + 40) = v20;
  v21 = [v12 heightAnchor];
  v22 = [v21 constraintEqualToConstant_];

  *(v14 + 48) = v22;
  v23 = [v12 widthAnchor];
  v24 = [v23 constraintEqualToConstant_];

  *(v14 + 56) = v24;
  sub_1902188FC(0, &qword_1EAD45040);
  v25 = sub_190D57160();

  [v13 activateConstraints_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    if ([Strong respondsToSelector_])
    {
      v28 = [v27 tapbackPickerBalloonParentViewTapbackTintableMessageBalloon_];
      swift_unknownObjectRelease();
      if (v28)
      {
        v29 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_messageBalloonContainer];
        v30 = *(v29 + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon);
        *(v29 + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon) = v28;
        v31 = v28;
        sub_1908CAC24(v30);

        sub_1908CA214();
        v33 = v32;
        sub_19092FEA0(v32);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v34 = [objc_opt_self() sharedBehaviors];
  if (!v34)
  {
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = [v34 usesTapbackRefreshStyling];

  if ((v36 & 1) == 0)
  {
    v37 = *&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_primaryContainer];
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      if ([v38 respondsToSelector_])
      {
        v40 = [v39 tapbackPickerBalloonParentViewTapbackBackingBalloon_];
        swift_unknownObjectRelease();
LABEL_13:
        v41 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon;
        [*&v37[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon] removeFromSuperview];
        v42 = *&v37[v41];
        *&v37[v41] = v40;
        v43 = v40;

        if (v40)
        {
          [v37 addSubview_];
        }

        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          v46 = v73;
          if ([v44 respondsToSelector_])
          {
            v47 = [v45 tapbackPickerBalloonParentViewTapbackBackingBalloon_];
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
            v47 = 0;
          }
        }

        else
        {
          v47 = 0;
          v46 = v73;
        }

        v48 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon;
        [*&v46[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon] removeFromSuperview];
        v49 = *&v46[v48];
        *&v46[v48] = v47;
        v50 = v47;

        if (v47)
        {
          [v46 addSubview_];
        }

        v51 = *(*&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_messageBalloonContainer] + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon);
        if (!v51 || !*(v51 + OBJC_IVAR____TtC7ChatKit39TapbackPickerTintableMessageBalloonView_tintBalloon))
        {
          [v1 insertSubview:v73 belowSubview:v70];
        }

        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    v40 = 0;
    goto LABEL_13;
  }

LABEL_25:
  v52 = [v1 traitCollection];
  v53 = [v52 isTranscriptBackgroundActive];

  v54 = OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsMaterialBackground;
  v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsMaterialBackground] = v53;
  v74 = sub_1909297E8();
  v55 = v74[2];
  if (v55)
  {
    v56 = v74 + 5;
    do
    {
      v57 = *(v56 - 1);
      v58 = *v56;
      ObjectType = swift_getObjectType();
      v60 = v1[v54];
      v61 = *(v58 + 128);
      v62 = v57;
      v61(v60, ObjectType, v58);

      v56 += 2;
      --v55;
    }

    while (v55);
  }

  v63 = v1[v54];
  v64 = v71[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground];
  v71[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground] = v63;
  if (v63 != v64)
  {
    sub_19092F8AC();
  }

  v65 = v1[v54];
  v66 = v72[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground];
  v72[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground] = v65;
  if (v65 != v66)
  {
    if (v65)
    {
      [*&v72[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView] removeFromSuperview];
      [v72 addSubview_];
    }

    else
    {
      [v72 addSubview_];
      [*&v72[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView] removeFromSuperview];
    }
  }

  sub_19092C388();
  sub_19092E2B0();
  v67 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v68 = *&v1[v67];
  if (v68)
  {
    v69 = v68;
    sub_19098BBA0();
  }
}

void sub_19092C388()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_27;
  }

  v2 = Strong;
  if (([Strong respondsToSelector_] & 1) == 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v3 = [v2 tapbackPickerBalloonParentViewTapbackPileView_];
  swift_unknownObjectRelease();
  if (!v3)
  {
LABEL_27:
    v50 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_messageBalloonContainer];
    v51 = [objc_opt_self() sharedBehaviors];
    if (v51)
    {
      v52 = v51;
      v53 = [v51 usesTapbackRefreshStyling];

      if ((v53 & 1) == 0)
      {
        [v0 insertSubview:*&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_primaryContainer] belowSubview:v50];
      }

      return;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v4 = v0;
  v5 = *&v3[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v7 = *&v3[OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter];
  *(inited + 32) = v7;
  sub_190D52690();
  v8 = v7;
  sub_190CAA054(inited);
  v9 = v5;
  if (v5 >> 62)
  {
LABEL_25:
    v10 = sub_190D581C0();
    v0 = v4;
    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

  v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0 = v4;
  if (!v10)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_6:
  v11 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x193AF3B90](v11, v9);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v12 = *(v9 + 8 * v11 + 32);
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_15;
      }
    }

    if (v12[OBJC_IVAR___CKTapbackPlatterView_isSent])
    {
      break;
    }

    ++v11;
    if (v13 == v10)
    {
      goto LABEL_26;
    }
  }

  v54 = v12;

  v14 = objc_opt_self();
  v15 = [v14 sharedBehaviors];
  if (!v15)
  {
    goto LABEL_32;
  }

  v16 = v15;
  v17 = [v15 usesTapbackRefreshStyling];

  v18 = &selRef_setDetailsAdapter_;
  if (v17)
  {
    v19 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeContainerView];
    [v19 setHidden_];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    v20 = [v19 topAnchor];
    v21 = [v0 topAnchor];
    v22 = [v20 constraintEqualToAnchor:v21 constant:-50.0];

    [v22 setActive_];
    v23 = [v19 bottomAnchor];
    v24 = [v0 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:50.0];

    [v25 setActive_];
    v26 = [v19 leadingAnchor];
    v27 = [v0 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:-50.0];

    [v28 setActive_];
    v29 = [v19 trailingAnchor];
    v30 = [v0 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:50.0];

    [v31 setActive_];
    v18 = &selRef_setDetailsAdapter_;
    v32 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeMaskContainer];
    [v19 setMaskView_];
    [v32 setFrame_];
  }

  v33 = *&v0[OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView];
  [v33 setHidden_];
  sub_19092FB5C(v55);
  v34 = [v14 sharedBehaviors];
  if (!v34)
  {
    goto LABEL_33;
  }

  v35 = v34;
  v36 = [v34 usesTapbackRefreshStyling];

  if ((v36 & 1) == 0)
  {
    [v4 insertSubview:*&v4[OBJC_IVAR___CKTapbackPickerBalloonParentView_primaryContainer] belowSubview:v33];
  }

  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v37 = [v33 topAnchor];
  v38 = [v4 topAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:-50.0];

  [v39 setActive_];
  v40 = [v33 bottomAnchor];
  v41 = [v4 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41 constant:50.0];

  [v42 setActive_];
  v43 = [v33 leadingAnchor];
  v44 = [v4 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:-50.0];

  [v45 setActive_];
  v46 = [v33 trailingAnchor];
  v47 = [v4 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:50.0];

  [v48 setActive_];
  v49 = *&v4[OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundMaskContainer];
  [v33 setMaskView_];
  [v49 v18[334]];
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
}

uint64_t sub_19092CB50()
{
  v1 = v0;
  v2 = sub_190D56770();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_190D567A0();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_190D567F0();
  v42 = *(v50 - 8);
  v5 = MEMORY[0x1EEE9AC00](v50);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - v7;
  v8 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  *(v0 + v8) = 1;
  v49 = sub_1909297E8();
  v9 = v49[2];
  if (v9)
  {
    v10 = v49 + 5;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      ObjectType = swift_getObjectType();
      v14 = *(v1 + v8);
      v15 = *(v12 + 32);
      v16 = v11;
      v15(v14, ObjectType, v12);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v17 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (v18)
  {
    *(v18 + OBJC_IVAR___CKTapbackPickerViewController_needsPresentationAnimation) = 1;
  }

  sub_19092BA70();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if ([Strong respondsToSelector_])
    {
      v21 = [v20 tapbackPickerBalloonParentViewTapbackPileView_];
      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  v21 = 0;
LABEL_11:
  v49 = sub_1909297E8();
  v22 = v49[2];
  if (v22)
  {
    v23 = v49 + 5;
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v26 = swift_getObjectType();
      v27 = *(v25 + 176);
      v28 = v24;
      v27(v21, v26, v25);

      v23 += 2;
      --v22;
    }

    while (v22);
  }

  v29 = *(*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer) + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
  if (v29)
  {
    [v29 setUserInteractionEnabled_];
  }

  sub_1902188FC(0, &qword_1EAD46670);
  v30 = sub_190D57870();
  v31 = v40;
  sub_190D567B0();
  v32 = v41;
  sub_190D56820();
  v49 = *(v42 + 8);
  (v49)(v31, v50);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_190930BE8;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_81;
  v34 = _Block_copy(aBlock);

  v35 = v43;
  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  v36 = v45;
  v37 = v48;
  sub_190D58170();
  MEMORY[0x193AF30E0](v32, v35, v36, v34);
  _Block_release(v34);

  (*(v47 + 8))(v36, v37);
  (*(v44 + 8))(v35, v46);
  return (v49)(v32, v50);
}

void sub_19092D108()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode, v2 = Strong, swift_beginAccess(), v3 = *&v2[v1], v2, v3))
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = *(*(v4 + OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer) + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
      v6 = v4;
      v7 = v5;

      if (v5)
      {
        [v7 setUserInteractionEnabled_];
      }
    }
  }
}

void sub_19092D1EC()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKTapbackPickerBalloonParentView_timer;
  v3 = *(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_timer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + v2);
    *(v1 + v2) = 0;
  }

  [*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_motionManager) stopGyroUpdates];
  sub_19092C388();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ([Strong respondsToSelector_])
    {
      v7 = [v6 tapbackPickerBalloonParentViewTapbackPileView_];
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v7 = 0;
LABEL_8:
  v8 = sub_1909297E8();
  v9 = v8[2];
  if (v9)
  {
    v10 = v8 + 5;
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 216);
      v15 = v11;
      v14(v7, ObjectType, v12);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  [*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController) resignFirstResponder];
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector_])
    {
      [v17 tapbackPickerBalloonParentViewRequestedAppCardDismiss_];
    }

    swift_unknownObjectRelease();
  }

  v28 = v7;
  v18 = *(*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer) + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
  if (v18)
  {
    [v18 setUserInteractionEnabled_];
  }

  v19 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  *(v1 + v19) = 0;
  v29 = sub_1909297E8();
  v20 = v29[2];
  if (v20)
  {
    v21 = v29 + 5;
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      v24 = swift_getObjectType();
      v25 = *(v1 + v19);
      v26 = *(v23 + 32);
      v27 = v22;
      v26(v25, v24, v23);

      v21 += 2;
      --v20;
    }

    while (v20);
  }
}

id sub_19092D4D0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  *(v0 + v2) = 1;
  v32 = sub_1909297E8();
  v3 = v32[2];
  if (v3)
  {
    v4 = v32 + 5;
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v1 + v2);
      v9 = *(v6 + 32);
      v10 = v5;
      v9(v8, ObjectType, v6);

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  v11 = OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController;
  swift_beginAccess();
  v33 = v11;
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    sub_190829404();
    v15 = v14;

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1909297E8();
  v18 = v17[2];
  if (v18)
  {
    v19 = v17 + 5;
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v22 = swift_getObjectType();
      v23 = *(v21 + 200);
      v24 = v20;
      v23(v16 & 1, v22, v21);

      v19 += 2;
      --v18;
    }

    while (v18);
  }

  v25 = *(v1 + v33);
  if (v25)
  {
    v26 = v25;
    TapbackPickerViewController.updateVisibleCellsForScrollPosition()();
  }

  [*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController) resignFirstResponder];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v28 tapbackPickerBalloonParentViewReturningToSuggestionPicker_];
    }

    swift_unknownObjectRelease();
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    if ([v29 respondsToSelector_])
    {
      [v30 tapbackPickerBalloonParentViewRequestedAppCardDismiss_];
    }

    swift_unknownObjectRelease();
  }

  result = *(*(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer) + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
  if (result)
  {
    return [result setUserInteractionEnabled_];
  }

  return result;
}

id sub_19092D7A0(int a1)
{
  v2 = v1;
  v46 = a1;
  v3 = sub_190D56770();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_190D567A0();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_190D567F0();
  v48 = *(v56 - 8);
  v6 = MEMORY[0x1EEE9AC00](v56);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v45 - v8;
  v9 = OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode;
  swift_beginAccess();
  *&v1[v9] = 2;
  v55 = sub_1909297E8();
  v10 = v55[2];
  if (v10)
  {
    v11 = v55 + 5;
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      ObjectType = swift_getObjectType();
      v15 = *&v2[v9];
      v16 = *(v13 + 32);
      v17 = v12;
      v16(v15, ObjectType, v13);

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v18 = OBJC_IVAR___CKTapbackPickerBalloonParentView_ignoreGyro;
  v2[OBJC_IVAR___CKTapbackPickerBalloonParentView_ignoreGyro] = 1;
  v55 = sub_1909297E8();
  v19 = v55[2];
  if (v19)
  {
    v20 = v55 + 5;
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v23 = swift_getObjectType();
      v24 = v2[v18];
      v25 = *(v22 + 80);
      v26 = v21;
      v25(v24, v23, v22);

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  v55 = sub_1909297E8();
  v27 = v55[2];
  v28 = v46;
  if (v27)
  {
    v29 = v55 + 5;
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;
      v32 = swift_getObjectType();
      v33 = *(v31 + 208);
      v34 = v30;
      v33(v28 & 1, v32, v31);

      v29 += 2;
      --v27;
    }

    while (v27);
  }

  sub_1902188FC(0, &qword_1EAD46670);
  v35 = sub_190D57870();
  v36 = v45;
  sub_190D567B0();
  v37 = v47;
  sub_190D56820();
  v55 = *(v48 + 8);
  (v55)(v36, v56);
  v38 = swift_allocObject();
  *(v38 + 16) = v2;
  aBlock[4] = sub_190930BE0;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_77;
  v39 = _Block_copy(aBlock);
  v40 = v2;

  v41 = v49;
  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  v42 = v51;
  v43 = v54;
  sub_190D58170();
  MEMORY[0x193AF30E0](v37, v41, v42, v39);
  _Block_release(v39);

  (*(v53 + 8))(v42, v43);
  (*(v50 + 8))(v41, v52);
  (v55)(v37, v56);
  result = *(*&v40[OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer] + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
  if (result)
  {
    return [result setUserInteractionEnabled_];
  }

  return result;
}

uint64_t sub_19092DD00(uint64_t a1)
{
  v2 = OBJC_IVAR___CKTapbackPickerBalloonParentView_ignoreGyro;
  *(a1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_ignoreGyro) = 0;
  v12 = sub_1909297E8();
  v3 = v12[2];
  if (v3)
  {
    v4 = v12 + 5;
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(a1 + v2);
      v9 = *(v6 + 80);
      v10 = v5;
      v9(v8, ObjectType, v6);

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

id sub_19092DDD0(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR___CKTapbackPickerBalloonParentView_accessoryItemsContainer];
  v9 = *(v8 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_cancelButton);
  [v4 convertPoint:v9 toCoordinateSpace:{a2, a3}];
  v10 = [v9 hitTest:a1 withEvent:?];
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v12 = *(v8 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
    [v4 convertPoint:v12 toCoordinateSpace:{a2, a3}];
    v13 = [v12 hitTest:a1 withEvent:?];
    if (v13)
    {
      v11 = v13;
      v14 = v12;
    }

    else
    {
      v15 = sub_190BF420C();
      v14 = v15;
      [v4 convertPoint:v14 toView:{a2, a3}];
      if (v15 && (v16 = [v14 hitTest:a1 withEvent:?]) != 0)
      {
        v11 = v16;
        v17 = v12;
      }

      else
      {
        v18 = sub_190BF422C();
        v17 = v18;
        [v4 convertPoint:v17 toView:{a2, a3}];
        if (v18 && (v19 = [v17 hitTest:a1 withEvent:?]) != 0)
        {
          v11 = v19;
        }

        else
        {
          v20 = *(v8 + OBJC_IVAR____TtC7ChatKit33TapbackPickerBalloonAccessoryView_tapbackPickerCollectionView);
          if (!v20 || (v24 = v17, v21 = v20, [v4 convertPoint:v21 toCoordinateSpace:{a2, a3}], v11 = objc_msgSend(v21, sel_hitTest_withEvent_, a1), v21, v17 = v24, !v11))
          {
            v22 = *(v8 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
            [v4 convertPoint:v22 toCoordinateSpace:{a2, a3}];
            v11 = [v22 hitTest:a1 withEvent:?];

            v9 = v12;
            v12 = v22;
          }
        }

        v9 = v12;
      }

      v9 = v17;
    }

    v9 = v14;
  }

  return v11;
}

id sub_19092E0F0()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for TapbackPickerBalloonParentView();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v2 = result;
    [result tapbackPickerBlurPlatterPadding];
    v4 = v3;
    v6 = v5;

    [v0 bounds];
    v8 = v7;
    [v0 bounds];
    v10 = v9;
    [v0 bounds];
    sub_190D57C80();
    v12 = v11;
    v14 = v13;
    v15 = sub_1909297E8();
    v16 = v15[2];
    if (v16)
    {
      v17 = v6 * 0.5 + v10;
      v18 = v4 * 0.5 + v8;
      v19 = (v15 + 4);
      type metadata accessor for TapbackPickerBalloonMaskContainer();
      do
      {
        v20 = *v19;
        if (!swift_dynamicCastClass())
        {
          [v20 setFrame_];
        }

        v19 += 2;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19092E2B0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  if (v3 == 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = 4;
  }

  v5 = [objc_opt_self() sharedBehaviors];
  if (!v5)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = v5;
  v7 = [v5 theme];

  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = [v7 balloonColorsForColorType_];

  if (!v8)
  {
LABEL_27:
    __break(1u);
    return;
  }

  sub_1902188FC(0, &qword_1EAD46520);
  v9 = sub_190D57180();

  if (v9 >> 62)
  {
    v10 = sub_190D581C0();
    if (v10)
    {
LABEL_9:
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v11)
      {
        __break(1u);
      }

      else if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v9 + 8 * v12 + 32);
LABEL_14:
          v14 = v13;

          [v1 setTintColor_];

          goto LABEL_17;
        }

        __break(1u);
        goto LABEL_26;
      }

      v13 = MEMORY[0x193AF3B90](v12, v9);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_9;
    }
  }

LABEL_17:
  v15 = *(*&v1[OBJC_IVAR___CKTapbackPickerBalloonParentView_messageBalloonContainer] + OBJC_IVAR____TtC7ChatKit36TapbackPickerMessageBalloonContainer_tintableMessageBalloon);
  if (v15)
  {
    v16 = v15;
    sub_1908CA214();
    v18 = v17;
    sub_19092FEA0(v17);
  }
}

id TapbackPickerBalloonParentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t sub_19092E58C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1909297E8();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = *(v10 + 8);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

uint64_t sub_19092E648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1909297E8();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = *(v10 + 16);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

id sub_19092E704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1909297E8();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = *(v10 + 24);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_19092D7A0(1);

  return [v14 showEmojiKeyboard];
}

uint64_t sub_19092E7F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1909297E8();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      v11 = *(v10 + 8);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);

      v6 += 2;
      --v5;
    }

    while (v5);
  }
}

id sub_19092E8B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1909297E8();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      v11 = *(v10 + 16);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return [v14 showEmojiKeyboard];
}

id sub_19092E988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1909297E8();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 8);
      v11 = *(v10 + 24);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return sub_19092D4D0();
}

Swift::Void __swiftcall TapbackPickerBalloonParentView.showEmojiKeyboard()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v2 tapbackPickerBalloonParentViewRequestedShowEmojiKeyboard_];
    }

    swift_unknownObjectRelease();
  }

  [*(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController) becomeFirstResponder];
}

Swift::Void __swiftcall TapbackPickerBalloonParentView.insertEmoji(_:)(Swift::String a1)
{
  v2 = v1;
  v3 = sub_190D56ED0();
  IsSingleEmoji = CEMStringIsSingleEmoji();

  if (IsSingleEmoji)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69A8060]);
    v6 = sub_190D56ED0();
    v11 = [v5 initWithEmoji:v6 isRemoved:0];

    if (v11)
    {
      if (qword_1EAD46248 != -1)
      {
        swift_once();
      }

      v7 = sub_190D53040();
      __swift_project_value_buffer(v7, qword_1EAD9D790);
      v8 = sub_190D53020();
      v9 = sub_190D576C0();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, v9, "TapbackPickerInputController inserted emoji", v10, 2u);
        MEMORY[0x193AF7A40](v10, -1, -1);
      }

      [v2 insertTapback_];
    }
  }
}

uint64_t TapbackPickerBalloonParentView.insertTapback(tapback:)(void *a1)
{
  v2 = sub_190D56770();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D567A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1902188FC(0, &qword_1EAD46670);
  v10 = sub_190D57870();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1909300B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_190840E6C;
  aBlock[3] = &block_descriptor_39;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_190D56790();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_190840DB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD546A0);
  sub_190840E08();
  sub_190D58170();
  MEMORY[0x193AF3110](0, v9, v5, v13);
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_19092F074(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_timer;
    v6 = *(Strong + OBJC_IVAR___CKTapbackPickerBalloonParentView_timer);
    if (v6)
    {
      [v6 invalidate];
      v7 = *&v4[v5];
      *&v4[v5] = 0;
    }

    [*&v4[OBJC_IVAR___CKTapbackPickerBalloonParentView_motionManager] stopGyroUpdates];
    [*&v4[OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController] resignFirstResponder];
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      if ([v8 respondsToSelector_])
      {
        [v9 tapbackPickerBalloonParentViewRequestedAppCardDismiss_];
      }

      swift_unknownObjectRelease();
    }

    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      [v10 tapbackPickerBalloonParentView:v4 didInsertTapback:a2];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_19092F2E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = [Strong shouldAllowStickerInputFor_];
  swift_unknownObjectRelease();
  return v2;
}

Swift::Bool __swiftcall TapbackPickerBalloonParentView.textView(_:shouldChangeTextIn:replacementText:)(UITextView *_, __C::_NSRange shouldChangeTextIn, Swift::String replacementText)
{
  v3 = sub_190D56ED0();
  v4 = CEMStringContainsEmoji();

  return v4 != 0;
}

Swift::Void __swiftcall TapbackPickerBalloonParentView.textViewDidChange(_:)(UITextView *a1)
{
  v2 = [(UITextView *)a1 text];
  if (v2)
  {
    v3 = v2;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0xE000000000000000;
    v5 = v3;
    CFStringGetLength(v5);
    v10[4] = sub_19084A998;
    v10[5] = v4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_190929770;
    v10[3] = &block_descriptor_9_4;
    v6 = _Block_copy(v10);
    sub_190D50920();

    CEMEnumerateEmojiTokensInStringWithBlock();
    _Block_release(v6);

    swift_beginAccess();
    v7 = *(v4 + 24);
    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = *(v4 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      sub_190D52690();
      v9 = sub_190D56ED0();

      [v1 insertEmoji_];
    }

    else
    {
    }
  }
}

void sub_19092F70C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TapbackPickerMaskedViewContainer();
  objc_msgSendSuper2(&v7, sel_layoutSubviews);
  v1 = [v0 subviews];
  sub_1902188FC(0, &qword_1EAD46530);
  v2 = sub_190D57180();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v3 = sub_190D581C0();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x193AF3B90](v4, v2);
      }

      else
      {
        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      [v0 bounds];
      [v6 setFrame_];
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
}

id sub_19092F8AC()
{
  if (v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground] == 1)
  {
    [*&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_solidStrokeView] removeFromSuperview];
    [v0 addSubview_];
    v1 = *&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_vibrancyView];
    v2 = sel_addSubview_;
    v3 = v0;
  }

  else
  {
    [v0 addSubview_];
    [*&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_backdropView] removeFromSuperview];
    v3 = *&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_vibrancyView];
    v2 = sel_removeFromSuperview;
  }

  return [v3 v2];
}

id sub_19092F98C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_solidStrokeView;
  type metadata accessor for TapbackSolidStrokeView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_backdropView;
  type metadata accessor for TapbackBackdropView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_vibrancyView;
  type metadata accessor for TapbackVibrancyView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13.receiver = v4;
  v13.super_class = type metadata accessor for TapbackPickerStrokeContainerView();
  return objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_19092FA98()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerStrokeContainerView_vibrancyView);
}

void sub_19092FB5C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView);
  v5 = *(a1 + OBJC_IVAR___CKTapbackPlatterView_materialView);
  v6 = *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType);
  v7 = *(v4 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType);
  *(v4 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_colorType) = v6;
  if (v6 != v7)
  {
    sub_190C3B124();
  }

  v8 = *(v5 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance);
  v9 = *(v4 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance);
  *(v4 + OBJC_IVAR____TtC7ChatKit19TapbackMaterialView_backgroundLuminance) = v8;
  if (v8 != v9)
  {
    sub_190C3B124();
  }

  v10 = *(v2 + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView);
  v11 = [*(a1 + OBJC_IVAR___CKTapbackPlatterView_gradientView) colors];
  [v10 setColors_];
}

id sub_19092FC50()
{
  if (v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E32TapbackPickerMaskedViewContainer_wantsMaterialBackground] == 1)
  {
    [*&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_gradientView] removeFromSuperview];
    v1 = *&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView];
    v2 = sel_addSubview_;
    v3 = v0;
  }

  else
  {
    [v0 addSubview_];
    v3 = *&v0[OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView];
    v2 = sel_removeFromSuperview;
  }

  return [v3 v2];
}

void sub_19092FDBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKitP33_522A160BBD24E8726EEE99D68A03969E36TapbackPickerBackgroundContainerView_materialView);
}

id sub_19092FE14(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19092FEA0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_presentationTintColor;
  v4 = *(v1 + OBJC_IVAR___CKTapbackPickerBalloonParentView_presentationTintColor);
  *(v2 + OBJC_IVAR___CKTapbackPickerBalloonParentView_presentationTintColor) = a1;
  v5 = a1;

  v16 = sub_1909297E8();
  v6 = v16[2];
  if (v6)
  {
    v7 = v16 + 5;
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      ObjectType = swift_getObjectType();
      v11 = *(v2 + v3);
      v12 = *(v9 + 160);
      v13 = v8;
      v14 = v11;
      v12(v11, ObjectType, v9);

      v7 += 2;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_19092FF80(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;

  v16 = sub_1909297E8();
  v7 = v16[2];
  if (v7)
  {
    v8 = v16 + 5;
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      ObjectType = swift_getObjectType();
      v12 = *(v2 + v4);
      v13 = *(v10 + 56);
      v14 = v9;
      v13(v12, ObjectType, v10);

      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

uint64_t keypath_getTm_0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

void sub_19093055C()
{
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_gradientBufferSize) = 0x4049000000000000;
  v1 = OBJC_IVAR___CKTapbackPickerBalloonParentView_inputController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for TapbackPickerInputController()) init];
  v2 = OBJC_IVAR___CKTapbackPickerBalloonParentView_presentationTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR___CKTapbackPickerBalloonParentView_strokeContainerView;
  type metadata accessor for TapbackPickerStrokeContainerView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR___CKTapbackPickerBalloonParentView_backgroundContainerView;
  type metadata accessor for TapbackPickerBackgroundContainerView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR___CKTapbackPickerBalloonParentView_motionManager;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_timer) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_ignoreGyro) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_tapbackPickerViewController) = 0;
  v6 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for TapbackPickerBalloonDisplayConfiguration()) init];
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_currentDisplayMode) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsPileDestOut) = 0;
  *(v0 + OBJC_IVAR___CKTapbackPickerBalloonParentView_wantsMaterialBackground) = 0;
  sub_190D58510();
  __break(1u);
}

void *sub_190930718()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 textInputContextIdentifier_];
      swift_unknownObjectRelease();
      if (v3)
      {
        v4 = sub_190D56F10();

        return v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

void sub_1909307E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(MEMORY[0x1E69A82C8]);
  v7 = sub_190D56ED0();
  v13 = [v6 initWithTransferGUID:v7 isRemoved:0];

  if (v13)
  {
    if (qword_1EAD46248 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9D790);
    sub_190D52690();
    v9 = sub_190D53020();
    v10 = sub_190D576C0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_19021D9F8(a1, a2, &v14);
      _os_log_impl(&dword_19020E000, v9, v10, "TapbackPickerInputController inserted a sticker with guid: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x193AF7A40](v12, -1, -1);
      MEMORY[0x193AF7A40](v11, -1, -1);
    }

    [v3 insertTapback_];
  }
}

void sub_1909309C0()
{
  v1 = v0;
  if (qword_1EAD46248 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9D790);
  v3 = sub_190D53020();
  v4 = sub_190D576C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "TapbackPickerInputController inserted an emoji", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  v6 = sub_190D56ED0();
  [v1 insertEmoji_];
}

void sub_190930AEC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong respondsToSelector_])
    {
      if (a1)
      {
        a1 = sub_190D56D60();
      }

      v5 = sub_190D56ED0();
      [v4 tapbackPickerBalloonParentView:v1 requestedPresentPlugin:a1 payloadID:v5];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_190930C08(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D54C40();
  MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_190D54C50();
}

uint64_t sub_190930D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_190D54C40();
  MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_190D54C50();
}

uint64_t sub_190930DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v43 = a3;
  swift_getWitnessTable();
  v39 = a2;
  v5 = sub_190D54E30();
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v30 - v8;
  v34 = sub_190D56420();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_190D564A0();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v46 = v5;
  v47 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  v40 = sub_190D54C60();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v21 = &v30 - v20;
  if (*v3 == 1)
  {
    sub_190D56410();
    sub_190D56440();
    (*(v32 + 8))(v10, v34);
    sub_1909313A0(v12, &v3[*(v39 + 36)], v5, *(v39 + 16), WitnessTable);
    (*(v31 + 8))(v12, v33);
    v46 = v5;
    v47 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_19096BC74(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v23 = *(v35 + 8);
    v23(v17, OpaqueTypeMetadata2);
    sub_19096BC74(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_190930C08(v17, OpaqueTypeMetadata2);
    v23(v17, OpaqueTypeMetadata2);
    v23(v19, OpaqueTypeMetadata2);
  }

  else
  {
    v24 = v36;
    sub_19096BC74(v41, v5, WitnessTable);
    v25 = v37;
    sub_19096BC74(v24, v5, WitnessTable);
    v46 = v5;
    v47 = WitnessTable;
    swift_getOpaqueTypeConformance2();
    sub_190930D00(v25, OpaqueTypeMetadata2, v5);
    v26 = *(v38 + 8);
    v26(v25, v5);
    v26(v24, v5);
  }

  v46 = v5;
  v47 = WitnessTable;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = WitnessTable;
  v27 = v40;
  v28 = swift_getWitnessTable();
  sub_19096BC74(v21, v27, v28);
  return (*(v42 + 8))(v21, v27);
}

uint64_t sub_1909313A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[2] = a5;
  v16[0] = a1;
  v16[1] = a3;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_190D566D0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD573A8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_190DD1D90;
  (*(v7 + 16))(v9, a2, a4);
  *(v14 + 32) = sub_190D56310();
  sub_190D566C0();
  sub_190D55850();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_190931580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v49 = a1;
  v51 = a3;
  swift_getWitnessTable();
  v47 = a2;
  v6 = sub_190D54E30();
  v46 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v44 = sub_190D56420();
  v42 = *(v44 - 8);
  v11 = MEMORY[0x1EEE9AC00](v44);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - v14;
  v16 = sub_190D564A0();
  v40 = *(v16 - 8);
  v41 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v55 = v6;
  v56 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v43 = *(OpaqueTypeMetadata2 - 8);
  v21 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v39 = &v39 - v24;
  v25 = sub_190D54C60();
  v52 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v50 = &v39 - v26;
  v48 = v4;
  if (*v4 == 1)
  {
    sub_190D56410();
    sub_190D56400();
    v27 = *(v42 + 8);
    v28 = v13;
    v29 = v44;
    v27(v28, v44);
    sub_190D56440();
    v27(v15, v29);
    sub_1909313A0(v18, &v48[*(v47 + 36)], v6, *(v47 + 16), WitnessTable);
    (*(v40 + 8))(v18, v41);
    v55 = v6;
    v56 = WitnessTable;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v31 = v39;
    sub_19096BC74(v23, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v32 = *(v43 + 8);
    v32(v23, OpaqueTypeMetadata2);
    sub_19096BC74(v31, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v33 = v50;
    sub_190930C08(v23, OpaqueTypeMetadata2);
    v32(v23, OpaqueTypeMetadata2);
    v32(v31, OpaqueTypeMetadata2);
  }

  else
  {
    v34 = v10;
    sub_19096BC74(v49, v6, WitnessTable);
    v35 = v45;
    sub_19096BC74(v34, v6, WitnessTable);
    v55 = v6;
    v56 = WitnessTable;
    swift_getOpaqueTypeConformance2();
    v33 = v50;
    sub_190930D00(v35, OpaqueTypeMetadata2, v6);
    v36 = *(v46 + 8);
    v36(v35, v6);
    v36(v34, v6);
  }

  v55 = v6;
  v56 = WitnessTable;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = WitnessTable;
  v37 = swift_getWitnessTable();
  sub_19096BC74(v33, v25, v37);
  return (*(v52 + 8))(v33, v25);
}

id CKGlassPlatterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id CKGlassPlatterView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v11.receiver = v4;
  v11.super_class = type metadata accessor for CKGlassPlatterView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 ck_applyGlassBackground];
  return v9;
}

id CKGlassPlatterView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CKGlassPlatterView.init(coder:)(void *a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for CKGlassPlatterView();
  v3 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    [v5 ck_applyGlassBackground];
  }

  return v4;
}

id CKGlassPlatterView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKGlassPlatterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UIView.ck_applyGlassBackground(adaptive:smoothness:flexible:)(uint64_t a1, char a2)
{
  v3 = sub_190D53500();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D534D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17[-1] - v12;
  if (qword_1EAD51A10 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v7, qword_1EAD57390);
  sub_190D534C0();
  (*(v8 + 16))(v11, v13, v7);
  sub_190D53510();
  v17[3] = v3;
  v17[4] = MEMORY[0x1E69DC388];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  if (a2)
  {
    sub_190D534F0();
  }

  else
  {
    (*(v4 + 16))(boxed_opaque_existential_1, v6, v3);
  }

  sub_190D57CB0();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v13, v7);
}

void sub_1909321B0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1;
  UIView.ck_applyGlassBackground(adaptive:smoothness:flexible:)(a3, a4);
}

uint64_t UIView.ck_applyTapbackGlassBackground(adaptive:smoothness:flexible:)(uint64_t a1, int a2)
{
  v17 = a2;
  v2 = sub_190D53500();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_190D534D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16[-v11];
  if (qword_1EAD51A10 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_1EAD57390);
  sub_190D534C0();
  sub_190D534A0();
  v13 = *(v7 + 8);
  v13(v10, v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_190D53510();
  v18[3] = v2;
  v18[4] = MEMORY[0x1E69DC388];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  if (v17)
  {
    sub_190D534F0();
  }

  else
  {
    (*(v3 + 16))(boxed_opaque_existential_1, v5, v2);
  }

  sub_190D57CB0();
  (*(v3 + 8))(v5, v2);
  return (v13)(v12, v6);
}

void sub_1909324D4(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a1;
  UIView.ck_applyTapbackGlassBackground(adaptive:smoothness:flexible:)(a3, a4);
}

Swift::Void __swiftcall UIView.ck_applyGlassBackgroundWithTintColor(_:)(UIColor a1)
{
  v1 = sub_190D534D0();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_190D53500();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11[-1] - v7;
  sub_190D534B0();
  sub_190D53510();
  sub_190D534E0();
  v9 = *(v3 + 8);
  v9(v6, v2);
  v11[3] = v2;
  v11[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v11);
  sub_190D534F0();
  v9(v8, v2);
  sub_190D57CB0();
}

void sub_1909326E4(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_190D534D0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D53500();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17[-1] - v11;
  v13 = a3;
  v14 = a1;
  sub_190D534B0();
  sub_190D53510();
  sub_190D534E0();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v17[3] = v6;
  v17[4] = MEMORY[0x1E69DC388];
  __swift_allocate_boxed_opaque_existential_1(v17);
  sub_190D534F0();
  v15(v12, v6);
  sub_190D57CB0();
}

void sub_1909328D0(void *a1)
{
  v1 = a1;
  sub_190D57CB0();
}

Swift::Void __swiftcall UIView.ck_applySendAnimationEntryViewGlass()()
{
  v0 = sub_190D53500();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_190D534D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-1] - v9;
  if (qword_1EAD51A10 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1EAD57390);
  sub_190D534A0();
  (*(v5 + 16))(v8, v10, v4);
  sub_190D53510();
  v13[3] = v0;
  v13[4] = MEMORY[0x1E69DC388];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(v1 + 16))(boxed_opaque_existential_1, v3, v0);
  sub_190D57CB0();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v10, v4);
}

void sub_190932B84(void *a1)
{
  v1 = a1;
  UIView.ck_applySendAnimationEntryViewGlass()();
}

Swift::Void __swiftcall UIView.ck_applyGlassGroup()()
{
  v0[3] = sub_190D53090();
  v0[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v0);
  sub_190D53080();
  sub_190D57CB0();
}

void sub_190932C18(void *a1)
{
  v3[3] = sub_190D53090();
  v3[4] = MEMORY[0x1E69DBEA8];
  __swift_allocate_boxed_opaque_existential_1(v3);
  v2 = a1;
  sub_190D53080();
  sub_190D57CB0();
}

uint64_t sub_190932C84()
{
  v0 = sub_190D534D0();
  __swift_allocate_value_buffer(v0, qword_1EAD57390);
  __swift_project_value_buffer(v0, qword_1EAD57390);
  return sub_190D534B0();
}

uint64_t sub_190932D44()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_190932DC4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_190932F50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t get_witness_table_7SwiftUI5ShapeRzlAA19_ConditionalContentVyAA4ViewPAAE14materialEffect_2inQrAA8MaterialV_AA01_C3SetVtFQOyAA01_f9Modifier_E0Vy7ChatKit012GlassPlatterL0VyxGG_Qo_ASGAaEHPqd__AaEHD2_ATHO_AsaEHPyHCHCTm(void *a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *a1, a1[1]);
  swift_getWitnessTable();
  sub_190D54E30();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_190D54C60();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_190933328(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 89))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_190933348(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
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

  *(result + 89) = v3;
  return result;
}

uint64_t sub_1909333B8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57450);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - v5;
  v21[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57448);
  v7 = *(v21[0] - 8);
  MEMORY[0x1EEE9AC00](v21[0]);
  v9 = v21 - v8;
  sub_1909338C4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), 0.0);
  v10 = sub_190D54500();
  v11 = sub_19093386C();
  sub_190D53C30();
  sub_1909338C4(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 1.0);
  v22 = v10;
  v23 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_190D53C50();
  (*(v4 + 8))(v6, v3);
  v13 = sub_1909338C4(*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), 1.0);
  sub_190D56690();
  v15 = v14;
  v17 = v16;
  v22 = v3;
  v23 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = v21[0];
  MEMORY[0x193AEF4B0](v21[0], v18, v13, v15, v17);
  return (*(v7 + 8))(v9, v19);
}

uint64_t sub_19093365C()
{
  v1 = swift_allocObject();
  v2 = v0[3];
  v1[3] = v0[2];
  v1[4] = v2;
  v1[5] = v0[4];
  *(v1 + 89) = *(v0 + 73);
  v3 = v0[1];
  v1[1] = *v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57430);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57438);
  v6 = sub_190933808();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57448);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57450);
  sub_190D54500();
  sub_19093386C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x193AF1090](sub_190933800, v1, v4, v5, v6, OpaqueTypeConformance2);
}

unint64_t sub_190933808()
{
  result = qword_1EAD57440;
  if (!qword_1EAD57440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57440);
  }

  return result;
}

unint64_t sub_19093386C()
{
  result = qword_1EAD57458;
  if (!qword_1EAD57458)
  {
    sub_190D54500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57458);
  }

  return result;
}

double sub_1909338C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5)
{
  v10 = sub_190D54CC0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0 && *&a3 > 0.0)
  {
    a5 = *&a1;
    sub_190D54F00();
    sub_190D53D50();
    v14 = *(v11 + 8);
    v14(v13, v10);
    if ((v36 & 1) == 0)
    {
      v30 = v34;
      v31 = v35;
      v16 = v32;
      v15 = v33;
      sub_190D54F00();
      sub_190D53D40();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v14(v13, v10);
      v37.origin.x = v18;
      v37.origin.y = v20;
      v37.size.width = v22;
      v37.size.height = v24;
      v25 = fabs(CGRectGetMidX(v37));
      v38.origin.x = v16;
      v38.origin.y = v15;
      v38.size.width = v30;
      v38.size.height = v31;
      Width = CGRectGetWidth(v38);
      v27 = *&a3;
      if (v25 < *&a3)
      {
        return (*&a2 - a5) * (vabdd_f64(v27, v25) / *&a3) + a5;
      }

      v27 = Width - *&a3;
      if (Width - *&a3 < v25)
      {
        return (*&a2 - a5) * (vabdd_f64(v27, v25) / *&a3) + a5;
      }
    }
  }

  return a5;
}

uint64_t getEnumTagSinglePayload for ScrollViewEdgeEffectModifier.Effect(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ScrollViewEdgeEffectModifier.Effect(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_190933B00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_190D51440();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_190D51460();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_190D50CF0();
  __swift_allocate_value_buffer(v10, qword_1EAD9DAF8);
  __swift_project_value_buffer(v10, qword_1EAD9DAF8);
  sub_190D56E50();
  sub_190D51980();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_190D51470();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_190D50CE0();
}

uint64_t sub_190933DE4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55080);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53AE8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_190D51460();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_190D56EA0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_190D56E90();
  sub_190D56E80();
  sub_190D506F0();
  sub_190D56E70();

  sub_190D56E80();
  sub_190D51450();
  (*(v7 + 56))(v5, 1, 1, v6);
  v9 = sub_190D50B50();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_190D50B70();
}

double sub_190934064@<D0>(uint64_t a1@<X8>)
{
  sub_190934680(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_1909340AC()
{
  result = qword_1EAD57460;
  if (!qword_1EAD57460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57460);
  }

  return result;
}

unint64_t sub_190934104()
{
  result = qword_1EAD57468;
  if (!qword_1EAD57468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57468);
  }

  return result;
}

unint64_t sub_19093415C()
{
  result = qword_1EAD57470;
  if (!qword_1EAD57470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57470);
  }

  return result;
}

uint64_t sub_1909341F4(uint64_t a1)
{
  v2 = sub_19093462C();

  return MEMORY[0x1EEDB29C8](a1, v2);
}

unint64_t sub_190934244()
{
  result = qword_1EAD57488;
  if (!qword_1EAD57488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57488);
  }

  return result;
}

unint64_t sub_190934298()
{
  result = qword_1EAD57490;
  if (!qword_1EAD57490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57490);
  }

  return result;
}

unint64_t sub_1909342EC()
{
  result = qword_1EAD57498;
  if (!qword_1EAD57498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57498);
  }

  return result;
}

unint64_t sub_190934344()
{
  result = qword_1EAD574A0;
  if (!qword_1EAD574A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574A0);
  }

  return result;
}

unint64_t sub_190934398()
{
  result = qword_1EAD462D8;
  if (!qword_1EAD462D8)
  {
    sub_190D518A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD462D8);
  }

  return result;
}

uint64_t sub_1909343F0()
{
  sub_19093462C();

  return sub_190D50450();
}

uint64_t sub_19093443C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51A18 != -1)
  {
    swift_once();
  }

  v2 = sub_190D50CF0();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DAF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190934528(uint64_t a1)
{
  v2 = sub_190889B98();

  return MEMORY[0x1EEDB2C58](a1, v2);
}

unint64_t sub_190934578()
{
  result = qword_1EAD574B8;
  if (!qword_1EAD574B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574B8);
  }

  return result;
}

uint64_t sub_1909345D0(uint64_t a1)
{
  v2 = sub_190934344();

  return MEMORY[0x1EEDB3F68](a1, v2);
}

unint64_t sub_19093462C()
{
  result = qword_1EAD574C0;
  if (!qword_1EAD574C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574C0);
  }

  return result;
}

uint64_t sub_190934680@<X0>(uint64_t *a1@<X8>)
{
  v19 = a1;
  v1 = sub_190D51440();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_190D519C0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_190D56EC0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_190D51460();
  MEMORY[0x1EEE9AC00](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD574C8);
  sub_190D56E50();
  sub_190D51980();
  v8 = *MEMORY[0x1E6968DF0];
  v9 = *(v2 + 104);
  v9(v4, v8, v1);
  sub_190D51470();
  v18 = sub_190D50790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54FB0);
  sub_190D56E50();
  sub_190D51980();
  v9(v4, v8, v1);
  sub_190D51470();
  v17 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v9(v4, v8, v1);
  sub_190D51470();
  v16 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v9(v4, v8, v1);
  sub_190D51470();
  v10 = sub_190D507C0();
  sub_190D56E50();
  sub_190D51980();
  v9(v4, v8, v1);
  sub_190D51470();
  result = sub_190D507C0();
  v12 = v19;
  v13 = v16;
  v14 = v17;
  *v19 = v18;
  v12[1] = v14;
  v12[2] = v13;
  v12[3] = v10;
  v12[4] = result;
  return result;
}

void sub_190934ACC()
{
  v1 = v0;
  v2 = [v0 pickerBalloonParentView];
  if (v2)
  {
    rect_8 = v2;
    type metadata accessor for TapbackPickerBalloonParentView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = v3;
      v5 = [objc_opt_self() sharedApplication];
      v6 = [v5 userInterfaceLayoutDirection];

      v7 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
      swift_beginAccess();
      v8 = *&v4[v7];
      v9 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
      v10 = 1;
      swift_beginAccess();
      v8[v9] = v6 == 0;
      v11 = v8;
      v12 = [v1 delegate];
      if (v12)
      {
        v13 = v12;
        if ([v12 respondsToSelector_])
        {
          v10 = [v13 fullScreenBalloonViewControllerPickerViewUsesBottomTail_];
        }

        else
        {
          v10 = 1;
        }

        swift_unknownObjectRelease();
      }

      v14 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
      swift_beginAccess();
      v11[v14] = v10;
      v15 = [v1 view];
      if (v15)
      {
        v16 = v15;
        [v15 addSubview_];

        v17 = [v1 view];
        if (v17)
        {
          v18 = v17;
          [v17 bounds];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;

          rect = 0.0;
          v75.origin.x = v20;
          v75.origin.y = v22;
          v75.size.width = v24;
          v75.size.height = v26;
          v76 = CGRectInset(v75, 8.0, 0.0);
          x = v76.origin.x;
          y = v76.origin.y;
          width = v76.size.width;
          height = v76.size.height;
          [v4 sizeThatFits_];
          v71 = v31;
          v33 = v32;
          v34 = [v1 delegate];
          if (v34)
          {
            v35 = v34;
            if ([v34 respondsToSelector_])
            {
              [v35 tapbackButtonFrameForFullScreenBalloonViewController_];
              rect = v36;
              v38 = v37;
              v40 = v39;
              v42 = v41;
              swift_unknownObjectRelease();
              goto LABEL_18;
            }

            swift_unknownObjectRelease();
          }

          v38 = 0.0;
          v40 = 0.0;
          v42 = 0.0;
LABEL_18:
          TapbackPickerBalloonParentView.preferredQuickLookOriginX(tapbackButtonFrame:presentationBounds:proposedSize:)(rect, v38, v40, v42, x, y, width, height, v71, v33);
          v44 = v43;
          if (v11[v14])
          {
            MinY = sub_190934FE4();
            goto LABEL_26;
          }

          v46 = [v1 delegate];
          v47 = 0;
          if (v46)
          {
            v48 = v46;
            if ([v46 respondsToSelector_])
            {
              [v48 tapbackButtonFrameForFullScreenBalloonViewController_];
              v47 = v49;
              v70 = v50;
              v52 = v51;
              v54 = v53;
              swift_unknownObjectRelease();
              v55 = v54;
              v56 = v52;
              v57 = v70;
LABEL_25:
              v58 = v47;
              MinY = CGRectGetMinY(*(&v57 - 1));
LABEL_26:
              [v4 setFrame_];
              v59 = rect;
              v60 = v38;
              v61 = v40;
              v62 = v42;
              if (v6)
              {
                MaxX = CGRectGetMaxX(*&v59);
              }

              else
              {
                MaxX = CGRectGetMinX(*&v59);
              }

              v64 = MaxX;
              v65 = [v1 view];
              if (v65)
              {
                v66 = v65;
                [v65 convertPoint:v4 toCoordinateSpace:{v64, 0.0}];
                v68 = v67;

                v69 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_sourceX;
                swift_beginAccess();
                *&v11[v69] = v68;
                sub_19092CB50();

                return;
              }

LABEL_34:
              __break(1u);
              return;
            }

            swift_unknownObjectRelease();
          }

          v57 = 0;
          v56 = 0;
          v55 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_34;
    }
  }
}

double sub_190934FE4()
{
  v1 = [v0 delegate];
  v2 = 0;
  if (v1)
  {
    v3 = v1;
    if ([v1 respondsToSelector_])
    {
      [v3 tapbackButtonFrameForFullScreenBalloonViewController_];
      v2 = v4;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      swift_unknownObjectRelease();
      v11 = v10;
      v12 = v8;
      v13 = v6;
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  v13 = 0;
  v12 = 0;
  v11 = 0;
LABEL_6:
  v14 = v2;
  MinY = CGRectGetMinY(*(&v13 - 1));
  if (qword_1EAD52100 != -1)
  {
    v18 = MinY;
    swift_once();
    MinY = v18;
  }

  v16 = *&qword_1EAD9E738;
  if (qword_1EAD52128 != -1)
  {
    v19 = MinY;
    swift_once();
    MinY = v19;
  }

  return MinY - (v16 + (v16 + 37.4 + *&qword_1EAD9E760) * 0.64278761 + 37.4);
}

void sub_190935150(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - v5;
  v7 = [v2 pickerBalloonParentView];
  if (!v7)
  {
    return;
  }

  v25[0] = v7;
  type metadata accessor for TapbackPickerBalloonParentView();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    sub_190935BD4(a1, v6);
    v10 = sub_190D50FB0();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v6, 1, v10) == 1)
    {
      __break(1u);
      return;
    }

    v12 = sub_190D50FA0();
    (*(v11 + 8))(v6, v10);
    if (v12)
    {
      v25[1] = sub_190D56F10();
      v25[2] = v13;
      sub_190D58230();
      if (*(v12 + 16) && (v14 = sub_190875C84(&v26), (v15 & 1) != 0))
      {
        sub_19021834C(*(v12 + 56) + 32 * v14, &v27);
        sub_19084CFD0(&v26);

        if (*(&v28 + 1))
        {
          type metadata accessor for CGRect(0);
          if (swift_dynamicCast())
          {
            MinY = CGRectGetMinY(v26);
            [v9 frame];
            v18 = MinY - v17;
            [v9 frame];
            x = v30.origin.x;
            width = v30.size.width;
            height = v30.size.height;
            v22 = CGRectGetMinY(v30);
            if (v22 >= v18)
            {
              v23 = v18;
            }

            else
            {
              v23 = v22;
            }

            [v9 setFrame_];
          }

          return;
        }
      }

      else
      {

        sub_19084CFD0(&v26);
        v27 = 0u;
        v28 = 0u;
      }
    }

    else
    {

      v27 = 0u;
      v28 = 0u;
    }

    sub_19022EEA4(&v27, &unk_1EAD551C0);
    return;
  }

  v24 = v25[0];
}

id FullScreenBalloonViewControllerQuicklook.__allocating_init(chatItem:delegate:)(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(v2) initWithChatItem:a1 delegate:a2];

  swift_unknownObjectRelease();
  return v4;
}

id FullScreenBalloonViewControllerQuicklook.init(chatItem:delegate:)(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v5 = objc_msgSendSuper2(&v7, sel_initWithChatItem_delegate_, a1, a2);

  swift_unknownObjectRelease();
  return v5;
}

id FullScreenBalloonViewControllerQuicklook.__allocating_init(chatItem:displayConfiguration:delegate:)(void *a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = [v7 initWithChatItem:a1 displayConfiguration:sub_190D58740() delegate:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

id FullScreenBalloonViewControllerQuicklook.init(chatItem:displayConfiguration:delegate:)(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v7 = sub_190D58740();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v8 = objc_msgSendSuper2(&v10, sel_initWithChatItem_displayConfiguration_delegate_, a1, v7, a3);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

id FullScreenBalloonViewControllerQuicklook.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_190D56ED0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FullScreenBalloonViewControllerQuicklook.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_190D56ED0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id FullScreenBalloonViewControllerQuicklook.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id FullScreenBalloonViewControllerQuicklook.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id FullScreenBalloonViewControllerQuicklook.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenBalloonViewControllerQuicklook();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190935BD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD60C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void CKChatControllerDummyAnimator.addAnimationsForColoredBalloonView(_:sendAnimationType:sendAnimationConfiguration:)(void *a1, uint64_t a2, char *a3)
{
  v5 = [a1 layer];
  type metadata accessor for CKBalloonLayer(0);
  if (swift_dynamicCastClass())
  {
    sub_190935D04(a3, a2);
  }
}

void sub_190935D04(char *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration);
  v4 = *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8);
  v6 = *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16);
  v7 = *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24);
  v8 = *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32);
  v9 = *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40);
  v10 = v5 >> 61;
  if ((v5 >> 61) > 2)
  {
    if (v10 > 4)
    {
      if (v10 != 5)
      {
        return;
      }

      v12 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
      v38 = a2;
      if ((~(v7 & v6 & v8) & 0xF000000000000007) != 0)
      {
        if (v8 < 0)
        {
          v14 = v8 & 0x7FFFFFFFFFFFFFFFLL;
          sub_190937958(v5, v4, v6, v7, v8, v9);
          v31 = v6;
          v32 = v7;
          v33 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
          sub_190937A9C(v6, v7, v8);
          v5 = 0;
          v15 = 0;
          v13 = v4;
          v8 = v7;
        }

        else
        {
          v23 = v12;
          v24 = v4;
          sub_19093793C(v6, v7, v8);
          v5 = 0;
          v8 = 0;
          v14 = 0;
          v13 = v4;
          v15 = v6;
          v6 = 0;
        }
      }

      else
      {
        v16 = v12;
        v17 = v4;
        sub_19093793C(v6, v7, v8);
        v5 = 0;
        v15 = 0;
        v6 = 0;
        v8 = 0;
        v14 = 0;
        v13 = v4;
      }
    }

    else
    {
      if (v10 == 3)
      {
        sub_1909361B4(a1, a2, (v5 & 0x1FFFFFFFFFFFFFFFLL), 0);

        sub_190937B0C(v5, v4, v6, v7, v8, v9);
        return;
      }

      v12 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
      v38 = a2;
      if ((~(v7 & v8 & v9) & 0xF000000000000007) != 0)
      {
        if (v9 < 0)
        {
          v14 = v9 & 0x7FFFFFFFFFFFFFFFLL;
          sub_190937958(v5, v4, v6, v7, v8, v9);
          v34 = v7;
          v35 = v8;
          v36 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
          sub_190937A9C(v7, v8, v9);
          v15 = 0;
          v5 = v4;
          v13 = v6;
          v6 = v7;
        }

        else
        {
          v25 = v12;
          v26 = v4;
          v27 = v6;
          sub_19093793C(v7, v8, v9);
          v8 = 0;
          v14 = 0;
          v5 = v4;
          v13 = v6;
          v15 = v7;
          v6 = 0;
        }
      }

      else
      {
        v20 = v12;
        v21 = v4;
        v22 = v6;
        sub_19093793C(v7, v8, v9);
        v15 = 0;
        v8 = 0;
        v14 = 0;
        v5 = v4;
        v13 = v6;
        v6 = 0;
      }
    }

LABEL_27:
    *&v39 = v5;
    *(&v39 + 1) = v12;
    *&v40 = v13;
    *(&v40 + 1) = v15;
    *&v41 = v6;
    *(&v41 + 1) = v8;
    v42 = v14;
    v43[0] = v39;
    v43[1] = v40;
    v43[2] = v41;
    v43[3] = v14;
    sub_190936A58(a1, v38, v43);
    sub_1909378B8(&v39);
    return;
  }

  if (!v10)
  {
    v38 = a2;
    v18 = v5;
    v12 = 0;
    v13 = 0;
    v15 = 0;
    v6 = 0;
    v8 = 0;
    v14 = 0;
    goto LABEL_27;
  }

  if (v10 == 1)
  {
    v38 = a2;
    v11 = (v5 & 0x1FFFFFFFFFFFFFFFLL);
    if (v6 < 0)
    {
      v14 = v6 & 0x7FFFFFFFFFFFFFFFLL;
      v28 = v11;
      v29 = v4;
      v30 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v5 = 0;
      v12 = 0;
      v13 = 0;
      v15 = 0;
      v6 = v11;
      v8 = v4;
    }

    else
    {
      sub_1909378E8((v5 & 0x1FFFFFFFFFFFFFFFLL), v4, v6);
      v5 = 0;
      v12 = 0;
      v13 = 0;
      v6 = 0;
      v8 = 0;
      v14 = 0;
      v15 = v11;
    }

    goto LABEL_27;
  }

  sub_190937958(*(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration), *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 8), *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 16), *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 24), *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 32), *(v2 + OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_sublayerConfiguration + 40));
  v37 = v4;
  sub_1909361B4(a1, a2, (v5 & 0x1FFFFFFFFFFFFFFFLL), v4);
}

uint64_t sub_1909361B4(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v78 = a4;
  v65 = a2;
  v66 = sub_190D56C50();
  v8 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_190D56D20();
  v68 = *(v69 - 8);
  v11 = MEMORY[0x1EEE9AC00](v69);
  v67 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v63 - v13;
  v14 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = *&a1[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_animationGroup];
  v17 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  v72 = v5;
  v75 = v16;
  sub_190937F48(v5 + v17, v16);
  v18 = *&a1[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize];
  v19 = *&a1[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize + 8];
  v76 = a3;
  v73 = sub_190A65A40();
  v74 = sub_190A66768();
  sub_190937FAC();
  v20 = a1;
  v21 = sub_190937FF8(0x732E73646E756F62, 0xEB00000000657A69, v20);

  v22 = objc_opt_self();
  v23 = [v22 valueWithCGSize_];
  [v21 setFromValue_];

  v24 = *&v20[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize];
  v25 = *&v20[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize + 8];
  v26 = [v22 valueWithCGSize_];
  v70 = v21;
  [v21 setToValue_];

  v27 = v20;
  v28 = sub_190937FF8(0x6E6F697469736F70, 0xE800000000000000, v27);

  v29 = [v22 valueWithCGPoint_];
  [v28 setFromValue_];

  v30 = [v22 valueWithCGPoint_];
  v71 = v28;
  [v28 setToValue_];

  v31 = 0;
  if (v65 == 1)
  {
    v32 = *MEMORY[0x1E6979EB0];
    v33 = v27;
    v34 = v32;
    v35 = sub_190937FF8(0x7974696361706FLL, 0xE700000000000000, v33);

    v36 = sub_190D51C70();
    [v35 &selRef:v36 setFollowsParentBalloonView:? + 4];

    v37 = sub_190D51C70();
    [v35 setToValue_];

    v38 = objc_opt_self();
    v31 = v35;
    v39 = [v38 functionWithName_];

    [v31 setTimingFunction_];
  }

  v40 = *(v8 + 16);
  v41 = v75;
  v42 = v66;
  v40(v10, v75, v66);
  v43 = v64;
  sub_190D56CD0();
  v40(v10, v41, v42);
  v44 = v67;
  sub_190D56CD0();
  v45 = sub_190D56BD0();
  v46 = sub_190D56BD0();
  v47 = v27;
  v48 = sub_190937FF8(1752457584, 0xE400000000000000, v47);

  [v48 setFromValue_];
  [v48 setToValue_];

  v49 = *(v68 + 8);
  v50 = v69;
  v49(v44, v69);
  v49(v43, v50);
  v51 = objc_opt_self();
  [v51 begin];
  [v51 setDisableActions_];
  if (v78)
  {
    v52 = v78;
    [v52 setPath_];
    [v52 setBounds_];
  }

  v53 = v70;
  v54 = v76;
  [v76 setBounds_];
  [v54 setPosition_];
  [v74 setBounds_];
  [v51 commit];
  if (qword_1EAD46250 != -1)
  {
    swift_once();
  }

  v55 = sub_190D53040();
  __swift_project_value_buffer(v55, qword_1EAD46258);
  v56 = v77;
  sub_190937C5C(v53, 0x732E73646E756F62, 0xEB00000000657A69, v77);
  if (v31)
  {
    v57 = v31;
    sub_190937C5C(v57, 0x7974696361706FLL, 0xE700000000000000, v77);

    v56 = v77;
  }

  sub_190937C5C(v53, 0x732E73646E756F62, 0xEB00000000657A69, v56);
  v58 = v71;
  sub_190937C5C(v71, 0x6E6F697469736F70, 0xE800000000000000, v56);
  v59 = v74;
  sub_190937C5C(v53, 0x732E73646E756F62, 0xEB00000000657A69, v56);
  if (v78)
  {
    v60 = v78;
    sub_190937C5C(v48, 1752457584, 0xE400000000000000, v56);

    v61 = v45;
  }

  else
  {
    v61 = v53;
    v53 = v58;
    v58 = v59;
    v60 = v48;
    v48 = v73;
    v73 = v45;
  }

  return sub_1909381DC(v75);
}

uint64_t sub_190936A58(char *a1, void *a2, uint64_t a3)
{
  v127 = a2;
  v128 = sub_190D56C50();
  v6 = *(v128 - 1);
  MEMORY[0x1EEE9AC00](v128);
  v8 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_190D56D20();
  v116 = *(v117 - 8);
  v9 = MEMORY[0x1EEE9AC00](v117);
  v115 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v113 - v11;
  v13 = type metadata accessor for CKBalloonLayer.Configuration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a3;
  v123 = *(a3 + 8);
  v18 = *(a3 + 16);
  v17 = *(a3 + 24);
  v129 = v16;
  v130 = v18;
  v121 = v17;
  v19 = *(a3 + 32);
  v126 = *(a3 + 40);
  v20 = *(a3 + 48);
  v124 = v19;
  v125 = v20;
  v132 = *&a1[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_animationGroup];
  v21 = OBJC_IVAR____TtC7ChatKit14CKBalloonLayer_configuration;
  swift_beginAccess();
  v118 = v3;
  sub_190937F48(v3 + v21, v15);
  v22 = *&a1[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize];
  v23 = *&a1[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_initialSize + 8];
  v24 = sub_190937FAC();
  v25 = a1;
  v26 = sub_190937FF8(0x732E73646E756F62, 0xEB00000000657A69, v25);

  v27 = objc_opt_self();
  v28 = [v27 valueWithCGSize_];
  [v26 setFromValue_];

  v29 = *&v25[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize];
  v30 = *&v25[OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_finalSize + 8];
  v31 = [v27 valueWithCGSize_];
  v131 = v26;
  [v26 setToValue_];

  v32 = v25;
  v33 = sub_190937FF8(0x6E6F697469736F70, 0xE800000000000000, v32);

  v34 = [v27 valueWithCGPoint_];
  [v33 setFromValue_];

  v114 = v27;
  v35 = [v27 valueWithCGPoint_];
  v122 = v33;
  [v33 setToValue_];

  v36 = *(v6 + 16);
  v37 = v128;
  v36(v8, v15, v128);
  sub_190D56CD0();
  v119 = v15;
  v36(v8, v15, v37);
  v38 = v115;
  sub_190D56CD0();
  v39 = sub_190D56BD0();
  v40 = sub_190D56BD0();
  v41 = v32;
  v120 = v24;
  v42 = sub_190937FF8(1752457584, 0xE400000000000000, v41);

  [v42 setFromValue_];
  [v42 setToValue_];

  v43 = *(v116 + 8);
  v44 = v117;
  v43(v38, v117);
  v43(v12, v44);
  if (v130)
  {
    [v130 setPath_];
    v45 = v42;
    v46 = v42;
  }

  else
  {
    v46 = 0;
  }

  v47 = v121;
  if (v121)
  {
    [v121 setPath_];
    v48 = v42;
    v49 = v42;
  }

  else
  {
    v49 = 0;
  }

  v50 = v127 == 1;
  v127 = v46;
  v128 = v39;
  v113 = v41;
  if (v50)
  {
    v51 = *MEMORY[0x1E6979EB0];
    v52 = v41;
    v53 = v51;
    v54 = sub_190937FF8(0x7974696361706FLL, 0xE700000000000000, v52);

    v55 = sub_190D51C70();
    [v54 setFromValue_];

    v56 = sub_190D51C70();
    [v54 setToValue_];

    v57 = objc_opt_self();
    v59 = v54;
    v58 = [v57 functionWithName_];

    [v59 setTimingFunction_];
  }

  else
  {
    v59 = 0;
  }

  v60 = v123;
  [v60 setBounds_];
  [v60 setPosition_];

  if (v124)
  {
    v61 = v124;
    [v61 bounds];
    MinX = CGRectGetMinX(v133);
    [v61 bounds];
    MinY = CGRectGetMinY(v134);
    v135.origin.x = 0.0;
    v135.origin.y = 0.0;
    v135.size.width = v22;
    v135.size.height = v23;
    v136 = CGRectInset(v135, MinX, MinY);
    [v61 setBounds_];
    [v61 setPosition_];
  }

  if (v125)
  {
    v64 = v125;
    [v64 setBounds_];
    [v64 setPosition_];
  }

  v65 = v130;
  if (v130)
  {
    [v130 setBounds_];
    [v65 setPosition_];
  }

  if (v47)
  {
    [v47 setBounds_];
    [v47 setPosition_];
  }

  if (v129)
  {
    [v129 setPath_];
  }

  v66 = v132;
  if (v126)
  {
    [v126 setPath_];
  }

  v67 = v122;
  if (qword_1EAD46250 != -1)
  {
    swift_once();
  }

  v68 = sub_190D53040();
  __swift_project_value_buffer(v68, qword_1EAD46258);
  sub_190937C5C(v131, 0x732E73646E756F62, 0xEB00000000657A69, v66);
  if (v123)
  {
    v69 = v60;
    if (v59)
    {
      v70 = v59;
      sub_190937C5C(v70, 0x7974696361706FLL, 0xE700000000000000, v132);

      v66 = v132;
    }

    sub_190937C5C(v131, 0x732E73646E756F62, 0xEB00000000657A69, v66);
    sub_190937C5C(v67, 0x6E6F697469736F70, 0xE800000000000000, v66);
  }

  v71 = v124;
  v72 = v130;
  if (v130 && v127)
  {
    v73 = v49;
    if (v59)
    {
      v74 = v59;
      v75 = v72;
      v76 = v127;
      v77 = v127;
      sub_190937C5C(v74, 0x7974696361706FLL, 0xE700000000000000, v132);
      v72 = v130;

      v66 = v132;
    }

    else
    {
      v78 = v130;
      v76 = v127;
      v79 = v127;
    }

    sub_190937C5C(v76, 1752457584, 0xE400000000000000, v66);
    sub_190937C5C(v67, 0x6E6F697469736F70, 0xE800000000000000, v66);
    sub_190937C5C(v131, 0x732E73646E756F62, 0xEB00000000657A69, v66);

    v49 = v73;
    v47 = v121;
  }

  if (v47 && v49)
  {
    if (v59)
    {
      v80 = v59;
      v81 = v47;
      v82 = v49;
      sub_190937C5C(v80, 0x7974696361706FLL, 0xE700000000000000, v132);

      v66 = v132;
    }

    else
    {
      v83 = v47;
      v84 = v49;
    }

    sub_190937C5C(v49, 1752457584, 0xE400000000000000, v66);
    sub_190937C5C(v67, 0x6E6F697469736F70, 0xE800000000000000, v66);
    sub_190937C5C(v131, 0x732E73646E756F62, 0xEB00000000657A69, v66);
  }

  v85 = v129;
  if (v71)
  {
    v117 = v49;
    v86 = v71;
    if (v59)
    {
      v87 = v59;
      v88 = v132;
      sub_190937C5C(v87, 0x7974696361706FLL, 0xE700000000000000, v132);
    }

    else
    {
      v88 = v132;
    }

    [v71 bounds];
    v89 = CGRectGetMinX(v137);
    [v71 bounds];
    v90 = CGRectGetMinY(v138);
    [v71 bounds];
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v98 = v97;
    v139.origin.x = 0.0;
    v139.origin.y = 0.0;
    v139.size.width = v29;
    v139.size.height = v30;
    v140 = CGRectInset(v139, v89, v90);
    x = v140.origin.x;
    y = v140.origin.y;
    width = v140.size.width;
    height = v140.size.height;
    v103 = v113;
    v104 = sub_190937FF8(0x73646E756F62, 0xE600000000000000, v103);

    v105 = v114;
    v106 = [v114 valueWithCGRect_];
    [v104 setFromValue_];

    v107 = [v105 valueWithCGRect_];
    [v104 setToValue_];

    sub_190937C5C(v104, 0x73646E756F62, 0xE600000000000000, v88);
    v67 = v122;
    sub_190937C5C(v122, 0x6E6F697469736F70, 0xE800000000000000, v88);

    v66 = v88;
    v85 = v129;
    v49 = v117;
  }

  v109 = v125;
  v108 = v126;
  if (v125)
  {
    v110 = v125;
    if (v59)
    {
      v111 = v59;
      sub_190937C5C(v111, 0x7974696361706FLL, 0xE700000000000000, v132);

      v66 = v132;
    }

    sub_190937C5C(v131, 0x732E73646E756F62, 0xEB00000000657A69, v66);
    sub_190937C5C(v67, 0x6E6F697469736F70, 0xE800000000000000, v66);
  }

  if (v85)
  {
    sub_190937C5C(v42, 1752457584, 0xE400000000000000, v66);
  }

  if (v108)
  {
    sub_190937C5C(v42, 1752457584, 0xE400000000000000, v66);
  }

  else
  {

    v59 = v49;
  }

  return sub_1909381DC(v119);
}

id sub_1909378E8(void *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v6 = a3 & 0x7FFFFFFFFFFFFFFFLL;
    v7 = a1;
    v8 = a2;
    a1 = v6;
  }

  return a1;
}

void *sub_19093793C(void *a1, void *a2, uint64_t a3)
{
  if ((~(a1 & a2 & a3) & 0xF000000000000007) != 0)
  {
    return sub_1909378E8(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_190937958(unint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v6 = result >> 61;
  if ((result >> 61) > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {
        v18 = (result & 0x1FFFFFFFFFFFFFFFLL);
        v22 = a3;
        v23 = v18;
        v24 = a2;
        v14 = a4;
        v15 = a5;
        v16 = a6;
      }

      else
      {
        if (v6 != 5)
        {
          return result;
        }

        v8 = (result & 0x1FFFFFFFFFFFFFFFLL);
        v12 = a2;
        v13 = v8;
        v14 = a3;
        v15 = a4;
        v16 = a5;
      }

      return sub_19093793C(v14, v15, v16);
    }

    result &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_11:

    return result;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    v7 = (result & 0x1FFFFFFFFFFFFFFFLL);
    result = a2;
    goto LABEL_11;
  }

  v17 = (result & 0x1FFFFFFFFFFFFFFFLL);

  return sub_1909378E8(v17, a2, a3);
}

void sub_190937A9C(void *a1, void *a2, uint64_t a3)
{
  if ((~(a1 & a2 & a3) & 0xF000000000000007) != 0)
  {
    sub_190937AB8(a1, a2, a3);
  }
}

void sub_190937AB8(void *a1, void *a2, uint64_t a3)
{
  if (a3 < 0)
  {
    v5 = a3 & 0x7FFFFFFFFFFFFFFFLL;

    a1 = v5;
  }
}

void sub_190937B0C(unint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v6 = a1 >> 61;
  if ((a1 >> 61) > 2)
  {
    if (v6 != 3)
    {
      if (v6 == 4)
      {

        v10 = a4;
        v11 = a5;
        v12 = a6;
      }

      else
      {
        if (v6 != 5)
        {
          return;
        }

        v10 = a3;
        v11 = a4;
        v12 = a5;
      }

      sub_190937A9C(v10, v11, v12);
      return;
    }

    a1 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_11:

    return;
  }

  if (!v6)
  {
    goto LABEL_11;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      return;
    }

    a1 = a2;
    goto LABEL_11;
  }

  v13 = (a1 & 0x1FFFFFFFFFFFFFFFLL);

  sub_190937AB8(v13, a2, a3);
}

void sub_190937C5C(void *a1, uint64_t a2, unint64_t a3, NSObject *a4)
{
  if ([a1 delegate])
  {
    swift_unknownObjectRelease();
    v9 = sub_190D56ED0();
    [v4 addAnimation:a1 forKey:v9];

    dispatch_group_enter(a4);
  }

  else
  {
    v10 = a1;
    sub_190D52690();
    v11 = v4;
    oslog = sub_190D53020();
    v12 = sub_190D576A0();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v13 = 136315650;
      v16 = [v10 keyPath];
      if (v16)
      {
        v17 = v16;
        v18 = sub_190D56F10();
        v20 = v19;
      }

      else
      {
        v20 = 0xE300000000000000;
        v18 = 7104878;
      }

      v21 = sub_19021D9F8(v18, v20, &v24);

      *(v13 + 4) = v21;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_19021D9F8(a2, a3, &v24);
      *(v13 + 22) = 2112;
      *(v13 + 24) = v11;
      *v14 = v11;
      v22 = v11;
      _os_log_impl(&dword_19020E000, oslog, v12, "Tried to add send animation (%s) for key: %s to %@. Error: animation does not have a delegate.", v13, 0x20u);
      sub_190830D58(v14);
      MEMORY[0x193AF7A40](v14, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x193AF7A40](v15, -1, -1);
      MEMORY[0x193AF7A40](v13, -1, -1);
    }
  }
}

uint64_t sub_190937ED4()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD46258);
  __swift_project_value_buffer(v0, qword_1EAD46258);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_190937F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKBalloonLayer.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190937FAC()
{
  result = qword_1EAD45080;
  if (!qword_1EAD45080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD45080);
  }

  return result;
}

id sub_190937FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_190D56ED0();

  v6 = [ObjCClassFromMetadata animationWithKeyPath_];

  v7 = *(a3 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_duration);
  v8 = v6;
  [v8 setDuration_];
  [v8 setBeginTime_];
  [v8 setRemovedOnCompletion_];
  LODWORD(v9) = *(a3 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_speed);
  [v8 setSpeed_];
  [v8 setFillMode_];
  [v8 setTimingFunction_];
  swift_beginAccess();
  [v8 setDelegate_];

  swift_unknownObjectRelease();
  v13 = *(a3 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_highFrameRateReason);
  if (v13)
  {
    LODWORD(v10) = *(a3 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_preferredFrameRateRange);
    LODWORD(v11) = *(a3 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_preferredFrameRateRange + 4);
    LODWORD(v12) = *(a3 + OBJC_IVAR____TtC7ChatKit33CKThrowSendAnimationConfiguration_preferredFrameRateRange + 8);
    [v8 setPreferredFrameRateRange_];
    [v8 setHighFrameRateReason_];
  }

  return v8;
}

uint64_t sub_1909381DC(uint64_t a1)
{
  v2 = type metadata accessor for CKBalloonLayer.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_19093824C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_1909382A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_19093831C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D515F0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909384D4(a1, v7);
  if (!v1)
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_190DD55F0;
    v9 = objc_allocWithZone(MEMORY[0x1E69C0820]);
    v10 = sub_190D51570();
    v11 = [v9 initWithImageAtURL_];

    *(v8 + 32) = v11;
    sub_190938B74();
    v12 = sub_190D57160();

    [v2 setMedia_];

    (*(v5 + 8))(v7, v4);
  }

  return v2;
}

void sub_1909384D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v69[1] = *MEMORY[0x1E69E9840];
  v3 = sub_190D515F0();
  v68 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v66 = &v62 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v62 - v11;
  sub_190938BC0();
  v13 = [objc_opt_self() defaultManager];
  sub_190D515D0();
  v14 = sub_190D56ED0();

  v15 = [v13 fileExistsAtPath_];

  if (v15)
  {
    sub_190D51560();
    v16 = [swift_getObjCClassFromMetadata() ck_temporaryImageDirectoryURL];
    sub_190D515B0();

    v17 = v67;
    sub_190D51590();

    v18 = v3;
    v19 = v68;
    v20 = v68 + 1;
    v21 = v68[1];
    v64 = v18;
    v21(v12);
    v22 = sub_190D51570();
    v23 = sub_190D51570();
    v69[0] = 0;
    v24 = [v13 copyItemAtURL:v22 toURL:v23 error:v69];

    if (v24)
    {
      v62 = v20;
      v63 = v21;
      v25 = v64;
      v26 = qword_1EAD46218;
      v27 = v69[0];
      if (v26 != -1)
      {
        swift_once();
      }

      v28 = sub_190D53040();
      __swift_project_value_buffer(v28, qword_1EAD9D730);
      v29 = v19[2];
      v30 = v65;
      v29(v65, a1, v25);
      v31 = v66;
      v32 = v17;
      v33 = v25;
      v29(v66, v32, v25);
      v34 = sub_190D53020();
      v35 = sub_190D57680();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        LODWORD(v67) = v35;
        v37 = v36;
        v68 = swift_slowAlloc();
        v69[0] = v68;
        *v37 = 136315394;
        v38 = sub_190D514C0();
        v40 = v39;
        v41 = v30;
        v42 = v63;
        (v63)(v41, v33);
        v43 = sub_19021D9F8(v38, v40, v69);

        *(v37 + 4) = v43;
        *(v37 + 12) = 2080;
        v44 = sub_190D514C0();
        v46 = v45;
        v42(v31, v33);
        v47 = sub_19021D9F8(v44, v46, v69);

        *(v37 + 14) = v47;
        _os_log_impl(&dword_19020E000, v34, v67, "File copied from %s to %s", v37, 0x16u);
        v48 = v68;
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v48, -1, -1);
        MEMORY[0x193AF7A40](v37, -1, -1);
      }

      else
      {

        v61 = v63;
        (v63)(v31, v33);
        v61(v30, v33);
      }
    }

    else
    {
      v60 = v69[0];
      sub_190D51420();

      swift_willThrow();
      (v21)(v17, v64);
    }
  }

  else
  {
    v49 = v68;
    v50 = v3;
    v67 = v13;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v51 = sub_190D53040();
    __swift_project_value_buffer(v51, qword_1EAD9D730);
    (v49[2])(v6, a1, v3);
    v52 = sub_190D53020();
    v53 = sub_190D576A0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69[0] = v55;
      *v54 = 136315138;
      v56 = sub_190D514C0();
      v58 = v57;
      (v49[1])(v6, v50);
      v59 = sub_19021D9F8(v56, v58, v69);

      *(v54 + 4) = v59;
      _os_log_impl(&dword_19020E000, v52, v53, "Source file does not exist %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x193AF7A40](v55, -1, -1);
      MEMORY[0x193AF7A40](v54, -1, -1);
    }

    else
    {

      (v49[1])(v6, v3);
    }

    sub_190938FD0();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_190938B74()
{
  result = qword_1EAD574D0;
  if (!qword_1EAD574D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD574D0);
  }

  return result;
}

void sub_190938BC0()
{
  v32[1] = *MEMORY[0x1E69E9840];
  v0 = sub_190D515F0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata ck_temporaryImageDirectoryURL];
  sub_190D515B0();

  sub_190D515D0();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v9 = sub_190D56ED0();

  v10 = [v5 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    v11 = [v4 defaultManager];
    v12 = [ObjCClassFromMetadata ck_temporaryImageDirectoryURL];
    sub_190D515B0();

    v13 = sub_190D51570();
    v8(v3, v0);
    v32[0] = 0;
    v14 = [v11 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v32];

    v15 = v32[0];
    if (v14)
    {

      v16 = v15;
    }

    else
    {
      v31 = v32[0];
      v17 = v32[0];
      v18 = sub_190D51420();

      swift_willThrow();
      if (qword_1EAD46218 != -1)
      {
        swift_once();
      }

      v19 = sub_190D53040();
      __swift_project_value_buffer(v19, qword_1EAD9D730);
      v20 = sub_190D53020();
      v21 = sub_190D576A0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v31 = v18;
        v24 = v23;
        v32[0] = v23;
        *v22 = 136315138;
        v25 = [ObjCClassFromMetadata &selRef_ck_cui_cameraFontOfSize_ + 1];
        sub_190D515B0();

        v26 = sub_190D515D0();
        v28 = v27;
        v8(v3, v0);
        v29 = sub_19021D9F8(v26, v28, v32);

        *(v22 + 4) = v29;
        _os_log_impl(&dword_19020E000, v20, v21, "error creating directory %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x193AF7A40](v24, -1, -1);
        MEMORY[0x193AF7A40](v22, -1, -1);
        v30 = v31;
      }

      else
      {
        v30 = v18;
      }
    }
  }
}

unint64_t sub_190938FD0()
{
  result = qword_1EAD574D8;
  if (!qword_1EAD574D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574D8);
  }

  return result;
}

CFMutableDataRef sub_190939024(CGImage *a1)
{
  result = CFDataCreateMutable(0, 0);
  if (result)
  {
    v3 = result;
    sub_190D52DF0();
    v4 = sub_190D56ED0();

    v5 = CGImageDestinationCreateWithData(v3, v4, 1uLL, 0);

    if (v5)
    {
      CGImageDestinationAddImage(v5, a1, 0);
      if (CGImageDestinationFinalize(v5))
      {
        v6 = v3;
        v7 = sub_190D51670();

        return v7;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}