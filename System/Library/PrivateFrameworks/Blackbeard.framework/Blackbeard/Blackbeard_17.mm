uint64_t sub_1E6016FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_1E601704C;

  return sub_1E60177FC(a1);
}

uint64_t sub_1E601704C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_1E6017370;
  }

  else
  {
    *(v4 + 48) = a1;
    v7 = sub_1E6017178;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6017178()
{
  v16 = v0;
  v0[7] = v0[6];
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v4 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[8] = v5;
  v6 = *(v1 + 16);
  if (v6)
  {
    v7 = v0[2];
    v8 = sub_1E64F7254(v6, 0);
    v9 = *(sub_1E65D9CC8() - 8);
    v13 = sub_1E6259470(&v15, (v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v6, v7);

    result = sub_1E5E24EE4();
    if (v13 != v6)
    {
      __break(1u);
      return result;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v0[9] = v8;
  v14 = (v4 + *v4);
  v11 = v4[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1E6017568;

  return v14(20, v8);
}

uint64_t sub_1E6017370()
{
  v16 = v0;
  v1 = MEMORY[0x1E69E7CC0];
  v0[7] = sub_1E6427C0C(MEMORY[0x1E69E7CC0]);
  v3 = v0[2];
  v2 = v0[3];
  v4 = v2 + *(type metadata accessor for AppEnvironment() + 48);
  v5 = CatalogService.fetchRemoteCatalogLockups.getter();
  v0[8] = v6;
  v7 = *(v3 + 16);
  if (v7 && (v8 = v0[2], v1 = sub_1E64F7254(v7, 0), v9 = *(sub_1E65D9CC8() - 8), v13 = sub_1E6259470(&v15, (v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80))), v7, v8), , result = sub_1E5E24EE4(), v13 != v7))
  {
    __break(1u);
  }

  else
  {
    v0[9] = v1;
    v14 = (v5 + *v5);
    v11 = v5[1];
    v12 = swift_task_alloc();
    v0[10] = v12;
    *v12 = v0;
    v12[1] = sub_1E6017568;

    return v14(20, v1);
  }

  return result;
}

uint64_t sub_1E6017568(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = sub_1E6017784;
  }

  else
  {
    v8 = v4[8];
    v9 = v4[9];

    v4[12] = a1;
    v7 = sub_1E60176A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E60176A0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  v4[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v4[2].i64[0] = v3;
  v5 = sub_1E6403608(sub_1E6018A74, v4, v1);

  v6 = sub_1E600AB4C(v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1E6017784()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[11];

  return v4();
}

uint64_t sub_1E60177FC(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_1E65DAEB8();
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v6 = sub_1E65D86C8();
  v2[14] = v6;
  v7 = *(v6 - 8);
  v2[15] = v7;
  v8 = *(v7 + 64) + 15;
  v2[16] = swift_task_alloc();
  v9 = sub_1E65D9CC8();
  v2[17] = v9;
  v10 = *(v9 - 8);
  v2[18] = v10;
  v11 = *(v10 + 64) + 15;
  v2[19] = swift_task_alloc();
  v12 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1E60179AC, 0, 0);
}

uint64_t sub_1E60179AC()
{
  v63 = v0;
  v62 = *MEMORY[0x1E69E9840];
  v1 = v0[8];
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = 1;
  v5 = ((1 << v2) + 63) >> 6;
  v6 = 8 * v5;

  v8 = v1;
  if (v3 <= 0xD)
  {
LABEL_2:
    v49[1] = v49;
    v50 = v5;
    v59 = v0;
    v0 = v0[18];
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v51 = v49 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v51, v6);
    v52 = 0;
    v9 = 0;
    v57 = v0;
    v58 = v8;
    v5 = v8 + 56;
    v10 = v4 << *(v1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 56);
    v13 = (v10 + 63) >> 6;
    v55 = v0 + 1;
    v56 = v0 + 2;
    v54 = xmmword_1E65ECC30;
    v14 = v0;
    while (1)
    {
      if (!v12)
      {
        v16 = v9;
        while (1)
        {
          v9 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v9 >= v13)
          {
            goto LABEL_16;
          }

          v17 = *(v5 + 8 * v9);
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v61 = (v17 - 1) & v17;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_21;
      }

      v15 = __clz(__rbit64(v12));
      v61 = (v12 - 1) & v12;
LABEL_12:
      v18 = v15 | (v9 << 6);
      v0 = v59;
      v1 = v59[19];
      v60 = v59[17];
      v19 = *(v58 + 48);
      v20 = v14[9];
      v53 = v18;
      (v14[2])(v1, v19 + v20 * v18);
      v21 = sub_1E65D9CA8();
      v23 = v22;
      v0[2] = v21;
      v0[3] = v22;
      v6 = v24 & 1;
      *(v0 + 32) = v24 & 1;
      *(v0 + 5) = v54;
      *(v0 + 56) = 1;
      sub_1E6018A94();
      sub_1E6018AE8();
      v4 = sub_1E65D7FD8();
      sub_1E5FEE4CC(v21, v23, v6);
      (v14[1])(v1, v60);
      v12 = v61;
      if (v4)
      {
        *&v51[(v53 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v53;
        if (__OFADD__(v52++, 1))
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_16:
    v0 = v59;
    v26 = sub_1E60881E4(v51, v50, v52, v59[8]);
    if (!*(v26 + 16))
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

LABEL_21:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  v8 = v0[8];
  if (isStackAllocationSafe)
  {
    goto LABEL_2;
  }

  v40 = swift_slowAlloc();
  v41 = sub_1E60189E4(v40, v5, v8, sub_1E6018930, 0);
  MEMORY[0x1E694F1C0](v40, -1, -1);
  v26 = v41;
  if (v41[2])
  {
LABEL_17:
    v27 = v0[16];
    v28 = v0[9];
    v29 = v26;
    v30 = v28 + *(type metadata accessor for AppEnvironment() + 44);
    v31 = BookmarkService.filterPlaylists.getter();
    v0[20] = v32;
    v33 = sub_1E6016CA4(v29);

    sub_1E600AAA0(v33);

    sub_1E65D86B8();
    v61 = v31 + *v31;
    v34 = v31[1];
    v35 = swift_task_alloc();
    v0[21] = v35;
    *v35 = v0;
    v35[1] = sub_1E6017EEC;
    v36 = v0[16];
    v37 = *MEMORY[0x1E69E9840];
    v38 = v61;

    return v38(v36);
  }

LABEL_23:

  v42 = sub_1E6427C0C(MEMORY[0x1E69E7CC0]);
  v43 = v0[19];
  v44 = v0[16];
  v46 = v0[12];
  v45 = v0[13];

  v47 = v0[1];
  v48 = *MEMORY[0x1E69E9840];

  return v47(v42);
}

uint64_t sub_1E6017EEC(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = a1;
  v4[23] = v1;

  v7 = v3[20];
  (*(v3[15] + 8))(v3[16], v3[14]);

  if (v1)
  {
    v8 = sub_1E6018480;
  }

  else
  {
    v8 = sub_1E60180AC;
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E60180AC()
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = v0[22];
  v4 = *(v1 + 56);
  v3 = v1 + 56;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(v0[22] + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = 63 - v6;
  v9 = v0[11];
  v10 = v8 >> 6;
  v51 = (v9 + 8);
  v52 = v9;
  v53 = v0[22];
  v47 = (v9 + 40);
  v48 = (v9 + 32);

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC8];
  v49 = v10;
  v50 = v3;
  v55 = v0;
  while (v7)
  {
    v14 = v11;
LABEL_11:
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[10];
    v54 = *(v52 + 72);
    v18 = *(v52 + 16);
    v18(v15, *(v53 + 48) + v54 * (__clz(__rbit64(v7)) | (v14 << 6)), v17);
    v19 = sub_1E65DAE48();
    v21 = v20;
    v18(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v12;
    v23 = sub_1E6215038(v19, v21);
    v25 = v12[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_27;
    }

    v29 = v24;
    if (v12[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = v23;
        sub_1E6424318();
        v23 = v37;
      }
    }

    else
    {
      sub_1E641B0E4(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1E6215038(v19, v21);
      if ((v29 & 1) != (v30 & 1))
      {
        v46 = *MEMORY[0x1E69E9840];

        return sub_1E65E6C68();
      }
    }

    v7 &= v7 - 1;
    v32 = v55[12];
    v31 = v55[13];
    v33 = v55[10];
    if (v29)
    {
      v13 = v23;

      v12 = v56;
      (*v47)(v56[7] + v13 * v54, v32, v33);
      (*v51)(v31, v33);
    }

    else
    {
      v12 = v56;
      v56[(v23 >> 6) + 8] |= 1 << v23;
      v34 = (v56[6] + 16 * v23);
      *v34 = v19;
      v34[1] = v21;
      (*v48)(v56[7] + v23 * v54, v32, v33);
      (*v51)(v31, v33);
      v35 = v56[2];
      v27 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      v56[2] = v36;
    }

    v11 = v14;
    v0 = v55;
    v10 = v49;
    v3 = v50;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    if (v14 >= v10)
    {
      break;
    }

    v7 = *(v3 + 8 * v14);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v38 = v0[22];

  v39 = v0[19];
  v40 = v0[16];
  v42 = v0[12];
  v41 = v0[13];

  v43 = v0[1];
  v44 = *MEMORY[0x1E69E9840];

  return v43(v12);
}

uint64_t sub_1E6018480()
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = v0[19];
  v2 = v0[16];
  v4 = v0[12];
  v3 = v0[13];

  v5 = v0[1];
  v6 = v0[23];
  v7 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_1E6018538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a4;
  v40 = a3;
  v41 = a1;
  v39 = a5;
  v42 = sub_1E65D7848();
  v38 = *(v42 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v37 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v34 - v19;
  v21 = sub_1E65D9AC8();
  v35 = *(v21 - 8);
  v22 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v36 = a2;
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEE88(v20);
  sub_1E5DFE50C(v11, &qword_1ED072E78, &qword_1E65ECC50);
  v25 = v16;
  v26 = v21;
  v27 = v35;
  (*(v13 + 8))(v25, v12);
  v28 = *(v27 + 48);
  if (v28(v20, 1, v26) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v28(v20, 1, v26) != 1)
    {
      sub_1E5DFE50C(v20, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v27 + 32))(v24, v20, v26);
  }

  swift_getKeyPath();
  v29 = v37;
  sub_1E65E4EC8();

  v30 = v40;
  v31 = *(v40 + 8);
  v32 = type metadata accessor for AppEnvironment();
  sub_1E6014C00(v29, v31, v24, v43, (v30 + *(v32 + 136)), v39);
  (*(v38 + 8))(v29, v42);
  return (*(v27 + 8))(v24, v26);
}

uint64_t sub_1E6018930()
{
  v0 = sub_1E65D9CA8();
  v2 = v1;
  v4 = v3 & 1;
  sub_1E6018A94();
  sub_1E6018AE8();
  v5 = sub_1E65D7FD8();
  sub_1E5FEE4CC(v0, v2, v4);
  return v5 & 1;
}

void *sub_1E60189E4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
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
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_1E60654D8(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t sub_1E6018A94()
{
  result = qword_1EE2D7088;
  if (!qword_1EE2D7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7088);
  }

  return result;
}

unint64_t sub_1E6018AE8()
{
  result = qword_1EE2D7080;
  if (!qword_1EE2D7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7080);
  }

  return result;
}

uint64_t sub_1E6018B3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1E6018E84;
  *(v1 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E88, &qword_1E65ECCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = v0;
  *(inited + 72) = 0;
  *(inited + 80) = sub_1E60190A0;
  *(inited + 88) = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1E60190BC;
  *(v4 + 24) = 0;
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1E65EA670;
  *(v5 + 32) = v3;
  *(v5 + 72) = 0;
  *(v5 + 80) = sub_1E60193EC;
  *(v5 + 88) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E90, &qword_1E65ECCE8);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_1E65EB9E0;
  *(v6 + 32) = inited;
  *(v6 + 40) = v5;
  v7 = sub_1E608E898(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E98, &qword_1E65ECCF0);
  swift_arrayDestroy();
  v8 = sub_1E608E9CC(v7);

  return v8;
}

uint64_t sub_1E6018D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AppEnvironment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072EA8, &qword_1E65ECD08);
  sub_1E60190C0(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1E6019124(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v12 = sub_1E65E0818();
  a3[3] = v9;
  result = sub_1E6019398(&qword_1EE2D6570, &qword_1ED072EA8, &qword_1E65ECD08);
  a3[4] = result;
  *a3 = v12;
  return result;
}

uint64_t sub_1E6018E88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for AppEnvironment();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072EA0, &qword_1E65ECCF8);
  sub_1E60190C0(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1E6019124(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v12 = sub_1E65E0818();
  a3[3] = v9;
  result = sub_1E6019398(&qword_1EE2D6568, &qword_1ED072EA0, &qword_1E65ECCF8);
  a3[4] = result;
  *a3 = v12;
  return result;
}

uint64_t sub_1E6018FFC@<X0>(void (*a1)(uint64_t *__return_ptr)@<X2>, uint64_t a2@<X8>)
{
  a1(v8);
  v7 = v9;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v8, v9);
  *(a2 + 24) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E60190C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnvironment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6019124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEnvironment();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6019188(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FEE4D4;

  return sub_1E60848C0(a1, v1 + v5, v6);
}

uint64_t sub_1E6019290(uint64_t a1)
{
  v4 = *(type metadata accessor for AppEnvironment() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5FE99E8;

  return sub_1E6016FAC(a1, v1 + v5, v6);
}

uint64_t sub_1E6019398(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1E6019530()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E601957C(uint64_t a1)
{
  v49 = sub_1E65DA078();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65E1D38();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601BCD4(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65DA058();
      sub_1E65DA068();
      v24 = v44;
      sub_1E65E1D08();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601BCD4(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E601995C(uint64_t a1)
{
  v49 = sub_1E65E1D38();
  v3 = *(v49 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65DA078();
  v6 = *(v47 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v44 = v9;
    v36[1] = v1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1E601BD18(0, v10, 0);
    v52 = v53;
    v12 = a1 + 56;
    v13 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v14 = v3;
    v15 = result;
    v16 = 0;
    v45 = v6;
    v46 = v14;
    v42 = v14 + 8;
    v43 = v14 + 16;
    v40 = a1;
    v41 = v6 + 32;
    v37 = a1 + 64;
    v38 = v10;
    v39 = a1 + 56;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
    {
      v18 = v15 >> 6;
      if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_22;
      }

      v19 = *(a1 + 36);
      v50 = v16;
      v51 = v19;
      v20 = v46;
      v21 = *(a1 + 48) + *(v46 + 72) * v15;
      v22 = v48;
      v23 = v49;
      (*(v46 + 16))(v48, v21, v49);
      sub_1E65E1D18();
      sub_1E65E1D28();
      v24 = v44;
      sub_1E65DA048();
      (*(v20 + 8))(v22, v23);
      v25 = v52;
      v53 = v52;
      v27 = *(v52 + 16);
      v26 = *(v52 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1E601BD18(v26 > 1, v27 + 1, 1);
        v25 = v53;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v52 = v25;
      result = (*(v45 + 32))(v25 + v28 + *(v45 + 72) * v27, v24, v47);
      a1 = v40;
      v17 = 1 << *(v40 + 32);
      if (v15 >= v17)
      {
        goto LABEL_23;
      }

      v12 = v39;
      v29 = *(v39 + 8 * v18);
      if ((v29 & (1 << v15)) == 0)
      {
        goto LABEL_24;
      }

      if (v51 != *(v40 + 36))
      {
        goto LABEL_25;
      }

      v30 = v29 & (-2 << (v15 & 0x3F));
      if (v30)
      {
        v17 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v31 = v18 << 6;
        v32 = v18 + 1;
        v33 = (v37 + 8 * v18);
        while (v32 < (v17 + 63) >> 6)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            result = sub_1E5F87098(v15, v51, 0);
            v17 = __clz(__rbit64(v34)) + v31;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v15, v51, 0);
      }

LABEL_4:
      v16 = v50 + 1;
      v15 = v17;
      if (v50 + 1 == v38)
      {
        return v52;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6019D3C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F20, &qword_1E65ECD38);
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v33 = &v28 - v5;
  v6 = type metadata accessor for AppComposer();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = sub_1E65E1DC8();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v30 = sub_1E65E1E08();
  v32 = *(v30 - 8);
  v15 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *v2;
  sub_1E5E1DEAC(v2, v12);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = (v18 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  sub_1E5E1FA80(v12, v20 + v18);
  v21 = (v20 + v19);
  v22 = v29;
  *v21 = v28;
  v21[1] = v22;
  sub_1E5E1DEAC(v2, v10);
  v23 = swift_allocObject();
  sub_1E5E1FA80(v10, v23 + v18);

  sub_1E65E1DB8();
  sub_1E65E1DF8();
  type metadata accessor for AppFeature();
  sub_1E601B218(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E601B218(qword_1EE2D63C8, MEMORY[0x1E699F028]);
  v24 = v33;
  v25 = v30;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v26 = sub_1E65E4F08();
  (*(v34 + 8))(v24, v35);
  (*(v32 + 8))(v17, v25);
  return v26;
}

uint64_t sub_1E601A158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_1E65DB718();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for RouteDestination();
  v4[27] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E601A24C, 0, 0);
}

uint64_t sub_1E601A24C()
{
  v1 = **(v0 + 168);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v2 = *(v0 + 104);
  *(v0 + 232) = v2;
  if (v2 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6328();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "[SiriSessionComposer] Failed to get the currently selected root item", v6, 2u);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    v7 = *(v0 + 224);
    v8 = *(v0 + 208);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = *(v0 + 96);
    *(v0 + 240) = v11;
    *(v0 + 112) = v11;
    *(v0 + 120) = v2;
    sub_1E65E6058();
    *(v0 + 248) = sub_1E65E6048();
    v13 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E601A42C, v13, v12);
  }
}

uint64_t sub_1E601A42C()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  v5 = v0[22];
  v4 = v0[23];

  v5(v0 + 14);
  sub_1E5E07DA0(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E601A4C0, 0, 0);
}

uint64_t sub_1E601A4C0()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 224);
    v3 = *(v0 + 200);
    v2 = *(v0 + 208);
    v20 = *(v0 + 192);
    v21 = *(v0 + 216);
    v4 = *(v0 + 160);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v22 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    sub_1E65E1D88();
    v6 = sub_1E65E1D68();
    v7 = sub_1E601995C(v6);

    sub_1E600A28C(v7);

    sub_1E65E1D98();
    sub_1E65DB6D8();
    (*(v3 + 16))(v1, v2, v20);
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    v8 = *(v21 + 20);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    (*(v3 + 8))(v2, v20);
    *(v1 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 128);
    v9 = *(v0 + 136);
    *(v0 + 144) = *(v0 + 128);
    *(v0 + 152) = v9;
    sub_1E600F5B0((v0 + 137));
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1E601A7F4;
    v11 = *(v0 + 224);

    return RoutingContext.presentDestination(_:style:priority:)(v11, (v0 + 144), (v0 + 137), v5, v22);
  }

  else
  {
    sub_1E601B260(v0 + 56);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v13 = sub_1E65E3B68();
    __swift_project_value_buffer(v13, qword_1EE2EA2A0);
    v14 = sub_1E65E3B48();
    v15 = sub_1E65E6328();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1E5DE9000, v14, v15, "[SiriSessionComposer] Failed to get routing context", v16, 2u);
      MEMORY[0x1E694F1C0](v16, -1, -1);
    }

    v17 = *(v0 + 224);
    v18 = *(v0 + 208);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1E601A7F4()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v8 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = *(v2 + 224);
    sub_1E5F94E00(*(v2 + 144), *(v2 + 152));
    sub_1E60111F8(v4);
    v5 = sub_1E601A9B0;
  }

  else
  {
    v6 = *(v2 + 224);
    sub_1E5F94E00(*(v2 + 144), *(v2 + 152));
    sub_1E60111F8(v6);
    v5 = sub_1E601A938;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E601A938()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[28];
  v2 = v0[26];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E601A9B0()
{
  v1 = v0[28];
  v2 = v0[26];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];
  v4 = v0[33];

  return v3();
}

uint64_t sub_1E601AA2C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E601A158(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E601AB44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F28, &qword_1E65ECD60);
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E601ABE4, 0, 0);
}

uint64_t sub_1E601ABE4()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 120);
  v4 = SiriService.makeSiriBeginSessionRequestedStream.getter();
  v0[6] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E601AD00;
  v8 = v0[5];

  return v10(v8);
}

uint64_t sub_1E601AD00()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1E5FE45F0;
  }

  else
  {
    v4 = sub_1E601AE30;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E601AE30()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[2];
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072F30, &qword_1E65ECD70);
  v3[4] = sub_1E5FED46C(&qword_1EE2D44A8, &qword_1ED072F30, &qword_1E65ECD70);
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_1E65E1DA8();
  sub_1E5FED46C(&qword_1EE2D4790, &qword_1ED072F28, &qword_1E65ECD60);
  sub_1E65E69C8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E601AF70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E601AB44(a1, v1 + v5);
}

uint64_t sub_1E601B04C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E601B06C, 0, 0);
}

uint64_t sub_1E601B06C()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_1E65DB6E8();
  v3 = sub_1E65DB6C8();
  v4 = sub_1E601957C(v3);

  sub_1E600A0F0(v4);

  sub_1E65DB6F8();
  sub_1E65E1D78();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E601B138(uint64_t a1)
{
  v2 = sub_1E65E1D58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E1DD8();
  v7 = type metadata accessor for AppState();
  return (*(v3 + 40))(a1 + *(v7 + 288), v6, v2);
}

uint64_t sub_1E601B218(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E601B260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED074320, &unk_1E65EA730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E601B2C8(uint64_t a1)
{
  v3 = sub_1E65E0B48();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D9758();
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v31[1] = v1;
  v40 = MEMORY[0x1E69E7CC0];
  sub_1E601BDE0(0, v10, 0);
  v11 = v40;
  v12 = a1 + 56;
  v13 = -1 << *(a1 + 32);
  result = sub_1E65E6748();
  v15 = result;
  v16 = 0;
  v32 = a1 + 64;
  v33 = v10;
  v34 = a1 + 56;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    v19 = v15 >> 6;
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 36);
    v38 = v16;
    v39 = v20;
    v21 = v36;
    sub_1E5FC55E8(*(a1 + 48) + *(v37 + 72) * v15, v36);
    sub_1E5FC52C8(v9);
    sub_1E601B6C4(v21);
    v40 = v11;
    v23 = *(v11 + 16);
    v22 = *(v11 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1E601BDE0(v22 > 1, v23 + 1, 1);
      v11 = v40;
    }

    *(v11 + 16) = v23 + 1;
    result = sub_1E601B720(v9, v11 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v23);
    v17 = 1 << *(a1 + 32);
    if (v15 >= v17)
    {
      goto LABEL_22;
    }

    v12 = v34;
    v24 = *(v34 + 8 * v19);
    if ((v24 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v39 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v15 & 0x3F));
    if (v25)
    {
      v17 = __clz(__rbit64(v25)) | v15 & 0x7FFFFFFFFFFFFFC0;
      v18 = v33;
    }

    else
    {
      v26 = v19 << 6;
      v27 = v19 + 1;
      v18 = v33;
      v28 = (v32 + 8 * v19);
      while (v27 < (v17 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1E5F87098(v15, v39, 0);
          v17 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1E5F87098(v15, v39, 0);
    }

LABEL_4:
    v16 = v38 + 1;
    v15 = v17;
    if (v38 + 1 == v18)
    {
      return v11;
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

uint64_t sub_1E601B608()
{
  v0 = sub_1E65E0EB8();
  v1 = sub_1E601B2C8(v0);

  sub_1E600A6B8(v1);

  v2 = sub_1E65E0EC8();
  v3 = sub_1E601B2C8(v2);

  sub_1E600A6B8(v3);

  sub_1E65E0ED8();

  return sub_1E65D8038();
}

uint64_t sub_1E601B6C4(uint64_t a1)
{
  v2 = sub_1E65E0B48();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E601B720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D9758();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ImpressionsTracker.consumeImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69AB238];

  return sub_1E601B86C(a1, a2, a3, v4, "Error serializing impressions: %{public}s");
}

uint64_t ImpressionsTracker.snapshotOnScreenImpressions(on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69AB230];

  return sub_1E601B86C(a1, a2, a3, v4, "Error serializing impression snapshot: %{public}s");
}

uint64_t sub_1E601B86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t), const char *a5)
{
  v45 = a5;
  v53[4] = *MEMORY[0x1E69E9840];
  v9 = sub_1E65E3B68();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E5158();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x1E69AB3E0], v12);
  v17 = a4(v16, a1, a2, a3);
  (*(v13 + 8))(v16, v12);
  v18 = *(v17 + 16);
  if (v18)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1E601C1D4(0, v18, 0);
    v19 = v52;
    v20 = objc_opt_self();
    v21 = 0;
    v22 = v17 + 32;
    while (1)
    {
      if (v21 >= *(v17 + 16))
      {
        __break(1u);
      }

      sub_1E5DFA11C(v22, v53);
      __swift_project_boxed_opaque_existential_1(v53, v53[3]);
      v23 = sub_1E65E6BF8();
      v51 = 0;
      v24 = [v20 dataWithJSONObject:v23 options:0 error:&v51];
      swift_unknownObjectRelease();
      v25 = v51;
      if (!v24)
      {
        break;
      }

      v26 = sub_1E65D7518();
      v28 = v27;

      __swift_destroy_boxed_opaque_existential_1(v53);
      v52 = v19;
      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1E601C1D4((v29 > 1), v30 + 1, 1);
        v19 = v52;
      }

      ++v21;
      *(v19 + 16) = v30 + 1;
      v31 = v19 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v22 += 32;
      if (v18 == v21)
      {

        goto LABEL_14;
      }
    }

    v32 = v25;

    v33 = sub_1E65D73B8();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v53);

    v34 = v46;
    sub_1E65DE358();
    v35 = v33;
    v36 = sub_1E65E3B48();
    v37 = sub_1E65E6328();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v53[0] = v39;
      *v38 = 136446210;
      swift_getErrorValue();
      v40 = MEMORY[0x1E694E6D0](v49, v50);
      v42 = sub_1E5DFD4B0(v40, v41, v53);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_1E5DE9000, v36, v37, v45, v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1E694F1C0](v39, -1, -1);
      MEMORY[0x1E694F1C0](v38, -1, -1);
    }

    (*(v47 + 8))(v34, v48);
  }

  else
  {
  }

  v19 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v43 = *MEMORY[0x1E69E9840];
  return v19;
}

size_t sub_1E601BCD4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731A8, &qword_1E65ED000, MEMORY[0x1E699EFD8]);
  *v3 = result;
  return result;
}

size_t sub_1E601BD18(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731B0, &qword_1E65ED008, MEMORY[0x1E69CCB30]);
  *v3 = result;
  return result;
}

void *sub_1E601BD5C(void *a1, int64_t a2, char a3)
{
  result = sub_1E601D9BC(a1, a2, a3, *v3, &qword_1ED0730E0, &qword_1E65ECF38, &qword_1ED072938, &qword_1E65EC098);
  *v3 = result;
  return result;
}

size_t sub_1E601BD9C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073190, &qword_1E65ECFE8, MEMORY[0x1E69CCC28]);
  *v3 = result;
  return result;
}

size_t sub_1E601BDE0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730B8, &qword_1E65ECF10, MEMORY[0x1E69CC2A8]);
  *v3 = result;
  return result;
}

size_t sub_1E601BE24(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073010, &qword_1E65ECE68, &qword_1ED0720A8, &qword_1E65EA790);
  *v3 = result;
  return result;
}

size_t sub_1E601BE64(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072FF0, &qword_1E65ECE48, &qword_1ED072FF8, &qword_1E65ECE50);
  *v3 = result;
  return result;
}

size_t sub_1E601BEA4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0730C0, &qword_1E65ECF18, &qword_1ED0730C8, &qword_1E65ECF20);
  *v3 = result;
  return result;
}

