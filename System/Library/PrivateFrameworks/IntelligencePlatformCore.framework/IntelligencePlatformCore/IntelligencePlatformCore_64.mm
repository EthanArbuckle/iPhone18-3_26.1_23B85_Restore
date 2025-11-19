uint64_t sub_1C49C0318(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void, unint64_t))
{
  v7 = result;
  v8 = 0;
  v9 = *(a3 + 16);
  v10 = a3 + 32;
  v11 = MEMORY[0x1E69E7CC0];
  v22 = a3 + 32;
LABEL_2:
  for (i = v10 + 40 * v8; ; i += 40)
  {
    if (v9 == v8)
    {
      return v11;
    }

    if (v8 >= v9)
    {
      break;
    }

    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_17;
    }

    v7(&v21, i);
    if (v5)
    {

      return v11;
    }

    if (v21.n128_u64[0])
    {
      v19 = v21;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v17 = *(v11 + 16);
        v18 = sub_1C43FCEC0();
        result = a4(v18);
        v11 = result;
      }

      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      v16 = v19;
      if (v15 >= v14 >> 1)
      {
        result = (a4)(v14 > 1, v15 + 1, 1, v11, v19);
        v16 = v19;
        v11 = result;
      }

      *(v11 + 16) = v15 + 1;
      *(v11 + 16 * v15 + 32) = v16;
      v8 = v13;
      v10 = v22;
      goto LABEL_2;
    }

    result = a5(0, v21.n128_u64[1]);
    ++v8;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_1C49C048C(void (*a1)(__int128 *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v8 = *(type metadata accessor for VirtualInteractionContact(0) - 8);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_16;
    }

    a1(&v27, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {

      return;
    }

    if (*(&v27 + 1) == 1)
    {
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v26 = v30;
      sub_1C4420C3C(&v23, &qword_1EC0C0C30, &qword_1C4F402A0);
      ++v6;
    }

    else
    {
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v26 = v30;
      v10 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v10 + 16);
        sub_1C458E7F0();
        v10 = v18;
      }

      v11 = v10;
      v12 = *(v10 + 16);
      v31 = v11;
      v13 = v12 + 1;
      if (v12 >= *(v11 + 24) >> 1)
      {
        sub_1C458E7F0();
        v13 = v12 + 1;
        v31 = v19;
      }

      v21 = v25;
      v22 = v26;
      v14 = v23;
      v20 = v24;
      v15 = v31;
      *(v31 + 16) = v13;
      v16 = (v15 + (v12 << 6));
      v16[4] = v21;
      v16[5] = v22;
      v16[2] = v14;
      v16[3] = v20;
      v6 = v9;
    }
  }
}

void sub_1C49C0698()
{
  sub_1C43FE96C();
  sub_1C4405E64();
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0C0C40, &qword_1C4F402B0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FE94C();
  v9 = type metadata accessor for LiveGlobalKnowledgeTriple();
  v10 = sub_1C43FCDF8(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v37 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD230();
  v36 = v15;
  v16 = 0;
  v17 = *(v1 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  while (v17 != v16)
  {
    v18 = *(sub_1C4EFA0F8() - 8);
    v4(v1 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16);
    if (v0)
    {

      break;
    }

    v19 = sub_1C441B908();
    if (sub_1C44157D4(v19, v20, v9) == 1)
    {
      sub_1C4420C3C(v2, &qword_1EC0C0C40, &qword_1C4F402B0);
      ++v16;
    }

    else
    {
      sub_1C44D0C04(v2, v36, type metadata accessor for LiveGlobalKnowledgeTriple);
      sub_1C44D0C04(v36, v37, type metadata accessor for LiveGlobalKnowledgeTriple);
      v21 = v38;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = *(v38 + 16);
        v31 = sub_1C43FCEC0();
        sub_1C458BB48(v31, v32, v33, v38);
        v21 = v34;
      }

      v22 = v21;
      v23 = *(v21 + 16);
      v38 = v22;
      v24 = *(v22 + 24);
      v25 = v23 + 1;
      if (v23 >= v24 >> 1)
      {
        sub_1C458BB48(v24 > 1, v23 + 1, 1, v38);
        v25 = v23 + 1;
        v38 = v35;
      }

      ++v16;
      *(v38 + 16) = v25;
      sub_1C43FBF6C();
      sub_1C44D0C04(v29, v27 + v26 + *(v28 + 72) * v23, type metadata accessor for LiveGlobalKnowledgeTriple);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C49C0954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  a22 = v25;
  a23 = v26;
  sub_1C4405E64();
  v57 = v27;
  v58 = sub_1C4EFEEF8();
  v28 = sub_1C43FCDF8(v58);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBCC4();
  v35 = v34 - v33;
  v36 = v24 + 56;
  v37 = 1 << *(v24 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v24 + 56);
  v40 = (v37 + 63) >> 6;
  v59 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v41 = 0;
  v56 = MEMORY[0x1E69E7CC0];
  while (v39)
  {
    v42 = v58;
LABEL_11:
    (*(v30 + 16))(v35, *(v59 + 48) + *(v30 + 72) * (__clz(__rbit64(v39)) | (v41 << 6)), v42);
    v57(&a13, v35);
    if (v23)
    {
      v52 = sub_1C4409EF0();
      v53(v52);

LABEL_19:

      sub_1C4402144();
      sub_1C43FBC80();
      return;
    }

    v39 &= v39 - 1;
    v44 = sub_1C4409EF0();
    v45(v44);
    v46 = a13;
    if (a13 != 2)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v56 + 16);
        sub_1C43FCEC0();
        sub_1C458A8D8();
        v56 = v50;
      }

      v47 = *(v56 + 16);
      v48 = v47 + 1;
      if (v47 >= *(v56 + 24) >> 1)
      {
        v54 = *(v56 + 16);
        v55 = v47 + 1;
        sub_1C458A8D8();
        v47 = v54;
        v48 = v55;
        v56 = v51;
      }

      *(v56 + 16) = v48;
      *(v56 + v47 + 32) = v46 & 1;
    }
  }

  v42 = v58;
  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v40)
    {
      goto LABEL_19;
    }

    v39 = *(v36 + 8 * v43);
    ++v41;
    if (v39)
    {
      v41 = v43;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C49C0B9C()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v5 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v6 = *(v1 + 16);
  while (1)
  {
    if (v6 == v5)
    {
      goto LABEL_15;
    }

    if (v5 >= v6)
    {
      break;
    }

    v7 = *(sub_1C4EFDB98() - 8);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_17;
    }

    v4(__src, v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v0)
    {

LABEL_15:
      sub_1C43FBC80();
      return;
    }

    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1C49C2D34(__dst) == 1)
    {
      memcpy(v16, __src, sizeof(v16));
      sub_1C4420C3C(v16, &qword_1EC0C0C38, &qword_1C4F402A8);
      ++v5;
    }

    else
    {
      memcpy(v16, __src, sizeof(v16));
      v9 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = *(v19 + 16);
        sub_1C43FCEC0();
        sub_1C458ED30();
        v9 = v13;
      }

      v10 = v9;
      v11 = *(v9 + 16);
      v19 = v10;
      if (v11 >= *(v10 + 24) >> 1)
      {
        sub_1C458ED30();
        v19 = v14;
      }

      memcpy(v15, v16, sizeof(v15));
      *(v19 + 16) = v11 + 1;
      memcpy((v19 + 176 * v11 + 32), v15, 0xB0uLL);
      v5 = v8;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t LifeEventActivityProvider.__allocating_init(config:activitySignals:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LifeEventActivityProvider.init(config:activitySignals:)(a1, a2);
  return v4;
}

uint64_t LifeEventActivityProvider.init(config:activitySignals:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration();
  v7 = sub_1C43FBD18(v6);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v42 - v13;
  if (qword_1EDDFDCF8 != -1)
  {
    sub_1C43FF284();
  }

  swift_beginAccess();
  v15 = MEMORY[0x1E69E7CC0];
  if (qword_1EDDFF3C8)
  {
    (*(off_1EDDFF3D0 + 7))();
    v17 = (*(v16 + 8))();
    if (a2)
    {
LABEL_5:
      sub_1C4454058(a1, type metadata accessor for Configuration);

      *(v3 + 16) = a2;
      return v3;
    }
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
    if (a2)
    {
      goto LABEL_5;
    }
  }

  v44 = v17;
  sub_1C456902C(&qword_1EC0B8AF8, &unk_1C4F401A0);
  v18 = swift_allocObject();
  v43 = xmmword_1C4F0C890;
  *(v18 + 16) = xmmword_1C4F0C890;
  *(v18 + 32) = 772;
  *(v18 + 34) = 1;
  *(v3 + 16) = v15;
  v19 = Configuration.isLifeEventAllDataSourcesEnabled.getter();
  v45 = v3;
  v42[1] = v3 + 16;
  if (v19)
  {
    sub_1C458C244();
    v18 = v20;
    *(v20 + 16) = 4;
    *(v20 + 35) = 2;
    sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D480;
    v22 = type metadata accessor for InferredModeSignal();
    swift_allocObject();
    v23 = sub_1C493B648(1, 0);
    *(inited + 56) = v22;
    *(inited + 64) = sub_1C49C2BCC(&qword_1EDDE5BC0, 255, type metadata accessor for InferredModeSignal);
    *(inited + 32) = v23;
    v24 = type metadata accessor for MotionStateSignal();
    swift_allocObject();
    v25 = sub_1C4A450C4(1, 600.0);
    *(inited + 96) = v24;
    *(inited + 104) = sub_1C49C2BCC(qword_1EDDE63A0, 255, type metadata accessor for MotionStateSignal);
    *(inited + 72) = v25;
    sub_1C4430EE8(a1, v14, type metadata accessor for Configuration);
    v26 = type metadata accessor for VirtualInteractionsSignal();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    v29 = sub_1C4D31AA8(v14, 0);
    *(inited + 136) = v26;
    *(inited + 144) = sub_1C49C2BCC(&qword_1EDDE1210, 255, type metadata accessor for VirtualInteractionsSignal);
    *(inited + 112) = v29;
    *(inited + 176) = &unk_1F43F02B0;
    *(inited + 184) = sub_1C49C2A58();
    *(inited + 152) = &unk_1F43D6D38;
    swift_beginAccess();
    sub_1C49D3D60(inited);
    swift_endAccess();
  }

  sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
  v30 = swift_initStackObject();
  *(v30 + 16) = v43;
  sub_1C4430EE8(a1, v14, type metadata accessor for Configuration);
  sub_1C4430EE8(v14, v12, type metadata accessor for Configuration);
  v31 = type metadata accessor for ConfidenceService();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  v34 = sub_1C4689020(v12);
  sub_1C4454058(v14, type metadata accessor for Configuration);
  *(v30 + 56) = &unk_1F43F03B0;
  *(v30 + 64) = sub_1C49C13B4();
  *(v30 + 32) = v18;
  *(v30 + 40) = v34;
  sub_1C4430EE8(a1, v14, type metadata accessor for Configuration);
  sub_1C4430EE8(v14, v12, type metadata accessor for Configuration);
  v35 = *(v31 + 48);
  v36 = *(v31 + 52);
  swift_allocObject();
  v37 = sub_1C4689020(v12);
  sub_1C4454058(v14, type metadata accessor for Configuration);
  *(v30 + 96) = &unk_1F43F0330;
  *(v30 + 104) = sub_1C49C1408();
  *(v30 + 72) = &unk_1F43D6D10;
  *(v30 + 80) = v37;
  v38 = type metadata accessor for StoredLocationVisitSignal();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  *(v30 + 136) = v38;
  *(v30 + 144) = sub_1C49C2BCC(qword_1EDDF2F08, 255, type metadata accessor for StoredLocationVisitSignal);
  *(v30 + 112) = v39;
  v46 = v30;
  sub_1C49D3D60(v44);
  v40 = v46;
  swift_beginAccess();
  sub_1C49D3D60(v40);
  swift_endAccess();
  sub_1C4454058(a1, type metadata accessor for Configuration);
  return v45;
}

unint64_t sub_1C49C13B4()
{
  result = qword_1EDDF1558;
  if (!qword_1EDDF1558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1558);
  }

  return result;
}

unint64_t sub_1C49C1408()
{
  result = qword_1EDDF0FF0;
  if (!qword_1EDDF0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0FF0);
  }

  return result;
}

uint64_t sub_1C49C145C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v8[2] = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v4 = sub_1C49C0318(sub_1C49C2AAC, v8, v3, sub_1C458C26C, sub_1C45B4C6C);

  v8[4] = v4;
  v8[5] = sub_1C49C1748;
  v8[6] = 0;

  v5 = sub_1C43FD2BC();
  sub_1C456902C(v5, v6);
  sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  sub_1C4401CBC(qword_1EDDF3168, &qword_1EC0BDB40, &unk_1C4F30E20);
  return sub_1C4F02848();
}

void sub_1C49C15CC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1C4AFD318();
  if (v2)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AsyncSequence.toAnySessionAsyncSequence()(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), &v11);
    *a2 = v11;
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t sub_1C49C1748(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_1C4409678(a1, v12);
  (*(v13 + 16))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  sub_1C4409678(a2, v14);
  (*(v15 + 16))(v14, v15);
  LOBYTE(a1) = sub_1C4EF9C18();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t sub_1C49C18C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C49C18EC, 0, 0);
}

