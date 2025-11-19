uint64_t objectdestroy_102Tm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v4 = *(v0 + 4);
  v3 = *(v0 + 5);
  v5 = type metadata accessor for ItemPropagationResult();
  v6 = *(sub_1CF9E75D8() - 8);
  v40 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v7 = v40 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v41 = type metadata accessor for ItemState();
  v45 = (v7 + *(*(v41 - 8) + 80)) & ~*(*(v41 - 8) + 80);
  v44 = *(*(v41 - 8) + 64);
  v46 = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = type metadata accessor for FileItemVersion();
  v43 = *(*(v9 - 1) + 80);
  v42 = *(*(v9 - 1) + 64);
  v10 = *(v0 + 6);

  v11 = &v0[v40];
  if (!(*(*(v5 - 8) + 48))(&v0[v40], 1, v5))
  {
    (*(*(v2 - 8) + 8))(v11, v2);
    v12 = &v11[*(v5 + 44)];
    v13 = *(v12 + 3);
    if (v13 >> 60 != 15 && (v13 & 0xF000000000000000) != 0xB000000000000000)
    {
      sub_1CEFE4714(*(v12 + 2), v13);
    }
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(&v0[v45], AssociatedTypeWitness);
  v15 = *&v0[v45 + 8 + *(v41 + 36)];

  v16 = &v0[v45 + *(v41 + 40)];
  v17 = type metadata accessor for ItemMetadata();
  v18 = v17[7];
  v19 = sub_1CF9E5CF8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 8);
  v21(&v16[v18], v19);
  v21(&v16[v17[8]], v19);
  v22 = *&v16[v17[14] + 8];

  v23 = v17[30];
  if (!(*(v20 + 48))(&v16[v23], 1, v19))
  {
    v21(&v16[v23], v19);
  }

  v24 = *&v16[v17[31]];

  v25 = *&v16[v17[33]];

  v26 = &v16[v17[34]];
  v27 = v26[1];
  if (v27 >> 60 != 15)
  {
    sub_1CEFE4714(*v26, v27);
  }

  v28 = (v45 + v44 + v43) & ~v43;
  v29 = (v42 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = *&v16[v17[38] + 8];

  (*(*(v46 - 8) + 8))(&v0[v28]);
  v33 = *&v0[v28 + v9[13]];

  (*(*(v47 - 8) + 8))(&v0[v28 + v9[14]]);
  v34 = *&v0[v28 + v9[15]];

  v35 = *&v0[v28 + 8 + v9[16]];

  v36 = *&v0[v30];

  v37 = *&v0[v31];

  v38 = *&v0[((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1CF61047C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  type metadata accessor for ItemPropagationResult();
  v6 = *(sub_1CF9E75D8() - 8);
  v16 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v7 = v16 + *(v6 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for ItemState() - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(type metadata accessor for FileItemVersion() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F2B58(a1, *(v1 + 48), v1 + v16, v1 + v9, v1 + v12, *(v1 + v13), *(v1 + v14), *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1CF61070C(void *a1, char a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for ItemState() - 8);
  v9 = (*(v8 + 80) + 80) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v11 = *(type metadata accessor for FileItemVersion() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5EF074(a1, a2 & 1, v2[6], v2[7], v2[8], v2[9], v2 + v9, v2 + v12, *(v2 + v13), (v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), (v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_10Tm_0(void (*a1)(void))
{
  v3 = *(v1 + 24);

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1CF610994(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  sub_1CF1A91AC(a1, v6);
  v3(v6, v4, 0, 0, 0);
  return sub_1CEFCCC44(v6, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t objectdestroy_112Tm()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = (type metadata accessor for ItemState() - 8);
  v7 = (*(*v6 + 80) + 64) & ~*(*v6 + 80);
  v36 = *(*v6 + 64);
  v38 = swift_getAssociatedTypeWitness();
  v39 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for FileItemVersion();
  v9 = *(*(v8 - 1) + 80);
  v35 = *(*(v8 - 1) + 64);
  v10 = *(v0 + 48);

  v37 = v7;
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7, AssociatedTypeWitness);
  v11 = *(v0 + v7 + v6[11] + 8);

  v12 = v0 + v7 + v6[12];
  v13 = type metadata accessor for ItemMetadata();
  v14 = v13[7];
  v15 = sub_1CF9E5CF8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 8);
  v17(v12 + v14, v15);
  v17(v12 + v13[8], v15);
  v18 = *(v12 + v13[14] + 8);

  v19 = v13[30];
  if (!(*(v16 + 48))(v12 + v19, 1, v15))
  {
    v17(v12 + v19, v15);
  }

  v20 = *(v12 + v13[31]);

  v21 = *(v12 + v13[33]);

  v22 = (v12 + v13[34]);
  v23 = v22[1];
  if (v23 >> 60 != 15)
  {
    sub_1CEFE4714(*v22, v23);
  }

  v24 = (v37 + v36 + v9) & ~v9;
  v25 = (v35 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v12 + v13[38] + 8);

  (*(*(v38 - 8) + 8))(v0 + v24);
  v28 = *(v0 + v24 + v8[13]);

  (*(*(v39 - 8) + 8))(v0 + v24 + v8[14]);
  v29 = *(v0 + v24 + v8[15]);

  v30 = *(v0 + v24 + v8[16] + 8);

  v31 = *(v0 + v25);

  v32 = *(v0 + v26);

  v33 = *(v0 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1CF610E5C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(type metadata accessor for ItemState() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v9 = *(type metadata accessor for FileItemVersion() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1CF5F23D0(a1, *(v1 + 48), *(v1 + 56), v1 + v7, v1 + v10, *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_26Tm()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1CF6110D8(void *a1)
{
  v2 = v1[3];
  v13 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v8 = v1[8];
  v7 = v1[9];
  v10 = a1[3];
  v9 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  return sub_1CF60169C(v11, v7, v3, v4, v5, v6, v8, v13, v10, v2, v9);
}

uint64_t sub_1CF611164()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 560);
  v3 = type metadata accessor for JobLockRule();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6 + 22;
  swift_beginAccess();
  sub_1CEFCCBDC((v0 + 56), v14, &unk_1EC4C1BE0, &unk_1CF9FD400);
  v8 = *(v0 + 15);
  v9 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v7, &v0[v9], AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  v11 = sub_1CF052B3C(v14, v8, v7);
  (*(v4 + 8))(v7, v3);
  sub_1CEFCCC44(v14, &unk_1EC4C1BE0, &unk_1CF9FD400);
  return v11;
}

void sub_1CF61135C(uint64_t a1)
{
  sub_1CF6116A0();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 16);
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1CF611408(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 16);
  v7 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_27;
  }

  v8 = v7 | 1;
  if ((v7 | 1) <= 3)
  {
    v9 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = *&a1[v8];
      if (v12)
      {
        goto LABEL_23;
      }
    }

LABEL_27:
    v16 = a1[v7];
    if (v16 >= 2)
    {
      return (v16 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v11)
  {
    goto LABEL_27;
  }

  v12 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_27;
  }

LABEL_23:
  v14 = (v12 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return (v15 | v14) + 255;
}

void sub_1CF611530(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 32);
  v8 = *(a4 + 16);
  v9 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 | 1;
  if (a3 < 0xFF)
  {
    v13 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
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

LABEL_34:
      a1[v9] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v10 <= 3)
  {
    v11 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v14 = a2 - 255;
  bzero(a1, v9 | 1);
  if (v10 <= 3)
  {
    v15 = (v14 >> 8) + 1;
  }

  else
  {
    v15 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v14;
    if (v13 > 1)
    {
LABEL_21:
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
      goto LABEL_21;
    }
  }

  if (v13)
  {
    a1[v10] = v15;
  }
}

void sub_1CF6116A0()
{
  if (!qword_1EDEA3370)
  {
    sub_1CF6116E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3370);
    }
  }
}

void sub_1CF6116E8()
{
  if (!qword_1EDEA3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    v0 = sub_1CF9E75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3368);
    }
  }
}

unint64_t sub_1CF611768()
{
  result = qword_1EDEA3918;
  if (!qword_1EDEA3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3918);
  }

  return result;
}

unint64_t sub_1CF611848(unint64_t result, unint64_t a2)
{
  if (a2 > result)
  {
    return a2;
  }

  return result;
}

uint64_t sub_1CF611880(uint64_t result, char a2)
{
  if (a2)
  {
    *v2 |= result;
  }

  return result;
}

uint64_t sub_1CF611894(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v9 = a1[1];
  v8[9] = *a1;
  v8[10] = v9;
  v10 = a1[3];
  v8[11] = a1[2];
  v8[12] = v10;
  return sub_1CF0525C8(a2, a3, a4);
}

uint64_t sub_1CF611904(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, NSObject *a11, uint64_t a12, uint64_t a13)
{
  v144 = a8;
  v143 = a7;
  v142 = a5;
  v149 = a4;
  v153 = a3;
  v133 = a2;
  v152 = a13;
  v15 = *a6;
  v16 = *(*a6 + 96);
  v17 = *(*a6 + 80);
  v141 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v156 = *(AssociatedTypeWitness - 8);
  v157 = AssociatedTypeWitness;
  v19 = *(v156 + 64);
  v20 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v122 = &v122 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v127 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v122 - v24;
  v138 = sub_1CF9E6118();
  v155 = *(v138 - 8);
  v25 = *(v155 + 64);
  v26 = MEMORY[0x1EEE9AC00](v138);
  v125 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v154 = &v122 - v28;
  *&v161 = v17;
  *(&v161 + 1) = v17;
  *&v162 = v16;
  *(&v162 + 1) = v16;
  v29 = type metadata accessor for ItemChange();
  v124 = sub_1CF9E75D8();
  v123 = *(v124 - 8);
  v30 = *(v123 + 64);
  v31 = MEMORY[0x1EEE9AC00](v124);
  v147 = (&v122 - v32);
  v151 = v29;
  v140 = *(v29 - 8);
  v33 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v122 - v34;
  *&v35 = v17;
  *(&v35 + 1) = *(v15 + 88);
  v163 = a6;
  *&v36 = v16;
  *(&v36 + 1) = *(v15 + 104);
  v162 = v36;
  v161 = v35;
  v160 = type metadata accessor for PersistenceTrigger();
  isa = v160[-1].isa;
  v37 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v160);
  v39 = &v122 - v38;
  v128 = v17;
  v129 = v16;
  v40 = type metadata accessor for SnapshotItem();
  v41 = sub_1CF9E75D8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v122 - v44;
  v46 = *(v42 + 16);
  v148 = a1;
  v46(&v122 - v44, a1, v41);
  LODWORD(v40) = (*(*(v40 - 8) + 48))(v45, 1, v40);
  (*(v42 + 8))(v45, v41);
  v150 = a9;
  if (v40 == 1)
  {
    if ((a9 & 0x80000000000) != 0)
    {
      v48 = *(**(*(v163 + 4) + 16) + 920);

      v48(v49);
    }
  }

  else
  {
    v50 = v157;
    if ((a9 & 0x80000000000) != 0)
    {
      (*(v156 + 16))(v39, v133, v157);
      v51 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v53 = swift_getAssociatedConformanceWitness();
      *&v161 = v50;
      *(&v161 + 1) = v51;
      *&v162 = AssociatedConformanceWitness;
      *(&v162 + 1) = v53;
      type metadata accessor for ReconciliationID();
      swift_storeEnumTagMultiPayload();
      v54 = v160;
      swift_storeEnumTagMultiPayload();
      (*(*v163 + 312))(v39);
      v47 = (*(isa + 1))(v39, v54);
    }
  }

  v55 = a12;
  v160 = a11;
  v145 = (v140 + 48);
  v139 = (v140 + 32);
  isa = (v156 + 16);
  v136 = (v156 + 8);
  v137 = (v155 + 8);
  v156 = *(v152 + 8);
  v140 += 8;
  v56 = 1;
  v47.n128_u64[0] = 136315394;
  v126 = v47;
  v57 = 1;
  v58 = v133;
  v59 = v153;
  v60 = v154;
  v61 = v158;
  v62 = v151;
  v134 = a12;
  while (1)
  {
    v154 = v57;
    v64 = v56;
    v65 = v147;
    v66 = v150;
    result = sub_1CF62E388(v148, v58, v59, v149 & 1, v150, v163, v160, v55, v147, v156);
    if (v61)
    {
      break;
    }

    if ((*v145)(v65, 1, v62) == 1)
    {
      return (*(v123 + 8))(v65, v124);
    }

    LODWORD(v155) = v64;
    (*v139)(v159, v65, v62);
    if ((v142 & 1) == 0)
    {
      v68 = *(v163 + 4);
      v69 = *(**(v68 + 16) + 312);

      v71 = v69(v70);

      if ((v71 & 1) != 0 && ((*(*v163 + 152))(v72) & 0x40) != 0)
      {
        v73 = *(v68 + 16);
        v74 = *(v73 + 16);
        if (v74)
        {
          v75 = *(v73 + 24);
          v76 = type metadata accessor for FileTreeWriter.FileTreeChange();
          sub_1CF9E7FA8();
          v77 = *(*(v76 - 8) + 72);
          v78 = *(*(v76 - 8) + 80);
          swift_allocObject();

          v79 = sub_1CF9E6D68();
          (*isa)(v80, v133, v157);
          v59 = v153;
          swift_storeEnumTagMultiPayload();
          v81 = v79;
          v58 = v133;
          sub_1CF045898(v81);
          v74();
          sub_1CEFF7124(v74);
          v66 = v150;
        }
      }
    }

    v82 = sub_1CF61CD04(v159, v58, v59, v163, v143, v144, v66, v141, v160, v55, v152);
    if (((((*(*v163 + 152))() & 0x4000) != 0) & v82) == 0)
    {
      return (*v140)(v159, v151);
    }

    v158 = 0;
    v83 = v163;
    v84 = v160;
    v85 = v156;
    (*(**(v163 + 2) + 528))(v160, v55, v156);
    (*(**(v83 + 4) + 688))(v84, v55, v85);
    (*(**(v83 + 5) + 688))(v84, v55, v85);
    v86 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v87 = *isa;
    v88 = v60;
    v89 = v135;
    v90 = v157;
    (*isa)(v135, v58, v157);
    v91 = sub_1CF9E6108();
    v92 = sub_1CF9E7288();
    v93 = os_log_type_enabled(v91, v92);
    v131 = v87;
    if (v93)
    {
      v94 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v161 = v130;
      *v94 = v126.n128_u32[0];
      v95 = v127;
      v87(v127, v89, v90);
      v96 = *v136;
      (*v136)(v89, v90);
      v97 = *(swift_getAssociatedConformanceWitness() + 16);
      v98 = sub_1CF9E7F98();
      v100 = v99;
      v132 = v96;
      v96(v95, v157);
      v101 = sub_1CEFD0DF0(v98, v100, &v161);
      v90 = v157;

      *(v94 + 4) = v101;
      *(v94 + 12) = 2048;
      *(v94 + 14) = v154;
      _os_log_impl(&dword_1CEFC7000, v91, v92, "Ingesting %s, retries %ld", v94, 0x16u);
      v102 = v130;
      __swift_destroy_boxed_opaque_existential_1(v130);
      v59 = v153;
      MEMORY[0x1D386CDC0](v102, -1, -1);
      v103 = v94;
      v58 = v133;
      MEMORY[0x1D386CDC0](v103, -1, -1);

      v63 = *v137;
      (*v137)(v88, v138);
      v62 = v151;
      (*v140)(v159, v151);
      v60 = v88;
    }

    else
    {
      v132 = *v136;
      v132(v89, v90);

      v63 = *v137;
      (*v137)(v88, v138);
      v62 = v151;
      (*v140)(v159, v151);
      v60 = v88;
      v59 = v153;
    }

    v56 = 0;
    v57 = 2;
    v61 = v158;
    v55 = v134;
    if ((v155 & 1) == 0)
    {
      v104 = fpfs_current_or_default_log();
      v105 = v125;
      sub_1CF9E6128();
      v106 = v122;
      v107 = v131;
      v131(v122, v58, v90);
      v108 = sub_1CF9E6108();
      v109 = sub_1CF9E72A8();
      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v163 = v111;
        *v110 = 136315138;
        v160 = v108;
        *&v161 = v111;
        v112 = v127;
        v107(v127, v106, v90);
        LODWORD(v159) = v109;
        v113 = v132;
        v132(v106, v90);
        v114 = *(swift_getAssociatedConformanceWitness() + 16);
        v115 = sub_1CF9E7F98();
        v117 = v116;
        v113(v112, v90);
        v118 = sub_1CEFD0DF0(v115, v117, &v161);

        *(v110 + 4) = v118;
        v119 = v160;
        _os_log_impl(&dword_1CEFC7000, v160, v159, "Transform could not converge for item %s", v110, 0xCu);
        v120 = v163;
        __swift_destroy_boxed_opaque_existential_1(v163);
        MEMORY[0x1D386CDC0](v120, -1, -1);
        MEMORY[0x1D386CDC0](v110, -1, -1);

        v121 = v125;
      }

      else
      {
        v132(v106, v90);

        v121 = v105;
      }

      return (v63)(v121, v138);
    }
  }

  return result;
}

uint64_t sub_1CF61295C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v8 = a6();
  v9 = *(v6 + 616);
  v10 = *(v6 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_1CF6129E4(uint64_t a1, uint64_t a2, unint64_t *a3, void **a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v312 = a7;
  v313 = a8;
  v277 = a6;
  v296 = a5;
  v305 = a3;
  v310 = a2;
  v11 = *a4;
  v57 = (*a4)[11];
  v12 = (*a4)[13];
  v311 = a9;
  v13 = type metadata accessor for SnapshotItem();
  v14 = sub_1CF9E75D8();
  v270 = *(v14 - 8);
  v271 = v14;
  v15 = *(v270 + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v275 = &v268 - v17;
  v273 = v13;
  v274 = *(v13 - 8);
  v18 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v272 = &v268 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_1CF9E75D8();
  v281 = *(v21 - 8);
  v282 = v21;
  v22 = *(v281 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v280 = &v268 - v24;
  v288 = AssociatedTypeWitness;
  v283 = *(AssociatedTypeWitness - 8);
  v25 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v276 = &v268 - v26;
  v27 = v11[10];
  v28.i64[0] = v27;
  v287 = v57;
  v28.i64[1] = v57;
  v315 = v28;
  v316 = a4;
  v29 = v11[12];
  v30.i64[0] = v29;
  v286 = v12;
  v30.i64[1] = v12;
  v314 = v30;
  v336 = v28;
  v337 = v30;
  v31 = type metadata accessor for ItemReconciliation();
  v32 = sub_1CF9E75D8();
  v278 = *(v32 - 8);
  v279 = v32;
  v33 = *(v278 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v303 = &v268 - v35;
  v293 = v31;
  v292 = *(v31 - 8);
  v36 = *(v292 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v290 = &v268 - v37;
  v336 = v315;
  v337 = v314;
  v38 = type metadata accessor for ReconciliationMutation();
  v284 = *(v38 - 8);
  v285 = v38;
  v39 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v289 = &v268 - v40;
  v295 = sub_1CF9E5CF8();
  v291 = *(v295 - 8);
  v41 = *(v291 + 64);
  MEMORY[0x1EEE9AC00](v295);
  v294 = &v268 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = swift_getAssociatedTypeWitness();
  v301 = *(v43 - 8);
  v302 = v43;
  v44 = *(v301 + 64);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v297 = &v268 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v298 = &v268 - v47;
  v299 = v29;
  v300 = v27;
  v48 = type metadata accessor for SnapshotItem();
  v49 = sub_1CF9E75D8();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v308 = (&v268 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v268 - v54;
  LOBYTE(v57) = v50 + 16;
  v56 = *(v50 + 16);
  WitnessTable = a1;
  v307 = v56;
  v56((&v268 - v54), a1, v49);
  v58 = *(v48 - 8);
  v306 = *(v58 + 48);
  v59 = (v306)(v55, 1, v48);
  v317 = v48;
  if (v59 == 1)
  {
    (*(v50 + 8))(v55, v49);
    v304 = 0;
    v60 = v316;
  }

  else
  {
    v61 = &v55[*(v48 + 52)];
    v62 = *(v61 + 13);
    v332 = *(v61 + 12);
    v333 = v62;
    v334 = *(v61 + 14);
    v335 = *(v61 + 30);
    v63 = *(v61 + 9);
    v328 = *(v61 + 8);
    v329 = v63;
    v64 = *(v61 + 11);
    v330 = *(v61 + 10);
    v331 = v64;
    v65 = *(v61 + 5);
    v324 = *(v61 + 4);
    v325 = v65;
    v66 = *(v61 + 7);
    v326 = *(v61 + 6);
    v327 = v66;
    v67 = *(v61 + 1);
    v320 = *v61;
    v321 = v67;
    v68 = *(v61 + 3);
    v322 = *(v61 + 2);
    v323 = v68;
    sub_1CEFCCBDC(&v320, v319, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    v269 = v58;
    (*(v58 + 8))(v55, v48);
    v348 = v332;
    v349 = v333;
    v350 = v334;
    v351 = v335;
    v344 = v328;
    v345 = v329;
    v346 = v330;
    v347 = v331;
    v340 = v324;
    v341 = v325;
    v342 = v326;
    v343 = v327;
    v336 = v320;
    v337 = v321;
    v338 = v322;
    v339 = v323;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v336) == 1)
    {
      v304 = 0;
    }

    else
    {
      sub_1CEFCCC44(&v320, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v304 = v349;
    }

    v60 = v316;
    v58 = v269;
  }

  v69 = v50;
  v70 = v308;
  v307(v308, WitnessTable, v49);
  v71 = v317;
  if ((v306)(v70, 1, v317) == 1)
  {
    (*(v69 + 8))(v70, v49);
  }

  else
  {
    v72 = v70 + *(v71 + 52);
    v73 = *(v72 + 208);
    v332 = *(v72 + 192);
    v333 = v73;
    v334 = *(v72 + 224);
    v335 = *(v72 + 240);
    v74 = *(v72 + 144);
    v328 = *(v72 + 128);
    v329 = v74;
    v75 = *(v72 + 176);
    v330 = *(v72 + 160);
    v331 = v75;
    v76 = *(v72 + 80);
    v324 = *(v72 + 64);
    v325 = v76;
    v77 = *(v72 + 112);
    v326 = *(v72 + 96);
    v327 = v77;
    v78 = *(v72 + 16);
    v320 = *v72;
    v321 = v78;
    v79 = *(v72 + 48);
    v322 = *(v72 + 32);
    v323 = v79;
    sub_1CEFCCBDC(&v320, v319, &qword_1EC4BECF0, &unk_1CF9FEEB0);
    (*(v58 + 8))(v70, v71);
    v348 = v332;
    v349 = v333;
    v350 = v334;
    v351 = v335;
    v344 = v328;
    v345 = v329;
    v346 = v330;
    v347 = v331;
    v340 = v324;
    v341 = v325;
    v342 = v326;
    v343 = v327;
    v336 = v320;
    v337 = v321;
    v338 = v322;
    v339 = v323;
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v336) != 1)
    {
      sub_1CEFCCC44(&v320, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v83 = *(&v349 + 1);
      v80 = v310;
      goto LABEL_13;
    }
  }

  v80 = v310;
  v81 = v318;
  v82 = (*(*v60[4] + 344))(v310, v312, v313, *(v311 + 8));
  if (v81)
  {
    return v57 & 1;
  }

  v83 = v82;
  v318 = 0;
LABEL_13:
  v57 = v80 + *(v71 + 52);
  v84 = *(v57 + 208);
  v348 = *(v57 + 192);
  v349 = v84;
  v350 = *(v57 + 224);
  v351 = *(v57 + 240);
  v85 = *(v57 + 144);
  v344 = *(v57 + 128);
  v345 = v85;
  v86 = *(v57 + 176);
  v346 = *(v57 + 160);
  v347 = v86;
  v87 = *(v57 + 80);
  v340 = *(v57 + 64);
  v341 = v87;
  v88 = *(v57 + 112);
  v342 = *(v57 + 96);
  v343 = v88;
  v89 = *(v57 + 16);
  v336 = *v57;
  v337 = v89;
  v90 = *(v57 + 48);
  v338 = *(v57 + 32);
  v339 = v90;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v336) == 1)
  {
    v91 = 0;
  }

  else
  {
    v91 = *(v57 + 208);
  }

  v92 = *v305;
  v307 = v91;
  v308 = v83;
  if ((v92 & 2) != 0)
  {
    v306 = v92;
    v95 = v301;
    v94 = v302;
    v96 = *(v301 + 16);
    WitnessTable = *(v317 + 36);
    v97 = v298;
    v96(v298, v80 + WitnessTable, v302);
    v98 = v80;
    v99 = v297;
    v96(v297, v98, v94);
    v100 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v101 = sub_1CF9E6868();
    v102 = *(v95 + 8);
    v102(v99, v94);
    v102(v97, v94);
    if (v101)
    {
      v91 = v307;
      v93 = v308;
      v60 = v316;
      v80 = v98;
      goto LABEL_20;
    }

    v118 = v318;
    v119 = (*(*v316[4] + 352))(v98 + WitnessTable, v312, v313, *(v311 + 8));
    if (!v118)
    {
      v80 = v98;
      v318 = 0;
      if (v119 == v308)
      {
        v93 = v308;
        v60 = v316;
        v91 = v307;
        goto LABEL_20;
      }

      v83 = v119;
      v175 = *(v57 + 208);
      v332 = *(v57 + 192);
      v333 = v175;
      v334 = *(v57 + 224);
      v335 = *(v57 + 240);
      v176 = *(v57 + 144);
      v328 = *(v57 + 128);
      v329 = v176;
      v177 = *(v57 + 176);
      v330 = *(v57 + 160);
      v331 = v177;
      v178 = *(v57 + 80);
      v324 = *(v57 + 64);
      v325 = v178;
      v179 = *(v57 + 112);
      v326 = *(v57 + 96);
      v327 = v179;
      v180 = *(v57 + 16);
      v320 = *v57;
      v321 = v180;
      v181 = *(v57 + 48);
      v322 = *(v57 + 32);
      v323 = v181;
      enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v320);
      v60 = v316;
      v91 = v307;
      if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
      {
        *(v57 + 216) = v83;
      }

      if ((v306 & 0x400000000000000) == 0)
      {
        *v305 = v306 | 0x400000000000000;
      }

      goto LABEL_17;
    }

    return v57 & 1;
  }

LABEL_17:
  v93 = v83;
LABEL_20:
  v103 = v317;
  WitnessTable = swift_getWitnessTable();
  v104 = sub_1CF06D940(v103, WitnessTable, &v320);
  v305 = v93;
  if (v320.u8[0] != 1 || (v105 = sub_1CF67E058(v304, v308), v104 = sub_1CF67E058(v91, v93), v105 == v104))
  {
    LODWORD(v57) = 0;
    goto LABEL_23;
  }

  if (v104 != 1003 && v104 != 502 && (v104 != 501 || (fpfs_supports_indexAllRemoteItems() & 1) != 0))
  {
    v320 = v315;
    v321 = v314;
    type metadata accessor for JobResult();
    v320 = v315;
    v321 = v314;
    type metadata accessor for Maintenance.RefreshInheritedContentPolicy();
    v120 = v294;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v122 = v121;
    result = (*(v291 + 8))(v120, v295);
    v124 = v122 * 1000000000.0;
    if (COERCE__INT64(fabs(v122 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v124 > -9.22337204e18)
      {
        if (v124 < 9.22337204e18)
        {
          v125 = sub_1CF559420(v80, 0, v124, 0);
          sub_1CF803A0C(v296, v125);
          LODWORD(v57) = 0;
LABEL_55:

          goto LABEL_23;
        }

        goto LABEL_204;
      }

LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v320 = v315;
  v321 = v314;
  type metadata accessor for JobResult();
  v320 = v315;
  v321 = v314;
  type metadata accessor for Maintenance.RefreshInheritedContentPolicy();
  v126 = v294;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v128 = v127;
  v129 = *(v291 + 8);
  result = v129(v126, v295);
  v130 = v128 * 1000000000.0;
  if (COERCE__INT64(fabs(v128 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_200;
  }

  if (v130 <= -9.22337204e18)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if (v130 >= 9.22337204e18)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  sub_1CF559420(v80, 0, v130, 0);
  v131 = sub_1CF052548(0x800000);

  sub_1CF803A0C(v296, v131);

  if (v277)
  {
    v320 = v315;
    v321 = v314;
    type metadata accessor for Maintenance.PaceRefreshInheritedContentPolicy();
    v60 = v316;
    v132 = v316[4];
    sub_1CF046AB4();
    v133 = v294;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v135 = v134;
    result = v129(v133, v295);
    v136 = v135 * 1000000000.0;
    if (COERCE__INT64(fabs(v135 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v136 > -9.22337204e18)
      {
        v103 = v317;
        if (v136 < 9.22337204e18)
        {
          v137 = v298;
          sub_1CF559420(v298, 0, v136, 0);
          (*(v301 + 8))(v137, v302);
          v138 = sub_1CF052548(0x1000000);

          sub_1CF803A0C(v296, v138);
          LODWORD(v57) = 1;
          goto LABEL_55;
        }

LABEL_207:
        __break(1u);
        goto LABEL_208;
      }

LABEL_206:
      __break(1u);
      goto LABEL_207;
    }

LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  LODWORD(v57) = 1;
  v60 = v316;
  v103 = v317;
LABEL_23:
  LODWORD(v306) = ((*v60)[75])(v104);
  sub_1CF06D940(v103, WitnessTable, &v320);
  if (v320.u8[0] - 1 < 2)
  {
    goto LABEL_63;
  }

  sub_1CF06D940(v103, WitnessTable, &v320);
  v106 = v320.u8[0] == 1;
  v107 = v308;
  v108 = v306;
  v109 = sub_1CEFF8538(v304, v308, 0, v306, v106, 0);
  v110 = sub_1CEFF8538(v107, 0, 1, v108, v106, 0);
  if (v109 == 501)
  {
    v111 = v110;
    fpfs_supports_indexAllRemoteItems();
    v109 = v111;
  }

  sub_1CF06D940(v103, WitnessTable, &v320);
  v112 = v320.u8[0] == 1;
  v113 = v305;
  v114 = v306;
  v115 = sub_1CEFF8538(v307, v305, 0, v306, v112, 0);
  v116 = sub_1CEFF8538(v113, 0, 1, v114, v112, 0);
  if (v115 == 501)
  {
    v117 = v116;
    fpfs_supports_indexAllRemoteItems();
    v115 = v117;
  }

  v60 = v316;
  if (v115 == 3 || v115 == 1002)
  {
    if (v109 != 3 && v109 != 1002)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if (v115 == 500)
    {
      if (v109 == 500)
      {
        goto LABEL_63;
      }

LABEL_59:
      v277 = v57;
      v320 = v315;
      v321 = v314;
      v269 = type metadata accessor for JobResult();
      v139 = v300;
      v140 = v302;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v142 = v288;
      v143 = swift_getAssociatedConformanceWitness();
      v320.i64[0] = v140;
      v320.i64[1] = v142;
      v321.i64[0] = AssociatedConformanceWitness;
      v321.i64[1] = v143;
      type metadata accessor for ReconciliationID();
      type metadata accessor for ReconciliationSideMutation();
      v144 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v301 + 16))(v289, v80, v140);
      swift_storeEnumTagMultiPayload();
      v145 = v294;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v147 = v146;
      (*(v291 + 8))(v145, v295);
      v148 = v147 * 1000000000.0;
      if (COERCE__INT64(fabs(v147 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v148 > -9.22337204e18)
      {
        v60 = v316;
        if (v148 < 9.22337204e18)
        {
          v149 = v289;
          v150 = &v289[v144];
          *v150 = xmmword_1CFA04E60;
          *(v150 + 2) = v148;
          swift_storeEnumTagMultiPayload();
          v57 = v285;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v296, v149);
          (*(v284 + 8))(v149, v57);
          LODWORD(v57) = v277;
          goto LABEL_63;
        }

LABEL_187:
        __break(1u);
        goto LABEL_188;
      }

      __break(1u);
      goto LABEL_187;
    }

    if (v109 == 3 || v109 == 1002 || v109 == 500)
    {
      goto LABEL_59;
    }
  }

LABEL_63:
  v151 = v60[2];
  v152 = *(v311 + 8);
  v153 = v303;
  v154 = v318;
  sub_1CF68DDB0(v80, v312, v313, v152, v303);
  if (v154)
  {
    return v57 & 1;
  }

  v318 = 0;
  v155 = v292;
  v156 = v293;
  if ((*(v292 + 48))(v153, 1, v293) == 1)
  {
    (*(v278 + 8))(v153, v279);
    return v57 & 1;
  }

  v279 = v152;
  v157 = *(v155 + 32);
  v158 = v290;
  v157(v290, v153, v156);
  v159 = &v158[*(v156 + 52)];
  v160 = v280;
  v161 = v281;
  v162 = v282;
  (*(v281 + 16))(v280, v159, v282);
  v163 = v283;
  v164 = v288;
  if ((*(v283 + 48))(v160, 1, v288) == 1)
  {
    (*(v161 + 8))(v160, v162);
    v165 = v317;
    sub_1CF06D940(v317, WitnessTable, &v320);
    v166 = v320.i8[0];
    v277 = v57;
    if (v304 > 501)
    {
      v167 = v307;
      v168 = v293;
      if ((v304 - 1000) >= 3)
      {
        if (v304 == 502)
        {
          v169 = &unk_1CFA0E208;
          goto LABEL_101;
        }

        if (v304 == 1003)
        {
          v169 = &unk_1CFA0E228;
          goto LABEL_101;
        }

LABEL_96:
        v183 = -1;
        goto LABEL_102;
      }
    }

    else
    {
      v167 = v307;
      v168 = v293;
      if (v304 == 3)
      {
        v183 = -5;
        goto LABEL_102;
      }

      if (v304 != 500)
      {
        if (v304 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          v169 = &unk_1CFA0E1E8;
LABEL_101:
          v183 = v169[v166];
          goto LABEL_102;
        }

        goto LABEL_96;
      }
    }

    if (v320.i8[0] == 1)
    {
      v183 = -5;
    }

    else
    {
      v183 = -1;
    }

LABEL_102:
    v191 = *&v290[*(v168 + 80)];
    sub_1CF06D940(v165, WitnessTable, &v320);
    v192 = v320.i8[0];
    if (v167 > 501)
    {
      if ((v167 - 1000) < 3)
      {
        goto LABEL_110;
      }

      if (v167 == 502)
      {
        v193 = 64;
        if ((0xEu >> (v320.i8[0] & 0xF)) & 1 | ((v191 & 2) != 0))
        {
          v193 = 0;
        }

LABEL_126:
        if ((v193 & v183) == 0)
        {
          goto LABEL_132;
        }

        v195 = v301;
        v194 = v302;
        v196 = *(v301 + 16);
        v197 = v298;
        v196(v298, v80, v302);
        v317 = *(v165 + 36);
        v198 = v80 + v317;
        v199 = v80;
        v200 = v297;
        v196(v297, v198, v194);
        v201 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
        v202 = sub_1CF9E6868();
        v203 = *(v195 + 8);
        v203(v200, v194);
        v203(v197, v194);
        if (v202)
        {
          goto LABEL_132;
        }

        v320 = v315;
        v321 = v314;
        type metadata accessor for JobResult();
        v320 = v315;
        v321 = v314;
        type metadata accessor for Materialization.BackgroundMaterializeParentHierarchy();
        v204 = v294;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v206 = v205;
        result = (*(v291 + 8))(v204, v295);
        v207 = v206 * 1000000000.0;
        if (COERCE__INT64(fabs(v206 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v207 > -9.22337204e18)
          {
            if (v207 < 9.22337204e18)
            {
              v208 = sub_1CF574884(v199 + v317, 0, v207, 0);
              sub_1CF803A0C(v296, v208);

LABEL_132:
              (*(v292 + 8))(v290, v168);
              LOBYTE(v57) = v277;
              return v57 & 1;
            }

            goto LABEL_210;
          }

LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
          goto LABEL_211;
        }

LABEL_208:
        __break(1u);
        goto LABEL_209;
      }

      if (v167 != 1003 || v320.u8[0] - 2 < 2)
      {
LABEL_114:
        v193 = 0;
        goto LABEL_126;
      }

      if (!v320.i8[0])
      {
        if ((v191 & 2) == 0)
        {
          v193 = 64;
          goto LABEL_126;
        }

        goto LABEL_114;
      }
    }

    else if (v167 != 3)
    {
      if (v167 != 500)
      {
        if (v167 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          v193 = 16;
          if (((1u >> (v192 & 0xF)) & ((v191 & 3) == 0)) == 0)
          {
            v193 = 0;
          }

          goto LABEL_126;
        }

        goto LABEL_114;
      }

LABEL_110:
      v193 = 4 * (v320.u8[0] == 1);
      goto LABEL_126;
    }

    v193 = 4;
    goto LABEL_126;
  }

  v170 = v276;
  (*(v163 + 32))(v276, v160, v164);
  v171 = type metadata accessor for ItemReconciliationHalf();
  if (*(v159 + *(v171 + 56)) != 6)
  {
    (*(v163 + 8))(v170, v164);
    (*(v292 + 8))(v290, v293);
    return v57 & 1;
  }

  v172 = v171;
  v173 = type metadata accessor for ItemReconciliationHalf();
  v174 = v290;
  if (v290[*(v173 + 52)] == 2)
  {
    (*(v283 + 8))(v276, v288);
    (*(v292 + 8))(v174, v293);
    return v57 & 1;
  }

  v298 = v172;
  v303 = v159;
  v184 = *&v290[*(v293 + 80)];
  v185 = v317;
  v186 = WitnessTable;
  sub_1CF06D940(v317, WitnessTable, &v320);
  v187 = sub_1CEFF8538(v304, v308, 0, v306, v320.u8[0] == 1, v184 != 0);
  sub_1CF06D940(v185, v186, &v320);
  v188 = v320.i8[0];
  v277 = v57;
  if (v187 > 501)
  {
    if ((v187 - 1000) >= 3)
    {
      if (v187 == 502)
      {
        v189 = &unk_1CFA0E1A8;
        goto LABEL_135;
      }

      if (v187 == 1003)
      {
        v189 = &unk_1CFA0E1C8;
        goto LABEL_135;
      }

LABEL_121:
      v308 = 0;
      goto LABEL_137;
    }
  }

  else
  {
    if (v187 == 3)
    {
      v190 = 4;
      goto LABEL_136;
    }

    if (v187 != 500)
    {
      if (v187 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
      {
        v189 = &unk_1CFA0E188;
LABEL_135:
        v190 = v189[v188];
        goto LABEL_136;
      }

      goto LABEL_121;
    }
  }

  v190 = 4 * (v320.i8[0] == 1);
LABEL_136:
  v308 = v190;
LABEL_137:
  v209 = v317;
  v210 = WitnessTable;
  sub_1CF06D940(v317, WitnessTable, &v320);
  v57 = sub_1CEFF8538(v307, v305, 0, v306, v320.u8[0] == 1, v184 != 0);
  sub_1CF06D940(v209, v210, &v320);
  v211 = v320.i8[0];
  if (v57 <= 501)
  {
    v212 = v316;
    if (v57 != 3)
    {
      if (v57 != 500)
      {
        if (v57 == 501 && (fpfs_supports_indexAllRemoteItems() & 1) == 0)
        {
          if (((1u >> (v211 & 0xF)) & ((v184 & 3) == 0)) != 0)
          {
            v139 = 16;
          }

          else
          {
            v139 = 0;
          }

          goto LABEL_158;
        }

        goto LABEL_150;
      }

LABEL_146:
      v139 = 4 * (v320.u8[0] == 1);
      goto LABEL_158;
    }

    goto LABEL_157;
  }

  v212 = v316;
  if ((v57 - 1000) < 3)
  {
    goto LABEL_146;
  }

  if (v57 == 502)
  {
    if ((0xEu >> (v320.i8[0] & 0xF)) & 1 | ((v184 & 2) != 0))
    {
      v139 = 0;
    }

    else
    {
      v139 = 64;
    }

    goto LABEL_158;
  }

  if (v57 != 1003 || v320.u8[0] - 2 < 2)
  {
LABEL_150:
    v139 = 0;
    goto LABEL_158;
  }

  if (!v320.i8[0])
  {
    if ((v184 & 2) == 0)
    {
      v139 = 64;
      goto LABEL_158;
    }

    goto LABEL_150;
  }

LABEL_157:
  v139 = 4;
LABEL_158:
  if ((((*v212)[19])() & 0x40000) == 0 && v57 == 501 && (v184 & 2) != 0)
  {
    v320 = v315;
    v321 = v314;
    WitnessTable = type metadata accessor for JobResult();
    v213 = v302;
    v214 = swift_getAssociatedConformanceWitness();
    v317 = v139;
    v215 = v214;
    v216 = v288;
    v217 = swift_getAssociatedConformanceWitness();
    v320.i64[0] = v213;
    v320.i64[1] = v216;
    v321.i64[0] = v215;
    v321.i64[1] = v217;
    type metadata accessor for ReconciliationID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v219 = *(TupleTypeMetadata3 + 48);
    v220 = *(TupleTypeMetadata3 + 64);
    v221 = v289;
    (*(v301 + 16))(v289, v80, v213);
    v212 = v316;
    swift_storeEnumTagMultiPayload();
    *(v221 + v219) = 1;
    *(v221 + v220) = 0;
    v222 = v285;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v296, v221);
    v223 = v221;
    v139 = v317;
    (*(v284 + 8))(v223, v222);
  }

  if (v187 != 1)
  {
    goto LABEL_167;
  }

  v225 = v275;
  v224 = v276;
  v226 = v318;
  (*(*v212[5] + 240))(v276, 1, v312, v313, v279);
  v318 = v226;
  if (v226)
  {
    (*(v283 + 8))(v224, v288);
    (*(v292 + 8))(v290, v293);
    return v57 & 1;
  }

  v228 = v273;
  v227 = v274;
  if ((*(v274 + 48))(v225, 1, v273) == 1)
  {
    (*(v270 + 8))(v225, v271);
LABEL_167:
    v229 = v318;
    v230 = v292;
    v57 = v293;
    v231 = v283;
LABEL_168:
    v232 = v308;
    v233 = v276;
    goto LABEL_169;
  }

  v234 = v225;
  v235 = v272;
  (*(v227 + 32))(v272, v234, v228);
  v236 = swift_getWitnessTable();
  if ((sub_1CF937C7C(v228, v236) & 1) == 0)
  {
    (*(v227 + 8))(v235, v228);
    goto LABEL_175;
  }

  if (*(v303 + *(v298 + 17) + 24) >> 60 == 11)
  {
    (*(v274 + 8))(v272, v228);
LABEL_175:
    v229 = v318;
    v230 = v292;
    v57 = v293;
    v231 = v283;
    v212 = v316;
    goto LABEL_168;
  }

  if (v57 > 501)
  {
    if (v57 != 502 && v57 != 1003)
    {
      goto LABEL_184;
    }

    goto LABEL_183;
  }

  WitnessTable = v236;
  if (v57 != 2)
  {
    if (v57 != 501 || (fpfs_supports_indexAllRemoteItems() & 1) != 0)
    {
LABEL_184:
      (*(v274 + 8))(v272, v228);
      v229 = v318;
LABEL_198:
      v230 = v292;
      v57 = v293;
      v231 = v283;
      v233 = v276;
      v212 = v316;
      v232 = v308;
LABEL_169:
      (*(*v212[3] + 472))(v233, (v139 ^ v232) & v232, v139 & (v139 ^ v232) & 0x14, v312, v313, v311);
      (*(v231 + 8))(v233, v288);
      (*(v230 + 8))(v290, v57);
      if (!v229)
      {
        LOBYTE(v57) = v277;
      }

      return v57 & 1;
    }

LABEL_183:
    v320 = v315;
    v321 = v314;
    type metadata accessor for JobResult();
    v237 = v302;
    v238 = swift_getAssociatedConformanceWitness();
    v239 = v288;
    v240 = swift_getAssociatedConformanceWitness();
    v320.i64[0] = v237;
    v320.i64[1] = v239;
    v321.i64[0] = v238;
    v321.i64[1] = v240;
    type metadata accessor for ReconciliationID();
    v241 = swift_getTupleTypeMetadata3();
    v242 = *(v241 + 48);
    v243 = *(v241 + 64);
    v244 = v289;
    (*(v301 + 16))(v289, v80, v237);
    swift_storeEnumTagMultiPayload();
    *(v244 + v242) = 1;
    *(v244 + v243) = 0;
    v57 = v285;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v296, v244);
    (*(v284 + 8))(v244, v57);
    (*(v274 + 8))(v272, v273);
    (*(v283 + 8))(v276, v239);
    (*(v292 + 8))(v290, v293);
    LOBYTE(v57) = 0;
    return v57 & 1;
  }

LABEL_188:
  v317 = v139;
  v320 = v315;
  v321 = v314;
  type metadata accessor for JobResult();
  v245 = v302;
  v246 = swift_getAssociatedConformanceWitness();
  v247 = v288;
  v248 = swift_getAssociatedConformanceWitness();
  v320.i64[0] = v245;
  v320.i64[1] = v247;
  v321.i64[0] = v246;
  v321.i64[1] = v248;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v250 = v289;
  v251 = &v289[*(TupleTypeMetadata2 + 48)];
  (*(v283 + 16))(v289, v276, v247);
  swift_storeEnumTagMultiPayload();
  *v251 = 0;
  *(v251 + 1) = 0;
  *(v251 + 2) = 0;
  *(v251 + 3) = 0xB000000000000000;
  *(v251 + 2) = 0u;
  *(v251 + 3) = 0u;
  *(v251 + 32) = 257;
  swift_storeEnumTagMultiPayload();
  v252 = v285;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v296, v250);
  v253 = *(v284 + 8);
  v254 = v253(v250, v252);
  if ((((*v316)[69])(v254) & 1) == 0)
  {
    goto LABEL_194;
  }

  sub_1CF06D940(v273, WitnessTable, &v320);
  if (v320.u8[0] - 1 < 2)
  {
    goto LABEL_194;
  }

  v320 = vextq_s8(v315, v315, 8uLL);
  v321 = vextq_s8(v314, v314, 8uLL);
  type metadata accessor for RemoteVersion.CleanRemoteVersions();
  v255 = v294;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v257 = v256;
  result = (*(v291 + 8))(v255, v295);
  v258 = v257 * 1000000000.0;
  if (COERCE__INT64(fabs(v257 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_214:
    __break(1u);
    goto LABEL_215;
  }

  if (v258 <= -9.22337204e18)
  {
LABEL_215:
    __break(1u);
    goto LABEL_216;
  }

  if (v258 < 9.22337204e18)
  {
    v259 = sub_1CF989304(v276, 0, v258, 2);
    sub_1CF8039C4(v296, v259);

LABEL_194:
    type metadata accessor for ReconciliationSideMutation();
    v260 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v301 + 16))(v289, v310, v302);
    swift_storeEnumTagMultiPayload();
    v261 = v294;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v263 = v262;
    result = (*(v291 + 8))(v261, v295);
    v264 = v263 * 1000000000.0;
    if (COERCE__INT64(fabs(v263 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_211:
      __break(1u);
      goto LABEL_212;
    }

    if (v264 <= -9.22337204e18)
    {
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    if (v264 >= 9.22337204e18)
    {
LABEL_213:
      __break(1u);
      goto LABEL_214;
    }

    v265 = v289;
    v266 = &v289[v260];
    *v266 = xmmword_1CFA00210;
    *(v266 + 2) = v264;
    swift_storeEnumTagMultiPayload();
    v267 = v285;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v296, v265);
    v253(v265, v267);
    (*(v274 + 8))(v272, v273);
    v139 = v317;
    v229 = v318;
    goto LABEL_198;
  }

LABEL_216:
  __break(1u);
  return result;
}

unint64_t sub_1CF614EB4(void (*a1)(void, void, void), void (*a2)(uint64_t, uint64_t), uint64_t a3, void *a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t), void (*a6)(void, void, void, void), uint64_t a7)
{
  v329 = a6;
  v330 = a7;
  v333 = a5;
  v315 = a3;
  v322 = a2;
  v358 = a1;
  v8 = (*a4 + 88);
  v9 = *(*a4 + 96);
  v10 = *(*a4 + 80);
  v11 = (*a4 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v317 = sub_1CF9E75D8();
  v284 = *(v317 - 8);
  v13 = *(v284 + 64);
  MEMORY[0x1EEE9AC00](v317);
  v286 = &v279 - v14;
  v321 = type metadata accessor for JobLockRule();
  v314 = *(v321 - 8);
  v15 = *(v314 + 64);
  v16 = MEMORY[0x1EEE9AC00](v321);
  v306 = &v279 - v17;
  v325 = AssociatedTypeWitness;
  v323 = *(AssociatedTypeWitness - 8);
  v18 = *(v323 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v283 = &v279 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v290 = &v279 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v291 = &v279 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v289 = &v279 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v287 = &v279 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v292 = &v279 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v293 = &v279 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v303 = &v279 - v33;
  v299 = type metadata accessor for ItemReconciliationHalf();
  v295 = *(v299 - 1);
  v34 = *(v295 + 64);
  MEMORY[0x1EEE9AC00](v299);
  v294 = &v279 - v35;
  *&v36 = v10;
  *(&v36 + 1) = *v8;
  *&v37 = v9;
  *(&v37 + 1) = *v11;
  v331 = v37;
  v332 = v36;
  v343 = v37;
  v342 = v36;
  v38 = type metadata accessor for ItemReconciliation();
  v39 = sub_1CF9E75D8();
  v300 = *(v39 - 8);
  v301 = v39;
  v40 = *(v300 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v288 = &v279 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v296 = &v279 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v297 = &v279 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v304 = &v279 - v48;
  v302 = v38;
  v305 = *(v38 - 8);
  v49 = *(v305 + 64);
  v50 = MEMORY[0x1EEE9AC00](v47);
  v285 = &v279 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v298 = &v279 - v53;
  v320 = *(v10 - 8);
  v54 = *(v320 + 64);
  v55 = MEMORY[0x1EEE9AC00](v52);
  v307 = &v279 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v310 = &v279 - v57;
  v324 = v9;
  v58 = type metadata accessor for SnapshotItem();
  v59 = sub_1CF9E75D8();
  v308 = *(v59 - 8);
  v309 = v59;
  v60 = *(v308 + 8);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v327 = &v279 - v62;
  v313 = v58;
  v311 = *(v58 - 8);
  v63 = *(v311 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v312 = &v279 - v64;
  v326 = v10;
  v316 = sub_1CF9E75D8();
  v319 = *(v316 - 8);
  v65 = *(v319 + 64);
  v66 = MEMORY[0x1EEE9AC00](v316);
  v68 = &v279 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v66);
  v71 = &v279 - v70;
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v279 - v73;
  MEMORY[0x1EEE9AC00](v72);
  v76 = (&v279 - v75);
  v318 = a4;
  v77 = a4[3];
  v343 = v331;
  v342 = v332;
  ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata();
  v79 = *(*v77 + 328);
  v80 = v328;
  v81 = v79(v358, ItemMetadata, 0, v333, v329, v330);
  if (v80)
  {
    return v68;
  }

  v281 = v68;
  v282 = v76;
  v279 = v71;
  v280 = v74;
  v68 = v327;
  v328 = 0;
  if (v81)
  {
    *&v342 = 0;
    *(&v342 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA55280);
    v83 = *(swift_getAssociatedConformanceWitness() + 16);
    sub_1CF9E7FE8();
LABEL_5:
    v68 = v342;
    sub_1CF657A18(v342, *(&v342 + 1), 0, 2u);

    return v68;
  }

  v342 = v332;
  v343 = v331;
  v84 = type metadata accessor for Ingestion.DeleteFolderFromSnapshotIfEmpty();
  v85 = v358;
  v87 = v329;
  v86 = v330;
  v88 = v328;
  v89 = v79(v358, v84, 0, v333, v329, v330);
  if (v88)
  {
    return v68;
  }

  v328 = 0;
  if (v89)
  {
    sub_1CF9E7FA8();
    v90 = *(v314 + 72);
    v91 = *(v314 + 80);
    swift_allocObject();
    v92 = 1;
    v333 = sub_1CF9E6D68();
    v94 = v93;
    v95 = v325;
    v96 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v323 + 16))(v94, v85, v95);
    v97 = v282;
    v98 = v316;
    (*(v319 + 16))(v282, v322, v316);
    v99 = v320;
    v100 = v326;
    if ((*(v320 + 48))(v97, 1, v326) == 1)
    {
      v101 = v319;
    }

    else
    {
      (*(v324 + 72))(v100, v324);
      v92 = 0;
      v101 = v99;
      v95 = v325;
      v98 = v100;
    }

    (*(v101 + 8))(v97, v98);
    (*(v323 + 56))(v94 + v96, v92, 1, v95);
    swift_storeEnumTagMultiPayload();
    v108 = sub_1CF045898(v333);
    v109 = *(**(v318[4] + 16) + 312);

    LOBYTE(v109) = v109(v110);

    v68 = sub_1CF06A504(v108, v315, v109 & 1);

    return v68;
  }

  v102 = v320 + 48;
  v103 = *(v320 + 48);
  if (v103(v322, 1, v326) == 1)
  {
    v342 = v332;
    v343 = v331;
    type metadata accessor for Propagation.DeleteItem();
    v104 = sub_1CF057C00();
    v105 = v328;
    v106 = (*(*v77 + 248))(v104, 0, v333, v87, v86);
    if (v105)
    {
      return v68;
    }

    if (v106)
    {
      v107 = 0x80000001CFA55230;
      v68 = 0xD000000000000041;
LABEL_37:
      sub_1CF657A18(v68, v107, 0, 2u);
      return v68;
    }

    if (!v315)
    {
      v107 = 0x80000001CFA55040;
      v68 = 0xD000000000000021;
      goto LABEL_37;
    }

    *&v332 = v102;
  }

  else
  {
    *&v332 = v102;
    v105 = v328;
  }

  v111 = v318[4];
  (*(*v111 + 240))(v358, 1, v333, v87, v86);
  v112 = v323;
  if (v105)
  {
    return v68;
  }

  v282 = v103;
  *&v331 = v111;
  v328 = 0;
  v113 = v311;
  v114 = v313;
  v115 = (*(v311 + 48))(v68, 1, v313);
  v116 = (v319 + 16);
  if (v115 != 1)
  {
    (*(v113 + 32))(v312, v68, v114);
    v125 = *v116;
    v126 = v280;
    v127 = v316;
    v327 = v116;
    v309 = v125;
    v125(v280, v322, v316);
    v128 = v326;
    v68 = v332;
    if (v282(v126, 1, v326) == 1)
    {
      *&v332 = v68;
      (*(v319 + 8))(v126, v127);
LABEL_27:
      sub_1CF9E7FA8();
      v318 = *(v314 + 72);
      v129 = *(v314 + 80);
      swift_allocObject();
      v333 = sub_1CF9E6D68();
      v131 = v130;
      v132 = v325;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v134 = *(TupleTypeMetadata2 + 48);
      v135 = v323;
      v136 = *(v323 + 16);
      v137 = v358;
      v136(v131, v358, v132);
      v317 = v313[9];
      v136(v131 + v134, &v312[v317], v132);
      v329 = *(v135 + 56);
      v330 = v135 + 56;
      v329(v131 + v134, 0, 1, v132);
      swift_storeEnumTagMultiPayload();
      v138 = v318 + v131;
      v139 = *(TupleTypeMetadata2 + 48);
      v136(v318 + v131, v137, v132);
      v140 = v279;
      v309(v279, v322, v316);
      v141 = v326;
      if (v282(v140, 1, v326) == 1)
      {
        (*(v319 + 8))(v140, v316);
        v136(&v138[v139], &v312[v317], v132);
      }

      else
      {
        v149 = v303;
        (*(v324 + 72))(v141, v324);
        (*(v320 + 8))(v140, v141);
        (*(v323 + 32))(&v138[v139], v149, v132);
      }

      v150 = v331;
      v151 = v311;
      v329(&v138[v139], 0, 1, v132);
      swift_storeEnumTagMultiPayload();
      v152 = sub_1CF045898(v333);
      v153 = *(**(v150 + 16) + 312);

      LOBYTE(v153) = v153(v154);

      v68 = sub_1CF06A504(v152, v315, v153 & 1);

      (*(v151 + 8))(v312, v313);
      return v68;
    }

    (*(v320 + 32))(v310, v126, v128);
    (*(v324 + 120))(v340, v128, v324);
    v354 = v340[12];
    v355 = v340[13];
    v356 = v340[14];
    v357 = v341;
    v350 = v340[8];
    v351 = v340[9];
    v352 = v340[10];
    v353 = v340[11];
    v346 = v340[4];
    v347 = v340[5];
    v348 = v340[6];
    v349 = v340[7];
    v342 = v340[0];
    v343 = v340[1];
    v344 = v340[2];
    v345 = v340[3];
    if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v342) == 1)
    {
      v147 = v328;
      v148 = v310;
    }

    else
    {
      sub_1CEFCCC44(v340, &qword_1EC4BECF0, &unk_1CF9FEEB0);
      v155 = &v312[v313[13]];
      v156 = *(v155 + 13);
      v338[12] = *(v155 + 12);
      v338[13] = v156;
      v338[14] = *(v155 + 14);
      v339 = *(v155 + 30);
      v157 = *(v155 + 9);
      v338[8] = *(v155 + 8);
      v338[9] = v157;
      v158 = *(v155 + 11);
      v338[10] = *(v155 + 10);
      v338[11] = v158;
      v159 = *(v155 + 4);
      v338[5] = *(v155 + 5);
      v160 = *(v155 + 7);
      v338[6] = *(v155 + 6);
      v338[7] = v160;
      v161 = *(v155 + 1);
      v338[0] = *v155;
      v338[1] = v161;
      v162 = *(v155 + 2);
      v338[3] = *(v155 + 3);
      v338[4] = v159;
      v338[2] = v162;
      enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v338);
      v148 = v310;
      if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 == 1)
      {
        v147 = v328;
        (*(*v331 + 264))(v336, v358, v333, v329, v330);
        if (v147)
        {
          (*(v320 + 8))(v148, v326);
          (*(v311 + 8))(v312, v313);
          return v68;
        }

        v173 = *(v155 + 13);
        v334[12] = *(v155 + 12);
        v334[13] = v173;
        v334[14] = *(v155 + 14);
        v335 = *(v155 + 30);
        v174 = *(v155 + 9);
        v334[8] = *(v155 + 8);
        v334[9] = v174;
        v175 = *(v155 + 11);
        v334[10] = *(v155 + 10);
        v334[11] = v175;
        v176 = *(v155 + 5);
        v334[4] = *(v155 + 4);
        v334[5] = v176;
        v177 = *(v155 + 7);
        v334[6] = *(v155 + 6);
        v334[7] = v177;
        v178 = *(v155 + 1);
        v334[0] = *v155;
        v334[1] = v178;
        v179 = *(v155 + 3);
        v334[2] = *(v155 + 2);
        v334[3] = v179;
        sub_1CEFCCC44(v334, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        v180 = v336[13];
        *(v155 + 12) = v336[12];
        *(v155 + 13) = v180;
        *(v155 + 14) = v336[14];
        *(v155 + 30) = v337;
        v181 = v336[9];
        *(v155 + 8) = v336[8];
        *(v155 + 9) = v181;
        v182 = v336[11];
        *(v155 + 10) = v336[10];
        *(v155 + 11) = v182;
        v183 = v336[5];
        *(v155 + 4) = v336[4];
        *(v155 + 5) = v183;
        v184 = v336[7];
        *(v155 + 6) = v336[6];
        *(v155 + 7) = v184;
        v185 = v336[1];
        *v155 = v336[0];
        *(v155 + 1) = v185;
        v186 = v336[3];
        *(v155 + 2) = v336[2];
        *(v155 + 3) = v186;
      }

      else
      {
        v147 = v328;
      }
    }

    v187 = v318[2];
    v188 = v304;
    sub_1CF68DDB0(v358, v333, v329, v330, v304);
    v328 = v147;
    v189 = v305;
    if (v147)
    {
      (*(v320 + 8))(v148, v326);
      v190 = v312;
      v191 = *(v311 + 8);
    }

    else
    {
      v192 = *(v305 + 48);
      v193 = v302;
      v318 = (v305 + 48);
      v308 = v192;
      if (v192(v188, 1, v302) == 1)
      {
        v194 = v301;
        (*(v300 + 8))(v188, v301);
        v195 = v312;
        v196 = v326;
      }

      else
      {
        v197 = v298;
        (*(v189 + 32))(v298, v188, v193);
        v198 = v197[v299[19]];
        v199 = &v312[v313[12]];
        v200 = type metadata accessor for ItemMetadata();
        v201 = v193;
        v202 = v200;
        v199[*(v200 + 96)] = (v198 & 4) != 0;
        (*(v189 + 8))(v197, v201);
        v199[*(v202 + 100)] = (v198 & 8) != 0;
        v148 = v310;
        v195 = v312;
        v196 = v326;
        v194 = v301;
      }

      *&v332 = v68;
      swift_getWitnessTable();
      sub_1CF937F9C(v148);
      if (*&v338[0])
      {
        (*(v320 + 8))(v148, v196);
        goto LABEL_27;
      }

      v68 = v195;
      v203 = v196;
      v204 = v297;
      v205 = v328;
      sub_1CF68DDB0(v358, v333, v329, v330, v297);
      v328 = v205;
      if (!v205)
      {
        (*(v320 + 8))(v148, v203);
        v206 = v300;
        v207 = v296;
        (*(v300 + 32))(v296, v204, v194);
        v208 = v302;
        if (v308(v207, 1, v302) == 1)
        {
          (*(v206 + 8))(v207, v194);
        }

        else
        {
          v217 = v294;
          v216 = v295;
          v218 = v299;
          (*(v295 + 16))(v294, v207, v299);
          (*(v305 + 8))(v207, v208);
          v219 = *&v217[v218[9]];
          (*(v216 + 8))(v217, v218);
          if (v219)
          {
            goto LABEL_27;
          }
        }

        (*(v311 + 8))(v312, v313);
        return 0;
      }

      (*(v320 + 8))(v148, v203);
      v191 = *(v311 + 8);
      v190 = v195;
    }

    v191(v190, v313);
    return v68;
  }

  (*(v308 + 1))(v68, v309);
  v68 = v281;
  v117 = v316;
  (*v116)(v281, v322, v316);
  v118 = v326;
  if (v282(v68, 1, v326) == 1)
  {
    v119 = (*(v319 + 8))(v68, v117);
    (*(*v318 + 216))(v119);
    v120 = v325;
    v121 = *(swift_getTupleTypeMetadata2() + 48);
    v122 = v306;
    (*(v112 + 16))(v306, v358, v120);
    (*(v112 + 56))(&v122[v121], 1, 1, v120);
    v123 = v321;
    swift_storeEnumTagMultiPayload();
    LOBYTE(v121) = sub_1CF52A078();

    (*(v314 + 8))(v122, v123);
    if ((v121 & 1) == 0)
    {
      return 0xD000000000000018;
    }

    *&v342 = 0;
    *(&v342 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000048, 0x80000001CFA55090);
    if (*(v331 + 32))
    {
      v124 = 20550;
    }

    else
    {
      v124 = 21318;
    }

    MEMORY[0x1D3868CC0](v124, 0xE200000000000000);

    goto LABEL_5;
  }

  v142 = v320;
  v143 = v307;
  (*(v320 + 32))(v307, v68, v118);
  v144 = v324;
  v145 = (*(v324 + 144))(v118, v324);
  LODWORD(v68) = v145;
  if (!(v146 >> 62))
  {
    sub_1CF07638C(v145, v146);
    *&v342 = 0;
    *(&v342 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v342 = 0xD000000000000019;
    *(&v342 + 1) = 0x80000001CFA550E0;
    v164 = fpfs_tempfile_pattern_t.description.getter(v68);
    MEMORY[0x1D3868CC0](v164);

    v68 = v342;
    (*(v142 + 8))(v143, v118);
    return v68;
  }

  if (v146 >> 62 == 1)
  {
    (*(v142 + 8))(v143, v118);
    return v68;
  }

  v165 = *(v144 + 80);
  v165(&v342, v118, v144);
  v166 = v342;
  if (v342 == __PAIR128__(0xE200000000000000, 11822) || (sub_1CF9E8048() & 1) != 0 || v166 == __PAIR128__(0xE100000000000000, 46))
  {

LABEL_49:
    *&v342 = 0;
    *(&v342 + 1) = 0xE000000000000000;
    sub_1CF9E7948();

    *&v342 = 0xD00000000000001ELL;
    *(&v342 + 1) = 0x80000001CFA55210;
    v167 = v307;
    v165(v340, v118, v144);
    v168 = sub_1CF9E6888();
    v169 = [v168 fp_obfuscatedFilename];

    v170 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v172 = v171;

    MEMORY[0x1D3868CC0](v170, v172);

    v68 = v342;
    (*(v142 + 8))(v167, v118);
    return v68;
  }

  v209 = sub_1CF9E8048();

  if (v209)
  {
    goto LABEL_49;
  }

  v68 = (v144 + 64);
  v210 = v293;
  v322 = *(v144 + 64);
  v322(v118, v144);
  v211 = v325;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v213 = (*(AssociatedConformanceWitness + 64))(v211, AssociatedConformanceWitness);
  v214 = *(v323 + 8);
  *&v332 = v323 + 8;
  v327 = v214;
  (v214)(v210, v211);
  if ((v213 & 1) != 0 && sub_1CF056558())
  {
    v215 = 0x80000001CFA551E0;
    v68 = 0xD000000000000024;
LABEL_74:
    sub_1CF657A18(v68, v215, 0, 2u);
    (*(v320 + 8))(v307, v326);
    return v68;
  }

  v220 = v292;
  v322(v326, v324);
  v221 = v325;
  v222 = (*(AssociatedConformanceWitness + 72))(v325, AssociatedConformanceWitness);
  (v327)(v220, v221);
  if ((v222 & 1) != 0 && sub_1CF056558())
  {
    v215 = 0x80000001CFA551B0;
    v68 = 0xD000000000000025;
    goto LABEL_74;
  }

  v223 = *(**(v331 + 16) + 312);

  v225 = v223(v224);

  if ((v225 & 1) == 0)
  {
    if (v315)
    {
      v227 = v325;
      v228 = *(swift_getTupleTypeMetadata2() + 48);
      v229 = v323;
      v230 = v306;
      (*(v323 + 16))(v306, v358, v227);
      v319 = *(v324 + 72);
      (v319)(v326);
      (*(v229 + 56))(&v230[v228], 0, 1, v227);
      v231 = v321;
      swift_storeEnumTagMultiPayload();
      v232 = sub_1CF068B74();
      v226 = (*(v314 + 8))(v230, v231);
      if (v232)
      {
        *&v342 = 0;
        *(&v342 + 1) = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA55170);
        v233 = v287;
        v234 = v307;
        v235 = v326;
        (v319)(v326, v324);
        v236 = *(AssociatedConformanceWitness + 16);
        v237 = v325;
        sub_1CF9E7FE8();
        (v327)(v233, v237);
        v68 = v342;
        sub_1CF657A18(v342, *(&v342 + 1), 0, 2u);

        (*(v320 + 8))(v234, v235);
        return v68;
      }
    }
  }

  if (((*(*v318 + 256))(v226) & 1) == 0 || !sub_1CF056558())
  {
    goto LABEL_91;
  }

  v238 = v318[2];
  v239 = *(v324 + 72);
  v240 = v289;
  v239(v326);
  v241 = v328;
  sub_1CF68DDB0(v240, v333, v329, v330, v288);
  v328 = v241;
  if (v241)
  {
    (v327)(v289, v325);
    (*(v320 + 8))(v307, v326);
    return v68;
  }

  (v327)(v289, v325);
  if ((*(v305 + 48))(v288, 1, v302) == 1)
  {
    (*(v300 + 8))(v288, v301);
    goto LABEL_91;
  }

  v242 = v285;
  (*(v305 + 32))(v285, v288, v302);
  if (v242[v299[14]] != 3 || (v243 = v285[v299[13]], v243 == 2))
  {
    (*(v305 + 8))(v285, v302);
LABEL_91:
    v249 = v291;
    v250 = v326;
    v251 = v324;
    v322(v326, v324);
    v252 = v290;
    (*(v251 + 72))(v250, v251);
    v253 = v328;
    v254 = sub_1CF62E2F8(v249, v252, 0, v318, v333, v329, v330);
    if (v253)
    {
      v256 = v325;
      v68 = v327;
      (v327)(v290, v325);
      (v68)(v291, v256);
      (*(v320 + 8))(v307, v326);
    }

    else
    {
      v68 = v254;
      v257 = v255;
      v258 = v325;
      v259 = v327;
      (v327)(v290, v325);
      (v259)(v291, v258);
      if (v257)
      {
        (*(v320 + 8))(v307, v326);
      }

      else
      {
        *&v342 = sub_1CF9E6DA8();
        v260 = v325;
        v330 = swift_getTupleTypeMetadata2();
        v261 = *(v330 + 48);
        v262 = v323;
        v263 = v306;
        v264 = v358;
        v358 = *(v323 + 16);
        v358(v306, v264, v260);
        v333 = *(v262 + 56);
        v333(&v263[v261], 1, 1, v260);
        swift_storeEnumTagMultiPayload();
        v329 = sub_1CF9E6E58();
        sub_1CF9E6E18();
        v265 = *(**(v331 + 16) + 544);

        v266 = v286;
        v265(v307, v326, v324);

        if ((*(v262 + 48))(v266, 1, v260) == 1)
        {
          (*(v284 + 8))(v286, v317);
        }

        else
        {
          v267 = v283;
          v268 = v325;
          (*(v323 + 32))(v283, v286, v325);
          v269 = *(v330 + 48);
          v270 = v306;
          v358(v306, v267, v268);
          v333(&v270[v269], 1, 1, v268);
          swift_storeEnumTagMultiPayload();
          sub_1CF9E6E18();
          (v327)(v267, v268);
        }

        v271 = v342;
        v272 = *(**(v331 + 16) + 312);

        v274 = v272(v273);

        v275 = v326;
        v68 = sub_1CF06A504(v271, v315, v274 & 1);

        (*(v320 + 8))(v307, v275);
      }
    }

    return v68;
  }

  *&v342 = 0;
  *(&v342 + 1) = 0xE000000000000000;
  if (v243)
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x6620746E65726170, 0xEE00207265646C6FLL);
    v276 = v287;
    v245 = v307;
    v246 = v326;
    (v239)(v326, v324);
    v277 = *(AssociatedConformanceWitness + 16);
    v278 = v325;
    sub_1CF9E7FE8();
    (v327)(v276, v278);
    MEMORY[0x1D3868CC0](0xD000000000000028, 0x80000001CFA55100);
  }

  else
  {
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x6620746E65726170, 0xEE00207265646C6FLL);
    v244 = v287;
    v245 = v307;
    v246 = v326;
    (v239)(v326, v324);
    v247 = *(AssociatedConformanceWitness + 16);
    v248 = v325;
    sub_1CF9E7FE8();
    (v327)(v244, v248);
    MEMORY[0x1D3868CC0](0xD000000000000038, 0x80000001CFA55130);
  }

  v68 = v342;
  (*(v305 + 8))(v285, v302);
  (*(v320 + 8))(v245, v246);
  return v68;
}

uint64_t sub_1CF617584(uint64_t a1, unsigned __int8 *a2, void *a3, void *a4)
{
  v104 = a1;
  v82 = *a3;
  v84 = sub_1CF9E5CF8();
  v88 = *(v84 - 8);
  v7 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v87 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v82[11];
  v83 = v82[13];
  v85 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v91 = sub_1CF9E75D8();
  v95 = *(v91 - 8);
  v11 = *(v95 + 64);
  v12 = MEMORY[0x1EEE9AC00](v91);
  v98 = &v81 - v13;
  v94 = AssociatedTypeWitness;
  v93 = *(AssociatedTypeWitness - 8);
  v14 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v81 - v15;
  v16 = sub_1CF9E53C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v81 - v22;
  v86 = *a2;
  v24 = a4[4];
  v100 = a4[3];
  v101 = v24;
  v97 = a4;
  v99 = __swift_project_boxed_opaque_existential_1(a4, v100);
  v96 = a3;
  v103 = a3[3];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FD0, &unk_1CF9FE690);
  v25 = swift_allocObject();
  v89 = xmmword_1CF9FA440;
  *(v25 + 16) = xmmword_1CF9FA440;
  LODWORD(v105) = 13;
  v26 = MEMORY[0x1E69E7CC0];
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00BC98(&qword_1EDEAECF0, MEMORY[0x1E6967EB8]);
  sub_1CF9E57D8();
  v27 = sub_1CF9E53A8();
  v28 = *(v17 + 8);
  v28(v23, v16);
  *(v25 + 32) = v27;
  LODWORD(v105) = 1;
  sub_1CF4C5FCC(v26);
  sub_1CF9E57D8();
  v29 = sub_1CF9E53A8();
  v28(v21, v16);
  v31 = v103;
  v30 = v104;
  *(v25 + 40) = v29;
  v32 = v102;
  (*(*v31 + 440))(v30, v25, v99, v100, v101);

  if (!v32)
  {
    v81 = v16;
    v99 = v28;
    v100 = v23;
    v34 = v95;
    v101 = v17 + 8;
    v102 = v21;
    v35 = v97;
    v36 = v97[3];
    v37 = v97[4];
    v38 = __swift_project_boxed_opaque_existential_1(v97, v36);
    (*(*v96[2] + 160))(v104, v38, v36, *(v37 + 8));
    v40 = v93;
    v39 = v94;
    if ((*(v93 + 48))(v98, 1, v94) == 1)
    {
      return (*(v34 + 8))(v98, v91);
    }

    (*(v40 + 32))(v92, v98, v39);
    v41 = v35[4];
    v95 = v35[3];
    v98 = v41;
    v91 = __swift_project_boxed_opaque_existential_1(v35, v95);
    v42 = swift_allocObject();
    *(v42 + 16) = v89;
    LODWORD(v105) = 13;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    v44 = v100;
    v45 = v81;
    v90 = 0;
    v46 = v40;
    sub_1CF9E57D8();
    v47 = sub_1CF9E53A8();
    v48 = v99;
    v99(v44, v45);
    *(v42 + 32) = v47;
    LODWORD(v105) = 1;
    sub_1CF4C5FCC(v43);
    v49 = v102;
    sub_1CF9E57D8();
    v50 = sub_1CF9E53A8();
    v51 = v45;
    v52 = v92;
    v48(v49, v51);
    v53 = v103;
    *(v42 + 40) = v50;
    v54 = v90;
    (*(*v53 + 448))(v52, v42, v91, v95, v98);
    if (v54)
    {
      (*(v46 + 8))(v52, v94);
    }

    v55 = v97;

    if (v86 != 1)
    {
      return (*(v93 + 8))(v52, v94);
    }

    v56 = v55[3];
    v103 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v56);
    v57 = v82[12];
    v101 = v82[10];
    v105 = v101;
    v106 = v85;
    v102 = v57;
    v58 = v83;
    v107 = v57;
    v108 = v83;
    type metadata accessor for Ingestion.ReactToOwnershipChange();
    v59 = v87;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v61 = v60;
    v62 = *(v88 + 8);
    v63 = v84;
    v88 += 8;
    result = v62(v59, v84);
    v64 = v61 * 1000000000.0;
    if (COERCE__INT64(fabs(v61 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
        v65 = sub_1CF656F74(v104, 0x2000000000000000, v64, 2048, sub_1CF052464);
        v66 = v87;
        sub_1CF9E5CE8();
        sub_1CF9E5C98();
        v68 = v67;
        result = v62(v66, v63);
        v69 = v68 * 1000000000.0;
        if (COERCE__INT64(fabs(v68 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v69 > -9.22337204e18)
          {
            if (v69 < 9.22337204e18)
            {
              v70 = v96;
              sub_1CF5215C0(v65);

              v71 = v55[3];
              __swift_project_boxed_opaque_existential_1(v55, v71);
              v104 = (*(*v70 + 176))();
              v105 = v85;
              v106 = v101;
              v107 = v58;
              v108 = v102;
              type metadata accessor for Ingestion.ReactToOwnershipChange();
              v72 = v87;
              sub_1CF9E5CE8();
              sub_1CF9E5C98();
              v74 = v73;
              result = v62(v72, v63);
              v75 = v74 * 1000000000.0;
              if (COERCE__INT64(fabs(v74 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v75 > -9.22337204e18)
                {
                  v103 = v71;
                  if (v75 < 9.22337204e18)
                  {
                    v76 = sub_1CF656F74(v92, 0x2000000000000000, v75, 2048, sub_1CF052464);
                    v77 = v87;
                    sub_1CF9E5CE8();
                    sub_1CF9E5C98();
                    v79 = v78;
                    result = v62(v77, v63);
                    v80 = v79 * 1000000000.0;
                    if (COERCE__INT64(fabs(v79 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
                    {
                      if (v80 > -9.22337204e18)
                      {
                        if (v80 < 9.22337204e18)
                        {
                          sub_1CF5215C0(v76);
                          (*(v93 + 8))(v92, v94);
                        }

LABEL_34:
                        __break(1u);
                        return result;
                      }

LABEL_33:
                      __break(1u);
                      goto LABEL_34;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_25;
  }

  return result;
}

uint64_t sub_1CF6180A8(uint64_t *a1, int a2, void *a3, uint64_t *a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t), void (*a6)(void, void, void), uint64_t *a7)
{
  v357 = a7;
  v358 = a4;
  v359 = a5;
  v360 = a6;
  v334 = a2;
  v368 = a1;
  v348 = *a3;
  v7 = v348[10];
  v351 = a3;
  v8 = v348[12];
  type metadata accessor for SnapshotItem();
  v335 = sub_1CF9E75D8();
  v338 = *(v335 - 8);
  v9 = *(v338 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v346 = (v316 - v10);
  v330 = type metadata accessor for JobLockRule();
  v327 = *(v330 - 8);
  v11 = *(v327 + 64);
  v12 = MEMORY[0x1EEE9AC00](v330);
  v329 = v316 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v326 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v331 = v316 - v14;
  v15 = sub_1CF9E5CF8();
  v353 = *(v15 - 8);
  v354 = v15;
  v16 = *(v353 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v352 = v316 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1CF9E6118();
  v355 = *(v18 - 8);
  v356 = v18;
  v19 = *(v355 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v344 = v316 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v342 = v316 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v345 = (v316 - v25);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v347 = v316 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v332 = v316 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v343 = v316 - v30;
  v31 = type metadata accessor for FileTreeWriter.FileTreeChange();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v341 = v316 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v340 = v316 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v336 = v316 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v328 = v316 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v349 = v316 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v339 = v316 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = v316 - v45;
  v365 = sub_1CF9E75D8();
  v367 = *(v365 - 8);
  v47 = *(v367 + 64);
  v48 = MEMORY[0x1EEE9AC00](v365);
  v333 = v316 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v350 = (v316 - v51);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v337 = v316 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v325 = v316 - v55;
  MEMORY[0x1EEE9AC00](v54);
  v363 = v316 - v56;
  v361 = v8;
  v362 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v364 = *(AssociatedTypeWitness - 8);
  v57 = *(v364 + 64);
  v58 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = v316 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = v316 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v65 = v316 - v64;
  v66 = v32;
  v69 = *(v32 + 16);
  v68 = v32 + 16;
  v67 = v69;
  v69(v46, v368, v31);
  if (swift_getEnumCaseMultiPayload())
  {
    return (*(v66 + 8))(v46, v31);
  }

  v320 = v60;
  v319 = v63;
  v317 = v33;
  v322 = v67;
  v324 = v68;
  v323 = v31;
  v321 = v66;
  type metadata accessor for JobLockAggregator();
  sub_1CF9E75D8();
  v71 = v365;
  v72 = AssociatedTypeWitness;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v74 = v363;
  v75 = v364;
  v76 = v367;
  v77 = v72;
  v78 = *(TupleTypeMetadata3 + 48);
  v79 = *&v46[*(TupleTypeMetadata3 + 64)];
  v80 = v77;
  (*(v364 + 32))(v65, v46);
  v81 = &v46[v78];
  v82 = v79;
  (*(v76 + 32))(v74, v81, v71);
  v84 = v357;
  v83 = v358;
  v85 = v369;
  v86 = sub_1CF614EB4(v65, v74, v82, v358, v359, v360, v357[1]);
  if (v85)
  {

    (*(v76 + 8))(v74, v71);
    return (*(v75 + 8))(v65, v80);
  }

  v318 = v65;
  v369 = 0;
  v316[1] = v82;
  v90 = v88;
  if (v89 <= 1u)
  {
    v115 = v86;
    v116 = v355;
    v117 = v323;
    if (!v89)
    {
      v118 = v87;
      v119 = fpfs_current_or_default_log();
      v120 = v344;
      sub_1CF9E6128();
      v121 = v341;
      v122 = v322;
      v322(v341, v368, v117);

      v123 = sub_1CF9E6108();
      v124 = v117;
      v125 = sub_1CF9E7298();
      v359 = v118;
      sub_1CF5DFDEC(v115, v118, v90, 0);
      LODWORD(v362) = v125;
      v368 = v123;
      if (os_log_type_enabled(v123, v125))
      {
        v126 = v115;
        v127 = swift_slowAlloc();
        v361 = swift_slowAlloc();
        v370 = v361;
        *v127 = 136315394;
        v128 = v349;
        v122(v349, v121, v124);
        v347 = v90;
        v129 = *(v321 + 8);
        v129(v121, v124);
        v130 = sub_1CF06AB58(v124);
        v131 = v355;
        v133 = v132;
        v129(v128, v124);
        v134 = sub_1CEFD0DF0(v130, v133, &v370);

        *(v127 + 4) = v134;
        *(v127 + 12) = 2080;
        v135 = v126;
        v136 = v126;
        v137 = v359;
        v138 = sub_1CEFD0DF0(v136, v359, &v370);
        sub_1CF5DFDEC(v135, v137, v347, 0);
        *(v127 + 14) = v138;
        v139 = v368;
        _os_log_impl(&dword_1CEFC7000, v368, v362, "⛔️  discarded %s: %s", v127, 0x16u);
        v140 = v361;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v140, -1, -1);
        MEMORY[0x1D386CDC0](v127, -1, -1);

        (*(v131 + 8))(v344, v356);
      }

      else
      {
        (*(v321 + 8))(v121, v124);

        sub_1CF5DFDEC(v115, v359, v90, 0);
        (*(v355 + 8))(v120, v356);
      }

LABEL_56:
      (*(v367 + 8))(v363, v365);
      return (*(v364 + 8))(v318, AssociatedTypeWitness);
    }

    v179 = v368;
    v180 = v347;
    if (v87)
    {
      if ((v334 & 1) == 0)
      {
        v181 = v87;
        v182 = (*(*v83 + 152))();
        v87 = v181;
        v180 = v347;
        if ((v182 & 4) == 0)
        {
          v183 = v87;
          v184 = fpfs_current_or_default_log();
          sub_1CF9E6128();
          v185 = v328;
          v186 = v179;
          v187 = v322;
          v322(v328, v186, v117);

          v188 = sub_1CF9E6108();
          v189 = sub_1CF9E7288();
          v359 = v183;
          sub_1CF5DFDEC(v115, v183, v90, 1u);
          LODWORD(v351) = v189;
          if (os_log_type_enabled(v188, v189))
          {
            v190 = swift_slowAlloc();
            v350 = swift_slowAlloc();
            v370 = v350;
            *v190 = 136446466;
            v346 = v188;
            v191 = v349;
            v187(v349, v185, v117);
            v347 = v90;
            v192 = *(v321 + 8);
            v192(v185, v117);
            v193 = sub_1CF06AB58(v117);
            v195 = v194;
            v192(v191, v117);
            v196 = sub_1CEFD0DF0(v193, v195, &v370);

            *(v190 + 4) = v196;
            *(v190 + 12) = 2080;
            v197 = v190;
            v198 = v359;
            v199 = sub_1CEFD0DF0(v115, v359, &v370);
            sub_1CF5DFDEC(v115, v198, v347, 1u);
            *(v197 + 14) = v199;
            v200 = v346;
            _os_log_impl(&dword_1CEFC7000, v346, v351, "defer ingestion of %{public}s: %s", v197, 0x16u);
            v201 = v350;
            swift_arrayDestroy();
            MEMORY[0x1D386CDC0](v201, -1, -1);
            MEMORY[0x1D386CDC0](v197, -1, -1);
          }

          else
          {
            (*(v321 + 8))(v185, v117);
            sub_1CF5DFDEC(v115, v359, v90, 1u);
          }

          (*(v116 + 8))(v332, v356);
          v278 = v364;
          v279 = v318;
          v281 = v353;
          v280 = v354;
          v282 = v352;
          sub_1CF9E5CE8();
          sub_1CF9E5C98();
          v284 = v283;
          result = (*(v281 + 8))(v282, v280);
          v285 = v284 * 1000000000.0;
          if (COERCE__INT64(fabs(v284 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_67;
          }

          v286 = v349;
          v287 = v331;
          if (v285 <= -9.22337204e18)
          {
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          if (v285 >= 9.22337204e18)
          {
LABEL_69:
            __break(1u);
            return result;
          }

          v359 = v285;
          v288 = AssociatedTypeWitness;
          sub_1CF9E75D8();
          v289 = *(swift_getTupleTypeMetadata2() + 48);
          v290 = v278;
          (*(v278 + 16))(v287, v279, v288);
          v291 = v325;
          (*(v367 + 16))();
          v292 = v362;
          v293 = *(v362 - 8);
          v294 = 1;
          if ((*(v293 + 48))(v291, 1, v362) == 1)
          {
            v293 = v367;
            v295 = v365;
          }

          else
          {
            (*(v361 + 72))(v292);
            v294 = 0;
            v295 = v292;
          }

          v296 = v330;
          v297 = v291;
          v298 = v329;
          (*(v293 + 8))(v297, v295);
          (*(v290 + 56))(&v287[v289], v294, 1, AssociatedTypeWitness);
          v299 = swift_storeEnumTagMultiPayload();
          v300 = v358;
          v301 = v296;
          (*(*v358 + 216))(v299);
          sub_1CF529738();

          LODWORD(v356) = *(v300[4] + 32);
          v302 = v327;
          (*(v327 + 16))(v298, v287, v301);
          v303 = v302;
          v304 = v323;
          v322(v286, v368, v323);
          v305 = (*(v302 + 80) + 72) & ~*(v302 + 80);
          v306 = v321;
          v307 = (v326 + *(v321 + 80) + v305) & ~*(v321 + 80);
          v308 = (v317 + v307 + 7) & 0xFFFFFFFFFFFFFFF8;
          v309 = swift_allocObject();
          *(v309 + 2) = v362;
          v310 = v348;
          v312 = v360;
          v311 = v361;
          *(v309 + 3) = v348[11];
          *(v309 + 4) = v312;
          *(v309 + 5) = v311;
          v313 = v357;
          *(v309 + 6) = v310[13];
          *(v309 + 7) = v313;
          *(v309 + 8) = v300;
          (*(v303 + 32))(&v309[v305], v329, v301);
          (*(v306 + 32))(&v309[v307], v349, v304);
          *&v309[v308] = v359;
          v314 = *(*v300 + 448);

          v314("ingest(itemChange:ignoreAfterFlush:result:db:with:)", 51, 2, v356, 1, nullsub_1, 0, sub_1CF657A58, v309);

          (*(v303 + 8))(v331, v330);
          goto LABEL_56;
        }
      }

      sub_1CF5DFDEC(v115, v87, v90, 1u);
    }

    v225 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v226 = v336;
    v227 = v322;
    v322(v336, v179, v117);
    v228 = v180;
    v229 = sub_1CF9E6108();
    v230 = sub_1CF9E7288();
    if (os_log_type_enabled(v229, v230))
    {
      v231 = swift_slowAlloc();
      v368 = swift_slowAlloc();
      v370 = v368;
      *v231 = 136446210;
      v232 = v349;
      v227(v349, v226, v117);
      v233 = *(v321 + 8);
      v233(v226, v117);
      v234 = sub_1CF06AB58(v117);
      v235 = v117;
      v236 = v355;
      v238 = v237;
      v233(v232, v235);
      v84 = v357;
      v239 = sub_1CEFD0DF0(v234, v238, &v370);

      *(v231 + 4) = v239;
      _os_log_impl(&dword_1CEFC7000, v229, v230, "%{public}s", v231, 0xCu);
      v240 = v368;
      __swift_destroy_boxed_opaque_existential_1(v368);
      MEMORY[0x1D386CDC0](v240, -1, -1);
      v241 = v231;
      v83 = v358;
      MEMORY[0x1D386CDC0](v241, -1, -1);

      (*(v236 + 8))(v347, v356);
    }

    else
    {
      (*(v321 + 8))(v226, v117);

      (*(v355 + 8))(v228, v356);
    }

    v243 = v363;
    v242 = v364;
    v244 = v318;
    v245 = v361;
    v246 = v362;
    v247 = AssociatedTypeWitness;
    v248 = v337;
    (*(v367 + 16))(v337, v363, v365);
    sub_1CF06B4E0(v248, v246, v245, v346);
    v249 = v352;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v251 = v250;
    result = (*(v353 + 8))(v249, v354);
    v252 = v251 * 1000000000.0;
    v253 = v338;
    if (COERCE__INT64(fabs(v251 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v254 = v335;
      if (v252 > -9.22337204e18)
      {
        if (v252 < 9.22337204e18)
        {
          v315 = v84;
          v255 = v346;
          sub_1CF611904(v346, v244, 0, 0, 0, v83, 0x2000000000000000, v252, 2048, v351, v359, v360, v315);

          (*(v253 + 8))(v255, v254);
          (*(v367 + 8))(v243, v365);
          return (*(v242 + 8))(v244, v247);
        }

        goto LABEL_66;
      }

LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v91 = v367;
  v92 = v318;
  v93 = v356;
  v94 = v323;
  if (v89 != 2)
  {
    if (v89 == 3)
    {
      v368 = v86;
      v359 = v87;
      v347 = v88;
      v95 = fpfs_current_or_default_log();
      v96 = v345;
      sub_1CF9E6128();
      v97 = v365;
      v360 = *(v91 + 16);
      v360(v350, v363, v365);
      v98 = v364;
      v99 = v320;
      v100 = AssociatedTypeWitness;
      (*(v364 + 16))(v320, v92, AssociatedTypeWitness);
      v101 = v91;
      v102 = sub_1CF9E6108();
      v103 = sub_1CF9E7288();
      if (os_log_type_enabled(v102, v103))
      {
        LODWORD(v358) = v103;
        v104 = swift_slowAlloc();
        v357 = swift_slowAlloc();
        v370 = v357;
        *v104 = 136315138;
        v105 = v333;
        v360(v333, v350, v97);
        v106 = v362;
        v107 = *(v362 - 8);
        if ((*(v107 + 48))(v105, 1, v362) == 1)
        {
          v108 = v367;
          (*(v367 + 8))(v105, v97);
          v109 = AssociatedTypeWitness;
          v110 = *(swift_getAssociatedConformanceWitness() + 16);
          v111 = v320;
          v112 = sub_1CF9E7F98();
          v114 = v113;
        }

        else
        {
          v256 = *(v361 + 8);
          v112 = sub_1CF9E7F98();
          v114 = v257;
          (*(v107 + 8))(v105, v106);
          v109 = AssociatedTypeWitness;
          v108 = v367;
          v111 = v320;
        }

        v360 = *(v364 + 8);
        (v360)(v111, v109);
        v224 = *(v108 + 8);
        v224(v350, v97);
        v258 = sub_1CEFD0DF0(v112, v114, &v370);

        *(v104 + 4) = v258;
        _os_log_impl(&dword_1CEFC7000, v102, v358, "delay tracking of temporary item %s", v104, 0xCu);
        v259 = v357;
        __swift_destroy_boxed_opaque_existential_1(v357);
        MEMORY[0x1D386CDC0](v259, -1, -1);
        MEMORY[0x1D386CDC0](v104, -1, -1);

        (*(v355 + 8))(v345, v356);
      }

      else
      {

        v360 = *(v98 + 8);
        (v360)(v99, v100);
        v224 = *(v101 + 8);
        v224(v350, v97);
        (*(v355 + 8))(v96, v356);
      }

      v260 = v348[11];
      v261 = v348[13];
      v370 = v362;
      v371 = v260;
      v372 = v361;
      v373 = v261;
      v262 = type metadata accessor for Ingestion.TrackTemporaryItem();
      v263 = v352;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v265 = v264;
      result = (*(v353 + 8))(v263, v354);
      v266 = v265 * 1000000000.0;
      if (COERCE__INT64(fabs(v265 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v266 > -9.22337204e18)
        {
          v357 = v260;
          v358 = v224;
          if (v266 < 9.22337204e18)
          {
            v267 = v266;
            v268 = *(v262 + 48);
            v269 = *(v262 + 52);
            swift_allocObject();
            v270 = v318;
            v271 = sub_1CF052464(v318, 0x2000000000000000, v267, 2048);
            v272 = *(v271 + 96);
            v273 = *(v271 + 104);
            v274 = v359;
            *(v271 + 96) = 256;
            *(v271 + 104) = v274;
            v275 = *(v271 + 112);
            *(v271 + 112) = 0;
            v276 = v368;
            v277 = v347;
            sub_1CF657A18(v368, v274, v347, 3u);

            sub_1CF03D7A8(v272, v273, v275);

            v370 = v362;
            v371 = v357;
            v372 = v361;
            v373 = v261;
            type metadata accessor for JobResult();
            sub_1CF803A0C(v351, v271);

            sub_1CF5DFDEC(v276, v274, v277, 3u);
            (v358)(v363, v365);
            return (v360)(v270, AssociatedTypeWitness);
          }

          goto LABEL_63;
        }

        goto LABEL_61;
      }

      goto LABEL_59;
    }

    v162 = fpfs_current_or_default_log();
    v163 = v342;
    sub_1CF9E6128();
    v164 = v340;
    v165 = v322;
    v322(v340, v368, v94);
    v166 = sub_1CF9E6108();
    v167 = sub_1CF9E7298();
    if (!os_log_type_enabled(v166, v167))
    {
      (*(v321 + 8))(v164, v94);

      (*(v355 + 8))(v163, v356);
      (*(v91 + 8))(v363, v365);
      return (*(v364 + 8))(v92, AssociatedTypeWitness);
    }

    v168 = swift_slowAlloc();
    v362 = v168;
    v368 = swift_slowAlloc();
    v370 = v368;
    *v168 = 136315138;
    v169 = v349;
    v165(v349, v164, v94);
    v170 = *(v321 + 8);
    v170(v164, v94);
    v171 = v91;
    v172 = sub_1CF06AB58(v94);
    v174 = v173;
    v170(v169, v94);
    v175 = sub_1CEFD0DF0(v172, v174, &v370);

    v176 = v362;
    *(v362 + 4) = v175;
    v177 = v176;
    _os_log_impl(&dword_1CEFC7000, v166, v167, "⛔️  already known %s", v176, 0xCu);
    v178 = v368;
    __swift_destroy_boxed_opaque_existential_1(v368);
    MEMORY[0x1D386CDC0](v178, -1, -1);
    MEMORY[0x1D386CDC0](v177, -1, -1);

    (*(v355 + 8))(v342, v356);
    (*(v171 + 8))(v363, v365);
    return (*(v364 + 8))(v318, AssociatedTypeWitness);
  }

  v141 = v87;
  v142 = v86;
  v143 = fpfs_current_or_default_log();
  v144 = v343;
  sub_1CF9E6128();
  v145 = v339;
  v322(v339, v368, v94);

  v146 = sub_1CF9E6108();
  v147 = sub_1CF9E7288();
  v368 = v142;
  v148 = v142;
  v149 = v141;
  sub_1CF5DFDEC(v148, v141, v90, 2u);
  LODWORD(v346) = v147;
  v350 = v146;
  if (os_log_type_enabled(v146, v147))
  {
    v150 = swift_slowAlloc();
    v345 = swift_slowAlloc();
    v370 = v345;
    *v150 = 136446466;
    v151 = v349;
    v322(v349, v145, v94);
    v347 = v90;
    v152 = *(v321 + 8);
    v152(v145, v94);
    v153 = sub_1CF06AB58(v94);
    v155 = v154;
    v152(v151, v94);
    v156 = sub_1CEFD0DF0(v153, v155, &v370);

    *(v150 + 4) = v156;
    *(v150 + 12) = 2082;
    v157 = v368;
    v158 = sub_1CEFD0DF0(v368, v149, &v370);
    v159 = v347;
    sub_1CF5DFDEC(v157, v149, v347, 2u);
    *(v150 + 14) = v158;
    v160 = v350;
    _os_log_impl(&dword_1CEFC7000, v350, v346, "%{public}s force fetch: %{public}s", v150, 0x16u);
    v161 = v345;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v161, -1, -1);
    MEMORY[0x1D386CDC0](v150, -1, -1);

    (*(v355 + 8))(v343, v356);
  }

  else
  {
    (*(v321 + 8))(v145, v94);
    v202 = v141;
    v159 = v90;
    sub_1CF5DFDEC(v368, v202, v90, 2u);

    (*(v355 + 8))(v144, v93);
  }

  v203 = v364;
  v205 = v353;
  v204 = v354;
  v206 = v352;
  v207 = v319;
  (*(v364 + 16))(v319, v318, AssociatedTypeWitness);
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v209 = v208;
  result = (*(v205 + 8))(v206, v204);
  v210 = v209 * 1000000000.0;
  if (COERCE__INT64(fabs(v209 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v210 <= -9.22337204e18)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v210 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v211 = v210;
  if ((v159 & 0xFFFFFFFFFFFFF7FFLL) != 0)
  {
    v212 = v159 | 0x800;
  }

  else
  {
    v212 = 2048;
  }

  v213 = v348[11];
  v214 = v348[13];
  v216 = v361;
  v215 = v362;
  v370 = v362;
  v371 = v213;
  v372 = v361;
  v373 = v214;
  type metadata accessor for Ingestion.FetchItemMetadata();
  v217 = sub_1CF657094(v207, 0x2000000000000000, v211, v212, type metadata accessor for Ingestion.FetchItemMetadata);
  v218 = v207;
  v219 = AssociatedTypeWitness;
  v368 = *(v203 + 8);
  (v368)(v218, AssociatedTypeWitness);
  v221 = *(v217 + 96);
  v220 = *(v217 + 104);
  *(v217 + 96) = xmmword_1CFA0DC30;
  v222 = *(v217 + 112);
  *(v217 + 112) = 0;

  sub_1CF03D7A8(v221, v220, v222);

  v370 = v215;
  v371 = v213;
  v372 = v216;
  v373 = v214;
  type metadata accessor for JobResult();
  sub_1CF803A0C(v351, v217);
  v223 = v318;
  (*(*v358[3] + 408))(v318, 3, v359, v360, v357);

  (*(v367 + 8))(v363, v365);
  return (v368)(v223, v219);
}

uint64_t sub_1CF61A3C8(uint64_t (*a1)(void), uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v120 = a5;
  v121 = a4;
  v122 = a3;
  v134 = a1;
  v6 = *a2;
  v7 = *a2;
  v8 = *(*a2 + 104);
  v9 = *(*a2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  v124 = *(v11 - 8);
  v125 = v11;
  v12 = *(v124 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v133 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v123 = &v112 - v16;
  v128 = AssociatedTypeWitness;
  v127 = *(AssociatedTypeWitness - 8);
  v17 = *(v127 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v117 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v112 - v20;
  v21 = *(v6 + 96);
  v22 = *(v6 + 80);
  v23 = swift_getAssociatedTypeWitness();
  v24 = sub_1CF9E75D8();
  v132 = *(v24 - 8);
  v25 = *(v132 + 64);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v129 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v112 - v29;
  v131 = v23;
  v130 = *(v23 - 8);
  v31 = *(v130 + 64);
  v32 = MEMORY[0x1EEE9AC00](v28);
  v119 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v126 = &v112 - v35;
  v36 = a2;
  if (((*(v7 + 152))(v34) & 0x4000) == 0)
  {
    goto LABEL_5;
  }

  v37 = v24;
  *&v38 = v22;
  *(&v38 + 1) = v9;
  *&v39 = v21;
  *(&v39 + 1) = v8;
  v136 = v39;
  v135 = v38;
  v116 = type metadata accessor for ItemReconciliation();
  v40 = v134;
  if (!sub_1CF07CD80(v116) || (v41 = *(v40 + *(type metadata accessor for ItemReconciliationHalf() + 36)), (v41 & 0x80) == 0) && (v42 = v40 + *(v116 + 52), (v42[*(type metadata accessor for ItemReconciliationHalf() + 36)] & 0x80) == 0))
  {
LABEL_5:
    v43 = 0;
    return v43 & 1;
  }

  v114 = v9;
  v115 = v8;
  v45 = v36;
  v46 = v36[4];
  v47 = sub_1CF056558();
  if ((v41 & 0x80) != 0)
  {
    v48 = v130;
    if ((v41 & 9) == 0)
    {
      v53 = v137;
      v49 = v131;
      v50 = v133;
      goto LABEL_20;
    }

    v49 = v131;
    v50 = v133;
    if (!v47)
    {
      v53 = v137;
      goto LABEL_20;
    }

    v51 = v132;
    v52 = v134;
    (*(v132 + 16))(v30, v134, v37);
    if ((*(v48 + 48))(v30, 1, v49) == 1)
    {
      (*(v51 + 8))(v30, v37);
      v53 = v137;
      v24 = v37;
      goto LABEL_21;
    }

    v113 = v36;
    v54 = v126;
    (*(v48 + 32))(v126, v30, v49);
    v56 = v127;
    v55 = v128;
    v58 = v124;
    v57 = v125;
    v59 = v52 + *(v116 + 52);
    v60 = v123;
    (*(v124 + 16))(v123, v59, v125);
    if ((*(v56 + 48))(v60, 1, v55) == 1)
    {
      (*(v48 + 8))(v54, v49);
      (*(v58 + 8))(v60, v57);
      v53 = v137;
      v51 = v132;
      v50 = v133;
      v24 = v37;
      v45 = v113;
      goto LABEL_21;
    }

    v61 = v60;
    v62 = v118;
    v63 = (*(v56 + 32))(v118, v61, v55);
    v45 = v113;
    v64 = (*(*v113 + 176))(v63);
    v65 = v137;
    v66 = sub_1CF5E1650(v62, v64, v122, v121, *(v120 + 8));
    v53 = v65;
    if (v65)
    {

      v68 = v130;
      v69 = v131;
      v71 = v126;
      v70 = v127;
LABEL_42:
      (*(v70 + 8))(v62, v128);
      (*(v68 + 8))(v71, v69);
      return v43 & 1;
    }

    v89 = v66;
    v90 = v67;

    if (v89)
    {
      v49 = v131;
      v91 = v127;
      v50 = v133;
      if (v90)
      {
        v92 = v131;
        v93 = v62;
        v94 = v122;
        v95 = v62;
        v96 = v120;
        v97 = v121;
        sub_1CF61C304(v45, v93, v90, v122, v121, v120);
        v106 = v45;
        v107 = v126;
        sub_1CF61C584(v106, v126, v95, v94, v97, v96);

        (*(v91 + 8))(v95, v128);
        (*(v130 + 8))(v107, v92);
LABEL_43:
        v43 = 1;
        return v43 & 1;
      }
    }

    else
    {

      v49 = v131;
      v91 = v127;
      v50 = v133;
    }

    (*(v91 + 8))(v62, v128);
    (*(v130 + 8))(v126, v49);
  }

  else
  {
    v53 = v137;
    v49 = v131;
    v50 = v133;
  }

  v24 = v37;
LABEL_20:
  v51 = v132;
LABEL_21:
  v72 = v45[5];
  v73 = sub_1CF056558();
  v74 = v129;
  if (!v73)
  {
LABEL_26:
    v43 = 0;
    return v43 & 1;
  }

  v75 = v134 + *(v116 + 52);
  v76 = type metadata accessor for ItemReconciliationHalf();
  v43 = 0;
  v77 = *&v75[*(v76 + 36)];
  if ((v77 & 0x80) != 0 && (v77 & 9) != 0)
  {
    (*(v51 + 16))(v74, v134, v24);
    v68 = v130;
    if ((*(v130 + 48))(v74, 1, v49) == 1)
    {
      (*(v51 + 8))(v74, v24);
      goto LABEL_26;
    }

    v78 = v119;
    (*(v68 + 32))(v119, v74, v49);
    v69 = v49;
    v79 = v124;
    v80 = v75;
    v81 = v125;
    (*(v124 + 16))(v50, v80, v125);
    v70 = v127;
    if ((*(v127 + 48))(v50, 1, v128) == 1)
    {
      (*(v68 + 8))(v78, v69);
      (*(v79 + 8))(v50, v81);
      v43 = 0;
      return v43 & 1;
    }

    v82 = v117;
    (*(v70 + 32))(v117, v50, v128);
    v83 = v120;
    v84 = v78;
    v85 = v78;
    v86 = v121;
    v87 = sub_1CF5E1650(v84, v45, v122, v121, *(v120 + 8));
    if (v53)
    {
      v62 = v82;
      v71 = v85;
      goto LABEL_42;
    }

    if (v87)
    {
      if (v88)
      {
        v98 = v83;
        v99 = v88;
        v134 = *(*v45 + 176);
        v100 = v134();
        v101 = v119;
        v137 = v99;
        v102 = v99;
        v103 = v122;
        v104 = v86;
        v105 = v98;
        sub_1CF61C304(v100, v119, v102, v122, v104, v98);

        v109 = (v134)(v108);
        v110 = v117;
        sub_1CF61C584(v109, v117, v101, v103, v121, v105);
        v111 = v131;

        (*(v70 + 8))(v110, v128);
        (*(v130 + 8))(v101, v111);
        goto LABEL_43;
      }
    }

    else
    {
    }

    (*(v70 + 8))(v117, v128);
    (*(v68 + 8))(v119, v69);
    v43 = 0;
  }

  return v43 & 1;
}

void sub_1CF61AF18()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698E478]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithIdentifier_];

  v3 = v2;
  [v3 setPriority_];
  [v3 setScheduleAfter_];
  [v3 setTrySchedulingBefore_];
  [v3 setResourceIntensive_];
  [v3 setResources_];
  [v3 setRequiresExternalPower_];
  v4 = [objc_allocWithZone(FPDSharedSystemScheduler) initWithTaskRequest:v3 options:0];

  qword_1EDEBBB28 = v4;
}

uint64_t sub_1CF61B038(uint64_t a1, void *a2, void (*a3)(char *, char *, uint64_t), uint64_t (*a4)(char *, uint64_t, uint64_t), uint64_t a5)
{
  v118 = a4;
  v119 = a5;
  v117 = a3;
  v7 = *a2;
  v107 = sub_1CF9E5CF8();
  v106 = *(v107 - 8);
  v8 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v112 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v7[11];
  v11 = v7[13];
  v111 = type metadata accessor for ItemReconciliationHalf();
  v110 = *(v111 - 8);
  v12 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v100 - v13;
  v14 = v7[10];
  v15 = v7[12];
  v16 = type metadata accessor for ItemReconciliationHalf();
  v114 = *(v16 - 8);
  v115 = v16;
  v17 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v113 = &v100 - v18;
  *&v19 = v14;
  *(&v19 + 1) = v10;
  *&v20 = v15;
  *(&v20 + 1) = v11;
  v122 = v20;
  v123 = v19;
  v127 = v20;
  v126 = v19;
  v121 = type metadata accessor for ItemReconciliation();
  v116 = sub_1CF9E75D8();
  v120 = *(v116 - 8);
  v21 = *(v120 + 64);
  v22 = MEMORY[0x1EEE9AC00](v116);
  v104 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v108 = &v100 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v100 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v100 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v100 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v100 - v35;
  v127 = v122;
  v126 = v123;
  v105 = type metadata accessor for Job();
  v125 = sub_1CF9E6DA8();
  v37 = type metadata accessor for SnapshotItem();
  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v37, WitnessTable, &v126);
  if (v126 != 1)
  {
    return v125;
  }

  v39 = a2[2];
  v40 = v124;
  sub_1CF68DDB0(a1, v117, v118, v119, v36);
  if (v40)
  {
  }

  v101 = a1;
  v124 = 0;
  v42 = v120;
  v44 = v120 + 16;
  v43 = *(v120 + 16);
  v103 = v36;
  v45 = v116;
  v117 = v43;
  v43(v34, v36, v116);
  v46 = v121;
  v47 = *(v121 - 8);
  v118 = *(v47 + 48);
  v119 = v47 + 48;
  v48 = v118(v34, 1, v121);
  v102 = v47;
  if (v48 == 1)
  {
    (*(v42 + 8))(v34, v45);
    v49 = v45;
    v50 = v103;
    v51 = v117;
    v117(v31, v103, v49);
  }

  else
  {
    v52 = v114;
    v53 = *(v114 + 16);
    v100 = v44;
    v54 = v113;
    v55 = v115;
    v53(v113, v34, v115);
    (*(v47 + 8))(v34, v121);
    v56 = v54[*(v55 + 56)];
    v57 = v55;
    v46 = v121;
    (*(v52 + 8))(v54, v57);
    v58 = v56 == 6;
    v42 = v120;
    v49 = v45;
    v50 = v103;
    v51 = v117;
    if (!v58)
    {
      goto LABEL_20;
    }

    v117(v31, v103, v49);
  }

  if (v118(v31, 1, v46) == 1)
  {
    (*(v42 + 8))(v31, v49);
  }

  else
  {
    v60 = v114;
    v59 = v115;
    v61 = v113;
    (*(v114 + 16))(v113, v31, v115);
    (*(v102 + 8))(v31, v121);
    v62 = v61[*(v59 + 52)];
    v63 = v60;
    v51 = v117;
    v50 = v103;
    v64 = v59;
    v46 = v121;
    (*(v63 + 8))(v61, v64);
    v58 = v62 == 3;
    v42 = v120;
    if (v58)
    {
      goto LABEL_20;
    }
  }

  v51(v28, v50, v49);
  if (v118(v28, 1, v46) == 1)
  {
    (*(v42 + 8))(v28, v49);
  }

  else
  {
    v65 = *(v46 + 52);
    v66 = v46;
    v67 = v110;
    v68 = v109;
    v69 = v111;
    (*(v110 + 16))(v109, &v28[v65], v111);
    (*(v102 + 8))(v28, v66);
    v70 = v68[*(v69 + 56)];
    v71 = v67;
    v46 = v66;
    v51 = v117;
    v50 = v103;
    (*(v71 + 8))(v68, v69);
    v58 = v70 == 6;
    v42 = v120;
    if (!v58)
    {
      goto LABEL_20;
    }
  }

  v72 = v50;
  v73 = v108;
  v51(v108, v72, v49);
  if (v118(v73, 1, v46) == 1)
  {
    (*(v42 + 8))(v73, v49);
    goto LABEL_21;
  }

  v74 = *(v46 + 52);
  v75 = v46;
  v76 = v110;
  v77 = v109;
  v78 = v111;
  (*(v110 + 16))(v109, &v73[v74], v111);
  (*(v102 + 8))(v73, v75);
  v79 = v77[*(v78 + 52)];
  (*(v76 + 8))(v77, v78);
  v58 = v79 == 3;
  v42 = v120;
  v50 = v103;
  if (v58)
  {
LABEL_20:
    (*(v42 + 8))(v50, v49);
    return v125;
  }

LABEL_21:
  v126 = v123;
  v127 = v122;
  type metadata accessor for Ingestion.ReSnapshotChildren();
  v80 = v112;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v82 = v81;
  v83 = *(v106 + 8);
  v84 = v107;
  result = v83(v80, v107);
  v85 = v82 * 1000000000.0;
  if (COERCE__INT64(fabs(v82 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *&v126 = sub_1CF656FF8(v101, 0, v85, 0x8000, type metadata accessor for Ingestion.ReSnapshotChildren);
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  v86 = a2[4];
  if (!sub_1CF056558())
  {
    v87 = v104;
    v88 = v116;
    v51(v104, v103, v116);
    v89 = v121;
    if (v118(v87, 1, v121) == 1)
    {
      (*(v120 + 8))(v87, v88);
    }

    else
    {
      v91 = v113;
      v90 = v114;
      v92 = v87;
      v93 = v87;
      v94 = v115;
      (*(v114 + 16))(v113, v92, v115);
      (*(v102 + 8))(v93, v89);
      LODWORD(v93) = v91[*(v94 + 52)];
      (*(v90 + 8))(v91, v94);
      if (!v93)
      {
        (*(v120 + 8))(v103, v116);
        return v125;
      }
    }
  }

  v126 = v123;
  v127 = v122;
  type metadata accessor for Ingestion.FetchChildrenMetadata();
  v95 = v112;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v97 = v96;
  result = v83(v95, v84);
  v98 = v97 * 1000000000.0;
  if (COERCE__INT64(fabs(v97 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  v99 = v116;
  if (v98 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v98 < 9.22337204e18)
  {
    *&v126 = sub_1CF657094(v101, 0, v98, 0x8000, type metadata accessor for Ingestion.FetchChildrenMetadata);
    sub_1CF9E6E18();
    (*(v120 + 8))(v103, v99);
    return v125;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1CF61BC14(uint64_t a1, void *a2, uint64_t a3, void (**a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v66 = a3;
  v59 = a1;
  v57 = *a2;
  v68 = sub_1CF9E5CF8();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v57[12];
  v64 = v57[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v69 = &v51 - v15;
  v58 = sub_1CF9E75D8();
  v16 = *(v58 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v19 = &v51 - v18;
  v20 = a2[4];
  result = sub_1CF056558();
  if (result)
  {
    v54 = v8;
    v52 = v14;
    v53 = v11;
    v22 = type metadata accessor for SnapshotItem();
    v56 = *(v22 + 36);
    v23 = v59;
    v24 = (v59 + *(v22 + 44));
    v60 = v6;
    v25 = v24[1];
    v70 = *v24;
    v71 = v25;
    v26 = v13 + 16;
    v65 = *(v13 + 16);
    v65(v19, v59, AssociatedTypeWitness);
    (*(v13 + 56))(v19, 0, 1, AssociatedTypeWitness);
    v27 = *v20;
    v55 = v13;
    v28 = *(v27 + 256);

    v29 = v60;
    v30 = v28(v23 + v56, &v70, v19, v61, v62, v63);
    v60 = v29;
    if (v29)
    {
      (*(v16 + 8))(v19, v58);
    }

    v31 = v30;
    v32 = v64;
    (*(v16 + 8))(v19, v58);

    v33 = sub_1CF9E6DF8();
    v34 = v55;
    if (!v33)
    {
    }

    v35 = v57[11];
    v36 = v57[13];
    v37 = v32;
    v70 = v32;
    v71 = v35;
    v38 = v53;
    v72 = v53;
    v73 = v36;
    v63 = type metadata accessor for JobResult();
    v70 = v37;
    v71 = v35;
    v72 = v38;
    v73 = v36;
    ItemMetadata = type metadata accessor for Ingestion.FetchItemMetadata();
    v40 = 0;
    v64 = (v54 + 8);
    v61 = (v34 + 8);
    v62 = ItemMetadata;
    while (1)
    {
      v41 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v41)
      {
        v65(v69, v31 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v40, AssociatedTypeWitness);
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        if (v52 != 8)
        {
          goto LABEL_22;
        }

        v70 = result;
        v65(v69, &v70, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v42 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_16:
          __break(1u);
        }
      }

      v43 = v67;
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v45 = v44;
      result = (*v64)(v43, v68);
      v46 = v45 * 1000000000.0;
      if (COERCE__INT64(fabs(v45 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v46 <= -9.22337204e18)
      {
        goto LABEL_20;
      }

      if (v46 >= 9.22337204e18)
      {
        goto LABEL_21;
      }

      v47 = v69;
      v48 = v26;
      v49 = v34;
      v50 = sub_1CF657094(v69, 0x2000000000000000, v46, 0, type metadata accessor for Ingestion.FetchItemMetadata);
      (*v61)(v47, AssociatedTypeWitness);
      sub_1CF803A0C(v66, v50);
      v34 = v49;
      v26 = v48;

      ++v40;
      if (v42 == sub_1CF9E6DF8())
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

BOOL sub_1CF61C1E8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *a3;
  if (!sub_1CF056558())
  {
    return 0;
  }

  v6 = *(v4 + 80);
  v7 = *(v4 + 96);
  v8 = type metadata accessor for SnapshotItem();
  v9 = a2 + *(v8 + 48);
  v10 = type metadata accessor for ItemMetadata();
  if (*(v9 + v10[20]))
  {
    return 0;
  }

  if (*(v9 + v10[21]))
  {
    return 0;
  }

  if (*(v9 + v10[16]))
  {
    return 0;
  }

  v12 = *(v9 + v10[17]);
  if (v12 != 2 && (v12 & 1) != 0)
  {
    return 0;
  }

  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(v8, WitnessTable, &v14);
  return v14 - 1 >= 2 && (v5 & 0x10008) == 0x10000;
}

uint64_t sub_1CF61C304(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *a1;
  v28 = a3;
  v12 = sub_1CF9E5CF8();
  v26 = *(v12 - 8);
  v13 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(*a1[5] + 384))(a2, 1, a4, a5, *(a6 + 8));
  if (!v6)
  {
    v17 = v28;
    v24[1] = a4;
    v25 = v12;
    v18 = v26;
    if (result)
    {
      v24[0] = 0;
      v19 = *(v27 + 96);
      v29 = *(v27 + 80);
      v30 = v19;
      type metadata accessor for Propagation.DeletionAcked();
      v20 = sub_1CF559420(a2, v17[15], v17[16], v17[17]);
      (*(*a1 + 176))();
      sub_1CF9E5CE8();
      sub_1CF9E5C98();
      v22 = v21;
      result = (*(v18 + 8))(v15, v25);
      v23 = v22 * 1000000000.0;
      if (COERCE__INT64(fabs(v22 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v23 > -9.22337204e18)
      {
        if (v23 < 9.22337204e18)
        {
          sub_1CF5215C0(v20);
        }

LABEL_10:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t sub_1CF61C584(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v60 = a6;
  v59 = a5;
  v58 = a4;
  v67 = a3;
  v69 = a2;
  v7 = *a1;
  v8 = sub_1CF9E5CF8();
  v74 = *(v8 - 8);
  v75 = v8;
  v9 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[10];
  v12 = v7[12];
  v13 = type metadata accessor for SnapshotMutation();
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v57 - v16;
  v70 = a1;
  v17 = v7[11];
  v18 = v7[13];
  v65 = type metadata accessor for SnapshotMutation();
  v66 = *(v65 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v57 - v20;
  *&v21 = v17;
  *(&v21 + 1) = v11;
  *&v22 = v18;
  *(&v22 + 1) = v12;
  v76 = v22;
  v77 = v21;
  v82 = v22;
  v81 = v21;
  v23 = type metadata accessor for ReconciliationMutation();
  v24 = *(v23 - 8);
  v79 = v23;
  v80 = v24;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v57 - v26;
  v82 = v76;
  v81 = v77;
  type metadata accessor for ConcreteJobResult();
  v78 = sub_1CF056580();
  v82 = v76;
  v81 = v77;
  *&v77 = type metadata accessor for JobResult();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = swift_getAssociatedTypeWitness();
  *&v76 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedConformanceWitness();
  *&v81 = AssociatedTypeWitness;
  *(&v81 + 1) = v29;
  *&v82 = AssociatedConformanceWitness;
  *(&v82 + 1) = v31;
  v61 = type metadata accessor for ReconciliationID();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = *(TupleTypeMetadata2 + 48);
  v33 = *(*(AssociatedTypeWitness - 8) + 16);
  v34 = v67;
  v33(v27, v67, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *&v27[v32] = 0;
  v35 = v79;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v78, v27);
  v36 = *(v80 + 8);
  v80 += 8;
  v62 = v36;
  v36(v27, v35);
  v37 = swift_getTupleTypeMetadata2();
  v38 = v64;
  v39 = &v64[*(v37 + 48)];
  v33(v64, v34, AssociatedTypeWitness);
  strcpy(v39, "lazily deleted");
  v39[15] = -18;
  v40 = v65;
  swift_storeEnumTagMultiPayload();
  v41 = v78;
  sub_1CF9491AC(v78, v38);
  (*(v66 + 8))(v38, v40);
  v42 = *(TupleTypeMetadata2 + 48);
  v43 = v76;
  v44 = *(*(v76 - 8) + 16);
  v45 = v69;
  v44(v27, v69, v76);
  swift_storeEnumTagMultiPayload();
  *&v27[v42] = 2;
  v46 = v79;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v41, v27);
  v62(v27, v46);
  v47 = swift_getTupleTypeMetadata2();
  v48 = v68;
  v49 = &v68[*(v47 + 48)];
  v44(v68, v45, v43);
  strcpy(v49, "lazily deleted");
  v49[15] = -18;
  v50 = v71;
  swift_storeEnumTagMultiPayload();
  sub_1CF9491F4(v41, v48);
  v51 = (*(v72 + 8))(v48, v50);
  (*(*v70 + 176))(v51);
  v52 = v73;
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v54 = v53;
  result = (*(v74 + 8))(v52, v75);
  v56 = v54 * 1000000000.0;
  if (COERCE__INT64(fabs(v54 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v56 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v56 < 9.22337204e18)
  {
    sub_1CF521850(v41, v56, v58, v59, v60);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1CF62D6B0(uint64_t a1)
{
  type metadata accessor for SnapshotItem();
  v2 = sub_1CF9E75D8();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - v5, a1, v2, v4);
  return sub_1CF9E6948();
}

unint64_t sub_1CF62D788(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for ItemReconciliation() + 52);
  v2 = type metadata accessor for ItemReconciliationHalf();
  result = sub_1CF959F8C(*(v1 + *(v2 + 76)));
  if (!v4)
  {
    return 1819047278;
  }

  return result;
}

uint64_t sub_1CF62D810(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a1;
  v10 = *(*a2 + 96);
  v31 = *(*a2 + 80);
  v32 = v31;
  v30 = v10;
  v33 = v10;
  v11 = type metadata accessor for ItemReconciliation();
  v12 = sub_1CF9E75D8();
  v29 = *(v12 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = a2[4];
  if (sub_1CF056558())
  {
    v25 = a3;
    v26 = a4;
    v27 = a5;
    v28 = v5;
    v24 = v12;
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v18 = *(AssociatedConformanceWitness + 64);
    v19 = swift_checkMetadataState();
    v20 = v34;
    if (v18(v19, AssociatedConformanceWitness) & 1) != 0 || ((*(AssociatedConformanceWitness + 72))(v19, AssociatedConformanceWitness))
    {
      LOBYTE(v20) = 1;
    }

    else
    {
      v22 = a2[2];
      v23 = v28;
      sub_1CF68DDB0(v20, v25, v26, v27, v15);
      if (!v23)
      {
        LOBYTE(v20) = (*(*(v11 - 8) + 48))(v15, 1, v11) != 1;
        (*(v29 + 8))(v15, v24);
      }
    }
  }

  else
  {
    LOBYTE(v20) = 1;
  }

  return v20 & 1;
}

uint64_t sub_1CF62DA88(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v76 = a5;
  v77 = a6;
  v74 = a1;
  v75 = a4;
  v69 = a2;
  v7 = *a3;
  v8 = sub_1CF9E6118();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v7[11];
  v12 = v7[12];
  v13 = v7[13];
  v78 = v7[10];
  v79 = v11;
  v70 = v13;
  v71 = v11;
  v80 = v12;
  v81 = v13;
  v14 = type metadata accessor for ItemReconciliation();
  v15 = sub_1CF9E75D8();
  v72 = *(v15 - 8);
  v16 = *(v72 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v64 - v18;
  v20 = v14;
  v73 = *(v14 - 8);
  v21 = *(v73 + 64);
  v22 = MEMORY[0x1EEE9AC00](v17);
  v64 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v65 = &v64 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v64 - v26;
  v28 = a3[4];
  if (!sub_1CF056558())
  {
    return 0;
  }

  v29 = a3[2];
  v30 = v82;
  result = sub_1CF68DDB0(v74, v75, v76, v77, v19);
  if (v30)
  {
    return result;
  }

  v32 = v73;
  if ((*(v73 + 48))(v19, 1, v20) == 1)
  {
    (*(v72 + 8))(v19, v15);
    return 0xD000000000000025;
  }

  (*(v32 + 32))(v27, v19, v20);
  v33 = v27;
  v34 = type metadata accessor for ItemReconciliationHalf();
  v35 = *&v27[*(v34 + 36)];
  if (v35)
  {
    (*(v32 + 8))(v27, v20);
    return 0xD000000000000022;
  }

  if ((v35 & 0x10) != 0)
  {
    v36 = v34;
    v37 = sub_1CF07CD80(v20);
    v34 = v36;
    if (!v37)
    {
      (*(v73 + 8))(v27, v20);
      return 0xD000000000000023;
    }
  }

  if (!v27[*(v34 + 52)])
  {
    v43 = v34;
    if (!sub_1CF056558())
    {
      (*(v73 + 8))(v33, v20);
      return 0xD00000000000002BLL;
    }

    v44 = v73;
    if (v69 == 4)
    {
      (*(v73 + 8))(v33, v20);
      return 0;
    }

    if ((*(v33 + *(v43 + 56)) | 2) != 6)
    {
      (*(v73 + 8))(v33, v20);
      return 0xD000000000000054;
    }

    v82 = 0;
    v45 = fpfs_current_or_default_log();
    v46 = v68;
    sub_1CF9E6128();
    v47 = v20;
    v48 = *(v44 + 16);
    v49 = v65;
    v48(v65, v33, v47);
    v50 = v44;
    v51 = sub_1CF9E6108();
    v52 = sub_1CF9E72B8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v77 = v33;
      v54 = v53;
      v55 = swift_slowAlloc();
      v78 = v55;
      *v54 = 136315138;
      LODWORD(v76) = v52;
      v56 = v64;
      v48(v64, v49, v47);
      v57 = *(v50 + 8);
      v57(v49, v47);
      v58 = sub_1CF082CB0(v47);
      v60 = v59;
      v57(v56, v47);
      v61 = sub_1CEFD0DF0(v58, v60, &v78);

      *(v54 + 4) = v61;
      _os_log_impl(&dword_1CEFC7000, v51, v76, "🤦🏼‍♂️  inconsistent children status for item %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1D386CDC0](v55, -1, -1);
      MEMORY[0x1D386CDC0](v54, -1, -1);

      (*(v66 + 8))(v68, v67);
      v57(v77, v47);
    }

    else
    {
      v63 = *(v50 + 8);
      v63(v49, v47);

      (*(v66 + 8))(v46, v67);
      v63(v33, v47);
    }

    return 0;
  }

  v38 = &v27[*(v20 + 52)];
  v39 = v38[*(type metadata accessor for ItemReconciliationHalf() + 56)];
  if (v39 == 3)
  {
    v40 = v73;
    if (v69 != 4)
    {
      (*(v73 + 8))(v33, v20);
      return 0xD00000000000003FLL;
    }

    goto LABEL_22;
  }

  v40 = v73;
  if (v39 == 6 || v39 == 4)
  {
LABEL_22:
    (*(v40 + 8))(v33, v20);
    return 0;
  }

  v78 = 0;
  v79 = 0xE000000000000000;
  sub_1CF9E7948();

  v78 = 0xD000000000000025;
  v79 = 0x80000001CFA45E80;
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v41 = 0xE600000000000000;
      v42 = 0x7463656C6573;
    }

    else
    {
      v41 = 0xE700000000000000;
      v42 = 0x70756E61656C63;
    }
  }

  else if (v39)
  {
    v41 = 0xE600000000000000;
    v42 = 0x746E65726170;
  }

  else
  {
    v41 = 0xE700000000000000;
    v42 = 0x676E69646E6570;
  }

  MEMORY[0x1D3868CC0](v42, v41);

  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v62 = v78;
  (*(v73 + 8))(v33, v20);
  return v62;
}

uint64_t sub_1CF62E2F8(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF62D810(a1, a4, a5, a6, a7);
  if (!v7)
  {
    if (result)
    {
      return 0;
    }

    else
    {
      return sub_1CF62DA88(a2, a3, a4, a5, a6, a7);
    }
  }

  return result;
}

uint64_t sub_1CF62E388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, void (*a6)(char *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v196 = a7;
  v197 = a8;
  v181 = a5;
  LODWORD(v187) = a4;
  v177 = a3;
  v188 = a1;
  v190 = a9;
  v195 = a10;
  v12 = *a6;
  v172 = type metadata accessor for ItemMetadata();
  v13 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172);
  v182 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 96);
  v186 = *(v12 + 80);
  v184 = v15;
  v16 = type metadata accessor for SnapshotItem();
  v189 = *(v16 - 8);
  v17 = *(v189 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v171 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v191 = &v166 - v20;
  v193 = v21;
  v232 = sub_1CF9E75D8();
  v192 = *(v232 - 8);
  v22 = *(v192 + 64);
  v23 = MEMORY[0x1EEE9AC00](v232);
  v180 = &v166 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v179 = (&v166 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v176 = &v166 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v178 = &v166 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v175 = &v166 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v173 = &v166 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v166 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v40 = &v166 - v39;
  v41 = MEMORY[0x1EEE9AC00](v38);
  v43 = &v166 - v42;
  v44 = MEMORY[0x1EEE9AC00](v41);
  v46 = &v166 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v166 - v47;
  v174 = a6;
  v49 = *(a6 + 4);
  v50 = *(*v49 + 240);
  v185 = a2;
  v51 = v194;
  result = v50(a2, 1, v196, v197, v195);
  if (!v51)
  {
    v167 = v43;
    v168 = v37;
    v169 = v40;
    v170 = v49;
    v53 = v187;
    v183 = v48;
    v194 = 0;
    v54 = v192;
    v55 = v192 + 16;
    v56 = *(v192 + 16);
    v56(v46, v188, v232);
    v57 = v189;
    v58 = *(v189 + 48);
    if (v58(v46, 1, v193) == 1)
    {
      v59 = *(v54 + 8);
      v197 = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v60 = v46;
      v61 = v232;
      v59(v60, v232);
      v62 = v179;
      v56(v179, v183, v61);
      v63 = v180;
      (*(v57 + 56))(v180, 1, 1, v193);
      v64 = sub_1CF056558();
      v65 = v184;
      v66 = v190;
      v67 = v186;
      sub_1CF06D058(v62, v63, v185, 0, v64 && (v181 & 0x400000) == 0, 0x6C6564206D657469, 0xEC00000064657465, v186, v190, v165, v184);
      v59(v63, v61);
      v59(v62, v61);
      *&v216 = v67;
      *(&v216 + 1) = v67;
      v68 = v183;
      *&v217 = v65;
      *(&v217 + 1) = v65;
      v69 = type metadata accessor for ItemChange();
      (*(*(v69 - 8) + 56))(v66, 0, 1, v69);
      return (v59)(v68, v232);
    }

    v180 = v56;
    v188 = v55;
    v70 = v191;
    v71 = v46;
    v72 = v193;
    v179 = *(v57 + 32);
    v179(v191, v71, v193);
    if (v53)
    {
      v187 = v58;
      v73 = v182;
    }

    else
    {
      v90 = v194;
      v91 = sub_1CF62E2F8(v70, v70 + v72[9], v177, v174, v196, v197, v195);
      v73 = v182;
      if (v90)
      {
        (*(v57 + 8))(v70, v72);
        return (*(v192 + 8))(v183, v232);
      }

      v194 = 0;
      if (v92)
      {
        v196 = v91;
        v197 = v92;
        if (!sub_1CF056558())
        {
          goto LABEL_15;
        }

        v93 = v167;
        v94 = v72;
        v95 = v232;
        (v180)(v167, v183, v232);
        v96 = v58(v93, 1, v94);
        v59 = *(v192 + 8);
        v97 = v95;
        v72 = v94;
        v59(v93, v97);
        if (v96 != 1)
        {
          (*(v57 + 8))(v191, v94);
          v147 = v190;
          v148 = v197;
          *v190 = v196;
          v147[1] = v148;
          *&v216 = v186;
          *(&v216 + 1) = v186;
          *&v217 = v184;
          *(&v217 + 1) = v184;
          v149 = type metadata accessor for ItemChange();
          swift_storeEnumTagMultiPayload();
          (*(*(v149 - 8) + 56))(v147, 0, 1, v149);
          v68 = v183;
        }

        else
        {
LABEL_15:
          v98 = v169;
          v99 = v232;
          (v180)(v169, v183, v232);
          v100 = v57;
          v101 = v168;
          (*(v57 + 56))(v168, 1, 1, v72);
          v102 = sub_1CF056558();
          v103 = v184;
          v104 = v186;
          sub_1CF06D058(v98, v101, v185, 0, v102, v196, v197, v186, v190, v165, v184);

          v59 = *(v192 + 8);
          v59(v101, v99);
          v59(v169, v99);
          (*(v100 + 8))(v191, v193);
          *&v216 = v104;
          *(&v216 + 1) = v104;
          *&v217 = v103;
          *(&v217 + 1) = v103;
          v105 = type metadata accessor for ItemChange();
          v68 = v183;
          (*(*(v105 - 8) + 56))(v190, 0, 1, v105);
        }

        return (v59)(v68, v232);
      }

      v187 = v58;
      v70 = v191;
    }

    v74 = v70 + v72[13];
    v75 = *(v74 + 208);
    v228 = *(v74 + 192);
    v229 = v75;
    v230 = *(v74 + 224);
    v231 = *(v74 + 240);
    v76 = *(v74 + 144);
    v224 = *(v74 + 128);
    v225 = v76;
    v77 = *(v74 + 176);
    v226 = *(v74 + 160);
    v227 = v77;
    v78 = *(v74 + 80);
    v220 = *(v74 + 64);
    v221 = v78;
    v79 = *(v74 + 112);
    v222 = *(v74 + 96);
    v223 = v79;
    v80 = *(v74 + 16);
    v216 = *v74;
    v217 = v80;
    v81 = *(v74 + 48);
    v218 = *(v74 + 32);
    v219 = v81;
    enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v216);
    v83 = v183;
    if (enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0 != 1)
    {
      v84 = v72;
      v85 = v173;
      v86 = v232;
      (v180)(v173, v183, v232);
      v87 = v72;
      v88 = v187;
      v89 = v187(v85, 1, v87);
      v174 = *(v192 + 8);
      v174(v85, v86);
      if (v89 == 1)
      {
        v57 = v189;
        v72 = v84;
      }

      else
      {
        v106 = v88(v83, 1, v84);
        v57 = v189;
        v72 = v84;
        if (v106)
        {
          goto LABEL_18;
        }

        v107 = &v83[v84[13]];
        v108 = *(v107 + 13);
        v210 = *(v107 + 12);
        v211 = v108;
        v212 = *(v107 + 14);
        v213 = *(v107 + 30);
        v109 = *(v107 + 9);
        v206 = *(v107 + 8);
        v207 = v109;
        v110 = *(v107 + 11);
        v208 = *(v107 + 10);
        v209 = v110;
        v111 = *(v107 + 5);
        v202 = *(v107 + 4);
        v203 = v111;
        v112 = *(v107 + 7);
        v204 = *(v107 + 6);
        v205 = v112;
        v113 = *(v107 + 1);
        v198 = *v107;
        v199 = v113;
        v114 = *(v107 + 3);
        v200 = *(v107 + 2);
        v201 = v114;
        if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v198) == 1)
        {
LABEL_18:
          v115 = v187(v83, 1, v84);
          v73 = v182;
          if (v115)
          {
            goto LABEL_19;
          }

          v146 = v194;
          (*(*v170 + 264))(v214, v185, v196, v197, v195);
          v194 = v146;
          if (v146)
          {
            (*(v57 + 8))(v191, v72);
            return (v174)(v183, v232);
          }

          v150 = &v183[v72[13]];
          v151 = *(v150 + 13);
          v210 = *(v150 + 12);
          v211 = v151;
          v212 = *(v150 + 14);
          v213 = *(v150 + 30);
          v152 = *(v150 + 9);
          v206 = *(v150 + 8);
          v207 = v152;
          v153 = *(v150 + 11);
          v208 = *(v150 + 10);
          v209 = v153;
          v154 = *(v150 + 5);
          v202 = *(v150 + 4);
          v203 = v154;
          v155 = *(v150 + 7);
          v204 = *(v150 + 6);
          v205 = v155;
          v156 = *(v150 + 1);
          v198 = *v150;
          v199 = v156;
          v157 = *(v150 + 3);
          v200 = *(v150 + 2);
          v201 = v157;
          v158 = v214[13];
          *(v150 + 12) = v214[12];
          *(v150 + 13) = v158;
          *(v150 + 14) = v214[14];
          *(v150 + 30) = v215;
          v159 = v214[9];
          *(v150 + 8) = v214[8];
          *(v150 + 9) = v159;
          v160 = v214[11];
          *(v150 + 10) = v214[10];
          *(v150 + 11) = v160;
          v161 = v214[5];
          *(v150 + 4) = v214[4];
          *(v150 + 5) = v161;
          v162 = v214[7];
          *(v150 + 6) = v214[6];
          *(v150 + 7) = v162;
          v163 = v214[1];
          *v150 = v214[0];
          *(v150 + 1) = v163;
          v164 = v214[3];
          *(v150 + 2) = v214[2];
          *(v150 + 3) = v164;
          sub_1CEFCCC44(&v198, &qword_1EC4BECF0, &unk_1CF9FEEB0);
        }
      }

      v73 = v182;
    }

LABEL_19:
    v116 = v175;
    (v180)(v175, v183, v232);
    if (v187(v116, 1, v72) == 1)
    {
      v117 = v72;
      v118 = v57;
      (*(v192 + 8))(v116, v232);
      v120 = v190;
      v119 = v191;
    }

    else
    {
      v121 = v171;
      v179(v171, v116, v72);
      sub_1CEFF4408(&v121[v72[12]], v73);
      v122 = v73;
      v117 = v72;
      v118 = v57;
      (*(v57 + 8))(v121, v117);
      v123 = v172;
      v124 = *(v122 + *(v172 + 48));
      sub_1CF06DA00(v122);
      v120 = v190;
      v119 = v191;
      v191[v117[12] + *(v123 + 48)] = v124;
    }

    v125 = v186;
    v126 = v178;
    v127 = v176;
    if ((*&v119[v117[17] + 8] & 0x8000000000000000) != 0)
    {
      v137 = v119;
      (v180)(v178, v183, v232);
      (*(v118 + 16))(v127, v137, v117);
      (*(v118 + 56))(v127, 0, 1, v117);
      v138 = sub_1CF056558();
      if (v177 == 4)
      {
        v139 = 0x6F7270206D657469;
      }

      else
      {
        v139 = 0x616863206D657469;
      }

      if (v177 == 4)
      {
        v140 = 0xEF64657461676170;
      }

      else
      {
        v140 = 0xEC0000006465676ELL;
      }

      v141 = v184;
      sub_1CF06D058(v126, v127, v185, (v181 & 0x800400000) != 0, v138, v139, v140, v125, v120, v165, v184);

      v142 = *(v192 + 8);
      v143 = v127;
      v144 = v232;
      v142(v143, v232);
      v142(v178, v144);
      v59 = v142;
      (*(v118 + 8))(v191, v117);
      v68 = v183;
      *&v198 = v125;
      *(&v198 + 1) = v125;
      *&v199 = v141;
      *(&v199 + 1) = v141;
    }

    else
    {
      v128 = v232;
      v129 = v120;
      v130 = v169;
      (v180)();
      v131 = v168;
      (*(v118 + 56))(v168, 1, 1, v117);
      v132 = sub_1CF056558();
      v133 = v184;
      v134 = v186;
      sub_1CF06D058(v130, v131, v185, 0, v132, 0xD000000000000014, 0x80000001CFA45E30, v186, v129, v165, v184);
      v135 = v131;
      v136 = *(v192 + 8);
      v136(v135, v128);
      v136(v130, v128);
      v59 = v136;
      (*(v118 + 8))(v191, v193);
      v68 = v183;
      *&v198 = v134;
      *(&v198 + 1) = v134;
      *&v199 = v133;
      *(&v199 + 1) = v133;
    }

    v145 = type metadata accessor for ItemChange();
    (*(*(v145 - 8) + 56))(v190, 0, 1, v145);
    return (v59)(v68, v232);
  }

  return result;
}

uint64_t sub_1CF62F2A0(void *a1, uint64_t *a2, char *a3, uint64_t a4, uint64_t a5)
{
  v60 = a1;
  v53 = a5;
  v63 = a4;
  v57 = a3;
  v6 = *a2;
  v7 = *(*a2 + 80);
  v55 = *(*a2 + 96);
  v8 = type metadata accessor for FileTreeWriter.FileTreeChange();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v58 = sub_1CF9E6118();
  v15 = *(*(v58 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v58);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v6 + 216);
  v6 += 216;
  v20 = v9;
  v56 = v21;
  v61 = a2;
  v19(v16);
  sub_1CF529CE8();

  *&v22 = v7;
  *(&v22 + 1) = *(v6 - 128);
  *&v23 = v55;
  *(&v23 + 1) = *(v6 - 112);
  v62[0] = v22;
  v62[1] = v23;
  type metadata accessor for ConcreteJobResult();
  v24 = sub_1CF056580();
  v25 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v26 = *(v20 + 16);
  v27 = v14;
  v28 = v14;
  v29 = v8;
  v26(v28, v63, v8);
  v57 = v18;
  v30 = sub_1CF9E6108();
  v31 = sub_1CF9E7288();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v55 = v24;
    v33 = v32;
    v34 = swift_slowAlloc();
    *&v62[0] = v34;
    *v33 = 136446210;
    v52 = v30;
    v35 = v54;
    v26(v54, v27, v29);
    v36 = *(v20 + 8);
    v36(v27, v29);
    v37 = sub_1CF06AB58(v29);
    v38 = v31;
    v40 = v39;
    v36(v35, v29);
    v41 = sub_1CEFD0DF0(v37, v40, v62);

    *(v33 + 4) = v41;
    v42 = v52;
    _os_log_impl(&dword_1CEFC7000, v52, v38, "%{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1D386CDC0](v34, -1, -1);
    v24 = v55;
    MEMORY[0x1D386CDC0](v33, -1, -1);
  }

  else
  {
    (*(v20 + 8))(v27, v8);
  }

  (*(v56 + 8))(v57, v58);
  v43 = v60;
  v44 = v60[3];
  v45 = v60[4];
  v46 = __swift_project_boxed_opaque_existential_1(v60, v44);
  v47 = v59;
  sub_1CF6180A8(v63, 1, v24, v61, v46, v44, v45);
  if (!v47)
  {
    v48 = v43[3];
    v49 = v43[4];
    v50 = __swift_project_boxed_opaque_existential_1(v43, v48);
    sub_1CF521850(v24, v53, v50, v48, v49);
  }
}

uint64_t sub_1CF62F714()
{
  if ((*(v0 + 136) & 0x10000) != 0)
  {
    return 3;
  }

  else
  {
    return 2 * ((*(v0 + 136) & 0x8008) != 0);
  }
}

uint64_t sub_1CF62F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v34 = a5;
  v35 = a3;
  v37 = a4;
  v33 = a1;
  v9 = *(*v7 + 600);
  v10 = *(*v7 + 616);
  v11 = type metadata accessor for JobLockRule();
  v31 = *(v11 - 8);
  v32 = v11;
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v30 = *(v16 - 8);
  v17 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - v18;
  v20 = *(a2 + 32);
  v21 = *(*v20[2] + 312);

  LOBYTE(v21) = v21(v22);

  if (v21)
  {
    return 0;
  }

  v24 = *(*v7 + 576);
  result = ((*v20)[36])(&v7[v24], v35, v37, *(v34 + 8));
  if (!v6)
  {
    swift_beginAccess();
    sub_1CEFCCBDC((v7 + 56), v36, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v25 = *(v7 + 15);
    v26 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v14, &v7[v24], AssociatedTypeWitness);
    v27 = v30;
    (*(v30 + 16))(&v14[v26], v19, v16);
    v28 = v32;
    swift_storeEnumTagMultiPayload();
    v29 = sub_1CF052B3C(v36, v25, v14);
    (*(v31 + 8))(v14, v28);
    sub_1CEFCCC44(v36, &unk_1EC4C1BE0, &unk_1CF9FD400);
    (*(v27 + 8))(v19, v16);
    return v29;
  }

  return result;
}

uint64_t sub_1CF62FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v46 = a7;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v43 = a3;
  v44 = a2;
  v12 = *v8;
  v13 = *(v12 + 616);
  v14 = *(v12 + 600);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v45 = sub_1CF9E75D8();
  v42 = *(v45 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v38 - v19;
  v41 = a1;
  v20 = v12;
  v21 = *(a1 + 32);
  v22 = v21[2];
  v23 = *(v20 + 576);
  v24 = *(*v21 + 656);
  v25 = a8;
  v26 = *(a8 + 8);
  v27 = v46;

  v39 = v23;
  v24(&v9[v23]);
  v28 = v42;
  v29 = v40;
  v30 = (*(v42 + 32))(v40, v17, v45);
  v31 = v41;
  v47 = (*(*v41 + 272))(v30);
  v32 = swift_allocObject();
  v32[2] = v27;
  v32[3] = v25;
  v32[4] = v31;
  v32[5] = v9;
  v33 = v49;
  v32[6] = v48;
  v32[7] = v33;
  v32[8] = v43;
  v34 = *(*v22 + 536);

  v35 = &v9[v39];
  v36 = v47;
  v34(v35, v29, v47, v44, 0, sub_1CF659EFC, v32);

  return (*(v28 + 8))(v29, v45);
}

uint64_t sub_1CF62FF0C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a4;
  v37 = a8;
  v35 = a7;
  v44 = a6;
  v45 = a5;
  v38 = a3;
  v39 = a1;
  v42 = *a2;
  v40 = *(v42 + 80);
  v43 = *(v42 + 96);
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v13 = sub_1CF9E8238();
  v34 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = swift_allocObject();
  v18[2] = a7;
  v18[3] = a8;
  v18[4] = a3;
  v18[5] = a2;
  v19 = swift_allocObject();
  v41 = v19;
  v20 = v45;
  *(v19 + 16) = a4;
  *(v19 + 24) = v20;
  (*(v14 + 16))(v17, v39, v13);
  v21 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v42;
  *(v25 + 2) = v40;
  *(v25 + 3) = *(v26 + 88);
  v27 = v34;
  v28 = v43;
  *(v25 + 4) = v35;
  *(v25 + 5) = v28;
  *(v25 + 6) = *(v26 + 104);
  *(v25 + 7) = v37;
  (*(v14 + 32))(&v25[v21], v17, v27);
  v29 = &v25[v22];
  v30 = v44;
  v31 = v45;
  *v29 = v36;
  *(v29 + 1) = v31;
  *&v25[v23] = v38;
  *&v25[v24] = a2;
  *&v25[(v24 + 15) & 0xFFFFFFFFFFFFFFF8] = v30;
  v32 = type metadata accessor for Continuation();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1CF92E6B4("execute(on:continuation:result:with:completion:)", 48, 2u, sub_1CF55942C, v18, sub_1CF559418, v41, sub_1CF659F14, v25, v32, MEMORY[0x1E69E6158]);
}

void sub_1CF63024C(void *a1, uint64_t a2, void (*a3)(void **, id, void, void, void *), uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v338 = a7;
  v337 = a6;
  v342 = a4;
  v343 = a3;
  v346 = a1;
  v347 = a2;
  v325 = *a5;
  v309 = type metadata accessor for ItemMetadata();
  v8 = *(*(v309 - 8) + 64);
  MEMORY[0x1EEE9AC00](v309);
  v310 = &v292 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v325[75];
  v344 = a5;
  v11 = v325[77];
  v12 = type metadata accessor for FileTreeError();
  v328 = sub_1CF9E75D8();
  v326 = *(v328 - 8);
  v13 = *(v326 + 8);
  MEMORY[0x1EEE9AC00](v328);
  v327 = &v292 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v354 = AssociatedTypeWitness;
  v355 = v16;
  v356 = AssociatedConformanceWitness;
  v357 = v18;
  v300 = type metadata accessor for FileItemVersion();
  v318 = sub_1CF9E75D8();
  v313 = *(v318 - 8);
  v19 = *(v313 + 64);
  MEMORY[0x1EEE9AC00](v318);
  v301 = &v292 - v20;
  v21 = swift_getAssociatedTypeWitness();
  v329 = *(v21 - 8);
  v22 = *(v329 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v303 = &v292 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v298 = &v292 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v316 = &v292 - v27;
  v341 = v28;
  v29 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v294 = *(TupleTypeMetadata2 - 8);
  v30 = *(v294 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v304 = &v292 - v31;
  v315 = v29;
  v308 = *(v29 - 8);
  v32 = v308[8];
  MEMORY[0x1EEE9AC00](v33);
  v293 = &v292 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v306 = &v292 - v36;
  v339 = v12;
  v330 = *(v12 - 8);
  v37 = *(v330 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v305 = &v292 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v340 = &v292 - v41;
  v297 = sub_1CF9E5268();
  v296 = *(v297 - 8);
  v42 = *(v296 + 64);
  MEMORY[0x1EEE9AC00](v297);
  v295 = &v292 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for SnapshotItem();
  v331 = sub_1CF9E75D8();
  v332 = *(v331 - 8);
  v44 = *(v332 + 64);
  MEMORY[0x1EEE9AC00](v331);
  v302 = &v292 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v336 = &v292 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v292 = &v292 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v314 = &v292 - v51;
  v52 = sub_1CF9E5248();
  v334 = *(v52 - 8);
  v53 = *(v334 + 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v292 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(v10 - 1);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v319 = &v292 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v324 = &v292 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v317 = &v292 - v63;
  v350 = v11;
  type metadata accessor for FileTreeWriter.ItemOrContinuation();
  v335 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v64 = sub_1CF9E8238();
  v65 = *(v64 - 8);
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v311 = (&v292 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v292 - v69;
  v349 = sub_1CF9E75D8();
  v358 = *(v349 - 8);
  v71 = *(v358 + 64);
  MEMORY[0x1EEE9AC00](v349);
  v320 = &v292 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v323 = (&v292 - v74);
  MEMORY[0x1EEE9AC00](v75);
  v322 = &v292 - v76;
  v78 = MEMORY[0x1EEE9AC00](v77);
  v333 = v56;
  v79 = *(v56 + 56);
  v351 = &v292 - v80;
  v348 = v10;
  v79(v78);
  v299 = v65;
  v81 = *(v65 + 16);
  v81(v70, v347, v64);
  v312 = v64;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v82 = *v70;
    v83 = *v70;
    sub_1CF9E5108();
    sub_1CF00BC98(&qword_1EDEAB460, MEMORY[0x1E6967E70]);
    v84 = sub_1CF9E5658();

    v85 = *(v334 + 1);
    v336 = v55;
    v85(v55, v52);
    v86 = v344;
    v87 = v350;
    if (v84)
    {
      v88 = *(*v344 + 576);
      v89 = v341;
      v90 = swift_getAssociatedConformanceWitness();
      if ((*(v90 + 72))(v89, v90))
      {

        v91 = v346;
        v92 = v346[3];
        v93 = v346[4];
        v94 = __swift_project_boxed_opaque_existential_1(v346, v92);
        v95 = v314;
        (*(*(v321 - 8) + 56))(v314, 1, 1);
        v96 = v337;
        v97 = v345;
        sub_1CF611904(v95, v86 + v88, 0, 0, 0, v337, v86[15], v86[16], v86[17], v338, v94, v92, v93);
        v98 = v358;
        v99 = v351;
        (*(v332 + 8))(v95, v331);
        if (!v97)
        {
          sub_1CF1A91AC(v91, &v354);
          sub_1CF9E5108();
          sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
          sub_1CF00BC98(&qword_1EDEAB450, MEMORY[0x1E6967E98]);
          v201 = v295;
          v202 = v297;
          sub_1CF9E57D8();
          v203 = sub_1CF9E50D8();
          (*(v296 + 8))(v201, v202);
          v343(&v354, 0, 0, 0, v203);

          sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
          v204 = *(**(v96[4] + 16) + 920);

          v204(v205);
        }

        (*(v98 + 8))(v99, v349);
        return;
      }
    }

    v334 = v81;
    v352 = v82;
    v104 = v82;
    v105 = v339;
    v106 = swift_dynamicCast();
    v107 = v358;
    v108 = v351;
    if (!v106)
    {
      goto LABEL_70;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 4)
      {
        (*(v330 + 8))(v340, v105);
LABEL_70:
        v265 = v108;

        v354 = v82;
        v266 = v82;
        v267 = v327;
        v268 = swift_dynamicCast();
        v269 = *(v330 + 56);
        v270 = (v326 + 8);
        if (v268)
        {
          v269(v267, 0, 1, v105);
          (*v270)(v267, v328);
          sub_1CF1A91AC(v346, &v354);
          v271 = v82;
          v343(&v354, 0, 0, 0, v82);

          sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
          v272 = *(**(v337[4] + 16) + 920);

          v272(v273);
        }

        else
        {
          v269(v267, 1, 1, v105);
          (*v270)(v267, v328);
          v274 = v325[76];
          v275 = v325[78];
          v276 = v348;
          v354 = v348;
          v355 = v274;
          v356 = v87;
          v357 = v275;
          type metadata accessor for JobResult();
          v354 = v276;
          v355 = v274;
          v356 = v87;
          v357 = v275;
          type metadata accessor for Ingestion.FetchItemMetadata();
          v277 = sub_1CF657094(v86 + *(*v86 + 576), v86[15], v86[16], v86[17], type metadata accessor for Ingestion.FetchItemMetadata);
          sub_1CF803A0C(v338, v277);

          sub_1CF1A91AC(v346, &v354);
          v278 = v82;
          v343(&v354, 0, 0, 0, v82);

          sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
        }

        (*(v107 + 8))(v265, v349);
        return;
      }

      v110 = v315;
      v111 = v341;
      v322 = swift_getTupleTypeMetadata2();
      v347 = *(v322 + 12);
      v112 = v329;
      v113 = *(v329 + 16);
      v333 = *(*v86 + 576);
      v114 = v306;
      v324 = (v329 + 16);
      v323 = v113;
      v113(v306, v86 + v333, v111);
      v115 = *(v112 + 56);
      v320 = (v112 + 56);
      v319 = v115;
      (v115)(v114, 0, 1, v111);
      v116 = *(TupleTypeMetadata2 + 48);
      v117 = v308;
      v118 = v304;
      v334 = v308[2];
      v334(v304, v114, v110);
      v119 = v117[4];
      v336 = v116;
      v119(&v118[v116], v340, v110);
      v120 = *(v112 + 48);
      if (v120(v118, 1, v111) == 1)
      {
        v121 = v117[1];
        v122 = v114;
        v123 = v315;
        v121(v122, v315);
        v124 = v120(&v118[v336], 1, v111);
        v125 = v329;
        if (v124 == 1)
        {

          v121(v118, v123);
          (*(v125 + 32))(v298, &v340[v347], v111);
          goto LABEL_66;
        }
      }

      else
      {
        v225 = v293;
        v226 = v315;
        v334(v293, v118, v315);
        v227 = v336;
        if (v120(&v118[v336], 1, v111) != 1)
        {
          v249 = v329;
          v250 = v316;
          v334 = *(v329 + 32);
          v334(v316, &v118[v227], v111);
          v251 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
          LODWORD(v336) = sub_1CF9E6868();
          v228 = *(v249 + 8);
          v228(v250, v111);
          v252 = v225;
          v253 = v308[1];
          v253(v306, v226);
          v228(v252, v341);
          v253(v118, v226);
          if (v336)
          {

            v111 = v341;
            v334(v298, &v340[v347], v341);
LABEL_66:
            v254 = v111;
            v255 = v346;
            v257 = v346[3];
            v256 = v346[4];
            v258 = __swift_project_boxed_opaque_existential_1(v346, v257);
            v259 = v292;
            (*(*(v321 - 8) + 56))(v292, 1, 1);
            v260 = v344;
            v261 = v333;
            v262 = v345;
            sub_1CF611904(v259, v344 + v333, 0, 0, 0, v337, v344[15], v344[16], v344[17], v338, v258, v257, v256);
            v263 = v358;
            v264 = v349;
            (*(v332 + 8))(v259, v331);
            if (v262)
            {
              (*(v329 + 8))(v298, v254);
              (*(v263 + 8))(v351, v264);
            }

            else
            {
              v279 = v325[76];
              v280 = v325[78];
              v281 = v348;
              v354 = v348;
              v355 = v279;
              v282 = v350;
              v356 = v350;
              v357 = v280;
              v347 = type metadata accessor for JobResult();
              v354 = v281;
              v355 = v279;
              v356 = v282;
              v357 = v280;
              type metadata accessor for Ingestion.FetchItemMetadata();
              v283 = v298;
              v284 = sub_1CF657094(v298, v260[15], v260[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
              sub_1CF803A0C(v338, v284);

              sub_1CF1A91AC(v255, &v354);
              swift_getWitnessTable();
              v285 = swift_allocError();
              v287 = v286;
              v288 = *(v322 + 12);
              v289 = v260 + v261;
              v290 = v341;
              v291 = v323;
              v323(v287, v289, v341);
              (v319)(v287, 0, 1, v290);
              v291(v287 + v288, v283, v290);
              swift_storeEnumTagMultiPayload();
              v343(&v354, 0, 0, 0, v285);

              sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v329 + 8))(v283, v290);
              (*(v358 + 8))(v351, v349);
            }

            goto LABEL_75;
          }

          v229 = v351;
          v111 = v341;
          goto LABEL_59;
        }

        (v308[1])(v306, v226);
        v125 = v329;
        (*(v329 + 8))(v225, v111);
      }

      (*(v294 + 8))(v118, TupleTypeMetadata2);
      v228 = *(v125 + 8);
      v229 = v351;
LABEL_59:
      v228(&v340[v347], v111);
      v107 = v358;
      v86 = v344;
      v105 = v339;
      v87 = v350;
      v108 = v229;
      goto LABEL_70;
    }

    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    v180 = v341;
    v354 = v341;
    v355 = v318;
    v356 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
    v357 = v356;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v336 = TupleTypeMetadata[12];
    v182 = v340;

    v183 = v329;
    v184 = v303;
    (*(v329 + 32))(v303, v182, v180);
    v185 = *(*v86 + 576);
    v140 = v348;
    v186 = swift_getAssociatedConformanceWitness();
    v187 = *(*(v186 + 40) + 8);
    v333 = v185;
    LOBYTE(v185) = sub_1CF9E6868();
    (*(v183 + 8))(v184, v180);
    if (v185)
    {
      v188 = v336;
      if ((*(v186 + 64))(v180, v186))
      {

        (*(v313 + 8))(&v340[v188], v318);
        v102 = v350;
        goto LABEL_18;
      }

      (*(v313 + 8))(&v340[v188], v318);
    }

    else
    {
      (*(v313 + 8))(&v340[v336], v318);
    }

    v105 = v339;
    v87 = v350;
    v108 = v351;
    v107 = v358;
    goto LABEL_70;
  }

  v100 = swift_getEnumCaseMultiPayload();
  if (v100)
  {
    v101 = v358;
    v102 = v350;
    if (v100 == 1)
    {
      v103 = *v70;
      sub_1CF1A91AC(v346, &v354);

      v343(&v354, v103, 0, 0, 0);

      sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v101 + 8))(v351, v349);
      return;
    }

    v334 = v81;
    v137 = *v70;
    v136 = *(v70 + 1);
    v138 = v70[16];
    v86 = v344;
    v139 = *(*v344 + 576);
    v140 = v348;
    v141 = v341;
    v142 = swift_getAssociatedConformanceWitness();
    if ((*(v142 + 64))(v141, v142))
    {
      sub_1CF60F704(v137, v136, v138);
LABEL_18:
      v143 = v358;
      v144 = v325[76];
      v145 = v325[78];
      v354 = v140;
      v355 = v144;
      v356 = v102;
      v357 = v145;
      type metadata accessor for JobResult();
      v354 = v140;
      v355 = v144;
      v356 = v102;
      v357 = v145;
      type metadata accessor for Ingestion.FetchItemMetadata();
      v146 = *(*v86 + 576);
      v147 = sub_1CF657094(v86 + v146, v86[15], v86[16], v86[17], type metadata accessor for Ingestion.FetchItemMetadata);
      sub_1CF803A0C(v338, v147);

      v148 = v311;
      v149 = v312;
      v334(v311, v347, v312);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v150 = *v148;
        sub_1CF1A91AC(v346, &v354);
        v151 = v150;
        v343(&v354, 0, 0, 0, v150);
      }

      else
      {
        (*(v299 + 8))(v148, v149);
        sub_1CF1A91AC(v346, &v354);
        v199 = v301;
        (*(*(v300 - 8) + 56))(v301, 1, 1);
        swift_getWitnessTable();
        v150 = swift_allocError();
        sub_1CF72C4D8(v86 + v146, v199, 0, v200);
        (*(v313 + 8))(v199, v318);
        v343(&v354, 0, 0, 0, v150);
      }

      sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v143 + 8))(v351, v349);
      return;
    }

    v354 = 0;
    v355 = 0xE000000000000000;
    sub_1CF9E7948();
    v352 = v354;
    v353 = v355;
    MEMORY[0x1D3868CC0](0x696E3A6D6574693CLL, 0xEE003A796877206CLL);
    v354 = v137;
    v355 = v136;
    LOBYTE(v356) = v138;
    type metadata accessor for FileTreeWriter.FileTreeNilReason();
    sub_1CF9E7FD8();
    sub_1CF60F704(v137, v136, v138);
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v334 = v352;
    v347 = v353;
    v128 = v349;
    v126 = v358;
    v133 = v351;
    v135 = v333;
    v132 = v140;
  }

  else
  {
    v126 = v358;
    v127 = v351;
    v128 = v349;
    (*(v358 + 8))(v351, v349);
    v129 = v333;
    v130 = v317;
    v131 = v70;
    v132 = v348;
    (*(v333 + 32))(v317, v131, v348);
    (*(v129 + 16))(v127, v130, v132);
    (v79)(v127, 0, 1, v132);
    v133 = v127;
    v354 = 0;
    v355 = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A6D6574693CLL, 0xE600000000000000);
    v102 = v350;
    v134 = *(v350 + 8);
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v135 = v129;
    v334 = v354;
    v347 = v355;
    (*(v129 + 8))(v130, v132);
  }

  v152 = *(v126 + 16);
  v153 = v126;
  v154 = v322;
  v152(v322, v133, v128);
  sub_1CF06B4E0(v154, v132, v102, v336);
  v155 = v323;
  v340 = v152;
  v152(v323, v133, v128);
  v156 = v135;
  v157 = v132;
  v158 = v135;
  v159 = v153;
  v160 = *(v156 + 48);
  if (v160(v155, 1, v157) == 1)
  {
    (*(v159 + 8))(v155, v128);
    v161 = v158;
    goto LABEL_25;
  }

  (*(v158 + 32))(v324, v155, v157);
  v162 = *(v102 + 64);
  v163 = v316;
  v327 = (v102 + 64);
  v326 = v162;
  (v162)(v157, v102);
  v164 = v344;
  v165 = *(*v344 + 576);
  v166 = v341;
  v167 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
  v328 = v165;
  LOBYTE(v165) = sub_1CF9E6868();
  v323 = *(v329 + 8);
  (v323)(v163, v166);
  if (v165)
  {
    v161 = v333;
    (*(v333 + 8))(v324, v157);
    v128 = v349;
LABEL_25:
    v168 = v320;
    (v340)(v320, v351, v128);
    if (v160(v168, 1, v157) == 1)
    {
      v169 = v358;
      (*(v358 + 8))(v168, v128);
      v171 = v344;
      v170 = v345;
      v172 = v350;
      goto LABEL_43;
    }

    (*(v161 + 32))(v319, v168, v157);
    v172 = v350;
    v173 = v310;
    (*(v350 + 104))(v157, v350);
    v174 = v173 + *(v309 + 28);
    sub_1CF9E5C98();
    v171 = v344;
    v170 = v345;
    v169 = v358;
    if ((*&v175 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v175 > -9.22337204e18)
    {
      if (v175 < 9.22337204e18)
      {
        is_busy_date = fpfs_is_busy_date();
        sub_1CF06DA00(v173);
        if (is_busy_date)
        {
          sub_1CF1A91AC(v346, &v354);
          swift_getWitnessTable();
          v177 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v343(&v354, 0, v334, v347, v177);

          sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
          v178 = *(**(v337[4] + 16) + 920);

          v178(v179);

          (*(v333 + 8))(v319, v157);
          (*(v332 + 8))(v336, v331);
LABEL_54:
          (*(v169 + 8))(v351, v349);
          return;
        }

        (*(v333 + 8))(v319, v157);
LABEL_43:
        v206 = v346[3];
        v207 = v346[4];
        v208 = __swift_project_boxed_opaque_existential_1(v346, v206);
        v209 = *(*v171 + 576);
        v210 = v171[17];
        if ((v210 & 0x10000) != 0)
        {
          v211 = 3;
        }

        else
        {
          v211 = 2 * ((v171[17] & 0x8008) != 0);
        }

        sub_1CF611904(v336, v171 + v209, v211, 0, 0, v337, v171[15], v171[16], v210, v338, v208, v206, v207);
        if (v170)
        {
          v352 = v170;
          v212 = v170;
          v213 = v305;
          v214 = v339;
          if (swift_dynamicCast())
          {
            v215 = swift_getEnumCaseMultiPayload();
            v216 = v332;
            v217 = v331;
            if (v215 == 15)
            {

              sub_1CF1A91AC(v346, &v354);
              swift_getWitnessTable();
              v218 = swift_allocError();
              swift_storeEnumTagMultiPayload();
              v343(&v354, 0, v334, v347, v218);

              sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
LABEL_53:
              v223 = *(**(v337[4] + 16) + 920);

              v223(v224);

              (*(v216 + 8))(v336, v217);
              goto LABEL_54;
            }

            (*(v216 + 8))(v336, v217);
            (*(v169 + 8))(v351, v349);
            (*(v330 + 8))(v213, v214);
          }

          else
          {

            (*(v332 + 8))(v336, v331);
            (*(v169 + 8))(v351, v349);
          }

LABEL_75:

          return;
        }

        v219 = v171[17];
        if ((v219 & 0x20000) != 0)
        {
          v220 = v325[76];
          v221 = v325[78];
          v354 = v157;
          v355 = v220;
          v356 = v172;
          v357 = v221;
          type metadata accessor for JobResult();
          v354 = v157;
          v355 = v220;
          v356 = v172;
          v357 = v221;
          v169 = v358;
          type metadata accessor for Ingestion.FetchChildrenMetadata();
          v222 = sub_1CF657094(v171 + v209, v171[15], v171[16], v219, type metadata accessor for Ingestion.FetchChildrenMetadata);
          sub_1CF803A0C(v338, v222);
        }

        sub_1CF1A91AC(v346, &v354);
        v343(&v354, 0, v334, v347, 0);

        sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
        v216 = v332;
        v217 = v331;
        goto LABEL_53;
      }

LABEL_79:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_79;
  }

  v189 = v346;
  v190 = v346[3];
  v191 = v346[4];
  v192 = __swift_project_boxed_opaque_existential_1(v346, v190);
  v193 = v302;
  (*(*(v321 - 8) + 56))(v302, 1, 1);
  v194 = v164;
  v195 = v345;
  sub_1CF611904(v193, v164 + v328, 0, 0, 0, v337, v164[15], v164[16], v164[17], v338, v192, v190, v191);
  if (v195)
  {

    v196 = *(v332 + 8);
    v197 = v193;
    v198 = v331;
    v196(v197, v331);
    (*(v333 + 8))(v324, v348);
    v196(v336, v198);
  }

  else
  {
    v230 = *(v332 + 8);
    v332 += 8;
    v340 = v230;
    (v230)(v193, v331);
    v231 = v325[76];
    v232 = v325[78];
    v354 = v348;
    v355 = v231;
    v233 = v348;
    v356 = v350;
    v357 = v232;
    v234 = v350;
    type metadata accessor for JobResult();
    v354 = v233;
    v355 = v231;
    v356 = v234;
    v357 = v232;
    v235 = v234;
    type metadata accessor for Ingestion.FetchItemMetadata();
    v345 = 0;
    v236 = v316;
    v237 = v235;
    v238 = v326;
    (v326)(v233, v237);
    v239 = sub_1CF657094(v236, v164[15], v164[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
    v240 = v236;
    v241 = v341;
    (v323)(v240, v341);
    sub_1CF803A0C(v338, v239);

    sub_1CF1A91AC(v189, &v354);
    swift_getWitnessTable();
    v242 = swift_allocError();
    v244 = v243;
    v245 = *(swift_getTupleTypeMetadata2() + 48);
    v246 = v329;
    (*(v329 + 16))(v244, v194 + v328, v241);
    (*(v246 + 56))(v244, 0, 1, v241);
    v247 = v324;
    v248 = v348;
    v238(v348, v350);
    swift_storeEnumTagMultiPayload();
    v343(&v354, 0, v334, v347, v242);

    sub_1CEFCCC44(&v354, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v333 + 8))(v247, v248);
    (v340)(v336, v331);
  }

  (*(v358 + 8))(v351, v349);
}

uint64_t sub_1CF632ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v44 = a1;
  v8 = *v6;
  v9 = *(*v6 + 600);
  v10 = *(*v6 + 616);
  v43 = type metadata accessor for JobLockRule();
  v45 = *(v43 - 8);
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v41 = &v39 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v39 - v16;
  v18 = type metadata accessor for SnapshotItem();
  v19 = sub_1CF9E75D8();
  v40 = *(v19 - 8);
  v20 = *(v40 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v39 - v22;
  v24 = *(a2 + 32);
  v25 = *(v8 + 576);
  v26 = v50;
  (*(*v24 + 240))(&v6[v25], 1, v46, v47, v48, v21);
  if (!v26)
  {
    v48 = v17;
    v50 = 0;
    v27 = &v6[*(*v6 + 632)];
    swift_beginAccess();
    (*(v40 + 40))(v27, v23, v19);
    swift_endAccess();
    if ((*(*(v18 - 8) + 48))(v27, 1, v18))
    {
      v28 = AssociatedTypeWitness;
      v29 = *(AssociatedTypeWitness - 8);
      v30 = 1;
      v31 = v48;
    }

    else
    {
      v32 = *(v18 + 36);
      v28 = AssociatedTypeWitness;
      v29 = *(AssociatedTypeWitness - 8);
      v31 = v48;
      (*(v29 + 16))(v48, &v27[v32], AssociatedTypeWitness);
      v30 = 0;
    }

    (*(v29 + 56))(v31, v30, 1, v28);
    swift_beginAccess();
    sub_1CEFCCBDC((v6 + 56), v49, &unk_1EC4C1BE0, &unk_1CF9FD400);
    v33 = *(v6 + 15);
    v34 = *(swift_getTupleTypeMetadata2() + 48);
    v35 = v41;
    (*(v29 + 16))(v41, &v6[v25], v28);
    v36 = v42;
    (*(v42 + 16))(v35 + v34, v31, v14);
    v37 = v43;
    swift_storeEnumTagMultiPayload();
    v24 = sub_1CF052B3C(v49, v33, v35);
    (*(v45 + 8))(v35, v37);
    sub_1CEFCCC44(v49, &unk_1EC4C1BE0, &unk_1CF9FD400);
    (*(v36 + 8))(v31, v14);
  }

  return v24;
}

uint64_t sub_1CF6333DC(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v61 = a6;
  v62 = a8;
  v57 = a1;
  v58 = a5;
  v63 = a3;
  v64 = a2;
  v67 = a7;
  v68 = a11;
  v59 = *v11;
  v60 = a4;
  v56 = *(v59 + 616);
  v13 = *(v59 + 600);
  v66 = a10;
  v51 = a9;
  v53 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v72 = swift_getAssociatedConformanceWitness();
  type metadata accessor for FileItemVersion();
  v14 = sub_1CF9E75D8();
  v49 = v14;
  v65 = *(v14 - 8);
  v15 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  v50 = &v47 - v16;
  swift_getTupleTypeMetadata2();
  v18 = sub_1CF9E75D8();
  v48 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  v52 = (a9 & 0x4400000000) != 0;
  v23 = swift_allocObject();
  v55 = v23;
  v24 = v12;
  v25 = v67;
  *(v23 + 16) = v12;
  *(v23 + 24) = v25;
  v26 = swift_allocObject();
  v54 = v26;
  v27 = v68;
  *(v26 + 16) = v66;
  *(v26 + 24) = v27;
  (*(v19 + 16))(v22, v57, v18);
  v28 = v65;
  (*(v65 + 16))(v17, v58, v14);
  v29 = (*(v19 + 80) + 64) & ~*(v19 + 80);
  v30 = (v20 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v28 + 80) + v33 + 20) & ~*(v28 + 80);
  v35 = swift_allocObject();
  v36 = v59;
  *(v35 + 2) = v53;
  v47 = v24;
  *(v35 + 3) = *(v36 + 608);
  *(v35 + 4) = v56;
  *(v35 + 5) = *(v36 + 624);
  *(v35 + 6) = v24;
  v37 = v60;
  *(v35 + 7) = v60;
  (*(v19 + 32))(&v35[v29], v22, v48);
  v39 = v61;
  v38 = v62;
  *&v35[v30] = v61;
  v40 = v66;
  *&v35[v31] = v67;
  *&v35[v32] = v38;
  v41 = &v35[v33];
  v42 = v68;
  *v41 = v40;
  *(v41 + 1) = v42;
  v41[16] = BYTE3(v51) & 1;
  v41[17] = v52;
  LOBYTE(v40) = v64;
  v41[18] = v63;
  v41[19] = v40;
  (*(v65 + 32))(&v35[v34], v50, v49);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v43 = v37;
  v44 = type metadata accessor for Continuation();
  v45 = v39;

  sub_1CF92E6B4("handle(reply:strictVersioning:itemUnchanged:error:lastKnownVersion:request:db:result:reason:completion:)", 104, 2u, sub_1CF6598FC, v55, sub_1CF559418, v54, sub_1CF65995C, v35, v44, MEMORY[0x1E69E6158]);
}

void sub_1CF6338F0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, void (*a8)(__int128 *, void, void, void, void), uint64_t a9, char a10, unsigned __int8 a11, unsigned __int8 a12, char a13, uint64_t a14)
{
  v768 = a8;
  v756 = a7;
  *&v775 = a6;
  v750 = a5;
  v765 = a4;
  *&v773 = a3;
  v14 = a2;
  v776 = a1;
  v15 = *a2;
  v16 = *(*a2 + 600);
  v770 = v16;
  v17 = v15[76];
  v18 = v15[77];
  v19 = v15[78];
  *&v783 = v16;
  *(&v783 + 1) = v17;
  *&v784 = v18;
  *(&v784 + 1) = v19;
  v777 = type metadata accessor for ItemReconciliation();
  v764 = *(v777 - 1);
  v20 = *(v764 + 64);
  MEMORY[0x1EEE9AC00](v777);
  v697 = &v668 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v683 = *(AssociatedTypeWitness - 8);
  v23 = *(v683 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v682 = &v668 - v24;
  v748 = *(v16 - 8);
  v25 = *(v748 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v681 = &v668 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v689 = &v668 - v29;
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v685 = AssociatedTypeWitness;
  *&v783 = AssociatedTypeWitness;
  *(&v783 + 1) = v30;
  v680 = AssociatedConformanceWitness;
  *&v784 = AssociatedConformanceWitness;
  *(&v784 + 1) = v32;
  v33 = type metadata accessor for FileItemVersion();
  v719 = sub_1CF9E75D8();
  v713 = *(v719 - 8);
  v34 = *(v713 + 64);
  MEMORY[0x1EEE9AC00](v719);
  v695 = &v668 - v35;
  v707 = v33;
  v705 = *(v33 - 8);
  v36 = *(v705 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v687 = &v668 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v693 = &v668 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v684 = &v668 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v696 = &v668 - v44;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v754 = *(TupleTypeMetadata2 - 8);
  v46 = v754[8];
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v731 = &v668 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v737 = &v668 - v49;
  v50 = sub_1CF9E75D8();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v736 = &v668 - v52;
  v715 = sub_1CF9E6118();
  v714 = *(v715 - 8);
  v53 = *(v714 + 64);
  MEMORY[0x1EEE9AC00](v715);
  v706 = &v668 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v55);
  v704 = &v668 - v56;
  v57 = swift_getAssociatedTypeWitness();
  v725 = *(v57 - 8);
  v58 = *(v725 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v679 = &v668 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v678 = v59;
  MEMORY[0x1EEE9AC00](v60);
  v690 = &v668 - v61;
  v730 = type metadata accessor for SnapshotItem();
  v743 = sub_1CF9E75D8();
  v744 = *(v743 - 8);
  v62 = *(v744 + 64);
  MEMORY[0x1EEE9AC00](v743);
  v728 = &v668 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v749 = &v668 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v700 = &v668 - v67;
  v68 = swift_getAssociatedTypeWitness();
  v69 = sub_1CF9E75D8();
  v717 = swift_getTupleTypeMetadata2();
  v703 = *(v717 - 8);
  v70 = *(v703 + 64);
  MEMORY[0x1EEE9AC00](v717);
  v711 = &v668 - v71;
  v726 = v69;
  v718 = *(v69 - 8);
  v72 = v718[8];
  MEMORY[0x1EEE9AC00](v73);
  v702 = &v668 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v75);
  v716 = &v668 - v76;
  v762 = v68;
  v761 = *(v68 - 8);
  v77 = *(v761 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v701 = &v668 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v729 = &v668 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v710 = &v668 - v83;
  v747 = type metadata accessor for FileTreeError();
  v709 = *(v747 - 8);
  v84 = *(v709 + 64);
  MEMORY[0x1EEE9AC00](v747);
  v745 = &v668 - v85;
  v755 = v57;
  v724 = sub_1CF9E75D8();
  v723 = *(v724 - 8);
  v86 = *(v723 + 64);
  MEMORY[0x1EEE9AC00](v724);
  v698 = &v668 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v722 = &v668 - v89;
  *&v766 = type metadata accessor for ItemReconciliationHalf();
  v742 = *(v766 - 8);
  v90 = *(v742 + 64);
  MEMORY[0x1EEE9AC00](v766);
  v721 = &v668 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v732 = &v668 - v93;
  *&v783 = v16;
  *(&v783 + 1) = v17;
  v759 = v17;
  *&v784 = v18;
  *(&v784 + 1) = v19;
  v757 = v19;
  v753 = type metadata accessor for ReconciliationMutation();
  v752 = *(v753 - 8);
  v94 = *(v752 + 64);
  MEMORY[0x1EEE9AC00](v753);
  v691 = &v668 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v96);
  *&v769 = &v668 - v97;
  v767 = v18;
  v741 = type metadata accessor for ItemReconciliationHalf();
  v740 = *(v741 - 8);
  v98 = *(v740 + 64);
  MEMORY[0x1EEE9AC00](v741);
  v739 = &v668 - v99;
  v774 = sub_1CF9E75D8();
  v100 = *(v774 - 8);
  v101 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v774);
  v699 = &v668 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v103);
  v105 = &v668 - v104;
  MEMORY[0x1EEE9AC00](v106);
  v708 = &v668 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v668 - v109;
  MEMORY[0x1EEE9AC00](v111);
  v746 = &v668 - v112;
  MEMORY[0x1EEE9AC00](v113);
  v738 = &v668 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v117 = &v668 - v116;
  MEMORY[0x1EEE9AC00](v118);
  v778 = &v668 - v119;
  v758 = TupleTypeMetadata2;
  v760 = sub_1CF9E75D8();
  v120 = *(v760 - 8);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v760);
  v712 = &v668 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v123);
  MEMORY[0x1EEE9AC00](v124);
  v686 = &v668 - v125;
  MEMORY[0x1EEE9AC00](v126);
  v692 = &v668 - v127;
  MEMORY[0x1EEE9AC00](v128);
  v677 = &v668 - v129;
  MEMORY[0x1EEE9AC00](v130);
  MEMORY[0x1EEE9AC00](v131);
  v735 = &v668 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v734 = &v668 - v134;
  MEMORY[0x1EEE9AC00](v135);
  MEMORY[0x1EEE9AC00](v136);
  v138 = (&v668 - v137);
  v141 = MEMORY[0x1EEE9AC00](v139);
  v142 = (&v668 - v140);
  v143 = *(v14 + 136);
  v751 = v120;
  v772 = v100;
  v694 = v144;
  v688 = v145;
  v720 = v110;
  v733 = v146;
  if ((v143 & 1) == 0)
  {
    LODWORD(v727) = 0;
    v147 = v776;
LABEL_9:
    v150 = v775;
    goto LABEL_10;
  }

  if (v773)
  {
    v147 = v776;
    if (v750)
    {
      LODWORD(v727) = [v750 requestedExtent] != -1;
    }

    else
    {
      LODWORD(v727) = 0;
    }

    goto LABEL_9;
  }

  v672 = v105;
  v763 = v14;
  v148 = v760;
  v727 = *(v120 + 16);
  v727(&v668 - v140, v765, v760, v141);
  v149 = v758;
  v750 = v754[6];
  if ((v750)(v142, 1, v758) == 1)
  {
    (*(v120 + 8))(v142, v148);
LABEL_19:
    LODWORD(v727) = 0;
    v147 = v776;
    v14 = v763;
    v150 = v775;
    v105 = v672;
    goto LABEL_10;
  }

  v185 = v142[1];
  v783 = *v142;
  v784 = v185;
  v186 = v142[3];
  v785 = v142[2];
  v786 = v186;
  sub_1CF1AE25C(&v783);
  v187 = v786;
  v188 = v142 + *(v149 + 48);
  v676 = *(v748 + 8);
  v676(v188, v770);
  if (v187 == 1)
  {
    goto LABEL_19;
  }

  v218 = v760;
  (v727)(v138, v765, v760);
  v219 = (v750)(v138, 1, v149);
  v105 = v672;
  if (v219 == 1)
  {
    (*(v751 + 8))(v138, v218);
LABEL_56:
    v147 = v776;
    v14 = v763;
    v150 = v775;
LABEL_57:
    LODWORD(v727) = 1;
    goto LABEL_10;
  }

  v254 = v138[1];
  v779 = *v138;
  v780 = v254;
  v255 = v138[3];
  v781 = v138[2];
  v782 = v255;
  sub_1CF1AE25C(&v779);
  v256 = *(v149 + 48);
  if (v782)
  {
    v676(v138 + v256, v770);
    goto LABEL_56;
  }

  v318 = v781;
  v676(v138 + v256, v770);
  v319 = v318 == -1;
  v147 = v776;
  v14 = v763;
  v150 = v775;
  if (!v319)
  {
    goto LABEL_57;
  }

  LODWORD(v727) = 0;
LABEL_10:
  v151 = v147[3];
  v152 = v147[4];
  v153 = __swift_project_boxed_opaque_existential_1(v147, v151);
  v154 = *(v150 + 16);
  v155 = *(*v14 + 576);
  v156 = *(v152 + 8);
  v157 = v778;
  v158 = v771;
  sub_1CF68DDB0(&v155[v14], v153, v151, v156, v778);
  if (v158)
  {
    return;
  }

  v669 = v154;
  v763 = v14;
  v159 = v157;
  v160 = v147;
  v750 = v155;
  v771 = 0;
  v670 = a11;
  v671 = a9;
  v161 = v772;
  v162 = *(v772 + 16);
  v674 = v772 + 16;
  v673 = v162;
  v162(v117, v159, v774);
  v163 = v764;
  v164 = *(v764 + 48);
  v165 = v777;
  v676 = (v764 + 48);
  v675 = v164;
  v166 = v164(v117, 1, v777);
  v672 = v105;
  if (v166 == 1)
  {
    (*(v161 + 8))(v117, v774);
    v167 = v775;
    v168 = v773;
    v169 = v778;
    v170 = v769;
    v171 = v766;
  }

  else
  {
    v172 = v740;
    v173 = v739;
    v174 = v741;
    (*(v740 + 16))(v739, v117, v741);
    (*(v163 + 8))(v117, v165);
    v175 = v173[*(v174 + 52)];
    (*(v172 + 8))(v173, v174);
    v176 = v768;
    v167 = v775;
    v177 = v160;
    v168 = v773;
    v169 = v778;
    v170 = v769;
    v171 = v766;
    if (!v175)
    {
      goto LABEL_26;
    }
  }

  v178 = *(v167 + 32);
  if (sub_1CF056558())
  {
    goto LABEL_15;
  }

  v183 = v738;
  v673(v738, v169, v774);
  v184 = v777;
  if (v675(v183, 1, v777) == 1)
  {
    (*(v161 + 8))(v183, v774);
  }

  else
  {
    v189 = v184;
    v190 = v183[*(v184 + 14)];
    (*(v764 + 8))(v183, v189);
    if (v190 == 2)
    {
LABEL_15:
      *&v783 = v770;
      *(&v783 + 1) = v759;
      *&v784 = v767;
      *(&v784 + 1) = v757;
      type metadata accessor for JobResult();
      v179 = v762;
      v180 = swift_getAssociatedConformanceWitness();
      v181 = v755;
      v182 = swift_getAssociatedConformanceWitness();
      *&v783 = v179;
LABEL_24:
      *(&v783 + 1) = v181;
      *&v784 = v180;
      *(&v784 + 1) = v182;
      type metadata accessor for ReconciliationID();
      v192 = 2;
LABEL_25:
      type metadata accessor for ReconciliationSideMutation();
      v193 = *(swift_getTupleTypeMetadata2() + 48);
      v170 = v769;
      (*(v761 + 16))(v769, &v750[v763], v179);
      swift_storeEnumTagMultiPayload();
      *(v170 + v193) = v192;
      swift_storeEnumTagMultiPayload();
      v194 = v753;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v756, v170);
      (*(v752 + 8))(v170, v194);
      v169 = v778;
      v177 = v776;
      v176 = v768;
      v161 = v772;
      v168 = v773;
      v171 = v766;
LABEL_26:
      if (v168)
      {
LABEL_27:
        v195 = v746;
        v673(v746, v169, v774);
        v196 = v777;
        if (v675(v195, 1, v777) == 1)
        {
          v197 = v170;
          (*(v161 + 8))(v195, v774);
          goto LABEL_32;
        }

        v198 = v742;
        v199 = *(v742 + 16);
        v200 = v732;
        v199(v732, &v195[*(v196 + 52)], v171);
        v201 = v195;
        v202 = *(v764 + 8);
        v202(v201, v196);
        v203 = v200[*(v171 + 44)];
        v204 = v171;
        v207 = *(v198 + 8);
        v205 = v198 + 8;
        v206 = v207;
        v207(v200, v204);
        if (v203)
        {
          v161 = v772;
          v176 = v768;
          v169 = v778;
          v197 = v769;
LABEL_31:
          v168 = v773;
LABEL_32:
          *&v779 = v168;
          v208 = v168;
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
          v210 = v745;
          v211 = v747;
          if (!swift_dynamicCast())
          {
            goto LABEL_129;
          }

          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 4)
          {
            if (EnumCaseMultiPayload != 5)
            {
              if (EnumCaseMultiPayload != 21)
              {
                if (EnumCaseMultiPayload == 23)
                {
                  v213 = v708;
                  v673(v708, v169, v774);
                  if (v675(v213, 1, v196) == 1)
                  {
                    (*(v161 + 8))(v213, v774);
                  }

                  else
                  {
                    v418 = v196;
                    v419 = sub_1CF07CD80(v196);
                    v420 = *(v764 + 8);
                    v764 += 8;
                    v420(v213, v418);
                    if (!v419)
                    {
                      v479 = v672;
                      v673(v672, v778, v774);
                      if (v675(v479, 1, v418) == 1)
                      {
                        (*(v161 + 8))(v479, v774);
                      }

                      else
                      {
                        v512 = v740;
                        v513 = v739;
                        v514 = v741;
                        (*(v740 + 16))(v739, v479, v741);
                        v420(v479, v418);
                        v515 = v513[*(v514 + 56)];
                        (*(v512 + 8))(v513, v514);
                        if (!v515)
                        {
                          goto LABEL_123;
                        }
                      }

                      v516 = v761;
                      *&v783 = v770;
                      *(&v783 + 1) = v759;
                      *&v784 = v767;
                      *(&v784 + 1) = v757;
                      v777 = type metadata accessor for JobResult();
                      v517 = v762;
                      v518 = swift_getAssociatedConformanceWitness();
                      v519 = v755;
                      v520 = swift_getAssociatedConformanceWitness();
                      *&v783 = v517;
                      *(&v783 + 1) = v519;
                      *&v784 = v518;
                      *(&v784 + 1) = v520;
                      type metadata accessor for ReconciliationID();
                      type metadata accessor for ReconciliationSideMutation();
                      v521 = *(swift_getTupleTypeMetadata2() + 48);
                      (*(v516 + 16))(v197, &v750[v763], v517);
                      swift_storeEnumTagMultiPayload();
                      *(v197 + v521) = 1;
                      v161 = v772;
                      swift_storeEnumTagMultiPayload();
                      v522 = v753;
                      swift_storeEnumTagMultiPayload();
                      sub_1CF06EB44(v756, v197);
                      (*(v752 + 8))(v197, v522);
                      goto LABEL_165;
                    }
                  }

LABEL_123:
                  v421 = v770;
                  v422 = v759;
                  *&v783 = v770;
                  *(&v783 + 1) = v759;
                  v423 = v767;
                  v424 = v757;
                  *&v784 = v767;
                  *(&v784 + 1) = v757;
                  type metadata accessor for JobResult();
                  *&v783 = v421;
                  *(&v783 + 1) = v422;
                  *&v784 = v423;
                  *(&v784 + 1) = v424;
                  type metadata accessor for Ingestion.FetchItemMetadata();
                  v425 = sub_1CF657094(&v750[v763], v763[15], v763[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
                  sub_1CF803A0C(v756, v425);

LABEL_165:
                  sub_1CF1A91AC(v776, &v783);
                  v768(&v783, 0, 0, 0, v773);
                  sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
                  (*(v161 + 8))(v778, v774);
                  goto LABEL_166;
                }

                goto LABEL_77;
              }

              v288 = *(v775 + 32);
              if (!sub_1CF056558() && (v670 & 1) != 0)
              {
                v289 = fpfs_current_or_default_log();
                v290 = v704;
                sub_1CF9E6128();
                v291 = sub_1CF9E6108();
                v292 = sub_1CF9E7288();
                if (os_log_type_enabled(v291, v292))
                {
                  v293 = swift_slowAlloc();
                  *v293 = 0;
                  _os_log_impl(&dword_1CEFC7000, v291, v292, "download got canceled since we are out of space", v293, 2u);
                  MEMORY[0x1D386CDC0](v293, -1, -1);
                }

                (*(v714 + 8))(v290, v715);
                *&v783 = v770;
                *(&v783 + 1) = v759;
                *&v784 = v767;
                *(&v784 + 1) = v757;
                type metadata accessor for JobResult();
                v294 = v762;
                v295 = swift_getAssociatedConformanceWitness();
                v296 = v755;
                v297 = swift_getAssociatedConformanceWitness();
                *&v783 = v294;
                *(&v783 + 1) = v296;
                *&v784 = v295;
                *(&v784 + 1) = v297;
                type metadata accessor for ReconciliationID();
                type metadata accessor for ReconciliationSideMutation();
                v298 = swift_getTupleTypeMetadata2();
                v299 = v769;
                v300 = v769 + *(v298 + 48);
                v301 = v763;
                (*(v761 + 16))(v769, &v750[v763], v294);
                swift_storeEnumTagMultiPayload();
                *v300 = 1280;
                *(v300 + 8) = *(v301 + 15);
                swift_storeEnumTagMultiPayload();
                v302 = v753;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v756, v299);
                (*(v752 + 8))(v299, v302);
                v161 = v772;
                v176 = v768;
                v169 = v778;
              }

              v287 = v776;
              goto LABEL_73;
            }

            v257 = *v210;
            v258 = *(v775 + 32);
            if (sub_1CF056558())
            {
LABEL_66:
              v287 = v776;
LABEL_73:
              sub_1CF1A91AC(v287, &v783);
              v176(&v783, 0, 0, 0, v773);
              sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
LABEL_74:
              (*(v161 + 8))(v169, v774);
LABEL_166:

              return;
            }

            v259 = v776;
            if ((v257 & a10) != 1)
            {
LABEL_65:
              *&v783 = v770;
              *(&v783 + 1) = v759;
              *&v784 = v767;
              *(&v784 + 1) = v757;
              type metadata accessor for JobResult();
              v278 = v762;
              v279 = swift_getAssociatedConformanceWitness();
              v280 = v755;
              v281 = swift_getAssociatedConformanceWitness();
              *&v783 = v278;
              *(&v783 + 1) = v280;
              *&v784 = v279;
              *(&v784 + 1) = v281;
              type metadata accessor for ReconciliationID();
              type metadata accessor for ReconciliationSideMutation();
              v282 = swift_getTupleTypeMetadata2();
              v283 = v769;
              v284 = v769 + *(v282 + 48);
              v285 = v763;
              (*(v761 + 16))(v769, &v750[v763], v278);
              swift_storeEnumTagMultiPayload();
              *v284 = 1280;
              *(v284 + 8) = *(v285 + 15);
              swift_storeEnumTagMultiPayload();
              v286 = v753;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v756, v283);
              (*(v752 + 8))(v283, v286);
              v161 = v772;
              v176 = v768;
              v169 = v778;
              goto LABEL_66;
            }

            v260 = v197;
            if (v670)
            {
              v261 = v756;
              (*(*v756 + 168))(0xD000000000000053, 0x80000001CFA55790);
              *&v783 = v770;
              *(&v783 + 1) = v759;
              *&v784 = v767;
              *(&v784 + 1) = v757;
              v777 = type metadata accessor for JobResult();
              v262 = v762;
              v263 = swift_getAssociatedConformanceWitness();
              v264 = v761;
              v265 = v755;
              v266 = swift_getAssociatedConformanceWitness();
              *&v783 = v262;
              *(&v783 + 1) = v265;
              *&v784 = v263;
              *(&v784 + 1) = v266;
              type metadata accessor for ReconciliationID();
              TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
              v268 = *(TupleTypeMetadata3 + 48);
              v269 = *(TupleTypeMetadata3 + 64);
              (*(v264 + 16))(v260, &v750[v763], v262);
              swift_storeEnumTagMultiPayload();
              *(v260 + v268) = 1;
              v259 = v776;
              *(v260 + v269) = 0;
              v169 = v778;
              v161 = v772;
              v270 = v753;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v261, v260);
              (*(v752 + 8))(v260, v270);
            }

            v271 = v259[3];
            v272 = v259[4];
            v273 = __swift_project_boxed_opaque_existential_1(v259, v271);
            v274 = v698;
            v275 = v771;
            (*(*v669 + 160))(&v750[v763], v273, v271, *(v272 + 8));
            v771 = v275;
            if (v275)
            {
              goto LABEL_74;
            }

            v276 = v725;
            v277 = v755;
            if ((*(v725 + 48))(v274, 1, v755) == 1)
            {
              (*(v723 + 8))(v274, v724);
              goto LABEL_65;
            }

            v618 = *(v276 + 32);
            v776 = (v276 + 32);
            v777 = v618;
            (v618)(v690, v274, v277);
            *&v783 = v770;
            *(&v783 + 1) = v759;
            *&v784 = v767;
            *(&v784 + 1) = v757;
            *&v766 = type metadata accessor for JobResult();
            v619 = v762;
            v620 = swift_getAssociatedConformanceWitness();
            v621 = swift_getAssociatedConformanceWitness();
            *&v783 = v619;
            *(&v783 + 1) = v277;
            v622 = v277;
            *&v784 = v620;
            *(&v784 + 1) = v621;
            type metadata accessor for ReconciliationID();
            v623 = swift_getTupleTypeMetadata3();
            v624 = *(v623 + 48);
            v625 = *(v623 + 64);
            (*(v761 + 16))(v260, &v750[v763], v619);
            swift_storeEnumTagMultiPayload();
            *(v260 + v624) = 2;
            *(v260 + v625) = 0;
            v626 = v753;
            swift_storeEnumTagMultiPayload();
            sub_1CF06EB44(v756, v260);
            (*(v752 + 8))(v260, v626);
            *&v769 = *(*(v775 + 40) + 16);
            LOBYTE(v783) = 2;
            v627 = v276;
            v628 = *(v276 + 16);
            v629 = v679;
            v630 = v622;
            v628(v679, v690, v622);
            v631 = (*(v627 + 80) + 48) & ~*(v627 + 80);
            v632 = (v678 + v631 + 7) & 0xFFFFFFFFFFFFFFF8;
            v633 = (v632 + 15) & 0xFFFFFFFFFFFFFFF8;
            v634 = (v633 + 23) & 0xFFFFFFFFFFFFFFF8;
            v635 = (v634 + 15) & 0xFFFFFFFFFFFFFFF8;
            v636 = swift_allocObject();
            v637 = v759;
            v636[2] = v770;
            v636[3] = v637;
            v638 = v757;
            v636[4] = v767;
            v636[5] = v638;
            (v777)(v636 + v631, v629, v630);
            v639 = v769;
            *(v636 + v632) = v775;
            v640 = (v636 + v633);
            v641 = v671;
            *v640 = v768;
            v640[1] = v641;
            *(v636 + v634) = v756;
            *(v636 + v635) = v763;
            v642 = v773;
            *(v636 + ((v635 + 15) & 0xFFFFFFFFFFFFFFF8)) = v773;
            v643 = *(*v639 + 768);
            v644 = v642;

            v645 = v690;
            v643(v690, &v783, sub_1CF659B7C, v636);

            (*(v725 + 8))(v645, v755);
LABEL_197:
            (*(v772 + 8))(v778, v774);
            goto LABEL_166;
          }

          if (!EnumCaseMultiPayload)
          {
            v777 = v209;
            MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
            v303 = v761;
            v304 = v210;
            v305 = v762;
            *&v783 = v762;
            *(&v783 + 1) = v719;
            *&v784 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
            *(&v784 + 1) = v784;
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v307 = v770;
            v308 = TupleTypeMetadata[12];

            v309 = v710;
            (*(v303 + 32))(v710, v304, v305);
            v310 = v767;
            v311 = v307;
            v312 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
            v313 = v763;
            LOBYTE(TupleTypeMetadata) = sub_1CF9E6868();
            (*(v303 + 8))(v309, v305);
            if (TupleTypeMetadata)
            {
              v314 = v759;
              *&v783 = v311;
              *(&v783 + 1) = v759;
              v315 = v757;
              *&v784 = v310;
              *(&v784 + 1) = v757;
              type metadata accessor for JobResult();
              *&v783 = v311;
              *(&v783 + 1) = v314;
              *&v784 = v310;
              *(&v784 + 1) = v315;
              type metadata accessor for Ingestion.FetchItemMetadata();
              v316 = sub_1CF657094(&v750[v313], v313[15], v313[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
              sub_1CF803A0C(v756, v316);

              sub_1CF1A91AC(v776, &v783);
              v768(&v783, 0, 0, 0, v773);
              sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v772 + 8))(v778, v774);
              (*(v713 + 8))(&v304[v308], v719);
              goto LABEL_166;
            }

            (*(v713 + 8))(&v304[v308], v719);
            v161 = v772;
            v176 = v768;
            v169 = v778;
LABEL_128:
            v168 = v773;
LABEL_129:

            *&v779 = v168;
            v429 = v168;
            sub_1CF1B7E64();
            if (!swift_dynamicCast())
            {
LABEL_142:

              sub_1CF1A91AC(v776, &v783);
              v176(&v783, 0, 0, 0, v168);
              sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
              v399 = *(v161 + 8);
              v400 = v169;
              goto LABEL_143;
            }

            v430 = v169;
            v431 = v161;
            v432 = v787;
            v433 = [v787 domain];
            v434 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v436 = v435;

            v437 = *MEMORY[0x1E6967190];
            if (v434 == _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0() && v436 == v438)
            {
            }

            else
            {
              v439 = sub_1CF9E8048();

              if ((v439 & 1) == 0)
              {
LABEL_141:

                v161 = v431;
                v169 = v430;
                v168 = v773;
                goto LABEL_142;
              }
            }

            v440 = [v432 code];
            if (v440 == *MEMORY[0x1E69671E0])
            {
              v441 = *(v775 + 32);
              v442 = sub_1CF056558();
              v443 = v431;
              v444 = v776;
              if (!v442 && (v670 & 1) != 0)
              {
                v777 = v432;
                v445 = v761;
                v446 = fpfs_current_or_default_log();
                v447 = v706;
                sub_1CF9E6128();
                v448 = sub_1CF9E6108();
                v449 = sub_1CF9E7288();
                if (os_log_type_enabled(v448, v449))
                {
                  v450 = swift_slowAlloc();
                  *v450 = 0;
                  _os_log_impl(&dword_1CEFC7000, v448, v449, "speculative download got canceled by the provider going to update speculative fulfilled", v450, 2u);
                  MEMORY[0x1D386CDC0](v450, -1, -1);
                }

                (*(v714 + 8))(v447, v715);
                *&v783 = v770;
                *(&v783 + 1) = v759;
                *&v784 = v767;
                *(&v784 + 1) = v757;
                type metadata accessor for JobResult();
                v451 = v762;
                v452 = swift_getAssociatedConformanceWitness();
                v453 = v755;
                v454 = swift_getAssociatedConformanceWitness();
                *&v783 = v451;
                *(&v783 + 1) = v453;
                *&v784 = v452;
                *(&v784 + 1) = v454;
                type metadata accessor for ReconciliationID();
                v455 = swift_getTupleTypeMetadata3();
                v456 = *(v455 + 48);
                v457 = *(v455 + 64);
                *&v773 = *(v445 + 16);
                v458 = v769;
                (v773)(v769, &v750[v763], v451);
                swift_storeEnumTagMultiPayload();
                *(v458 + v456) = 1;
                *(v458 + v457) = 0;
                v459 = v753;
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v756, v458);
                *&v775 = *(v752 + 8);
                (v775)(v458, v459);
                type metadata accessor for ReconciliationSideMutation();
                v460 = v458 + *(swift_getTupleTypeMetadata2() + 48);
                v461 = v763;
                (v773)(v458, &v750[v763], v762);
                swift_storeEnumTagMultiPayload();
                *v460 = 1280;
                *(v460 + 8) = *(v461 + 15);
                swift_storeEnumTagMultiPayload();
                swift_storeEnumTagMultiPayload();
                sub_1CF06EB44(v756, v458);
                (v775)(v458, v459);
                v443 = v772;
                v432 = v777;
                v430 = v778;
                v444 = v776;
                v176 = v768;
              }

              sub_1CF1A91AC(v444, &v783);
              v462 = v432;
              v176(&v783, 0, 0, 0, v432);

              sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v443 + 8))(v430, v774);
              goto LABEL_166;
            }

            goto LABEL_141;
          }

          if (EnumCaseMultiPayload != 4)
          {
LABEL_77:
            (*(v709 + 8))(v210, v211);
            v168 = v773;
            goto LABEL_129;
          }

          v777 = v209;
          v233 = v726;
          v234 = v762;
          *&v766 = *(swift_getTupleTypeMetadata2() + 48);
          v235 = v761;
          v236 = v716;
          (*(v761 + 16))(v716, &v750[v763], v234);
          (*(v235 + 56))(v236, 0, 1, v234);
          v237 = *(v717 + 48);
          v238 = v718;
          v239 = v210;
          v240 = v711;
          v764 = v718[2];
          (v764)(v711, v236, v233);
          v241 = v238[4];
          v765 = v237;
          v241(&v240[v237], v239, v233);
          v242 = *(v235 + 48);
          if (v242(v240, 1, v234) == 1)
          {
            v243 = v238[1];
            v243(v236, v233);
            v244 = v242(&v240[v765], 1, v234);
            v245 = v761;
            if (v244 == 1)
            {
              v243(v240, v233);
              v246 = *(v245 + 32);
LABEL_155:
              v488 = v701;
              v489 = v762;
              v246(v701, &v745[v766], v762);
              v490 = v776;
              v491 = v776[3];
              v492 = v776[4];
              v493 = __swift_project_boxed_opaque_existential_1(v776, v491);
              v494 = v700;
              (*(*(v730 - 8) + 56))(v700, 1, 1);
              v495 = v763;
              v496 = v756;
              v497 = v771;
              sub_1CF611904(v494, &v750[v763], 0, 0, 0, v775, v763[15], v763[16], v763[17], v756, v493, v491, v492);
              v771 = v497;
              v498 = v772;
              if (v497)
              {
                (*(v744 + 8))(v494, v743);
                (*(v761 + 8))(v488, v489);
                (*(v498 + 8))(v778, v774);
                goto LABEL_166;
              }

              (*(v744 + 8))(v494, v743);
              v505 = v770;
              v506 = v759;
              *&v783 = v770;
              *(&v783 + 1) = v759;
              v507 = v767;
              v508 = v757;
              *&v784 = v767;
              *(&v784 + 1) = v757;
              v777 = type metadata accessor for JobResult();
              *&v783 = v505;
              *(&v783 + 1) = v506;
              *&v784 = v507;
              *(&v784 + 1) = v508;
              type metadata accessor for Ingestion.FetchItemMetadata();
              v509 = sub_1CF657094(v488, v495[15], v495[16], 2048, type metadata accessor for Ingestion.FetchItemMetadata);
              sub_1CF803A0C(v496, v509);

              sub_1CF1A91AC(v490, &v783);
              v768(&v783, 0, 0, 0, v773);
              sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
              (*(v761 + 8))(v488, v489);
              goto LABEL_197;
            }
          }

          else
          {
            v426 = v702;
            (v764)(v702, v240, v233);
            v427 = v765;
            if (v242(&v240[v765], 1, v234) != 1)
            {
              v480 = v761;
              v481 = &v240[v427];
              v482 = v233;
              v483 = v729;
              v764 = *(v761 + 32);
              (v764)(v729, v481, v234);
              v484 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
              v485 = v234;
              LODWORD(v765) = sub_1CF9E6868();
              v486 = v240;
              v428 = *(v480 + 8);
              v428(v483, v485);
              v487 = v718[1];
              v487(v716, v482);
              v428(v426, v485);
              v487(v486, v482);
              if (v765)
              {
                v246 = v764;
                goto LABEL_155;
              }

              goto LABEL_127;
            }

            (v718[1])(v716, v233);
            v245 = v761;
            (*(v761 + 8))(v426, v234);
          }

          (*(v703 + 8))(v240, v717);
          v428 = *(v245 + 8);
LABEL_127:
          v428(&v745[v766], v762);
          v161 = v772;
          v169 = v778;
          v176 = v768;
          goto LABEL_128;
        }

        v765 = v202;
        v742 = v205;
        v220 = v776[3];
        v758 = v776[4];
        v754 = __swift_project_boxed_opaque_existential_1(v776, v220);
        v221 = v196;
        v760 = *(v775 + 24);
        v222 = v720;
        v673(v720, v778, v774);
        if (v675(v222, 1, v221) == 1)
        {
          __break(1u);
        }

        else
        {
          v751 = v220;
          v223 = v721;
          v224 = v766;
          v199(v721, &v222[*(v221 + 52)], v766);
          (v765)(v222, v221);
          v225 = v722;
          (*(v723 + 16))(v722, v223, v724);
          v206(v223, v224);
          v226 = v225;
          v227 = v725;
          if ((*(v725 + 48))(v225, 1, v755) != 1)
          {
            *&v783 = v759;
            *(&v783 + 1) = v770;
            v228 = v757;
            v229 = v767;
            *&v784 = v757;
            *(&v784 + 1) = v767;
            v230 = type metadata accessor for Materialization.MaterializeItem();
            v231 = v771;
            v232 = (*(*v760 + 320))(v225, v230, 0, v754, v751, *(v758 + 8));
            v771 = v231;
            if (v231)
            {
              (*(v772 + 8))(v778, v774);
              (*(v227 + 8))(v225, v755);
              return;
            }

            v317 = v755;
            (*(v227 + 8))(v226, v755);
            if (v232)
            {
              v176 = v768;
              v161 = v772;
              v197 = v769;
            }

            else
            {
              *&v783 = v770;
              *(&v783 + 1) = v759;
              *&v784 = v229;
              *(&v784 + 1) = v228;
              type metadata accessor for JobResult();
              v465 = v762;
              v466 = swift_getAssociatedConformanceWitness();
              v467 = swift_getAssociatedConformanceWitness();
              *&v783 = v465;
              *(&v783 + 1) = v317;
              *&v784 = v466;
              *(&v784 + 1) = v467;
              type metadata accessor for ReconciliationID();
              type metadata accessor for ReconciliationSideMutation();
              v468 = swift_getTupleTypeMetadata2();
              v469 = v769;
              v470 = v769 + *(v468 + 48);
              v471 = v763;
              (*(v761 + 16))(v769, &v750[v763], v465);
              swift_storeEnumTagMultiPayload();
              *v470 = 1280;
              *(v470 + 8) = *(v471 + 15);
              swift_storeEnumTagMultiPayload();
              v472 = v753;
              swift_storeEnumTagMultiPayload();
              sub_1CF06EB44(v756, v469);
              v197 = v469;
              (*(v752 + 8))(v469, v472);
              v176 = v768;
              v161 = v772;
            }

            v196 = v777;
            v169 = v778;
            goto LABEL_31;
          }
        }

        __break(1u);
        goto LABEL_210;
      }

      goto LABEL_84;
    }

    if (v190 == 4)
    {
LABEL_210:
      __break(1u);
      return;
    }
  }

  if ((v763[17] & 1) == 0)
  {
    *&v783 = v770;
    *(&v783 + 1) = v759;
    *&v784 = v767;
    *(&v784 + 1) = v757;
    type metadata accessor for JobResult();
    v191 = v762;
    v180 = swift_getAssociatedConformanceWitness();
    v179 = v191;
    v181 = v755;
    v182 = swift_getAssociatedConformanceWitness();
    *&v783 = v191;
    goto LABEL_24;
  }

  if (v727)
  {
    *&v783 = v770;
    *(&v783 + 1) = v759;
    *&v784 = v767;
    *(&v784 + 1) = v757;
    type metadata accessor for JobResult();
    v214 = v762;
    v215 = swift_getAssociatedConformanceWitness();
    v179 = v214;
    v216 = v755;
    v217 = swift_getAssociatedConformanceWitness();
    *&v783 = v214;
    *(&v783 + 1) = v216;
    *&v784 = v215;
    *(&v784 + 1) = v217;
    type metadata accessor for ReconciliationID();
    v192 = 4;
    goto LABEL_25;
  }

  if (v168)
  {
    *&v783 = v770;
    *(&v783 + 1) = v759;
    *&v784 = v767;
    *(&v784 + 1) = v757;
    v765 = type metadata accessor for JobResult();
    v247 = v762;
    v248 = swift_getAssociatedConformanceWitness();
    v249 = v755;
    v250 = swift_getAssociatedConformanceWitness();
    *&v783 = v247;
    *(&v783 + 1) = v249;
    *&v784 = v248;
    *(&v784 + 1) = v250;
    type metadata accessor for ReconciliationID();
    type metadata accessor for ReconciliationSideMutation();
    v251 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v761 + 16))(v170, &v750[v763], v247);
    swift_storeEnumTagMultiPayload();
    *(v170 + v251) = 0;
    swift_storeEnumTagMultiPayload();
    v252 = v753;
    swift_storeEnumTagMultiPayload();
    sub_1CF06EB44(v756, v170);
    v253 = v252;
    v168 = v773;
    (*(v752 + 8))(v170, v253);
    v161 = v772;
    v176 = v768;
    v169 = v778;
    goto LABEL_27;
  }

  *&v783 = v770;
  *(&v783 + 1) = v759;
  *&v784 = v767;
  *(&v784 + 1) = v757;
  *&v773 = type metadata accessor for JobResult();
  v320 = v762;
  v321 = swift_getAssociatedConformanceWitness();
  v322 = v755;
  v323 = swift_getAssociatedConformanceWitness();
  *&v783 = v320;
  *(&v783 + 1) = v322;
  *&v784 = v321;
  *(&v784 + 1) = v323;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v324 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v761 + 16))(v170, &v750[v763], v320);
  swift_storeEnumTagMultiPayload();
  *(v170 + v324) = 2;
  swift_storeEnumTagMultiPayload();
  v325 = v753;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v756, v170);
  (*(v752 + 8))(v170, v325);
  v161 = v772;
  v169 = v778;
  v177 = v776;
LABEL_84:
  v326 = v751;
  v327 = v733;
  v328 = v760;
  v746 = *(v751 + 16);
  v745 = (v751 + 16);
  (v746)(v733, v765, v760);
  v329 = v754;
  v330 = v754[6];
  v331 = v758;
  *&v773 = v754 + 6;
  *&v766 = v330;
  if (v330(v327, 1, v758) == 1)
  {
    (*(v326 + 8))(v327, v328);
    v332 = v736;
    v333 = v770;
    (*(v748 + 56))(v736, 1, 1, v770);
  }

  else
  {
    v334 = v327[1];
    v783 = *v327;
    v784 = v334;
    v335 = v327[3];
    v785 = v327[2];
    v786 = v335;
    sub_1CF1AE25C(&v783);
    v336 = v748;
    v337 = v327 + *(v331 + 48);
    v332 = v736;
    v333 = v770;
    (*(v748 + 32))(v736, v337, v770);
    (*(v336 + 56))(v332, 0, 1, v333);
  }

  v338 = v749;
  LODWORD(v740) = a12;
  sub_1CF06B4E0(v332, v333, v767, v749);
  v339 = v734;
  (v746)(v734, v765, v328);
  if ((v766)(v339, 1, v331) == 1)
  {
    v340 = v169;
    (*(v751 + 8))(v339, v328);
    v742 = 0xEA00000000003E6CLL;
    v341 = 0x696E3A6D6574693CLL;
    v342 = v735;
  }

  else
  {
    v343 = v169;
    v344 = v329;
    (v329[4])(v737, v339, v331);
    *&v783 = 0;
    *(&v783 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0x3A6D6574693CLL, 0xE600000000000000);
    v345 = v744;
    v346 = v728;
    v347 = v743;
    (*(v744 + 16))(v728, v338, v743);
    v348 = v730;
    v349 = *(v730 - 8);
    v350 = (*(v349 + 48))(v346, 1, v730);
    v342 = v735;
    if (v350 == 1)
    {
      v351 = 0x3E6C696E3CLL;
      v349 = v345;
      v352 = 0xE500000000000000;
    }

    else
    {
      v347 = v348;
      v351 = sub_1CF06FB20(v348);
      v352 = v353;
    }

    (*(v349 + 8))(v346, v347);
    MEMORY[0x1D3868CC0](v351, v352);

    MEMORY[0x1D3868CC0](0x746E65746E6F6320, 0xE90000000000003ALL);
    v354 = v737;
    v355 = *v737;
    *&v779 = 677669222;
    *(&v779 + 1) = 0xE400000000000000;
    v787 = v355;
    v356 = sub_1CF9E7F98();
    MEMORY[0x1D3868CC0](v356);

    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v779, *(&v779 + 1));

    MEMORY[0x1D3868CC0](0x676E6168636E7520, 0xEB000000003A6465);
    if (v740)
    {
      v357 = 1702195828;
    }

    else
    {
      v357 = 0x65736C6166;
    }

    if (v740)
    {
      v358 = 0xE400000000000000;
    }

    else
    {
      v358 = 0xE500000000000000;
    }

    MEMORY[0x1D3868CC0](v357, v358);

    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v742 = *(&v783 + 1);
    v341 = v783;
    v331 = v758;
    (v344[1])(v354, v758);
    v340 = v343;
    v177 = v776;
    v161 = v772;
    v328 = v760;
  }

  (v746)(v342, v765, v328);
  v359 = (v766)(v342, 1, v331);
  v739 = v341;
  if (v359 == 1)
  {
    (*(v751 + 8))(v342, v328);
  }

  else
  {
    v360 = v770;
    v361 = v754;
    v362 = v731;
    (v754[4])(v731, v342, v331);
    v363 = *(v767 + 64);
    v364 = v729;
    v738 = v362 + *(v331 + 48);
    v363(v360, v767);
    v365 = v762;
    v366 = *(*(swift_getAssociatedConformanceWitness() + 40) + 8);
    v367 = sub_1CF9E6868();
    v368 = (*(v761 + 8))(v364, v365);
    if ((v367 & 1) == 0)
    {
      if (*v362)
      {
        v401 = *(*(*(v775 + 40) + 16) + 136);
        MEMORY[0x1EEE9AC00](v368);

        v402 = v771;
        sub_1CEFE1894(sub_1CF2B9F78);
        v403 = v763;
        if (v402)
        {
          v404 = v363;

          v771 = 0;
        }

        else
        {
          v771 = 0;
          *(v401 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
          v404 = v363;
          if (*(v401 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
          {
            v463 = *(v401 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, ObjectType);

            swift_unknownObjectRelease();
          }

          else
          {
          }
        }
      }

      else
      {
        v404 = v363;
        v403 = v763;
      }

      sub_1CF1A91AC(v776, &v783);
      swift_getWitnessTable();
      v499 = swift_allocError();
      v501 = v500;
      v502 = v762;
      v503 = *(swift_getTupleTypeMetadata2() + 48);
      v504 = v761;
      (*(v761 + 16))(v501, &v750[v403], v502);
      (*(v504 + 56))(v501, 0, 1, v502);
      v404(v770, v767);
      swift_storeEnumTagMultiPayload();
      v768(&v783, 0, v739, v742, v499);

      sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
      (*(v744 + 8))(v749, v743);
      (*(v772 + 8))(v778, v774);
      (v754[1])(v731, v758);
      return;
    }

    (v361[1])(v362, v331);
    v340 = v778;
    v177 = v776;
    v161 = v772;
  }

  v369 = v177[3];
  v370 = v177[4];
  v371 = __swift_project_boxed_opaque_existential_1(v177, v369);
  v372 = *(v775 + 32);
  v373 = v771;
  v374 = (*(*v372 + 296))(&v750[v763], v371, v369, *(v370 + 8));
  if (v373)
  {

    (*(v744 + 8))(v749, v743);
    (*(v161 + 8))(v340, v774);
    return;
  }

  v771 = 0;
  if (v374)
  {
    if (!sub_1CF056558())
    {
      if (v670)
      {
        *&v783 = v770;
        *(&v783 + 1) = v759;
        *&v784 = v767;
        *(&v784 + 1) = v757;
        type metadata accessor for JobResult();
        v375 = v762;
        v376 = swift_getAssociatedConformanceWitness();
        v377 = v755;
        v378 = swift_getAssociatedConformanceWitness();
        *&v783 = v375;
        *(&v783 + 1) = v377;
        *&v784 = v376;
        *(&v784 + 1) = v378;
        type metadata accessor for ReconciliationID();
        v379 = swift_getTupleTypeMetadata3();
        v380 = *(v379 + 48);
        v381 = *(v379 + 64);
        v382 = v769;
        (*(v761 + 16))(v769, &v750[v763], v375);
        swift_storeEnumTagMultiPayload();
        *(v382 + v380) = 1;
        *(v382 + v381) = 0;
        v383 = v753;
        swift_storeEnumTagMultiPayload();
        sub_1CF06EB44(v756, v382);
        (*(v752 + 8))(v382, v383);
      }

      *&v783 = v770;
      *(&v783 + 1) = v759;
      *&v784 = v767;
      *(&v784 + 1) = v757;
      type metadata accessor for JobResult();
      v384 = v762;
      v385 = swift_getAssociatedConformanceWitness();
      v386 = v755;
      v387 = swift_getAssociatedConformanceWitness();
      *&v783 = v384;
      *(&v783 + 1) = v386;
      *&v784 = v385;
      *(&v784 + 1) = v387;
      type metadata accessor for ReconciliationID();
      v388 = swift_getTupleTypeMetadata3();
      v389 = *(v388 + 48);
      v390 = *(v388 + 64);
      v391 = v769;
      (*(v761 + 16))(v769, &v750[v763], v384);
      swift_storeEnumTagMultiPayload();
      *(v391 + v389) = 0;
      *(v391 + v390) = 2;
      v392 = v753;
      swift_storeEnumTagMultiPayload();
      sub_1CF06EB44(v756, v391);
      (*(v752 + 8))(v391, v392);
      v340 = v778;
      v161 = v772;
    }

    v394 = v776[3];
    v393 = v776[4];
    v395 = __swift_project_boxed_opaque_existential_1(v776, v394);
    v396 = v750;
    v397 = v749;
    v398 = v771;
    sub_1CF611904(v749, &v750[v763], 0, 0, 0, v775, v763[15], v763[16], v763[17], v756, v395, v394, v393);
    v771 = v398;
    if (v398)
    {

      (*(v744 + 8))(v397, v743);
      v399 = *(v161 + 8);
      v400 = v340;
LABEL_143:
      v399(v400, v774);
      return;
    }

    v473 = v707;
    if ((a13 & 1) == 0)
    {
LABEL_171:
      if (v740)
      {
        v545 = v473;
        v546 = v692;
        v547 = v760;
        (v746)(v692, v765, v760);
        v548 = v758;
        if ((v766)(v546, 1, v758) != 1)
        {
          v563 = *(v546 + 1);
          v783 = *v546;
          v784 = v563;
          v564 = *(v546 + 3);
          v785 = *(v546 + 2);
          v786 = v564;
          sub_1CF1AE25C(&v783);
          v565 = *(v548 + 48);
          v566 = v767;
          v567 = v687;
          v568 = v770;
          (*(v767 + 112))(v770, v767);
          (*(v748 + 8))(&v546[v565], v568);
          (*(v705 + 32))(v693, v567, v545);
          *&v779 = v568;
          *(&v779 + 1) = v759;
          *&v780 = v566;
          *(&v780 + 1) = v757;
          v777 = type metadata accessor for JobResult();
          v569 = v762;
          v570 = swift_getAssociatedConformanceWitness();
          v571 = v755;
          v572 = swift_getAssociatedConformanceWitness();
          *&v779 = v569;
          *(&v779 + 1) = v571;
          v573 = v569;
          *&v780 = v570;
          *(&v780 + 1) = v572;
          type metadata accessor for ReconciliationID();
          *&v775 = type metadata accessor for ReconciliationSideMutation();
          v770 = swift_getTupleTypeMetadata2();
          v574 = *(v770 + 48);
          v575 = *(v761 + 16);
          v761 += 16;
          v576 = v763;
          v577 = v750;
          v578 = v769;
          v575(v769, &v750[v763], v573);
          swift_storeEnumTagMultiPayload();
          *(v578 + v574) = 8;
          swift_storeEnumTagMultiPayload();
          v579 = v753;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v756, v578);
          *&v773 = *(v752 + 8);
          (v773)(v578, v579);
          v580 = v578 + *(v770 + 48);
          v575(v578, &v577[v576], v573);
          swift_storeEnumTagMultiPayload();
          v581 = v707;
          v582 = swift_getTupleTypeMetadata3();
          v583 = *(v582 + 48);
          v584 = *(v582 + 64);
          v585 = v693;
          (*(v705 + 16))(v580, v693, v581);
          *(v580 + v583) = 1;
          *(v580 + v584) = 0;
          v586 = v744;
          v161 = v772;
          v550 = v778;
          v587 = v776;
          swift_storeEnumTagMultiPayload();
          v588 = v753;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v756, v578);
          (v773)(v578, v588);
          v589 = v768;
          (*(v705 + 8))(v585, v707);
          v590 = v774;
          v591 = v749;
LABEL_195:
          sub_1CF1A91AC(v587, &v783);
          v589(&v783, 0, v739, v742, 0);

          sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
          (*(v586 + 8))(v591, v743);
          (*(v161 + 8))(v550, v590);
          return;
        }

        (*(v751 + 8))(v546, v547);
      }

      v549 = v699;
      v550 = v340;
      v551 = v774;
      v673(v699, v340, v774);
      v552 = v777;
      if (v675(v549, 1, v777) == 1)
      {
        (*(v161 + 8))(v549, v551);
      }

      else
      {
        v553 = v764;
        v554 = v697;
        (*(v764 + 32))(v697, v549, v552);
        if (v554[*(v741 + 52)])
        {
          v555 = v762;
          (*(v761 + 16))(v691, &v396[v763], v762);
          v556 = v770;
          v557 = swift_getAssociatedConformanceWitness();
          v558 = v755;
          v559 = swift_getAssociatedConformanceWitness();
          *&v783 = v555;
          *(&v783 + 1) = v558;
          *&v784 = v557;
          *(&v784 + 1) = v559;
          type metadata accessor for ReconciliationID();
          swift_storeEnumTagMultiPayload();
          v560 = v686;
          v561 = v760;
          (v746)(v686, v765, v760);
          v562 = v758;
          if ((v766)(v560, 1, v758) == 1)
          {
            (*(v751 + 8))(v560, v561);
            v775 = xmmword_1CF9FEC40;
            v773 = 0u;
            v769 = 0u;
            v766 = 0u;
          }

          else
          {
            v608 = *v560;
            v775 = *(v560 + 1);
            v773 = v608;
            v609 = *(v560 + 2);
            v766 = *(v560 + 3);
            v769 = v609;
            (*(v748 + 8))(&v560[*(v562 + 48)], v556);
          }

          v590 = v774;
          v610 = v556;
          v589 = v768;
          v611 = v697;
          *&v783 = v610;
          *(&v783 + 1) = v759;
          *&v784 = v767;
          *(&v784 + 1) = v757;
          type metadata accessor for JobResult();
          type metadata accessor for ReconciliationSideMutation();
          v612 = swift_getTupleTypeMetadata2();
          v613 = v691;
          v614 = &v691[*(v612 + 48)];
          v615 = v775;
          *v614 = v773;
          *(v614 + 1) = v615;
          v616 = v766;
          *(v614 + 2) = v769;
          *(v614 + 3) = v616;
          *(v614 + 32) = 0;
          swift_storeEnumTagMultiPayload();
          v617 = v753;
          swift_storeEnumTagMultiPayload();
          sub_1CF06EB44(v756, v613);
          (*(v752 + 8))(v613, v617);
          (*(v764 + 8))(v611, v777);
          v161 = v772;
          v591 = v749;
          goto LABEL_193;
        }

        (*(v553 + 8))(v554, v552);
      }

      v592 = v694;
      v593 = v760;
      (v746)(v694, v765, v760);
      v594 = v758;
      v595 = (v766)(v592, 1, v758);
      v591 = v749;
      if (v595 != 1)
      {
        v587 = v776;
        v596 = *(v592 + 1);
        v783 = *v592;
        v784 = v596;
        v597 = *(v592 + 3);
        v785 = *(v592 + 2);
        v786 = v597;
        (*(v748 + 8))(&v592[*(v594 + 48)], v770);
        v598 = *(v372[2] + 136) + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_capturedContentPendingCollection;

        os_unfair_lock_lock(v598);
        v599 = *(v598 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v598 + 8) = v599;
        v590 = v774;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v599 = sub_1CF1F6AB4(0, *(v599 + 2) + 1, 1, v599);
          *(v598 + 8) = v599;
        }

        v602 = *(v599 + 2);
        v601 = *(v599 + 3);
        if (v602 >= v601 >> 1)
        {
          v599 = sub_1CF1F6AB4((v601 > 1), v602 + 1, 1, v599);
          *(v598 + 8) = v599;
        }

        v603 = v783;
        *(v599 + 2) = v602 + 1;
        *&v599[8 * v602 + 32] = v603;
        os_unfair_lock_unlock(v598);

        sub_1CF1AE25C(&v783);
        v589 = v768;
        v161 = v772;
        goto LABEL_194;
      }

      (*(v751 + 8))(v592, v593);
      v590 = v774;
      v589 = v768;
LABEL_193:
      v587 = v776;
LABEL_194:
      v586 = v744;
      goto LABEL_195;
    }

    v474 = v713;
    v475 = v695;
    v476 = v719;
    (*(v713 + 16))(v695, a14, v719);
    v477 = v473;
    v478 = v705;
    if ((*(v705 + 48))(v475, 1, v477) == 1)
    {
      (*(v474 + 8))(v475, v476);
      v473 = v707;
      goto LABEL_171;
    }

    v523 = v696;
    (*(v478 + 32))(v696, v475, v707);
    v524 = v688;
    v525 = v760;
    (v746)(v688, v765, v760);
    if ((v766)(v524, 1, v758) == 1)
    {
      v526 = *(v478 + 8);
      v473 = v707;
      v526(v523, v707);
      (*(v751 + 8))(v524, v525);
      goto LABEL_171;
    }

    v527 = v524[1];
    v783 = *v524;
    v784 = v527;
    v528 = v524[3];
    v785 = v524[2];
    v786 = v528;
    sub_1CF1AE25C(&v783);
    v529 = v707;
    v530 = *(v748 + 32);
    v531 = v681;
    v530(v681, v524 + *(v758 + 48), v770);
    v530(v689, v531, v770);
    v532 = *(v767 + 112);
    v533 = v684;
    v738 = (v767 + 112);
    v737 = v532;
    (v532)(v770);
    v534 = v683;
    v535 = *(v683 + 16);
    v536 = v682;
    v537 = v685;
    v736 = (v683 + 16);
    v735 = v535;
    (v535)(v682, v533, v685);
    v538 = (v478 + 8);
    v539 = *(v478 + 8);
    v540 = v533;
    v541 = v529;
    v754 = v538;
    v539(v540, v529);
    v542 = *(v680 + 32);
    v543 = v696;
    v544 = sub_1CF9E6868();
    (*(v534 + 8))(v536, v537);
    if (v544)
    {
      (*(v748 + 8))(v689, v770);
      v539(v543, v541);
      v340 = v778;
      v161 = v772;
      v473 = v541;
      goto LABEL_171;
    }

    v777 = v539;
    v646 = v770;
    v647 = v677;
    v648 = v760;
    (v746)(v677, v765, v760);
    v649 = v758;
    if ((v766)(v647, 1, v758) == 1)
    {
      (*(v751 + 8))(v647, v648);
    }

    else
    {
      v650 = *(v647 + 1);
      v779 = *v647;
      v780 = v650;
      v651 = *(v647 + 3);
      v781 = *(v647 + 2);
      v782 = v651;
      v652 = (*(v748 + 8))(&v647[*(v649 + 48)], v646);
      if (v779)
      {
        v653 = *(*(*(v775 + 40) + 16) + 136);
        MEMORY[0x1EEE9AC00](v652);

        v654 = v771;
        sub_1CEFE1894(sub_1CF2B9F78);
        if (v654)
        {

          sub_1CF1AE25C(&v779);
          v771 = 0;
        }

        else
        {
          v771 = 0;
          *(v653 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
          if (*(v653 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
          {
            v655 = *(v653 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
            v656 = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, v656);
            sub_1CF1AE25C(&v779);

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1CF1AE25C(&v779);
          }
        }
      }

      else
      {
        sub_1CF1AE25C(&v779);
      }
    }

    sub_1CF1A91AC(v776, &v779);
    swift_getWitnessTable();
    v776 = swift_allocError();
    v658 = v657;
    v659 = v685;
    v660 = *(swift_getTupleTypeMetadata2() + 48);
    v661 = v735;
    (v735)(v658, v696, v659);
    v662 = v684;
    v663 = v689;
    (v737)(v770, v767);
    v661(v658 + v660, v662, v659);
    v664 = v662;
    v665 = v707;
    v666 = v777;
    (v777)(v664, v707);
    swift_storeEnumTagMultiPayload();
    v667 = v776;
    v768(&v779, 0, v739, v742, v776);

    sub_1CEFCCC44(&v779, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v748 + 8))(v663, v770);
    v666(v696, v665);
    (*(v744 + 8))(v749, v743);
    (*(v772 + 8))(v778, v774);
  }

  else
  {
    v405 = v776;
    v406 = v712;
    v407 = v760;
    (v746)(v712, v765, v760);
    v408 = v758;
    if ((v766)(v406, 1, v758) == 1)
    {
      (*(v751 + 8))(v406, v407);
      v409 = v774;
      v410 = v763;
      v411 = v759;
      v412 = v742;
    }

    else
    {
      v413 = *(v406 + 1);
      v783 = *v406;
      v784 = v413;
      v414 = *(v406 + 3);
      v785 = *(v406 + 2);
      v786 = v414;
      v415 = (*(v748 + 8))(&v406[*(v408 + 48)], v770);
      v409 = v774;
      v410 = v763;
      v411 = v759;
      v412 = v742;
      if (v783)
      {
        v416 = *(*(*(v775 + 40) + 16) + 136);
        MEMORY[0x1EEE9AC00](v415);

        v417 = v771;
        sub_1CEFE1894(sub_1CF2B9F78);
        if (v417)
        {

          sub_1CF1AE25C(&v783);
          v771 = 0;
        }

        else
        {
          v771 = 0;
          *(v416 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_deleteBusy) = 0;
          if (*(v416 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource))
          {
            v510 = *(v416 + OBJC_IVAR____TtC18FileProviderDaemon13DocumentWharf_garbageCollectionSource);
            v511 = swift_getObjectType();
            swift_unknownObjectRetain();
            MEMORY[0x1D3869790](1, v511);
            sub_1CF1AE25C(&v783);

            swift_unknownObjectRelease();
          }

          else
          {
            sub_1CF1AE25C(&v783);
          }
        }
      }

      else
      {
        sub_1CF1AE25C(&v783);
      }
    }

    v604 = v770;
    *&v783 = v770;
    *(&v783 + 1) = v411;
    v605 = v767;
    v606 = v757;
    *&v784 = v767;
    *(&v784 + 1) = v757;
    type metadata accessor for JobResult();
    *&v783 = v604;
    *(&v783 + 1) = v411;
    *&v784 = v605;
    *(&v784 + 1) = v606;
    type metadata accessor for Ingestion.FetchItemMetadata();
    v607 = sub_1CF657094(&v750[v410], v410[15], v410[16], 0x2000, type metadata accessor for Ingestion.FetchItemMetadata);
    sub_1CF803A0C(v756, v607);

    sub_1CF1A91AC(v405, &v783);
    v768(&v783, 0, v739, v412, 0);

    sub_1CEFCCC44(&v783, &unk_1EC4C1B30, &qword_1CFA05300);
    (*(v744 + 8))(v749, v743);
    (*(v772 + 8))(v778, v409);
  }
}

uint64_t sub_1CF639DEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v64 = a5;
  v65 = a6;
  v63 = a4;
  v13 = *(*a3 + 104);
  v61 = *(*a3 + 88);
  v62 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v54 - v20;
  v22 = sub_1CF9E6118();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v57 = v25;
    v58 = v24;
    v59 = a7;
    v60 = a8;
    v28 = a1;
    v29 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v30 = v15[2];
    v30(v21, a2, AssociatedTypeWitness);
    v31 = a1;
    v56 = v27;
    v32 = sub_1CF9E6108();
    v33 = sub_1CF9E72A8();

    v55 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v54[1] = a3;
      v35 = v34;
      v54[0] = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66 = v36;
      *v35 = 136315394;
      v30(v18, v21, AssociatedTypeWitness);
      v37 = v15[1];
      v37(v21, AssociatedTypeWitness);
      v38 = *(swift_getAssociatedConformanceWitness() + 16);
      v39 = v32;
      v40 = sub_1CF9E7F98();
      v42 = v41;
      v37(v18, AssociatedTypeWitness);
      v43 = sub_1CEFD0DF0(v40, v42, &v66);

      *(v35 + 4) = v43;
      *(v35 + 12) = 2112;
      v44 = a1;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 14) = v45;
      v46 = v54[0];
      *v54[0] = v45;
      _os_log_impl(&dword_1CEFC7000, v39, v55, "updateEvictionReason for %s failed with %@", v35, 0x16u);
      sub_1CEFCCC44(v46, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1D386CDC0](v36, -1, -1);
      MEMORY[0x1D386CDC0](v35, -1, -1);
    }

    else
    {
      (v15[1])(v21, AssociatedTypeWitness);
    }

    (*(v57 + 8))(v56, v58);
    a7 = v59;
    a8 = v60;
  }

  v47 = swift_allocObject();
  v49 = v63;
  v48 = v64;
  *(v47 + 16) = v63;
  *(v47 + 24) = v48;
  v50 = swift_allocObject();
  v50[2] = v65;
  v50[3] = a7;
  v50[4] = v49;
  v50[5] = v48;
  v50[6] = a8;
  swift_retain_n();

  v51 = a8;
  v52 = type metadata accessor for Continuation();
  sub_1CF92E6B4("handle(reply:strictVersioning:itemUnchanged:error:lastKnownVersion:request:db:result:reason:completion:)", 104, 2u, sub_1CF045408, 0, sub_1CF559418, v47, sub_1CF659C64, v50, v52, MEMORY[0x1E69E6158]);
}

uint64_t sub_1CF63A2E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void, void, void, uint64_t), uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v30 = a4;
  v23 = a3;
  v26 = a2;
  v27 = a1;
  v6 = *(*a2 + 88);
  v7 = *(*a2 + 96);
  v8 = *(*a2 + 104);
  v31 = *(*a2 + 80);
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v9 = type metadata accessor for ReconciliationMutation();
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v32 = v6;
  v33 = v7;
  v34 = v8;
  v22 = type metadata accessor for JobResult();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v31 = AssociatedTypeWitness;
  v32 = v15;
  v33 = AssociatedConformanceWitness;
  v34 = v17;
  type metadata accessor for ReconciliationID();
  type metadata accessor for ReconciliationSideMutation();
  v18 = &v13[*(swift_getTupleTypeMetadata2() + 48)];
  v19 = v23;
  (*(*(AssociatedTypeWitness - 8) + 16))(v13, v23 + *(*v23 + 576), AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  *v18 = 1280;
  *(v18 + 8) = *(v19 + 120);
  swift_storeEnumTagMultiPayload();
  v20 = v24;
  swift_storeEnumTagMultiPayload();
  sub_1CF06EB44(v26, v13);
  (*(v25 + 8))(v13, v20);
  sub_1CF1A91AC(v27, &v31);
  v30(&v31, 0, 0, 0, v28);
  return sub_1CEFCCC44(&v31, &unk_1EC4C1B30, &qword_1CFA05300);
}

uint64_t sub_1CF63A5FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v153 = a7;
  v154 = a8;
  v148 = a5;
  v149 = a6;
  v150 = a3;
  v147 = a1;
  v12 = *v8;
  v13 = v12[75];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_1CF9E75D8();
  v143 = *(v14 - 8);
  v144 = v14;
  v15 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v142 = &v108[-v16];
  v17 = v12[76];
  v18 = v12[78];
  v19 = type metadata accessor for SnapshotItem();
  v120 = sub_1CF9E75D8();
  v119 = *(v120 - 8);
  v20 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v123 = &v108[-v21];
  v122 = v19;
  v121 = *(v19 - 8);
  v22 = *(v121 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v108[-v24];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = sub_1CF9E75D8();
  v128 = *(v129 - 8);
  v26 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v132 = &v108[-v27];
  v127 = AssociatedTypeWitness;
  v131 = *(AssociatedTypeWitness - 8);
  v28 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v108[-v30];
  v31 = v12[77];
  *&v32 = v31;
  v138 = v18;
  *(&v32 + 1) = v18;
  *&v33 = v13;
  v137 = v17;
  *(&v33 + 1) = v17;
  v155 = v33;
  v156 = v32;
  v34 = type metadata accessor for ItemReconciliation();
  v126 = sub_1CF9E75D8();
  v125 = *(v126 - 8);
  v35 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v126);
  v135 = &v108[-v36];
  v134 = v34;
  v133 = *(v34 - 8);
  v37 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v130 = &v108[-v39];
  v40 = swift_getAssociatedTypeWitness();
  v41 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v136 = v13;
  v43 = swift_getAssociatedConformanceWitness();
  *&v155 = v40;
  *(&v155 + 1) = v41;
  *&v156 = AssociatedConformanceWitness;
  *(&v156 + 1) = v43;
  v140 = type metadata accessor for FileItemVersion();
  v152 = sub_1CF9E75D8();
  v146 = *(v152 - 8);
  v44 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v145 = &v108[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v108[-v47];
  v49 = v12;
  v50 = *(v9 + 17);
  v151 = a2;
  v51 = *(a2 + 32);
  v52 = v154;
  v53 = v49[72];
  v54 = *(*v51 + 656);
  v139 = a4;
  v55 = a4;
  v56 = v153;
  v54(&v9[v53], v55, v46);
  v116 = v50;
  v117 = v48;
  v115 = v31;
  v57 = v139;
  (*(*v51 + 664))(&v155, &v9[v53], v139, v56, v52);
  v114 = v53;
  if (BYTE8(v155) == 4)
  {
    v58 = 0;
  }

  else
  {
    v58 = BYTE8(v155);
  }

  if (BYTE8(v155) == 4)
  {
    v59 = 0;
  }

  else
  {
    v59 = v155;
  }

  v113 = v51;
  v60 = sub_1CF056558();
  v61 = 0;
  v62 = v147;
  if (!v60)
  {
    v63 = v116;
    if (!v147)
    {
      goto LABEL_23;
    }

    v64 = v147;
    if ([v64 requestedExtent] == -1)
    {

      v61 = 0;
      goto LABEL_23;
    }

    v110 = v64;
    v65 = *(v151 + 16);
    v66 = v135;
    sub_1CF68DDB0(&v9[v114], v57, v153, v154, v135);
    v109 = v58;
    v67 = v133;
    v68 = v134;
    v69 = (*(v133 + 48))(v66, 1, v134);
    if (v69 == 1)
    {

      (*(v125 + 8))(v66, v126);
      v61 = 0;
    }

    else
    {
      v70 = v130;
      (*(v67 + 32))(v130, v66, v68);
      v71 = v132;
      (*(v128 + 16))(v132, &v70[*(v68 + 52)], v129);
      v72 = v71;
      v73 = v127;
      if ((*(v131 + 48))(v72, 1, v127) == 1)
      {
        (*(v67 + 8))(v70, v68);

        (*(v128 + 8))(v132, v129);
        v61 = 0;
      }

      else
      {
        v112 = v59;
        v74 = v131;
        v75 = v124;
        (*(v131 + 32))(v124, v132, v73);
        v76 = v123;
        (*(**(v151 + 40) + 240))(v75, 1, v57, v153, v154);

        v77 = v121;
        v78 = v122;
        if ((*(v121 + 48))(v76, 1, v122) == 1)
        {
          (*(v74 + 8))(v124, v73);
          (*(v133 + 8))(v130, v134);
          (*(v119 + 8))(v76, v120);
          v61 = 0;
        }

        else
        {
          v79 = v74;
          v80 = v118;
          (*(v77 + 32))(v118, v76, v78);
          v81 = &v80[*(v78 + 48)];
          LODWORD(v81) = *&v81[*(type metadata accessor for ItemMetadata() + 108)] > 0;
          (*(v77 + 8))(v80, v78);
          (*(v79 + 8))(v124, v73);
          (*(v133 + 8))(v130, v134);
          v61 = 8 * v81;
        }

        v59 = v112;
      }
    }

    LOBYTE(v58) = v109;
  }

  v63 = v116;
LABEL_23:
  v112 = v59;
  v82 = (*(v9 + 17) >> 10) & 0x40 | v61;
  if ((v63 & 0x4400000000) != 0 && v62 == 0)
  {
    v84 = v82 | 0x100;
  }

  else
  {
    v84 = v82;
  }

  v143 = v84;
  v85 = *(v113 + 16);
  LOBYTE(v155) = v58;
  v86 = v151;
  v87 = *(*v151 + 272);
  v88 = v9;
  v111 = v9;

  v144 = v87(v89);
  v90 = v145;
  v91 = v146;
  v92 = v152;
  (*(v146 + 16))(v145, v117, v152);
  v93 = v62;
  v94 = (*(v91 + 80) + 120) & ~*(v91 + 80);
  v95 = swift_allocObject();
  v96 = v137;
  *(v95 + 16) = v136;
  *(v95 + 24) = v96;
  v97 = v115;
  *(v95 + 32) = v153;
  *(v95 + 40) = v97;
  v98 = v154;
  *(v95 + 48) = v138;
  *(v95 + 56) = v98;
  *(v95 + 64) = v93;
  *(v95 + 72) = v88;
  *(v95 + 80) = (v84 & 8) != 0;
  v99 = v149;
  v100 = v150;
  *(v95 + 88) = v86;
  *(v95 + 96) = v100;
  *(v95 + 104) = v148;
  *(v95 + 112) = v99;
  (*(v91 + 32))(v95 + v94, v90, v92);
  v101 = *(*v85 + 600);
  v102 = v93;
  v103 = v111;

  v104 = &v103[v114];
  v105 = v117;
  v106 = v144;
  v101(v104, &v155, v112, v117, v144, v93, v143, sub_1CF659DB0, v95);

  return (*(v91 + 8))(v105, v152);
}

uint64_t sub_1CF63B53C(uint64_t a1, void *a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a8;
  v66 = a7;
  v67 = a5;
  v69 = a6;
  v65 = a4;
  v60 = a1;
  v61 = a2;
  v10 = *a3;
  v11 = *(*a3 + 600);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1CF9E75D8();
  v58 = *(v12 - 8);
  v13 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v55 - v17;
  v68 = a3;
  v18 = *(v10 + 616);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v70 = AssociatedTypeWitness;
  v71 = v20;
  v72 = AssociatedConformanceWitness;
  v73 = v22;
  v23 = type metadata accessor for FileItemVersion();
  v24 = sub_1CF9E75D8();
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v55 - v26;
  v28 = swift_getTupleTypeMetadata2();
  v29 = sub_1CF9E75D8();
  v62 = *(v29 - 8);
  v63 = v29;
  v30 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v55 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  v36 = sub_1CF9E8238();
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = (&v55 - v39);
  (*(v41 + 16))(&v55 - v39, v60, v36, v38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v42 = *v40;
    if (v61)
    {
      v43 = v61;
      if ([v43 requestedExtent] != -1)
      {
        [v43 setSelectedForMaterialization_];
      }
    }

    (*(*(v28 - 8) + 56))(v35, 1, 1, v28);
    (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
    v44 = v68[17];
    v45 = v42;
    sub_1CF6333DC(v35, v65 & 1, 0, v42, v27, 0, v67, v69, v44, v66, v64);

    (*(v56 + 8))(v27, v57);
    return (*(v62 + 8))(v35, v63);
  }

  else
  {
    v47 = v58;
    v48 = v55;
    (*(v58 + 32))(v55, v40, v12);
    (*(v47 + 16))(v15, v48, v12);
    v49 = TupleTypeMetadata2;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
    {
      (*(v47 + 8))(v15, v12);
      v50 = 1;
    }

    else
    {
      v51 = *(v49 + 48);
      v52 = *(v28 + 48);
      v53 = *(v15 + 1);
      *v32 = *v15;
      *(v32 + 1) = v53;
      v54 = *(v15 + 3);
      *(v32 + 2) = *(v15 + 2);
      *(v32 + 3) = v54;
      (*(*(v11 - 8) + 32))(&v32[v52], &v15[v51], v11);
      v50 = 0;
    }

    (*(*(v28 - 8) + 56))(v32, v50, 1, v28);
    sub_1CF6333DC(v32, v65 & 1, 0, 0, a9, v61, v67, v69, v68[17], v66, v64);
    (*(v62 + 8))(v32, v63);
    return (*(v47 + 8))(v48, v12);
  }
}