char *sub_1E601BEE4(char *a1, int64_t a2, char a3)
{
  result = sub_1E601D210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E601BF04(char *a1, int64_t a2, char a3)
{
  result = sub_1E601D31C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E601BF24(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072F68, &qword_1E65ECDC8, &qword_1ED072088, &qword_1E65EA770);
  *v3 = result;
  return result;
}

size_t sub_1E601BF64(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073208, &qword_1E65ED060, MEMORY[0x1E699E1B8]);
  *v3 = result;
  return result;
}

size_t sub_1E601BFA8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072FC0, &qword_1E65ECE18, type metadata accessor for ItemContext);
  *v3 = result;
  return result;
}

size_t sub_1E601BFEC(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0732B0, &qword_1E65ED108, MEMORY[0x1E699E1A0]);
  *v3 = result;
  return result;
}

size_t sub_1E601C030(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0732A8, &qword_1E65ED100, MEMORY[0x1E699D350]);
  *v3 = result;
  return result;
}

size_t sub_1E601C074(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0732A0, &qword_1E65ED0F8, MEMORY[0x1E699D300]);
  *v3 = result;
  return result;
}

char *sub_1E601C0B8(char *a1, int64_t a2, char a3)
{
  result = sub_1E601D420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E601C0D8(void *a1, int64_t a2, char a3)
{
  result = sub_1E601D52C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E601C0F8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073270, &qword_1E65ED0C8, &qword_1ED073278, &qword_1E65ED0D0);
  *v3 = result;
  return result;
}

size_t sub_1E601C138(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073268, &qword_1E65ED0C0, MEMORY[0x1E699F1B0]);
  *v3 = result;
  return result;
}

char *sub_1E601C17C(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED0731D8, &qword_1E65ED030);
  *v3 = result;
  return result;
}

void *sub_1E601C1B4(void *a1, int64_t a2, char a3)
{
  result = sub_1E601D660(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E601C1D4(char *a1, int64_t a2, char a3)
{
  result = sub_1E601D7A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E601C1F4(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED072FE8, &qword_1E65ECE40);
  *v3 = result;
  return result;
}

size_t sub_1E601C224(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073210, &qword_1E65ED068, &qword_1ED073218, &qword_1E65ED070);
  *v3 = result;
  return result;
}

size_t sub_1E601C264(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0731B8, &qword_1E65ED010, &qword_1ED0731C0, &qword_1E65ED018);
  *v3 = result;
  return result;
}

void *sub_1E601C2A4(void *a1, int64_t a2, char a3)
{
  result = sub_1E601D9BC(a1, a2, a3, *v3, &qword_1ED072F38, &qword_1E65ECDA0, &qword_1ED072080, &qword_1E65EA768);
  *v3 = result;
  return result;
}

size_t sub_1E601C2E4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073148, &qword_1E65ECFA0, MEMORY[0x1E699F598]);
  *v3 = result;
  return result;
}

size_t sub_1E601C328(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073158, &qword_1E65ECFB0, MEMORY[0x1E699F3D8]);
  *v3 = result;
  return result;
}

size_t sub_1E601C36C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073160, &qword_1E65ECFB8, MEMORY[0x1E699F3C0]);
  *v3 = result;
  return result;
}

size_t sub_1E601C3B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073168, &qword_1E65ECFC0, MEMORY[0x1E699F520]);
  *v3 = result;
  return result;
}

size_t sub_1E601C3F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073170, &qword_1E65ECFC8, MEMORY[0x1E699F608]);
  *v3 = result;
  return result;
}

size_t sub_1E601C438(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073178, &qword_1E65ECFD0, MEMORY[0x1E699F5B0]);
  *v3 = result;
  return result;
}

size_t sub_1E601C47C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073180, &qword_1E65ECFD8, MEMORY[0x1E699F5F0]);
  *v3 = result;
  return result;
}

size_t sub_1E601C4C0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073150, &qword_1E65ECFA8, MEMORY[0x1E699F550]);
  *v3 = result;
  return result;
}

size_t sub_1E601C504(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073140, &qword_1E65ECF98, MEMORY[0x1E699F580]);
  *v3 = result;
  return result;
}

char *sub_1E601C548(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED073220, &qword_1E65ED078);
  *v3 = result;
  return result;
}

size_t sub_1E601C578(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073248, &qword_1E65ED0A0, MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

size_t sub_1E601C5BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073238, &qword_1E65ED090, MEMORY[0x1E699E5F0]);
  *v3 = result;
  return result;
}

char *sub_1E601C600(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED072F40, &qword_1E65ECDA8);
  *v3 = result;
  return result;
}

char *sub_1E601C638(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED073230, &qword_1E65ED088);
  *v3 = result;
  return result;
}

size_t sub_1E601C670(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED073018, &qword_1E65ECE70, &qword_1ED0720A0, &qword_1E65EA788);
  *v3 = result;
  return result;
}

void *sub_1E601C6B0(void *a1, int64_t a2, char a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED0730D0, &qword_1E65ECF28, &qword_1ED0730D8, &qword_1E65ECF30);
  *v3 = result;
  return result;
}

size_t sub_1E601C6F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073120, &qword_1E65ECF78, MEMORY[0x1E699EB30]);
  *v3 = result;
  return result;
}

size_t sub_1E601C734(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073128, &qword_1E65ECF80, MEMORY[0x1E699EAE0]);
  *v3 = result;
  return result;
}

size_t sub_1E601C778(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073130, &qword_1E65ECF88, MEMORY[0x1E699EAE8]);
  *v3 = result;
  return result;
}

char *sub_1E601C7BC(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED072FE0, &qword_1E65ECE38);
  *v3 = result;
  return result;
}

size_t sub_1E601C7EC(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072FD0, &qword_1E65ECE28, &qword_1ED072FD8, &qword_1E65ECE30);
  *v3 = result;
  return result;
}

void *sub_1E601C82C(void *a1, int64_t a2, char a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED073020, &qword_1E65ECE78, &qword_1ED073028, &qword_1E65ECE80);
  *v3 = result;
  return result;
}

size_t sub_1E601C86C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F70, &qword_1E65ECDD0, MEMORY[0x1E69CD090]);
  *v3 = result;
  return result;
}

size_t sub_1E601C8B0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072F78, &qword_1E65ECDD8, &qword_1ED072F80, &qword_1E65ECDE0);
  *v3 = result;
  return result;
}

size_t sub_1E601C8F0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073188, &qword_1E65ECFE0, MEMORY[0x1E69CCF28]);
  *v3 = result;
  return result;
}

size_t sub_1E601C934(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073040, &qword_1E65ECE98, MEMORY[0x1E699DD40]);
  *v3 = result;
  return result;
}

void *sub_1E601C978(void *a1, int64_t a2, char a3)
{
  result = sub_1E601DD34(a1, a2, a3, *v3, &qword_1ED073030, &qword_1E65ECE88, &qword_1ED073038, &qword_1E65ECE90);
  *v3 = result;
  return result;
}

size_t sub_1E601C9B8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073118, &qword_1E65ECF70, MEMORY[0x1E69CBBF0]);
  *v3 = result;
  return result;
}

char *sub_1E601C9FC(char *a1, int64_t a2, char a3)
{
  result = sub_1E601D8B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E601CA1C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0731F8, &qword_1E65ED050, &qword_1ED073200, &qword_1E65ED058);
  *v3 = result;
  return result;
}

size_t sub_1E601CA5C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073288, &qword_1E65ED0E0, MEMORY[0x1E699F458]);
  *v3 = result;
  return result;
}

char *sub_1E601CAA0(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED073280, &qword_1E65ED0D8);
  *v3 = result;
  return result;
}

size_t sub_1E601CAD8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F90, &qword_1E65ECDF0, MEMORY[0x1E69CC9E0]);
  *v3 = result;
  return result;
}

char *sub_1E601CB1C(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DBA0(a1, a2, a3, *v3, &qword_1ED072F88, &qword_1E65ECDE8);
  *v3 = result;
  return result;
}

size_t sub_1E601CB54(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072FC8, &qword_1E65ECE20, MEMORY[0x1E699D568]);
  *v3 = result;
  return result;
}

size_t sub_1E601CB98(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED072FB8, &qword_1E65ECE10, &qword_1ED072090, &qword_1E65EA778);
  *v3 = result;
  return result;
}

size_t sub_1E601CBD8(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0731E8, &qword_1E65ED040, &qword_1ED0731F0, &qword_1E65ED048);
  *v3 = result;
  return result;
}

size_t sub_1E601CC18(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073060, &qword_1E65ECEB8, MEMORY[0x1E699DF68]);
  *v3 = result;
  return result;
}

size_t sub_1E601CC5C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073068, &qword_1E65ECEC0, MEMORY[0x1E699DDD0]);
  *v3 = result;
  return result;
}

size_t sub_1E601CCA0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073070, &qword_1E65ECEC8, MEMORY[0x1E699DD90]);
  *v3 = result;
  return result;
}

size_t sub_1E601CCE4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073078, &qword_1E65ECED0, MEMORY[0x1E699DFF0]);
  *v3 = result;
  return result;
}

size_t sub_1E601CD28(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073080, &qword_1E65ECED8, MEMORY[0x1E699DEE8]);
  *v3 = result;
  return result;
}

size_t sub_1E601CD6C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073088, &qword_1E65ECEE0, MEMORY[0x1E699E070]);
  *v3 = result;
  return result;
}

size_t sub_1E601CDB0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073090, &qword_1E65ECEE8, MEMORY[0x1E699DFB0]);
  *v3 = result;
  return result;
}

size_t sub_1E601CDF4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730A0, &qword_1E65ECEF8, MEMORY[0x1E699DE78]);
  *v3 = result;
  return result;
}

size_t sub_1E601CE38(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730A8, &qword_1E65ECF00, MEMORY[0x1E699E030]);
  *v3 = result;
  return result;
}

size_t sub_1E601CE7C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073098, &qword_1E65ECEF0, MEMORY[0x1E699DF10]);
  *v3 = result;
  return result;
}

size_t sub_1E601CEC0(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073058, &qword_1E65ECEB0, MEMORY[0x1E699DF40]);
  *v3 = result;
  return result;
}

size_t sub_1E601CF04(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730B0, &qword_1E65ECF08, MEMORY[0x1E699DEE0]);
  *v3 = result;
  return result;
}

void *sub_1E601CF48(void *a1, int64_t a2, char a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED073048, &qword_1E65ECEA0, &qword_1ED073050, &qword_1E65ECEA8);
  *v3 = result;
  return result;
}

size_t sub_1E601CF88(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5E267B8(a1, a2, a3, *v3, &qword_1ED0730F8, &qword_1E65ECF50, &qword_1ED073100, &qword_1E65ECF58);
  *v3 = result;
  return result;
}

void *sub_1E601CFC8(void *a1, int64_t a2, char a3)
{
  result = sub_1E601DD34(a1, a2, a3, *v3, &qword_1ED072F48, &qword_1E65ECDB0, &qword_1ED072F50, &qword_1E65ECDB8);
  *v3 = result;
  return result;
}

size_t sub_1E601D008(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730F0, &qword_1E65ECF48, MEMORY[0x1E699EE88]);
  *v3 = result;
  return result;
}

size_t sub_1E601D04C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0730E8, &qword_1E65ECF40, MEMORY[0x1E699EEF0]);
  *v3 = result;
  return result;
}

size_t sub_1E601D090(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED073198, &qword_1E65ECFF0, MEMORY[0x1E69CCFD8]);
  *v3 = result;
  return result;
}

size_t sub_1E601D0D4(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F60, &qword_1E660F170, MEMORY[0x1E69CB2E0]);
  *v3 = result;
  return result;
}

size_t sub_1E601D118(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED0731A0, &qword_1E65ECFF8, MEMORY[0x1E69CCEC8]);
  *v3 = result;
  return result;
}

size_t sub_1E601D15C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5DF9F3C(a1, a2, a3, *v3, &qword_1ED072F58, &qword_1E65ECDC0, MEMORY[0x1E699F190]);
  *v3 = result;
  return result;
}

char *sub_1E601D1A0(char *a1, int64_t a2, char a3)
{
  result = sub_1E601DE90(a1, a2, a3, *v3, &qword_1ED072FA8, &qword_1E65ECE00);
  *v3 = result;
  return result;
}

void *sub_1E601D1D0(void *a1, int64_t a2, char a3)
{
  result = sub_1E601DF7C(a1, a2, a3, *v3, &qword_1ED073000, &qword_1E65ECE58, &qword_1ED073008, &qword_1E65ECE60);
  *v3 = result;
  return result;
}

char *sub_1E601D210(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073138, &qword_1E65ECF90);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E601D31C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FA0, &qword_1E65ECDF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E601D420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E601D52C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073290, &qword_1E65ED0E8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073298, &qword_1E65ED0F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E601D660(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731C8, &qword_1E65ED020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0731D0, &qword_1E65ED028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E601D7A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073260, &qword_1E65ED0B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E601D8B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073250, &qword_1E65ED0A8);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1E601D9BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E601DBA0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_1E601DD34(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E601DE90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1E601DF7C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1E601E0F8(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1E65DB378();
}

uint64_t sub_1E601E164(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  return sub_1E65DB378();
}

uint64_t sub_1E601E1D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  __swift_allocate_value_buffer(v0, qword_1ED0961D0);
  __swift_project_value_buffer(v0, qword_1ED0961D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148);
  return sub_1E65E1CC8();
}

uint64_t sub_1E601E2AC@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v86 = *(v1 - 8);
  v2 = *(v86 + 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v67 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v67 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v77 = *(v74 - 8);
  v12 = *(v77 + 64);
  v13 = MEMORY[0x1EEE9AC00](v74);
  v75 = v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = v67 - v15;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v90 = *(v87 - 8);
  v16 = *(v90 + 64);
  v17 = MEMORY[0x1EEE9AC00](v87);
  v19 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v73 = v67 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v83 = v67 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v82 = *(v84 - 8);
  v23 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v84);
  v81 = v67 - v24;
  v25 = sub_1E65E1C68();
  v26 = *(v25 - 8);
  v88 = v25;
  v89 = v26;
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v67 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v67 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E8, &qword_1E65ED1A8);
  v79 = *(v33 - 8);
  v80 = v33;
  v34 = *(v79 + 64);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v72 = v67 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v78 = v67 - v37;
  if (qword_1ED071898 != -1)
  {
    swift_once();
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  v69 = __swift_project_value_buffer(v70, qword_1ED096128);
  sub_1E65DB2F8();
  v38 = sub_1E65E1CA8();
  (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
  sub_1E65DB2F8();
  v39 = MEMORY[0x1E69E67B0];
  sub_1E65DB348();
  v40 = sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198);
  MEMORY[0x1E6942CC0](v5, v1, v40);
  v68 = v32;
  v41 = *(v86 + 1);
  v41(v5, v1);
  sub_1E65DB2C8();
  v41(v7, v1);
  v71 = MEMORY[0x1E69E9290];
  v42 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v43 = v73;
  v44 = v87;
  v67[1] = v42;
  sub_1E65E1C48();
  v45 = *(v90 + 8);
  v90 += 8;
  v45(v19, v44);
  v46 = v45;
  v67[0] = v45;
  v47 = *(v89 + 8);
  v89 += 8;
  v86 = v47;
  v47(v30, v88);
  sub_1E6021860(v11);
  v48 = v75;
  MEMORY[0x1E6942D60](v43, v39);
  v49 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0);
  v50 = v76;
  v51 = v74;
  MEMORY[0x1E6942CC0](v48, v74, v49);
  v52 = *(v77 + 8);
  v52(v48, v51);
  v53 = v83;
  sub_1E65DB2C8();
  v52(v50, v51);
  sub_1E65DB368();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v55 = v81;
  v77 = v54;
  v56 = v68;
  sub_1E65E1C38();
  v46(v53, v44);
  v86(v56, v88);
  v57 = v72;
  MEMORY[0x1E6942D30](v55, v54);
  v58 = sub_1E5FED46C(&qword_1ED073400, &qword_1ED0733E8, &qword_1E65ED1A8);
  v59 = v78;
  v60 = v80;
  MEMORY[0x1E6942CC0](v57, v80, v58);
  v79 = *(v79 + 8);
  (v79)(v57, v60);
  v91 = 3092282;
  v92 = 0xE300000000000000;
  v61 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v93, &v91, MEMORY[0x1E69E6158], v61);
  sub_1E65DB2C8();
  v62 = v93[0];
  v63 = v93[1];
  sub_1E65DB2F8();
  v91 = v62;
  v92 = v63;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148);
  v64 = v84;
  v65 = v87;
  sub_1E65E1BE8();
  (v67[0])(v53, v65);
  v86(v56, v88);
  (*(v82 + 8))(v55, v64);
  return (v79)(v59, v60);
}

uint64_t sub_1E601EC50@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v40 = v33 - v3;
  v41 = sub_1E65E1C68();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v39 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - v12;
  v14 = sub_1E65DB308();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v33 - v20;
  sub_1E65E1C88();
  v22 = sub_1E60218C8();
  v36 = v21;
  MEMORY[0x1E6942CA0](v19, v14, v22);
  v23 = *(v15 + 8);
  v37 = v15 + 8;
  v38 = v23;
  v35 = v14;
  v23(v19, v14);
  v46 = 45;
  v47 = 0xE100000000000000;
  v24 = sub_1E602180C();
  v25 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CA0](v48, &v46, MEMORY[0x1E69E6158], v24);
  v44 = 43;
  v45 = 0xE100000000000000;
  MEMORY[0x1E6942CA0](&v46, &v44, v25, v24);
  v34 = v13;
  sub_1E65DB2A8();
  v44 = v48[0];
  v45 = v48[1];
  sub_1E65DB2F8();
  v33[1] = sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198);
  v26 = MEMORY[0x1E69E67B0];
  v27 = v40;
  sub_1E65E1C08();
  v28 = *(v4 + 8);
  v29 = v41;
  v28(v7, v41);

  v30 = v39;
  MEMORY[0x1E6942D40](v27, v26);
  v44 = v46;
  v45 = v47;
  sub_1E65DB2F8();
  sub_1E65E1C08();
  v28(v7, v29);

  MEMORY[0x1E6942D40](v27, v26);
  v31 = *(v42 + 8);
  v31(v30, v8);
  v31(v34, v8);
  return v38(v36, v35);
}

uint64_t sub_1E601F0A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  __swift_allocate_value_buffer(v0, qword_1ED0961E8);
  __swift_project_value_buffer(v0, qword_1ED0961E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140);
  return sub_1E65E1CC8();
}

uint64_t sub_1E601F194@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v43 = *(v1 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v42 = sub_1E65E1C68();
  v38 = *(v42 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v37 = *(v34 - 8);
  v12 = *(v37 + 64);
  v13 = MEMORY[0x1EEE9AC00](v34);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;
  if (qword_1ED0718A0 != -1)
  {
    swift_once();
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_project_value_buffer(v18, qword_1ED096140);
  sub_1E65DB2F8();
  sub_1E601F720(v4);
  sub_1E65DB368();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v35 = MEMORY[0x1E69E9290];
  v36 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v30 = v1;
  v32 = v19;
  sub_1E65E1C28();
  v20 = *(v43 + 8);
  v43 += 8;
  v33 = v20;
  v20(v4, v1);
  v31 = v4;
  v38 = *(v38 + 8);
  (v38)(v11, v42);
  MEMORY[0x1E6942D30](v8, v19);
  v21 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180);
  v22 = v34;
  MEMORY[0x1E6942CC0](v15, v34, v21);
  v37 = *(v37 + 8);
  (v37)(v15, v22);
  v44 = 47;
  v45 = 0xE100000000000000;
  v23 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v46, &v44, MEMORY[0x1E69E6158], v23);
  sub_1E65DB2C8();
  v25 = v46[0];
  v24 = v46[1];
  sub_1E65DB2F8();
  v44 = v25;
  v45 = v24;
  v26 = v31;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168);
  v27 = v40;
  v28 = v30;
  sub_1E65E1BE8();
  v33(v26, v28);
  (v38)(v11, v42);
  (*(v39 + 8))(v8, v27);
  return (v37)(v17, v22);
}

uint64_t sub_1E601F720@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v1 = sub_1E65E1C68();
  v38 = *(v1 - 8);
  v39 = v1;
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v36 = *(v32 - 8);
  v4 = *(v36 + 64);
  v5 = MEMORY[0x1EEE9AC00](v32);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v33 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v31 - v9;
  v10 = sub_1E65DB308();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733C8, &qword_1E65ED190);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v31 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v31 - v21;
  sub_1E65E1C88();
  sub_1E60218C8();
  sub_1E65DB318();
  v23 = sub_1E5FED46C(&qword_1ED0733D0, &qword_1ED0733C8, &qword_1E65ED190);
  v31 = v22;
  MEMORY[0x1E6942CC0](v20, v12, v23);
  v24 = *(v13 + 8);
  v24(v20, v12);
  sub_1E65E1C88();
  sub_1E65DB318();
  MEMORY[0x1E6942CC0](v17, v12, v23);
  v24(v17, v12);
  sub_1E65DB2C8();
  v25 = v35;
  sub_1E65DB2F8();
  sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v26 = v32;
  v27 = v33;
  sub_1E65E1C18();
  v28 = v34;
  sub_1E65E1C18();
  sub_1E65E1BE8();
  v29 = *(v36 + 8);
  v29(v28, v26);
  v29(v27, v26);
  (*(v38 + 8))(v25, v39);
  v29(v40, v26);
  v24(v20, v12);
  return (v24)(v31, v12);
}

uint64_t sub_1E601FBD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  __swift_allocate_value_buffer(v0, qword_1ED096200);
  __swift_project_value_buffer(v0, qword_1ED096200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140);
  return sub_1E65E1CC8();
}

uint64_t sub_1E601FCC8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - v10;
  v12 = sub_1E65E1C68();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073380, &qword_1E65ED170);
  v34 = *(v20 - 8);
  v21 = *(v34 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v34 - v25;
  v27 = sub_1E65E1CA8();
  (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
  v28 = sub_1E65DB2F8();
  a1(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168);
  v30 = v37;
  sub_1E65E1C58();
  (*(v38 + 8))(v7, v30);
  (*(v35 + 8))(v15, v36);
  sub_1E6021860(v19);
  MEMORY[0x1E6942CE0](v11, v29);
  v31 = sub_1E5FED46C(&qword_1ED073390, &qword_1ED073380, &qword_1E65ED170);
  MEMORY[0x1E6942CC0](v24, v20, v31);
  v32 = *(v34 + 8);
  v32(v24, v20);
  sub_1E65DB2C8();
  return (v32)(v26, v20);
}

uint64_t sub_1E60200D8@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v54 - v3;
  v5 = sub_1E65DB308();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073398, &qword_1E65ED178);
  v64 = *(v56 - 8);
  v9 = *(v64 + 64);
  v10 = MEMORY[0x1EEE9AC00](v56);
  v57 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = v54 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v72 = *(v69 - 8);
  v13 = *(v72 + 64);
  v14 = MEMORY[0x1EEE9AC00](v69);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v65 = v54 - v20;
  v21 = sub_1E65E1C68();
  v73 = *(v21 - 8);
  v22 = *(v73 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v54 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v67 = *(v28 - 8);
  v68 = v28;
  v29 = *(v67 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v60 = v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v66 = v54 - v32;
  v74 = 63;
  v75 = 0xE100000000000000;
  v59 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v76, &v74, MEMORY[0x1E69E6158]);
  if (qword_1ED0718C8 != -1)
  {
    swift_once();
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  v54[1] = __swift_project_value_buffer(v33, qword_1ED0961B8);
  v55 = v27;
  sub_1E65DB2F8();
  sub_1E65E1C78();
  v34 = sub_1E65E1CA8();
  (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
  sub_1E65DB2F8();
  sub_1E60218C8();
  v35 = MEMORY[0x1E69E67B0];
  v36 = v63;
  sub_1E65E1BF8();
  v71 = *(v73 + 8);
  v73 += 8;
  v54[0] = v21;
  v71(v25, v21);
  sub_1E6021860(v4);
  (*(v62 + 8))(v8, v36);
  v37 = v57;
  MEMORY[0x1E6942CF0](v16, v35);
  v38 = sub_1E5FED46C(&qword_1ED0733B0, &qword_1ED073398, &qword_1E65ED178);
  v39 = v61;
  v40 = v56;
  MEMORY[0x1E6942CC0](v37, v56, v38);
  v41 = *(v64 + 8);
  v41(v37, v40);
  v42 = v58;
  sub_1E65DB2C8();
  v41(v39, v40);
  sub_1E65DB368();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v64 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v44 = v69;
  v45 = v65;
  v62 = v43;
  v46 = v55;
  sub_1E65E1C28();
  v47 = *(v72 + 8);
  v72 += 8;
  v63 = v47;
  v47(v42, v44);
  v71(v46, v21);
  v48 = v60;
  MEMORY[0x1E6942D30](v45, v43);
  v49 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180);
  v50 = v66;
  v51 = v68;
  MEMORY[0x1E6942CC0](v48, v68, v49);
  v67 = *(v67 + 8);
  (v67)(v48, v51);
  v74 = v76[0];
  v75 = v76[1];
  sub_1E65DB2C8();

  sub_1E65DB2F8();
  sub_1E65E1C18();
  sub_1E65E1BE8();
  v52 = v63;
  v63(v16, v44);
  v71(v46, v54[0]);
  v52(v42, v44);
  return (v67)(v50, v51);
}

uint64_t sub_1E6020960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E8, &qword_1E65ED118);
  __swift_allocate_value_buffer(v0, qword_1ED096218);
  __swift_project_value_buffer(v0, qword_1ED096218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  sub_1E5FED46C(&qword_1ED0732F8, &qword_1ED0732E8, &qword_1E65ED118);
  return sub_1E65E1CC8();
}