uint64_t sub_1C49C18EC()
{
  sub_1C49C194C(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C49C194C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v109 = type metadata accessor for ActivityEventContent(0);
  v3 = sub_1C43FBCE0(v109);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v110 = v7 - v6;
  v8 = sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  v9 = sub_1C43FBD18(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v104 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v103 - v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FD230();
  v105 = v16;
  v108 = type metadata accessor for InferredActivitySegment();
  v17 = sub_1C43FBCE0(v108);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = sub_1C456902C(&qword_1EC0C0C20, &unk_1C4F40278);
  v24 = sub_1C43FBD18(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBFDC();
  v106 = v27;
  sub_1C43FD1D0();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v103 - v30;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v107 = v32;
  v33 = type metadata accessor for VirtualInteraction(0);
  v34 = sub_1C43FBCE0(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  v121 = 0u;
  v122 = 0u;
  v41 = a1[3];
  v40 = a1[4];
  v111 = a1;
  sub_1C4409678(a1, v41);
  v42 = *(v40 + 32);
  v120[3] = swift_getAssociatedTypeWitness();
  sub_1C4422F90(v120);
  v42(v41, v40);
  sub_1C43FC648();
  sub_1C4411FF4();
  if (swift_dynamicCast())
  {
    sub_1C43FC648();
    sub_1C4411FF4();
    if (swift_dynamicCast())
    {
      sub_1C49C2464(v114, v114[0]);
      v43 = 0;
      LOBYTE(v31) = v114[0];
LABEL_7:
      v44 = MEMORY[0x1E69E7CC0];
      v45 = 1;
      goto LABEL_41;
    }

    goto LABEL_54;
  }

  sub_1C43FC648();
  sub_1C4411FF4();
  if (swift_dynamicCast())
  {
    sub_1C43FC648();
    sub_1C4411FF4();
    if (swift_dynamicCast())
    {
      sub_1C49C2490(v113);
      v43 = 0;
      LOBYTE(v31) = v113[0];
      goto LABEL_7;
    }

LABEL_54:
    sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);
    goto LABEL_55;
  }

  sub_1C43FC648();
  sub_1C43FDADC();
  if (sub_1C443FDF8())
  {
    sub_1C441FE3C();
    sub_1C4454058(v39, v46);
    sub_1C43FC648();
    sub_1C43FDADC();
    v47 = v107;
    sub_1C443FDF8();
    sub_1C4401750();
    sub_1C440BAA8(v48, v49, v50, v51);
    sub_1C445FFF0(v47, v31, &qword_1EC0C0C20, &unk_1C4F40278);
    sub_1C43FC0FC(v31);
    if (v70)
    {
      sub_1C4420C3C(v31, &qword_1EC0C0C20, &unk_1C4F40278);
      LOBYTE(v31) = -32;
    }

    else
    {
      v59 = *&v31[*(v33 + 24)];
      sub_1C441FE3C();
      sub_1C4454058(v31, v60);
      sub_1C49C24EC(&v115, v59);
      LOBYTE(v31) = v115;
    }

    v61 = v106;
    sub_1C445FFF0(v47, v106, &qword_1EC0C0C20, &unk_1C4F40278);
    sub_1C43FC0FC(v61);
    if (v70)
    {
      sub_1C4420C3C(v61, &qword_1EC0C0C20, &unk_1C4F40278);
      v44 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v44 = sub_1C49C250C();
      sub_1C441FE3C();
      sub_1C4454058(v61, v66);
    }

    sub_1C4420C3C(v47, &qword_1EC0C0C20, &unk_1C4F40278);
    v43 = 0;
LABEL_26:
    v45 = 1;
    goto LABEL_40;
  }

  sub_1C43FC648();
  sub_1C43FDADC();
  v52 = v108;
  if (!sub_1C443FDF8())
  {
    sub_1C442B870(v120, v114);
    if (sub_1C4416244())
    {
      sub_1C49C2CB8(&v115);
      sub_1C442B870(v120, v114);
      if ((sub_1C4416244() & 1) == 0)
      {
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v115 = 0u;
      }

      sub_1C445FFF0(&v115, v113, &qword_1EC0C0C28, &qword_1C4F40288);
      if (!v113[3])
      {
        sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v63 = &qword_1EC0C0C28;
        v64 = &qword_1C4F40288;
        v65 = v113;
        goto LABEL_59;
      }

      memcpy(v114, v113, sizeof(v114));
      sub_1C445FFF0(&v114[5], v113, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      sub_1C49C2CB8(v114);
      v62 = v113[3];
      sub_1C4420C3C(v113, &qword_1EC0B97A0, &qword_1C4F0F7D0);
      if (v62)
      {
        v63 = &qword_1EC0BCD10;
        v64 = &qword_1C4F0C8C0;
        v65 = &v121;
LABEL_59:
        sub_1C4420C3C(v65, v63, v64);
        sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
        v99 = sub_1C4405114();
        sub_1C440BAA8(v99, v100, v101, v102);
        sub_1C4420C3C(&v115, &qword_1EC0C0C28, &qword_1C4F40288);
        return sub_1C440962C(v120);
      }

      sub_1C4420C3C(&v115, &qword_1EC0C0C28, &qword_1C4F40288);
      v43 = 0;
      v44 = MEMORY[0x1E69E7CC0];
      v45 = 1;
      LOBYTE(v31) = -99;
    }

    else
    {
      sub_1C43FC648();
      sub_1C4411FF4();
      if (!swift_dynamicCast())
      {
        if (qword_1EDDFDCF8 != -1)
        {
          sub_1C43FF284();
        }

        swift_beginAccess();
        if (!qword_1EDDFF3C8)
        {
          goto LABEL_54;
        }

        v94 = (*(off_1EDDFF3D0 + 7))();
        v96 = v95;
        v97 = v111;
        (*(v95 + 16))(&v115, v111, v94, v95);
        if (v115 >= 0xE0u)
        {
          LOBYTE(v31) = -32;
        }

        else
        {
          LOBYTE(v31) = v115;
        }

        (*(v96 + 24))(&v115, v97, v94, v96);
        if (*(&v116 + 1))
        {
          sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);
          sub_1C44482AC(&v115, &v121);
        }

        else
        {
          sub_1C4420C3C(&v115, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        }

        v43 = 0;
        v44 = MEMORY[0x1E69E7CC0];
        goto LABEL_26;
      }

      sub_1C43FC648();
      sub_1C4411FF4();
      v71 = swift_dynamicCast();
      v72 = v114[1];
      if (v114[1])
      {
        v73 = v71;
      }

      else
      {
        v73 = 0;
      }

      if (v73 == 1)
      {
        v74 = v114[0];
        v43 = v114[2];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        *&v121 = v74;
        *(&v121 + 1) = v72;
        *&v122 = v43;
        *(&v122 + 1) = &type metadata for GamingActivityContent;
      }

      else
      {
        sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);
        v43 = 0;
        v121 = 0u;
        v122 = 0u;
      }

      v45 = v73 ^ 1;
      v44 = MEMORY[0x1E69E7CC0];
      LOBYTE(v31) = -117;
    }

LABEL_41:
    LOBYTE(v115) = v31;
    LOBYTE(v113[0]) = 0x80;
    if ((static ActivityType.== infix(_:_:)(&v115, v113) & 1) == 0)
    {
      if (qword_1EDDF7950 != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for SourceIdPrefix();
      v77 = sub_1C442B738(v76, qword_1EDE2D6C8);
      v78 = v110;
      sub_1C4430EE8(v77, v110 + *(v109 + 32), type metadata accessor for SourceIdPrefix);
      sub_1C445FFF0(&v121, &v115, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      *(v78 + 40) = 0u;
      *(v78 + 24) = 0u;
      *v78 = v31;
      *(v78 + 8) = v43;
      *(v78 + 16) = v45;
      sub_1C4815D50(&v115, v78 + 24);
      *(v78 + 56) = v44;
      v79 = v111;
      v80 = v111[4];
      sub_1C4409678(v111, v111[3]);
      v81 = *(v80 + 16);
      v82 = v112;
      v83 = sub_1C43FD2BC();
      v84(v83);
      v85 = v79[4];
      sub_1C4409678(v79, v79[3]);
      v86 = *(v85 + 24);
      v87 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
      v88 = v82 + *(v87 + 28);
      v89 = sub_1C43FD2BC();
      v86(v89);
      sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);
      sub_1C44D0C04(v78, v82 + *(v87 + 32), type metadata accessor for ActivityEventContent);
      v90 = v82;
      v91 = 0;
      v92 = 1;
      v93 = v87;
      goto LABEL_56;
    }

    goto LABEL_42;
  }

  sub_1C442CDC0();
  sub_1C4454058(v22, v53);
  sub_1C43FC648();
  sub_1C43FDADC();
  v54 = v105;
  sub_1C443FDF8();
  sub_1C4401750();
  sub_1C440BAA8(v55, v56, v57, v58);
  v31 = v103;
  sub_1C445FFF0(v54, v103, &qword_1EC0BF8E0, &qword_1C4F3E000);
  sub_1C43FC0FC(v31);
  if (v70)
  {
    sub_1C4420C3C(v31, &qword_1EC0BF8E0, &qword_1C4F3E000);
    LOBYTE(v31) = -32;
  }

  else
  {
    v67 = v31[*(v52 + 24)];
    sub_1C442CDC0();
    sub_1C4454058(v31, v68);
    v31 = (0x9A989C9B858BuLL >> (8 * v67));
  }

  v69 = v104;
  sub_1C445FFF0(v54, v104, &qword_1EC0BF8E0, &qword_1C4F3E000);
  sub_1C43FC0FC(v69);
  if (v70)
  {
    v45 = 1;
  }

  else
  {
    v45 = 0;
  }

  if (v70)
  {
    sub_1C4420C3C(v69, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v43 = 0;
  }

  else
  {
    v43 = *(v69 + *(v52 + 28));
    sub_1C442CDC0();
    sub_1C4454058(v69, v75);
  }

  sub_1C4420C3C(v54, &qword_1EC0BF8E0, &qword_1C4F3E000);
  v44 = MEMORY[0x1E69E7CC0];
LABEL_40:
  if (v31 < 0xE0u)
  {
    goto LABEL_41;
  }

LABEL_42:
  sub_1C4420C3C(&v121, &qword_1EC0BCD10, &qword_1C4F0C8C0);

LABEL_55:
  sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v90 = sub_1C4405114();
LABEL_56:
  sub_1C440BAA8(v90, v91, v92, v93);
  return sub_1C440962C(v120);
}

void sub_1C49C2464(_BYTE *a1@<X8>, char a2@<W0>)
{
  if ((a2 - 3) <= 0xDu)
  {
    v2 = byte_1C4F402D2[(a2 - 3)];
  }

  sub_1C441EDA8(a1);
}

void sub_1C49C2490(_BYTE *a1@<X8>)
{
  if (*v1 != 2)
  {
    *v1;
  }

  sub_1C441EDA8(a1);
}

void sub_1C49C24EC(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  if (a2 <= 0x13)
  {
    v2 = byte_1C4F402E0[a2];
  }

  sub_1C441EDA8(a1);
}

uint64_t sub_1C49C250C()
{
  v1 = sub_1C456902C(&qword_1EC0BDBF8, &unk_1C4F6DE80);
  sub_1C43FBD18(v1);
  v3 = *(v2 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for VirtualInteractionContact(0);
  v8 = sub_1C43FBCE0(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v13 = (v12 - v11);
  v14 = type metadata accessor for VirtualInteraction(0);
  v15 = *(v0 + v14[8]);
  if (v15 == 1)
  {
    v17 = *(v0 + v14[10]);
    MEMORY[0x1EEE9AC00](v14);
    *(&v25 - 2) = v0;
    sub_1C49C048C(sub_1C49C2D0C, (&v25 - 4), v18);
    return v19;
  }

  else
  {
    if (!v15)
    {
      sub_1C445FFF0(v0 + v14[9], v6, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      sub_1C43FC0FC(v6);
      if (v16)
      {
        sub_1C4420C3C(v6, &qword_1EC0BDBF8, &unk_1C4F6DE80);
      }

      else
      {
        sub_1C44D0C04(v6, v13, type metadata accessor for VirtualInteractionContact);
        sub_1C49C2794(v13, &v25);
        v21 = v25;
        v22 = v26;
        v30 = v27;
        v31 = v28;
        v32 = v29;
        if (v26 != 1)
        {
          sub_1C456902C(&qword_1EC0B89A8, &unk_1C4F40290);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1C4F0D130;
          *(v20 + 32) = v21;
          *(v20 + 40) = v22;
          v24 = v31;
          *(v20 + 48) = v30;
          *(v20 + 64) = v24;
          *(v20 + 80) = v32;
          sub_1C440F8D0();
          return v20;
        }

        sub_1C440F8D0();
      }
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t LifeEventActivityProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LifeEventActivityProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C49C2794@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  result = MEMORY[0x1EEE9AC00](v7);
  v10 = &v36 - v9;
  if (a1[1] && (v11 = *a1, v12 = String.normalizedContactHandle()(), result = v12.value._countAndFlagsBits, v12.value._object))
  {
    countAndFlagsBits = v12.value._countAndFlagsBits;
    object = v12.value._object;
    v15 = a1[2];
    v16 = a1[3];
    v17 = String.normalizedContactHandle()();
    if (v17.value._object)
    {
      v18 = v17.value._countAndFlagsBits;
    }

    else
    {
      v18 = 0;
    }

    if (v17.value._object)
    {
      v19 = v17.value._object;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v42 = v12;
    v40 = 43;
    v41 = 0xE100000000000000;
    sub_1C4415EA8();
    if (sub_1C4F02048())
    {
      v20 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
    }

    else
    {
      v42 = v12;
      v40 = 64;
      v41 = 0xE100000000000000;
      v21 = sub_1C4425DB8();
      if (v21)
      {
        v20 = v12.value._countAndFlagsBits;
      }

      else
      {
        v20 = 0;
      }

      if (v21)
      {
        v22 = v12.value._object;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v12.value._countAndFlagsBits;
      }

      v37 = v23;
      v38 = v22;
      if (v21)
      {
        v24 = 0;
      }

      else
      {
        v24 = v12.value._object;
      }

      v39 = v24;
      countAndFlagsBits = 0;
      object = 0;
    }

    v42.value._countAndFlagsBits = v18;
    v42.value._object = v19;
    v40 = 43;
    v41 = 0xE100000000000000;
    if (sub_1C4425DB8())
    {

      countAndFlagsBits = v18;
      object = v19;
      v26 = v37;
      v25 = v38;
    }

    else
    {
      v42.value._countAndFlagsBits = v18;
      v42.value._object = v19;
      v40 = 64;
      v41 = 0xE100000000000000;
      if (sub_1C4425DB8())
      {

        v20 = v18;
        v25 = v19;
        v26 = v37;
      }

      else
      {
        v26 = v37;
        if (v39)
        {
        }

        else
        {
          v26 = v18;
          v39 = v19;
        }

        v25 = v38;
      }
    }

    v27 = type metadata accessor for VirtualInteractionContact(0);
    sub_1C445FFF0(a1 + *(v27 + 28), v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v28 = sub_1C4EFF0C8();
    if (sub_1C44157D4(v10, 1, v28) == 1)
    {
      result = sub_1C4420C3C(v10, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v29 = sub_1C4EFF018();
      v30 = v31;
      v32 = *(*(v28 - 8) + 8);
      v33 = sub_1C43FD2BC();
      result = v34(v33);
    }

    *a2 = v29;
    a2[1] = v30;
    v35 = v39;
    a2[2] = v26;
    a2[3] = v35;
    a2[4] = v20;
    a2[5] = v25;
    a2[6] = countAndFlagsBits;
    a2[7] = object;
  }

  else
  {
    *a2 = xmmword_1C4F0D7C0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
    *(a2 + 3) = 0u;
  }

  return result;
}

unint64_t sub_1C49C2A58()
{
  result = qword_1EDDE2AD8[0];
  if (!qword_1EDDE2AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE2AD8);
  }

  return result;
}

uint64_t sub_1C49C2AC8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C44A7DA0;

  return sub_1C49C18C8(a1, a2, v2);
}

uint64_t sub_1C49C2B74(uint64_t a1, uint64_t a2)
{
  result = sub_1C49C2BCC(&unk_1EDDF34E0, a2, type metadata accessor for LifeEventActivityProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49C2BCC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C49C2D34(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C49C2D64()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C49C2D8C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1C49C2E0C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1C4EF9CD8();
  v14 = sub_1C43FCDF8(v13);
  v39 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  result = sub_1C49C31BC(a1, &v37 - v22);
  if (!v2)
  {
    v38 = a2;
    sub_1C4EF9CC8();
    sub_1C4419C34();
    sub_1C4498EB8(v25, v26);
    if (sub_1C4F01068())
    {
      type metadata accessor for DateRangeError();
      sub_1C4498EB8(qword_1EDDEA868, type metadata accessor for DateRangeError);
      swift_allocError();
      v27 = v39;
      v29 = v28;
      v30 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
      v38 = *(v30 + 48);
      v31 = *(v27 + 16);
      v31(v29, v23, v13);
      v31(&v38[v29], v20, v13);
      sub_1C440BAA8(v29, 0, 1, v30);
      swift_willThrow();
      v32 = *(v27 + 8);
      v32(v20, v13);
      return (v32)(v23, v13);
    }

    else
    {
      result = sub_1C4F01088();
      if (result)
      {
        v33 = *(v39 + 32);
        v33(v12, v23, v13);
        v33(&v12[*(v5 + 48)], v20, v13);
        sub_1C49C35F4(v12, v9);
        v37 = *(v5 + 48);
        v33(v38, v9, v13);
        v34 = *(v39 + 8);
        v34(v9 + v37, v13);
        sub_1C4575F28(v12, v9);
        v35 = *(v5 + 48);
        v36 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
        v33(&v38[*(v36 + 36)], (v9 + v35), v13);
        return (v34)(v9, v13);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1C49C31BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Configuration();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Pipeline.StatusStore();
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - v16;
  sub_1C4430F48(a1, v13, type metadata accessor for Configuration);
  v18 = *(v10 + 28);
  v13[v18] = 1;
  if (qword_1EDDF7B90 != -1)
  {
    swift_once();
  }

  sub_1C4430F48(v13, v8, type metadata accessor for Configuration);
  v19 = v13[v18];
  v33 = 0xD000000000000010;
  v34 = 0x80000001C4FAAFC0;
  v20 = 0xE700000000000000;
  v21 = 0x6E776F6E6B6E75;
  switch(v19)
  {
    case 1:
      v20 = 0xE400000000000000;
      v21 = 1819047270;
      break;
    case 2:
      v20 = 0xE500000000000000;
      v21 = 0x61746C6564;
      break;
    case 3:
      v20 = 0xEA0000000000676ELL;
      v21 = 0x69686374614D6F74;
      break;
    default:
      break;
  }

  MEMORY[0x1C6940010](v21, v20);

  MEMORY[0x1C6940010](0x756F69766572702ELL, 0xE900000000000073);
  v22 = v33;
  v23 = v34;
  v24 = type metadata accessor for KeyValueStore();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  KeyValueStore.init(config:domain:)(v8, v22, v23);
  if (v2)
  {

    sub_1C47CE078(v13);
    v27 = sub_1C4EF9CD8();
    sub_1C440BAA8(v17, 1, 1, v27);
LABEL_10:
    sub_1C44686E4(v17);
    type metadata accessor for DateRangeError();
    sub_1C4498EB8(qword_1EDDEA868, type metadata accessor for DateRangeError);
    swift_allocError();
    v30 = v29;
    v31 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
    sub_1C440BAA8(v30, 1, 1, v31);
    return swift_willThrow();
  }

  sub_1C446FB00();

  sub_1C47CE078(v13);
  v28 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v17, 1, v28) == 1)
  {
    goto LABEL_10;
  }

  return (*(*(v28 - 8) + 32))(a2, v17, v28);
}

uint64_t sub_1C49C35F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DateRangeError()
{
  result = qword_1EDDEA838;
  if (!qword_1EDDEA838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C49C36B0()
{
  v1 = v0;
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBD08();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v28 - v12;
  v14 = type metadata accessor for DateRangeError();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4430F48(v1, v17, type metadata accessor for DateRangeError);
  v18 = sub_1C456902C(&qword_1EC0C0C58, &unk_1C4F40340);
  if (sub_1C44157D4(v17, 1, v18) == 1)
  {
    return 0xD00000000000004BLL;
  }

  v20 = *(v18 + 48);
  v21 = *(v5 + 32);
  v21(v13, v17, v2);
  v21(v10, &v17[v20], v2);
  v28[0] = 0;
  v28[1] = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001ELL, 0x80000001C4FABD50);
  sub_1C4419C34();
  sub_1C4498EB8(v22, v23);
  v24 = sub_1C4F02858();
  MEMORY[0x1C6940010](v24);

  MEMORY[0x1C6940010](0xD00000000000001BLL, 0x80000001C4FABD70);
  v25 = sub_1C4F02858();
  MEMORY[0x1C6940010](v25);

  v19 = v28[0];
  v26 = *(v5 + 8);
  v26(v10, v2);
  v26(v13, v2);
  return v19;
}

void sub_1C49C3968()
{
  sub_1C4412004();
  if (!v4)
  {
    sub_1C440AE64();
    sub_1C4598F7C();
    if (!v1)
    {
      return;
    }

    goto LABEL_6;
  }

  v13 = v3;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C441CBA4();
  v5 = MEMORY[0x1C6940010](*v2, v2[1]);
  sub_1C442CDD8(v5, v6, v7, v8, v9, v10, v11, v12, v13);
  sub_1C4598F7C();
  if (v1)
  {

LABEL_6:
    *v0 = 4;
    return;
  }
}

uint64_t sub_1C49C3A3C()
{
  sub_1C49C3A94();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_1C49C3A94()
{
  if (!qword_1EDDF01E8)
  {
    sub_1C4EF9CD8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDF01E8);
    }
  }
}

uint64_t sub_1C49C3AFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  return (*(v1 + 16))();
}

uint64_t sub_1C49C3B28@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v13 - v7;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v9 + 24);
  result = (*(v9 + 16))(v6);
  if (!v2)
  {
    sub_1C49CA8D0(v8, a1);
    return sub_1C49C3CB4(v8);
  }

  return result;
}

unint64_t sub_1C49C3C60()
{
  result = qword_1EC0C0C60;
  if (!qword_1EC0C0C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0C60);
  }

  return result;
}

uint64_t sub_1C49C3CB4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C49C3D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v64 = a1;
  v65 = a2;
  v2 = sub_1C4F00978();
  v3 = sub_1C43FCDF8(v2);
  v66 = v4;
  v67 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v69 = (v8 - v7);
  v9 = sub_1C4EF9308();
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  v25 = sub_1C4EF98F8();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v33 = v32 - v31;
  sub_1C44867F4();
  v34 = sub_1C4F01E98();
  if (!v34)
  {
    sub_1C440BAA8(v24, 1, 1, v25);
LABEL_7:
    sub_1C4423A0C(v24, &unk_1EC0BABB0, &qword_1C4F16ED0);
    sub_1C49C455C();
    swift_allocError();
    *v40 = 0;
    return swift_willThrow();
  }

  v35 = v34;
  v70 = v28;
  v36 = sub_1C4486838(0xD00000000000001ELL, 0x80000001C4FABE30, 1852797802, 0xE400000000000000, v34);

  if (v36)
  {
    sub_1C4EF98C8();

    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  sub_1C440BAA8(v22, v37, 1, v25);
  sub_1C49C45B0(v22, v24);
  v38 = sub_1C44157D4(v24, 1, v25);
  v39 = v70;
  if (v38 == 1)
  {
    goto LABEL_7;
  }

  (*(v70 + 32))(v33, v24, v25);
  v42 = sub_1C4EF9348();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  sub_1C4EF9338();
  (*(v12 + 104))(v17, *MEMORY[0x1E6967F30], v9);
  sub_1C4EF9318();
  v45 = v68;
  v46 = sub_1C4EF9938();
  if (v45)
  {
    v48 = v69;
    sub_1C4F00198();
    v52 = v45;
    v53 = sub_1C4F00968();
    v54 = sub_1C4F01CD8();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412290;
      v57 = v45;
      v58 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 4) = v58;
      *v56 = v58;
      _os_log_impl(&dword_1C43F8000, v53, v54, "Error decoding demo data: %@", v55, 0xCu);
      sub_1C4423A0C(v56, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v56, -1, -1);
      v59 = v55;
      v39 = v70;
      MEMORY[0x1C6942830](v59, -1, -1);
    }

    (*(v66 + 8))(v48, v67);
    sub_1C49C455C();
    swift_allocError();
    *v60 = 1;
    swift_willThrow();

    return (*(v39 + 8))(v33, v25);
  }

  else
  {
    v49 = v46;
    v50 = v47;
    sub_1C456902C(&qword_1EC0C0C78, &qword_1C4F40488);
    sub_1C49C4620();
    v51 = sub_1C4EF9328();
    v69 = &v63;
    MEMORY[0x1EEE9AC00](v51);
    *(&v63 - 2) = v64;
    sub_1C49C003C();
    v62 = v61;
    sub_1C4434000(v49, v50);

    result = (*(v39 + 8))(v33, v25);
    *v65 = v62;
  }

  return result;
}

uint64_t sub_1C49C42F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  sub_1C49C46EC(&qword_1EDDFCD70, 255, MEMORY[0x1E6969530]);
  if (sub_1C4F01078() & 1) != 0 && (v5 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36), (sub_1C4F01088()))
  {
    v6 = *(*(v4 - 8) + 16);
    v6(a2, a1, v4);
    v7 = sub_1C456902C(&qword_1EC0C0C18, &unk_1C4F40490);
    v8 = *(v7 + 44);
    v9 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    v6(a2 + *(v9 + 28), a1 + v8, v4);
    sub_1C4983ED0(a1 + *(v7 + 48), a2 + *(v9 + 32));
    v10 = a2;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
    v10 = a2;
    v11 = 1;
  }

  return sub_1C440BAA8(v10, v11, 1, v12);
}

uint64_t sub_1C49C4504(uint64_t a1, uint64_t a2)
{
  result = sub_1C49C46EC(&qword_1EC0C0C68, a2, type metadata accessor for LifeEventActivityProviderDemo);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C49C455C()
{
  result = qword_1EC0C0C70;
  if (!qword_1EC0C0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0C70);
  }

  return result;
}

uint64_t sub_1C49C45B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C49C4620()
{
  result = qword_1EC0C0C80;
  if (!qword_1EC0C0C80)
  {
    sub_1C4572308(&qword_1EC0C0C78, &qword_1C4F40488);
    sub_1C4401CBC(&qword_1EC0C0C88, &qword_1EC0C0C18, &unk_1C4F40490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0C80);
  }

  return result;
}

uint64_t sub_1C49C46EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for LifeEventActivityProviderDemo.LifeEventActivityProviderDemoDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49C4814()
{
  result = qword_1EC0C0CA0;
  if (!qword_1EC0C0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0CA0);
  }

  return result;
}

uint64_t sub_1C49C4868(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32) & 0x3F;
  sub_1C43FF350();
  v7 = sub_1C443F6AC();
  if (v6 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_1C4433D80(v7, v8, v9, v10, v11, v12, v13, v14, v48);
    MEMORY[0x1EEE9AC00](v15);
    sub_1C4410F48(v16, v17, v18, v19, v20, v21, v22, v23, v49);
    v24 = 0;
    v25 = *(a2 + 56);
    v26 = *(a2 + 32);
    sub_1C43FD030();
    v29 = (v28 & v27);
    sub_1C444112C();
    sub_1C43FBDF0();
    while (v29)
    {
      sub_1C43FE644();
LABEL_10:
      sub_1C441CBC0(v30);
      switch(v34)
      {
        case 1:

          goto LABEL_16;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
        case 6:
          sub_1C4405CE0();
          break;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        default:
          break;
      }

      sub_1C440E528();
      sub_1C44602F8();
      sub_1C441AFAC();

      if (v3)
      {
LABEL_16:
        sub_1C44325BC();
        if (v35)
        {
          __break(1u);
        }
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v4)
      {
        sub_1C4434640();
        sub_1C4416264();
        goto LABEL_21;
      }

      ++v31;
      if (*(a2 + 56 + 8 * v24))
      {
        sub_1C43FCF1C();
        v29 = (v33 & v32);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  sub_1C4414C5C();

  v45 = sub_1C442E134();
  if (v2)
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v47 = sub_1C4408D20();
    result = MEMORY[0x1C6942830](v47);
    __break(1u);
  }

  else
  {
    v29 = v45;
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v46 = sub_1C4408D20();
    MEMORY[0x1C6942830](v46);
LABEL_21:
    v36 = v29[2];

    if (v36 <= 1 && (sub_1C4D51718(&unk_1F43D2C20), sub_1C4435998(v37), v39 = v38, , (v39 & 1) != 0))
    {
      sub_1C4924BF4(a2);
      v41 = sub_1C4597BBC(v40);
      if (qword_1EC0B6DC0 != -1)
      {
        swift_once();
      }

      v42 = *(sub_1C4A7C718(qword_1EC0C0CA8, v41) + 16);

      result = v42 == 0;
    }

    else
    {
      result = 0;
    }

    v44 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1C49C4B70(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32) & 0x3F;
  sub_1C43FF350();
  v7 = sub_1C443F6AC();
  if (v6 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_1C4433D80(v7, v8, v9, v10, v11, v12, v13, v14, v48);
    MEMORY[0x1EEE9AC00](v15);
    sub_1C4410F48(v16, v17, v18, v19, v20, v21, v22, v23, v49);
    v24 = 0;
    v25 = *(a2 + 56);
    v26 = *(a2 + 32);
    sub_1C43FD030();
    v29 = (v28 & v27);
    sub_1C444112C();
    sub_1C43FBDF0();
    while (v29)
    {
      sub_1C43FE644();
LABEL_10:
      sub_1C441CBC0(v30);
      switch(v34)
      {
        case 1:

          goto LABEL_16;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
        case 6:
          sub_1C4405CE0();
          break;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        default:
          break;
      }

      sub_1C440E528();
      sub_1C44602F8();
      sub_1C441AFAC();

      if (v3)
      {
LABEL_16:
        sub_1C44325BC();
        if (v35)
        {
          __break(1u);
        }
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v4)
      {
        sub_1C4434640();
        sub_1C4416264();
        goto LABEL_21;
      }

      ++v31;
      if (*(a2 + 56 + 8 * v24))
      {
        sub_1C43FCF1C();
        v29 = (v33 & v32);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  sub_1C4414C5C();

  v45 = sub_1C442E134();
  if (v2)
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v47 = sub_1C4408D20();
    result = MEMORY[0x1C6942830](v47);
    __break(1u);
  }

  else
  {
    v29 = v45;
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v46 = sub_1C4408D20();
    MEMORY[0x1C6942830](v46);
LABEL_21:
    v36 = v29[2];

    if (v36 <= 1 && (sub_1C4D51718(&unk_1F43D2C70), sub_1C4435998(v37), v39 = v38, , (v39 & 1) != 0))
    {
      sub_1C4924BF4(a2);
      v41 = sub_1C4597BBC(v40);
      if (qword_1EC0B6DC8 != -1)
      {
        swift_once();
      }

      v42 = *(sub_1C4A7C718(qword_1EC0C0CB0, v41) + 16);

      result = v42 == 0;
    }

    else
    {
      result = 0;
    }

    v44 = *MEMORY[0x1E69E9840];
  }

  return result;
}

uint64_t sub_1C49C4E78(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v50 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 32) & 0x3F;
  sub_1C43FF350();
  v7 = sub_1C443F6AC();
  if (v6 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    sub_1C4433D80(v7, v8, v9, v10, v11, v12, v13, v14, v48);
    MEMORY[0x1EEE9AC00](v15);
    sub_1C4410F48(v16, v17, v18, v19, v20, v21, v22, v23, v49);
    v24 = 0;
    v25 = *(a2 + 56);
    v26 = *(a2 + 32);
    sub_1C43FD030();
    v29 = (v28 & v27);
    sub_1C444112C();
    sub_1C43FBDF0();
    while (v29)
    {
      sub_1C43FE644();
LABEL_10:
      sub_1C441CBC0(v30);
      switch(v34)
      {
        case 1:

          goto LABEL_16;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
        case 6:
          sub_1C4405CE0();
          break;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        default:
          break;
      }

      sub_1C440E528();
      sub_1C44602F8();
      sub_1C441AFAC();

      if (v3)
      {
LABEL_16:
        sub_1C44325BC();
        if (v35)
        {
          __break(1u);
        }
      }
    }

    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v24 >= v4)
      {
        sub_1C4434640();
        sub_1C4416264();
        goto LABEL_21;
      }

      ++v31;
      if (*(a2 + 56 + 8 * v24))
      {
        sub_1C43FCF1C();
        v29 = (v33 & v32);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_29:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  swift_slowAlloc();
  sub_1C4414C5C();

  v45 = sub_1C442E134();
  if (v2)
  {

    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v47 = sub_1C4408D20();
    result = MEMORY[0x1C6942830](v47);
    __break(1u);
  }

  else
  {
    v29 = v45;
    sub_1C44174AC();
    swift_bridgeObjectRelease_n();
    v46 = sub_1C4408D20();
    MEMORY[0x1C6942830](v46);
LABEL_21:
    v36 = v29[2];

    if (v36 <= 1 && (sub_1C4D51718(&unk_1F43D2CC0), sub_1C4435998(v37), v39 = v38, , (v39 & 1) != 0))
    {
      sub_1C4924BF4(a2);
      v41 = sub_1C4597BBC(v40);
      if (qword_1EC0B6DD0 != -1)
      {
        swift_once();
      }

      v42 = *(sub_1C4A7C718(qword_1EC0C0CB8, v41) + 16);

      result = v42 == 0;
    }

    else
    {
      result = 0;
    }

    v44 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void sub_1C49C5180()
{
  sub_1C43FE96C();
  sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
  sub_1C49C9248();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v2 = sub_1C43FBCE0(OpaqueTypeMetadata2);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4EFF748();
  if (!v0)
  {
    sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
    sub_1C4F02B88();
    swift_getOpaqueTypeConformance2();
    sub_1C4F021B8();
  }

  sub_1C43FBC80();
}

uint64_t sub_1C49C531C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v141 = a1;
  v142 = a2;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v11 = sub_1C4EFF1F8();
  v12 = sub_1C43FCDF8(v11);
  v139 = v13;
  v140 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v18 = v17 - v16;
  v135 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v19 = sub_1C43FBCE0(v135);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v136 = v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD230();
  v133 = v24;
  v143 = sub_1C4EF9CD8();
  v25 = sub_1C43FCDF8(v143);
  v134 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v129 = v29;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  v128 = v31;
  v132 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v32 = sub_1C43FBCE0(v132);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v118 - v35;
  v37 = *(a5 + 32);
  v38 = v37[1];
  v137 = *(a5 + 16);
  v131 = v37;
  if ((v38(a3, a4) & 1) == 0)
  {
    sub_1C463DFA8();
    swift_allocError();
    *v66 = a3;
    *(v66 + 8) = a4;
    *(v66 + 16) = 0;
    swift_willThrow();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_36:
    v114 = *MEMORY[0x1E69E9840];
    return result;
  }

  v126 = v6;
  v119 = a3;
  v118 = a6;
  v39 = *(a4 + 32) & 0x3F;
  sub_1C43FF350();
  v41 = v40 >> 6;
  v42 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v144 = a4;
  v130 = v36;
  v125 = v18;
  v124 = a5;
  if (v39 > 0xD)
  {
LABEL_38:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_41;
    }
  }

  v123 = &v118;
  MEMORY[0x1EEE9AC00](v42);
  v43 = sub_1C441D2F0();
  v122 = v41;
  v45 = v44;
  sub_1C4501018(v43, v41, v44);
  v127 = 0;
  v46 = 0;
  v48 = a4 + 56;
  v47 = *(a4 + 56);
  v49 = *(a4 + 32);
  sub_1C43FD030();
  v52 = v51 & v50;
  v54 = (v53 + 63) >> 6;
  v121 = 0x80000001C4F86760;
  sub_1C43FBDF0();
  v120 = v55;
LABEL_4:
  if (v52)
  {
    sub_1C4401DF0();
    goto LABEL_11;
  }

  v57 = v46;
  while (1)
  {
    v46 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v46 >= v54)
    {
      break;
    }

    ++v57;
    if (*(v48 + 8 * v46))
    {
      sub_1C43FCF1C();
      v52 = v59 & v58;
LABEL_11:
      v60 = v56 | (v46 << 6);
      switch(*(*(a4 + 48) + 24 * v60 + 16))
      {
        case 1:

          a4 = v144;
          goto LABEL_19;
        case 2:
          sub_1C4408D0C();
          break;
        case 3:
          v61 = &v147;
          goto LABEL_16;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        case 6:
          v61 = &v148;
LABEL_16:
          v62 = *(v61 - 32);
          sub_1C4405CE0();
          break;
        default:
          break;
      }

      sub_1C440E528();
      v41 = sub_1C4F02938();

      a4 = v144;
      if (v41)
      {
LABEL_19:
        sub_1C4404D48();
        *(v45 + v64) |= v63 << v60;
        if (__OFADD__(v127++, 1))
        {
          goto LABEL_44;
        }
      }

      goto LABEL_4;
    }
  }

  sub_1C4A8DF38(v45, v122, v127, a4);
  v69 = v68;
  while (1)
  {
    v71 = v141;
    v70 = v142;
    sub_1C4868140(v69);
    v73 = v72;
    a4 = v74;
    v76 = v75;

    if (v76 == 1)
    {
      v89 = v128;
      sub_1C4EF9BE8();
      v90 = v129;
      sub_1C4EF9BE8();
      sub_1C4575ED0();
      v91 = v143;
      if ((sub_1C4F01088() & 1) == 0)
      {
        __break(1u);
LABEL_44:
        __break(1u);
      }

      v92 = v133;
      v93 = v134;
      v94 = *(v134 + 32);
      v94(v133, v89, v91);
      v95 = v135;
      v94(v92 + *(v135 + 48), v90, v91);
      v96 = v136;
      sub_1C4460050(v92, v136, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v142 = *(v95 + 48);
      v88 = v130;
      v94(v130, v96, v91);
      v97 = *(v93 + 8);
      v97(v96 + v142, v91);
      sub_1C44CD9E0(v92, v96, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v94(v88 + *(v132 + 36), v96 + *(v95 + 48), v91);
      v97(v96, v91);
      goto LABEL_32;
    }

    if (v76 != 255)
    {
      sub_1C49C9234(v73, a4, v76);
    }

    sub_1C4575ED0();
    v77 = v143;
    if (sub_1C4F01088())
    {
      v79 = v133;
      v78 = v134;
      v80 = *(v134 + 16);
      v80(v133, v71, v77);
      v81 = v135;
      v80(v79 + *(v135 + 48), v70, v77);
      v82 = v136;
      sub_1C4460050(v79, v136, &qword_1EC0B84B0, qword_1C4F0CDE0);
      v142 = *(v81 + 48);
      v83 = *(v78 + 32);
      v84 = v130;
      v85 = sub_1C43FD024();
      v83(v85);
      v86 = *(v78 + 8);
      v86(v82 + v142, v77);
      v87 = v79;
      v88 = v84;
      sub_1C44CD9E0(v87, v82, &qword_1EC0B84B0, qword_1C4F0CDE0);
      (v83)(v84 + *(v132 + 36), v82 + *(v81 + 48), v77);
      v86(v82, v77);
LABEL_32:
      v98 = v138[3];
      v99 = v138[4];
      sub_1C4409678(v138, v98);
      v101 = v139;
      v100 = v140;
      v102 = v125;
      (*(v139 + 104))(v125, *MEMORY[0x1E69A9880], v140);
      v103 = *(v124 + 24);
      v104 = v137;
      v105 = v126;
      v106 = (*(v99 + 8))(v137, v102, v88, v137, v103, v98, v99);
      if (v105)
      {
        (*(v101 + 8))(v102, v100);
        result = sub_1C4420C3C(v88, &qword_1EC0B84B8, &unk_1C4F0D4F0);
      }

      else
      {
        v107 = v106;
        (*(v101 + 8))(v102, v100);
        v146[1] = v107;
        sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
        sub_1C4F02B88();
        v108 = sub_1C4F021A8();
        WitnessTable = swift_getWitnessTable();
        MEMORY[0x1C6940210](v146, v108, WitnessTable);

        v143 = &v118;
        v145 = v146[0];
        MEMORY[0x1EEE9AC00](v110);
        *(&v118 - 6) = v104;
        *(&v118 - 5) = v103;
        v111 = v119;
        *(&v118 - 4) = v131;
        *(&v118 - 3) = v111;
        *(&v118 - 2) = v144;
        sub_1C4F02268();
        type metadata accessor for InteractionEvent(0);
        swift_getWitnessTable();
        v112 = sub_1C4F014E8();

        sub_1C4420C3C(v130, &qword_1EC0B84B8, &unk_1C4F0D4F0);
        result = swift_allocObject();
        *(result + 16) = v112;
        v113 = v118;
        *v118 = sub_1C49C932C;
        v113[1] = result;
      }

      goto LABEL_36;
    }

    __break(1u);
LABEL_41:
    v115 = swift_slowAlloc();

    sub_1C446BF80(v115, v41, a4, sub_1C49C9334);
    sub_1C441DD84();
    if (v39)
    {
      break;
    }

    v69 = v116;
    swift_bridgeObjectRelease_n();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
  }

  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  result = MEMORY[0x1C6942830]();
  __break(1u);
  return result;
}

uint64_t sub_1C49C5E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v30 = a2;
  v31 = a3;
  v29 = a6;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v28 - v12;
  sub_1C4572308(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v14 = sub_1C4F02B88();
  v15 = *(*(v14 - 1) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - v17;
  v19 = *(a4 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v18, a1, v14);
  result = sub_1C49C608C(v14, &v32, v22);
  if (!v6)
  {
    v25 = v29;
    v26 = sub_1C4EF9CD8();
    sub_1C440BAA8(v13, 1, 1, v26);
    v27 = (*(a5 + 16))(v30, v31, v13, a4, a5);
    sub_1C4420C3C(v13, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = (*(v19 + 8))(v22, a4);
    *v25 = v27;
  }

  return result;
}

uint64_t sub_1C49C608C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  v7 = a1[4];
  return swift_willThrowTypedImpl();
}

void sub_1C49C619C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v276 = v21;
  v286 = v20;
  v25 = v24;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v270 = sub_1C4EFFE78();
  v26 = sub_1C43FCDF8(v270);
  v269 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  sub_1C43FCE30(v31);
  v282 = sub_1C4EFF0C8();
  v32 = sub_1C43FCDF8(v282);
  v267 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v283 = (v37 - v36);
  v38 = sub_1C456902C(&qword_1EC0C0CD0, &qword_1C4F40600);
  v39 = sub_1C43FBCE0(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  sub_1C43FCE30(v44);
  v45 = sub_1C4EF9CD8();
  v46 = sub_1C43FCDF8(v45);
  v275 = v47;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x1EEE9AC00](v46);
  v52 = &v261 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v261 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v261 - v56;
  v58 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v59 = sub_1C43FBD18(v58);
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v59);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C43FD230();
  sub_1C43FCE30(v65);
  v66 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v67 = sub_1C43FBD18(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  sub_1C43FBFDC();
  v278 = v70;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FD230();
  v281 = v75;
  v76 = *(v25 + 32) & 0x3F;
  sub_1C43FF350();
  v78 = (v77 >> 6);
  sub_1C440CCDC();
  v79 = swift_bridgeObjectRetain_n();
  v87 = v52;
  v88 = v45;
  v89 = v38;
  v90 = "communicationDirection";
  v91 = "communicationMechanism";
  v92 = "lookaheadDuration";
  v285 = v88;
  v274 = v57;
  v263 = v87;
  v262 = v55;
  v265 = v89;
  if (v76 > 0xD)
  {
    goto LABEL_90;
  }

LABEL_2:
  sub_1C4441510(v79, v80, v81, v82, v83, v84, v85, v86, v261);
  MEMORY[0x1EEE9AC00](v93);
  v94 = sub_1C441D2F0();
  v284 = v78;
  v279 = v95;
  sub_1C4501018(v94, v78, v95);
  v280 = 0;
  v96 = 0;
  v98 = v25 + 56;
  v97 = *(v25 + 56);
  v99 = *(v25 + 32);
  sub_1C43FD030();
  v102 = v101 & v100;
  v104 = (v103 + 63) >> 6;
  sub_1C442BD00((v90 - 32));
  sub_1C4425294(v91 - 32);
  v273 = (v92 - 32) | 0x8000000000000000;
  v90 = v278;
  do
  {
LABEL_3:
    if (v102)
    {
      v105 = __clz(__rbit64(v102));
      v102 &= v102 - 1;
      goto LABEL_10;
    }

    v106 = v96;
    do
    {
      v96 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_90:
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          if (swift_stdlib_isStackAllocationSafe())
          {

            goto LABEL_2;
          }

          v255 = swift_slowAlloc();

          v257 = sub_1C44691B8(v255, v78, v256, sub_1C49C9350);
          v276 = v21;
          if (v21)
          {

            sub_1C440CCDC();
            swift_bridgeObjectRelease_n();
            while (1)
            {
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              __break(1u);
LABEL_100:

              sub_1C44174AC();
              swift_bridgeObjectRelease_n();
            }
          }

          v115 = v257;
          sub_1C440CCDC();
          swift_bridgeObjectRelease_n();
          sub_1C43FBCFC();
          MEMORY[0x1C6942830]();
          v117 = v282;
          v116 = v283;
          v90 = v278;
LABEL_23:
          v118 = *(v115 + 2);
          v119 = v285;
          if (v118 == 1)
          {
            v120 = *(v115 + 5);
            sub_1C4F02AF8();
            MEMORY[0x1C69417F0](2);
            sub_1C4F01298();
            v121 = sub_1C4F02B68();
            sub_1C441C388(v121, *(v115 + 32));
            if ((v122 & 1) == 0)
            {
LABEL_29:

              sub_1C441BB28(&v290);
              sub_1C4EFFE68();
              sub_1C4EFFC68();
              sub_1C440582C(v115 + 56);
              if (!v170)
              {
                sub_1C4EFFC48();
                sub_1C4402A78();
                v138 = *(v137 + 8);
                v139 = sub_1C43FD024();
                v140(v139);
                v141 = v281;
                v117 = v282;
                v116 = v283;
                v119 = v285;
                goto LABEL_46;
              }

              sub_1C4420C3C(v115 + 56, &qword_1EC0C0CC8, &unk_1C4F405F0);
              sub_1C43FCF64();
              v119 = v285;
              sub_1C440BAA8(v126, v127, v128, v285);
              v141 = v281;
              v117 = v282;
              goto LABEL_39;
            }

            while (1)
            {
              v123 = *(v115 + 6) + 24 * v119;
              if (*(v123 + 16) == 2)
              {
                if ((*v123 & 1) == 0)
                {

                  goto LABEL_42;
                }

                sub_1C4402404();
                v124 = sub_1C4F02938();

                if (v124)
                {
                  break;
                }
              }

              sub_1C447F1A0();
              if ((v125 & 1) == 0)
              {
                goto LABEL_29;
              }
            }

LABEL_42:
            v147 = v264;
            sub_1C4EFFE68();
            v148 = sub_1C4EFFC68();
            sub_1C440582C(v147);
            v141 = v281;
            v116 = v283;
            v119 = v285;
            if (v170)
            {
              sub_1C4420C3C(v147, &qword_1EC0C0CC8, &unk_1C4F405F0);
              sub_1C43FCF64();
              sub_1C440BAA8(v149, v150, v151, v119);
            }

            else
            {
              sub_1C4EFFC58();
              sub_1C4402A78();
              (*(v152 + 8))(v147, v148);
            }

            v117 = v282;
          }

          else
          {

            if (v118)
            {
              sub_1C441615C(&v289);
              sub_1C4EFFE68();
              sub_1C4EFFC68();
              v129 = sub_1C4414C5C();
              v130 = sub_1C44157D4(v129, 1, v116);
              v141 = v281;
              if (v130 == 1)
              {
                sub_1C4420C3C(v118, &qword_1EC0C0CC8, &unk_1C4F405F0);
                sub_1C43FCF64();
                sub_1C440BAA8(v131, v132, v133, v119);
              }

              else
              {
                sub_1C4EFFC58();
                sub_1C440A6B8(v116);
                (*(v142 + 8))(v118, v116);
              }

LABEL_39:
              v116 = v283;
              goto LABEL_46;
            }

            sub_1C441615C(&v288);
            sub_1C4EFFE68();
            sub_1C4EFFC68();
            sub_1C440582C(0);
            v141 = v281;
            if (v170)
            {
              sub_1C4420C3C(0, &qword_1EC0C0CC8, &unk_1C4F405F0);
              sub_1C43FCF64();
              sub_1C440BAA8(v134, v135, v136, v119);
            }

            else
            {
              sub_1C4EFFC58();
              sub_1C4402A78();
              v144 = *(v143 + 8);
              v145 = sub_1C4402120();
              v146(v145);
            }
          }

LABEL_46:
          sub_1C441D304();
          sub_1C44CD9E0(v153, v154, v155, v156);
          sub_1C441D304();
          sub_1C4460050(v157, v158, v159, v160);
          sub_1C4414160(v90);
          if (v170)
          {

            sub_1C440BADC();
            sub_1C4420C3C(v161, v162, v163);
            sub_1C440BADC();
            goto LABEL_58;
          }

          (*(v275 + 32))(v274, v90, v119);
          v167 = v271;
          v168 = v286;
          sub_1C4EFFE58();
          v169 = sub_1C456902C(&qword_1EC0C0CD8, &qword_1C4F40608);
          sub_1C4414160(v167);
          if (v170)
          {
            goto LABEL_53;
          }

          sub_1C4EFF678();
          sub_1C440A6B8(v169);
          isa = v171[1].isa;
          v283 = v171 + 1;
          v284 = isa;
          (isa)(v167, v169);
          v280 = sub_1C4EFF048();
          v173 = v117;
          v175 = v174;
          v176 = *(v267 + 8);
          v176(v116, v173);
          v167 = v266;
          sub_1C4EFFE48();
          sub_1C4414160(v167);
          if (v170)
          {

            v141 = v281;
            v168 = v286;
LABEL_53:

            sub_1C4420C3C(v167, &qword_1EC0C0CD0, &qword_1C4F40600);
            if (qword_1EDDFA668 != -1)
            {
              swift_once();
            }

            v177 = sub_1C4F00978();
            sub_1C442B738(v177, qword_1EDE2DDE0);
            v178 = v269;
            v179 = *(v269 + 16);
            v180 = v268;
            v181 = v168;
            v182 = v168;
            v183 = v270;
            v179(v268, v181, v270);
            v184 = v272;
            v179(v272, v182, v183);
            v185 = sub_1C4F00968();
            v186 = sub_1C4F01CE8();
            if (os_log_type_enabled(v185, v186))
            {
              v187 = swift_slowAlloc();
              v188 = swift_slowAlloc();
              LODWORD(v284) = v186;
              v283 = v185;
              v189 = v183;
              v286 = v188;
              v287[0] = v188;
              *v187 = 136315394;
              sub_1C4EFFE58();
              v190 = sub_1C4F01198();
              v192 = v191;
              v193 = *(v178 + 8);
              v194 = sub_1C4402120();
              v193(v194);
              v195 = sub_1C441D828(v190, v192, v287);

              *(v187 + 4) = v195;
              *(v187 + 12) = 2080;
              v196 = v272;
              sub_1C4EFFE48();
              v197 = sub_1C4F01198();
              v199 = v198;
              (v193)(v196, v189);
              v200 = sub_1C441D828(v197, v199, v287);

              *(v187 + 14) = v200;
              v201 = v283;
              _os_log_impl(&dword_1C43F8000, v283, v284, "GraphCommuteActivityEvent: Unable to resolve start or end location of commute - %s or %s", v187, 0x16u);
              swift_arrayDestroy();
              sub_1C43FBCFC();
              MEMORY[0x1C6942830]();
              v202 = sub_1C4408D20();
              MEMORY[0x1C6942830](v202);

              v203 = sub_1C443F264();
              v204(v203);
              v165 = &unk_1EC0B84E0;
              v166 = qword_1C4F0D2D0;
              v164 = v281;
            }

            else
            {

              v205 = *(v178 + 8);
              v205(v184, v183);
              v205(v180, v183);
              v206 = sub_1C443F264();
              v207(v206);
              v165 = &unk_1EC0B84E0;
              v166 = qword_1C4F0D2D0;
              v164 = v141;
            }

LABEL_58:
            sub_1C4420C3C(v164, v165, v166);
            goto LABEL_59;
          }

          v279 = v175;
          sub_1C4EFF678();
          (v284)(v167, v169);
          v92 = v116;
          v277 = sub_1C4EFF048();
          v278 = v209;
          v176(v116, v282);
          v210 = *(v25 + 32);
          sub_1C441BB14();
          v286 = v212 >> 6;
          v91 = 8 * (v212 >> 6);
          if (v213 > 0xD)
          {
            goto LABEL_94;
          }

LABEL_61:
          v282 = &v261;
          MEMORY[0x1EEE9AC00](v211);
          v214 = sub_1C441D2F0();
          v283 = v215;
          sub_1C4501018(v214, v286, v215);
          v284 = 0;
          v216 = 0;
          v218 = v25 + 56;
          v217 = *(v25 + 56);
          v219 = *(v25 + 32);
          sub_1C43FD030();
          v90 = (v221 & v220);
          v223 = (v222 + 63) >> 6;
          sub_1C442BD00("lookaheadDuration");
          sub_1C4425294("entityIdentifier");
          v78 = "pearance";
          while (v90)
          {
            sub_1C4401DF0();
LABEL_69:
            v92 = (v224 | (v216 << 6));
            v91 = v25;
            sub_1C443419C();
            switch(v228)
            {
              case 1:

                goto LABEL_77;
              case 2:
                sub_1C4408D0C();
                break;
              case 3:
                v229 = &a15;
                goto LABEL_74;
              case 4:
                sub_1C440AC5C();
                break;
              case 5:
                sub_1C44070E4();
                break;
              case 6:
                v229 = &a16;
LABEL_74:
                v230 = *(v229 - 32);
                sub_1C4405CE0();
                break;
              default:
                break;
            }

            sub_1C440E528();
            v231 = sub_1C4F02938();

            v25 = v91;
            if (v231)
            {
LABEL_77:
              sub_1C4404D48();
              sub_1C43FC660(v232);
              v113 = __OFADD__(v284++, 1);
              if (v113)
              {
                __break(1u);
              }
            }
          }

          v225 = v216;
          while (1)
          {
            v216 = v225 + 1;
            if (__OFADD__(v225, 1))
            {
              break;
            }

            if (v216 >= v223)
            {
              sub_1C4A8DF38(v283, v286, v284, v25);
              v234 = v233;
              goto LABEL_82;
            }

            ++v225;
            if (*(v218 + 8 * v216))
            {
              sub_1C43FCF1C();
              v90 = (v227 & v226);
              goto LABEL_69;
            }
          }
        }
      }

      if (v96 >= v104)
      {
        sub_1C4A8DF38(v279, v284, v280, v25);
        v115 = v114;
        v117 = v282;
        v116 = v283;
        goto LABEL_23;
      }

      ++v106;
    }

    while (!*(v98 + 8 * v96));
    sub_1C43FCF1C();
    v102 = v108 & v107;
LABEL_10:
    v92 = (v105 | (v96 << 6));
    v78 = v25;
    sub_1C443419C();
    switch(v109)
    {
      case 1:
        sub_1C44044FC();
        break;
      case 2:
        sub_1C441846C();
        goto LABEL_18;
      case 3:
        v110 = &a15;
        goto LABEL_15;
      case 4:
        sub_1C440AC5C();
        break;
      case 5:
        sub_1C44070E4();
        break;
      case 6:
        v110 = &a16;
LABEL_15:
        v111 = *(v110 - 32);
        sub_1C4405CE0();
        break;
      default:
        break;
    }

    v91 = sub_1C4411DF4();

    v25 = v78;
  }

  while ((v91 & 1) == 0);
LABEL_18:
  sub_1C4404D48();
  sub_1C43FC660(v112);
  v113 = __OFADD__(v280++, 1);
  if (!v113)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_94:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_61;
  }

  v258 = swift_slowAlloc();

  v78 = v25;
  v260 = sub_1C44691B8(v258, v286, v259, sub_1C49C9334);
  v276 = v21;
  if (v21)
  {
    goto LABEL_100;
  }

  v234 = v260;
  sub_1C44174AC();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
LABEL_82:
  sub_1C4868140(v234);
  v236 = v235;
  v238 = v237;
  v240 = v239;

  v241 = v279;
  if (v240 == 1)
  {
    v243 = v262;
    v244 = v274;
    sub_1C4EF9BE8();
    v242 = v275;
    v78 = *(v275 + 16);
    v245 = v285;
  }

  else
  {
    if (v240 != 255)
    {
      sub_1C49C9234(v236, v238, v240);
    }

    v242 = v275;
    sub_1C444B1EC(v275);
    v243 = v262;
    v244 = v274;
    v245 = v285;
    (v78)(v262, v274, v285);
  }

  (v78)(v263, v243, v245);
  v287[0] = v280;
  v287[1] = v241;
  MEMORY[0x1C6940010](44, 0xE100000000000000);
  MEMORY[0x1C6940010](v277, v278);

  v246 = *(v242 + 8);
  v246(v243, v245);
  v246(v244, v245);
  sub_1C4420C3C(v281, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v247 = type metadata accessor for InteractionEvent(0);
  v248 = *(v247 + 48);
  v249 = *(v247 + 52);
  swift_allocObject();
  sub_1C441D304();
  sub_1C4950CDC(v250, v251, v252, v253, v254);
LABEL_59:
  v208 = *MEMORY[0x1E69E9840];
  sub_1C43FBC80();
}

void sub_1C49C7488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  sub_1C441DD84();
  v176 = v20;
  v25 = v24;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v26 = sub_1C4EF9CD8();
  v27 = sub_1C43FCDF8(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v170 - v34;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FD230();
  v177 = v36;
  v37 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v38 = sub_1C43FBD18(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  v179 = v41;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FD230();
  sub_1C43FCE30(v45);
  v46 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v47 = sub_1C43FBD18(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBFDC();
  v172 = v50;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FD230();
  v175 = v55;
  v56 = *(v25 + 32) & 0x3F;
  sub_1C43FF350();
  v58 = v57 >> 6;
  v59 = (8 * (v57 >> 6));
  sub_1C440C5E4();
  v60 = swift_bridgeObjectRetain_n();
  v61 = v29;
  v62 = "communicationDirection";
  v63 = "communicationMechanism";
  v64 = "lookaheadDuration";
  v181 = v35;
  v182 = v25;
  v174 = v26;
  v180 = v61;
  if (v56 > 0xD)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v171 = v170;
    MEMORY[0x1EEE9AC00](v60);
    v59 = v170 - ((v59 + 15) & 0x3FFFFFFFFFFFFFF0);
    v178 = v58;
    sub_1C4501018(0, v58, v59);
    v173 = 0;
    v58 = 0;
    v66 = v25 + 56;
    v65 = *(v25 + 56);
    v67 = *(v25 + 32);
    sub_1C43FD030();
    v26 = (v69 & v68);
    v71 = (v70 + 63) >> 6;
    sub_1C442BD00(v62 - 32);
    sub_1C4425294(v63 - 32);
    v170[7] = (v64 - 32) | 0x8000000000000000;
    v62 = 24;
    while (v26)
    {
      sub_1C442377C();
LABEL_10:
      v64 = v72 | (v58 << 6);
      switch(*(*(v25 + 48) + 24 * v64 + 16))
      {
        case 1:
          sub_1C44044FC();
          break;
        case 2:
          sub_1C441846C();
          v25 = v182;
          goto LABEL_18;
        case 3:
          v75 = &a15;
          goto LABEL_15;
        case 4:
          sub_1C440AC5C();
          break;
        case 5:
          sub_1C44070E4();
          break;
        case 6:
          v75 = &a16;
LABEL_15:
          v76 = *(v75 - 32);
          sub_1C4405CE0();
          break;
        default:
          break;
      }

      v77 = sub_1C4411DF4();

      v25 = v182;
      if (v77)
      {
LABEL_18:
        sub_1C4404D48();
        *&v59[v79] |= v78 << v64;
        v80 = __OFADD__(v173++, 1);
        if (v80)
        {
          __break(1u);
LABEL_89:
          __break(1u);
        }
      }
    }

    v61 = v58;
    v63 = v179;
    while (1)
    {
      v58 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      if (v58 >= v71)
      {
        sub_1C4A8DF38(v59, v178, v173, v25);
        v82 = v81;
        v83 = v174;
        v84 = v180;
        goto LABEL_23;
      }

      ++v61;
      if (*(v66 + 8 * v58))
      {
        sub_1C43FCF1C();
        v26 = (v74 & v73);
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    v83 = v26;
    v165 = v61;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v166 = swift_slowAlloc();

  sub_1C446BF80(v166, v58, v25, sub_1C49C9350);
  sub_1C441DD84();
  if (v21)
  {
    goto LABEL_90;
  }

  v82 = v167;
  sub_1C440C5E4();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  v84 = v165;
  v63 = v179;
LABEL_23:
  v85 = v181;
  v86 = *(v82 + 16);
  if (v86 == 1)
  {
    v87 = *(v82 + 40);
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](2);
    sub_1C4F01298();
    v88 = sub_1C4F02B68();
    v89 = -1 << *(v82 + 32);
    v90 = v88 & ~v89;
    if ((*(v82 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
    {
      v91 = ~v89;
      while (1)
      {
        v92 = *(v82 + 48) + 24 * v90;
        if (*(v92 + 16) == 2)
        {
          if ((*v92 & 1) == 0)
          {

            goto LABEL_46;
          }

          sub_1C4402404();
          v93 = sub_1C4F02938();

          if (v93)
          {
            break;
          }
        }

        v90 = (v90 + 1) & v91;
        if (((*(v82 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
        {
          goto LABEL_30;
        }
      }

LABEL_46:
      sub_1C441BB28(&v183);
      sub_1C4EFFF18();
      v112 = sub_1C4EFFC68();
      sub_1C4414160(v90);
      v84 = v180;
      v85 = v181;
      v59 = v177;
      v105 = v175;
      if (v95)
      {
        sub_1C4420C3C(v90, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v113, v114, v115, v83);
      }

      else
      {
        sub_1C4EFFC58();
        sub_1C440A6B8(v112);
        (*(v116 + 8))(v90, v112);
      }

      v25 = v182;
    }

    else
    {
LABEL_30:

      sub_1C441615C(&a11);
      sub_1C4EFFF18();
      v94 = sub_1C4EFFC68();
      sub_1C4414160(v82 + 56);
      if (v95)
      {
        sub_1C4420C3C(v82 + 56, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v96, v97, v98, v83);
      }

      else
      {
        sub_1C4EFFC48();
        sub_1C440A6B8(v94);
        (*(v104 + 8))(v82 + 56, v94);
      }

      v85 = v181;
      v25 = v182;
      v59 = v177;
      v105 = v175;
      v84 = v180;
    }

    goto LABEL_50;
  }

  if (v86)
  {
    sub_1C441BB28(&a10);
    sub_1C4EFFF18();
    sub_1C4EFFC68();
    sub_1C440582C(v63);
    v59 = v177;
    if (!v95)
    {
      v106 = &a9;
LABEL_42:
      v107 = *(v106 - 32);
      sub_1C4EFFC58();
      sub_1C4402A78();
      v109 = *(v108 + 8);
      v110 = sub_1C43FD024();
      v111(v110);
      goto LABEL_43;
    }

    sub_1C4420C3C(v63, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v99 = &a9;
  }

  else
  {
    sub_1C4EFFF18();
    sub_1C4EFFC68();
    sub_1C440582C(v63);
    v59 = v177;
    if (!v95)
    {
      v106 = &v184;
      goto LABEL_42;
    }

    sub_1C4420C3C(v63, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v99 = &v184;
  }

  v100 = *(v99 - 32);
  sub_1C43FCF64();
  sub_1C440BAA8(v101, v102, v103, v83);
LABEL_43:
  v105 = v175;
LABEL_50:
  sub_1C440BADC();
  sub_1C44CD9E0(v117, v118, v119, qword_1C4F0D2D0);
  v120 = v172;
  sub_1C4460050(v105, v172, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v120, 1, v83) == 1)
  {

    sub_1C440BADC();
    sub_1C4420C3C(v121, v122, v123);
    sub_1C440BADC();
    sub_1C4420C3C(v124, v125, v126);
LABEL_78:
    v164 = *MEMORY[0x1E69E9840];
    sub_1C43FBC80();
    return;
  }

  (*(v84 + 32))(v59, v120, v83);
  v127 = *(v25 + 32);
  sub_1C441BB14();
  v63 = v136 >> 6;
  v137 = 8 * (v136 >> 6);
  v58 = "communicationDirection";
  if (v138 <= 0xD)
  {
    goto LABEL_53;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_53:
    sub_1C4441510(v128, v129, v130, v131, v132, v133, v134, v135, v170[0]);
    MEMORY[0x1EEE9AC00](v139);
    v26 = v170 - ((v137 + 15) & 0x3FFFFFFFFFFFFFF0);
    v178 = v63;
    sub_1C4501018(0, v63, v26);
    v179 = 0;
    v140 = 0;
    v64 = v25 + 56;
    v141 = *(v25 + 56);
    v142 = *(v25 + 32);
    sub_1C43FD030();
    v63 = v144 & v143;
    v62 = (v145 + 63) >> 6;
    v172 = 0x80000001C4F86760;
    sub_1C43FBDF0();
    v171 = v146;
    while (2)
    {
      if (v63)
      {
        v147 = __clz(__rbit64(v63));
        v63 &= v63 - 1;
LABEL_61:
        v58 = v147 | (v140 << 6);
        switch(*(*(v25 + 48) + 24 * v58 + 16))
        {
          case 1:

            v25 = v182;
            goto LABEL_67;
          case 2:
            sub_1C4408D0C();
            goto LABEL_66;
          case 3:
          case 6:
            sub_1C4405CE0();
            goto LABEL_66;
          case 4:
            sub_1C440AC5C();
            goto LABEL_66;
          case 5:
            sub_1C44070E4();
            goto LABEL_66;
          default:
LABEL_66:
            sub_1C440E528();
            v150 = sub_1C4F02938();

            v25 = v182;
            if ((v150 & 1) == 0)
            {
              continue;
            }

LABEL_67:
            sub_1C4404D48();
            *&v26[v152] |= v151 << v58;
            v80 = __OFADD__(v179++, 1);
            if (!v80)
            {
              continue;
            }

            goto LABEL_89;
        }
      }

      break;
    }

    v61 = v140;
    v59 = v177;
    while (1)
    {
      v140 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_80;
      }

      if (v140 >= v62)
      {
        break;
      }

      ++v61;
      if (*(v64 + 8 * v140))
      {
        sub_1C43FCF1C();
        v63 = v149 & v148;
        goto LABEL_61;
      }
    }

    sub_1C4A8DF38(v26, v178, v179, v25);
    v154 = v153;
    v83 = v174;
    v84 = v180;
    v85 = v181;
    goto LABEL_72;
  }

  v26 = swift_slowAlloc();

  sub_1C446BF80(v26, v63, v25, sub_1C49C9334);
  sub_1C441DD84();
  if (!v21)
  {
    v154 = v169;
    sub_1C440C5E4();
    swift_bridgeObjectRelease_n();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
LABEL_72:
    sub_1C4868140(v154);
    sub_1C4414638();
    if (v25 == 1)
    {
      sub_1C4EF9BE8();
      v154 = *(v84 + 16);
    }

    else
    {
      if (v25 != 255)
      {
        sub_1C49C9234(v26, v63, v25);
      }

      sub_1C444B1EC(v84);
      v154(v85, v59, v83);
    }

    v154(v170[5], v85, v83);
    sub_1C4EFFF08();
    v155 = *(v84 + 8);
    v155(v85, v83);
    v155(v59, v83);
    sub_1C4420C3C(v175, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v156 = type metadata accessor for InteractionEvent(0);
    v157 = *(v156 + 48);
    v158 = *(v156 + 52);
    swift_allocObject();
    sub_1C441D304();
    sub_1C4950CDC(v159, v160, v161, v162, v163);
    goto LABEL_78;
  }

LABEL_90:

  sub_1C440C5E4();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  __break(1u);
}

void sub_1C49C81D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v201 = v21;
  v208 = v20;
  v25 = v24;
  sub_1C4423C44(*MEMORY[0x1E69E9840]);
  v196 = sub_1C4EFD548();
  v26 = sub_1C43FCDF8(v196);
  v195 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C43FCE30(v31 - v30);
  v32 = sub_1C456902C(&qword_1EC0C0CC0, &qword_1C4F405E8);
  v33 = sub_1C43FBD18(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FCE30(v194 - v36);
  v37 = sub_1C4EF9CD8();
  v38 = sub_1C43FCDF8(v37);
  v205 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  v43 = MEMORY[0x1EEE9AC00](v42);
  v45 = v194 - v44;
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD230();
  v204 = v46;
  v47 = sub_1C456902C(&qword_1EC0C0CC8, &unk_1C4F405F0);
  v48 = sub_1C43FBD18(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  sub_1C43FCE30(v54);
  v55 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v56 = sub_1C43FBD18(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBFDC();
  v202 = v59;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v194 - v64;
  v66 = *(v25 + 32) & 0x3F;
  sub_1C43FF350();
  v68 = v67 >> 6;
  v69 = 8 * (v67 >> 6);
  v70 = swift_bridgeObjectRetain_n();
  v78 = "communicationDirection";
  v79 = "lookaheadDuration";
  v80 = v66 > 0xD;
  v81 = v25;
  v206 = v45;
  v207 = v37;
  v210 = v65;
  if (v80)
  {
    goto LABEL_84;
  }

  while (1)
  {
    sub_1C4441510(v70, v71, v72, v73, v74, v75, v76, v77, v194[0]);
    MEMORY[0x1EEE9AC00](v82);
    v83 = (v69 + 15) & 0x3FFFFFFFFFFFFFF0;
    v69 = v79;
    v65 = v84;
    v85 = v194 - v83;
    v209 = v68;
    sub_1C4501018(0, v68, v194 - v83);
    v203 = 0;
    v37 = 0;
    v79 = v81;
    v78 = v81 + 56;
    v86 = *(v81 + 56);
    v87 = *(v81 + 32);
    sub_1C43FD030();
    v68 = v89 & v88;
    v81 = (v90 + 63) >> 6;
    v199 = (v91 - 32) | 0x8000000000000000;
    sub_1C442BD00(v65 - 32);
    sub_1C4425294(v69 - 32);
    while (v68)
    {
      sub_1C442377C();
LABEL_10:
      v69 = v92 | (v37 << 6);
      v45 = 0xE800000000000000;
      switch(*(*(v79 + 48) + 24 * v69 + 16))
      {
        case 1:
          sub_1C44044FC();
          v45 = v198;
          break;
        case 2:
          sub_1C441846C();
          goto LABEL_18;
        case 3:
          v96 = &a16;
          goto LABEL_15;
        case 4:
          v45 = 0xEF657079546E6F69;
          sub_1C440AC5C();
          break;
        case 5:
          v45 = 0xEB00000000656741;
          sub_1C44070E4();
          break;
        case 6:
          v96 = &a17;
LABEL_15:
          v45 = *(v96 - 32);
          sub_1C4405CE0();
          break;
        default:
          break;
      }

      v65 = sub_1C4411DF4();

      if (v65)
      {
LABEL_18:
        sub_1C4404D48();
        *&v85[v98] |= v97 << v69;
        v99 = __OFADD__(v203++, 1);
        if (v99)
        {
          __break(1u);
LABEL_92:
          __break(1u);
        }
      }
    }

    v93 = v37;
    while (1)
    {
      v37 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v37 >= v81)
      {
        v78 = v79;
        sub_1C4A8DF38(v85, v209, v203, v79);
        sub_1C442EC28();
        v100 = "communicationDirection";
        goto LABEL_23;
      }

      ++v93;
      if (*(v78 + 8 * v37))
      {
        sub_1C43FCF1C();
        v68 = v95 & v94;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v185 = swift_slowAlloc();

  v187 = sub_1C44691B8(v185, v68, v186, sub_1C49C9350);
  v201 = v21;
  if (v21)
  {

    sub_1C440CCDC();
    swift_bridgeObjectRelease_n();
    goto LABEL_95;
  }

  v69 = v187;
  sub_1C440CCDC();
  swift_bridgeObjectRelease_n();
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  v188 = v81;
  v81 = v45;
  v45 = v37;
  v100 = v78;
  v78 = v188;
LABEL_23:
  v101 = *(v69 + 16);
  if (v101 == 1)
  {
    v209 = v78;
    v102 = *(v69 + 40);
    sub_1C4F02AF8();
    MEMORY[0x1C69417F0](2);
    sub_1C4F01298();
    v103 = sub_1C4F02B68();
    sub_1C441C388(v103, *(v69 + 32));
    if (v104)
    {
      while (1)
      {
        v105 = *(v69 + 48) + 24 * v78;
        if (*(v105 + 16) == 2)
        {
          if ((*v105 & 1) == 0)
          {

            goto LABEL_79;
          }

          sub_1C4402404();
          v106 = sub_1C4F02938();

          if (v106)
          {
            break;
          }
        }

        sub_1C447F1A0();
        if ((v107 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

LABEL_79:
      sub_1C441615C(&v211);
      sub_1C4F00068();
      sub_1C4EFFC68();
      sub_1C440582C(v69);
      v78 = v209;
      v65 = v210;
      v79 = "lookaheadDuration";
      v100 = "communicationDirection";
      if (v110)
      {
        sub_1C4420C3C(v69, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v178, v179, v180, v45);
      }

      else
      {
        sub_1C441BB28(&a14);
        sub_1C4EFFC58();
        sub_1C4402A78();
        v182 = *(v181 + 8);
        v183 = sub_1C4402120();
        v184(v183);
      }
    }

    else
    {
LABEL_29:

      v108 = v197;
      sub_1C4F00068();
      v109 = sub_1C4EFFC68();
      sub_1C440582C(v108);
      if (v110)
      {
        sub_1C4420C3C(v108, &qword_1EC0C0CC8, &unk_1C4F405F0);
        sub_1C43FCF64();
        sub_1C440BAA8(v111, v112, v113, v45);
      }

      else
      {
        sub_1C441BB28(&a14);
        sub_1C4EFFC48();
        sub_1C4402A78();
        (*(v119 + 8))(v108, v109);
      }

      v78 = v209;
      v65 = v210;
      v79 = "lookaheadDuration";
      v100 = "communicationDirection";
    }

    goto LABEL_43;
  }

  if (v101)
  {
    sub_1C441BB28(&a11);
    sub_1C4F00068();
    sub_1C4EFFC68();
    sub_1C440582C(v79);
    if (!v110)
    {
      v120 = &a10;
LABEL_41:
      v121 = *(v120 - 32);
      sub_1C4EFFC58();
      sub_1C4402A78();
      v123 = *(v122 + 8);
      v124 = sub_1C43FD024();
      v125(v124);
      goto LABEL_42;
    }

    sub_1C4420C3C(v79, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v114 = &a10;
  }

  else
  {
    sub_1C441BB28(&v213);
    sub_1C4F00068();
    sub_1C4EFFC68();
    sub_1C440582C(v79);
    if (!v110)
    {
      v120 = &v212;
      goto LABEL_41;
    }

    sub_1C4420C3C(v79, &qword_1EC0C0CC8, &unk_1C4F405F0);
    v114 = &v212;
  }

  v115 = *(v114 - 32);
  sub_1C43FCF64();
  sub_1C440BAA8(v116, v117, v118, v45);
LABEL_42:
  v79 = "lookaheadDuration";
LABEL_43:
  sub_1C441D304();
  sub_1C44CD9E0(v126, v127, v128, v129);
  v130 = v202;
  sub_1C4460050(v65, v202, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v130, 1, v45) == 1)
  {

    sub_1C440BADC();
    sub_1C4420C3C(v131, v132, v133);
    sub_1C440BADC();
    sub_1C4420C3C(v134, v135, v136);
LABEL_76:
    v177 = *MEMORY[0x1E69E9840];
    sub_1C43FBC80();
    return;
  }

  (*(v205 + 32))(v204, v130, v45);
  v137 = *(v78 + 32);
  sub_1C441BB14();
  v147 = v146 >> 6;
  if (v148 <= 0xD)
  {
    goto LABEL_46;
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_46:
    sub_1C4441510(v138, v139, v140, v141, v142, v143, v144, v145, v194[0]);
    MEMORY[0x1EEE9AC00](v149);
    v150 = sub_1C441D2F0();
    v209 = v147;
    v202 = v151;
    sub_1C4501018(v150, v147, v151);
    v203 = 0;
    v81 = 0;
    v68 = v78;
    v45 = (v78 + 56);
    v152 = *(v78 + 56);
    v153 = *(v78 + 32);
    sub_1C43FD030();
    v69 = v155 & v154;
    v157 = v156 + 63;
    v158 = v100;
    v37 = v157 >> 6;
    v199 = (v158 - 32) | 0x8000000000000000;
    sub_1C442BD00("entityIdentifier");
    v78 = "pearance";
LABEL_47:
    if (v69)
    {
      v159 = __clz(__rbit64(v69));
      v69 &= v69 - 1;
      goto LABEL_54;
    }

    v160 = v81;
    while (1)
    {
      v81 = v160 + 1;
      if (__OFADD__(v160, 1))
      {
        goto LABEL_83;
      }

      if (v81 >= v37)
      {
        break;
      }

      ++v160;
      if (*&v45[8 * v81])
      {
        sub_1C43FCF1C();
        v69 = v162 & v161;
LABEL_54:
        v79 = v159 | (v81 << 6);
        switch(*(*(v68 + 48) + 24 * v79 + 16))
        {
          case 1:

            goto LABEL_62;
          case 2:
            sub_1C4408D0C();
            break;
          case 3:
            v163 = &a16;
            goto LABEL_59;
          case 4:
            sub_1C440AC5C();
            break;
          case 5:
            sub_1C44070E4();
            break;
          case 6:
            v163 = &a17;
LABEL_59:
            v164 = *(v163 - 32);
            sub_1C4405CE0();
            break;
          default:
            break;
        }

        sub_1C440E528();
        sub_1C4F02938();
        sub_1C441AFAC();

        if (v65)
        {
LABEL_62:
          sub_1C4404D48();
          sub_1C43FC660(v165);
          v99 = __OFADD__(v203++, 1);
          if (v99)
          {
            goto LABEL_92;
          }
        }

        goto LABEL_47;
      }
    }

    sub_1C4A8DF38(v202, v209, v203, v68);
    sub_1C442EC28();
    goto LABEL_67;
  }

  v68 = swift_slowAlloc();

  v189 = sub_1C4402120();
  v190 = v201;
  v193 = sub_1C4D2C7B8(v189, v191, v78, v192);
  v201 = v190;
  if (!v190)
  {
    v69 = v193;
    sub_1C440C5E4();
    swift_bridgeObjectRelease_n();
    sub_1C43FBCFC();
    MEMORY[0x1C6942830]();
LABEL_67:
    sub_1C4868140(v69);
    sub_1C4414638();
    if (v78 == 1)
    {
      sub_1C4EF9BE8();
      v69 = *(v205 + 16);
    }

    else
    {
      if (v78 != 255)
      {
        sub_1C49C9234(v68, v79, v78);
      }

      sub_1C444B1EC(v205);
      (v69)(v81);
    }

    (v69)(v200, v81, v45);
    sub_1C441615C(&a13);
    sub_1C4F00058();
    sub_1C4EFFEF8();
    sub_1C440582C(v69);
    if (v110)
    {
      sub_1C4420C3C(v69, &qword_1EC0C0CC0, &qword_1C4F405E8);
      v172 = 0xE700000000000000;
      v170 = 0x6E776F6E6B6E75;
    }

    else
    {
      sub_1C441BB28(&v214);
      sub_1C4EFFEE8();
      sub_1C4402A78();
      v167 = *(v166 + 8);
      v168 = sub_1C4402120();
      v169(v168);
      v170 = sub_1C4EFD3D8();
      v172 = v171;
      (*(v195 + 8))(v79, v196);
    }

    v173 = *(v205 + 8);
    v173(v81, v45);
    v173(v204, v45);
    sub_1C4420C3C(v65, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v174 = type metadata accessor for InteractionEvent(0);
    v175 = *(v174 + 48);
    v176 = *(v174 + 52);
    swift_allocObject();
    sub_1C4950CDC(v200, 6, v170, v172, MEMORY[0x1E69E7CC0]);
    goto LABEL_76;
  }

  sub_1C440C5E4();
  swift_bridgeObjectRelease_n();
LABEL_95:
  sub_1C43FBCFC();
  MEMORY[0x1C6942830]();
  __break(1u);
}

uint64_t sub_1C49C9010(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
      sub_1C44044FC();
      goto LABEL_6;
    case 2:
      goto LABEL_7;
    case 3:
    case 6:
      sub_1C4405CE0();
      goto LABEL_6;
    case 4:
      sub_1C440AC5C();
      sub_1C441DD90();
      goto LABEL_6;
    case 5:
      sub_1C44070E4();
      goto LABEL_6;
    default:
LABEL_6:
      v1 = sub_1C4F02938();
LABEL_7:

      return v1 & 1;
  }
}

uint64_t sub_1C49C9114()
{
  sub_1C44044FC();
  switch(*(v0 + 16))
  {
    case 1:
      v1 = 1;
      goto LABEL_8;
    case 2:
      sub_1C4408D0C();
      goto LABEL_7;
    case 3:
    case 6:
      sub_1C4405CE0();
      goto LABEL_7;
    case 4:
      sub_1C441DD90();
      sub_1C440AC5C();
      goto LABEL_7;
    case 5:
      sub_1C44070E4();
      goto LABEL_7;
    default:
LABEL_7:
      v1 = sub_1C4F02938();
LABEL_8:

      return v1 & 1;
  }
}

uint64_t sub_1C49C9234(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1C45E872C(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_1C49C9248()
{
  result = qword_1EDDEFF80;
  if (!qword_1EDDEFF80)
  {
    sub_1C4572308(&qword_1EC0C0CE0, &unk_1C4F40610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFF80);
  }

  return result;
}

uint64_t sub_1C49C92AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C49C936C(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B8B00, &qword_1C4F0DF30);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C4F0D130;
    v3 = type metadata accessor for StoredLocationVisitSignal();
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v2 + 56) = v3;
    *(v2 + 64) = sub_1C49C9C30(qword_1EDDF2F08, 255, type metadata accessor for StoredLocationVisitSignal);
    *(v2 + 32) = v4;
  }

  *(v1 + 16) = v2;
  return v1;
}

uint64_t sub_1C49C9438(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4[2] = a1;
  v4[3] = sub_1C49C2D4C(sub_1C49C9B68, v4, v2);
  v4[4] = sub_1C49C96C8;
  v4[5] = 0;

  sub_1C456902C(&qword_1EC0BDB40, &unk_1C4F30E20);
  sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  sub_1C4401CBC(qword_1EDDF3168, &qword_1EC0BDB40, &unk_1C4F30E20);
  return sub_1C4F02848();
}

void sub_1C49C954C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  sub_1C4AFD318();
  if (v2)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    AsyncSequence.toAnySessionAsyncSequence()(AssociatedTypeWitness, *(AssociatedConformanceWitness + 8), &v11);
    *a2 = v11;
    (*(v6 + 8))(v9, AssociatedTypeWitness);
  }
}

uint64_t sub_1C49C96C8(void *a1, void *a2)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = a1[3];
  v13 = a1[4];
  sub_1C4409678(a1, v12);
  (*(v13 + 16))(v12, v13);
  v14 = a2[3];
  v15 = a2[4];
  sub_1C4409678(a2, v14);
  (*(v15 + 16))(v14, v15);
  LOBYTE(a1) = sub_1C4EF9C18();
  v16 = *(v5 + 8);
  v16(v9, v4);
  v16(v11, v4);
  return a1 & 1;
}

uint64_t sub_1C49C9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C49C986C, 0, 0);
}

uint64_t sub_1C49C986C()
{
  sub_1C49C98CC(*(v0 + 24), *(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C49C98CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1C4409678(a1, v4);
  v6 = *(v5 + 32);
  v19[3] = swift_getAssociatedTypeWitness();
  sub_1C4422F90(v19);
  v6(v4, v5);
  sub_1C442B870(v19, v18);
  if (swift_dynamicCast())
  {
    sub_1C49C2CB8(__src);
    sub_1C442B870(v19, v18);
    swift_dynamicCast();
    v7 = a1[3];
    v8 = a1[4];
    sub_1C4409678(a1, v7);
    (*(v8 + 16))(v7, v8);
    v9 = a1[3];
    v10 = a1[4];
    sub_1C4409678(a1, v9);
    v11 = *(v10 + 24);
    v12 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
    v13 = a2 + *(v12 + 28);
    v11(v9, v10);
    memcpy((a2 + *(v12 + 32)), __src, 0x50uLL);
    v14 = a2;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v16 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
    v14 = a2;
    v15 = 1;
  }

  sub_1C440BAA8(v14, v15, 1, v16);
  return sub_1C440962C(v19);
}

uint64_t sub_1C49C9B10(uint64_t a1, uint64_t a2)
{
  result = sub_1C49C9C30(qword_1EDDF3408, a2, type metadata accessor for LifeEventLocationProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49C9B84(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C44A7DA0;

  return sub_1C49C9848(a1, a2, v2);
}

uint64_t sub_1C49C9C30(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1C49C9C78(uint64_t a1, _BYTE *a2)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = v2;
  v5 = type metadata accessor for Fuser();
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  *(v3 + 112) = sub_1C43FBE7C();
  v8 = type metadata accessor for Linker();
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  *(v3 + 120) = sub_1C43FBE7C();
  v11 = type metadata accessor for Source();
  *(v3 + 128) = v11;
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v14 = type metadata accessor for PhaseStores();
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64) + 15;
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = swift_task_alloc();
  v17 = *(type metadata accessor for Configuration() - 8);
  *(v3 + 168) = v17;
  *(v3 + 176) = *(v17 + 64);
  *(v3 + 184) = sub_1C43FBE7C();
  *(v3 + 233) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C49C9DEC, 0, 0);
}

uint64_t sub_1C49C9DEC()
{
  v1 = *(v0 + 233);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  v4 = *(v0 + 96);
  sub_1C4430B24(v4, v2, type metadata accessor for Configuration);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v0 + 192) = v6;
  sub_1C4409954(v2, v6 + v5);
  type metadata accessor for LifeEventDeltaDateRangeProvider();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = sub_1C49CA570;
  *(v7 + 24) = v6;
  type metadata accessor for LifeEventProvider();
  sub_1C4430B24(v4, v2, type metadata accessor for Configuration);

  v8 = sub_1C49CA620(v2);
  type metadata accessor for LifeEventDeltaProvider();
  v9 = swift_allocObject();
  *(v0 + 208) = v9;
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  switch(v1)
  {
    case 2:

      goto LABEL_4;
    default:
      v10 = sub_1C4F02938();

      if (v10)
      {
LABEL_4:
        v11 = *(v0 + 96);
        v12 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
        *(v0 + 40) = v12;
        *(v0 + 48) = sub_1C49CA5D8(&qword_1EDDDFD20, type metadata accessor for LifeEventDeltaSourceIngestor);
        v13 = sub_1C4422F90((v0 + 16));
        v14 = v12[6];
        sub_1C4419C4C();
        sub_1C4430B24(v11, v15 + v16, v17);
        v18 = qword_1EDDFED08;

        if (v18 != -1)
        {
          sub_1C442CDF0();
        }

        v19 = sub_1C442B738(*(v0 + 128), qword_1EDDFED10);
        sub_1C440739C(v19);
        *(v13 + v12[5]) = 2;
        *(v13 + v12[7]) = v9;
      }

      else
      {
        v20 = *(v0 + 160);
        v21 = *(v0 + 96);
        sub_1C4419C4C();
        sub_1C4430B24(v22, v20, v23);
        *(v0 + 40) = type metadata accessor for LifeEventSourceIngestor(0);
        *(v0 + 48) = sub_1C49CA5D8(&qword_1EDDE1EA8, type metadata accessor for LifeEventSourceIngestor);
        sub_1C4422F90((v0 + 16));
        sub_1C49CE18C();
      }

      v24 = *(v0 + 160);
      v25 = *(v0 + 96);
      sub_1C4419C4C();
      sub_1C4430B24(v26, v27, v28);
      if (qword_1EDDFED08 != -1)
      {
        sub_1C442CDF0();
      }

      v29 = *(v0 + 233);
      v30 = *(v0 + 144);
      v31 = *(v0 + 152);
      v32 = *(v0 + 136);
      v33 = *(v0 + 96);
      v34 = sub_1C442B738(*(v0 + 128), qword_1EDDFED10);
      *(v0 + 216) = v34;
      sub_1C4430B24(v34, v30, type metadata accessor for Source);
      sub_1C442E860(v0 + 16, v0 + 56);
      sub_1C4430B24(v34, v32, type metadata accessor for Source);
      sub_1C4419C4C();
      sub_1C4430B24(v33, v31, v35);
      *(v0 + 232) = v29;
      v36 = swift_task_alloc();
      *(v0 + 224) = v36;
      *v36 = v0;
      v36[1] = sub_1C49CA204;
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);
      v39 = *(v0 + 120);

      return Linker.init(source:stores:pipelineType:)();
  }
}

uint64_t sub_1C49CA204()
{
  v1 = *(*v0 + 224);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C49CA300, 0, 0);
}

uint64_t sub_1C49CA300()
{
  v25 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v2 = *(v0 + 200);
  v4 = *(v0 + 233);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 136);
  v8 = *(v0 + 112);
  v20 = *(v0 + 144);
  v21 = *(v0 + 120);
  v9 = *(v0 + 96);
  v22 = *(v0 + 104);
  v23 = *(v0 + 184);
  sub_1C440739C(*(v0 + 216));
  sub_1C4419C4C();
  sub_1C4430B24(v9, v5, v10);
  Fuser.init(source:stores:pipelineType:)();

  sub_1C44857CC(v9);
  sub_1C440962C((v0 + 16));
  v24 = v4;
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = sub_1C4418280(v0 + 56, v11);
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  v16 = sub_1C43FBE7C();
  (*(v14 + 16))(v16, v13, v11);
  v17 = sub_1C4487AD8(v6, v20, v16, v21, v8, &v24, v22, v11, v12);
  sub_1C440962C((v0 + 56));

  v18 = *(v0 + 8);

  return v18(v17);
}

uint64_t type metadata accessor for LifeEventPhase()
{
  result = qword_1EDDF7BF0;
  if (!qword_1EDDF7BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49CA570@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Configuration();
  sub_1C43FBD18(v3);
  return sub_1C49C2E0C(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_1C49CA5D8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1C49CA620(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = sub_1C43FBD18(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C44F920C();
  if (static NSUserDefaults.mockLifeEvents.getter())
  {
    v9 = type metadata accessor for LifeEventActivityProviderDemo();
    v10 = swift_allocObject();
    v11 = &unk_1EC0C0D28;
    v12 = type metadata accessor for LifeEventActivityProviderDemo;
  }

  else
  {
    sub_1C44EE514(a1, v8, type metadata accessor for Configuration);
    v9 = type metadata accessor for LifeEventActivityProvider();
    swift_allocObject();
    v10 = LifeEventActivityProvider.init(config:activitySignals:)(v8, 0);
    v11 = &unk_1EDDF34D8;
    v12 = type metadata accessor for LifeEventActivityProvider;
  }

  v28[3] = v9;
  v28[4] = sub_1C4498F00(v11, v12);
  v28[0] = v10;
  v13 = type metadata accessor for LifeEventLocationProvider();
  swift_allocObject();
  v14 = sub_1C49C936C(0);
  sub_1C442E860(v28, v27);
  v26[3] = v13;
  v15 = sub_1C4498F00(&qword_1EDDF3400, type metadata accessor for LifeEventLocationProvider);
  v26[4] = v15;
  v26[0] = v14;
  type metadata accessor for LifeEventProvider();
  v16 = swift_allocObject();
  sub_1C4418280(v26, v13);
  sub_1C43FCE64();
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = (v21 - v20);
  (*(v23 + 16))(v21 - v20);
  v24 = *v22;
  v16[5] = v13;
  v16[6] = v15;
  v16[2] = v24;
  sub_1C441D670(v27, (v16 + 7));
  sub_1C440962C(v26);
  sub_1C4467948(a1);
  sub_1C440962C(v28);
  return v16;
}

uint64_t sub_1C49CA8D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v7 = v2[5];
  v6 = v2[6];
  sub_1C4409678(v2 + 2, v7);
  v8 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_1C43FBCE0(AssociatedTypeWitness);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  result = (*(v8 + 24))(a1, v7, v8);
  if (!v3)
  {
    sub_1C456902C(&qword_1EC0C0D10, &qword_1C4F40928);
    if (swift_dynamicCast())
    {
      sub_1C441D670(v25, v26);
      v15 = v2[10];
      v14 = v2[11];
      sub_1C4409678(v2 + 7, v15);
      v16 = *(v14 + 8);
      sub_1C440F8F8();
      v17 = swift_getAssociatedTypeWitness();
      v18 = sub_1C43FBCE0(v17);
      v20 = *(v19 + 64);
      MEMORY[0x1EEE9AC00](v18);
      (*(v16 + 24))(a1, v15, v16);
      sub_1C456902C(&qword_1EC0C0D20, &unk_1C4F40930);
      if (swift_dynamicCast())
      {
        sub_1C441D670(v24, v25);
        sub_1C442E860(v26, v24);
        sub_1C442E860(v25, v23);
        sub_1C49CAB90(v24, v23, a2);
        sub_1C440962C(v25);
      }

      else
      {
        sub_1C49CCA34();
        swift_allocError();
        *v22 = 1;
        swift_willThrow();
      }

      return sub_1C440962C(v26);
    }

    else
    {
      sub_1C49CCA34();
      swift_allocError();
      *v21 = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1C49CAB90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  a3[10] = MEMORY[0x1E69E7CC0];
  v6 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C43FCE64();
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v11 = sub_1C4410F7C(v10);
  v12(v11);
  v13 = *(v6 + 8);
  sub_1C440F8F8();
  a3[3] = swift_getAssociatedTypeWitness();
  a3[4] = sub_1C4404508();
  sub_1C4422F90(a3);
  sub_1C4F019A8();
  v14 = a2[4];
  sub_1C4409678(a2, a2[3]);
  sub_1C43FCE64();
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v19 = sub_1C4410F7C(v18);
  v20(v19);
  v21 = *(v14 + 8);
  sub_1C440F8F8();
  a3[8] = swift_getAssociatedTypeWitness();
  a3[9] = sub_1C4404508();
  sub_1C4422F90(a3 + 5);
  sub_1C4F019A8();
  sub_1C440962C(a2);
  return sub_1C440962C(a1);
}

uint64_t sub_1C49CAD98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C49CADD8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C49CAE60()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v3 = sub_1C456902C(&qword_1EC0C0D08, &unk_1C4F55BC0);
  sub_1C43FBD18(v3);
  v5 = *(v4 + 64);
  v1[12] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  v1[13] = v6;
  sub_1C43FCF7C(v6);
  v1[14] = v7;
  v9 = *(v8 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0C0C10, &qword_1C4F40270);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  v1[23] = sub_1C43FBE7C();
  v13 = sub_1C456902C(&qword_1EC0B8420, &unk_1C4F0DDC0);
  v1[24] = v13;
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  v1[25] = sub_1C43FBE7C();

  return MEMORY[0x1EEE6DFA0](sub_1C49CAFFC, 0, 0);
}

uint64_t sub_1C49CAFFC()
{
  v1 = v0[11];
  v2 = *(v1 + 72);
  sub_1C4418280(v1 + 40, *(v1 + 64));
  v0[26] = sub_1C440BDA0();
  v3 = sub_1C4F01F48();
  v0[27] = v3;
  sub_1C43FCF7C(v3);
  v0[28] = v4;
  v6 = *(v5 + 64);
  v7 = sub_1C43FBE7C();
  v0[29] = v7;
  v8 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[30] = v9;
  *v9 = v10;
  v9[1] = sub_1C49CB124;

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C49CB124()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 240);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1C49CBF98;
  }

  else
  {
    v6 = sub_1C49CB22C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C49CB22C()
{
  v1 = v0[29];
  v2 = v0[26];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v1, v0[27]);

    sub_1C44102A4(v0[23], v3, v4, v0[24]);
LABEL_5:
    v10 = v0[10];
    sub_1C4420C3C(v0[23], &qword_1EC0C0C10, &qword_1C4F40270);
    v11 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
    sub_1C44102A4(v10, v12, v13, v11);
    sub_1C44073C4();

    sub_1C43FC1B0();

    return v14();
  }

  v6 = v0[23];
  v5 = v0[24];
  v0[5] = v2;
  v7 = sub_1C4422F90(v0 + 2);
  (*(*(v2 - 8) + 32))(v7, v1, v2);

  v8 = sub_1C441EDB0();
  sub_1C43FF360(v8);
  if (v9)
  {
    goto LABEL_5;
  }

  v16 = v0[11];
  sub_1C44CD9E0(v0[23], v0[25], &qword_1EC0B8420, &unk_1C4F0DDC0);
  v17 = *(v16 + 80);
  v18 = *(v17 + 16);
  if (v18)
  {
    v77 = v16;
    v19 = v0[25];
    v20 = v0[14];
    v79 = v0[13];
    v21 = *(v0[24] + 28);
    sub_1C4EF9CD8();
    v76 = v17;
    v84 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = v17 + v84;
    v23 = MEMORY[0x1E69E7CC0];
    v24 = *(v20 + 72);
    v81 = v21;
    v82 = MEMORY[0x1E69E7CC0];
    v78 = v19;
    v80 = v24;
    do
    {
      sub_1C4460050(v22, v0[22], &qword_1EC0B8B40, &unk_1C4F0DF70);
      sub_1C4419C64();
      sub_1C4498F00(&qword_1EDDFCD70, v25);
      if (sub_1C4F01068() & 1) != 0 || (v26 = v0[25], v27 = v0[22], v28 = *(v79 + 28), (sub_1C4F01068()))
      {
        v29 = v0[22];
        v30 = sub_1C4EF9C08();
        v31 = v0[22];
        if (v30)
        {
          sub_1C4460050(v31, v0[19], &qword_1EC0B8B40, &unk_1C4F0DF70);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v55 = *(v23 + 16);
            sub_1C43FCEC0();
            sub_1C458A85C();
            v23 = v56;
          }

          if (*(v23 + 16) >= *(v23 + 24) >> 1)
          {
            sub_1C442FF30();
            v23 = v57;
          }

          v32 = v0[19];
          v24 = &qword_1EC0B8B40;
          v33 = sub_1C4420C3C(v0[22], &qword_1EC0B8B40, &unk_1C4F0DF70);
          sub_1C44174B8(v33, v34, v35, v36, v37, v38, v39, v40, v76, v77, v78, v79, v80, v81, v82, v84);
        }

        else
        {
          sub_1C4420C3C(v31, &qword_1EC0B8B40, &unk_1C4F0DF70);
        }
      }

      else
      {
        sub_1C4460050(v0[22], v0[21], &qword_1EC0B8B40, &unk_1C4F0DF70);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = v82;
        }

        else
        {
          v58 = *(v82 + 16);
          sub_1C43FCEC0();
          sub_1C458A85C();
          v41 = v59;
        }

        v42 = *(v41 + 16);
        if (v42 >= *(v41 + 24) >> 1)
        {
          sub_1C458A85C();
          v41 = v60;
        }

        v43 = v0[21];
        v44 = v0[22];
        v45 = v0[20];
        *(v41 + 16) = v42 + 1;
        v83 = v41;
        sub_1C44CD9E0(v43, v41 + v84 + v42 * v24, &qword_1EC0B8B40, &unk_1C4F0DF70);
        sub_1C4460050(v44, v45, &qword_1EC0B8B40, &unk_1C4F0DF70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = *(v23 + 16);
          sub_1C43FCEC0();
          sub_1C458A85C();
          v23 = v62;
        }

        if (*(v23 + 16) >= *(v23 + 24) >> 1)
        {
          sub_1C442FF30();
          v23 = v63;
        }

        v46 = v0[20];
        v24 = &qword_1EC0B8B40;
        v47 = sub_1C4420C3C(v0[22], &qword_1EC0B8B40, &unk_1C4F0DF70);
        sub_1C44174B8(v47, v48, v49, v50, v51, v52, v53, v54, v76, v77, v78, v79, v80, v81, v83, v84);
      }

      v22 += v24;
      --v18;
    }

    while (v18);

    v16 = v77;
    v64 = v82;
  }

  else
  {
    v65 = *(v16 + 80);

    v64 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
  }

  *(v16 + 80) = v23;
  v0[31] = v64;
  v0[32] = v23;
  v66 = v0[11];
  v67 = *(v66 + 32);
  sub_1C4418280(v66, *(v66 + 24));
  v0[33] = sub_1C440BDA0();
  v68 = sub_1C4F01F48();
  v0[34] = v68;
  sub_1C43FCF7C(v68);
  v0[35] = v69;
  v71 = *(v70 + 64);
  v0[36] = sub_1C43FBE7C();
  v72 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v0[37] = v73;
  *v73 = v74;
  v75 = sub_1C44007FC(v73);

  return MEMORY[0x1EEE6D8C8](v75);
}

uint64_t sub_1C49CB7EC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = *(v2 + 296);
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;

  if (v0)
  {

    v6 = sub_1C49CC0B4;
  }

  else
  {
    v6 = sub_1C49CB8F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C49CB8F4()
{
  v5 = v1[36];
  v6 = v1[33];
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    (*(v1[35] + 8))(v5, v1[34]);

    sub_1C44102A4(v1[12], v7, v8, v1[13]);
LABEL_5:
    sub_1C4420C3C(v1[12], &qword_1EC0C0D08, &unk_1C4F55BC0);
    goto LABEL_6;
  }

  v2 = v1[12];
  v0 = v1[13];
  v1[9] = v6;
  v9 = sub_1C4422F90(v1 + 6);
  (*(*(v6 - 8) + 32))(v9, v5, v6);

  v10 = sub_1C441EDB0();
  sub_1C43FF360(v10);
  if (v11)
  {
    goto LABEL_5;
  }

  v30 = v1[24];
  v31 = v1[25];
  sub_1C44CD9E0(v1[12], v1[18], &qword_1EC0B8B40, &unk_1C4F0DF70);
  v32 = *(v30 + 28);
  sub_1C4EF9CD8();
  sub_1C4419C64();
  sub_1C4498F00(v33, v34);
  v35 = sub_1C4F01068();
  if (v35 & 1) != 0 || (v36 = v1[25], v37 = v1[18], v38 = *(v1[13] + 28), (sub_1C4F01068()))
  {
    v39 = v1[18];
    v40 = sub_1C4EF9C08();
    v6 = v1[18];
    if (v40)
    {
      v0 = v1[17];
      v41 = v1[14];
      v4 = v1[11];
      v2 = &qword_1EC0B8B40;
      v3 = &unk_1C4F0DF70;
      sub_1C4460050(v1[18], v0, &qword_1EC0B8B40, &unk_1C4F0DF70);
      sub_1C4588C04();
      v42 = *(*(v4 + 80) + 16);
      sub_1C4589838();
      sub_1C4420C3C(v6, &qword_1EC0B8B40, &unk_1C4F0DF70);
      v43 = *(v4 + 80);
      *(v43 + 16) = v42 + 1;
      sub_1C44CD9E0(v0, v43 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v42, &qword_1EC0B8B40, &unk_1C4F0DF70);
      *(v4 + 80) = v43;
LABEL_6:
      v12 = sub_1C441E55C();
      sub_1C43FBCE0(v12);
      v14 = *(v13 + 16);
      v14(v2, v0, v12);
      v15 = *(v4 + 28);
      v16 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
      v17 = sub_1C440D5D0(v16);
      (v14)(v17);
      sub_1C4419C64();
      sub_1C4498F00(v18, v19);
      v78 = sub_1C4409F04();
      v79 = v20;
      sub_1C44066FC();
      sub_1C4F02858();
      sub_1C441B9C0();

      sub_1C44066FC();
      sub_1C4405128();
      sub_1C441B9C0();

      v21 = sub_1C49CC31C(v3);

      v22 = (v2 + *(v6 + 32));
      v23 = type metadata accessor for ActivityEventWithLocations(0);
      sub_1C4460050(v0, v22 + *(v23 + 24), &qword_1EC0B8420, &unk_1C4F0DDC0);
      if (qword_1EDDF7888 != -1)
      {
        sub_1C4412018();
      }

      v24 = v1[25];
      v25 = v1[10];
      v26 = type metadata accessor for SourceIdPrefix();
      v27 = sub_1C442B738(v26, &qword_1EDE2D5D8);
      sub_1C440AE78(v27);
      sub_1C4420C3C(v24, &qword_1EC0B8420, &unk_1C4F0DDC0);
      *v22 = v78;
      v22[1] = v79;
      v22[2] = v21;
      sub_1C440BAA8(v25, 0, 1, v6);
      sub_1C44073C4();

      sub_1C43FC1B0();
      sub_1C440405C();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4420C3C(v1[18], &qword_1EC0B8B40, &unk_1C4F0DF70);
  }

  else
  {
    v44 = v1[32];
    sub_1C4460050(v1[18], v1[16], &qword_1EC0B8B40, &unk_1C4F0DF70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v1[32];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v71 = *(v46 + 16);
      sub_1C43FCEC0();
      sub_1C458A85C();
      v46 = v72;
    }

    v47 = *(v46 + 16);
    if (v47 >= *(v46 + 24) >> 1)
    {
      sub_1C458A85C();
      v46 = v73;
    }

    v48 = v1[31];
    v49 = v1[18];
    v51 = v1[15];
    v50 = v1[16];
    v52 = v1[14];
    v53 = v1[11];
    *(v46 + 16) = v47 + 1;
    v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v55 = *(v52 + 72);
    sub_1C44CD9E0(v50, v46 + v54 + v55 * v47, &qword_1EC0B8B40, &unk_1C4F0DF70);
    *(v53 + 80) = v46;
    sub_1C4460050(v49, v51, &qword_1EC0B8B40, &unk_1C4F0DF70);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v1[31];
    if ((v56 & 1) == 0)
    {
      v74 = *(v57 + 16);
      sub_1C43FCEC0();
      sub_1C458A85C();
      v57 = v75;
    }

    v58 = *(v57 + 16);
    if (v58 >= *(v57 + 24) >> 1)
    {
      sub_1C458A85C();
      v57 = v76;
    }

    v59 = v1[15];
    sub_1C4420C3C(v1[18], &qword_1EC0B8B40, &unk_1C4F0DF70);
    *(v57 + 16) = v58 + 1;
    sub_1C44CD9E0(v59, v57 + v54 + v58 * v55, &qword_1EC0B8B40, &unk_1C4F0DF70);
    v1[31] = v57;
    v1[32] = v46;
  }

  v60 = v1[11];
  v61 = *(v60 + 32);
  sub_1C4418280(v60, *(v60 + 24));
  v1[33] = sub_1C440BDA0();
  v62 = sub_1C4F01F48();
  v1[34] = v62;
  sub_1C43FCF7C(v62);
  v1[35] = v63;
  v65 = *(v64 + 64);
  v1[36] = sub_1C43FBE7C();
  v66 = *(MEMORY[0x1E69E85A8] + 4);
  swift_task_alloc();
  sub_1C43FBE70();
  v1[37] = v67;
  *v67 = v68;
  sub_1C44007FC();
  sub_1C440405C();

  return MEMORY[0x1EEE6D8C8](v69);
}

uint64_t sub_1C49CBF98()
{
  v1 = v0[29];

  sub_1C44102A4(v0[23], v2, v3, v0[24]);
  v4 = v0[10];
  sub_1C4420C3C(v0[23], &qword_1EC0C0C10, &qword_1C4F40270);
  v5 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  sub_1C44102A4(v4, v6, v7, v5);
  sub_1C44073C4();

  sub_1C43FC1B0();

  return v8();
}

void sub_1C49CC0B4()
{
  v6 = v2[36];

  sub_1C44102A4(v2[12], v7, v8, v2[13]);
  sub_1C4420C3C(v2[12], &qword_1EC0C0D08, &unk_1C4F55BC0);
  v9 = sub_1C441E55C();
  sub_1C43FBCE0(v9);
  v11 = *(v10 + 16);
  v11(v3, v1, v9);
  v12 = *(v5 + 28);
  v13 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v14 = sub_1C440D5D0(v13);
  (v11)(v14);
  sub_1C4419C64();
  sub_1C4498F00(v15, v16);
  v27 = sub_1C4409F04();
  v28 = v17;
  sub_1C44066FC();
  sub_1C4F02858();
  sub_1C441B9C0();

  sub_1C44066FC();
  sub_1C4405128();
  sub_1C441B9C0();

  v18 = sub_1C49CC31C(v4);

  v19 = (v3 + *(v0 + 32));
  v20 = type metadata accessor for ActivityEventWithLocations(0);
  sub_1C4460050(v1, v19 + *(v20 + 24), &qword_1EC0B8420, &unk_1C4F0DDC0);
  if (qword_1EDDF7888 != -1)
  {
    sub_1C4412018();
  }

  v21 = v2[25];
  v22 = v2[10];
  v23 = type metadata accessor for SourceIdPrefix();
  v24 = sub_1C442B738(v23, &qword_1EDE2D5D8);
  sub_1C440AE78(v24);
  sub_1C4420C3C(v21, &qword_1EC0B8420, &unk_1C4F0DDC0);
  *v19 = v27;
  v19[1] = v28;
  v19[2] = v18;
  sub_1C440BAA8(v22, 0, 1, v0);
  sub_1C44073C4();

  sub_1C43FC1B0();
  sub_1C440405C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49CC31C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B8B40, &unk_1C4F0DF70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v21 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = &v7[*(v4 + 32)];
  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v11 = MEMORY[0x1E69E7CC0];
  v21 = *(v5 + 72);
  do
  {
    sub_1C4460050(v10, v7, &qword_1EC0B8B40, &unk_1C4F0DF70);
    sub_1C4460050(v9 + 40, &v24, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    v12 = *(&v25 + 1);
    sub_1C4420C3C(&v24, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    if (v12)
    {
      sub_1C4420C3C(v7, &qword_1EC0B8B40, &unk_1C4F0DF70);
    }

    else
    {
      sub_1C480BC20(v9, v22);
      sub_1C4420C3C(v7, &qword_1EC0B8B40, &unk_1C4F0DF70);
      v24 = v22[0];
      v25 = v22[1];
      v26 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = *(v11 + 16);
        sub_1C43FCEC0();
        sub_1C458A7F0();
        v11 = v18;
      }

      v13 = *(v11 + 16);
      if (v13 >= *(v11 + 24) >> 1)
      {
        sub_1C458A7F0();
        v11 = v19;
      }

      *(v11 + 16) = v13 + 1;
      v14 = v11 + 40 * v13;
      v15 = v24;
      v16 = v25;
      *(v14 + 64) = v26;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
    }

    v10 += v21;
    --v8;
  }

  while (v8);
  return v11;
}

uint64_t sub_1C49CC554@<X0>(uint64_t a1@<X8>)
{
  sub_1C49CA8C4(a1);

  return sub_1C49855C0(v1);
}

uint64_t sub_1C49CC580()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C49CC610;

  return sub_1C49CAE60();
}

uint64_t sub_1C49CC610()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1C43FBDAC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1C49CC6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C49CC7C0;

  return (sub_1C4982028)(a1, a2, a3);
}

uint64_t sub_1C49CC7C0()
{
  sub_1C43FBDE4();
  v3 = v2;
  v4 = *(v2 + 24);
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

unint64_t sub_1C49CC8D8()
{
  result = qword_1EC0C0CF0;
  if (!qword_1EC0C0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0CF0);
  }

  return result;
}

unint64_t sub_1C49CC92C()
{
  result = qword_1EC0C0CF8;
  if (!qword_1EC0C0CF8)
  {
    sub_1C4572308(&qword_1EC0B8D40, &unk_1C4F0F040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0CF8);
  }

  return result;
}

unint64_t sub_1C49CC990(uint64_t a1)
{
  result = sub_1C49CC8D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C49CC9B8(uint64_t a1)
{
  result = sub_1C49CC9E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C49CC9E0()
{
  result = qword_1EC0C0D00;
  if (!qword_1EC0C0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0D00);
  }

  return result;
}

unint64_t sub_1C49CCA34()
{
  result = qword_1EC0C0D18;
  if (!qword_1EC0C0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0D18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LifeEventProvider.LifeEventProviderError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C49CCB68()
{
  result = qword_1EC0C0D30;
  if (!qword_1EC0C0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C0D30);
  }

  return result;
}

void sub_1C49CCC38()
{
  sub_1C43FBD3C();
  v162 = v1;
  v163 = v2;
  v168 = v3;
  v160 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v170 = v0;
  v12 = v11;
  v13 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v159 = v146 - v17;
  sub_1C43FBE44();
  v158 = sub_1C4EFDE88();
  v18 = sub_1C43FCDF8(v158);
  v156 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  v167 = v146 - v26;
  sub_1C43FBE44();
  v157 = sub_1C4EFDE98();
  v27 = sub_1C43FCDF8(v157);
  v155 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  v154 = v32 - v31;
  sub_1C43FBE44();
  v33 = sub_1C4F00978();
  v34 = sub_1C43FCDF8(v33);
  v171 = v35;
  v172 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBD08();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v165 = v42;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  v161 = v44;
  sub_1C43FD1D0();
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = v146 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v50 = v146 - v49;
  sub_1C4F00158();
  v51 = sub_1C4F00968();
  v52 = sub_1C4F01CF8();
  v53 = os_log_type_enabled(v51, v52);
  v54 = &unk_1C4F0C000;
  v166 = v40;
  v169 = v10;
  if (v53)
  {
    v55 = sub_1C43FD084();
    v164 = v48;
    v149 = v12;
    v56 = v55;
    v57 = sub_1C43FFD34();
    v176[0] = v57;
    *v56 = 136315138;
    v173 = v10(0);
    sub_1C456902C(v8, v6);
    v58 = sub_1C4F01198();
    v60 = v8;
    v61 = v6;
    v62 = sub_1C441D828(v58, v59, v176);

    *(v56 + 4) = v62;
    v64 = v171;
    v63 = v172;
    v6 = v61;
    v8 = v60;
    _os_log_impl(&dword_1C43F8000, v51, v52, "<%s deleting life event(s)>", v56, 0xCu);
    sub_1C440962C(v57);
    sub_1C43FFD18();
    v12 = v149;
    v48 = v164;
    sub_1C43FBE2C();

    v65 = v64;
    v54 = &unk_1C4F0C000;
    v66 = *(v65 + 8);
    v66(v50, v63);
  }

  else
  {

    v66 = *(v171 + 8);
    v66(v50, v172);
  }

  if (!v12[2])
  {
    sub_1C4F00158();
    v116 = sub_1C4F00968();
    v117 = sub_1C4F01CF8();
    if (os_log_type_enabled(v116, v117))
    {
      v118 = sub_1C43FD084();
      v119 = sub_1C43FFD34();
      v176[0] = v119;
      *v118 = v54[458];
      v173 = v169(0);
      sub_1C456902C(v8, v6);
      v120 = sub_1C4F01198();
      v122 = sub_1C441D828(v120, v121, v176);

      *(v118 + 4) = v122;
      _os_log_impl(&dword_1C43F8000, v116, v117, "<%s No life events needed to delete>", v118, 0xCu);
      sub_1C440962C(v119);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    v66(v48, v172);
    goto LABEL_18;
  }

  v148 = v8;
  v149 = v6;
  v164 = v66;
  v177 = MEMORY[0x1E69E7CD0];
  v147 = v169(0);
  v67 = v170 + *(v147 + 24);
  v169 = *(v67 + *(type metadata accessor for PhaseStores() + 24));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45972E0();
  v146[1] = v68;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v69 = sub_1C4EFEEF8();
  sub_1C43FCF7C(v69);
  v71 = *(v70 + 72);
  v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  *(swift_allocObject() + 16) = xmmword_1C4F0D130;
  sub_1C4EFECB8();
  sub_1C4D504A4();
  v74 = v156;
  v75 = *(v156 + 104);
  v76 = v158;
  (v75)(v167, *MEMORY[0x1E69A95C0], v158);
  v77 = v150;
  sub_1C4413074();
  v75();
  v78 = v151;
  sub_1C4413074();
  v75();
  v79 = v152;
  sub_1C4413074();
  v75();
  v80 = v153;
  sub_1C4413074();
  v75();
  v144 = v80;
  v145 = 0;
  v81 = v154;
  v82 = v167;
  sub_1C4EFDCD8();

  v83 = *(v74 + 8);
  v83(v80, v76);
  v83(v79, v76);
  v83(v78, v76);
  v83(v77, v76);
  v83(v82, v76);
  v84 = sub_1C4EFD678();
  v85 = v159;
  v86 = sub_1C440BAA8(v159, 1, 1, v84);
  MEMORY[0x1EEE9AC00](v86);
  v144 = &v177;
  sub_1C48687E8(v81, v85, v160, &v146[-4]);
  sub_1C4420C3C(v85, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v155 + 8))(v81, v157);
  v87 = v161;
  sub_1C4F00158();
  v88 = sub_1C4F00968();
  v89 = sub_1C4F01CC8();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v176[0] = swift_slowAlloc();
    *v90 = 136315394;
    sub_1C444113C();
    v173 = v91;
    sub_1C4405E74();
    v92 = sub_1C4F01198();
    v94 = sub_1C441D828(v92, v93, v176);

    *(v90 + 4) = v94;
    *(v90 + 12) = 2080;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v95 = sub_1C4F01AC8();
    v76 = v96;

    v97 = sub_1C441D828(v95, v76, v176);

    *(v90 + 14) = v97;
    _os_log_impl(&dword_1C43F8000, v88, v89, "<%s sourceIds:%s>", v90, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v98 = v164;
  (v164)(v87, v172);
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49CFC90();
  v100 = v99;
  v102 = v101;

  sub_1C49CD970(v100, v102);
  v103 = v165;
  sub_1C4F00158();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v104 = sub_1C4F00968();
  v105 = sub_1C4F01CF8();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = sub_1C43FFD34();
    v76 = sub_1C43FFD34();
    *v106 = 136315650;
    sub_1C444113C();
    v174 = v108;
    v175 = v107;
    sub_1C4405E74();
    v109 = sub_1C4F01198();
    v111 = v102;
    v112 = sub_1C441D828(v109, v110, &v175);

    *(v106 + 4) = v112;
    *(v106 + 12) = 2048;
    v113 = *(v100 + 16);

    *(v106 + 14) = v113;
    v102 = v111;

    *(v106 + 22) = 2048;
    v114 = *(v111 + 16);

    *(v106 + 24) = v114;

    _os_log_impl(&dword_1C43F8000, v104, v105, "<%s Deleted event triples from eventKG: d:%ld, u:%ld>", v106, 0x20u);
    sub_1C440962C(v76);
    sub_1C43FFD18();
    sub_1C43FBE2C();

    v115 = v165;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v115 = v103;
  }

  v98(v115, v172);
  v123 = v166;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49CFC90();
  v125 = v124;
  v127 = v126;

  sub_1C4681710(v125, v127);
  sub_1C4F00158();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v128 = sub_1C4F00968();
  v129 = sub_1C4F01CF8();
  if (os_log_type_enabled(v128, v129))
  {
    sub_1C43FFD34();
    v130 = sub_1C4415B1C();
    v170 = v102;
    v131 = v130;
    *v76 = 136315650;
    sub_1C444113C();
    v174 = v133;
    v175 = v132;
    sub_1C4405E74();
    v134 = sub_1C4F01198();
    v136 = sub_1C441D828(v134, v135, &v175);

    *(v76 + 4) = v136;
    *(v76 + 12) = 2048;
    v137 = *(v125 + 16);

    *(v76 + 14) = v137;

    *(v76 + 22) = 2048;
    v138 = *(v127 + 16);

    *(v76 + 24) = v138;

    _os_log_impl(&dword_1C43F8000, v128, v129, "<%s Deleted triples from stableKG: d:%ld, u:%ld>", v76, 0x20u);
    sub_1C440962C(v131);
    v102 = v170;
    sub_1C43FBE2C();
    sub_1C43FFD18();

    v139 = v166;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v139 = v123;
  }

  (v164)(v139, v172);
  v140 = *(v100 + 16);

  v141 = *(v125 + 16);

  if (__OFADD__(v140, v141))
  {
    __break(1u);
  }

  else
  {
    v142 = *(v102 + 16);

    v143 = *(v127 + 16);

    if (!__OFADD__(v142, v143))
    {
LABEL_18:
      sub_1C43FE9F0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_1C49CD970(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v3 = *(*(v2 + 16) + OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool);
  v5[2] = &v6;
  v5[3] = a2;

  sub_1C446C37C(sub_1C49D1DB8, v5);
}

uint64_t sub_1C49CD9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v77 = type metadata accessor for ExpiredEventTriple(0);
  v7 = *(*(v77 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v77);
  v71 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v69 - v10;
  v70 = sub_1C456902C(&qword_1EC0B8D38, &unk_1C4F0E180);
  v72 = *(v70 - 8);
  v12 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v69 - v13;
  v14 = type metadata accessor for EventTriple(0);
  v74 = *(v14 - 1);
  v15 = *(v74 + 64);
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = *(a2 + 16);
  v75 = a2;
  v76 = v20;
  v78 = a1;
  while (v76 != v19)
  {
    v21 = v75 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v22 = *(v74 + 72);
    v79 = v19;
    sub_1C448CEA4(v21 + v22 * v19, v18, type metadata accessor for EventTriple);
    v23 = sub_1C4EFF0C8();
    (*(*(v23 - 8) + 16))(v11, v18, v23);
    v24 = v14[5];
    v80 = v4;
    v25 = v77;
    v26 = *(v77 + 20);
    v27 = sub_1C4EFEEF8();
    v28 = *(*(v27 - 8) + 16);
    v28(&v11[v26], &v18[v24], v27);
    v29 = v14[6];
    v30 = v25[6];
    v31 = sub_1C4EFF8A8();
    (*(*(v31 - 8) + 16))(&v11[v30], &v18[v29], v31);
    v28(&v11[v25[7]], &v18[v14[7]], v27);
    v32 = &v18[v14[8]];
    v34 = *v32;
    v33 = *(v32 + 1);
    v35 = *&v18[v14[9]];
    v36 = v14[11];
    v37 = *&v18[v14[10]];
    v39 = *&v18[v36];
    v38 = *&v18[v36 + 8];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v40 = &v11[v25[8]];
    *v40 = v34;
    *(v40 + 1) = v33;
    *&v11[v25[9]] = v35;
    *&v11[v25[10]] = v37;
    v41 = &v11[v25[11]];
    *v41 = v39;
    *(v41 + 1) = v38;
    *&v11[v25[12]] = v42;
    sub_1C49D1BC8(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple);
    v43 = v80;
    sub_1C4EFB6C8();
    v4 = v43;
    sub_1C44BCB34(v11, type metadata accessor for ExpiredEventTriple);
    if (v43)
    {
      return sub_1C44BCB34(v18, type metadata accessor for EventTriple);
    }

    v19 = v79 + 1;
    sub_1C49D1BC8(&qword_1EDDEBC18, type metadata accessor for EventTriple);
    sub_1C4EFBA98();
    result = sub_1C44BCB34(v18, type metadata accessor for EventTriple);
  }

  v44 = 0;
  v76 = *(v73 + 16);
  v45 = v69;
  while (v76 != v44)
  {
    sub_1C4460050(v73 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v44, v45, &qword_1EC0B8D38, &unk_1C4F0E180);
    sub_1C49D1BC8(&qword_1EDDEBC18, type metadata accessor for EventTriple);
    sub_1C4EFBA98();
    if (v4)
    {
      return sub_1C4420C3C(v45, &qword_1EC0B8D38, &unk_1C4F0E180);
    }

    v79 = v44;
    v46 = sub_1C4EFF0C8();
    v47 = v71;
    (*(*(v46 - 8) + 16))(v71, v45, v46);
    v48 = v14[5];
    v80 = 0;
    v49 = v77;
    v50 = *(v77 + 20);
    v51 = sub_1C4EFEEF8();
    v52 = *(*(v51 - 8) + 16);
    v52(v47 + v50, v45 + v48, v51);
    v53 = v14[6];
    v54 = v49[6];
    v55 = sub_1C4EFF8A8();
    (*(*(v55 - 8) + 16))(v47 + v54, v45 + v53, v55);
    v52(v47 + v49[7], v45 + v14[7], v51);
    v56 = (v45 + v14[8]);
    v57 = *v56;
    v58 = v56[1];
    v59 = *(v45 + v14[9]);
    v60 = v14[11];
    v61 = *(v45 + v14[10]);
    v63 = *(v45 + v60);
    v62 = *(v45 + v60 + 8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    v64 = (v47 + v49[8]);
    *v64 = v57;
    v64[1] = v58;
    *(v47 + v49[9]) = v59;
    *(v47 + v49[10]) = v61;
    v65 = (v47 + v49[11]);
    *v65 = v63;
    v65[1] = v62;
    *(v47 + v49[12]) = v66;
    sub_1C49D1BC8(&qword_1EDDE5BF8, type metadata accessor for ExpiredEventTriple);
    v67 = v80;
    sub_1C4EFB6C8();
    v4 = v67;
    sub_1C44BCB34(v47, type metadata accessor for ExpiredEventTriple);
    if (v67)
    {
      return sub_1C4420C3C(v45, &qword_1EC0B8D38, &unk_1C4F0E180);
    }

    v68 = *(v70 + 48);
    sub_1C49D1BC8(&qword_1EDDEBC20, type metadata accessor for EventTriple);
    sub_1C4EFB6C8();
    result = sub_1C4420C3C(v45, &qword_1EC0B8D38, &unk_1C4F0E180);
    v44 = v79 + 1;
  }

  return result;
}

void sub_1C49CE18C()
{
  sub_1C43FBD3C();
  v41 = v1;
  v42 = v0;
  v2 = sub_1C4EF9CD8();
  v3 = sub_1C43FCDF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C4EF9F68();
  v12 = sub_1C43FCDF8(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v19 = v18 - v17;
  v20 = sub_1C4EF9F88();
  v21 = sub_1C43FCDF8(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  v28 = v27 - v26;
  v29 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v29);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v41 - v33;
  sub_1C4EF9F58();
  (*(v14 + 104))(v19, *MEMORY[0x1E6969A48], v11);
  sub_1C4EF9CC8();
  sub_1C4EF9F28();
  (*(v5 + 8))(v10, v2);
  (*(v14 + 8))(v19, v11);
  (*(v23 + 8))(v28, v20);
  if (sub_1C44157D4(v34, 1, v2) == 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v41;
    (*(v5 + 32))(v41, v34, v2);
    v36 = type metadata accessor for LifeEventSourceIngestor(0);
    v37 = v36[6];
    if (qword_1EDDFED08 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Source();
    sub_1C442B738(v38, qword_1EDDFED10);
    sub_1C44073E4();
    sub_1C448CEA4(v39, v35 + v37, v40);
    *(v35 + v36[7]) = 1;
    sub_1C49D18FC(v42, v35 + v36[5]);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C49CE4A8()
{
  sub_1C43FBCD4();
  v1[39] = v0;
  v2 = sub_1C4F00978();
  v1[40] = v2;
  sub_1C43FCF7C(v2);
  v1[41] = v3;
  v5 = *(v4 + 64) + 15;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0C0568, &unk_1C4F3E9D8);
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v1[44] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v1[45] = v9;
  sub_1C43FCF7C(v9);
  v1[46] = v10;
  v12 = *(v11 + 64) + 15;
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v13 = sub_1C4EF9CD8();
  v1[50] = v13;
  sub_1C43FCF7C(v13);
  v1[51] = v14;
  v16 = *(v15 + 64);
  v1[52] = sub_1C43FBE7C();
  v17 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBD18(v17);
  v19 = *(v18 + 64);
  v1[53] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v20, v21, v22);
}

uint64_t sub_1C49CE680()
{
  v1 = v0[53];
  v2 = v0[39];
  v0[34] = 0;
  v0[35] = 0;
  v3 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
  v0[54] = v3;
  v4 = *(*(v2 + *(v3 + 28)) + 16);
  v5 = *(v4 + 24);
  (*(v4 + 16))();
  v6 = v0[52];
  v7 = v0[53];
  v8 = v0[39];
  (*(v0[51] + 16))(v6, v7, v0[50]);
  sub_1C4420C3C(v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
  v9 = sub_1C49CF710(v6, 100);
  v13 = v0[39];
  (*(v0[51] + 8))(v0[52], v0[50]);
  v14 = *(v9 + 16);
  v0[34] = v14;
  sub_1C49CCC38();

  v0[35] = v14;
  v0[55] = v14;
  sub_1C49C3B28(v0 + 2);
  sub_1C4985564((v0 + 2), (v0 + 13));
  v0[56] = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  sub_1C43FBE70();
  v0[57] = v10;
  *v10 = v11;
  sub_1C4403468(v10);

  return sub_1C49CAE60();
}

uint64_t sub_1C49CEB50()
{
  sub_1C43FBCD4();
  v3 = *(*v1 + 456);
  v2 = *v1;
  sub_1C43FBDAC();
  *v4 = v2;
  *(v2 + 464) = v0;

  if (v0)
  {
    v5 = *(v2 + 448);
    sub_1C49855C0(v2 + 104);
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C49CEC68()
{
  v55 = v0;
  v1 = *(v0 + 352);
  v49 = *(v0 + 360);
  if (sub_1C44157D4(v1, 1, v49) == 1)
  {
    v2 = *(v0 + 448);
    v46 = *(v0 + 432);
    sub_1C49855C0(v0 + 104);
    sub_1C49855C0(v0 + 16);
    sub_1C4420C3C(v1, &qword_1EC0C0568, &unk_1C4F3E9D8);
    v3 = 0;
    v47 = v2;
    v48 = *(v2 + 16);
    v4 = *(v0 + 464);
    v5 = *(v0 + 440);
    for (i = v5; ; i = v51)
    {
      v45 = v5;
      v7 = i + 1;
      if (v48 == v3)
      {
        v33 = *(v0 + 448);

        sub_1C4412038();

        sub_1C43FC1B0();
        goto LABEL_20;
      }

      if (v3 >= *(v47 + 16))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v1 = *(v0 + 312);
      sub_1C4460050(*(v0 + 448) + ((*(*(v0 + 368) + 80) + 32) & ~*(*(v0 + 368) + 80)) + *(*(v0 + 368) + 72) * v3, *(v0 + 376), &qword_1EC0B8D40, &unk_1C4F0F040);
      sub_1C4ACEE5C();
      if (v4)
      {
        break;
      }

      if ((*(v0 + 440) ^ v3) == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_24;
      }

      v8 = *(v0 + 376);
      v51 = v7;
      *(v0 + 272) = v7;
      v9 = (v8 + *(v49 + 32));
      v10 = type metadata accessor for ActivityEventWithLocations(0);
      v11 = *(v10 + 24);
      v13 = v9[1];
      v12 = v9[2];
      v14 = *v9;
      sub_1C4B0565C(v0 + 232);
      if (*(v0 + 256))
      {
        v15 = v3;
        sub_1C441D670((v0 + 232), v0 + 192);
        v17 = *(v0 + 216);
        v16 = *(v0 + 224);
        sub_1C4409678((v0 + 192), v17);
        v18 = (v9 + *(v10 + 28));
        v19 = v18[1];
        v53 = *v18;
        v54 = v19;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        MEMORY[0x1C6940010](58, 0xE100000000000000);
        MEMORY[0x1C6940010](v14, v13);
        v20 = v53;
        LOBYTE(v53) = 2;
        (*(v16 + 24))(v20, v54, &v53, v17, v16);

        sub_1C440962C((v0 + 192));
        v3 = v15;
      }

      else
      {
        sub_1C4420C3C(v0 + 232, &qword_1EC0C3480, &unk_1C4F40B58);
      }

      v21 = *(v0 + 376);
      v22 = *(v0 + 312) + *(v46 + 24);
      v1 = *(v22 + *(type metadata accessor for PhaseStores() + 24));
      sub_1C4B46D4C();

      sub_1C4420C3C(v21, &qword_1EC0B8D40, &unk_1C4F0F040);
      v5 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_25;
      }

      v4 = 0;
      ++v3;
      *(v0 + 280) = v5;
    }

    v35 = *(v0 + 448);
    v37 = *(v0 + 416);
    v36 = *(v0 + 424);
    v39 = *(v0 + 384);
    v38 = *(v0 + 392);
    v40 = *(v0 + 352);
    v50 = *(v0 + 344);
    v52 = *(v0 + 336);
    v41 = *(v0 + 312);
    sub_1C4420C3C(*(v0 + 376), &qword_1EC0B8D40, &unk_1C4F0F040);

    sub_1C49CF488(v41, (v0 + 280), (v0 + 272));

    sub_1C43FBDA0();
LABEL_20:

    return v34();
  }

  else
  {
    v23 = *(v0 + 448);
    v25 = *(v0 + 384);
    v24 = *(v0 + 392);
    sub_1C44CD9E0(v1, v24, &qword_1EC0B8D40, &unk_1C4F0F040);
    sub_1C4460050(v24, v25, &qword_1EC0B8D40, &unk_1C4F0F040);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 448);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_26:
      v42 = *(v1 + 16);
      sub_1C458C418();
      v1 = v43;
    }

    v27 = *(v1 + 16);
    if (v27 >= *(v1 + 24) >> 1)
    {
      sub_1C458C418();
      v1 = v44;
    }

    v28 = *(v0 + 384);
    v29 = *(v0 + 368);
    sub_1C4420C3C(*(v0 + 392), &qword_1EC0B8D40, &unk_1C4F0F040);
    *(v1 + 16) = v27 + 1;
    sub_1C44CD9E0(v28, v1 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v27, &qword_1EC0B8D40, &unk_1C4F0F040);
    *(v0 + 448) = v1;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 456) = v30;
    *v30 = v31;
    sub_1C4403468();

    return sub_1C49CAE60();
  }
}

void sub_1C49CF2A8()
{
  sub_1C49855C0((v0 + 2));
  v2 = v0[58];
  v3 = v0[42];
  sub_1C4F00158();
  v4 = v2;
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CD8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[41];
    v21 = v0[42];
    v8 = v0[40];
    sub_1C43FD084();
    v9 = sub_1C4415B1C();
    v22 = v9;
    *v1 = 136315138;
    v0[36] = v2;
    v10 = v2;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    v13 = sub_1C441D828(v11, v12, &v22);

    *(v1 + 4) = v13;
    sub_1C4403218(&dword_1C43F8000, v14, v15, "Error getting delta events due to: %s");
    sub_1C440962C(v9);
    sub_1C43FBE2C();
    sub_1C43FFD18();

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v17 = v0[41];
    v16 = v0[42];
    v18 = v0[40];

    (*(v17 + 8))(v16, v18);
  }

  sub_1C4412038();

  sub_1C43FC1B0();
  sub_1C43FD0C0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C49CF488(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LifeEventDeltaSourceIngestor(0);
  sub_1C448CEA4(a1 + *(v11 + 24), v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCB34(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v13 = sub_1C4F01108();

  *(inited + 48) = v13;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v14 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C49CF710(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFD548();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFCF18();
  v45 = sub_1C4EFD2F8();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v15 = swift_allocObject();
  v44 = xmmword_1C4F0D130;
  *(v15 + 16) = xmmword_1C4F0D130;
  if (qword_1EDDFED08 != -1)
  {
LABEL_22:
    swift_once();
  }

  v16 = type metadata accessor for Source();
  v17 = sub_1C442B738(v16, qword_1EDDFED10);
  v19 = *v17;
  v18 = v17[1];
  *(v15 + 32) = v19;
  *(v15 + 40) = v18;
  v46 = MEMORY[0x1E69E7CD0];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9CC8();
  sub_1C4EF9AD8();
  v21 = v20;
  (*(v4 + 8))(v7, v3);
  sub_1C4EF9AD8();
  v23 = v22;
  v24 = v43[1] + *(type metadata accessor for LifeEventDeltaSourceIngestor(0) + 24);
  v3 = *(v24 + *(type metadata accessor for PhaseStores() + 24));
  v25 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1C456902C(&qword_1EC0BDB70, qword_1C4F31048);
    inited = swift_initStackObject();
    *(inited + 16) = v44;
    *(inited + 32) = v45;
    *(inited + 40) = v14;
    *(inited + 48) = 1;
    *(inited + 56) = 0;
    *(inited + 64) = v15;
    *(inited + 72) = 0;
    *(inited + 80) = 0;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4D522D0(&unk_1F43D6E20);
    v28 = sub_1C48770F0(inited, v27, a2, &v46, v23, v21);
    v23 = v29;
    v30 = v28;

    swift_setDeallocating();
    sub_1C49E1700();
    v31 = *(v30 + 16);
    v4 = *(v25 + 16);
    v7 = (v4 + v31);
    if (__OFADD__(v4, v31))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v7 > *(v25 + 24) >> 1)
    {
      if (v4 <= v7)
      {
        v33 = v4 + v31;
      }

      else
      {
        v33 = v4;
      }

      sub_1C44D45E4(isUniquelyReferenced_nonNull_native, v33, 1, v25);
      v25 = v34;
    }

    if (*(v30 + 16))
    {
      v4 = *(v25 + 16);
      v7 = ((*(v25 + 24) >> 1) - v4);
      v35 = *(sub_1C4EFF0C8() - 8);
      if (v7 < v31)
      {
        goto LABEL_20;
      }

      v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = *(v35 + 72);
      swift_arrayInitWithCopy();

      if (v31)
      {
        v38 = *(v25 + 16);
        v39 = __OFADD__(v38, v31);
        v40 = v38 + v31;
        if (v39)
        {
          goto LABEL_21;
        }

        *(v25 + 16) = v40;
      }
    }

    else
    {

      if (v31)
      {
        goto LABEL_19;
      }
    }

    v41 = *(v30 + 16);
  }

  while (v41 >= a2);

  swift_bridgeObjectRelease_n();

  return v25;
}

uint64_t sub_1C49CFB4C()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C496D910;

  return sub_1C49CE4A8();
}

uint64_t sub_1C49CFC24(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for EventTriple(0) + 32));
  v2 = *v1;
  v3 = v1[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C44869B4(&v5, v2, v3);

  return 1;
}

void sub_1C49CFC90()
{
  sub_1C43FBD3C();
  v100 = v1;
  v101 = v2;
  v4 = v3;
  v5 = v0;
  v99 = v6;
  v7 = sub_1C456902C(&unk_1EC0C07E0, &unk_1C4F168F0);
  sub_1C43FBD18(v7);
  v9 = *(v8 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v98 = &v77 - v11;
  sub_1C43FBE44();
  v12 = sub_1C4EFDE18();
  v13 = sub_1C43FCDF8(v12);
  v96 = v14;
  v97 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v94 = v18 - v17;
  sub_1C43FBE44();
  v19 = sub_1C4EFDE68();
  v20 = sub_1C43FBD18(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v95 = v24 - v23;
  sub_1C43FBE44();
  v25 = sub_1C4EFDE88();
  v26 = sub_1C43FCDF8(v25);
  v28 = v27;
  v102 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBF38();
  v104 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  v103 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v43 = v42;
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = &v77 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v77 - v48;
  v93 = sub_1C4EFDE98();
  v50 = sub_1C43FCDF8(v93);
  v92 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FBCC4();
  v86 = v55 - v54;
  v107 = MEMORY[0x1E69E7CC0];
  v108 = MEMORY[0x1E69E7CC0];
  v56 = *(v4(0) + 24);
  v85 = v0;
  v90 = *(v0 + v56 + *(type metadata accessor for PhaseStores() + 24));
  sub_1C456902C(&unk_1EC0BAC00, &unk_1C4F11680);
  v57 = type metadata accessor for Source();
  sub_1C43FCF7C(v57);
  v59 = *(v58 + 72);
  v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1C4F0D130;
  sub_1C44073E4();
  sub_1C448CEA4(v5, v63 + v61, v64);
  SourceSet.init(arrayLiteral:)(&v106, v62);
  v79 = v106;
  v65 = *MEMORY[0x1E69A95C0];
  v66 = *(v28 + 104);
  v81 = v49;
  sub_1C4400844();
  v66();
  v80 = v47;
  sub_1C4400844();
  v66();
  v67 = v43;
  v78 = v43;
  sub_1C4400844();
  v66();
  v68 = v82;
  sub_1C4400844();
  v66();
  v69 = v83;
  sub_1C4400844();
  v66();
  v70 = v84;
  sub_1C4400844();
  v66();
  v71 = *(v102 + 16);
  v71(v103, v49, v25);
  v71(v104, v47, v25);
  v71(v87, v67, v25);
  v71(v88, v68, v25);
  v71(v89, v69, v25);
  v71(v91, v70, v25);
  sub_1C444113C();
  v72 = v94;
  sub_1C43FEAF8();
  sub_1C4EFDD38();
  (*(v96 + 104))(v72, *MEMORY[0x1E69A95A8], v97);
  sub_1C4EFDE28();
  v73 = v86;
  sub_1C4EFDEA8();
  v74 = *(v102 + 8);
  v74(v70, v25);
  v74(v69, v25);
  v74(v68, v25);
  v74(v78, v25);
  v74(v80, v25);
  v74(v81, v25);
  v75 = sub_1C4EFD678();
  v76 = v98;
  sub_1C440BAA8(v98, 1, 1, v75);
  v105[2] = v99;
  v105[3] = v85;
  v105[4] = &v108;
  v105[5] = &v107;
  v101(v73, v76, v100, v105);
  sub_1C4420C3C(v76, &unk_1EC0C07E0, &unk_1C4F168F0);
  (*(v92 + 8))(v73, v93);
  sub_1C43FE9F0();
}

uint64_t sub_1C49D0868()
{
  sub_1C43FBCD4();
  v1[43] = v0;
  v2 = sub_1C4F00978();
  v1[44] = v2;
  sub_1C43FCF7C(v2);
  v1[45] = v3;
  v5 = *(v4 + 64);
  v1[46] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B8D40, &unk_1C4F0F040);
  v1[47] = v6;
  sub_1C43FBD18(v6);
  v8 = *(v7 + 64);
  v1[48] = sub_1C43FBE7C();
  v9 = sub_1C456902C(&qword_1EC0C0568, &unk_1C4F3E9D8);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  v1[49] = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v1[50] = v12;
  sub_1C43FBD18(v12);
  v14 = *(v13 + 64) + 15;
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v15 = sub_1C4EF9CD8();
  v1[53] = v15;
  sub_1C43FCF7C(v15);
  v1[54] = v16;
  v18 = *(v17 + 64);
  v1[55] = sub_1C43FBE7C();
  v19 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v1[56] = v19;
  sub_1C43FBD18(v19);
  v21 = *(v20 + 64);
  v1[57] = sub_1C43FBE7C();
  v22 = type metadata accessor for Configuration();
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64);
  v1[58] = sub_1C43FBE7C();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v25, v26, v27);
}

uint64_t sub_1C49D0A4C()
{
  v21 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 344);
  *(v0 + 304) = 0;
  *(v0 + 312) = 0;
  type metadata accessor for LifeEventProvider();
  v5 = *(type metadata accessor for LifeEventSourceIngestor(0) + 20);
  *(v0 + 504) = v5;
  sub_1C448CEA4(v4 + v5, v1, type metadata accessor for Configuration);
  sub_1C49CA620(v1);
  sub_1C4EF9CC8();
  sub_1C49D1BC8(&qword_1EDDFCD70, MEMORY[0x1E6969530]);
  result = sub_1C4F01088();
  if (result)
  {
    v7 = *(v0 + 456);
    v19 = *(v0 + 448);
    v9 = *(v0 + 432);
    v8 = *(v0 + 440);
    v11 = *(v0 + 416);
    v10 = *(v0 + 424);
    v12 = *(v0 + 400);
    v13 = *(v0 + 408);
    (*(v9 + 16))(v11, *(v0 + 344), v10);
    v14 = *(v9 + 32);
    v14(v11 + *(v12 + 48), v8, v10);
    sub_1C4460050(v11, v13, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v15 = *(v12 + 48);
    v14(v7, v13, v10);
    v16 = *(v9 + 8);
    v16(v13 + v15, v10);
    sub_1C44CD9E0(v11, v13, &qword_1EC0B84B0, qword_1C4F0CDE0);
    v14(v7 + *(v19 + 36), v13 + *(v12 + 48), v10);
    v16(v13, v10);
    sub_1C49CA8D0(v7, __src);
    sub_1C4420C3C(*(v0 + 456), &qword_1EC0B84B8, &unk_1C4F0D4F0);

    memcpy((v0 + 16), __src, 0x58uLL);
    sub_1C4985564(v0 + 16, v0 + 104);
    *(v0 + 472) = 0;
    *(v0 + 480) = 0;
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 488) = v17;
    *v17 = v18;
    sub_1C43FDAE8(v17);

    return sub_1C49CAE60();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C49D0EA4()
{
  sub_1C43FBCD4();
  v2 = *(*v1 + 488);
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *(v5 + 496) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C49D0FA8()
{
  v36 = v0;
  v1 = *(v0 + 392);
  if (sub_1C44157D4(v1, 1, *(v0 + 376)) == 1)
  {
    v2 = *(v0 + 344);
    sub_1C49855C0(v0 + 104);
    sub_1C4EF9AE8();
    sub_1C4645C44();
    sub_1C49855C0(v0 + 16);
    sub_1C441CBD8();

    sub_1C43FC1B0();
    goto LABEL_5;
  }

  v3 = *(v0 + 496);
  v4 = *(v0 + 344);
  sub_1C44CD9E0(v1, *(v0 + 384), &qword_1EC0B8D40, &unk_1C4F0F040);
  result = sub_1C4ACEBEC();
  if (v3)
  {
    v6 = *(v0 + 384);
    sub_1C49855C0(v0 + 104);
    sub_1C49855C0(v0 + 16);
    sub_1C4420C3C(v6, &qword_1EC0B8D40, &unk_1C4F0F040);
    v7 = *(v0 + 456);
    v8 = *(v0 + 464);
    sub_1C4414D64();

    sub_1C43FBDA0();
LABEL_5:
    sub_1C43FD0C0();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 480);
  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v14 = *(v0 + 376);
  v13 = *(v0 + 384);
  *(v0 + 304) = v12;
  v15 = (v13 + *(v14 + 32));
  v16 = type metadata accessor for ActivityEventWithLocations(0);
  v17 = *(v16 + 24);
  v19 = v15[1];
  v18 = v15[2];
  v20 = *v15;
  sub_1C4B0565C(v0 + 232);
  if (*(v0 + 256))
  {
    sub_1C441D670((v0 + 232), v0 + 192);
    v29 = *(v0 + 216);
    v30 = *(v0 + 224);
    sub_1C4409678((v0 + 192), v29);
    v31 = (v15 + *(v16 + 28));
    v32 = v31[1];
    *(v0 + 288) = *v31;
    *(v0 + 296) = v32;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](58, 0xE100000000000000);
    v33 = *(v0 + 296);
    *(v0 + 272) = *(v0 + 288);
    *(v0 + 280) = v33;
    MEMORY[0x1C6940010](v20, v19);
    v34 = *(v0 + 272);
    v35 = *(v0 + 280);
    *(v0 + 508) = 1;
    (*(v30 + 24))(v34, v35, v0 + 508, v29, v30);

    sub_1C440962C((v0 + 192));
  }

  else
  {
    sub_1C4420C3C(v0 + 232, &qword_1EC0C3480, &unk_1C4F40B58);
  }

  v21 = *(v0 + 472);
  v22 = *(v0 + 384);
  v23 = *(v0 + 344) + *(v0 + 504);
  v24 = *(v23 + *(type metadata accessor for PhaseStores() + 24));
  sub_1C4B46D4C();

  result = sub_1C4420C3C(v22, &qword_1EC0B8D40, &unk_1C4F0F040);
  v25 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
    goto LABEL_18;
  }

  *(v0 + 312) = v25;
  *(v0 + 472) = v25;
  *(v0 + 480) = v12;
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 488) = v26;
  *v26 = v27;
  sub_1C43FDAE8();
  sub_1C43FD0C0();

  return sub_1C49CAE60();
}

uint64_t sub_1C49D1448()
{
  sub_1C43FBCD4();
  *(v0 + 328) = *(v0 + 496);
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  swift_willThrowTypedImpl();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C49D14D0()
{
  sub_1C49855C0((v0 + 13));
  sub_1C49855C0((v0 + 2));
  v1 = v0[62];
  v3 = v0[57];
  v2 = v0[58];
  sub_1C4414D64();

  sub_1C43FBDA0();

  return v4();
}

uint64_t sub_1C49D15A0(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LifeEventSourceIngestor(0);
  sub_1C448CEA4(a1 + *(v11 + 20), v10, type metadata accessor for Configuration);
  v10[*(v7 + 28)] = 1;
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCB34(v10, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v13 = sub_1C4F01108();

  *(inited + 48) = v13;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  v14 = *a2;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

uint64_t sub_1C49D1828()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C4707B70;

  return sub_1C49D0868();
}

uint64_t sub_1C49D18B0(uint64_t a1)
{
  v2 = *(a1 + 24);
  sub_1C44073E4();
  return sub_1C448CEA4(v1 + v3, v4, v5);
}

uint64_t sub_1C49D18FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhaseStores();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49D19A8()
{
  result = type metadata accessor for Source();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LifeEventDeltaProvider();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C49D1A74()
{
  result = sub_1C4EF9CD8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PhaseStores();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Source();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C49D1B18(uint64_t a1)
{
  result = sub_1C49D1BC8(qword_1EDDE1EB0, type metadata accessor for LifeEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1B70(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDE1E98, type metadata accessor for LifeEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1BC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C49D1C10(uint64_t a1)
{
  result = sub_1C49D1BC8(qword_1EDDDFD28, type metadata accessor for LifeEventDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1C68(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDDFD10, type metadata accessor for LifeEventDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1CC0(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDDFD18, type metadata accessor for LifeEventDeltaSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1D18(uint64_t a1)
{
  result = sub_1C49D1BC8(&qword_1EDDE1EA0, type metadata accessor for LifeEventSourceIngestor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C49D1E94(void *a1, void *a2, uint64_t a3)
{
  v7 = v3;
  v8 = *v3;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v9 = sub_1C4F00978();
  sub_1C43FCEE8(v9, qword_1EDE2E088);

  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;

    v14 = sub_1C4F01198();
    v16 = sub_1C441D828(v14, v15, v23);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1C43F8000, v10, v11, "StorageSystemStore(%s): collecting statistics", v12, 0xCu);
    sub_1C440962C(v13);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v17 = MEMORY[0x1E69E7CC8];
  v27 = MEMORY[0x1E69E7CC8];
  v25 = 0;
  v26 = 1;
  v18 = *(*(v7 + *a1) + *a2);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C44325E8();
  sub_1C4465390(a3, a2);

  v20 = v27;
  v24 = sub_1C456902C(&qword_1EC0C0DA0, "֞\t");
  v23[0] = v20;
  sub_1C4410FBC();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4412068();
  v21 = v17;
  if (v26)
  {
  }

  else
  {
    v24 = MEMORY[0x1E69E7360];
    v23[0] = v25;
    sub_1C4410FBC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442CE10();

    return v17;
  }

  return v21;
}

uint64_t sub_1C49D2120(void *a1, uint64_t a2)
{
  v5 = v2;
  v6 = *v2;
  if (qword_1EDDFFAF0 != -1)
  {
    sub_1C4400128();
  }

  v7 = sub_1C4F00978();
  sub_1C43FCEE8(v7, qword_1EDE2E088);

  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;

    v12 = sub_1C4F01198();
    v14 = sub_1C441D828(v12, v13, v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v8, v9, "StorageSystemStore(%s): collecting statistics", v10, 0xCu);
    sub_1C440962C(v11);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  v15 = MEMORY[0x1E69E7CC8];
  v25 = MEMORY[0x1E69E7CC8];
  v23 = 0;
  v24 = 1;
  v16 = *(v5[2] + *a1);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C44325E8();
  sub_1C4465390(a2, a1);

  v18 = v25;
  v22 = sub_1C456902C(&qword_1EC0C0DA0, "֞\t");
  v21[0] = v18;
  sub_1C4410FBC();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C4412068();
  v19 = v15;
  if (v24)
  {
  }

  else
  {
    v22 = MEMORY[0x1E69E7360];
    v21[0] = v23;
    sub_1C4410FBC();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C442CE10();

    return v15;
  }

  return v19;
}

void sub_1C49D2384(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DCD8);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (sub_1C43FEB2C(v10))
  {
    v11 = sub_1C43FCED0();
    *v11 = 0;
    _os_log_impl(&dword_1C43F8000, v9, v10, "LighthouseXPC: starting...", v11, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDEAB88 != -1)
  {
    sub_1C44073FC();
  }

  sub_1C43FCEE8(v2, qword_1EDE2D248);
  sub_1C44098F0(a1, v7);
  v12 = type metadata accessor for Configuration();
  sub_1C440BAA8(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1C45A6EE0(v7, v9);
  swift_endAccess();
  sub_1C45A6F50();
  sub_1C440F908();
  v13 = sub_1C49AA56C();
  v14 = qword_1EDE2D238;
  qword_1EDE2D238 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2D240 = [objc_allocWithZone(type metadata accessor for LighthouseXPC.Delegate()) init];
    v16 = qword_1EDE2D240;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (sub_1C43FEB2C(v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create Lighthouse XPC service", v18, 2u);
      sub_1C43FBE2C();
    }
  }
}

uint64_t sub_1C49D2608()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2D248);
  v1 = sub_1C442B738(v0, qword_1EDE2D248);
  v2 = type metadata accessor for Configuration();

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C49D2684(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  if (qword_1EDDEAB88 != -1)
  {
    swift_once();
  }

  v7 = sub_1C442B738(v3, qword_1EDE2D248);
  swift_beginAccess();
  sub_1C4466EEC(v7, v6);
  v8 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v6, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = type metadata accessor for GraphStore();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    GraphStore.init(config:)(v6);
    sub_1C49D2120(&OBJC_IVAR____TtC24IntelligencePlatformCore13GraphDatabase_pool, sub_1C49D3548);
    v12 = sub_1C4F00EC8();
    (a2)[2](a2, v12, 0);

    _Block_release(a2);
  }
}

void LighthouseXPC.Server.collectDBStats(completion:)(void (*a1)(void))
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  if (qword_1EDDEAB88 != -1)
  {
    v6 = sub_1C44073FC();
  }

  sub_1C440AEA4(v6, qword_1EDE2D248);
  sub_1C4466EEC(v2, v8);
  v9 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = type metadata accessor for GraphStore();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1C43FF3C0();
    if (v2)
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v13 = sub_1C4F00978();
      sub_1C43FCEE8(v13, qword_1EDE2DCD8);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CD8();
      if (sub_1C43FEB2C(v15))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v16, v17, "Lighthouse XPC Service: Stats: failed to create GraphStore");
        sub_1C43FBE2C();
      }

      sub_1C440E490();
      a1();
    }

    else
    {
      sub_1C4413454();
      sub_1C49D2120(v18, v19);
      sub_1C440E490();
      a1();
    }
  }
}

void sub_1C49D2AF8(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  if (qword_1EDDEAB88 != -1)
  {
    swift_once();
  }

  v7 = sub_1C442B738(v3, qword_1EDE2D248);
  swift_beginAccess();
  sub_1C4466EEC(v7, v6);
  v8 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v6, 1, v8) == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = type metadata accessor for GraphStore();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    GraphStore.init(config:)(v6);
    sub_1C487D36C();
    v12 = sub_1C4F00EC8();
    (a2)[2](a2, v12, 0);

    _Block_release(a2);
  }
}

void LighthouseXPC.Server.collectDBStatus(completion:)(void (*a1)(void))
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  if (qword_1EDDEAB88 != -1)
  {
    v6 = sub_1C44073FC();
  }

  sub_1C440AEA4(v6, qword_1EDE2D248);
  sub_1C4466EEC(v2, v8);
  v9 = type metadata accessor for Configuration();
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    __break(1u);
  }

  else
  {
    v10 = type metadata accessor for GraphStore();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1C43FF3C0();
    if (v2)
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v13 = sub_1C4F00978();
      sub_1C43FCEE8(v13, qword_1EDE2DCD8);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CD8();
      if (sub_1C43FEB2C(v15))
      {
        *sub_1C43FCED0() = 0;
        sub_1C4402B90(&dword_1C43F8000, v16, v17, "Lighthouse XPC Service: Status: failed to create GraphStore");
        sub_1C43FBE2C();
      }

      sub_1C440E490();
      a1();
    }

    else
    {
      sub_1C487D36C();
      sub_1C440E490();
      a1();
    }
  }
}

void sub_1C49D2F44(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
}

id LighthouseXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C49D2FF4(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0(v3);
  v5 = *(v4 + 64);
  sub_1C43FBC68();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  if (qword_1EDDEAB88 != -1)
  {
    v7 = sub_1C44073FC();
  }

  sub_1C440AEA4(v7, qword_1EDE2D248);
  sub_1C4466EEC(v3, v9);
  v10 = type metadata accessor for Configuration();
  result = sub_1C44157D4(v9, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = &v9[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C4467948(v9);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0();
      }

      v20 = sub_1C4F00978();
      sub_1C43FCEE8(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        *v23 = 0;
        _os_log_impl(&dword_1C43F8000, v21, v22, "LighthouseXPC: service is in no-op mode.", v23, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      sub_1C440F908();
      if (sub_1C446874C())
      {
        v16 = [objc_opt_self() interfaceWithProtocol_];
        sub_1C44059FC(v16, sel_setExportedInterface_);

        v17 = [objc_allocWithZone(type metadata accessor for LighthouseXPC.Server()) init];
        sub_1C44059FC(v17, sel_setExportedObject_);

        v29 = sub_1C49D3340;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43F3BF0;
        v18 = _Block_copy(&aBlock);
        sub_1C44059FC(v18, sel_setInterruptionHandler_);
        _Block_release(v18);
        v29 = sub_1C49D3360;
        v30 = 0;
        aBlock = MEMORY[0x1E69E9820];
        v26 = 1107296256;
        v27 = sub_1C4833DD0;
        v28 = &unk_1F43F3C18;
        v19 = _Block_copy(&aBlock);
        sub_1C44059FC(v19, sel_setInvalidationHandler_);
        _Block_release(v19);
        [a2 resume];
        return 1;
      }
    }

    return 0;
  }

  return result;
}

void sub_1C49D3380(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, v6, 2u);
    sub_1C43FBE2C();
  }
}

void sub_1C49D36C0(uint64_t a1)
{
  v5 = a1;
  v6 = *(a1 + 16);
  sub_1C440EFF8();
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C449AE50(v7 + v6, 1);
  v1 = *v2;
  v8 = (*(*v2 + 24) >> 1) - *(*v2 + 16);
  sub_1C44ECA38();
  if (v9 < v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9)
  {
    v11 = *(v1 + 16);
    v12 = __OFADD__(v11, v9);
    v13 = v11 + v9;
    if (v12)
    {
      __break(1u);
LABEL_13:
      v21 = (v10 + 64) >> 6;
      while (1)
      {
        v22 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_32;
        }

        if (v22 >= v21)
        {
          goto LABEL_7;
        }

        v23 = *(v8 + 8 * v22);
        ++v4;
        if (v23)
        {
          v19 = (v23 - 1) & v23;
          v20 = __clz(__rbit64(v23)) | (v22 << 6);
          v4 = v22;
          goto LABEL_18;
        }
      }
    }

    *(v1 + 16) = v13;
  }

  v5 = v34;
  if (v9 != v8)
  {
LABEL_7:
    v14 = sub_1C4404084();
    sub_1C449BB08(v14, v15, v16, v17, v18);
    *v2 = v1;
    return;
  }

LABEL_10:
  v3 = *(v1 + 16);
  v8 = v35;
  v10 = v36;
  v4 = v37;
  if (!v38)
  {
    goto LABEL_13;
  }

  v19 = (v38 - 1) & v38;
  v20 = __clz(__rbit64(v38)) | (v37 << 6);
  v21 = (v36 + 64) >> 6;
LABEL_18:
  v24 = (*(v5 + 48) + 16 * v20);
  v26 = *v24;
  v25 = v24[1];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_19:
  v33 = *(v1 + 24) >> 1;
  if (v33 < v3 + 1)
  {
    sub_1C443D664();
    v1 = v32;
    v33 = *(v32 + 24) >> 1;
  }

  while (1)
  {
    if (v3 >= v33)
    {
      *(v1 + 16) = v3;
      goto LABEL_19;
    }

    v27 = (v1 + 32 + 16 * v3);
    *v27 = v26;
    v27[1] = v25;
    ++v3;
    if (!v19)
    {
      break;
    }

LABEL_27:
    sub_1C49E1CDC();
    v31 = (*(v5 + 48) + ((v29 << 10) | (16 * v30)));
    v26 = *v31;
    v25 = v31[1];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  while (1)
  {
    v28 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      *(v1 + 16) = v3;
      goto LABEL_7;
    }

    v19 = *(v8 + 8 * v28);
    ++v4;
    if (v19)
    {
      v4 = v28;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

void sub_1C49D3924(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60888(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C456902C(&qword_1EC0B8848, &qword_1C4F40C80);
  sub_1C44606BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D39CC(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B608A0(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C456902C(&qword_1EC0B87E0, &qword_1C4F0DBD0);
  sub_1C44606BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3A70(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B608B8(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C456902C(&qword_1EC0B8888, &qword_1C4F0E990);
  sub_1C44606BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3BB4(uint64_t a1)
{
  v3 = *(a1 + 16);
  sub_1C440EFF8();
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60948(v4 + v3, 1);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  sub_1C44A1EDC();
  if (v9 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 4 * v8 + 32), (a1 + 32), 4 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v3);
  v12 = v10 + v3;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3C64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  sub_1C440EFF8();
  if (__OFADD__(v9, v6))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v7;
  sub_1C4B60948(v9 + v6, 1);
  v12 = *v4;
  if (v5 == v10)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v12;
      return;
    }

    __break(1u);
  }

  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  sub_1C44A1EDC();
  if (v16 < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  memcpy((v12 + 4 * v15 + 32), (v11 + 4 * v10), 4 * v6);
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v17 = *(v12 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v12 + 16) = v19;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1C49D3DA0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(v5 + v4, 1);
  v6 = *v2;
  if (!*(a1 + 16))
  {

    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  sub_1C44A1EDC();
  if (v10 < v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + 8 * v9 + 32), (a1 + 32), 8 * v4);

  if (!v4)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D3E5C(uint64_t a1)
{
  v4 = sub_1C4EFD548();
  v5 = sub_1C43FCDF8(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v14 = sub_1C43FBD18(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v19 = v17 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57 - v22;
  v24 = *(a1 + 16);
  sub_1C440EFF8();
  if (__OFADD__(v25, v24))
  {
    __break(1u);
    goto LABEL_10;
  }

  v71 = v26;
  v72 = v12;
  sub_1C4B609F0(v25 + v24, 1);
  v2 = *v1;
  v12 = *(v7 + 72);
  v27 = (*(*v1 + 24) >> 1) - *(*v1 + 16);
  v70 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  sub_1C461A084();
  if (v28 < v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v28)
  {
    v31 = *(v2 + 16);
    v32 = __OFADD__(v31, v28);
    v33 = v31 + v28;
    if (v32)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v2 + 16) = v33;
  }

  if (v28 != v27)
  {
    sub_1C449BB08(v73, v74, v75, v76, v77);
LABEL_8:
    *v1 = v2;
    return;
  }

LABEL_11:
  v24 = *(v2 + 16);
  v29 = v74;
  v64 = v73;
  v30 = v75;
  v27 = v76;
  v62 = v74;
  v58 = v75;
  if (v77)
  {
    v34 = (v77 - 1) & v77;
    v35 = __clz(__rbit64(v77)) | (v76 << 6);
    v61 = (v75 + 64) >> 6;
LABEL_19:
    (*(v7 + 16))(v23, *(v64 + 48) + v35 * v12, v4);
    v38 = 0;
LABEL_20:
    sub_1C440BAA8(v23, v38, 1, v4);
    v63 = (v7 + 16);
    v59 = (v7 + 8);
    v60 = (v7 + 32);
    v39 = v24;
    v65 = v19;
    v68 = v23;
    while (2)
    {
      v40 = v71;
      sub_1C44A2E4C(v23, v71);
      if (sub_1C44157D4(v40, 1, v4) != 1)
      {
        sub_1C49E1870(v40);
        v41 = *(v2 + 24);
        v67 = v41 >> 1;
        if ((v41 >> 1) < v39 + 1)
        {
          sub_1C458CB3C(v41 > 1, v39 + 1, 1, v2);
          v2 = v56;
          v67 = *(v56 + 24) >> 1;
        }

        v69 = v39;
        v66 = v2 + v70;
        v42 = v60;
        while (1)
        {
          v43 = sub_1C43FE990();
          sub_1C44A2E4C(v43, v44);
          if (sub_1C44157D4(v19, 1, v4) == 1)
          {
            break;
          }

          v45 = *v42;
          v46 = v72;
          v47 = sub_1C43FE990();
          v45(v47);
          v48 = v4;
          v49 = v69;
          if (v69 >= v67)
          {
            v53 = *v59;
            v54 = sub_1C43FE990();
            v55(v54);
            v4 = v48;
            v19 = v65;
            v23 = v68;
            goto LABEL_39;
          }

          sub_1C49E1870(v68);
          (v45)(v66 + v49 * v12, v46, v48);
          v4 = v48;
          if (!v34)
          {
            v23 = v68;
            v40 = v69;
            v19 = v65;
            while (1)
            {
              v50 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v50 >= v61)
              {
                v34 = 0;
                v52 = 1;
                goto LABEL_35;
              }

              v34 = *(v62 + 8 * v50);
              ++v27;
              if (v34)
              {
                v27 = v50;
                goto LABEL_34;
              }
            }

            __break(1u);
            goto LABEL_41;
          }

          v23 = v68;
          v40 = v69;
          v19 = v65;
LABEL_34:
          sub_1C4418084();
          (*v63)(v23, *(v64 + 48) + v51 * v12, v4);
          v52 = 0;
LABEL_35:
          v69 = v40 + 1;
          sub_1C440BAA8(v23, v52, 1, v4);
        }

        sub_1C49E1870(v19);
LABEL_39:
        v39 = v69;
        *(v2 + 16) = v69;
        continue;
      }

      break;
    }

LABEL_41:
    sub_1C49E1870(v23);
    sub_1C449BB08(v64, v62, v58, v27, v34);
    sub_1C49E1870(v40);
    goto LABEL_8;
  }

LABEL_14:
  v61 = (v30 + 64) >> 6;
  while (1)
  {
    v36 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v36 >= ((v30 + 64) >> 6))
    {
      v34 = 0;
      v38 = 1;
      goto LABEL_20;
    }

    v37 = *(v29 + 8 * v36);
    ++v27;
    if (v37)
    {
      v34 = (v37 - 1) & v37;
      v35 = __clz(__rbit64(v37)) | (v36 << 6);
      v27 = v36;
      goto LABEL_19;
    }
  }

  __break(1u);
}

uint64_t sub_1C49D4318(uint64_t a1)
{
  v3 = sub_1C4428DA0(a1);
  v4 = sub_1C4428DA0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1C4429970(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1C4CD7160(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1C49D4418(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60A50(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C44D3DF4();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D4544(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60A98(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C456902C(&qword_1EC0B8C30, &qword_1C4F0E068);
  sub_1C44606BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1C49D4750(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60B28(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C456902C(&qword_1EC0B8D20, &unk_1C4F40CC0);
  sub_1C44606BC();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C49D4838(uint64_t a1)
{
  v6 = v1;
  v7 = a1;
  v8 = sub_1C49E17D0(a1);
  v9 = *v1;
  v10 = sub_1C4428DA0();
  v11 = __OFADD__(v10, v8);
  result = v10 + v8;
  if (v11)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C4429970(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_1C461A700(&v27, (v3 + 8 * v13 + 32), (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v13, v7);
  if (result < v8)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_7:
    result = sub_1C449BB08(v27, v28, v29, v30, v31);
    *v6 = v2;
    return result;
  }

LABEL_10:
  v7 = *(v3 + 16);
  v8 = v27;
  v3 = v28;
  v4 = v30;
  v25 = v29;
  v5 = v31;
  if (v27 < 0)
  {
LABEL_14:
    if (!sub_1C4F02148())
    {
      goto LABEL_7;
    }

    sub_1C45A2D54();
    result = swift_dynamicCast();
    v17 = v26;
    goto LABEL_22;
  }

  if (v31)
  {
LABEL_20:
    sub_1C49E1CDC();
    v17 = *(*(v8 + 48) + ((v19 << 9) | (8 * v20)));
    result = v17;
  }

  else
  {
    while (1)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_44;
      }

      if (v18 >= ((v29 + 64) >> 6))
      {
        break;
      }

      v5 = *(v28 + 8 * v18);
      ++v4;
      if (v5)
      {
        v4 = v18;
        goto LABEL_20;
      }
    }

    v17 = 0;
    v5 = 0;
  }

  v30 = v4;
  v31 = v5;
LABEL_22:
  if (!v17)
  {
    goto LABEL_7;
  }

LABEL_23:
  if (v7 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1C4F016D8();
  }

  v2 = *v6;
  v21 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v24 = *v6 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v7 >= v21)
    {
      *(v24 + 16) = v7;
      goto LABEL_23;
    }

    *(v24 + 32 + 8 * v7++) = v17;
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_1C4F02148())
    {
      goto LABEL_41;
    }

    sub_1C45A2D54();
    result = swift_dynamicCast();
    v17 = v26;
LABEL_37:
    if (!v17)
    {
LABEL_41:
      *(v24 + 16) = v7;
      goto LABEL_7;
    }
  }

  if (v5)
  {
LABEL_33:
    v23 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v17 = *(*(v8 + 48) + ((v4 << 9) | (8 * v23)));
    result = v17;
LABEL_34:
    v27 = v8;
    v28 = v3;
    v29 = v25;
    v30 = v4;
    v31 = v5;
    goto LABEL_37;
  }

  while (1)
  {
    v22 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v22 >= ((v25 + 64) >> 6))
    {
      v17 = 0;
      v5 = 0;
      goto LABEL_34;
    }

    v5 = *(v3 + 8 * v22);
    ++v4;
    if (v5)
    {
      v4 = v22;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void sub_1C49D4CB0(uint64_t a1)
{
  v4 = sub_1C4405E94(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1C4B60BD0(v4, 1);
  sub_1C444345C();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1C4416278();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1C44D3DF4();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  sub_1C445AC08();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1C49D4D44()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 1712);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 1720) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49D4E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v108 = *(v12 + 1720);
  v102 = *(v12 + 1696);
  v103 = *(v12 + 1704);
  v97 = *(v12 + 1664);
  v98 = *(v12 + 1672);
  v112 = *(v12 + 1656);
  v95 = *(v12 + 1648);
  v13 = *(v12 + 1624);
  LODWORD(v114) = *(v12 + 2573);
  v14 = *(v12 + 1576);
  v15 = *(v12 + 1536);
  v16 = *(v12 + 1296);
  v17 = *(v12 + 1256);
  sub_1C49E1C9C();
  v105 = *(v12 + 944);
  v104 = *(v12 + 808);
  v106 = *(v12 + 664);
  v107 = *(v12 + 792);
  v115 = *(v12 + 544);
  v94 = *(v12 + 1632);
  v18 = *(v12 + 1632);
  sub_1C49E1A08(*(v12 + 1680));
  v19 = *(v12 + 536);
  sub_1C4425DD8();
  sub_1C4471988(v20, v16);
  sub_1C4EFD538();
  sub_1C441346C();
  v111 = v21;
  sub_1C4471988(v19, v14);
  v22 = sub_1C49E1DA8();
  sub_1C440AEDC();
  v23 = sub_1C43FE5F8();
  sub_1C4471988(v23, v24);
  v25 = sub_1C44341B0();
  v95(v25);
  v26 = *(v18 + 24);
  v27 = sub_1C445BDD4();
  sub_1C4471988(v27, v28);
  sub_1C44252A4();
  v29 = sub_1C445BA88();
  sub_1C4471988(v29, v30);
  sub_1C49E1A60();
  sub_1C448177C();
  sub_1C44AB194(v31);
  v32 = sub_1C44829A4(v14, v16);
  sub_1C440741C();
  v113 = v33;
  sub_1C447E970(v14, v34);
  v35 = sub_1C441E0A4();
  v97(v35);
  *(v22 + *(v18 + 40)) = v32;
  sub_1C445BFC0();
  v36 = *(v16 + *(v109 + 28));

  sub_1C441FE54();
  v99 = v37;
  sub_1C447E970(v16, v38);
  sub_1C443465C();
  v39 = sub_1C449DB04();
  sub_1C4471988(v39, v40);
  v41 = sub_1C4404C28();
  sub_1C4471988(v41, v42);
  sub_1C4EFD538();
  v43 = sub_1C49E1D88();
  v44 = sub_1C441D310(v43, v101[8]);
  sub_1C4471988(v44, v43);
  v45 = v101[5];
  v46 = sub_1C445BDD4();
  sub_1C4472068(v46, v47);
  v48 = sub_1C447CC40(v101[6]);
  v102(v48);
  *(v43 + v101[7]) = v114;
  sub_1C49E1988(v109);
  sub_1C447E970(v16, v99);
  sub_1C44888A0();
  v49 = sub_1C449DB04();
  sub_1C4471988(v49, v50);
  v51 = sub_1C4404C28();
  sub_1C4471988(v51, v52);
  v53 = type metadata accessor for SoftwareMatcher();
  v110[32] = v53;
  sub_1C43FC670();
  v110[33] = sub_1C4471C58(v54, v55);
  v56 = sub_1C4422F90(v110 + 29);
  sub_1C440183C(v56);
  v57 = sub_1C43FE5F8();
  sub_1C4472068(v57, v58);
  v59 = *(v53 + 20);
  v60 = sub_1C445BDD4();
  sub_1C4472068(v60, v61);
  sub_1C49E195C();
  sub_1C49E1B30();
  v110[37] = v104;
  sub_1C44174EC();
  v110[38] = sub_1C4471C58(v62, v63);
  v64 = sub_1C4422F90(v110 + 34);
  sub_1C444B1FC(v64);
  v66 = sub_1C441AFB8(v105, v65);
  sub_1C4471988(v66, v67);
  v68 = sub_1C4422B5C();
  sub_1C4471988(v68, v69);
  *(v14 + *(v104 + 28)) = v114;
  v70 = sub_1C4EF9E48();
  sub_1C44803E0(v70, v71, v72, v70);
  sub_1C49E1AC0();
  if (v108)
  {
  }

  v73 = *(v12 + 1624);
  sub_1C446BCB0();
  v74 = *(v12 + 1536);
  v75 = *(v12 + 1256);
  v76 = *(v12 + 944);
  v77 = *(v12 + 808);
  v78 = *(v12 + 792);
  sub_1C4408D30();
  sub_1C447E970(v79, v80);
  sub_1C4410FD4();
  sub_1C447E970(v75, v81);
  v82 = sub_1C4EFF1C8();
  sub_1C4404528(v82);
  sub_1C440E538();
  sub_1C49E19B0();
  sub_1C4485FF0();
  v83 = sub_1C43FD258();
  sub_1C447E970(v83, v84);
  *(v111 + *(v113 + 24)) = v114;
  sub_1C4419C7C();
  v96 = *(v12 + 712);
  sub_1C440EE38();
  v100 = *(v12 + 688);
  sub_1C4400850();

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12);
}

uint64_t sub_1C49D5630()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v5 = *(v4 + 1816);
  v6 = *v1;
  sub_1C43FBDAC();
  *v7 = v6;
  *(v8 + 1824) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C49D5728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C43FBDC8();
  sub_1C4404B08();
  v169 = *(v12 + 1824);
  v159 = *(v12 + 1800);
  v161 = *(v12 + 1808);
  v149 = *(v12 + 1776);
  v143 = *(v12 + 1768);
  v133 = *(v12 + 1760);
  v130 = *(v12 + 1752);
  v13 = *(v12 + 1728);
  v176 = *(v12 + 2573);
  v14 = *(v12 + 1576);
  v15 = *(v12 + 1296);
  v164 = *(v12 + 1232);
  v167 = *(v12 + 1512);
  v171 = *(v12 + 1024);
  v16 = *(v12 + 1016);
  v17 = *(v12 + 960);
  v146 = *(v12 + 544);
  v126 = *(v12 + 1736);
  v18 = *(v12 + 1736);
  v153 = *(v12 + 1784);
  v156 = *(v12 + 1784);
  v19 = *(v12 + 536);
  v138 = v19;
  sub_1C4488440();
  sub_1C4471988(v20, v15);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C445E900();
  sub_1C4471988(v19, v14);
  *(v13 + 176) = v126;
  v21 = sub_1C4422F90((v13 + 152));
  sub_1C440AEDC();
  sub_1C4471988(v15, v21);
  v22 = sub_1C44341B0();
  v135 = v17;
  v130(v22);
  v23 = v18[6];
  v24 = sub_1C44AB274();
  sub_1C4471988(v24, v25);
  sub_1C44252A4();
  sub_1C4471988(v15, v26);
  v27 = *(v15 + *(v171 + 32));
  sub_1C448177C();
  sub_1C44AB194(v28);
  v29 = sub_1C44CD058();
  v31 = sub_1C44829A4(v29, v30);
  sub_1C440741C();
  sub_1C447E970(v14, v32);
  v33 = sub_1C441E0A4();
  v143(v33);
  *(v21 + v18[10]) = v31;
  sub_1C445BFC0();
  v34 = *(v15 + *(v171 + 28));

  sub_1C441FE54();
  v150 = v35;
  sub_1C447E970(v15, v36);
  *(v21 + v18[12]) = v34;
  *(v21 + v18[13]) = 0;
  v37 = v146;
  v38 = sub_1C43FD388();
  sub_1C4471988(v38, v39);
  sub_1C4455954();
  sub_1C4471988(v40, v41);
  _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
  *(v13 + 216) = v153;
  v42 = sub_1C4422F90((v13 + 192));
  v43 = sub_1C4426CB8(v42, v156[8]);
  sub_1C4471988(v43, v42);
  sub_1C4472068(v14, v42 + v156[5]);
  v159(v42 + v156[6], v16, v135);
  *(v42 + v156[7]) = v176;
  sub_1C445136C(v171);
  sub_1C447E970(v15, v150);
  *(v42 + v156[9]) = v16;
  sub_1C4471988(v146, v164);
  sub_1C4471988(v138, v167);
  LOBYTE(v180[0]) = v176;
  *(v13 + 256) = type metadata accessor for LocationMatcher();
  sub_1C441CC08();
  *(v13 + 264) = sub_1C4471C58(v44, v45);
  v46 = sub_1C4422F90((v13 + 232));
  LocationMatcher.init(stores:source:pipelineType:)(v164, v167, v180, v46);
  if (v169)
  {
    v47 = *(v12 + 1728);
    sub_1C47C41F8((v13 + 232));
    sub_1C440962C((v13 + 192));
    sub_1C440962C((v13 + 152));
    sub_1C440962C((v47 + 112));
    sub_1C4414D90();
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4();
    }

    v48 = sub_1C4F00978();
    sub_1C43FCEE8(v48, qword_1EDE2DE10);
    v49 = sub_1C4F01CD8();
    v50 = v169;
    v51 = sub_1C4F00968();

    if (os_log_type_enabled(v51, v49))
    {
      sub_1C4401E44();
      v180[0] = sub_1C440E550();
      *v13 = 136315138;
      *v138 = v169;
      v52 = v169;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v53 = sub_1C49E1944();
      sub_1C441D828(v53, v54, v180);
      sub_1C4410930();
      *(v13 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v51, v49, "Linker could not construct children, creating empty list due to: %s", v13, 0xCu);
      sub_1C440AEF4();
      sub_1C43FEA20();
    }

    v55 = *(v12 + 1592);
    v56 = *(v12 + 544);
    v57 = *(v12 + 536);
    v58 = *(v12 + 528);

    v59 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v136 = *(v12 + 1800);
    v139 = *(v12 + 1808);
    v127 = *(v12 + 1776);
    v125 = *(v12 + 1768);
    v172 = *(v12 + 1760);
    v124 = *(v12 + 1752);
    v174 = *(v12 + 2573);
    v60 = *(v12 + 1576);
    v61 = *(v12 + 1296);
    v162 = *(v12 + 1024);
    v62 = *(v12 + 1016);
    v63 = *(v12 + 960);
    v147 = *(v12 + 1504);
    v151 = *(v12 + 928);
    v141 = *(v12 + 1224);
    v144 = *(v12 + 808);
    v157 = *(v12 + 776);
    v154 = *(v12 + 648);
    v177 = *(v12 + 544);
    v64 = (*(v12 + 1728) + 296);
    v65 = *(v12 + 1728);
    v131 = sub_1C44885B0(v12 + 1736);
    v66 = *(v12 + 536);
    v165 = v66;
    sub_1C4471988(v67, v61);
    sub_1C4EFD538();
    sub_1C441346C();
    sub_1C4471988(v66, v60);
    *v64 = v123;
    v68 = sub_1C4422F90(&v65[17]);
    sub_1C440AEDC();
    v69 = sub_1C43FD018();
    sub_1C4471988(v69, v70);
    v71 = v37[5];
    sub_1C443E1E0();
    v124();
    sub_1C4471988(v60, v68 + v37[6]);
    *(v68 + v37[7]) = 0;
    sub_1C4471988(v61, v68 + v37[8]);
    v72 = *(v61 + *(v162 + 32));
    sub_1C448177C();
    *(v68 + v37[9]) = v73;
    v74 = sub_1C44829A4(v60, v61);
    sub_1C440741C();
    sub_1C447E970(v60, v75);
    v76 = sub_1C441E0A4();
    v125(v76);
    *(v68 + v37[10]) = v74;
    *(v68 + v37[11]) = v174;
    v77 = *(v61 + *(v162 + 28));

    sub_1C441FE54();
    v128 = v78;
    sub_1C447E970(v61, v79);
    *(v68 + v37[12]) = v77;
    *(v68 + v37[13]) = 0;
    sub_1C4471988(v177, v61);
    v80 = sub_1C4402E08();
    sub_1C4471988(v80, v81);
    sub_1C4EFD538();
    v65[21] = v131;
    v82 = sub_1C4422F90(&v65[19].n128_i64[1]);
    v83 = sub_1C4426CB8(v82, *(v131.n128_u64[0] + 32));
    sub_1C4471988(v83, v82);
    v84 = *(v131.n128_u64[0] + 20);
    v85 = sub_1C445BDD4();
    sub_1C4472068(v85, v86);
    v87 = sub_1C447CC40(*(v131.n128_u64[0] + 24));
    v136(v87);
    *(v82 + *(v131.n128_u64[0] + 28)) = v174;
    sub_1C445136C(v162);
    sub_1C447E970(v61, v128);
    *(v82 + *(v131.n128_u64[0] + 36)) = v62;
    sub_1C4471988(v177, v61);
    v88 = sub_1C4402E08();
    sub_1C4471988(v88, v89);
    v90 = type metadata accessor for SoftwareMatcher();
    v65[23].n128_u64[1] = v90;
    sub_1C43FC670();
    v65[24].n128_u64[0] = sub_1C4471C58(v91, v92);
    v93 = sub_1C4422F90(&v65[22]);
    sub_1C440183C(v93);
    sub_1C4472068(v61, v93);
    v94 = *(v90 + 20);
    v95 = sub_1C445BDD4();
    sub_1C4472068(v95, v96);
    *(v93 + *(v90 + 24)) = v174;
    sub_1C4471988(v177, v141);
    sub_1C4471988(v165, v147);
    v65[26].n128_u64[0] = v144;
    sub_1C44174EC();
    v65[26].n128_u64[1] = sub_1C4471C58(v97, v98);
    v178 = sub_1C4422F90(&v65[24].n128_i64[1]);
    v99 = sub_1C441AFB8(v151, v144[6]);
    sub_1C4471988(v99, v100);
    sub_1C4471988(v147, v141 + v144[5]);
    *(v141 + v144[7]) = v174;
    v101 = sub_1C4EF9E48();
    sub_1C44803E0(v101, v102, v103, v101);
    sub_1C49E1AC0();
    v59 = *(v12 + 1728);
    v55 = *(v12 + 1592);
    v104 = *(v12 + 1504);
    v105 = *(v12 + 1224);
    v106 = *(v12 + 928);
    v107 = *(v12 + 808);
    v108 = *(v12 + 776);
    v56 = *(v12 + 544);
    v57 = *(v12 + 536);
    v58 = *(v12 + 528);
    sub_1C440741C();
    sub_1C447E970(v109, v110);
    sub_1C441FE54();
    sub_1C447E970(v105, v111);
    v112 = sub_1C4EFF1C8();
    sub_1C440BAA8(v108, 0, 1, v112);
    sub_1C4482F3C(v108, v106 + *(v107 + 32));
    sub_1C440E538();
    sub_1C4472068(v106, v178);
  }

  sub_1C447E970(v56, type metadata accessor for PhaseStores);
  sub_1C440741C();
  sub_1C447E970(v57, v113);
  *(v58 + *(v55 + 24)) = v59;
  sub_1C4419C7C();
  sub_1C44806D0();
  v129 = *(v12 + 696);
  v132 = *(v12 + 688);
  v134 = *(v12 + 680);
  v137 = *(v12 + 672);
  v140 = *(v12 + 664);
  v142 = *(v12 + 656);
  v145 = *(v12 + 648);
  v148 = *(v12 + 640);
  v152 = *(v12 + 632);
  v155 = *(v12 + 624);
  v158 = *(v12 + 616);
  v160 = *(v12 + 608);
  v163 = *(v12 + 600);
  v166 = *(v12 + 592);
  v168 = *(v12 + 584);
  v170 = *(v12 + 576);
  v173 = *(v12 + 568);
  v175 = *(v12 + 560);
  v179 = *(v12 + 552);

  sub_1C43FBDA0();
  sub_1C43FEA3C();

  return v115(v114, v115, v116, v117, v118, v119, v120, v121, a9, a10, a11, a12);
}