uint64_t sub_1E6020A38@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v91 = *(v92 - 8);
  v1 = *(v91 + 64);
  v2 = MEMORY[0x1EEE9AC00](v92);
  v89 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v112 = &v82 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v102 = &v82 - v6;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v114 = *(v88 - 8);
  v7 = *(v114 + 64);
  v8 = MEMORY[0x1EEE9AC00](v88);
  v105 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v82 - v10;
  v110 = sub_1E65E1C68();
  v113 = *(v110 - 8);
  v12 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v82 - v17;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073318, &qword_1E65ED138);
  v19 = *(v106 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v106);
  v93 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v87 = *(v25 - 8);
  v26 = *(v87 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v101 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v82 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v86 = *(v31 - 8);
  v32 = *(v86 + 64);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v99 = &v82 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v98 = &v82 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v97 = &v82 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v82 - v39;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v111 = v24;
  v108 = v19;
  v41 = __swift_project_value_buffer(v31, qword_1ED0961D0);
  v42 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148);
  v100 = v40;
  v109 = v31;
  v95 = v42;
  MEMORY[0x1E6942CC0](v41, v31);
  v121 = 0xD000000000000011;
  v122 = 0x80000001E6611500;
  v43 = sub_1E602180C();
  v44 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v123, &v121, MEMORY[0x1E69E6158], v43);
  v119 = 47;
  v120 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v121, &v119, v44, v43);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v25, qword_1ED0961E8);
  v46 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140);
  v47 = v30;
  v48 = v46;
  v96 = v47;
  MEMORY[0x1E6942CC0](v45, v25, v46);
  v117 = 0x6269726373627573;
  v118 = 0xE900000000000065;
  v49 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](&v119, &v117, MEMORY[0x1E69E6158], v43);
  v50 = sub_1E65E1CA8();
  (*(*(v50 - 8) + 56))(v18, 1, 1, v50);
  sub_1E65DB2F8();
  v115 = 47;
  v116 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v117, &v115, v49, v43);
  v107 = v25;
  v115 = v117;
  v116 = v118;
  v51 = v43;
  v52 = v105;
  v104 = v51;
  sub_1E65DB2C8();

  v53 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v54 = MEMORY[0x1E69E67B0];
  v55 = v88;
  v94 = v53;
  sub_1E65E1C58();
  v56 = v55;
  v105 = *(v114 + 8);
  v114 += 8;
  (v105)(v52, v55);
  v103 = *(v113 + 8);
  v113 += 8;
  v103(v14, v110);
  sub_1E6021860(v18);
  v57 = v93;
  MEMORY[0x1E6942CE0](v11, v54);
  v58 = sub_1E5FED46C(&qword_1ED073350, &qword_1ED073318, &qword_1E65ED138);
  v59 = v106;
  v84 = v58;
  MEMORY[0x1E6942CC0](v57, v106);
  v60 = *(v108 + 8);
  v108 += 8;
  v85 = v60;
  v60(v57, v59);
  if (qword_1ED0718E0 != -1)
  {
    swift_once();
  }

  v61 = v107;
  v62 = __swift_project_value_buffer(v107, qword_1ED096200);
  MEMORY[0x1E6942CC0](v62, v61, v48);
  sub_1E65DB2C8();
  v63 = v123[0];
  v64 = v123[1];
  sub_1E65DB2F8();
  v117 = v63;
  v118 = v64;
  sub_1E65E1C18();

  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  sub_1E65E1BE8();
  (v105)(v11, v55);
  v103(v14, v110);
  v93 = v48;
  v65 = v121;
  v66 = v122;
  sub_1E65DB2F8();
  v117 = v65;
  v118 = v66;
  sub_1E65E1C18();

  sub_1E65E1BE8();
  (v105)(v11, v55);
  v67 = v110;
  v68 = v103;
  v103(v14, v110);
  sub_1E65DB2F8();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E65E1BE8();
  v68(v14, v67);
  v70 = v119;
  v69 = v120;
  sub_1E65DB2F8();
  v117 = v70;
  v118 = v69;
  sub_1E65E1C18();

  v104 = sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  v71 = v92;
  sub_1E65E1BE8();
  v72 = v105;
  (v105)(v11, v55);
  v73 = v103;
  v103(v14, v67);
  sub_1E65DB2F8();
  sub_1E65E1C18();
  v74 = v89;
  sub_1E65E1BE8();
  v72(v11, v56);
  v73(v14, v67);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  v75 = v101;
  v76 = v107;
  sub_1E65E1BE8();
  v73(v14, v67);
  v77 = *(v91 + 8);
  v77(v74, v71);
  v77(v112, v71);
  v77(v102, v71);
  v78 = *(v86 + 8);
  v79 = v109;
  v78(v99, v109);
  v78(v98, v79);
  v78(v97, v79);
  v80 = *(v87 + 8);
  v80(v75, v76);
  v85(v111, v106);
  v80(v96, v76);
  return (v78)(v100, v79);
}

unint64_t sub_1E602180C()
{
  result = qword_1ED073338;
  if (!qword_1ED073338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073338);
  }

  return result;
}

uint64_t sub_1E6021860(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E60218C8()
{
  result = qword_1ED0733A8;
  if (!qword_1ED0733A8)
  {
    sub_1E65DB308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0733A8);
  }

  return result;
}

uint64_t sub_1E6021920()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  __swift_allocate_value_buffer(v0, qword_1ED096230);
  __swift_project_value_buffer(v0, qword_1ED096230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  return sub_1E65E1CC8();
}

uint64_t sub_1E60219F8@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v60 = &v50 - v3;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v73 = *(v68 - 8);
  v4 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v58 = &v50 - v5;
  v72 = sub_1E65E1C68();
  v65 = *(v72 - 8);
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v61 = *(v9 - 8);
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v71 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v74 = &v50 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v70 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v50 - v21;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v13, qword_1ED0961D0);
  v24 = v13;
  v25 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148);
  MEMORY[0x1E6942CC0](v23, v13);
  v79 = 0xD000000000000011;
  v80 = 0x80000001E6611500;
  v26 = sub_1E602180C();
  v27 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v81, &v79, MEMORY[0x1E69E6158], v26);
  v77 = 47;
  v78 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v79, &v77, v27, v26);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v9, qword_1ED0961E8);
  v29 = v9;
  v69 = v9;
  v30 = v28;
  v55 = MEMORY[0x1E69E9290];
  v56 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140);
  v67 = v12;
  MEMORY[0x1E6942CC0](v30, v29, v56);
  v75 = 0xD000000000000014;
  v76 = 0x80000001E6611520;
  MEMORY[0x1E6942CC0](&v77, &v75, MEMORY[0x1E69E6158], v26);
  v57 = v22;
  v51 = v24;
  v50 = v25;
  sub_1E65DB2C8();
  v31 = v81[0];
  v32 = v81[1];
  sub_1E65DB2F8();
  v75 = v31;
  v76 = v32;
  v33 = v58;
  sub_1E65E1C18();

  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v34 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v35 = v68;
  v54 = v34;
  sub_1E65E1BE8();
  v36 = v73 + 8;
  v66 = *(v73 + 8);
  v66(v33, v35);
  v53 = v26;
  v65 = *(v65 + 8);
  (v65)(v8, v72);
  v37 = v79;
  v38 = v80;
  v73 = v36;
  sub_1E65DB2F8();
  v75 = v37;
  v76 = v38;
  sub_1E65E1C18();

  v39 = v51;
  sub_1E65E1BE8();
  v66(v33, v35);
  v40 = v72;
  v41 = v65;
  (v65)(v8, v72);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  v42 = v60;
  v43 = v39;
  sub_1E65E1BE8();
  v41(v8, v40);
  v45 = v77;
  v44 = v78;
  sub_1E65DB2F8();
  v75 = v45;
  v76 = v44;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  v46 = v64;
  v47 = v68;
  sub_1E65E1BE8();
  v66(v33, v47);
  (v65)(v8, v40);
  (*(v63 + 8))(v42, v46);
  v48 = *(v59 + 8);
  v48(v71, v43);
  v48(v74, v43);
  v48(v70, v43);
  (*(v61 + 8))(v67, v69);
  return (v48)(v57, v43);
}

uint64_t sub_1E6022298()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E8, &qword_1E65ED118);
  __swift_allocate_value_buffer(v0, qword_1ED096248);
  __swift_project_value_buffer(v0, qword_1ED096248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  sub_1E5FED46C(&qword_1ED0732F8, &qword_1ED0732E8, &qword_1E65ED118);
  return sub_1E65E1CC8();
}

uint64_t sub_1E6022370@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v86 = *(v87 - 8);
  v1 = *(v86 + 64);
  v2 = MEMORY[0x1EEE9AC00](v87);
  v84 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v102 = v76 - v4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v106 = *(v99 - 8);
  v5 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v83 = v76 - v6;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v88 = *(v89 - 8);
  v7 = *(v88 + 8);
  MEMORY[0x1EEE9AC00](v89);
  v80 = (v76 - v8);
  v95 = sub_1E65E1C68();
  v104 = *(v95 - 8);
  v9 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v11 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v76 - v14;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073380, &qword_1E65ED170);
  v107 = *(v101 - 8);
  v16 = *(v107 + 64);
  v17 = MEMORY[0x1EEE9AC00](v101);
  v19 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v100 = v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v76 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v81 = *(v28 - 8);
  v29 = *(v81 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v98 = v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v97 = v76 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v96 = v76 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v103 = v76 - v36;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v28, qword_1ED0961D0);
  v38 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148);
  v105 = v28;
  v92 = v38;
  MEMORY[0x1E6942CC0](v37, v28);
  v111 = 0xD000000000000011;
  v112 = 0x80000001E6611500;
  v39 = sub_1E602180C();
  v40 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v113, &v111, MEMORY[0x1E69E6158], v39);
  v109 = 47;
  v110 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v111, &v109, v40, v39);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v21, qword_1ED0961E8);
  v42 = v21;
  v93 = v21;
  v43 = v41;
  v91 = MEMORY[0x1E69E9290];
  v79 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140);
  v94 = v27;
  MEMORY[0x1E6942CC0](v43, v42, v79);
  strcpy(v108, "fitness-plus");
  BYTE5(v108[1]) = 0;
  HIWORD(v108[1]) = -5120;
  MEMORY[0x1E6942CC0](&v109, v108, MEMORY[0x1E69E6158], v39);
  v44 = sub_1E65E1CA8();
  (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
  sub_1E65DB2F8();
  v45 = v80;
  sub_1E602304C(v80);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168);
  v47 = v89;
  sub_1E65E1C58();
  (*(v88 + 1))(v45, v47);
  v48 = *(v104 + 8);
  v104 += 8;
  v88 = v48;
  v90 = v39;
  v49 = v95;
  v48(v11, v95);
  sub_1E6021860(v15);
  MEMORY[0x1E6942CE0](v25, v46);
  v78 = sub_1E5FED46C(&qword_1ED073390, &qword_1ED073380, &qword_1E65ED170);
  v50 = v101;
  MEMORY[0x1E6942CC0](v19, v101, v78);
  v51 = *(v107 + 8);
  v107 += 8;
  v80 = v51;
  v51(v19, v50);
  sub_1E65DB2C8();
  v53 = v113[0];
  v52 = v113[1];
  sub_1E65DB2F8();
  v108[0] = v53;
  v108[1] = v52;
  v54 = v83;
  sub_1E65E1C18();

  v76[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v89 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v55 = v99;
  sub_1E65E1BE8();
  v57 = v106 + 8;
  v56 = *(v106 + 8);
  v56(v54, v55);
  v77 = v56;
  v88(v11, v49);
  v106 = v57;
  v58 = v55;
  v59 = v111;
  v60 = v112;
  sub_1E65DB2F8();
  v108[0] = v59;
  v108[1] = v60;
  sub_1E65E1C18();

  sub_1E65E1BE8();
  v56(v54, v58);
  v61 = v95;
  v62 = v88;
  v88(v11, v95);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E65E1BE8();
  v62(v11, v61);
  v63 = v62;
  v65 = v109;
  v64 = v110;
  sub_1E65DB2F8();
  v108[0] = v65;
  v108[1] = v64;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  v66 = v84;
  v67 = v102;
  v68 = v87;
  v69 = v99;
  sub_1E65E1BE8();
  v77(v54, v69);
  v63(v11, v61);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732F0, &qword_1E65ED120);
  v70 = v100;
  v71 = v101;
  sub_1E65E1BE8();
  v63(v11, v61);
  v72 = *(v86 + 8);
  v72(v66, v68);
  v72(v67, v68);
  v73 = *(v81 + 8);
  v74 = v105;
  v73(v98, v105);
  v73(v97, v74);
  v73(v96, v74);
  v80(v70, v71);
  (*(v82 + 8))(v94, v93);
  return (v73)(v103, v74);
}

uint64_t sub_1E602304C@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073318, &qword_1E65ED138);
  v96 = *(v1 - 8);
  v97 = v1;
  v2 = *(v96 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v83 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v95 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v68 - v8;
  v10 = sub_1E65DB308();
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v89 = *(v87 - 1);
  v14 = *(v89 + 64);
  v15 = MEMORY[0x1EEE9AC00](v87);
  v75 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = &v68 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v98 = *(v79 - 8);
  v18 = *(v98 + 64);
  v19 = MEMORY[0x1EEE9AC00](v79);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v68 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v81 = *(v82 - 8);
  v23 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v82);
  v88 = &v68 - v24;
  v93 = sub_1E65E1C68();
  v25 = *(v93 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v93);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v91 = *(v32 - 8);
  v92 = v32;
  v33 = *(v91 + 64);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v76 = &v68 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v90 = &v68 - v36;
  v101 = 47;
  v102 = 0xE100000000000000;
  v80 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v103, &v101, MEMORY[0x1E69E6158]);
  if (qword_1ED0718A8 != -1)
  {
    swift_once();
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  v69 = __swift_project_value_buffer(v37, qword_1ED096158);
  sub_1E65DB2F8();
  sub_1E65E1C88();
  v73 = sub_1E65E1CA8();
  v38 = *(v73 - 8);
  v72 = *(v38 + 56);
  v74 = v38 + 56;
  v70 = v9;
  v72(v9, 1, 1, v73);
  sub_1E65DB2F8();
  sub_1E60218C8();
  v39 = MEMORY[0x1E69E67B0];
  v71 = v21;
  sub_1E65E1C48();
  v40 = *(v25 + 8);
  v85 = v25 + 8;
  v86 = v40;
  v40(v29, v93);
  sub_1E6021860(v9);
  (*(v78 + 8))(v13, v10);
  v41 = v75;
  MEMORY[0x1E6942D60](v21, v39);
  v42 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0);
  v43 = v77;
  v44 = v87;
  MEMORY[0x1E6942CC0](v41, v87, v42);
  v45 = *(v89 + 8);
  v45(v41, v44);
  v46 = v94;
  sub_1E65DB2C8();
  v45(v43, v44);
  sub_1E65DB368();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v78 = MEMORY[0x1E69E9290];
  v89 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v48 = v79;
  v49 = v88;
  v75 = v47;
  sub_1E65E1C28();
  v50 = *(v98 + 8);
  v98 += 8;
  v87 = v50;
  (v50)(v46, v48);
  v51 = v93;
  v52 = v86;
  v86(v31, v93);
  v53 = v76;
  MEMORY[0x1E6942D30](v49, v47);
  v69 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180);
  v54 = v92;
  MEMORY[0x1E6942CC0](v53, v92, v69);
  v55 = v31;
  v56 = *(v91 + 8);
  v91 += 8;
  v77 = v56;
  (v56)(v53, v54);
  v57 = v70;
  v72(v70, 1, 1, v73);
  sub_1E65DB2F8();
  v99 = 47;
  v100 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v101, &v99, MEMORY[0x1E69E6158], v80);
  v99 = v101;
  v100 = v102;
  v58 = v71;
  sub_1E65DB2C8();

  v59 = v94;
  sub_1E65E1C58();
  (v87)(v58, v48);
  v52(v55, v51);
  sub_1E6021860(v57);
  v60 = v83;
  MEMORY[0x1E6942CE0](v59, MEMORY[0x1E69E67B0]);
  v74 = sub_1E5FED46C(&qword_1ED073350, &qword_1ED073318, &qword_1E65ED138);
  v61 = v97;
  MEMORY[0x1E6942CC0](v60, v97, v74);
  v62 = *(v96 + 8);
  v96 += 8;
  v76 = v62;
  (v62)(v60, v61);
  v101 = v103[0];
  v102 = v103[1];
  sub_1E65DB2C8();

  sub_1E65DB2F8();
  sub_1E65E1C18();
  v63 = v88;
  sub_1E65E1BE8();
  v64 = v87;
  (v87)(v58, v48);
  v65 = v86;
  v86(v55, v51);
  sub_1E65DB2F8();
  sub_1E65E1C18();
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168);
  v66 = v82;
  sub_1E65E1BE8();
  v64(v58, v48);
  v65(v55, v93);
  (*(v81 + 8))(v63, v66);
  v64(v94, v48);
  (v76)(v95, v97);
  return (v77)(v90, v92);
}

uint64_t sub_1E6023C70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073450, &qword_1E65ED1E0);
  __swift_allocate_value_buffer(v0, qword_1ED096260);
  __swift_project_value_buffer(v0, qword_1ED096260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073458, &qword_1E65ED1E8);
  return sub_1E65E1CB8();
}

uint64_t sub_1E6023D00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v32 = v31 - v14;
  v33 = sub_1E65E1C68();
  v15 = *(v33 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v31 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  __swift_allocate_value_buffer(v23, qword_1ED0732B8);
  v31[1] = __swift_project_value_buffer(v23, qword_1ED0732B8);
  v24 = sub_1E65E1CA8();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  sub_1E65DB2F8();
  sub_1E65DB348();
  v25 = sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198);
  MEMORY[0x1E6942CC0](v5, v0, v25);
  v26 = *(v1 + 8);
  v26(v5, v0);
  sub_1E65DB2C8();
  v26(v7, v0);
  sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v27 = v32;
  v28 = MEMORY[0x1E69E67B0];
  v29 = v34;
  sub_1E65E1C48();
  (*(v35 + 8))(v13, v29);
  (*(v15 + 8))(v18, v33);
  sub_1E6021860(v22);
  return MEMORY[0x1E6942D60](v27, v28);
}

uint64_t sub_1E6024128@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_1E65E1C68();
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733D8, &qword_1E65ED198);
  v27 = *(v9 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - v11;
  v13 = sub_1E65DB308();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v25 - v19;
  sub_1E65E1C88();
  v21 = sub_1E60218C8();
  MEMORY[0x1E6942CA0](v18, v13, v21);
  v26 = *(v14 + 8);
  v26(v18, v13);
  v31 = 45;
  v32 = 0xE100000000000000;
  v22 = sub_1E602180C();
  MEMORY[0x1E6942CA0](v33, &v31, MEMORY[0x1E69E6158], v22);
  sub_1E65DB2A8();
  v31 = v33[0];
  v32 = v33[1];
  sub_1E65DB2F8();
  sub_1E5FED46C(&qword_1ED0733F0, &qword_1ED0733D8, &qword_1E65ED198);
  v23 = MEMORY[0x1E69E67B0];
  sub_1E65E1C08();
  (*(v28 + 8))(v8, v29);

  MEMORY[0x1E6942D40](v4, v23);
  (*(v27 + 8))(v12, v9);
  return (v26)(v20, v13);
}

uint64_t sub_1E602449C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073408, &qword_1E65ED1B0);
  __swift_allocate_value_buffer(v0, qword_1ED096278);
  __swift_project_value_buffer(v0, qword_1ED096278);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073410, &qword_1E65ED1B8);
  sub_1E5FED46C(&qword_1ED073418, &qword_1ED073408, &qword_1E65ED1B0);
  return sub_1E65E1CC8();
}

uint64_t sub_1E6024574@<X0>(uint64_t a1@<X8>)
{
  v182 = a1;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073408, &qword_1E65ED1B0);
  v184 = *(v185 - 8);
  v1 = *(v184 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v183 = &v158 - v2;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073420, &qword_1E65ED1C0);
  v180 = *(v181 - 8);
  v3 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v181);
  v178 = &v158 - v4;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073428, &qword_1E65ED1C8);
  v179 = *(v202 - 8);
  v5 = *(v179 + 64);
  v6 = MEMORY[0x1EEE9AC00](v202);
  v201 = &v158 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v200 = &v158 - v8;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073300, &unk_1E66054E0);
  v177 = *(v199 - 8);
  v9 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v199);
  v198 = &v158 - v10;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073318, &qword_1E65ED138);
  v216 = *(v217 - 8);
  v11 = *(v216 + 64);
  v12 = MEMORY[0x1EEE9AC00](v217);
  v174 = &v158 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v215 = &v158 - v14;
  v173 = sub_1E65DB308();
  v172 = *(v173 - 8);
  v15 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v158 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v165 = *(v166 - 1);
  v17 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v164 = &v158 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073310, &qword_1E65ED130);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v194 = &v158 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073380, &qword_1E65ED170);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v163 = &v158 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v158 - v27;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v206 = *(v192 - 8);
  v29 = *(v206 + 8);
  v30 = MEMORY[0x1EEE9AC00](v192);
  v169 = &v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v158 - v32;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v33 = *(v226 - 8);
  v34 = *(v33 + 64);
  v35 = MEMORY[0x1EEE9AC00](v226);
  v170 = &v158 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v210 = &v158 - v37;
  v38 = sub_1E65E1C68();
  v227 = *(v38 - 8);
  v228 = v38;
  v39 = *(v227 + 64);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v162 = &v158 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v203 = &v158 - v42;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E8, &qword_1E65ED1A8);
  v218 = *(v222 - 8);
  v43 = *(v218 + 64);
  v44 = MEMORY[0x1EEE9AC00](v222);
  v168 = &v158 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v221 = &v158 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v212 = &v158 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073320, &qword_1E65ED140);
  v176 = *(v49 - 8);
  v50 = *(v176 + 64);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v161 = &v158 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v209 = &v158 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073328, &qword_1E65ED148);
  v175 = *(v54 - 8);
  v55 = *(v175 + 64);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v195 = &v158 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v207 = &v158 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v62 = &v158 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v158 - v63;
  if (qword_1ED0718D0 != -1)
  {
    swift_once();
  }

  v65 = __swift_project_value_buffer(v54, qword_1ED0961D0);
  v66 = sub_1E5FED46C(&qword_1ED073330, &qword_1ED073328, &qword_1E65ED148);
  v196 = v64;
  v208 = v54;
  v193 = v66;
  MEMORY[0x1E6942CC0](v65, v54);
  v235 = 0xD000000000000011;
  v236 = 0x80000001E6611500;
  v67 = sub_1E602180C();
  v68 = MEMORY[0x1E69E6158];
  MEMORY[0x1E6942CC0](v237, &v235, MEMORY[0x1E69E6158], v67);
  v233 = 47;
  v234 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v235, &v233, v68, v67);
  if (qword_1ED0718D8 != -1)
  {
    swift_once();
  }

  v220 = v67;
  v213 = v28;
  v214 = v22;
  v69 = __swift_project_value_buffer(v49, qword_1ED0961E8);
  v167 = sub_1E5FED46C(&qword_1ED073340, &qword_1ED073320, &qword_1E65ED140);
  MEMORY[0x1E6942CC0](v69, v49);
  if (qword_1ED0718B0 != -1)
  {
    swift_once();
  }

  v197 = v49;
  v70 = v33;
  v211 = v23;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732E0, &unk_1E6605520);
  __swift_project_value_buffer(v71, qword_1ED096170);
  sub_1E65DB2F8();
  v72 = v62;
  v73 = v192;
  v74 = v191;
  if (qword_1ED071908 != -1)
  {
    swift_once();
  }

  v75 = __swift_project_value_buffer(v73, qword_1ED0732B8);
  v76 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0);
  MEMORY[0x1E6942CC0](v75, v73, v76);
  v77 = v210;
  v160 = v76;
  sub_1E65DB2C8();
  v78 = *(v206 + 1);
  v206 += 8;
  v159 = v78;
  v78(v74, v73);
  sub_1E65DB368();
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073358, &qword_1E65ED150);
  v80 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v81 = v226;
  v225 = v80;
  v82 = v203;
  sub_1E65E1C38();
  v83 = *(v70 + 8);
  v219 = v70 + 8;
  v224 = v83;
  v83(v77, v81);
  v158 = v71;
  v84 = v228;
  v85 = v227 + 8;
  v86 = *(v227 + 8);
  v86(v82, v228);
  v87 = v221;
  v189 = v79;
  MEMORY[0x1E6942D30](v72, v79);
  v88 = sub_1E5FED46C(&qword_1ED073400, &qword_1ED0733E8, &qword_1E65ED1A8);
  v89 = v222;
  v204 = v88;
  MEMORY[0x1E6942CC0](v87, v222);
  v90 = *(v218 + 8);
  v218 += 8;
  v190 = v90;
  v90(v87, v89);
  v231 = 47;
  v232 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v233, &v231, MEMORY[0x1E69E6158], v220);
  v91 = sub_1E65E1CA8();
  v205 = v72;
  v92 = *(v91 - 8);
  v93 = *(v92 + 56);
  v94 = v194;
  v188 = v91;
  v187 = v93;
  v186 = v92 + 56;
  (v93)(v194, 1, 1);
  sub_1E65DB2F8();
  v95 = v164;
  sub_1E6026100(v164);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073370, &qword_1E65ED160);
  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168);
  v97 = v161;
  v98 = v166;
  sub_1E65E1C58();
  (*(v165 + 8))(v95, v98);
  v227 = v85;
  v223 = v86;
  v86(v82, v84);
  sub_1E6021860(v94);
  v99 = v163;
  MEMORY[0x1E6942CE0](v97, v96);
  v100 = sub_1E5FED46C(&qword_1ED073390, &qword_1ED073380, &qword_1E65ED170);
  v101 = v214;
  v165 = v100;
  MEMORY[0x1E6942CC0](v99, v214);
  v102 = *(v211 + 8);
  v211 += 8;
  v166 = v102;
  (v102)(v99, v101);
  if (qword_1ED0718C0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v158, qword_1ED0961A0);
  v103 = v203;
  sub_1E65DB2F8();
  v104 = v171;
  sub_1E65E1C88();
  v187(v94, 1, 1, v188);
  v105 = v162;
  sub_1E65DB2F8();
  sub_1E60218C8();
  v106 = MEMORY[0x1E69E67B0];
  v107 = v170;
  v108 = v173;
  sub_1E65E1C48();
  v223(v105, v228);
  sub_1E6021860(v94);
  (*(v172 + 8))(v104, v108);
  v109 = v169;
  MEMORY[0x1E6942D60](v107, v106);
  v110 = v191;
  v111 = v192;
  MEMORY[0x1E6942CC0](v109, v192, v160);
  v112 = v159;
  v159(v109, v111);
  v113 = v210;
  sub_1E65DB2C8();
  v112(v110, v111);
  sub_1E65DB368();
  v114 = v205;
  v115 = v189;
  v116 = v226;
  sub_1E65E1C38();
  v224(v113, v116);
  v117 = v228;
  v118 = v223;
  v223(v103, v228);
  v119 = v168;
  MEMORY[0x1E6942D30](v114, v115);
  v120 = v222;
  MEMORY[0x1E6942CC0](v119, v222, v204);
  v190(v119, v120);
  v121 = v194;
  v187(v194, 1, 1, v188);
  sub_1E65DB2F8();
  v229 = 47;
  v230 = 0xE100000000000000;
  MEMORY[0x1E6942CC0](&v231, &v229, MEMORY[0x1E69E6158], v220);
  v229 = v231;
  v230 = v232;
  sub_1E65DB2C8();

  v122 = v121;
  v123 = MEMORY[0x1E69E67B0];
  v124 = v226;
  sub_1E65E1C58();
  v224(v107, v124);
  v118(v103, v117);
  sub_1E6021860(v122);
  v125 = v174;
  MEMORY[0x1E6942CE0](v113, v123);
  v194 = sub_1E5FED46C(&qword_1ED073350, &qword_1ED073318, &qword_1E65ED138);
  v126 = v217;
  MEMORY[0x1E6942CC0](v125, v217, v194);
  v127 = *(v216 + 8);
  v216 += 8;
  v206 = v127;
  (v127)(v125, v126);
  sub_1E65DB2C8();
  v128 = v237[0];
  v129 = v237[1];
  sub_1E65DB2F8();
  v231 = v128;
  v232 = v129;
  sub_1E65E1C18();

  v130 = v226;
  sub_1E65E1BE8();
  v131 = v130;
  v132 = v130;
  v133 = v224;
  v224(v113, v131);
  v223(v103, v228);
  v134 = v235;
  v135 = v236;
  sub_1E65DB2F8();
  v231 = v134;
  v232 = v135;
  v136 = v103;
  sub_1E65E1C18();

  sub_1E65E1BE8();
  v133(v113, v132);
  v137 = v228;
  v138 = v223;
  v223(v103, v228);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073360, &qword_1E65ED158);
  sub_1E65E1BE8();
  v138(v103, v137);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073430, &qword_1E65ED1D0);
  v193 = MEMORY[0x1E69E9290];
  sub_1E5FED46C(&qword_1ED073368, &qword_1ED073300, &unk_1E66054E0);
  sub_1E65E1BE8();
  v138(v103, v137);
  v139 = v233;
  v140 = v234;
  sub_1E65DB2F8();
  v231 = v139;
  v232 = v140;
  v141 = v210;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073438, &qword_1ED073428, &qword_1E65ED1C8);
  v142 = v226;
  sub_1E65E1BE8();
  v224(v141, v142);
  v143 = v137;
  v144 = v137;
  v145 = v223;
  v223(v136, v144);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073440, &qword_1E65ED1D8);
  v146 = v178;
  sub_1E65E1BE8();
  v145(v136, v143);
  sub_1E65DB2F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073410, &qword_1E65ED1B8);
  sub_1E5FED46C(&qword_1ED073448, &qword_1ED073420, &qword_1E65ED1C0);
  v147 = v183;
  v148 = v181;
  sub_1E65E1BE8();
  v145(v136, v143);
  sub_1E65DB2F8();
  sub_1E65E1C18();
  sub_1E5FED46C(&qword_1ED073418, &qword_1ED073408, &qword_1E65ED1B0);
  v149 = v185;
  v150 = v226;
  sub_1E65E1BE8();
  v224(v141, v150);
  v145(v136, v228);
  (*(v184 + 8))(v147, v149);
  (*(v180 + 8))(v146, v148);
  v151 = *(v179 + 8);
  v152 = v202;
  v151(v201, v202);
  v151(v200, v152);
  (*(v177 + 8))(v198, v199);
  v153 = *(v175 + 8);
  v154 = v208;
  v153(v195, v208);
  v153(v207, v154);
  v153(v205, v154);
  (v206)(v215, v217);
  v155 = v222;
  v156 = v190;
  v190(v221, v222);
  (v166)(v213, v214);
  v156(v212, v155);
  (*(v176 + 8))(v209, v197);
  return (v153)(v196, v154);
}

uint64_t sub_1E6026100@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733E0, &qword_1E65ED1A0);
  v38 = *(v1 - 8);
  v2 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073308, &qword_1E65ED128);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073378, &qword_1E65ED168);
  v43 = *(v45 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v35 - v10;
  v48 = sub_1E65E1C68();
  v41 = *(v48 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733A0, &qword_1E65ED180);
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v47 = &v35 - v20;
  if (qword_1ED0718B8 != -1)
  {
    swift_once();
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D0, &qword_1E65ED110);
  __swift_project_value_buffer(v21, qword_1ED096188);
  sub_1E65DB2F8();
  if (qword_1ED071908 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v1, qword_1ED0732B8);
  v23 = sub_1E5FED46C(&qword_1ED0733F8, &qword_1ED0733E0, &qword_1E65ED1A0);
  MEMORY[0x1E6942CC0](v22, v1, v23);
  sub_1E65DB2C8();
  (*(v38 + 8))(v4, v1);
  sub_1E65DB368();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0733B8, &qword_1E65ED188);
  v35 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0732D8, &qword_1E6605530);
  v37 = MEMORY[0x1E69E9290];
  v38 = sub_1E5FED46C(&qword_1ED073348, &qword_1ED073308, &qword_1E65ED128);
  v25 = v42;
  v26 = v13;
  sub_1E65E1C28();
  v36 = v5;
  v44 = *(v44 + 8);
  (v44)(v8, v5);
  v41 = *(v41 + 8);
  (v41)(v13, v48);
  MEMORY[0x1E6942D30](v25, v24);
  v27 = sub_1E5FED46C(&qword_1ED0733C0, &qword_1ED0733A0, &qword_1E65ED180);
  v28 = v39;
  MEMORY[0x1E6942CC0](v19, v39, v27);
  v40 = *(v40 + 8);
  (v40)(v19, v28);
  v49 = 47;
  v50 = 0xE100000000000000;
  v29 = sub_1E602180C();
  MEMORY[0x1E6942CC0](v51, &v49, MEMORY[0x1E69E6158], v29);
  sub_1E65DB2C8();
  v30 = v51[0];
  v31 = v51[1];
  sub_1E65DB2F8();
  v49 = v30;
  v50 = v31;
  sub_1E65E1C18();

  sub_1E5FED46C(&qword_1ED073388, &qword_1ED073378, &qword_1E65ED168);
  v32 = v45;
  v33 = v36;
  sub_1E65E1BE8();
  (v44)(v8, v33);
  (v41)(v26, v48);
  (*(v43 + 8))(v25, v32);
  return (v40)(v47, v28);
}

uint64_t sub_1E60267B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v2;
}

uint64_t sub_1E60267F8@<X0>(uint64_t *a1@<X8>)
{
  v96 = a1;
  v2 = type metadata accessor for AccountService();
  Description = v2[-1].Description;
  v87 = v2;
  v3 = Description[8];
  MEMORY[0x1EEE9AC00](v2);
  v84 = v4;
  v85 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppStateService();
  v82 = v5[-1].Description;
  v83 = v5;
  v6 = v82[8];
  MEMORY[0x1EEE9AC00](v5);
  v80 = v7;
  v81 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for RemoteBrowsingService();
  v79 = v90[-1].Description;
  v8 = v79[8];
  MEMORY[0x1EEE9AC00](v90);
  v77 = v9;
  v78 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v101 = &v73 - v12;
  v13 = type metadata accessor for ContentAvailabilityService();
  v14 = v13[-1].Description;
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  v100 = *(v97 - 8);
  v16 = *(v100 + 64);
  v17 = MEMORY[0x1EEE9AC00](v97);
  v98 = v18;
  v99 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v73 - v19;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v21 = sub_1E65E3B68();
  __swift_project_value_buffer(v21, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v22 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v23 = type metadata accessor for AppEnvironment();
  v24 = v23[7];
  v76 = v23[6];
  v75 = v24;
  v25 = v23[14];
  v74 = v23[25];
  v26 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  swift_getKeyPath();
  v27 = v14[2];
  v95 = v22;
  v27(&v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v25, v13);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  (v14[4])(v29 + v28, &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);

  v30 = v20;
  sub_1E65E4E08();
  v31 = v96;
  v32 = v97;
  v96[3] = v97;
  v31[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
  v34 = v100 + 16;
  v35 = *(v100 + 16);
  v73 = v30;
  v35(boxed_opaque_existential_1, v30, v32);
  v93 = v35;
  v94 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1E65EA8E0;
  v92 = sub_1E65E60A8();
  v36 = *(v92 - 8);
  v91 = *(v36 + 56);
  v89 = v36 + 56;
  v91(v101, 1, 1, v92);
  v37 = v79;
  v38 = v78;
  v39 = v90;
  (v79[2])(v78, v22 + v74, v90);
  v40 = v99;
  v35(v99, v30, v32);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = v100;
  v43 = *(v100 + 80);
  v44 = (v77 + v43 + v41) & ~v43;
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = 0;
  (v37[4])(v45 + v41, v38, v39);
  v90 = *(v42 + 32);
  v46 = v45 + v44;
  v47 = v40;
  v48 = v32;
  (v90)(v46, v40, v32);
  v49 = v101;
  v50 = sub_1E6059EAC(0, 0, v101, &unk_1E65ED230, v45);
  v51 = v88;
  *(v88 + 32) = v50;
  v91(v49, 1, 1, v92);
  v52 = v81;
  v53 = v82;
  v54 = v83;
  (v82[2])(v81, v95 + v75, v83);
  v55 = v73;
  v93(v47, v73, v48);
  v56 = (*(v53 + 80) + 32) & ~*(v53 + 80);
  v57 = (v80 + v43 + v56) & ~v43;
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  (v53[4])(v58 + v56, v52, v54);
  v59 = v58 + v57;
  v60 = v99;
  v61 = v97;
  (v90)(v59, v99, v97);
  v62 = v101;
  *(v51 + 40) = sub_1E6059EAC(0, 0, v101, &unk_1E65ED240, v58);
  v91(v62, 1, 1, v92);
  v64 = v85;
  v63 = Description;
  v65 = v87;
  (Description[2])(v85, v95 + v76, v87);
  v66 = v61;
  v93(v60, v55, v61);
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = (v84 + v43 + v67) & ~v43;
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  (v63[4])(v69 + v67, v64, v65);
  (v90)(v69 + v68, v99, v66);
  v70 = sub_1E6059EAC(0, 0, v101, &unk_1E65ED250, v69);
  v71 = v88;
  *(v88 + 48) = v70;
  result = (*(v100 + 8))(v55, v66);
  v96[5] = v71;
  return result;
}

uint64_t sub_1E60270F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6027110, 0, 0);
}

uint64_t sub_1E6027110()
{
  v1 = v0[3];
  v2 = ContentAvailabilityService.fetchAvailableAudioLanguageCodes.getter();
  v0[4] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6027204;

  return v7();
}

uint64_t sub_1E6027204(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v7 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v5 = sub_1E60274D4;
  }

  else
  {
    v5 = sub_1E6027318;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6027318()
{
  v15 = v0;
  v1 = *(v0 + 32);

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);

  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_1E65E6248();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Available Audio Language Codes: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  **(v0 + 16) = *(v0 + 48);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E60274D4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_1E6027538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60276A4, 0, 0);
}

uint64_t sub_1E60276A4()
{
  v1 = v0[2];
  v2 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E60277A0;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E60277A0()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E60278B8, 0, 0);
}

uint64_t sub_1E60278B8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6027994;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E6027994()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6027A90, 0, 0);
}

uint64_t sub_1E6027A90()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6027BE0, v7, v6);
  }
}

uint64_t sub_1E6027BE0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6027C64, 0, 0);
}

uint64_t sub_1E6027C64()
{
  sub_1E5FC789C(v0[4]);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E6027994;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E6027D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6027E48, 0, 0);
}

uint64_t sub_1E6027E48()
{
  v1 = v0[2];
  v2 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6027F44;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6027F44()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E602805C, 0, 0);
}

uint64_t sub_1E602805C()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6028138;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6028138()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6028234, 0, 0);
}

uint64_t sub_1E6028234()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6028334, v5, v4);
  }
}

uint64_t sub_1E6028334()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6028138;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6028400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6028534, 0, 0);
}

uint64_t sub_1E6028534()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E6028630;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E6028630()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6028748, 0, 0);
}

uint64_t sub_1E6028748()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E6028824;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E6028824()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6028920, 0, 0);
}

uint64_t sub_1E6028920()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6028A20, v5, v4);
  }
}

uint64_t sub_1E6028A20()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6028824;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E6028AEC(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E60270F0(a1, v1 + v5);
}

uint64_t sub_1E6028BC8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6027538(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6028D24(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6027D14(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_2(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E6028FE4(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073460, &qword_1E65ED1F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6028400(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t GalleryDescriptor.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GalleryDescriptor.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GalleryDescriptor() + 28);
  v4 = sub_1E65D72D8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E60291FC()
{
  v1 = 0x696669746E656469;
  v2 = 0x5379616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x656C746974;
  }

  if (*v0)
  {
    v1 = 0x74616E6974736564;
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

uint64_t sub_1E6029288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E602A284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E60292B0(uint64_t a1)
{
  v2 = sub_1E6029560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E60292EC(uint64_t a1)
{
  v2 = sub_1E6029560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GalleryDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073470, &qword_1E65ED260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6029560();
  sub_1E65E6DA8();
  v11 = *v3;
  v12 = v3[1];
  v15[15] = 0;
  sub_1E65E6B48();
  if (!v2)
  {
    v15[14] = *(v3 + 16);
    v15[13] = 1;
    sub_1E60295B4();
    sub_1E65E6B78();
    v15[12] = *(v3 + 17);
    v15[11] = 2;
    sub_1E6029608();
    sub_1E65E6B78();
    v13 = *(type metadata accessor for GalleryDescriptor() + 28);
    v15[10] = 3;
    sub_1E65D72D8();
    sub_1E5DF6B78(&qword_1EE2D7290, MEMORY[0x1E6968848]);
    sub_1E65E6B78();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E6029560()
{
  result = qword_1ED073478;
  if (!qword_1ED073478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073478);
  }

  return result;
}

unint64_t sub_1E60295B4()
{
  result = qword_1ED073480;
  if (!qword_1ED073480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073480);
  }

  return result;
}

unint64_t sub_1E6029608()
{
  result = qword_1ED073488;
  if (!qword_1ED073488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073488);
  }

  return result;
}

uint64_t GalleryDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_1E65D72D8();
  v23 = *(v3 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073490, &qword_1E65ED268);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v11 = type metadata accessor for GalleryDescriptor();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E6029560();
  v27 = v10;
  v16 = v28;
  sub_1E65E6D98();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = v11;
  v17 = v6;
  v19 = v25;
  v18 = v26;
  v34 = 0;
  *v14 = sub_1E65E6AA8();
  *(v14 + 1) = v20;
  v22[1] = v20;
  v32 = 1;
  sub_1E6029A34();
  sub_1E65E6AD8();
  v14[16] = v33;
  v30 = 2;
  sub_1E6029A88();
  sub_1E65E6AD8();
  v14[17] = v31;
  v29 = 3;
  sub_1E5DF6B78(&qword_1ED0734A8, MEMORY[0x1E6968848]);
  sub_1E65E6AD8();
  (*(v19 + 8))(v27, v18);
  (*(v23 + 32))(&v14[*(v28 + 28)], v17, v3);
  sub_1E6029ADC(v14, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E6029B40(v14);
}

unint64_t sub_1E6029A34()
{
  result = qword_1ED073498;
  if (!qword_1ED073498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073498);
  }

  return result;
}

unint64_t sub_1E6029A88()
{
  result = qword_1ED0734A0;
  if (!qword_1ED0734A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734A0);
  }

  return result;
}

uint64_t sub_1E6029ADC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GalleryDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6029B40(uint64_t a1)
{
  v2 = type metadata accessor for GalleryDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GalleryDescriptor.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E5D78();
  v3 = *(v0 + 16);
  sub_1E65E0018();
  v4 = *(v0 + 17);
  sub_1E65DFB58();
  sub_1E65E5D78();

  v5 = *(type metadata accessor for GalleryDescriptor() + 28);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848]);
  return sub_1E65E5B48();
}

uint64_t GalleryDescriptor.hashValue.getter()
{
  sub_1E65E6D28();
  v1 = *v0;
  v2 = v0[1];
  sub_1E65E5D78();
  v3 = *(v0 + 16);
  sub_1E65E0018();
  v4 = *(v0 + 17);
  sub_1E65DFB58();
  sub_1E65E5D78();

  v5 = *(type metadata accessor for GalleryDescriptor() + 28);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6029D74(uint64_t a1)
{
  sub_1E65E6D28();
  v3 = *v1;
  v4 = v1[1];
  sub_1E65E5D78();
  v5 = *(v1 + 16);
  sub_1E65E0018();
  v6 = *(v1 + 17);
  sub_1E65DFB58();
  sub_1E65E5D78();

  v7 = *(a1 + 28);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t sub_1E6029E50(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1E65E5D78();
  v6 = *(v2 + 16);
  sub_1E65E0018();
  v7 = *(v2 + 17);
  sub_1E65DFB58();
  sub_1E65E5D78();

  v8 = *(a2 + 28);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848]);
  return sub_1E65E5B48();
}

uint64_t sub_1E6029F10(uint64_t a1, uint64_t a2)
{
  sub_1E65E6D28();
  v4 = *v2;
  v5 = v2[1];
  sub_1E65E5D78();
  v6 = *(v2 + 16);
  sub_1E65E0018();
  v7 = *(v2 + 17);
  sub_1E65DFB58();
  sub_1E65E5D78();

  v8 = *(a2 + 28);
  sub_1E65D72D8();
  sub_1E5DF6B78(&qword_1ED0734B0, MEMORY[0x1E6968848]);
  sub_1E65E5B48();
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17GalleryDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E65E6C18() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if ((sub_1E65E0008() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 17);
  v8 = *(a2 + 17);
  v9 = sub_1E65DFB58();
  v11 = v10;
  if (v9 == sub_1E65DFB58() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1E65E6C18();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = *(type metadata accessor for GalleryDescriptor() + 28);

  return sub_1E65D7288();
}

unint64_t sub_1E602A180()
{
  result = qword_1ED0734C0;
  if (!qword_1ED0734C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734C0);
  }

  return result;
}

unint64_t sub_1E602A1D8()
{
  result = qword_1ED0734C8;
  if (!qword_1ED0734C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734C8);
  }

  return result;
}

unint64_t sub_1E602A230()
{
  result = qword_1ED0734D0;
  if (!qword_1ED0734D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0734D0);
  }

  return result;
}

uint64_t sub_1E602A284(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5379616C70736964 && a2 == 0xEC000000656C7974 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E65E6C18();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t RouteDestination.appendingAnnotation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1E602A4E0(v2, a2, type metadata accessor for RouteResource);
  v5 = type metadata accessor for RouteDestination();
  sub_1E602A4E0(v2 + *(v5 + 20), a2 + *(v5 + 20), type metadata accessor for RouteSource);
  v6 = *(v2 + *(v5 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734D8, &qword_1E65ED468);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = v4;

  v8 = sub_1E602A670(inited, v6);
  result = swift_setDeallocating();
  *(a2 + *(v5 + 24)) = v8;
  return result;
}

uint64_t sub_1E602A4E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t RouteDestination.withResource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E602A4E0(a1, a2, type metadata accessor for RouteResource);
  v4 = type metadata accessor for RouteDestination();
  sub_1E602A4E0(v2 + *(v4 + 20), a2 + *(v4 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v4 + 24)) = *(v2 + *(v4 + 24));
}

uint64_t RouteDestination.withSource(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E602A4E0(v2, a2, type metadata accessor for RouteResource);
  v5 = type metadata accessor for RouteDestination();
  sub_1E602A4E0(a1, a2 + *(v5 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v5 + 24)) = *(v2 + *(v5 + 24));
}

uint64_t sub_1E602A670(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1E60F11A0(&v6, v4);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1E602A6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1E65DAC98();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1E5DFD1CC(a1, v7, &qword_1ED0734E0, &qword_1E66012E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED0734E0, &qword_1E66012E0);
    sub_1E5DFE50C(v7, &qword_1ED0734E0, &qword_1E66012E0);
    v16 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_1E602A934(v13, a2);
    sub_1E5DFE50C(a1, &qword_1ED0734E0, &qword_1E66012E0);
    (*(v9 + 8))(v15, v8);
    v16 = 0;
  }

  v17 = sub_1E65DD1A8();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

uint64_t sub_1E602A934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[7] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v43[6] = v43 - v5;
  v6 = sub_1E65D9A78();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v43 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v43 - v15;
  v17 = sub_1E65DCD48();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v43[3] = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v43[5] = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v43[4] = v43 - v24;
  sub_1E65DAC38();
  sub_1E65DC2D8();
  sub_1E65DAC48();
  v25 = sub_1E65D9A48();
  v27 = v26;
  v29 = v28;
  v30 = *(v7 + 8);
  v30(v16, v6);
  v50 = v25;
  v51 = v27;
  v52 = v29 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734F0, &qword_1E65ED478);
  sub_1E65D7F98();
  sub_1E5F87058(v25, v27, v29 & 1);
  v43[2] = v48;
  v43[1] = v49;
  sub_1E65DAC48();
  v31 = sub_1E65D9A58();
  v33 = v32;
  v35 = v34;
  v30(v14, v6);
  v45 = v31;
  v46 = v33;
  v47 = v35 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734F8, &qword_1E65ED480);
  sub_1E65D7F98();
  sub_1E5F87058(v31, v33, v35 & 1);
  sub_1E65DAC48();
  v36 = sub_1E65D9A68();
  v38 = v37;
  v40 = v39;
  v30(v11, v6);
  v43[10] = v36;
  v43[11] = v38;
  v44 = v40 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073500, &qword_1E65ED488);
  sub_1E65D7F98();
  sub_1E5F87058(v36, v38, v40 & 1);
  sub_1E65DCD08();
  sub_1E65DAC68();
  sub_1E65DAC78();
  sub_1E65D74C8();

  sub_1E65DAC88();
  sub_1E65DC2D8();
  sub_1E65DAC58();
  sub_1E65DD158();
  v41 = sub_1E65DAC98();
  return (*(*(v41 - 8) + 8))(a1, v41);
}

uint64_t sub_1E602AD74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073508, &qword_1E65ED490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1E65DD1A8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1E5DFD1CC(a1, v7, &qword_1ED073508, &qword_1E65ED490);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1E5DFE50C(a1, &qword_1ED073508, &qword_1E65ED490);
    sub_1E5DFE50C(v7, &qword_1ED073508, &qword_1E65ED490);
    v16 = 1;
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    sub_1E602AFDC(v13, a2);
    sub_1E5DFE50C(a1, &qword_1ED073508, &qword_1E65ED490);
    (*(v9 + 8))(v15, v8);
    v16 = 0;
  }

  v17 = sub_1E65DAC98();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

uint64_t sub_1E602AFDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v50 - v5;
  v6 = sub_1E65DCD48();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65D9A78();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v61 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  sub_1E65DD148();
  v21 = sub_1E65DC2F8();
  v22 = *(v21 - 8);
  v55 = *(v22 + 48);
  v56 = v22 + 48;
  v23 = v55(v20, 1, v21);
  v62 = v14;
  v59 = v21;
  v51 = v22;
  if (v23 == 1)
  {
    sub_1E5DFE50C(v20, &qword_1ED0734E8, &qword_1E65ED470);
    v57 = 0xE000000000000000;
    v58 = 0;
  }

  else
  {
    v24 = sub_1E65DC2E8();
    v57 = v25;
    v58 = v24;
    (*(v22 + 8))(v20, v21);
  }

  sub_1E65DD168();
  v26 = sub_1E65DCD18();
  v28 = v27;
  v29 = *(v7 + 8);
  v29(v10, v6);
  v68 = v26;
  v69 = v28;
  sub_1E602B5C0();
  sub_1E65D7FA8();
  v54 = v70;
  v53 = v71;
  v52 = v72;
  sub_1E65DD168();
  v30 = sub_1E65DCD28();
  v31 = a1;
  v33 = v32;
  v29(v10, v6);
  v66 = v30;
  v67 = v33;
  sub_1E602B614();
  sub_1E65D7FA8();
  sub_1E65DD168();
  v34 = sub_1E65DCD38();
  v36 = v35;
  v29(v10, v6);
  v64 = v34;
  v65 = v36;
  sub_1E602B668();
  sub_1E65D7FA8();
  v37 = v31;
  sub_1E65D9A38();
  sub_1E65DD188();
  v38 = v60;
  sub_1E65DD138();
  v39 = sub_1E65D74E8();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_1E5DFE50C(v38, &qword_1ED072340, &qword_1E65EA410);
    v41 = v61;
  }

  else
  {
    v42 = sub_1E65D7428();
    v44 = v43;
    (*(v40 + 8))(v38, v39);
    v70 = v42;
    v71 = v44;
    sub_1E5F9AEA8();
    sub_1E65E66C8();
    v46 = v45;

    v41 = v61;
    if (v46)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v47 = v59;
  sub_1E65DD198();
  if (v55(v41, 1, v47) == 1)
  {
    sub_1E5DFE50C(v41, &qword_1ED0734E8, &qword_1E65ED470);
  }

  else
  {
    sub_1E65DC2E8();
    (*(v51 + 8))(v41, v47);
  }

  sub_1E65DD178();
  sub_1E65DAC28();
  v48 = sub_1E65DD1A8();
  return (*(*(v48 - 8) + 8))(v37, v48);
}

unint64_t sub_1E602B5C0()
{
  result = qword_1ED073510;
  if (!qword_1ED073510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073510);
  }

  return result;
}

unint64_t sub_1E602B614()
{
  result = qword_1ED073518;
  if (!qword_1ED073518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073518);
  }

  return result;
}

unint64_t sub_1E602B668()
{
  result = qword_1ED073520;
  if (!qword_1ED073520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED073520);
  }

  return result;
}

uint64_t sub_1E602B6BC@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v91 = &v60 - v4;
  v5 = type metadata accessor for AccountService();
  Description = v5[-1].Description;
  v89 = v5;
  v90 = Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v5);
  v81 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecommendationService();
  v9 = v8[-1].Description;
  v10 = *(v9 + 8);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = v11;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  v87 = *(v79 - 8);
  v12 = *(v87 + 64);
  v13 = MEMORY[0x1EEE9AC00](v79);
  v78 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v60 - v15;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v17 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v82 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v18 = type metadata accessor for AppEnvironment();
  v71 = v18[24];
  v19 = v18[6];
  v76 = v19;
  v64 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  v20 = v18[34];
  KeyPath = swift_getKeyPath();
  v21 = v9;
  v22 = *(v9 + 2);
  v69 = v9 + 16;
  v70 = v22;
  v23 = v83;
  v24 = v8;
  v22();
  v25 = v90;
  v75 = v90[2];
  v77 = v90 + 2;
  v26 = v81;
  v75(v81, v17 + v19, v89);
  sub_1E5DF650C(v17 + v20, &v92);
  v68 = v21[80];
  v27 = (v68 + 16) & ~v68;
  v67 = v68 | 7;
  v28 = (v84 + *(v25 + 80) + v27) & ~*(v25 + 80);
  v72 = *(v25 + 80);
  v74 = v7;
  v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v31 = *(v21 + 4);
  v65 = v21 + 32;
  v66 = v31;
  v61 = v8;
  v31(v30 + v27, v23, v8);
  v32 = v25[4];
  v90 = v25 + 4;
  v73 = v32;
  v32(v30 + v28, v26, v89);
  *(v30 + v29) = v64;
  sub_1E5DF599C(&v92, v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_retain_n();
  v33 = v85;
  sub_1E65E4E08();
  v34 = v88;
  v35 = v79;
  v88[3] = v79;
  v34[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v37 = v87;
  v38 = *(v87 + 16);
  v38(boxed_opaque_existential_1, v33, v35);
  v39 = v38;
  v63 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EB9E0;
  v40 = sub_1E65E60A8();
  v41 = *(v40 - 8);
  v62 = *(v41 + 56);
  v64 = v41 + 56;
  v62(v91, 1, 1, v40);
  v42 = v83;
  (v70)(v83, v82 + v71, v24);
  v43 = v78;
  v39(v78, v33, v35);
  v44 = (v68 + 32) & ~v68;
  v45 = v37;
  v46 = *(v37 + 80);
  v47 = (v84 + v44 + v46) & ~v46;
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = 0;
  v66(v48 + v44, v42, v61);
  v84 = *(v45 + 32);
  v84(v48 + v47, v43, v35);
  v49 = v91;
  v50 = sub_1E6059EAC(0, 0, v91, &unk_1E65ED4D8, v48);
  *(KeyPath + 32) = v50;
  v62(v49, 1, 1, v40);
  v51 = v81;
  v52 = v89;
  v75(v81, v82 + v76, v89);
  v53 = v85;
  v63(v43, v85, v35);
  v54 = (v72 + 32) & ~v72;
  v55 = (v54 + v74 + v46) & ~v46;
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v73(v56 + v54, v51, v52);
  v84(v56 + v55, v43, v35);
  v57 = sub_1E6059EAC(0, 0, v91, &unk_1E65ED4E8, v56);
  v58 = KeyPath;
  *(KeyPath + 40) = v57;
  result = (*(v87 + 8))(v53, v35);
  v88[5] = v58;
  return result;
}

uint64_t sub_1E602BEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState() + 220);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1E602BF64(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppState() + 220);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073560, &qword_1E65ED560) + 28);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

uint64_t sub_1E602C00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[195] = a5;
  v5[189] = a4;
  v5[183] = a3;
  v5[177] = a2;
  v5[171] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073548, &qword_1E65ED508) - 8) + 64) + 15;
  v5[201] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v5[202] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470) - 8) + 64) + 15;
  v5[203] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0) - 8) + 64) + 15;
  v5[204] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073550, &qword_1E65ED510) - 8) + 64) + 15;
  v5[205] = swift_task_alloc();
  v11 = sub_1E65D7848();
  v5[206] = v11;
  v12 = *(v11 - 8);
  v5[207] = v12;
  v13 = *(v12 + 64) + 15;
  v5[208] = swift_task_alloc();
  v14 = type metadata accessor for AccountService();
  v5[209] = v14;
  Description = v14[-1].Description;
  v5[210] = Description;
  v5[211] = Description[8];
  v5[212] = swift_task_alloc();
  v16 = type metadata accessor for RecommendationService();
  v5[213] = v16;
  v17 = v16[-1].Description;
  v5[214] = v17;
  v5[215] = v17[8];
  v5[216] = swift_task_alloc();
  v18 = sub_1E65D8A78();
  v5[217] = v18;
  v19 = *(v18 - 8);
  v5[218] = v19;
  v20 = *(v19 + 64) + 15;
  v5[219] = swift_task_alloc();
  v5[220] = swift_task_alloc();
  v21 = sub_1E65DDE68();
  v5[221] = v21;
  v22 = *(v21 - 8);
  v5[222] = v22;
  v23 = *(v22 + 64) + 15;
  v5[223] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602C380, 0, 0);
}

uint64_t sub_1E602C380()
{
  v1 = v0[223];
  v2 = v0[222];
  v3 = v0[221];
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAB28], v3);
  v4 = sub_1E65DDC68();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[217];
    v6 = v0[216];
    v7 = v0[215];
    v8 = v0[214];
    v9 = v0[213];
    v10 = v0[212];
    v32 = v0[220];
    v34 = v0[211];
    v11 = v0[210];
    v12 = v0[209];
    v31 = v0[183];
    (*(v8 + 16))(v6, v0[177], v9);
    v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v14 = swift_allocObject();
    v0[224] = v14;
    (*(v8 + 32))(v14 + v13, v6, v9);
    swift_asyncLet_begin();
    (*(v11 + 16))(v10, v31, v12);
    v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v16 = swift_allocObject();
    v0[225] = v16;
    (*(v11 + 32))(v16 + v15, v10, v12);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 82, v0 + 167, sub_1E602C724, v0 + 162);
  }

  else
  {
    v17 = sub_1E65D9288();
    sub_1E602E8C0(&qword_1ED073558, MEMORY[0x1E69CBF78]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69CBF60], v17);
    swift_willThrow();
    v19 = v0[223];
    v20 = v0[220];
    v21 = v0[219];
    v22 = v0[216];
    v23 = v0[212];
    v24 = v0[208];
    v25 = v0[205];
    v26 = v0[204];
    v27 = v0[203];
    v28 = v0[202];
    v33 = v0[201];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1E602C724()
{
  if (v0)
  {

    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = v1[167];
    v4 = v1[168];
  }

  v1[227] = v3;
  v1[226] = v2;
  v5 = v1[220];

  return MEMORY[0x1EEE6DEC0](v1 + 2, v5, sub_1E602C7B4, v1 + 172);
}

uint64_t sub_1E602C7B4()
{
  *(v1 + 1824) = v0;
  if (v0)
  {
    v2 = sub_1E602CCBC;
  }

  else
  {
    v2 = sub_1E602C7E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E602C7E8()
{
  v1 = v0[227];
  v2 = v0[226];
  (*(v0[218] + 16))(v0[219], v0[220], v0[217]);
  v3 = sub_1E65E6658();
  v4 = v0[227];
  if (v3)
  {
    v5 = v0[227];
  }

  else
  {
    v34 = v0[227];
    v33 = v0[226];
  }

  v6 = v0[219];
  v7 = v0[208];
  v8 = v0[204];
  v9 = v0[189];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65D8A48();
  v10 = sub_1E65DAC98();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1E5DFE50C(v0[204], &qword_1ED0734E0, &qword_1E66012E0);
    v12 = 1;
  }

  else
  {
    v13 = v0[205];
    v14 = v0[204];
    v15 = v0[203];
    v16 = v0[202];
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E1B58();
    (*(v11 + 8))(v14, v10);
    v12 = 0;
  }

  v17 = v0[219];
  v18 = v0[218];
  v19 = v0[208];
  v20 = v0[207];
  v31 = v0[217];
  v32 = v0[206];
  v21 = v0[205];
  v22 = v0[201];
  v23 = v0[195];
  v29 = v0[228];
  v30 = v0[171];
  v24 = sub_1E65E1B68();
  (*(*(v24 - 8) + 56))(v21, v12, 1, v24);
  v0[169] = sub_1E65D8A58();
  v0[170] = v25;
  sub_1E65DC488();
  sub_1E602E8C0(&qword_1EE2D6B60, MEMORY[0x1E699DC60]);
  sub_1E65E1748();
  v26 = sub_1E65D8A38();
  v27 = swift_task_alloc();
  *(v27 + 16) = v19;
  *(v27 + 24) = v23;
  sub_1E6403940(sub_1E602E908, v27, v26);

  sub_1E65E1B18();
  (*(v18 + 8))(v17, v31);
  (*(v20 + 8))(v19, v32);

  return MEMORY[0x1EEE6DEB0](v0 + 82, v0 + 167, sub_1E602CB48, v0 + 190);
}

uint64_t sub_1E602CBA0()
{
  v1 = v0[225];
  v2 = v0[224];
  v3 = v0[223];
  v4 = v0[220];
  v5 = v0[219];
  v6 = v0[216];
  v7 = v0[212];
  v8 = v0[208];
  v9 = v0[205];
  v10 = v0[204];
  v13 = v0[203];
  v14 = v0[202];
  v15 = v0[201];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E602CCBC()
{
  v1 = *(v0 + 1816);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1336, sub_1E602CD28, v0 + 1424);
}

uint64_t sub_1E602CD80()
{
  v1 = v0[225];
  v2 = v0[224];

  v3 = v0[223];
  v4 = v0[220];
  v5 = v0[219];
  v6 = v0[216];
  v7 = v0[212];
  v8 = v0[208];
  v9 = v0[205];
  v10 = v0[204];
  v11 = v0[203];
  v12 = v0[202];
  v15 = v0[201];
  v16 = v0[228];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E602CE98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E602CEB8, 0, 0);
}

uint64_t sub_1E602CEB8()
{
  v1 = v0[3];
  v2 = RecommendationService.fetchOnboardingDetail.getter();
  v0[4] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FACF3C;
  v6 = v0[2];

  return v8(v6);
}

uint64_t sub_1E602CFB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E602CFD4, 0, 0);
}

uint64_t sub_1E602CFD4()
{
  v1 = v0[3];
  v2 = AccountService.fetchUserFirstName.getter();
  v0[4] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E602D0C8;

  return v7();
}

uint64_t sub_1E602D0C8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = sub_1E5FEE4E8;
  }

  else
  {
    v10 = v6[4];

    v6[7] = a2;
    v6[8] = a1;
    v9 = sub_1E6002FEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E602D204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073530, &qword_1E65ED4F0) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073538, &qword_1E65ED4F8);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073540, &qword_1E65ED500);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602D370, 0, 0);
}

uint64_t sub_1E602D370()
{
  v1 = v0[2];
  v2 = RecommendationService.makeOnboardingDetailCacheUpdatedStream.getter();
  v0[11] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1E602D46C;
  v6 = v0[7];

  return v8(v6);
}

uint64_t sub_1E602D46C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E602D584, 0, 0);
}

uint64_t sub_1E602D584()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E602D660;
  v7 = v0[10];
  v8 = v0[8];
  v9 = v0[4];

  return MEMORY[0x1EEE6D9C8](v9, 0, 0, v8);
}

uint64_t sub_1E602D660()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E602D75C, 0, 0);
}

uint64_t sub_1E602D75C()
{
  v1 = v0[4];
  v2 = type metadata accessor for OnboardingDetailCacheUpdated();
  if ((*(v2[-1].Description + 6))(v1, 1, v2) == 1)
  {
    v3 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v7 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E602D8AC, v7, v6);
  }
}

uint64_t sub_1E602D8AC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E602D930, 0, 0);
}

uint64_t sub_1E602D930()
{
  sub_1E5DFE50C(v0[4], &qword_1ED073530, &qword_1E65ED4F0);
  v1 = *(MEMORY[0x1E69E8678] + 4);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1E602D660;
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[4];

  return MEMORY[0x1EEE6D9C8](v5, 0, 0, v4);
}

uint64_t sub_1E602D9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v9;
  v10 = *(v9 - 8);
  v5[8] = v10;
  v11 = *(v10 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602DB24, 0, 0);
}

uint64_t sub_1E602DB24()
{
  v1 = v0[2];
  v2 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1E602DC20;
  v6 = v0[6];

  return v8(v6);
}

uint64_t sub_1E602DC20()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E602DD38, 0, 0);
}

uint64_t sub_1E602DD38()
{
  v1 = v0[9];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  sub_1E65E60F8();
  (*(v3 + 8))(v2, v4);
  v5 = *(MEMORY[0x1E69E8678] + 4);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1E602DE14;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v8);
}

uint64_t sub_1E602DE14()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E602DF10, 0, 0);
}

uint64_t sub_1E602DF10()
{
  if (*(v0 + 112) == 1)
  {
    v1 = *(v0 + 48);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v5 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E602E010, v5, v4);
  }
}

uint64_t sub_1E602E010()
{
  v1 = v0[13];
  v2 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  sub_1E65E4E18();
  v3 = *(MEMORY[0x1E69E8678] + 4);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E602DE14;
  v5 = v0[9];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v6);
}

uint64_t sub_1E602E0DC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for AccountService()[-1].Description;
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v8[8] + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v10);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E602C00C(a1, v1 + v6, v1 + v9, v12, v1 + v11);
}

uint64_t sub_1E602E25C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E602D204(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_3(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E602E51C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E602D9F0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E602E678(uint64_t a1)
{
  Description = type metadata accessor for RecommendationService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E602CE98(a1, v1 + v5);
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_1E602E7E4(uint64_t a1)
{
  Description = type metadata accessor for AccountService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E602CFB4(a1, v1 + v5);
}

uint64_t sub_1E602E8C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E602E924@<X0>(char *a1@<X8>)
{
  v55 = sub_1E65D9908();
  v53 = *(v55 - 8);
  v2 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v54 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D9F88();
  v44 = *(v51 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073588, &unk_1E65FEFD0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED073590, &qword_1E65ED568);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v44 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
  sub_1E65DE698();
  sub_1E60EF0CC(v17);
  sub_1E5DFE50C(v10, &qword_1ED073588, &unk_1E65FEFD0);
  v52 = v17;
  sub_1E602F6C4(v17, v15);
  v18 = sub_1E65DECD8();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v15, 1, v18) == 1)
  {
    sub_1E5DFE50C(v15, &unk_1ED073590, &qword_1E65ED568);
LABEL_5:
    v22 = MEMORY[0x1E69CCA80];
    goto LABEL_6;
  }

  sub_1E65DECB8();
  v21 = v20;
  (*(v19 + 8))(v15, v18);
  if (!v21)
  {
    goto LABEL_5;
  }

  v22 = MEMORY[0x1E69CCA78];
LABEL_6:
  v23 = v44;
  v24 = v51;
  (*(v44 + 104))(v6, *v22, v51);
  sub_1E65DE6D8();
  v49 = v57;
  v50 = v56;
  v25 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v47 = v26;
  v48 = v25;
  v27 = sub_1E65DE6E8();
  v45 = v28;
  v46 = v27;
  v29 = type metadata accessor for PreviewButtonViewMetrics();
  v30 = v29[7];
  v31 = *MEMORY[0x1E69CBCC8];
  v32 = sub_1E65D8F28();
  (*(*(v32 - 8) + 104))(&a1[v30], v31, v32);
  (*(v23 + 16))(&a1[v29[8]], v6, v24);
  v34 = v53;
  v33 = v54;
  v35 = v55;
  (*(v53 + 104))(v54, *MEMORY[0x1E69CC420], v55);
  v36 = sub_1E65D98F8();
  v38 = v37;
  (*(v34 + 8))(v33, v35);
  (*(v23 + 8))(v6, v24);
  result = sub_1E5DFE50C(v52, &unk_1ED073590, &qword_1E65ED568);
  v40 = v49;
  *a1 = v50;
  *(a1 + 1) = v40;
  v41 = v47;
  *(a1 + 2) = v48;
  *(a1 + 3) = v41;
  v42 = v45;
  *(a1 + 4) = v46;
  *(a1 + 5) = v42;
  v43 = &a1[v29[9]];
  *v43 = v36;
  v43[1] = v38;
  return result;
}

uint64_t sub_1E602EDB0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v87 = &v74 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v86 = &v74 - v10;
  v88 = sub_1E65D8F28();
  v90 = *(v88 - 8);
  v11 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v89 = &v74 - v16;
  v17 = sub_1E65D8C68();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v74 - v24;
  v26 = type metadata accessor for PreviewButtonViewMetrics();
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = (&v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = (&v74 - v32);
  if (a1)
  {
    v81 = a2;
    v34 = v31;
    v78 = v31;
    sub_1E602E924(&v74 - v32);
    v35 = sub_1E65D9D78();
    v36 = *(*(v35 - 8) + 56);
    v82 = v25;
    v36(v25, 1, 1, v35);
    v37 = *MEMORY[0x1E69CBA28];
    v84 = v18;
    v85 = v21;
    v38 = *(v18 + 104);
    v83 = v17;
    v38(v21, v37, v17);
    v39 = sub_1E65D74E8();
    (*(*(v39 - 8) + 56))(v89, 1, 1, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    v40 = *(sub_1E65D86A8() - 8);
    v41 = *(v40 + 72);
    v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1E65EA670;
    v80 = v43;
    sub_1E602F604(v33, v30);
    v44 = *v30;
    v45 = v13;
    v75 = v13;
    v46 = v30[1];
    v76 = v30[2];
    v77 = v44;
    v47 = v30[3];
    v79 = v30[4];
    v48 = v30[5];
    v49 = v91;
    v50 = *(v90 + 16);
    v50(v45, v30 + *(v34 + 28), v88);

    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v51 = v75;
    sub_1E65D8678();
    sub_1E602F668(v30);
    v52 = sub_1E65DA208();
    v53 = v86;
    (*(*(v52 - 8) + 56))(v86, 1, 1, v52);
    v54 = v33[1];
    v79 = *v33;
    v55 = v88;
    v50(v51, v33 + *(v78 + 28), v88);
    v56 = *MEMORY[0x1E69CC420];
    v57 = sub_1E65D9908();
    v58 = *(v57 - 8);
    v59 = v87;
    (*(v58 + 104))(v87, v56, v57);
    v60 = v59;
    (*(v58 + 56))(v59, 0, 1, v57);

    v61 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
    (*(*(v62 - 8) + 8))(v81, v62);
    sub_1E602F668(v33);
    sub_1E5FAB460(v82, v49, &qword_1ED073578, &qword_1E65F0E60);
    v63 = type metadata accessor for PageMetricsClick();
    (*(v84 + 32))(v49 + v63[5], v85, v83);
    sub_1E5FAB460(v89, v49 + v63[6], &qword_1ED072340, &qword_1E65EA410);
    *(v49 + v63[7]) = v80;
    sub_1E5FAB460(v53, v49 + v63[8], &qword_1ED073570, &unk_1E65F4570);
    v64 = (v49 + v63[9]);
    *v64 = 0;
    v64[1] = 0;
    v65 = (v49 + v63[10]);
    *v65 = 0;
    v65[1] = 0;
    *(v49 + v63[11]) = v61;
    v66 = (v49 + v63[12]);
    *v66 = 0;
    v66[1] = 0;
    v67 = (v49 + v63[13]);
    *v67 = v79;
    v67[1] = v54;
    (*(v90 + 32))(v49 + v63[14], v51, v55);
    sub_1E5FAB460(v60, v49 + v63[15], &qword_1ED072330, &qword_1E65EAB70);
    return (*(*(v63 - 1) + 56))(v49, 0, 1, v63);
  }

  else
  {
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073580, &qword_1E65FEFF0);
    (*(*(v69 - 8) + 8))(a2, v69);
    v70 = type metadata accessor for PageMetricsClick();
    v71 = *(*(v70 - 8) + 56);
    v72 = v70;
    v73 = v91;

    return v71(v73, 1, 1, v72);
  }
}

uint64_t sub_1E602F604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewButtonViewMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E602F668(uint64_t a1)
{
  v2 = type metadata accessor for PreviewButtonViewMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E602F6C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED073590, &qword_1E65ED568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E602F734(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E602F88C, 0, 0);
  }

  else
  {
    v7 = *(v4 + 32);

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t sub_1E602F88C()
{
  v18 = v0;
  v1 = v0[4];

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_1E65E3B68();
  __swift_project_value_buffer(v3, qword_1EE2EA2A0);
  v4 = v2;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v0[2] = v8;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v17);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to register tabBadgeSelectionSheet placement: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E602FA64(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1E65D76A8();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_1E65D92D8();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E602FB80, 0, 0);
}

uint64_t sub_1E602FB80()
{
  v1 = v0[12] + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_serviceSubscriptionService;
  v2 = ServiceSubscriptionService.fetchServiceSubscription.getter();
  v0[19] = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_1E602FC8C;
  v6 = v0[18];

  return v8(v6, 1);
}

uint64_t sub_1E602FC8C()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1E602FED4;
  }

  else
  {
    v3 = sub_1E602FDA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E602FDA0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  sub_1E65D7698();
  v8 = sub_1E65D92A8();
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v2, v3);
  v9 = sub_1E65DB7D8();
  v10 = MEMORY[0x1E69CD5F0];
  if ((v8 & 1) == 0)
  {
    v10 = MEMORY[0x1E69CD5F8];
  }

  (*(*(v9 - 8) + 104))(v0[11], *v10, v9);
  v11 = v0[18];
  v12 = v0[15];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E602FED4()
{
  v1 = v0[21];
  v2 = v0[19];

  swift_getErrorValue();
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[9];
  v0[5] = MEMORY[0x1E69CC9A8];
  v0[6] = sub_1E5FFF464();
  *(v0 + 16) = 4;
  LOBYTE(v3) = sub_1E65E6CA8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = sub_1E65DB7D8();
  v7 = MEMORY[0x1E69CD5F8];
  if ((v3 & 1) == 0)
  {
    v7 = MEMORY[0x1E69CD600];
  }

  (*(*(v6 - 8) + 104))(v0[11], *v7, v6);
  v8 = v0[18];
  v9 = v0[15];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E6030010(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 216) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60) - 8) + 64) + 15;
  *(v2 + 88) = swift_task_alloc();
  v4 = sub_1E65DB438();
  *(v2 + 96) = v4;
  v5 = *(v4 - 8);
  *(v2 + 104) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670) - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70) - 8) + 64) + 15;
  *(v2 + 128) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78) - 8) + 64) + 15;
  *(v2 + 144) = swift_task_alloc();
  v11 = sub_1E65D7A38();
  *(v2 + 152) = v11;
  v12 = *(v11 - 8);
  *(v2 + 160) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 168) = swift_task_alloc();
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6030254, 0, 0);
}

uint64_t sub_1E6030254()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 160);
  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v27 = *(v0 + 112);
  v24 = *(v0 + 88);
  v22 = *(v0 + 176);
  v23 = *(v0 + 80);
  v6 = *(v0 + 216);
  v7 = sub_1E65E3B68();
  __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E65DB7F8();
  v8 = *MEMORY[0x1E69CBD58];
  v9 = sub_1E65D8F38();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v3, v8, v9);
  (*(v10 + 56))(v3, 0, 1, v9);
  v11 = sub_1E65D74E8();
  (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
  v12 = sub_1E65D9908();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_1E65D9F88();
  (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
  sub_1E65D7A28();
  v14 = MetricService.makeOverlayMetricFields.getter();
  *(v0 + 184) = v15;
  (*(v1 + 16))(v25, v22, v26);
  sub_1E65D8CA8();
  v16 = sub_1E65D8CB8();
  (*(*(v16 - 8) + 56))(v24, 0, 1, v16);
  v17 = MEMORY[0x1E69E7CC0];
  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E5FB8458(v17);
  sub_1E65DB428();
  v28 = (v14 + *v14);
  v18 = v14[1];
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = sub_1E6030648;
  v20 = *(v0 + 112);

  return (v28)(v20, 0);
}

uint64_t sub_1E6030648(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 192);
  v6 = *v2;
  v4[25] = v1;

  v7 = v4[23];
  v8 = v4[14];
  v9 = v4[13];
  v10 = v4[12];
  if (v1)
  {
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E603098C;
  }

  else
  {
    v4[26] = a1;
    (*(v9 + 8))(v8, v10);

    v11 = sub_1E60307F4;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E60307F4()
{
  v22 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 144);
  v16 = *(v0 + 128);
  v17 = *(v0 + 120);
  v18 = *(v0 + 112);
  v19 = *(v0 + 88);
  *(v0 + 72) = v1;
  v8 = *(v0 + 216);
  *(v0 + 56) = sub_1E65DB7F8();
  *(v0 + 64) = v9;
  sub_1E65E6848();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v1;
  sub_1E64205E4(v20, 0x6E656D6563616C70, 0xE900000000000074, isUniquelyReferenced_nonNull_native);
  *(v0 + 72) = v21;
  v11 = sub_1E65D8858();
  sub_1E6418198(v11, v12, v0 + 16);

  sub_1E6032F7C(v0 + 16);
  (*(v5 + 8))(v3, v4);
  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1E603098C()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  (*(v0[20] + 8))(v0[22], v0[19]);

  v8 = v0[1];
  v9 = v0[25];

  return v8();
}

uint64_t sub_1E6030A6C()
{
  v1[259] = v0;
  v2 = sub_1E65DB7D8();
  v1[265] = v2;
  v3 = *(v2 - 8);
  v1[271] = v3;
  v4 = *(v3 + 64) + 15;
  v1[277] = swift_task_alloc();
  v1[283] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6030B38, 0, 0);
}

uint64_t sub_1E6030B38()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[259];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v3 = EngagementService.fetchPlacement.getter();
  v0[289] = v4;
  v8 = (v3 + *v3);
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[295] = v6;
  *v6 = v0;
  v6[1] = sub_1E6030CC0;

  return v8(3);
}

uint64_t sub_1E6030CC0(uint64_t a1, char a2)
{
  v5 = *v3;
  v6 = *(*v3 + 2360);
  v7 = *v3;
  *(v5 + 2408) = a1;
  *(v5 + 2456) = v2;

  if (v2)
  {
    v8 = sub_1E6031450;
  }

  else
  {
    v9 = *(v5 + 2312);

    *(v5 + 2656) = a2;
    v8 = sub_1E6030DF4;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E6030DF4()
{
  if (*(v0 + 2656))
  {
    v1 = *(v0 + 2264);
    v2 = *(v0 + 2120);
    v3 = *(v0 + 2072);

    sub_1E6032DE4();
    swift_asyncLet_begin();

    swift_asyncLet_begin();
    v4 = swift_allocObject();
    *(v0 + 2504) = v4;
    *(v4 + 16) = v3;
    *(v4 + 24) = 3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735C0, &qword_1E65EABD0);
    swift_asyncLet_begin();
    v5 = *(v0 + 2264);

    return MEMORY[0x1EEE6DEC0](v0 + 656, v5, sub_1E6030FD0, v0 + 1936);
  }

  else
  {
    v6 = *(v0 + 2408);
    sub_1E6032B9C();
    swift_allocError();
    *v7 = 0;
    swift_willThrow();

    v8 = *(v0 + 2264);
    v9 = *(v0 + 2216);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E6030FD0()
{
  *(v1 + 2552) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 1296, v1 + 2024, sub_1E60314C8, v1 + 1984);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6031014, 0, 0);
  }
}

uint64_t sub_1E6031014()
{
  v1 = *(v0 + 2216);
  v2 = *(v0 + 2168);
  v3 = *(v0 + 2120);
  (*(v2 + 16))(v1, *(v0 + 2264), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD5F0])
  {
    goto LABEL_2;
  }

  if (v4 != *MEMORY[0x1E69CD5F8])
  {
    if (v4 == *MEMORY[0x1E69CD600])
    {
LABEL_2:
      v5 = 0;
      goto LABEL_7;
    }

    (*(*(v0 + 2168) + 8))(*(v0 + 2216), *(v0 + 2120));
  }

  v5 = 2;
LABEL_7:
  *(v0 + 2657) = v5;

  return MEMORY[0x1EEE6DEC0](v0 + 1296, v0 + 2024, sub_1E603112C, v0 + 2128);
}

uint64_t sub_1E603112C()
{
  *(v1 + 2600) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 1296, v1 + 2024, sub_1E60315F0, v1 + 2176);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6031170, 0, 0);
  }
}

uint64_t sub_1E6031170()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2024);

  sub_1E625B644(v3);

  v4 = sub_1E65E5AF8();

  [v1 setMetricsOverlay_];

  return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1976, sub_1E6031244, v0 + 2320);
}

uint64_t sub_1E6031244()
{
  *(v1 + 2648) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 1296, v1 + 2024, sub_1E6031718, v1 + 2368);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6031288, 0, 0);
  }
}

uint64_t sub_1E6031288()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2657);
  [v1 setAccount_];
  [v1 setAnonymousMetrics_];

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 2024, sub_1E6031324, v0 + 2512);
}

uint64_t sub_1E60313B8()
{
  v1 = v0[313];
  v2 = v0[283];
  v3 = v0[277];
  v4 = v0[259];

  v5 = v0[1];
  v6 = v0[301];

  return v5(v6);
}

uint64_t sub_1E6031450()
{
  v1 = v0[289];

  v2 = v0[307];
  v3 = v0[283];
  v4 = v0[277];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E603155C()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2072);

  v3 = *(v0 + 2552);
  v4 = *(v0 + 2264);
  v5 = *(v0 + 2216);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E6031684()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2072);

  v3 = *(v0 + 2600);
  v4 = *(v0 + 2264);
  v5 = *(v0 + 2216);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E60317AC()
{
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2072);

  v3 = *(v0 + 2648);
  v4 = *(v0 + 2264);
  v5 = *(v0 + 2216);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E6031840(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6031860, 0, 0);
}

uint64_t sub_1E6031860()
{
  v1 = v0[3] + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_accountService;
  v2 = AccountService.fetchCurrentAccount.getter();
  v0[4] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6031960;

  return v7();
}

uint64_t sub_1E6031960(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E5FAD050;
  }

  else
  {
    v8 = *(v4 + 32);

    *(v4 + 56) = a1;
    v7 = sub_1E5FE1740;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6031A90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E602FA64(a1);
}

uint64_t sub_1E6031B2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1E6031BCC;

  return sub_1E6030010(a3);
}

uint64_t sub_1E6031BCC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E6031D18, 0, 0);
  }
}

uint64_t sub_1E6031D3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1E6031DCC;

  return sub_1E6030A6C();
}

uint64_t sub_1E6031DCC(uint64_t a1)
{
  v3 = *(*v2 + 32);
  v4 = *v2;
  *(v4 + 40) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6031F00, 0, 0);
  }
}

uint64_t sub_1E6031F00()
{
  sub_1E65E6058();
  *(v0 + 48) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6031F94, v2, v1);
}

uint64_t sub_1E6031F94()
{
  v1 = v0[6];
  v2 = v0[2];

  v0[7] = [v2 presentedViewController];

  return MEMORY[0x1EEE6DFA0](sub_1E603201C, 0, 0);
}

uint64_t sub_1E603201C()
{
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[5];

    sub_1E6032B9C();
    swift_allocError();
    *v3 = 1;
    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];
    v9 = *(v7 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_placement);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *(v10 + 16) = v6;
    *(v10 + 24) = v7;
    *(v10 + 32) = v8;
    *(v10 + 40) = v9;
    v11 = *(MEMORY[0x1E69E8920] + 4);
    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_1E60321B8;
    v13 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v12, 0, 0, 0xD00000000000002ELL, 0x80000001E6611750, sub_1E6032B8C, v10, v13);
  }
}

uint64_t sub_1E60321B8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1E6032338;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1E60322D4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E60322D4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6032338()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1E60323A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = aBlock - v13;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v15 = sub_1E65E3B68();
  __swift_project_value_buffer(v15, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v16 = [objc_allocWithZone(MEMORY[0x1E698CCD0]) initWithRequest:a2 bag:*(a3 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_bag) presentingViewController:a4];
  v17 = [v16 presentEngagement];

  (*(v11 + 16))(v14, a1, v10);
  v18 = (*(v11 + 80) + 25) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a5;
  (*(v11 + 32))(v19 + v18, v14, v10);
  aBlock[4] = sub_1E6032BF0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E64453F4;
  aBlock[3] = &block_descriptor_0;
  v20 = _Block_copy(aBlock);

  [v17 addFinishBlock_];
  _Block_release(v20);
}

uint64_t sub_1E6032654(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v15 - v9;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  sub_1E64B80F8(0, 0, v10, &unk_1E65ED620, v12);

  if (a2)
  {
    v15[1] = a2;
    v13 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FE8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    return sub_1E65E5FF8();
  }
}

uint64_t sub_1E60327CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E60327F0, 0, 0);
}

uint64_t sub_1E60327F0()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_engagementService;
  v2 = EngagementService.resetPlacement.getter();
  *(v0 + 24) = v3;
  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1E60328F8;
  v6 = *(v0 + 40);

  return v8(v6);
}

uint64_t sub_1E60328F8()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E6032A08()
{
  v1 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_accountService;
  v2 = type metadata accessor for AccountService();
  (*(v2[-1].Description + 1))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_bag);
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_engagementService;
  v5 = type metadata accessor for EngagementService();
  (*(v5[-1].Description + 1))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_metricService;
  v7 = type metadata accessor for MetricService();
  (*(v7[-1].Description + 1))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_serviceSubscriptionService;
  v9 = type metadata accessor for ServiceSubscriptionService();
  (*(v9[-1].Description + 1))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC10Blackbeard26EngagementMessagePresenter_taskScheduler);
  swift_unknownObjectRelease();
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_1E6032B9C()
{
  result = qword_1ED0735A0;
  if (!qword_1ED0735A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0735A0);
  }

  return result;
}

uint64_t sub_1E6032BF0(uint64_t a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_1E6032654(a1, a2, v6, v7);
}

uint64_t sub_1E6032C84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFA78C;

  return sub_1E60327CC(a1, v4, v5, v6, v7);
}

uint64_t sub_1E6032D48(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6031840(a1, v1);
}

unint64_t sub_1E6032DE4()
{
  result = qword_1ED0723A0;
  if (!qword_1ED0723A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED0723A0);
  }

  return result;
}

uint64_t sub_1E6032E30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E5DFA78C;

  return sub_1E6031A90(a1);
}

uint64_t sub_1E6032ECC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6031B2C(a1, v4, v5);
}

uint64_t sub_1E6032F7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735E0, &qword_1E65ED680);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6032FF8()
{
  result = qword_1ED0735F0;
  if (!qword_1ED0735F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0735F0);
  }

  return result;
}

uint64_t PageMetricsRender.pageEndTime.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t PageMetricsRender.pageInterruptTime.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t PageMetricsRender.pageUserInteractiveTime.getter()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t PageMetricsRender.primaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PageMetricsRender() + 44);

  return sub_1E6033120(v3, a1);
}

uint64_t type metadata accessor for PageMetricsRender()
{
  result = qword_1EE2D9C60;
  if (!qword_1EE2D9C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6033120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PageMetricsRender.resourceRequestEndTime.getter()
{
  v1 = (v0 + *(type metadata accessor for PageMetricsRender() + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PageMetricsRender.resourceRequestOnScreenEndTime.getter()
{
  v1 = (v0 + *(type metadata accessor for PageMetricsRender() + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t PageMetricsRender.secondaryData.getter()
{
  v1 = *(v0 + *(type metadata accessor for PageMetricsRender() + 60));
}

uint64_t PageMetricsRender.init(isAppLaunch:pageAppearTime:pageEndTime:pageInterruptTime:pageRequestTime:pageUserInteractiveTime:preloadStatus:primaryData:resourceRequestEndTime:resourceRequestOnScreenEndTime:resourceRequestStartTime:secondaryData:isSamplingForced:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3 & 1;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5 & 1;
  *(a9 + 48) = a11;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7 & 1;
  *(a9 + 65) = a8;
  v21 = type metadata accessor for PageMetricsRender();
  result = sub_1E6033358(a13, a9 + v21[11]);
  v23 = a9 + v21[12];
  *v23 = a14;
  *(v23 + 8) = a15 & 1;
  v24 = a9 + v21[13];
  *v24 = a16;
  *(v24 + 8) = a17 & 1;
  *(a9 + v21[14]) = a12;
  *(a9 + v21[15]) = a18;
  *(a9 + v21[16]) = a19;
  return result;
}

uint64_t sub_1E6033358(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t PageMetricsRender.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E65D9D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v44 - v14;
  if (*v2 != 2)
  {
    sub_1E65E6D48();
  }

  sub_1E65E6D48();
  v16 = *(v2 + 8);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x1E694E770](*&v16);
  if (*(v2 + 24) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v17 = *(v2 + 16);
    sub_1E65E6D48();
    if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1E694E770](v18);
  }

  if (*(v2 + 40) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v19 = *(v2 + 32);
    sub_1E65E6D48();
    if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x1E694E770](v20);
  }

  v21 = *(v2 + 48);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1E694E770](*&v21);
  v22 = *(v2 + 64);
  v47 = a1;
  if (v22 == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v23 = *(v2 + 56);
    sub_1E65E6D48();
    if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    MEMORY[0x1E694E770](v24);
  }

  if (*(v2 + 65) == 4)
  {
    sub_1E65E6D48();
  }

  else
  {
    sub_1E65E6D48();
    sub_1E65DA698();
    sub_1E65E5D78();
  }

  v25 = type metadata accessor for PageMetricsRender();
  sub_1E6033120(v2 + v25[11], v15);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    (*(v5 + 32))(v11, v15, v4);
    sub_1E65E6D48();
    sub_1E603412C(&qword_1ED073608, MEMORY[0x1E69CC970]);
    sub_1E65E5B48();
    (*(v5 + 8))(v11, v4);
  }

  v26 = (v2 + v25[12]);
  if (*(v26 + 8) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v27 = *v26;
    sub_1E65E6D48();
    if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    MEMORY[0x1E694E770](v28);
  }

  v29 = (v2 + v25[13]);
  v30 = v9;
  v31 = v5;
  if (*(v29 + 8) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    v32 = *v29;
    sub_1E65E6D48();
    if ((v32 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    MEMORY[0x1E694E770](v33);
  }

  v34 = *(v2 + v25[14]);
  if (v34 == 0.0)
  {
    v34 = 0.0;
  }

  MEMORY[0x1E694E770](*&v34);
  v45 = v25;
  v46 = v2;
  v35 = *(v2 + v25[15]);
  MEMORY[0x1E694E740](*(v35 + 16));
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v30;
    v40 = *(v31 + 16);
    v38 = v31 + 16;
    v39 = v40;
    v41 = v35 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v42 = *(v38 + 56);
    do
    {
      v39(v37, v41, v4);
      sub_1E603412C(&qword_1ED073608, MEMORY[0x1E69CC970]);
      sub_1E65E5B48();
      (*(v38 - 8))(v37, v4);
      v41 += v42;
      --v36;
    }

    while (v36);
  }

  if (*(v46 + v45[16]) != 2)
  {
    sub_1E65E6D48();
  }

  return sub_1E65E6D48();
}

uint64_t PageMetricsRender.hashValue.getter()
{
  sub_1E65E6D28();
  PageMetricsRender.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6033900()
{
  sub_1E65E6D28();
  PageMetricsRender.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E6033944()
{
  sub_1E65E6D28();
  PageMetricsRender.hash(into:)(v1);
  return sub_1E65E6D78();
}

BOOL _s10Blackbeard17PageMetricsRenderV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_1E65D9D98();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073600, &qword_1E65ED750);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073618, &qword_1E65ED828);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v45 - v16;
  v18 = *a1;
  v19 = *a2;
  if (v18 == 2)
  {
    if (v19 != 2)
    {
      return 0;
    }

LABEL_6:
    if (a1[1] != a2[1])
    {
      return 0;
    }

    v20 = *(a2 + 24);
    if (a1[3])
    {
      if (!*(a2 + 24))
      {
        return v20;
      }
    }

    else
    {
      if (a1[2] != a2[2])
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v20 = *(a2 + 40);
    if (a1[5])
    {
      if (!*(a2 + 40))
      {
        return v20;
      }
    }

    else
    {
      if (a1[4] != a2[4])
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    if (a1[6] != a2[6])
    {
      return 0;
    }

    v20 = *(a2 + 64);
    if (a1[8])
    {
      if (!*(a2 + 64))
      {
        return v20;
      }
    }

    else
    {
      if (a1[7] != a2[7])
      {
        LOBYTE(v20) = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    v21 = *(a2 + 65);
    if (*(a1 + 65) == 4)
    {
      v46 = v15;
      if (v21 != 4)
      {
        return 0;
      }
    }

    else
    {
      if (v21 == 4)
      {
        return 0;
      }

      v46 = v15;
      v22 = sub_1E65DA698();
      v24 = v23;
      if (v22 == sub_1E65DA698() && v24 == v25)
      {
      }

      else
      {
        v26 = sub_1E65E6C18();

        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v45 = type metadata accessor for PageMetricsRender();
    v27 = v45[11];
    v28 = *(v46 + 48);
    sub_1E6033120(a1 + v27, v17);
    sub_1E6033120(a2 + v27, &v17[v28]);
    v29 = *(v5 + 48);
    if (v29(v17, 1, v4) == 1)
    {
      if (v29(&v17[v28], 1, v4) == 1)
      {
        sub_1E5DFE50C(v17, &qword_1ED073600, &qword_1E65ED750);
LABEL_43:
        v33 = v45;
        v34 = v45[12];
        v35 = (a1 + v34);
        v36 = *(a1 + v34 + 8);
        v37 = (a2 + v34);
        v20 = *(a2 + v34 + 8);
        if (v36)
        {
          if (!v20)
          {
            return v20;
          }
        }

        else
        {
          if (*v35 != *v37)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
            return 0;
          }
        }

        v38 = v45[13];
        v39 = (a1 + v38);
        v40 = *(a1 + v38 + 8);
        v41 = (a2 + v38);
        v20 = *(a2 + v38 + 8);
        if (v40)
        {
          if (!v20)
          {
            return v20;
          }
        }

        else
        {
          if (*v39 != *v41)
          {
            LOBYTE(v20) = 1;
          }

          if (v20)
          {
            return 0;
          }
        }

        if (*(a1 + v45[14]) == *(a2 + v45[14]) && (sub_1E61B79D0(*(a1 + v45[15]), *(a2 + v45[15])) & 1) != 0)
        {
          v42 = v33[16];
          v43 = *(a1 + v42);
          v44 = *(a2 + v42);
          if (v43 != 2)
          {
            return v44 != 2 && ((v44 ^ v43) & 1) == 0;
          }

          if (v44 == 2)
          {
            return 1;
          }
        }

        return 0;
      }
    }

    else
    {
      sub_1E6033120(v17, v12);
      if (v29(&v17[v28], 1, v4) != 1)
      {
        (*(v5 + 32))(v8, &v17[v28], v4);
        sub_1E603412C(&qword_1ED073620, MEMORY[0x1E69CC970]);
        v31 = sub_1E65E5B98();
        v32 = *(v5 + 8);
        v32(v8, v4);
        v32(v12, v4);
        sub_1E5DFE50C(v17, &qword_1ED073600, &qword_1E65ED750);
        if ((v31 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_43;
      }

      (*(v5 + 8))(v12, v4);
    }

    sub_1E5DFE50C(v17, &qword_1ED073618, &qword_1E65ED828);
    return 0;
  }

  v20 = 0;
  if (v19 != 2 && ((v19 ^ v18) & 1) == 0)
  {
    goto LABEL_6;
  }

  return v20;
}

void sub_1E6033F30()
{
  sub_1E6034080(319, &qword_1EE2D4808);
  if (v0 <= 0x3F)
  {
    sub_1E6034080(319, &qword_1EE2D4730);
    if (v1 <= 0x3F)
    {
      sub_1E6034080(319, &qword_1EE2D6FD0);
      if (v2 <= 0x3F)
      {
        sub_1E60340CC(319, &qword_1EE2D7008, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E60340CC(319, &qword_1EE2D4870, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E6034080(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1E65E6668();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1E60340CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1E65D9D98();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1E603412C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CanvasLayout<>.transform(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v72 = a1;
  v87 = a3;
  v3 = sub_1E65DBDD8();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v79 = v68 - v6;
  v7 = sub_1E65DBF08();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = *(v85 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v71 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v78 = v68 - v11;
  v12 = sub_1E65E07B8();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v77 = (v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v76 = v68 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v70 = v68 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v82 = (v68 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v74 = v68 - v22;
  v23 = sub_1E65DB948();
  v83 = *(v23 - 8);
  v84 = v23;
  v24 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65DC158();
  v27 = *(v81 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1E65DB9F8();
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v73 = v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v88 = v68 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = v68 - v37;
  v39 = sub_1E65DBB28();
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = v68 - v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0678();
  v69 = sub_1E65E07C8();
  sub_1E65E0708();
  if (v91 > 1u)
  {
    sub_1E65E0708();
    v49 = v90;
    sub_1E65DAE38();
    sub_1E65DAE38();
    if (v49 > 3)
    {
      sub_1E65DBB08();
      sub_1E65E0768();
      v61 = *MEMORY[0x1E699D3E8];
      v82 = *(v27 + 104);
      v63 = v80;
      v62 = v81;
      v82(v80, v61, v81);
      v64 = v84;
      v65 = *(v83 + 104);
      v65(v26, *MEMORY[0x1E699D178], v84);
      sub_1E65DB9E8();
      sub_1E65E0768();
      sub_1E65DBDC8();
      LODWORD(v83) = v69 & 1;
      v66 = MEMORY[0x1E699D340];
      if ((v69 & 1) == 0)
      {
        v66 = MEMORY[0x1E699D348];
      }

      (*(v85 + 104))(v71, *v66, v86);
      v82(v63, *MEMORY[0x1E699D3F0], v62);
      v65(v26, *MEMORY[0x1E699D170], v64);
      sub_1E65DB9E8();
    }

    else
    {
      sub_1E65DBB08();
      v56 = *MEMORY[0x1E699D3E8];
      v77 = *(v27 + 104);
      v58 = v80;
      v57 = v81;
      v77(v80, v56, v81);
      v59 = v84;
      v60 = *(v83 + 104);
      v60(v26, *MEMORY[0x1E699D178], v84);
      sub_1E65DB9E8();
      sub_1E65E0768();
      (*(v85 + 104))(v78, *MEMORY[0x1E699D340], v86);
      v77(v58, *MEMORY[0x1E699D3F0], v57);
      v60(v26, *MEMORY[0x1E699D170], v59);
      sub_1E65DB9E8();
      sub_1E65E0778();
      sub_1E65DBDB8();
    }
  }

  else
  {
    v45 = 0x3FE999999999999ALL;
    sub_1E65E0708();
    v46 = qword_1E65ED830[v89];
    if (sub_1E65DB988() == v72 && v47 == v75)
    {
      v48 = v26;
    }

    else
    {
      v48 = v26;
      v50 = sub_1E65E6C18();

      if ((v50 & 1) == 0)
      {
        v45 = 0x3FE3333333333333;
      }
    }

    v77 = v45;
    v68[1] = v44;
    sub_1E65DBB08();
    v51 = *(v27 + 104);
    v53 = v80;
    v52 = v81;
    v51(v80, *MEMORY[0x1E699D408], v81);
    v54 = v84;
    v55 = *(v83 + 104);
    v55(v48, *MEMORY[0x1E699D178], v84);
    v68[0] = v38;
    sub_1E65DB9E8();
    sub_1E65E0768();
    (*(v85 + 104))(v78, *MEMORY[0x1E699D340], v86);
    v51(v53, *MEMORY[0x1E699D3F8], v52);
    v55(v48, *MEMORY[0x1E699D170], v54);
    sub_1E65DB9E8();
    sub_1E65E0778();
    sub_1E65DBDB8();
  }

  return sub_1E65DBBD8();
}

uint64_t sub_1E6034BC0(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v9 = (a2 + *a2);
  v5 = a2[1];
  v6 = *(a1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return v9(v3, v4, v6);
}

uint64_t sub_1E6034CCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v829 = a3;
  v844 = a2;
  *&v851 = a1;
  v850 = a4;
  v841 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073628, &qword_1E65ED890);
  v4 = *(*(v841 - 8) + 64);
  MEMORY[0x1EEE9AC00](v841);
  v842 = &v650 - v5;
  v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073630, &qword_1E65ED898);
  v6 = *(*(v849 - 8) + 64);
  MEMORY[0x1EEE9AC00](v849);
  v843 = (&v650 - v7);
  v847 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073638, &qword_1E65ED8A0);
  v8 = *(*(v847 - 8) + 64);
  MEMORY[0x1EEE9AC00](v847);
  v848 = &v650 - v9;
  v783 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073640, &qword_1E65ED8A8);
  v10 = *(*(v783 - 8) + 64);
  MEMORY[0x1EEE9AC00](v783);
  v712 = &v650 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073648, &qword_1E6607560);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v802 = &v650 - v14;
  v779 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073650, &qword_1E65ED8B0);
  v15 = *(*(v779 - 8) + 64);
  MEMORY[0x1EEE9AC00](v779);
  v781 = &v650 - v16;
  v840 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073658, &qword_1E65ED8B8);
  v17 = *(*(v840 - 8) + 64);
  MEMORY[0x1EEE9AC00](v840);
  v784 = &v650 - v18;
  v724 = sub_1E65E5128();
  v723 = *(v724 - 8);
  v19 = *(v723 + 64);
  MEMORY[0x1EEE9AC00](v724);
  v722 = &v650 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E5038();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v718 = &v650 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65E5058();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v763 = &v650 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073660, &qword_1E65ED8C0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v719 = &v650 - v29;
  v771 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073668, &qword_1E65ED8C8);
  v714 = *(v771 - 8);
  v30 = *(v714 + 64);
  MEMORY[0x1EEE9AC00](v771);
  v713 = &v650 - v31;
  v772 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073670, &qword_1E65ED8D0);
  v717 = *(v772 - 8);
  v32 = *(v717 + 64);
  MEMORY[0x1EEE9AC00](v772);
  v764 = &v650 - v33;
  v776 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073678, &qword_1E65ED8D8);
  v721 = *(v776 - 8);
  v34 = *(v721 + 64);
  MEMORY[0x1EEE9AC00](v776);
  v720 = &v650 - v35;
  v708 = type metadata accessor for RouteResource();
  v36 = *(*(v708 - 8) + 64);
  MEMORY[0x1EEE9AC00](v708);
  v710 = &v650 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v704 = type metadata accessor for RouteSource(0);
  v38 = *(*(v704 - 8) + 64);
  MEMORY[0x1EEE9AC00](v704);
  v706 = &v650 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v705 = type metadata accessor for RouteDestination();
  v40 = *(*(v705 - 8) + 64);
  MEMORY[0x1EEE9AC00](v705);
  v707 = (&v650 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v806 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073680, &qword_1E65ED8E0);
  v702 = *(v806 - 8);
  v42 = *(v702 + 64);
  MEMORY[0x1EEE9AC00](v806);
  v701 = &v650 - v43;
  v778 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073688, &qword_1E65ED8E8);
  v709 = *(v778 - 8);
  v44 = *(v709 + 64);
  MEMORY[0x1EEE9AC00](v778);
  v761 = &v650 - v45;
  v782 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073690, &qword_1E65ED8F0);
  v716 = *(v782 - 8);
  v46 = *(v716 + 64);
  MEMORY[0x1EEE9AC00](v782);
  v715 = &v650 - v47;
  v697 = type metadata accessor for GalleryDescriptor();
  v689 = *(v697 - 8);
  v48 = *(v689 + 64);
  v49 = MEMORY[0x1EEE9AC00](v697);
  v690 = v50;
  v691 = &v650 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v803 = (&v650 - v51);
  v770 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073698, &qword_1E65ED8F8);
  v52 = *(*(v770 - 8) + 64);
  MEMORY[0x1EEE9AC00](v770);
  v775 = &v650 - v53;
  v821 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736A0, &qword_1E65ED900);
  v54 = *(*(v821 - 8) + 64);
  MEMORY[0x1EEE9AC00](v821);
  v777 = &v650 - v55;
  v780 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736A8, &qword_1E65ED908);
  v711 = *(v780 - 8);
  v56 = *(v711 + 64);
  MEMORY[0x1EEE9AC00](v780);
  v762 = &v650 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v693 = &v650 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073570, &unk_1E65F4570);
  v62 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v692 = &v650 - v63;
  v804 = sub_1E65D8F28();
  v816 = *(v804 - 8);
  v64 = *(v816 + 64);
  v65 = MEMORY[0x1EEE9AC00](v804);
  v757 = &v650 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v801 = &v650 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v69 = *(*(v68 - 8) + 64);
  MEMORY[0x1EEE9AC00](v68 - 8);
  v756 = &v650 - v70;
  v797 = sub_1E65D8C68();
  v796 = *(v797 - 8);
  v71 = *(v796 + 64);
  MEMORY[0x1EEE9AC00](v797);
  v755 = &v650 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073578, &qword_1E65F0E60);
  v74 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73 - 8);
  v753 = &v650 - v75;
  v758 = type metadata accessor for PageMetricsClick();
  v759 = *(v758 - 8);
  v76 = *(v759 + 64);
  v77 = MEMORY[0x1EEE9AC00](v758);
  v687 = &v650 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x1EEE9AC00](v77);
  v805 = &v650 - v80;
  v760 = v81;
  MEMORY[0x1EEE9AC00](v79);
  v703 = &v650 - v82;
  v83 = sub_1E65D7848();
  v84 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83 - 8);
  v790 = &v650 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1E65E5C28();
  v87 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v788 = &v650 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v773 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0779B0, &qword_1E65ED910);
  v698 = *(v773 - 8);
  v89 = *(v698 + 64);
  MEMORY[0x1EEE9AC00](v773);
  v696 = &v650 - v90;
  v800 = sub_1E65DEC18();
  v815 = *(v800 - 8);
  v91 = *(v815 + 64);
  v92 = MEMORY[0x1EEE9AC00](v800);
  v754 = &v650 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  v685 = v93;
  MEMORY[0x1EEE9AC00](v92);
  v799 = &v650 - v94;
  v814 = sub_1E65D76F8();
  v798 = *(v814 - 8);
  v95 = *(v798 + 64);
  v96 = MEMORY[0x1EEE9AC00](v814);
  v752 = &v650 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v684 = v97;
  MEMORY[0x1EEE9AC00](v96);
  v795 = &v650 - v98;
  v672 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B0, &unk_1E65F8480);
  v681 = *(v672 - 8);
  v99 = *(v681 + 64);
  v100 = MEMORY[0x1EEE9AC00](v672);
  v751 = &v650 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v682 = v104;
  v683 = &v650 - v103;
  MEMORY[0x1EEE9AC00](v102);
  v794 = (&v650 - v105);
  v768 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736B8, &qword_1E65ED918);
  v695 = *(v768 - 8);
  v106 = *(v695 + 64);
  MEMORY[0x1EEE9AC00](v768);
  v694 = &v650 - v107;
  v774 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736C0, &qword_1E65ED920);
  v700 = *(v774 - 8);
  v108 = *(v700 + 64);
  MEMORY[0x1EEE9AC00](v774);
  v699 = &v650 - v109;
  v817 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736C8, &qword_1E65ED928);
  v110 = *(*(v817 - 8) + 64);
  MEMORY[0x1EEE9AC00](v817);
  v819 = &v650 - v111;
  v765 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736D0, &qword_1E65ED930);
  v112 = *(*(v765 - 8) + 64);
  MEMORY[0x1EEE9AC00](v765);
  v767 = &v650 - v113;
  v818 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736D8, &qword_1E65ED938);
  v114 = *(*(v818 - 8) + 64);
  MEMORY[0x1EEE9AC00](v818);
  v769 = &v650 - v115;
  *&v834 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E0, &qword_1E65ED940);
  v116 = *(*(v834 - 8) + 64);
  MEMORY[0x1EEE9AC00](v834);
  v820 = &v650 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736E8, &qword_1E65ED948);
  v679 = *(v118 - 8);
  v680 = v118;
  v119 = *(v679 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v677 = &v650 - v120;
  v678 = sub_1E65E1398();
  v676 = *(v678 - 8);
  v121 = *(v676 + 64);
  MEMORY[0x1EEE9AC00](v678);
  v746 = &v650 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_1E65E1298();
  v124 = *(*(v123 - 8) + 64);
  MEMORY[0x1EEE9AC00](v123 - 8);
  v671 = &v650 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v744 = sub_1E65E1208();
  v673 = *(v744 - 8);
  v126 = *(v673 + 64);
  MEMORY[0x1EEE9AC00](v744);
  v743 = &v650 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v787 = sub_1E65E1168();
  v750 = *(v787 - 8);
  v128 = *(v750 + 64);
  v129 = MEMORY[0x1EEE9AC00](v787);
  v675 = &v650 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = MEMORY[0x1EEE9AC00](v129);
  v749 = &v650 - v132;
  v674 = v133;
  MEMORY[0x1EEE9AC00](v131);
  v786 = &v650 - v134;
  v766 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
  v688 = *(v766 - 8);
  v135 = *(v688 + 64);
  MEMORY[0x1EEE9AC00](v766);
  v686 = &v650 - v136;
  v793 = sub_1E65E1518();
  v792 = *(v793 - 8);
  v137 = *(v792 + 64);
  v138 = MEMORY[0x1EEE9AC00](v793);
  v668 = v139;
  v669 = &v650 - ((v139 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v138);
  v791 = &v650 - v140;
  v845 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736F0, &qword_1E65ED950);
  v828 = *(v845 - 1);
  v141 = *(v828 + 64);
  MEMORY[0x1EEE9AC00](v845);
  v827 = &v650 - v142;
  v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0736F8, &qword_1E65ED958);
  v670 = *(v748 - 8);
  v143 = *(v670 + 64);
  MEMORY[0x1EEE9AC00](v748);
  v739 = &v650 - v144;
  v808 = sub_1E65D74E8();
  v807 = *(v808 - 8);
  v145 = *(v807 + 64);
  v146 = MEMORY[0x1EEE9AC00](v808);
  v661 = v147;
  v662 = &v650 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v146);
  v738 = &v650 - v148;
  v824 = sub_1E65D72D8();
  v823 = *(v824 - 8);
  v149 = *(v823 + 64);
  MEMORY[0x1EEE9AC00](v824);
  v822 = &v650 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v737 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073700, &qword_1E65ED960);
  v151 = *(*(v737 - 8) + 64);
  MEMORY[0x1EEE9AC00](v737);
  v740 = &v650 - v152;
  v813 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073708, &qword_1E65ED968);
  v153 = *(*(v813 - 1) + 64);
  MEMORY[0x1EEE9AC00](v813);
  v741 = &v650 - v154;
  v736 = sub_1E65E20D8();
  v665 = *(v736 - 8);
  v155 = *(v665 + 64);
  MEMORY[0x1EEE9AC00](v736);
  v664 = &v650 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073710, &qword_1E65ED970);
  v667 = *(v742 - 8);
  v157 = *(v667 + 64);
  MEMORY[0x1EEE9AC00](v742);
  v666 = &v650 - v158;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073718, &qword_1E65ED978);
  v655 = *(v159 - 8);
  v160 = *(v655 + 64);
  v161 = MEMORY[0x1EEE9AC00](v159 - 8);
  v727 = &v650 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  v657 = v162;
  MEMORY[0x1EEE9AC00](v161);
  v735 = &v650 - v163;
  v789 = sub_1E65E4018();
  v747 = *(v789 - 8);
  v164 = *(v747 + 64);
  MEMORY[0x1EEE9AC00](v789);
  v745 = &v650 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for AppComposer();
  v825 = *(v166 - 8);
  v167 = *(v825 + 64);
  v168 = MEMORY[0x1EEE9AC00](v166);
  v660 = &v650 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = MEMORY[0x1EEE9AC00](v168);
  v659 = &v650 - v171;
  v172 = MEMORY[0x1EEE9AC00](v170);
  v658 = &v650 - v173;
  v174 = MEMORY[0x1EEE9AC00](v172);
  v785 = &v650 - v175;
  v176 = MEMORY[0x1EEE9AC00](v174);
  v733 = &v650 - v177;
  v826 = v178;
  MEMORY[0x1EEE9AC00](v176);
  v835 = &v650 - v179;
  v729 = sub_1E65E2298();
  v653 = *(v729 - 8);
  v180 = *(v653 + 64);
  MEMORY[0x1EEE9AC00](v729);
  v652 = &v650 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073720, &qword_1E65ED980);
  v656 = *(v732 - 8);
  v182 = *(v656 + 64);
  MEMORY[0x1EEE9AC00](v732);
  v654 = &v650 - v183;
  v734 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073728, &qword_1E65ED988);
  v663 = *(v734 - 8);
  v184 = *(v663 + 64);
  MEMORY[0x1EEE9AC00](v734);
  v730 = &v650 - v185;
  v836 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073730, &qword_1E65ED990);
  v186 = *(*(v836 - 8) + 64);
  MEMORY[0x1EEE9AC00](v836);
  v838 = &v650 - v187;
  v830 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073738, &qword_1E65ED998);
  v188 = *(*(v830 - 8) + 64);
  MEMORY[0x1EEE9AC00](v830);
  v832 = &v650 - v189;
  v809 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073740, &qword_1E65ED9A0);
  v190 = *(*(v809 - 8) + 64);
  MEMORY[0x1EEE9AC00](v809);
  v811 = &v650 - v191;
  v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073748, &qword_1E65ED9A8);
  v192 = *(*(v726 - 8) + 64);
  MEMORY[0x1EEE9AC00](v726);
  v728 = (&v650 - v193);
  v810 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073750, &qword_1E65ED9B0);
  v194 = *(*(v810 - 8) + 64);
  MEMORY[0x1EEE9AC00](v810);
  v731 = &v650 - v195;
  v831 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073758, &qword_1E65ED9B8);
  v196 = *(*(v831 - 8) + 64);
  MEMORY[0x1EEE9AC00](v831);
  v812 = &v650 - v197;
  v837 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073760, &qword_1E65ED9C0);
  v198 = *(*(v837 - 8) + 64);
  MEMORY[0x1EEE9AC00](v837);
  v833 = &v650 - v199;
  v200 = type metadata accessor for ActionButtonDescriptor.Kind(0);
  v201 = *(*(v200 - 8) + 64);
  MEMORY[0x1EEE9AC00](v200);
  v203 = &v650 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  v846 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073768, &qword_1E65ED9C8);
  v204 = *(*(v846 - 8) + 64);
  MEMORY[0x1EEE9AC00](v846);
  v839 = &v650 - v205;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v207 = *(*(v206 - 8) + 64);
  MEMORY[0x1EEE9AC00](v206 - 8);
  v209 = &v650 - v208;
  v210 = type metadata accessor for ActionButtonDescriptor(0);
  v211 = *(v210 - 8);
  v212 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v214 = &v650 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DFD1CC(v851, v209, &qword_1ED072638, &qword_1E65EB950);
  if ((*(v211 + 48))(v209, 1, v210) != 1)
  {
    v651 = v166;
    v219 = v852;
    sub_1E60484F0(v209, v214, type metadata accessor for ActionButtonDescriptor);
    sub_1E6048734(&v214[*(v210 + 20)], v203, type metadata accessor for ActionButtonDescriptor.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v725 = v214;
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
          if (EnumCaseMultiPayload != 3)
          {
            v421 = *(v792 + 32);
            v827 = (v792 + 32);
            v828 = v421;
            v421(v791, v203, v793);
            (*(v750 + 104))(v786, *MEMORY[0x1E699E768], v787);
            v422 = sub_1E642764C(MEMORY[0x1E69E7CC0]);
            v841 = *v219;
            *&v851 = type metadata accessor for AppComposer;
            v423 = v835;
            sub_1E6048734(v219, v835, type metadata accessor for AppComposer);
            sub_1E5DF650C(v844, &v862);
            v424 = *(v825 + 80);
            v425 = (v424 + 24) & ~v424;
            v426 = v826;
            v427 = (v826 + v425 + 7) & 0xFFFFFFFFFFFFFFF8;
            v428 = swift_allocObject();
            *(v428 + 16) = v422;
            v429 = v428;
            v823 = v428;
            sub_1E60484F0(v423, v428 + v425, type metadata accessor for AppComposer);
            sub_1E5DF599C(&v862, v429 + v427);
            v430 = v733;
            v431 = v851;
            sub_1E6048734(v219, v733, v851);
            v825 = v424;
            v432 = v426 + ((v424 + 16) & ~v424);
            v433 = (v424 + 16) & ~v424;
            v822 = swift_allocObject();
            sub_1E60484F0(v430, &v822[v433], type metadata accessor for AppComposer);
            v434 = v785;
            v435 = v431;
            sub_1E6048734(v219, v785, v431);
            v816 = swift_allocObject();
            sub_1E60484F0(v434, v816 + v433, type metadata accessor for AppComposer);
            v436 = v658;
            sub_1E6048734(v219, v658, v435);
            v815 = swift_allocObject();
            sub_1E60484F0(v436, v815 + v433, type metadata accessor for AppComposer);
            v437 = v659;
            sub_1E6048734(v219, v659, v435);
            v824 = v432;
            v842 = (v424 | 7);
            v438 = swift_allocObject();
            v845 = v433;
            sub_1E60484F0(v437, v438 + v433, type metadata accessor for AppComposer);
            v439 = v660;
            v440 = v435;
            sub_1E6048734(v219, v660, v435);
            v441 = swift_allocObject();
            v843 = type metadata accessor for AppComposer;
            sub_1E60484F0(v439, v441 + v433, type metadata accessor for AppComposer);
            sub_1E65E1288();
            sub_1E65E11F8();
            sub_1E65E1388();
            v442 = v792;
            v443 = v669;
            v444 = v793;
            (*(v792 + 16))(v669, v791, v793);
            v445 = v852;
            v446 = v835;
            sub_1E6048734(v852, v835, v440);
            v447 = (*(v442 + 80) + 16) & ~*(v442 + 80);
            v448 = (v668 + v825 + v447) & ~v825;
            v449 = swift_allocObject();
            (v828)(v449 + v447, v443, v444);
            v450 = v446;
            sub_1E60484F0(v446, v449 + v448, type metadata accessor for AppComposer);
            type metadata accessor for AppFeature();
            sub_1E604FBB0(&qword_1EE2DBD90, type metadata accessor for AppFeature);
            v828 = sub_1E604FBB0(&qword_1EE2D6530, MEMORY[0x1E699E7A0]);
            v451 = v677;
            sub_1E65E4DE8();
            v452 = v445;
            v453 = v450;
            sub_1E6048734(v452, v450, v851);
            v454 = v829;
            v455 = *v829;
            v456 = v829[3];
            v457 = v829[5];
            v827 = v829[7];
            v458 = (v824 + 7) & 0xFFFFFFFFFFFFFFF8;
            v826 = v829[9];
            v459 = swift_allocObject();
            sub_1E60484F0(v453, v845 + v459, v843);
            v460 = (v459 + v458);
            v461 = v454[3];
            v460[2] = v454[2];
            v460[3] = v461;
            v460[4] = v454[4];
            v462 = v454[1];
            *v460 = *v454;
            v460[1] = v462;
            swift_unknownObjectRetain();

            v463 = v743;
            v464 = v746;
            v465 = v744;
            v466 = sub_1E65E4F08();

            (*(v679 + 8))(v451, v680);
            (*(v676 + 8))(v464, v678);
            (*(v673 + 8))(v463, v465);
            v467 = v750;
            v468 = *(v750 + 16);
            v469 = v786;
            v470 = v787;
            v468(v749, v786, v787);
            v471 = v835;
            sub_1E6048734(v852, v835, v851);
            sub_1E5DF650C(v844, &v862);
            v472 = swift_allocObject();
            sub_1E60484F0(v471, v845 + v472, v843);
            sub_1E5DF599C(&v862, v472 + v458);
            v473 = v675;
            v474 = v469;
            v475 = v470;
            v468(v675, v474, v470);
            v476 = (*(v467 + 80) + 16) & ~*(v467 + 80);
            v477 = (v674 + v476 + 7) & 0xFFFFFFFFFFFFFFF8;
            v478 = swift_allocObject();
            v479 = v467;
            (*(v467 + 32))(v478 + v476, v473, v475);
            *(v478 + v477) = v466;
            sub_1E65E3878();

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073808, &qword_1E65EDA90);
            sub_1E604FBB0(&qword_1EE2D6048, MEMORY[0x1E699ED90]);
            v480 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073810, &qword_1E65EDA98);
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            v857 = v480;
            v858 = OpaqueTypeConformance2;
            swift_getOpaqueTypeConformance2();
            v482 = v686;
            sub_1E65E1488();
            (*(v479 + 8))(v786, v787);
            v483 = v688;
            v484 = v766;
            (*(v688 + 16))(v767, v482, v766);
            swift_storeEnumTagMultiPayload();
            sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
            v485 = sub_1E5FED46C(&qword_1EE2D6860, &qword_1ED0736B8, &qword_1E65ED918);
            v486 = sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910);
            *&v862 = v768;
            *(&v862 + 1) = v773;
            v863 = v485;
            *&v864 = v486;
            swift_getOpaqueTypeConformance2();
            v487 = v769;
            sub_1E65E4138();
            sub_1E5DFD1CC(v487, v819, &qword_1ED0736D8, &qword_1E65ED938);
            swift_storeEnumTagMultiPayload();
            sub_1E603C178();
            sub_1E603C300();
            v488 = v820;
            sub_1E65E4138();
            sub_1E5DFE50C(v487, &qword_1ED0736D8, &qword_1E65ED938);
            sub_1E5DFD1CC(v488, v832, &qword_1ED0736E0, &qword_1E65ED940);
            swift_storeEnumTagMultiPayload();
            sub_1E603BBB8();
            sub_1E603C0EC();
            v489 = v833;
            sub_1E65E4138();
            sub_1E5DFE50C(v488, &qword_1ED0736E0, &qword_1E65ED940);
            sub_1E5DFD1CC(v489, v838, &qword_1ED073760, &qword_1E65ED9C0);
            swift_storeEnumTagMultiPayload();
            sub_1E603BB2C();
            sub_1E603C628();
            v249 = v839;
            sub_1E65E4138();
            sub_1E5DFE50C(v489, &qword_1ED073760, &qword_1E65ED9C0);
            (*(v483 + 8))(v482, v484);
            (*(v792 + 8))(v791, v793);
            goto LABEL_39;
          }

          v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073818, &unk_1E6607980);
          v222 = &v203[*(v221 + 48)];
          v223 = v222[1];
          v852 = *v222;
          v224 = *(v221 + 64);
          (*(v823 + 32))();
          v225 = v807;
          v226 = *(v807 + 32);
          v227 = &v203[v224];
          v228 = v738;
          v229 = v808;
          v226(v738, v227, v808);
          sub_1E5DF650C(v844, &v862);
          v230 = v662;
          (*(v225 + 16))(v662, v228, v229);
          v231 = (*(v225 + 80) + 72) & ~*(v225 + 80);
          v232 = swift_allocObject();
          sub_1E5DF599C(&v862, v232 + 16);
          *(v232 + 56) = v852;
          *(v232 + 64) = v223;
          v233 = (v226)(v232 + v231, v230, v229);
          MEMORY[0x1EEE9AC00](v233);
          v234 = v827;
          sub_1E65E4AA8();
          sub_1E65E4B58();
          v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073770, &qword_1E65ED9D0);
          v236 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
          v237 = sub_1E603C008();
          v238 = MEMORY[0x1E6981CD8];
          v239 = v739;
          v240 = v845;
          sub_1E65E4938();
          (*(v828 + 8))(v234, v240);
          v241 = v670;
          v242 = v239;
          v243 = v748;
          (*(v670 + 16))(v740, v242, v748);
          swift_storeEnumTagMultiPayload();
          v244 = sub_1E604FBB0(&unk_1EE2D6290, MEMORY[0x1E699F1F0]);
          v245 = sub_1E603BE04();
          *&v862 = v736;
          *(&v862 + 1) = &type metadata for BuildPlanButtonStyle;
          v863 = v244;
          *&v864 = v245;
          swift_getOpaqueTypeConformance2();
          *&v862 = v240;
          *(&v862 + 1) = v238;
          v863 = v235;
          *&v864 = v236;
          *(&v864 + 1) = MEMORY[0x1E6981CD0];
          v865 = v237;
          swift_getOpaqueTypeConformance2();
          v246 = v741;
          sub_1E65E4138();
          sub_1E5DFD1CC(v246, v811, &qword_1ED073708, &qword_1E65ED968);
          swift_storeEnumTagMultiPayload();
          sub_1E603BC44();
          sub_1E603BE58();
          v247 = v812;
          sub_1E65E4138();
          sub_1E5DFE50C(v246, &qword_1ED073708, &qword_1E65ED968);
          sub_1E5DFD1CC(v247, v832, &qword_1ED073758, &qword_1E65ED9B8);
          swift_storeEnumTagMultiPayload();
          sub_1E603BBB8();
          sub_1E603C0EC();
          v248 = v833;
          sub_1E65E4138();
          sub_1E5DFE50C(v247, &qword_1ED073758, &qword_1E65ED9B8);
          sub_1E5DFD1CC(v248, v838, &qword_1ED073760, &qword_1E65ED9C0);
          swift_storeEnumTagMultiPayload();
          sub_1E603BB2C();
          sub_1E603C628();
          v249 = v839;
          sub_1E65E4138();
          sub_1E5DFE50C(v248, &qword_1ED073760, &qword_1E65ED9C0);
          (*(v241 + 8))(v739, v243);
          (*(v807 + 8))(v738, v808);
          goto LABEL_25;
        }

        v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073820, &qword_1E65EDAA0);
        *&v851 = *&v203[v333[12]];
        v334 = &v203[v333[16]];
        v336 = *v334;
        v335 = v334[1];
        v841 = v336;
        v828 = v335;
        v337 = &v203[v333[20]];
        v339 = *v337;
        v338 = *(v337 + 1);
        v843 = v339;
        v842 = v338;
        v340 = v203;
        v341 = v735;
        sub_1E5FAB460(v340, v735, &qword_1ED073718, &qword_1E65ED978);
        sub_1E6048734(v219, v835, type metadata accessor for AppComposer);
        sub_1E5DF650C(v844, &v862);
        sub_1E5DFD1CC(v341, v727, &qword_1ED073718, &qword_1E65ED978);
        v342 = v829;
        v822 = *v829;
        v823 = v829[3];
        v824 = v829[5];
        v827 = v829[7];
        v844 = v829[9];
        v343 = (*(v825 + 80) + 16) & ~*(v825 + 80);
        v344 = (v826 + v343 + 7) & 0xFFFFFFFFFFFFFFF8;
        v345 = (v344 + 47) & 0xFFFFFFFFFFFFFFF8;
        v346 = (*(v655 + 80) + v345 + 16) & ~*(v655 + 80);
        v347 = (v657 + v346 + 7) & 0xFFFFFFFFFFFFFFF8;
        v348 = (v347 + 15) & 0xFFFFFFFFFFFFFFF8;
        v349 = swift_allocObject();
        sub_1E60484F0(v835, v349 + v343, type metadata accessor for AppComposer);
        sub_1E5DF599C(&v862, v349 + v344);
        v350 = (v349 + v345);
        v351 = v828;
        *v350 = v841;
        v350[1] = v351;
        sub_1E5FAB460(v727, v349 + v346, &qword_1ED073718, &qword_1E65ED978);
        *(v349 + v347) = v851;
        v352 = (v349 + v348);
        v353 = v842;
        *v352 = v843;
        v352[1] = v353;
        v354 = (v349 + ((v348 + 23) & 0xFFFFFFFFFFFFFFF8));
        v355 = v342[3];
        v354[2] = v342[2];
        v354[3] = v355;
        v354[4] = v342[4];
        v356 = v342[1];
        *v354 = *v342;
        v354[1] = v356;
        swift_unknownObjectRetain();

        v357 = v664;
        sub_1E65E20C8();
        v358 = *(v852 + *(v651 + 20) + 8);
        LOBYTE(v862) = 2;
        BYTE1(v862) = v358;
        v359 = sub_1E604FBB0(&unk_1EE2D6290, MEMORY[0x1E699F1F0]);
        v360 = sub_1E603BE04();
        v361 = v666;
        v362 = v736;
        sub_1E65E47E8();
        (*(v665 + 8))(v357, v362);
        v363 = v667;
        v364 = v742;
        (*(v667 + 16))(v740, v361, v742);
        swift_storeEnumTagMultiPayload();
        *&v862 = v362;
        *(&v862 + 1) = &type metadata for BuildPlanButtonStyle;
        v863 = v359;
        *&v864 = v360;
        swift_getOpaqueTypeConformance2();
        v365 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073770, &qword_1E65ED9D0);
        v366 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
        v367 = sub_1E603C008();
        *&v862 = v845;
        *(&v862 + 1) = MEMORY[0x1E6981CD8];
        v863 = v365;
        *&v864 = v366;
        *(&v864 + 1) = MEMORY[0x1E6981CD0];
        v865 = v367;
        swift_getOpaqueTypeConformance2();
        v368 = v741;
        sub_1E65E4138();
        sub_1E5DFD1CC(v368, v811, &qword_1ED073708, &qword_1E65ED968);
        swift_storeEnumTagMultiPayload();
        sub_1E603BC44();
        sub_1E603BE58();
        v369 = v812;
        sub_1E65E4138();
        sub_1E5DFE50C(v368, &qword_1ED073708, &qword_1E65ED968);
        sub_1E5DFD1CC(v369, v832, &qword_1ED073758, &qword_1E65ED9B8);
        swift_storeEnumTagMultiPayload();
        sub_1E603BBB8();
        sub_1E603C0EC();
        v370 = v833;
        sub_1E65E4138();
        sub_1E5DFE50C(v369, &qword_1ED073758, &qword_1E65ED9B8);
        sub_1E5DFD1CC(v370, v838, &qword_1ED073760, &qword_1E65ED9C0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v249 = v839;
        sub_1E65E4138();
        sub_1E5DFE50C(v370, &qword_1ED073760, &qword_1E65ED9C0);
        (*(v363 + 8))(v361, v364);
        v371 = v735;
        v372 = &qword_1ED073718;
        v373 = &qword_1E65ED978;
LABEL_28:
        sub_1E5DFE50C(v371, v372, v373);
        goto LABEL_39;
      }

      if (!EnumCaseMultiPayload)
      {
        v314 = *v203;
        v315 = *(v203 + 1);
        sub_1E6049490();
        if (!sub_1E63E9F24(v314, v315))
        {
          v316 = [objc_opt_self() grayColor];
        }

        v317 = v848;
        v318 = sub_1E65E4968();
        v319 = v728;
        *v728 = v318;
        v852 = v318;
        *(v319 + 4) = 256;
        swift_storeEnumTagMultiPayload();

        *&v851 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
        sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
        v320 = sub_1E604FBB0(&qword_1EE2D6268, MEMORY[0x1E699F258]);
        v321 = sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0]);
        *&v862 = v729;
        *(&v862 + 1) = v789;
        v863 = v320;
        *&v864 = v321;
        v322 = swift_getOpaqueTypeConformance2();
        v323 = sub_1E603BE04();
        *&v862 = v732;
        *(&v862 + 1) = &type metadata for BuildPlanButtonStyle;
        v863 = v322;
        *&v864 = v323;
        swift_getOpaqueTypeConformance2();
        v324 = v731;
        sub_1E65E4138();
        sub_1E5DFD1CC(v324, v811, &qword_1ED073750, &qword_1E65ED9B0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BC44();
        sub_1E603BE58();
        v325 = v812;
        sub_1E65E4138();
        sub_1E5DFE50C(v324, &qword_1ED073750, &qword_1E65ED9B0);
        sub_1E5DFD1CC(v325, v832, &qword_1ED073758, &qword_1E65ED9B8);
        swift_storeEnumTagMultiPayload();
        sub_1E603BBB8();
        sub_1E603C0EC();
        v326 = v833;
        sub_1E65E4138();
        sub_1E5DFE50C(v325, &qword_1ED073758, &qword_1E65ED9B8);
        sub_1E5DFD1CC(v326, v838, &qword_1ED073760, &qword_1E65ED9C0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v249 = v839;
        sub_1E65E4138();

        sub_1E5DFE50C(v326, &qword_1ED073760, &qword_1E65ED9C0);
        goto LABEL_40;
      }

      LODWORD(v851) = *v203;
      v511 = *(v203 + 2);
      v841 = *(v203 + 1);
      v512 = v835;
      sub_1E6048734(v219, v835, type metadata accessor for AppComposer);
      sub_1E5DF650C(v844, &v862);
      v513 = v829;
      v514 = *v829;
      v842 = v829[3];
      v843 = v829[5];
      v844 = v829[7];
      v845 = v829[9];
      v515 = (*(v825 + 80) + 16) & ~*(v825 + 80);
      v516 = (v826 + v515 + 7) & 0xFFFFFFFFFFFFFFF8;
      v517 = (v516 + 47) & 0xFFFFFFFFFFFFFFF8;
      v518 = swift_allocObject();
      sub_1E60484F0(v512, v518 + v515, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v862, v518 + v516);
      v519 = (v518 + v517);
      *v519 = v841;
      v519[1] = v511;
      v520 = (v518 + ((v517 + 23) & 0xFFFFFFFFFFFFFFF8));
      v521 = v513[4];
      v520[3] = v513[3];
      v520[4] = v521;
      v522 = v513[2];
      v520[1] = v513[1];
      v520[2] = v522;
      *v520 = *v513;
      swift_unknownObjectRetain();

      v523 = v652;
      sub_1E65E2288();
      v524 = v745;
      sub_1E65E4008();
      v525 = sub_1E604FBB0(&qword_1EE2D6268, MEMORY[0x1E699F258]);
      v526 = sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0]);
      v527 = v654;
      v528 = v729;
      v529 = v789;
      sub_1E65E47D8();
      (*(v747 + 8))(v524, v529);
      (*(v653 + 8))(v523, v528);
      v530 = *(v852 + *(v651 + 20) + 8);
      LOBYTE(v857) = v851;
      BYTE1(v857) = v530;
      *&v862 = v528;
      *(&v862 + 1) = v529;
      v863 = v525;
      *&v864 = v526;
      v531 = swift_getOpaqueTypeConformance2();
      v532 = sub_1E603BE04();
      v533 = v730;
      v534 = v732;
      sub_1E65E47E8();
      (*(v656 + 8))(v527, v534);
      v535 = v663;
      v536 = v734;
      (*(v663 + 16))(v728, v533, v734);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072790, &unk_1E65FA590);
      sub_1E5FED46C(qword_1EE2D4F50, &qword_1ED072790, &unk_1E65FA590);
      *&v862 = v534;
      *(&v862 + 1) = &type metadata for BuildPlanButtonStyle;
      v863 = v531;
      *&v864 = v532;
      swift_getOpaqueTypeConformance2();
      v537 = v731;
      sub_1E65E4138();
      sub_1E5DFD1CC(v537, v811, &qword_1ED073750, &qword_1E65ED9B0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BC44();
      sub_1E603BE58();
      v538 = v812;
      sub_1E65E4138();
      sub_1E5DFE50C(v537, &qword_1ED073750, &qword_1E65ED9B0);
      sub_1E5DFD1CC(v538, v832, &qword_1ED073758, &qword_1E65ED9B8);
      swift_storeEnumTagMultiPayload();
      sub_1E603BBB8();
      sub_1E603C0EC();
      v539 = v833;
      sub_1E65E4138();
      sub_1E5DFE50C(v538, &qword_1ED073758, &qword_1E65ED9B8);
      sub_1E5DFD1CC(v539, v838, &qword_1ED073760, &qword_1E65ED9C0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v249 = v839;
      sub_1E65E4138();
      sub_1E5DFE50C(v539, &qword_1ED073760, &qword_1E65ED9C0);
      (*(v535 + 8))(v730, v536);
      goto LABEL_39;
    }

    v251 = v651;
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v374 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A8, &qword_1E65EDA28) + 48);
        (*(v823 + 32))(v822, v203, v824);
        *&v851 = type metadata accessor for GalleryDescriptor;
        v375 = v803;
        sub_1E60484F0(&v203[v374], v803, type metadata accessor for GalleryDescriptor);
        sub_1E65E5BA8();
        type metadata accessor for LocalizationBundle();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v377 = [objc_opt_self() bundleForClass_];
        v378 = *v219;
        swift_getKeyPath();
        sub_1E65E4EC8();

        v379 = sub_1E65E5D48();
        v381 = v380;
        v382 = v691;
        sub_1E6048734(v375, v691, type metadata accessor for GalleryDescriptor);
        v383 = v829;
        v827 = *v829;
        v828 = v829[3];
        v841 = v829[5];
        v842 = v829[7];
        v843 = v829[9];
        sub_1E6048734(v219, v835, type metadata accessor for AppComposer);
        sub_1E5DF650C(v844, &v862);
        v384 = (*(v689 + 80) + 32) & ~*(v689 + 80);
        v385 = (v690 + v384 + 7) & 0xFFFFFFFFFFFFFFF8;
        v386 = (*(v825 + 80) + v385 + 80) & ~*(v825 + 80);
        v387 = (v826 + v386 + 7) & 0xFFFFFFFFFFFFFFF8;
        v388 = swift_allocObject();
        *(v388 + 16) = v379;
        *(v388 + 24) = v381;
        sub_1E60484F0(v382, v388 + v384, v851);
        v389 = (v388 + v385);
        v390 = v383[3];
        v389[2] = v383[2];
        v389[3] = v390;
        v389[4] = v383[4];
        v391 = v383[1];
        *v389 = *v383;
        v389[1] = v391;
        sub_1E60484F0(v835, v388 + v386, type metadata accessor for AppComposer);
        v392 = sub_1E5DF599C(&v862, v388 + v387);
        MEMORY[0x1EEE9AC00](v392);

        swift_unknownObjectRetain();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737B0, &qword_1E65EDA30);
        sub_1E6048670();
        v393 = v701;
        sub_1E65E4AA8();

        sub_1E65E4B58();
        v844 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073780, &qword_1E65ED9D8);
        v852 = MEMORY[0x1E697D680];
        v843 = sub_1E5FED46C(&qword_1EE2D4B80, &qword_1ED073680, &qword_1E65ED8E0);
        *&v851 = sub_1E603C544();
        v394 = v806;
        sub_1E65E4938();
        (*(v702 + 8))(v393, v394);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
        v395 = swift_allocObject();
        *(v395 + 16) = xmmword_1E65EB9E0;
        *(v395 + 32) = 0x6C6C4120776F6853;
        *(v395 + 40) = 0xE800000000000000;
        v396 = v803;
        v398 = *v803;
        v397 = v803[1];
        v399 = *(v803 + 16);
        LOBYTE(v383) = sub_1E65DFFF8();
        LOBYTE(v381) = *(v396 + 17);
        v400 = *(v697 + 28);
        v401 = v706;
        swift_storeEnumTagMultiPayload();
        v402 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
        v403 = v707;
        *v707 = v398;
        *(v403 + 8) = v397;
        *(v403 + 16) = v383 & 1;
        *(v403 + 17) = v381;
        (*(v823 + 16))(v403 + v402, v396 + v400, v824);
        swift_storeEnumTagMultiPayload();
        v404 = v705;
        sub_1E6048734(v401, v403 + *(v705 + 20), type metadata accessor for RouteSource);

        sub_1E604879C(v401, type metadata accessor for RouteSource);
        *(v403 + *(v404 + 24)) = MEMORY[0x1E69E7CD0];
        v405 = v710;
        sub_1E6048734(v403, v710, type metadata accessor for RouteResource);
        sub_1E604879C(v403, type metadata accessor for RouteDestination);
        v406 = sub_1E64802E0();
        v408 = v407;
        sub_1E604879C(v405, type metadata accessor for RouteResource);
        *(v395 + 48) = v406;
        *(v395 + 56) = v408;
        *&v862 = v806;
        *(&v862 + 1) = MEMORY[0x1E6981CD8];
        v863 = v844;
        *&v864 = v843;
        *(&v864 + 1) = MEMORY[0x1E6981CD0];
        v865 = v851;
        v409 = swift_getOpaqueTypeConformance2();
        v410 = v715;
        v411 = v778;
        v412 = v761;
        sub_1E65E4708();

        (*(v709 + 8))(v412, v411);
        v413 = v716;
        v414 = v410;
        v415 = v782;
        (*(v716 + 16))(v775, v410, v782);
        swift_storeEnumTagMultiPayload();
        v416 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
        v417 = sub_1E603C4F0();
        *&v862 = v845;
        *(&v862 + 1) = &type metadata for ViewCatalogItemButtonStyle;
        v863 = v416;
        *&v864 = v417;
        swift_getOpaqueTypeConformance2();
        *&v862 = v411;
        *(&v862 + 1) = v409;
        swift_getOpaqueTypeConformance2();
        v418 = v777;
        sub_1E65E4138();
        sub_1E5DFD1CC(v418, v819, &qword_1ED0736A0, &qword_1E65ED900);
        swift_storeEnumTagMultiPayload();
        sub_1E603C178();
        sub_1E603C300();
        v419 = v820;
        sub_1E65E4138();
        sub_1E5DFE50C(v418, &qword_1ED0736A0, &qword_1E65ED900);
        sub_1E5DFD1CC(v419, v832, &qword_1ED0736E0, &qword_1E65ED940);
        swift_storeEnumTagMultiPayload();
        sub_1E603BBB8();
        sub_1E603C0EC();
        v420 = v833;
        sub_1E65E4138();
        sub_1E5DFE50C(v419, &qword_1ED0736E0, &qword_1E65ED940);
        sub_1E5DFD1CC(v420, v838, &qword_1ED073760, &qword_1E65ED9C0);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v249 = v839;
        sub_1E65E4138();
        sub_1E5DFE50C(v420, &qword_1ED073760, &qword_1E65ED9C0);
        (*(v413 + 8))(v414, v415);
        sub_1E604879C(v803, type metadata accessor for GalleryDescriptor);
LABEL_25:
        (*(v823 + 8))(v822, v824);
        goto LABEL_39;
      }

      if (EnumCaseMultiPayload != 8)
      {
        v490 = &v203[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073788, &unk_1E6607970) + 48)];
        v492 = *v490;
        v491 = *(v490 + 1);
        v843 = v492;
        v842 = v491;
        sub_1E5FAB460(v203, v802, &qword_1ED073648, &qword_1E6607560);
        v493 = v829;
        v494 = v829[2];
        v495 = v829[5];
        v496 = v829[8];
        v845 = v829[7];
        v841 = v496;
        v497 = v829[9];
        v498 = v835;
        sub_1E6048734(v219, v835, type metadata accessor for AppComposer);
        v499 = (*(v825 + 80) + 96) & ~*(v825 + 80);
        v500 = (v826 + v499 + 7) & 0xFFFFFFFFFFFFFFF8;
        v501 = swift_allocObject();
        v834 = *v493;
        v502 = (v501 + v500);
        v851 = *(v493 + 24);
        v503 = v493[3];
        v501[3] = v493[2];
        v501[4] = v503;
        v501[5] = v493[4];
        v504 = v493[1];
        v501[1] = *v493;
        v501[2] = v504;
        sub_1E60484F0(v498, v501 + v499, type metadata accessor for AppComposer);
        v505 = v842;
        *v502 = v843;
        v502[1] = v505;
        v862 = v834;
        v863 = v494;
        v864 = v851;
        v865 = v495;
        v866 = &unk_1E65ED9E8;
        v867 = v501;
        v868 = v841;
        v869 = v497;
        swift_unknownObjectRetain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();

        v506 = v712;
        sub_1E6042DDC(v802, v725, v844, &v862, v712);

        swift_unknownObjectRelease();
        sub_1E5DFD1CC(v506, v781, &qword_1ED073640, &qword_1E65ED8A8);
        swift_storeEnumTagMultiPayload();
        v507 = sub_1E5FED46C(&qword_1EE2D4B88, &qword_1ED073668, &qword_1E65ED8C8);
        v508 = sub_1E603C7A8();
        v857 = v771;
        v858 = &type metadata for ViewPlanButtonStyle;
        v859 = v507;
        v860 = v508;
        v509 = swift_getOpaqueTypeConformance2();
        v857 = v772;
        v858 = v509;
        swift_getOpaqueTypeConformance2();
        sub_1E5FED46C(qword_1EE2D7530, &qword_1ED073640, &qword_1E65ED8A8);
        v510 = v784;
        sub_1E65E4138();
        sub_1E5DFD1CC(v510, v838, &qword_1ED073658, &qword_1E65ED8B8);
        swift_storeEnumTagMultiPayload();
        sub_1E603BB2C();
        sub_1E603C628();
        v249 = v839;
        sub_1E65E4138();
        sub_1E5DFE50C(v510, &qword_1ED073658, &qword_1E65ED8B8);
        sub_1E5DFE50C(v506, &qword_1ED073640, &qword_1E65ED8A8);
        v371 = v802;
        v372 = &qword_1ED073648;
        v373 = &qword_1E6607560;
        goto LABEL_28;
      }

      LODWORD(v842) = *v203;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v252 = swift_getObjCClassFromMetadata();
      v253 = [objc_opt_self() bundleForClass_];
      v254 = *v219;
      swift_getKeyPath();
      sub_1E65E4EC8();

      v843 = sub_1E65E5D48();
      v256 = v255;
      v257 = sub_1E65D9D78();
      v258 = v805;
      (*(*(v257 - 8) + 56))(v805, 1, 1, v257);
      v259 = v758;
      (*(v796 + 104))(v258 + *(v758 + 20), *MEMORY[0x1E69CBAA0], v797);
      (*(v807 + 56))(v258 + v259[6], 1, 1, v808);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      v260 = *(sub_1E65D86A8() - 8);
      v261 = *(v260 + 72);
      v262 = (*(v260 + 80) + 32) & ~*(v260 + 80);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_1E65EA670;
      *&v834 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      v833 = v264;
      v265 = *MEMORY[0x1E69CBCC8];
      v266 = v816 + 104;
      v845 = *(v816 + 104);
      LODWORD(v835) = v265;
      v267 = v804;
      (v845)(v801, v265, v804);
      v841 = v266;
      *&v851 = v256;

      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v268 = v259[8];
      v269 = sub_1E65DA208();
      (*(*(v269 - 8) + 56))(v258 + v268, 1, 1, v269);
      (v845)(v258 + v259[14], v265, v267);
      v270 = v259[15];
      v271 = *MEMORY[0x1E69CC448];
      v272 = sub_1E65D9908();
      v273 = *(v272 - 8);
      (*(v273 + 104))(v258 + v270, v271, v272);
      (*(v273 + 56))(v258 + v270, 0, 1, v272);
      v274 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      *(v258 + v259[7]) = v263;
      v275 = (v258 + v259[9]);
      *v275 = 0;
      v275[1] = 0;
      v276 = (v258 + v259[10]);
      *v276 = 0;
      v276[1] = 0;
      *(v258 + v259[11]) = v274;
      v277 = (v258 + v259[12]);
      *v277 = 0;
      v277[1] = 0;
      *(v258 + v259[13]) = xmmword_1E65ED860;
      v278 = v258;
      v279 = v829;
      v280 = *v829;
      v281 = v829[3];
      v282 = v829[5];
      v283 = v829[7];
      *&v834 = v829[9];
      v284 = v687;
      sub_1E6048734(v278, v687, type metadata accessor for PageMetricsClick);
      sub_1E5DF650C(v844, &v862);
      v285 = (*(v759 + 80) + 96) & ~*(v759 + 80);
      v286 = (v760 + v285 + 7) & 0xFFFFFFFFFFFFFFF8;
      v287 = swift_allocObject();
      v288 = v279[3];
      v287[3] = v279[2];
      v287[4] = v288;
      v287[5] = v279[4];
      v289 = v279[1];
      v287[1] = *v279;
      v287[2] = v289;
      sub_1E60484F0(v284, v287 + v285, type metadata accessor for PageMetricsClick);
      v290 = sub_1E5DF599C(&v862, v287 + v286);
      MEMORY[0x1EEE9AC00](v290);
      v291 = v843;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073790, &qword_1E65EDA18);
      sub_1E5FED46C(&qword_1EE2D4BA8, &qword_1ED073790, &qword_1E65EDA18);
      v292 = v713;
      sub_1E65E4AA8();
      v293 = *(v852 + *(v651 + 20) + 8);
      LOBYTE(v862) = v842;
      BYTE1(v862) = v293;
      v852 = sub_1E5FED46C(&qword_1EE2D4B88, &qword_1ED073668, &qword_1E65ED8C8);
      v844 = sub_1E603C7A8();
      v294 = v771;
      sub_1E65E47E8();
      (*(v714 + 8))(v292, v294);
      sub_1E65E5048();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073798, &qword_1E65EDA20);
      inited = swift_initStackObject();
      *(inited + 32) = 1701667182;
      *(inited + 16) = xmmword_1E65EA190;
      v296 = MEMORY[0x1E69E6158];
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = v291;
      *(inited + 56) = v851;
      *(inited + 72) = v296;
      strcpy((inited + 80), "impressionType");
      *(inited + 95) = -18;
      v297 = v801;
      v298 = v804;
      (v845)(v801, v835, v804);
      v299 = sub_1E65D8F18();
      v301 = v300;
      (*(v816 + 8))(v297, v298);
      *(inited + 96) = v299;
      *(inited + 104) = v301;
      *(inited + 120) = v296;
      *(inited + 128) = 0x6973736572706D69;
      v302 = MEMORY[0x1E69E6530];
      *(inited + 136) = 0xEF7865646E496E6FLL;
      *(inited + 144) = 0;
      *(inited + 168) = v302;
      *(inited + 176) = 0x657079546469;
      *(inited + 216) = v296;
      *(inited + 184) = 0xE600000000000000;
      *(inited + 192) = 0x64695F737469;
      *(inited + 200) = 0xE600000000000000;
      sub_1E6215168(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737A0, &qword_1E65FF0D0);
      swift_arrayDestroy();
      sub_1E65E5028();
      v303 = MEMORY[0x1E69E7CC0];
      sub_1E6215168(MEMORY[0x1E69E7CC0]);
      sub_1E6215168(v303);
      v304 = v719;
      sub_1E65E5068();
      v305 = sub_1E65E5078();
      (*(*(v305 - 8) + 56))(v304, 0, 1, v305);
      v306 = v722;
      sub_1E65E5118();
      *&v862 = v294;
      *(&v862 + 1) = &type metadata for ViewPlanButtonStyle;
      v863 = v852;
      *&v864 = v844;
      v307 = swift_getOpaqueTypeConformance2();
      v308 = v720;
      v309 = v772;
      v310 = v764;
      sub_1E65E4738();
      (*(v723 + 8))(v306, v724);
      sub_1E5DFE50C(v304, &qword_1ED073660, &qword_1E65ED8C0);
      (*(v717 + 8))(v310, v309);
      v311 = v721;
      v312 = v776;
      (*(v721 + 16))(v781, v308, v776);
      swift_storeEnumTagMultiPayload();
      *&v862 = v309;
      *(&v862 + 1) = v307;
      swift_getOpaqueTypeConformance2();
      sub_1E5FED46C(qword_1EE2D7530, &qword_1ED073640, &qword_1E65ED8A8);
      v313 = v784;
      sub_1E65E4138();
      sub_1E5DFD1CC(v313, v838, &qword_1ED073658, &qword_1E65ED8B8);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v249 = v839;
      sub_1E65E4138();
      sub_1E5DFE50C(v313, &qword_1ED073658, &qword_1E65ED8B8);
      (*(v311 + 8))(v308, v312);
      sub_1E604879C(v805, type metadata accessor for PageMetricsClick);
LABEL_39:
      v317 = v848;
LABEL_40:
      sub_1E5DFD1CC(v249, v317, &qword_1ED073768, &qword_1E65ED9C8);
      swift_storeEnumTagMultiPayload();
      sub_1E603BAA0();
      sub_1E603C7FC();
      sub_1E65E4138();
      sub_1E5DFE50C(v249, &qword_1ED073768, &qword_1E65ED9C8);
      return sub_1E604879C(v725, type metadata accessor for ActionButtonDescriptor);
    }

    if (EnumCaseMultiPayload != 5)
    {
      v540 = *(v203 + 1);
      v843 = *v203;
      *&v851 = v203[16];
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v541 = swift_getObjCClassFromMetadata();
      v542 = [objc_opt_self() bundleForClass_];
      v543 = *v219;
      swift_getKeyPath();
      sub_1E65E4EC8();

      v852 = sub_1E65E5D48();
      v842 = v544;
      v545 = sub_1E65D9D78();
      (*(*(v545 - 8) + 56))(v753, 1, 1, v545);
      (*(v796 + 104))(v755, *MEMORY[0x1E69CBAA0], v797);
      (*(v807 + 56))(v756, 1, 1, v808);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
      v546 = *(sub_1E65D86A8() - 8);
      v547 = *(v546 + 72);
      v548 = (*(v546 + 80) + 32) & ~*(v546 + 80);
      v549 = swift_allocObject();
      *(v549 + 16) = xmmword_1E65EA670;
      v841 = v549;
      v550 = v540;

      v835 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
      v826 = v551;
      v552 = *MEMORY[0x1E69CBCC8];
      v553 = *(v816 + 104);
      v554 = v804;
      v553(v801, v552, v804);

      sub_1E6427498(MEMORY[0x1E69E7CC0]);
      sub_1E65D8678();
      v555 = sub_1E65DA208();
      v556 = v692;
      (*(*(v555 - 8) + 56))(v692, 1, 1, v555);
      v553(v757, v552, v554);
      v557 = sub_1E65D9908();
      v558 = *(v557 - 8);
      v559 = v693;
      (*(v558 + 104))(v693, **(&unk_1E8797378 + v851), v557);
      (*(v558 + 56))(v559, 0, 1, v557);
      v560 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
      v561 = v703;
      sub_1E5FAB460(v753, v703, &qword_1ED073578, &qword_1E65F0E60);
      v562 = v758;
      (*(v796 + 32))(v561 + *(v758 + 20), v755, v797);
      sub_1E5FAB460(v756, v561 + v562[6], &qword_1ED072340, &qword_1E65EA410);
      *(v561 + v562[7]) = v841;
      sub_1E5FAB460(v556, v561 + v562[8], &qword_1ED073570, &unk_1E65F4570);
      v563 = (v561 + v562[9]);
      *v563 = 0;
      v563[1] = 0;
      v564 = (v561 + v562[10]);
      *v564 = 0;
      v564[1] = 0;
      *(v561 + v562[11]) = v560;
      v565 = (v561 + v562[12]);
      *v565 = 0;
      v565[1] = 0;
      v566 = (v561 + v562[13]);
      v567 = v843;
      *v566 = v843;
      v566[1] = v550;
      (*(v816 + 32))(v561 + v562[14], v757, v554);
      sub_1E5FAB460(v559, v561 + v562[15], &qword_1ED072330, &qword_1E65EAB70);
      sub_1E5DF650C(v844, &v862);
      v568 = v829;
      v569 = *v829;
      v570 = v829[3];
      v835 = v829[5];
      v841 = v829[7];
      v844 = v829[9];
      v571 = v805;
      sub_1E6048734(v561, v805, type metadata accessor for PageMetricsClick);
      v572 = (*(v759 + 80) + 160) & ~*(v759 + 80);
      v573 = swift_allocObject();
      *(v573 + 16) = v851;
      sub_1E5DF599C(&v862, v573 + 24);
      *(v573 + 64) = v567;
      *(v573 + 72) = v550;
      v574 = v568[3];
      *(v573 + 112) = v568[2];
      *(v573 + 128) = v574;
      *(v573 + 144) = v568[4];
      v575 = v568[1];
      *(v573 + 80) = *v568;
      *(v573 + 96) = v575;
      v576 = sub_1E60484F0(v571, v573 + v572, type metadata accessor for PageMetricsClick);
      MEMORY[0x1EEE9AC00](v576);

      swift_unknownObjectRetain();

      v577 = v827;
      sub_1E65E4AA8();

      v578 = sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
      v579 = sub_1E603C4F0();
      v580 = v762;
      v581 = v845;
      sub_1E65E47E8();
      (*(v828 + 8))(v577, v581);
      v582 = v711;
      v583 = v580;
      v584 = v780;
      (*(v711 + 16))(v775, v583, v780);
      swift_storeEnumTagMultiPayload();
      *&v862 = v581;
      *(&v862 + 1) = &type metadata for ViewCatalogItemButtonStyle;
      v863 = v578;
      *&v864 = v579;
      swift_getOpaqueTypeConformance2();
      v585 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED073780, &qword_1E65ED9D8);
      v586 = sub_1E5FED46C(&qword_1EE2D4B80, &qword_1ED073680, &qword_1E65ED8E0);
      v587 = sub_1E603C544();
      *&v862 = v806;
      *(&v862 + 1) = MEMORY[0x1E6981CD8];
      v863 = v585;
      *&v864 = v586;
      *(&v864 + 1) = MEMORY[0x1E6981CD0];
      v865 = v587;
      v588 = swift_getOpaqueTypeConformance2();
      *&v862 = v778;
      *(&v862 + 1) = v588;
      swift_getOpaqueTypeConformance2();
      v589 = v777;
      v590 = v584;
      sub_1E65E4138();
      sub_1E5DFD1CC(v589, v819, &qword_1ED0736A0, &qword_1E65ED900);
      swift_storeEnumTagMultiPayload();
      sub_1E603C178();
      sub_1E603C300();
      v591 = v820;
      sub_1E65E4138();
      sub_1E5DFE50C(v589, &qword_1ED0736A0, &qword_1E65ED900);
      sub_1E5DFD1CC(v591, v832, &qword_1ED0736E0, &qword_1E65ED940);
      swift_storeEnumTagMultiPayload();
      sub_1E603BBB8();
      sub_1E603C0EC();
      v592 = v833;
      sub_1E65E4138();
      sub_1E5DFE50C(v591, &qword_1ED0736E0, &qword_1E65ED940);
      sub_1E5DFD1CC(v592, v838, &qword_1ED073760, &qword_1E65ED9C0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v249 = v839;
      sub_1E65E4138();
      sub_1E5DFE50C(v592, &qword_1ED073760, &qword_1E65ED9C0);
      (*(v582 + 8))(v762, v590);
      sub_1E604879C(v561, type metadata accessor for PageMetricsClick);
      goto LABEL_39;
    }

    v327 = *v203;
    v328 = *(v203 + 1);
    LODWORD(v842) = v203[16];
    v329 = v794;
    *v794 = v327;
    v329[1] = v328;
    swift_storeEnumTagMultiPayload();
    v330 = *(v798 + 16);
    v841 = v798 + 16;
    v828 = v330;
    v330(v795, v214, v814);
    v331 = *(v219 + *(v251 + 20) + 8);
    if (v331 > 1)
    {
      if (v331 == 2)
      {
        v593 = &unk_1F5FA7F80;
LABEL_34:
        v843 = sub_1E5F9B258(v593);
        goto LABEL_35;
      }
    }

    else if (!v331)
    {
      v332 = sub_1E65DE608();
      v843 = sub_1E600A684(v332);

LABEL_35:
      (*(v815 + 104))(v799, *MEMORY[0x1E699CD30], v800);
      v594 = sub_1E65DAE38();
      if (v594 == sub_1E65DAE38())
      {
        v595 = sub_1E65E3FF8();
        v860 = MEMORY[0x1E697DFA0];
        v861 = sub_1E6048C44();
        v857 = v595;
        v858 = 0x402C000000000000;
        LOBYTE(v859) = 0;
      }

      else
      {
        v860 = sub_1E65DEAA8();
        v861 = sub_1E604FBB0(&qword_1EE2D6850, MEMORY[0x1E699CCD8]);
        __swift_allocate_boxed_opaque_existential_1(&v857);
        sub_1E65DEA98();
      }

      v813 = type metadata accessor for AppComposer;
      v596 = v835;
      sub_1E6048734(v219, v835, type metadata accessor for AppComposer);
      sub_1E5DF650C(v844, v856);
      v597 = v829;
      v816 = *v829;
      v822 = v829[3];
      v823 = v829[5];
      v824 = v829[7];
      v827 = v829[9];
      v598 = *(v825 + 80);
      v599 = (v598 + 16) & ~v598;
      v600 = v826 + v599;
      *&v851 = v599;
      v601 = v598 | 7;
      v602 = (v826 + v599) & 0xFFFFFFFFFFFFFFF8;
      v603 = swift_allocObject();
      v826 = type metadata accessor for AppComposer;
      sub_1E60484F0(v596, v603 + v599, type metadata accessor for AppComposer);
      v600[v603] = v842;
      v845 = v603;
      sub_1E5DF599C(v856, v603 + v602 + 8);
      v604 = (v603 + ((v602 + 55) & 0xFFFFFFFFFFFFFFF8));
      v605 = v597[3];
      v604[2] = v597[2];
      v604[3] = v605;
      v604[4] = v597[4];
      v606 = v597[1];
      *v604 = *v597;
      v604[1] = v606;
      v607 = v852;
      v608 = v733;
      v609 = v813;
      sub_1E6048734(v852, v733, v813);
      v610 = v794;
      v611 = v683;
      sub_1E5DFD1CC(v794, v683, &qword_1ED0736B0, &unk_1E65F8480);
      v612 = *(v681 + 80);
      v613 = &v600[v612] & ~v612;
      v812 = (v613 + v682);
      v835 = v613;
      v825 = v601 | v612;
      v614 = swift_allocObject();
      v842 = v614;
      sub_1E60484F0(v608, v614 + v851, type metadata accessor for AppComposer);
      sub_1E5FAB460(v611, v614 + v613, &qword_1ED0736B0, &unk_1E65F8480);
      sub_1E6048734(v607, v785, v609);
      sub_1E5DFD1CC(v610, v751, &qword_1ED0736B0, &unk_1E65F8480);
      (v828)(v752, v795, v814);
      sub_1E5DF650C(v844, v855);
      v615 = v815;
      (*(v815 + 16))(v754, v799, v800);
      sub_1E5DFD1CC(&v857, v853, &qword_1ED0737D8, &qword_1E65EDA40);
      v616 = (v812 + 7) & 0xFFFFFFFFFFFFFFF8;
      v617 = v798;
      v618 = (v616 + *(v798 + 80) + 8) & ~*(v798 + 80);
      v619 = (v684 + v618 + 7) & 0xFFFFFFFFFFFFFFF8;
      v620 = (v619 + 47) & 0xFFFFFFFFFFFFFFF8;
      v621 = (*(v615 + 80) + v620 + 80) & ~*(v615 + 80);
      v622 = (v685 + v621 + 7) & 0xFFFFFFFFFFFFFFF8;
      v623 = swift_allocObject();
      sub_1E60484F0(v785, v623 + v851, v826);
      sub_1E5FAB460(v751, v623 + v835, &qword_1ED0736B0, &unk_1E65F8480);
      *(v623 + v616) = v843;
      (*(v617 + 32))(v623 + v618, v752, v814);
      sub_1E5DF599C(v855, v623 + v619);
      v624 = (v623 + v620);
      v625 = v597[3];
      v624[2] = v597[2];
      v624[3] = v625;
      v624[4] = v597[4];
      v626 = v597[1];
      *v624 = *v597;
      v624[1] = v626;
      v627 = v800;
      (*(v815 + 32))(v623 + v621, v754, v800);
      v628 = v623 + v622;
      v629 = v853[1];
      *v628 = v853[0];
      *(v628 + 16) = v629;
      *(v628 + 32) = v854;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737E0, &qword_1E65EDA48);
      v852 = sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
      v630 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737E8, &qword_1E65EDA50);
      v631 = sub_1E65DE748();
      v632 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0737F0, &qword_1E65EDA58);
      v633 = sub_1E604FBB0(&qword_1EE2D6890, MEMORY[0x1E699CC00]);
      v634 = sub_1E6048B5C();
      *&v862 = v631;
      *(&v862 + 1) = MEMORY[0x1E6981CD8];
      v863 = v632;
      *&v864 = v633;
      *(&v864 + 1) = MEMORY[0x1E6981CD0];
      v865 = v634;
      v635 = swift_getOpaqueTypeConformance2();
      *&v862 = v630;
      *(&v862 + 1) = v635;
      swift_getOpaqueTypeConformance2();
      v636 = v694;
      sub_1E65DE9A8();
      (*(v815 + 8))(v799, v627);
      (*(v798 + 8))(v795, v814);
      sub_1E5DFE50C(v794, &qword_1ED0736B0, &unk_1E65F8480);
      sub_1E5DFE50C(&v857, &qword_1ED0737D8, &qword_1E65EDA40);
      v637 = v745;
      sub_1E65E4008();
      sub_1E604FBB0(&qword_1EE2D4D98, MEMORY[0x1E697C5D0]);
      v638 = v696;
      v639 = v789;
      sub_1E65E3C08();
      (*(v747 + 8))(v637, v639);
      v640 = sub_1E5FED46C(&qword_1EE2D6860, &qword_1ED0736B8, &qword_1E65ED918);
      v641 = sub_1E5FED46C(&qword_1EE2D6870, &unk_1ED0779B0, &qword_1E65ED910);
      v642 = v699;
      v643 = v768;
      v644 = v773;
      sub_1E65E47D8();
      (*(v698 + 8))(v638, v644);
      (*(v695 + 8))(v636, v643);
      v645 = v700;
      v646 = v774;
      (*(v700 + 16))(v767, v642, v774);
      swift_storeEnumTagMultiPayload();
      *&v862 = v643;
      *(&v862 + 1) = v644;
      v863 = v640;
      *&v864 = v641;
      swift_getOpaqueTypeConformance2();
      v647 = v769;
      sub_1E65E4138();
      sub_1E5DFD1CC(v647, v819, &qword_1ED0736D8, &qword_1E65ED938);
      swift_storeEnumTagMultiPayload();
      sub_1E603C178();
      sub_1E603C300();
      v648 = v820;
      sub_1E65E4138();
      sub_1E5DFE50C(v647, &qword_1ED0736D8, &qword_1E65ED938);
      sub_1E5DFD1CC(v648, v832, &qword_1ED0736E0, &qword_1E65ED940);
      swift_storeEnumTagMultiPayload();
      sub_1E603BBB8();
      sub_1E603C0EC();
      v649 = v833;
      sub_1E65E4138();
      sub_1E5DFE50C(v648, &qword_1ED0736E0, &qword_1E65ED940);
      sub_1E5DFD1CC(v649, v838, &qword_1ED073760, &qword_1E65ED9C0);
      swift_storeEnumTagMultiPayload();
      sub_1E603BB2C();
      sub_1E603C628();
      v249 = v839;
      sub_1E65E4138();
      sub_1E5DFE50C(v649, &qword_1ED073760, &qword_1E65ED9C0);
      (*(v645 + 8))(v642, v646);
      goto LABEL_39;
    }

    v593 = &unk_1F5FA7F58;
    goto LABEL_34;
  }

  sub_1E5DFE50C(v209, &qword_1ED072638, &qword_1E65EB950);
  if (*(v852 + *(v166 + 20) + 8) == 3)
  {
    v215 = v827;
    sub_1E65E4AA8();
    v216 = v828;
    v217 = v845;
    (*(v828 + 16))(v842, v215, v845);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
    v218 = v843;
    sub_1E65E4138();
    (*(v216 + 8))(v215, v217);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&qword_1EE2D4B90, &qword_1ED0736F0, &qword_1E65ED950);
    v218 = v843;
    sub_1E65E4138();
  }

  sub_1E5DFD1CC(v218, v848, &qword_1ED073630, &qword_1E65ED898);
  swift_storeEnumTagMultiPayload();
  sub_1E603BAA0();
  sub_1E603C7FC();
  sub_1E65E4138();
  return sub_1E5DFE50C(v218, &qword_1ED073630, &qword_1E65ED898);
}