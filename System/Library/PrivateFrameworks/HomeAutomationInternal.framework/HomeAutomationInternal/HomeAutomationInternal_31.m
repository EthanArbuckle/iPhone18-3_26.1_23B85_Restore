id sub_252B61F1C(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_2529904E4(a1);
  }

  return a1;
}

void sub_252B61F34(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_252927D3C(a1);
  }
}

unint64_t sub_252B61F5C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_43;
        }

        v4 = *(v29 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_42;
        }
      }

      v6 = sub_2529E789C();

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_41;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_20;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v9)
        {
LABEL_20:
          sub_252E378C4();
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_45;
          }

          v33 = v3;
          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_47;
            }

            sub_252B62E54();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541890, &unk_252E4DC80);
              v19 = sub_2529FBE00(v32, i, v6);
              v21 = *v20;

              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Scene();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v8 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_46;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_44;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B622A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252B625BC(a1);
}

uint64_t sub_252B62348(__int128 *a1)
{
  v1 = a1[5];
  v31 = a1[4];
  v32 = v1;
  v2 = a1[7];
  v33 = a1[6];
  v34 = v2;
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v4 = a1[3];
  v29 = a1[2];
  v30 = v4;
  v5 = *(a1 + 16);
  memcpy(__dst, a1 + 136, sizeof(__dst));
  if (!*(v5 + 16))
  {
    return 0;
  }

  type metadata accessor for HomeStore();
  v6 = static HomeStore.shared.getter();
  memcpy(v25, __dst, sizeof(v25));
  v7 = sub_252BAC7E4();
  v8 = HomeStore.scenes(matching:)(v7);
  LODWORD(v10) = v9;

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = *(v5 + 16);
    if (v12)
    {
      if (v8 >> 62)
      {
        goto LABEL_34;
      }

      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
      v14 = 0;
      v15 = v5 + 32;
      v24 = v10;
      v22 = v12;
      while (2)
      {
        if (v14 >= *(v5 + 16))
        {
          goto LABEL_33;
        }

        v16 = (v15 + 16 * v14);
        v10 = *v16;
        v17 = v16[1];
        v23 = v14 + 1;

        v12 = 0;
        while (v13 != v12)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2530ADF00](v12, v8);
            if (__OFADD__(v12, 1))
            {
              goto LABEL_31;
            }
          }

          else
          {
            if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v18 = *(v8 + 8 * v12 + 32);

            if (__OFADD__(v12, 1))
            {
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              v13 = sub_252E378C4();
              goto LABEL_8;
            }
          }

          if (*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v10 && *(v18 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v17)
          {

            goto LABEL_28;
          }

          v20 = sub_252E37DB4();

          ++v12;
          if (v20)
          {

LABEL_28:
            v11 = 0;
            LOBYTE(v10) = v24;
            goto LABEL_29;
          }
        }

        v11 = 1;
        v12 = v22;
        v14 = v23;
        LODWORD(v10) = v24;
        v15 = v5 + 32;
        if (v23 != v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v11 = 1;
    }
  }

LABEL_29:
  sub_252929F10(v8, v10 & 1);
  return v11;
}

uint64_t sub_252B625BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 456) = *a1;
  *(v1 + 472) = v2;
  *(v1 + 488) = *(a1 + 32);
  *(v1 + 528) = *(a1 + 48);
  v3 = *(a1 + 128);
  *(v1 + 448) = *(a1 + 120);
  v4 = *(a1 + 72);
  v5 = *(a1 + 104);
  *(v1 + 416) = *(a1 + 88);
  *(v1 + 432) = v5;
  *(v1 + 384) = *(a1 + 56);
  *(v1 + 400) = v4;
  *(v1 + 536) = v3;
  memcpy((v1 + 16), (a1 + 136), 0x170uLL);

  return MEMORY[0x2822009F8](sub_252B62670, 0, 0);
}

uint64_t sub_252B62670()
{
  v75 = v0;
  v61 = v0 + 504;
  type metadata accessor for HomeStore();
  v1 = static HomeStore.shared.getter();
  v2 = sub_2529D8DC0();

  *&v64 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_16:
    v3 = sub_252E378C4();
    v62 = v0;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v62 = v0;
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v11 = v64;
            goto LABEL_18;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);

          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v7 = *(v0 + 528);
        v8 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        *(v0 + 504) = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *(v0 + 512) = v8;
        v9 = swift_task_alloc();
        *(v9 + 16) = v61;

        LOBYTE(v7) = sub_2529ED970(sub_25296A69C, v9, v7);

        if (v7)
        {
          sub_252E37A94();
          v10 = *(v64 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v4;
        v0 = v62;
        if (v6 == v3)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
LABEL_18:
  v12 = (v0 + 456);

  v13 = sub_252B61F5C(v11);

  if (v13 >> 62)
  {
    goto LABEL_64;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_20:

    v14 = static HomeStore.shared.getter();
    v13 = sub_2529DA828();
  }

LABEL_21:
  v15 = v12[1];
  v64 = *v12;
  v65 = v15;
  v66 = v12[2];
  v16 = *(v0 + 384);
  v69 = *(v0 + 400);
  v17 = *(v0 + 432);
  v70 = *(v0 + 416);
  v71 = v17;
  v18 = *(v0 + 536);
  v67 = *(v0 + 528);
  v19 = *(v0 + 448);
  v68 = v16;
  v72 = v19;
  v73 = v18;
  memcpy(v74, (v0 + 16), sizeof(v74));
  v20 = sub_252A0EA50();
  v59 = *(v20 + 16);
  if (v59)
  {
    v55 = v12;
    if (v13 >> 62)
    {
      v54 = v20;
      v63 = v13 & 0xFFFFFFFFFFFFFF8;
      v21 = sub_252E378C4();
      v20 = v54;
    }

    else
    {
      v63 = v13 & 0xFFFFFFFFFFFFFF8;
      v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = 0;
    v57 = v20 + 32;
    v23 = v13 & 0xC000000000000001;
    v58 = MEMORY[0x277D84F90];
    v56 = v20;
    do
    {
      if (v22 >= *(v20 + 16))
      {
        goto LABEL_63;
      }

      if (v21)
      {
        v25 = 0;
        v60 = v22;
        v0 = *(v57 + 8 * v22);
        while (1)
        {
          if (v23)
          {
            v26 = v13;
            v27 = MEMORY[0x2530ADF00](v25, v13);
            v13 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              goto LABEL_61;
            }
          }

          else
          {
            if (v25 >= *(v63 + 16))
            {
              goto LABEL_62;
            }

            v26 = v13;
            v27 = *(v13 + 8 * v25 + 32);

            v13 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              if (!sub_252E378C4())
              {
                goto LABEL_20;
              }

              goto LABEL_21;
            }
          }

          v28 = [*(v27 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actionSetType];
          v29 = sub_252E36F34();
          v12 = v30;

          if (qword_27F53F8B0 != -1)
          {
            swift_once();
          }

          v31 = off_27F546228;
          if (*(off_27F546228 + 2) && (v32 = sub_252A44A10(v29, v12), (v33 & 1) != 0))
          {
            v34 = *(v31[7] + 8 * v32);
          }

          else
          {
            v34 = 0;
          }

          if (v34 == v0)
          {
            v36 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v37 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

            if (qword_27F53F520 != -1)
            {
              swift_once();
            }

            v38 = v62[67];
            v39 = sub_252E36AD4();
            __swift_project_value_buffer(v39, qword_27F544E08);
            *&v64 = 0;
            *(&v64 + 1) = 0xE000000000000000;
            sub_252E379F4();
            v62[63] = 0;
            v62[64] = 0xE000000000000000;
            MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E817A0);
            MEMORY[0x2530AD570](v36, v37);
            MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E817C0);
            v62[65] = v0;
            sub_252E37AE4();
            MEMORY[0x2530AD570](0x646E6163206E690ALL, 0xEE00206574616469);
            v40 = MEMORY[0x2530AD730](v38, MEMORY[0x277D837D0]);
            MEMORY[0x2530AD570](v40);

            v12 = v62[64];
            sub_252CC3D90(v62[63], v12, 0xD000000000000092, 0x8000000252E817E0);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = sub_2529F7A80(0, *(v58 + 2) + 1, 1, v58);
            }

            v13 = v26;
            v0 = *(v58 + 2);
            v41 = *(v58 + 3);
            if (v0 >= v41 >> 1)
            {
              v58 = sub_2529F7A80((v41 > 1), v0 + 1, 1, v58);
            }

            *(v58 + 2) = v0 + 1;
            v24 = &v58[16 * v0];
            *(v24 + 4) = v36;
            *(v24 + 5) = v37;
LABEL_26:
            v20 = v56;
            v22 = v60;
            break;
          }

          ++v25;
          v35 = v13 == v21;
          v13 = v26;
          if (v35)
          {
            goto LABEL_26;
          }
        }
      }

      ++v22;
    }

    while (v22 != v59);

    v0 = v62;
    v12 = v55;
    v42 = v58;
  }

  else
  {

    v42 = MEMORY[0x277D84F90];
  }

  if (*(v42 + 2))
  {
    v43 = *(v0 + 536);
    v44 = *(v0 + 528);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_252E3C290;
    _s7BuilderCMa_1();
    swift_allocObject();
    sub_252E1E238();
    v46 = v12[1];
    v64 = *v12;
    v65 = v46;
    v66 = v12[2];
    v47 = *(v0 + 384);
    v69 = *(v0 + 400);
    v48 = *(v0 + 432);
    v70 = *(v0 + 416);
    v71 = v48;
    v67 = v44;
    v49 = *(v0 + 448);
    v68 = v47;
    v72 = v49;
    v73 = v43;
    memcpy(v74, (v0 + 16), sizeof(v74));
    v50 = sub_252E1EBE8(&v64);

    v51 = *(v50 + 144);
    *(v50 + 144) = v42;

    sub_252E1E4F8(v45 + 32);
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  v52 = *(v0 + 8);

  return v52(v45);
}

unint64_t sub_252B62E54()
{
  result = qword_27F541898;
  if (!qword_27F541898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541890, &unk_252E4DC80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541898);
  }

  return result;
}

uint64_t sub_252B62EB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x7954797469746E65;
  }

  else
  {
    v4 = 0x6F4D746567726174;
  }

  if (v3)
  {
    v5 = 0xEA00000000006564;
  }

  else
  {
    v5 = 0xEA00000000006570;
  }

  if (*a2)
  {
    v6 = 0x7954797469746E65;
  }

  else
  {
    v6 = 0x6F4D746567726174;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006570;
  }

  else
  {
    v7 = 0xEA00000000006564;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252B62F64()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B62FEC()
{
  *v0;
  sub_252E37044();
}

uint64_t sub_252B63060()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B630E4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

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

void sub_252B63144(uint64_t *a1@<X8>)
{
  v2 = 0x6F4D746567726174;
  if (*v1)
  {
    v2 = 0x7954797469746E65;
  }

  v3 = 0xEA00000000006564;
  if (*v1)
  {
    v3 = 0xEA00000000006570;
  }

  *a1 = v2;
  a1[1] = v3;
}

dispatch_semaphore_t sub_252B63188()
{
  result = dispatch_semaphore_create(1);
  qword_27F575848 = result;
  return result;
}

uint64_t sub_252B631FC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (v1 < 0)
  {
    v10 = *(v0 + 24);
  }

  result = sub_252E378C4();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  v3 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v4 = MEMORY[0x2530ADF00](v3, v1);

LABEL_8:
    swift_beginAccess();
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = (v5 + 504 * v6 - 472);
      memcpy(__dst, v7, sizeof(__dst));
      memmove(__src, v7, 0x1F8uLL);
      GEOLocationCoordinate2DMake(__src);
      sub_2529353AC(__dst, v13);
      memcpy(v13, __src, sizeof(v13));
    }

    else
    {
      sub_25293DEE0(v13);
    }

    memcpy(__src, v13, sizeof(__src));
    v1 = v4;
    v3 = sub_252953488(v4, __src, 0);

    if (qword_27F53F4E8 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_12:
    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();

    __src[0] = 0xD00000000000001FLL;
    __src[1] = 0x8000000252E82140;
    __dst[0] = v3;
    type metadata accessor for HomeAutomationIntentContext(0);

    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    sub_252CC3D90(__src[0], __src[1], 0xD00000000000006BLL, 0x8000000252E6C470);

    return v3;
  }

  if (v3 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v1 + 8 * v3 + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

BOOL sub_252B63488()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 504 * v2 - 80);
  if (v3 >> 62)
  {
    if (sub_252E378C4())
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v5 + 504 * v6;
      v11 = *(v7 - 40);
      v12 = *(v7 - 24);
      v13 = *(v7 - 8);
      v14 = *(v7 + 8);
      v9 = *(v7 - 72);
      v10 = *(v7 - 56);
      return !sub_252C5CF44();
    }

    return 0;
  }

  return 1;
}

BOOL sub_252B6355C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2 >= 2)
  {
    v4 = *(v1 + 504 * v2 - 584);
    if (v4 >> 62)
    {
      if (sub_252E378C4())
      {
        return 1;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }

    v5 = *(v0 + 16);
    v6 = *(v5 + 16);
    if (v6 >= 2)
    {
      v7 = v5 + 504 * v6 - 976;
      v11 = *(v7 + 432);
      v12 = *(v7 + 448);
      v13 = *(v7 + 464);
      v14 = *(v7 + 480);
      v9 = *(v7 + 400);
      v10 = *(v7 + 416);
      return !sub_252C5CF44();
    }
  }

  return 0;
}

uint64_t sub_252B63638()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 504 * v2;
    v12 = *(v3 - 40);
    v13 = *(v3 - 24);
    v14 = *(v3 - 8);
    v15 = *(v3 + 8);
    v10 = *(v3 - 72);
    v11 = *(v3 - 56);
    v4 = sub_252C5DF3C();
  }

  else
  {
    v4 = 11;
  }

  if (sub_252C5E834(v4) != 0x5465636976726573 || v5 != 0xEB00000000657079)
  {
    v7 = sub_252E37DB4();

    if (v7)
    {
      v6 = 1;
      return v6 & 1;
    }

    if (sub_252C5E834(v4) != 0x726F737365636361 || v8 != 0xED00006570795479)
    {
      v6 = sub_252E37DB4();

      return v6 & 1;
    }
  }

  v6 = 1;
  return v6 & 1;
}

uint64_t sub_252B63794()
{
  v1 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v1;
  *(v0 + 32) = v1;
  *(v0 + 40) = sub_252CC4068(v1);
  *(v0 + 48) = 0;
  *(v0 + 50) = 0;
  *(v0 + 56) = sub_252CC407C(v1);
  *(v0 + 64) = sub_252CC41F0(v1);
  *(v0 + 72) = 0;
  *(v0 + 76) = 0;
  *(v0 + 80) = v1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = v1;
  *(v0 + 160) = 0;
  *(v0 + 168) = v1;
  *(v0 + 176) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v0 + 184) = v1;
  *(v0 + 192) = 200;
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v0 + 200) = 0;
  *(v0 + 208) = v2;
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_showIntent;
  v4 = sub_252E365E4();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_preferNotices) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_enforceVoiceOnly) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_supressSnippet) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0;
  v5 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes) = v1;
  v6 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  *v7 = 0;
  v7[1] = 0;
  return v0;
}

uint64_t sub_252B63924(uint64_t a1)
{
  v2 = *(v1 + 168);
  *(v1 + 168) = a1;

  swift_beginAccess();
  v3 = *(v1 + 208);
  [v3 lock];
  *(v1 + 200) = 0;
  [v3 unlock];
  swift_endAccess();
  result = swift_beginAccess();
  v5 = *(v1 + 184);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v12 = *(v1 + 184);
    }

    result = sub_252E378C4();
    v6 = result;
    if (!result)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_12:
      v11 = *(v1 + 184);
      *(v1 + 184) = MEMORY[0x277D84F90];
    }
  }

  if (v6 >= 1)
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      ++v7;
      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544E98);
      sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E82120, 0xD00000000000006BLL, 0x8000000252E6C470);
      sub_252E37614();
    }

    while (v6 != v7);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B63B0C()
{
  v1 = v0;
  v2 = sub_252E36C84();
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_252E36D54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v26 - v12;
  swift_beginAccess();
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  [v15 lock];
  [v15 unlock];

  if (v14)
  {
    v27 = v2;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    v17 = __swift_project_value_buffer(v16, qword_27F544E98);
    v26[0] = "Clearing SessionContext";
    v26[1] = v17;
    sub_252CC3D90(0xD000000000000028, 0x8000000252E82080, 0xD00000000000006BLL, 0x8000000252E6C470);
    v18 = dispatch_semaphore_create(0);
    v19 = v1[22];
    [v19 lock];
    swift_beginAccess();
    v20 = v18;
    MEMORY[0x2530AD700]();
    if (*((v1[23] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[23] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    swift_endAccess();
    [v19 unlock];
    sub_252E36D14();
    *v5 = 200;
    v21 = v27;
    v22 = v28;
    (*(v28 + 104))(v5, *MEMORY[0x277D85178], v27);
    MEMORY[0x2530AD270](v11, v5);
    (*(v22 + 8))(v5, v21);
    v23 = *(v7 + 8);
    v23(v11, v6);
    sub_252E375F4();
    v23(v13, v6);
    if (sub_252E36C94())
    {
      sub_252CC4050(0xD000000000000049, 0x8000000252E820B0, 0xD00000000000006BLL, v26[0] | 0x8000000000000000, 0xD00000000000001ALL, 0x8000000252E82100, 242);

      return MEMORY[0x277D84F90];
    }
  }

  v25 = v1[21];
}

void *sub_252B63EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_252B68C70(a1);
  if (v6 & 1) == 0 && (v7 = v5, swift_beginAccess(), v8 = *(v2 + 56), *(v8 + 16)) && (v9 = sub_252A44B34(v7), (v10))
  {
    memcpy(__dst, (*(v8 + 56) + 504 * v9), sizeof(__dst));
    sub_2529353AC(__dst, __src);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    sub_252CC3D90(0xD000000000000024, 0x8000000252E82050, 0xD00000000000006BLL, 0x8000000252E6C470);
    memcpy(__src, __dst, sizeof(__src));
    GEOLocationCoordinate2DMake(__src);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E82010);
    __dst[0] = sub_252B68C70(a1);
    LOBYTE(__dst[1]) = v13 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    v14 = sub_252E36F94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006BLL, 0x8000000252E6C470);

    sub_25293DEE0(__src);
  }

  return memcpy(a2, __src, 0x1F8uLL);
}

uint64_t sub_252B64134(uint64_t a1, const void *a2)
{
  v4 = sub_252E34284();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_252E341A4();
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E34164();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E358D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v47, a2, sizeof(v47));
  memcpy(v48, a2, 0x1F8uLL);
  result = sub_252956B94(v48);
  if (result == 1)
  {
    return result;
  }

  memcpy(v46, v48, sizeof(v46));
  (*(v11 + 16))(v14, a1, v10);
  v21 = (*(v11 + 88))(v14, v10);
  v22 = a1;
  if (v21 == *MEMORY[0x277D5C128])
  {
    (*(v11 + 96))(v14, v10);
    (*(v16 + 32))(v19, v14, v15);
    memcpy(v45, v47, sizeof(v45));
    sub_2529353AC(v45, &v43);
  }

  else
  {
    if (v21 != *MEMORY[0x277D5C158])
    {
      if (v21 != *MEMORY[0x277D5C160])
      {
        return (*(v11 + 8))(v14, v10);
      }

      (*(v11 + 96))(v14, v10);
      v31 = v35;
      v32 = v37;
      (*(v35 + 32))(v9, v14, v37);
      memcpy(v45, v47, sizeof(v45));
      sub_2529353AC(v45, &v43);
      v33 = v36;
      sub_252E34184();
      v24 = sub_252E34274();
      (*(v38 + 8))(v33, v39);
      (*(v31 + 8))(v9, v32);
      goto LABEL_7;
    }

    (*(v11 + 96))(v14, v10);
    v23 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];
    memcpy(v45, v47, sizeof(v45));
    sub_2529353AC(v45, &v43);

    (*(v16 + 32))(v19, v14, v15);
  }

  v24 = sub_252E358C4();
  (*(v16 + 8))(v19, v15);
LABEL_7:
  v25 = v40;
  swift_beginAccess();
  memcpy(v45, v47, sizeof(v45));
  sub_2529353AC(v45, &v43);
  v26 = *(v25 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *(v25 + 56);
  *(v25 + 56) = 0x8000000000000000;
  sub_2529FB360(v46, v24, isUniquelyReferenced_nonNull_native);
  *(v25 + 56) = v43;
  swift_endAccess();
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v28 = sub_252E36AD4();
  __swift_project_value_buffer(v28, qword_27F544D60);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E81FD0);
  v41 = sub_252B68C70(v22);
  v42 = v29 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(v43, v44, 0xD00000000000006BLL, 0x8000000252E6C470);
  sub_25293847C(v47, &qword_27F5404C8, &unk_252E3FD60);
}

id sub_252B64768(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v3 = sub_252A44AB4(__dst);
  if ((v4 & 1) == 0)
  {

    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544D60);
  sub_252CC3D90(0xD00000000000003CLL, 0x8000000252E81F90, 0xD00000000000006BLL, 0x8000000252E6C470);
  return v5;
}

uint64_t sub_252B64884()
{
  if (sub_252B64C90())
  {
    return 0;
  }

  if (sub_252B64914())
  {
    return 1;
  }

  if (sub_252B64FF8())
  {
    return 2;
  }

  if (sub_252B653E0() & 1) != 0 && (sub_252B65FC8())
  {
    return 3;
  }

  if (*(v0 + 48))
  {
    return 4;
  }

  if (*(v0 + 49))
  {
    return 5;
  }

  return 6;
}

uint64_t sub_252B64914()
{
  swift_beginAccess();
  v2 = v0[4];
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

  while (1)
  {
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
LABEL_49:

      v0 = MEMORY[0x2530ADF00](v4, v2);

      goto LABEL_8;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_49;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }

    v0 = *(v2 + 8 * v4 + 32);
LABEL_8:
    if ((sub_252C2C8E0(7) & 1) == 0)
    {
      v26 = 0;
      goto LABEL_55;
    }

    v5 = sub_252C285F0();
    v1 = v5;
    if (!(v5 >> 62))
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v6)
      {
        goto LABEL_53;
      }

      goto LABEL_11;
    }

LABEL_52:
    v6 = sub_252E378C4();
    if (!v6)
    {
LABEL_53:
      v26 = 0;
      goto LABEL_54;
    }

LABEL_11:
    v28 = v0;
    v29 = v1;
    v7 = 0;
    v2 = v1 & 0xC000000000000001;
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v9 = v1 + 32;
    v32 = v1 & 0xC000000000000001;
    v33 = v6;
    v30 = v1 + 32;
    v31 = v1 & 0xFFFFFFFFFFFFFF8;
LABEL_14:
    if (v2)
    {
      v10 = MEMORY[0x2530ADF00](v7, v29);
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_45;
      }

      v10 = *(v9 + 8 * v7);
    }

    v0 = v10;
    if (!__OFADD__(v7++, 1))
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v3 = sub_252E378C4();
    if (!v3)
    {
      return 0;
    }
  }

  v12 = sub_252DA6828();
  v13 = *(v12 + 2);
  v14 = 32;
  do
  {
    if (!v13)
    {
      v1 = v12;

      goto LABEL_13;
    }

    v15 = *&v12[v14];
    v14 += 8;
    --v13;
  }

  while (v15 != 7);

  v16 = [v0 taskResponses];
  if (v16)
  {
    v17 = v16;
    v34 = v0;
    type metadata accessor for HomeUserTaskResponse();
    v1 = sub_252E37264();

    if (v1 >> 62)
    {
      v18 = sub_252E378C4();
      if (v18)
      {
LABEL_24:
        v19 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x2530ADF00](v19, v1);
          }

          else
          {
            if (v19 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v20 = *(v1 + 8 * v19 + 32);
          }

          v21 = v20;
          v0 = (v19 + 1);
          if (__OFADD__(v19, 1))
          {
            break;
          }

          v22 = [v20 userTask];
          if (v22 && (v2 = v22, v23 = [v22 value], v2, v23))
          {
            [v23 doubleValue];
            v25 = v24;

            if (v25 > 51.0)
            {

              v26 = 1;
              v0 = v34;
              goto LABEL_54;
            }
          }

          else
          {
          }

          ++v19;
          if (v0 == v18)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18)
      {
        goto LABEL_24;
      }
    }

LABEL_39:

    v2 = v32;
    v6 = v33;
    v9 = v30;
    v8 = v31;
  }

  else
  {
  }

LABEL_13:
  if (v7 != v6)
  {
    goto LABEL_14;
  }

  v26 = 0;
  v0 = v28;
LABEL_54:

LABEL_55:

  return v26;
}

uint64_t sub_252B64C90()
{
  swift_beginAccess();
  v2 = v0[4];
  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    goto LABEL_51;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_52;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v0 = *(v2 + 8 * v4 + 32);
  while (1)
  {
    if ((sub_252C2C8E0(7) & 1) == 0)
    {
      v26 = 0;
      goto LABEL_58;
    }

    v5 = sub_252C285F0();
    v1 = v5;
    if (v5 >> 62)
    {
      break;
    }

    v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_56;
    }

LABEL_11:
    v30 = v4;
    v31 = v0;
    v6 = 0;
    v2 = v1 & 0xC000000000000001;
    v7 = v1 & 0xFFFFFFFFFFFFFF8;
    v8 = v1 + 32;
    v32 = v1 + 32;
    v33 = v1;
    v28 = v1 & 0xFFFFFFFFFFFFFF8;
    v29 = v1 & 0xC000000000000001;
    while (1)
    {
LABEL_12:
      if (v2)
      {
        v9 = MEMORY[0x2530ADF00](v6, v1);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_50;
        }

        v9 = *(v8 + 8 * v6);
      }

      v0 = v9;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v11 = sub_252DA6828();
      v12 = *(v11 + 2);
      v13 = 32;
      do
      {
        if (!v12)
        {

          if (v6 != v4)
          {
            goto LABEL_12;
          }

LABEL_44:
          v26 = 0;
          v0 = v31;
          goto LABEL_57;
        }

        v14 = *&v11[v13];
        v13 += 8;
        --v12;
      }

      while (v14 != 7);

      v15 = [v0 taskResponses];
      if (v15)
      {
        v16 = v15;
        type metadata accessor for HomeUserTaskResponse();
        v1 = sub_252E37264();

        v2 = v1 & 0xFFFFFFFFFFFFFF8;
        if (v1 >> 62)
        {
          v17 = sub_252E378C4();
        }

        else
        {
          v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = 0;
        while (1)
        {
          if (v17 == v18)
          {

            v1 = v33;
            v2 = v29;
            v4 = v30;
            v7 = v28;
            goto LABEL_37;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x2530ADF00](v18, v1);
          }

          else
          {
            if (v18 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_46;
            }

            v19 = *(v1 + 8 * v18 + 32);
          }

          v20 = v19;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          v21 = [v19 userTask];
          if (!v21 || (v22 = v21, v23 = [v21 value], v22, !v23))
          {

LABEL_43:

            v26 = 1;
            goto LABEL_57;
          }

          [v23 doubleValue];
          v25 = v24;

          ++v18;
          if (v25 < 30.0)
          {
            goto LABEL_43;
          }
        }

        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        v3 = sub_252E378C4();
        if (!v3)
        {
          return 0;
        }

        goto LABEL_3;
      }

LABEL_37:
      v8 = v32;
      if (v6 == v4)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:

    v0 = MEMORY[0x2530ADF00](v4, v2);
  }

LABEL_55:
  v4 = sub_252E378C4();
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_56:
  v26 = 0;
LABEL_57:

LABEL_58:

  return v26;
}

uint64_t sub_252B64FF8()
{
  swift_beginAccess();
  v3 = *(v0 + 32);
  if (v3 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v1 = *(v3 + 8 * v5 + 32);
      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_54;
  }

  v1 = MEMORY[0x2530ADF00](v5, v3);

LABEL_8:
  if ((sub_252C2C8E0(28) & 1) == 0)
  {
    v30 = 0;
    goto LABEL_57;
  }

  v3 = v1;
  v6 = sub_252C285F0();
  v2 = v6;
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_55;
    }

    goto LABEL_11;
  }

LABEL_54:
  v7 = sub_252E378C4();
  if (v7)
  {
LABEL_11:
    v8 = 0;
    v9 = v2 & 0xC000000000000001;
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    v11 = v2 + 32;
    v38 = v2;
    v39 = v1;
    v35 = v2 & 0xC000000000000001;
    v36 = v7;
    v33 = v2 + 32;
    v34 = v2 & 0xFFFFFFFFFFFFFF8;
LABEL_14:
    if (v9)
    {
      v12 = MEMORY[0x2530ADF00](v8, v2);
    }

    else
    {
      if (v8 >= *(v10 + 16))
      {
        goto LABEL_47;
      }

      v12 = *(v11 + 8 * v8);
    }

    v3 = v12;
    if (__OFADD__(v8++, 1))
    {
      goto LABEL_46;
    }

    v14 = sub_252DA6828();
    v15 = *(v14 + 2);
    v16 = 32;
    while (v15)
    {
      v17 = *&v14[v16];
      v16 += 8;
      --v15;
      if (v17 == 28)
      {

        v18 = [v3 taskResponses];
        if (v18)
        {
          v19 = v18;
          v40 = v3;
          type metadata accessor for HomeUserTaskResponse();
          v2 = sub_252E37264();

          v37 = v8;
          v3 = v2 & 0xFFFFFFFFFFFFFF8;
          if (v2 >> 62)
          {
            v20 = sub_252E378C4();
          }

          else
          {
            v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v21 = 0;
          while (1)
          {
            if (v20 == v21)
            {

              v2 = v38;
              v1 = v39;
              v7 = v36;
              v8 = v37;
              v10 = v34;
              v9 = v35;
              v11 = v33;
              goto LABEL_13;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x2530ADF00](v21, v2);
            }

            else
            {
              if (v21 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v24 = *(v2 + 8 * v21 + 32);
            }

            v25 = v24;
            if (__OFADD__(v21, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              v4 = sub_252E378C4();
              if (!v4)
              {
                return 0;
              }

              goto LABEL_3;
            }

            v26 = [v24 userTask];
            if (v26)
            {
              v27 = v26;
              v22 = [v26 value];

              if (!v22)
              {
                goto LABEL_26;
              }

              v28 = [v22 stringValue];

              if (v28)
              {
                v22 = sub_252E36F34();
                v1 = v29;

                goto LABEL_27;
              }
            }

            v22 = 0;
LABEL_26:
            v1 = 0;
LABEL_27:
            v41[0] = v22;
            v41[1] = v1;
            MEMORY[0x28223BE20](v26);
            v32[2] = v41;
            v23 = sub_2529EDB18(sub_252B68C50, v32, &unk_2864A3470);

            ++v21;
            if (v23)
            {

              v30 = 1;
              v1 = v40;
              goto LABEL_56;
            }
          }
        }

LABEL_13:
        if (v8 == v7)
        {
          goto LABEL_55;
        }

        goto LABEL_14;
      }
    }

    goto LABEL_13;
  }

LABEL_55:
  v30 = 0;
LABEL_56:

LABEL_57:

  return v30;
}

uint64_t sub_252B653E0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  memcpy(__dst, (v1 + 504 * v2 - 472), sizeof(__dst));
  swift_beginAccess();
  v3 = *(v0 + 24);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v19 = *(v0 + 24);
    }

    result = sub_252E378C4();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v5 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v3 + 8 * v5 + 32);
      sub_2529353AC(__dst, v20);
      v7 = v6;
      goto LABEL_9;
    }

    __break(1u);
    return result;
  }

  sub_2529353AC(__dst, v20);

  v7 = MEMORY[0x2530ADF00](v5, v3);

LABEL_9:
  v8 = [v7 userTask];
  if (!v8)
  {
    sub_252C515AC();
    goto LABEL_17;
  }

  v9 = v8;
  if ([v8 taskType] == 4)
  {

    goto LABEL_14;
  }

  v10 = [v9 taskType];

  if (v10 != 5)
  {
LABEL_17:

    sub_252935408(__dst);
    return 0;
  }

LABEL_14:
  v11 = [v7 userTask];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  v13 = [v11 attribute];

  v14 = vdupq_n_s64(v13);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A54F0, v14), vceqq_s64(unk_2864A5500, v14)))) & 1) == 0 && qword_2864A5510 != v13)
  {
    goto LABEL_17;
  }

  if (BYTE1(__dst[26]) == 2)
  {
    v15 = (__dst[11] + 32);
    v16 = *(__dst[11] + 16);
    while (2)
    {
      if (v16)
      {
        switch(*v15)
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
          case 0xD:
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
          case 0x12:
          case 0x13:
          case 0x14:
            v17 = sub_252E37DB4();

            ++v15;
            --v16;
            if ((v17 & 1) == 0)
            {
              continue;
            }

            goto LABEL_25;
          default:

            goto LABEL_26;
        }
      }

      goto LABEL_17;
    }
  }

LABEL_25:

LABEL_26:
  v18 = *(__dst[24] + 16);
  sub_252935408(__dst);
  return v18 != 0;
}

void sub_252B65874(char *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252CC4050(0xD00000000000003FLL, 0x8000000252E81F50, 0xD00000000000006BLL, 0x8000000252E6C470, 0x6465746365707865, 0xED00006574617453, 379);
    goto LABEL_62;
  }

  memcpy(__dst, (v4 + 504 * v5 - 472), sizeof(__dst));
  if (!*(__dst[24] + 16))
  {
    sub_2529353AC(__dst, v44);
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    v17 = 0xD000000000000030;
    v18 = 0x8000000252E81F10;
    v19 = 384;
LABEL_61:
    sub_252CC4050(v17, v18, 0xD00000000000006BLL, 0x8000000252E6C470, 0x6465746365707865, 0xED00006574617453, v19);
    sub_252935408(__dst);
LABEL_62:
    v39 = 77;
LABEL_63:
    *a1 = v39;
    return;
  }

  v6 = *(__dst[24] + 32);
  swift_beginAccess();
  v7 = *(v1 + 24);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_35:
    sub_2529353AC(__dst, v44);
    goto LABEL_36;
  }

  if (v7 < 0)
  {
    v25 = *(v2 + 24);
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_5:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_77;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_77:
    sub_2529353AC(__dst, v44);

    v11 = MEMORY[0x2530ADF00](v9, v7);

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_79;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    swift_once();
LABEL_43:
    v27 = qword_27F575A28;
    if (*(qword_27F575A28 + 16))
    {
      v28 = sub_252A4509C(v6);
      if (v29)
      {
        LOBYTE(v6) = *(*(v27 + 56) + v28);
        goto LABEL_46;
      }
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    __swift_project_value_buffer(v38, qword_27F544D60);
    v17 = 0xD000000000000034;
    v18 = 0x8000000252E81ED0;
    v19 = 402;
    goto LABEL_61;
  }

  v10 = *(v7 + 8 * v9 + 32);
  sub_2529353AC(__dst, v44);
  v11 = v10;
LABEL_10:
  v12 = [v11 userTask];

  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = [v12 attribute];

  if (v13 != 8)
  {
    goto LABEL_36;
  }

  v44[0] = v6;
  if (StateSemantic.rawValue.getter() != 1852141679 || v14 != 0xE400000000000000)
  {
    v20 = sub_252E37DB4();

    if (v20)
    {
      goto LABEL_22;
    }

    v44[0] = v6;
    if (StateSemantic.rawValue.getter() != 0x6465736F6C63 || v23 != 0xE600000000000000)
    {
      v24 = sub_252E37DB4();

      if ((v24 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_22;
    }
  }

LABEL_22:
  v44[0] = v6;
  if (StateSemantic.rawValue.getter() == 1852141679 && v21 == 0xE400000000000000)
  {

    v6 = 6;
  }

  else
  {
    v22 = sub_252E37DB4();

    if (v22)
    {
      v6 = 6;
    }

    else
    {
      v6 = 5;
    }
  }

LABEL_36:
  v26 = LOBYTE(__dst[26]);
  memcpy(v44, __dst, sizeof(v44));
  if ((sub_252A10D90() & 1) != 0 && (v26 == 9 || (sub_252A0D524(v26, 0) & 1) == 0) || BYTE1(__dst[26]) == 2 && (v26 == 9 || (sub_252A0D524(v26, 0) & 1) == 0))
  {
    if (qword_27F53F3F0 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_80;
  }

LABEL_46:
  v30 = *(v2 + 24);
  if (v30 >> 62)
  {
    if (v30 < 0)
    {
      v43 = *(v2 + 24);
    }

    v31 = sub_252E378C4();
    if (!v31)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
LABEL_65:
      sub_252935408(__dst);
LABEL_66:
      *a1 = v6;
      return;
    }
  }

  v32 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
    __break(1u);
  }

  else if ((v30 & 0xC000000000000001) == 0)
  {
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v32 < *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v30 + 8 * v32 + 32);
      goto LABEL_53;
    }

    __break(1u);
    return;
  }

  v33 = MEMORY[0x2530ADF00](v32, v30);

LABEL_53:
  v34 = [v33 userTask];
  if (!v34)
  {

    goto LABEL_65;
  }

  v35 = v34;
  v36 = [v34 attribute];

  if (v36 == 13)
  {
    v44[0] = v6;
    if (StateSemantic.rawValue.getter() == 28271 && v37 == 0xE200000000000000)
    {

LABEL_70:
      sub_252935408(__dst);
      v39 = 46;
      goto LABEL_63;
    }

    v40 = sub_252E37DB4();

    if (v40)
    {

      goto LABEL_70;
    }

    v44[0] = v6;
    if (StateSemantic.rawValue.getter() == 6710895 && v41 == 0xE300000000000000)
    {

      sub_252935408(__dst);

      v39 = 50;
      goto LABEL_63;
    }

    v42 = sub_252E37DB4();

    sub_252935408(__dst);

    if (v42)
    {
      v39 = 50;
      goto LABEL_63;
    }

    goto LABEL_66;
  }

  sub_252935408(__dst);

  *a1 = v6;
}

uint64_t sub_252B65FC8()
{
  swift_beginAccess();
  v2 = *(v0 + 24);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v4 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v2 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v4 = *(v2 + 8 * v4 + 32);
LABEL_8:
      swift_beginAccess();
      v1 = *(v0 + 32);
      if (!(v1 >> 62))
      {
        v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
LABEL_31:

          return 0;
        }

LABEL_10:
        v2 = v5 - 1;
        if (!__OFSUB__(v5, 1))
        {
          if ((v1 & 0xC000000000000001) == 0)
          {
            if (v2 < 0)
            {
              __break(1u);
              goto LABEL_56;
            }

            if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_58;
            }

            v2 = *(v1 + 8 * v2 + 32);
LABEL_15:
            v6 = sub_252C285F0();
            if (!(v6 >> 62))
            {
              v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_17;
            }

LABEL_56:
            v7 = sub_252E378C4();
LABEL_17:

            if (!v7)
            {
LABEL_30:

              goto LABEL_31;
            }

            sub_252B65874(v25);
            v8 = LOBYTE(v25[0]);
            if (LOBYTE(v25[0]) == 77)
            {
              if (qword_27F53F500 == -1)
              {
LABEL_20:
                v9 = sub_252E36AD4();
                __swift_project_value_buffer(v9, qword_27F544DA8);
                sub_252CC4050(0xD000000000000034, 0x8000000252E81E70, 0xD00000000000006BLL, 0x8000000252E6C470, 0xD00000000000001DLL, 0x8000000252E81EB0, 437);
                goto LABEL_30;
              }

LABEL_58:
              swift_once();
              goto LABEL_20;
            }

            v10 = [v4 userTask];
            if (!v10)
            {
              if (qword_27F53F4E8 != -1)
              {
                swift_once();
              }

              v16 = sub_252E36AD4();
              __swift_project_value_buffer(v16, qword_27F544D60);
              sub_252CC3D90(0xD000000000000026, 0x8000000252E81E00, 0xD00000000000006BLL, 0x8000000252E6C470);
              goto LABEL_30;
            }

            v11 = v10;
            v12 = [v10 attribute];

            if (sub_2529A78B0(v8, &unk_2864A5550))
            {
              v13 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
              sub_252929E74((v13 + 16), v25);

              __swift_project_boxed_opaque_existential_1(v25, v25[3]);
              v14 = sub_2529796B4();
              __swift_destroy_boxed_opaque_existential_1(v25);
              if (v14)
              {
                LOBYTE(v25[0]) = v8;
                if (StateSemantic.rawValue.getter() == 1852141679 && v15 == 0xE400000000000000)
                {
                }

                else
                {
                  v17 = sub_252E37DB4();

                  if ((v17 & 1) == 0)
                  {
                    goto LABEL_30;
                  }
                }

                if (sub_252C2CB58())
                {
                  goto LABEL_30;
                }
              }
            }

            LOBYTE(v25[0]) = v8;
            v18 = sub_252C2CDC4(v25, v12);
            v19 = v18;
            v20 = v18 >> 62;
            if (v18 >> 62)
            {
              if (sub_252E378C4())
              {
                goto LABEL_37;
              }
            }

            else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_37:
              v21 = sub_252C285F0();
              if (v21 >> 62)
              {
                v22 = sub_252E378C4();
              }

              else
              {
                v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v20)
              {
                v23 = sub_252E378C4();
              }

              else
              {
                v23 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              return v22 != v23;
            }

            return 1;
          }

LABEL_54:

          v2 = MEMORY[0x2530ADF00](v2, v1);

          goto LABEL_15;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_50:
      v5 = sub_252E378C4();
      if (!v5)
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    v4 = MEMORY[0x2530ADF00](v4, v2);

    goto LABEL_8;
  }

  if (v2 < 0)
  {
    v24 = *(v0 + 24);
  }

  result = sub_252E378C4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_252B664A8()
{
  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  memcpy(__dst, (v4 + 504 * v5 - 472), sizeof(__dst));
  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_4:
    v8 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_53;
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_56;
      }

      v9 = *(v6 + 8 * v8 + 32);
      sub_2529353AC(__dst, v50);
      v8 = v9;
LABEL_9:
      swift_beginAccess();
      v0 = *(v0 + 32);
      if (!(v0 >> 62))
      {
        v10 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_54;
      }

LABEL_53:
      v10 = sub_252E378C4();
      if (v10)
      {
LABEL_11:
        v6 = v10 - 1;
        if (!__OFSUB__(v10, 1))
        {
          if ((v0 & 0xC000000000000001) == 0)
          {
            if (v6 < 0)
            {
              __break(1u);
              goto LABEL_59;
            }

            if (v6 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_65;
            }

            v6 = *(v0 + 8 * v6 + 32);
LABEL_16:
            v11 = sub_252C285F0();
            if (!(v11 >> 62))
            {
              v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

              if (v12)
              {
LABEL_18:
                if (*(__dst[24] + 16))
                {
                  v3 = 0xD00000000000006BLL;
                  v13 = *(__dst[24] + 32);
                  v14 = [v8 userTask];
                  if (v14)
                  {
                    v15 = v14;
                    v16 = [v14 attribute];

                    if (v16 != 13)
                    {
                      goto LABEL_38;
                    }

                    LOBYTE(v50[0]) = v13;
                    if (StateSemantic.rawValue.getter() == 28271 && v17 == 0xE200000000000000)
                    {

                      v13 = 46;
                      goto LABEL_38;
                    }

                    v22 = sub_252E37DB4();

                    if (v22)
                    {
                      v13 = 46;
                      goto LABEL_38;
                    }

                    LOBYTE(v50[0]) = v13;
                    if (StateSemantic.rawValue.getter() == 6710895 && v23 == 0xE300000000000000)
                    {
                    }

                    else
                    {
                      v24 = sub_252E37DB4();

                      if ((v24 & 1) == 0)
                      {
                        goto LABEL_38;
                      }
                    }

                    v13 = 50;
LABEL_38:
                    LOBYTE(v50[0]) = v13;
                    v25 = sub_252C2CDC4(v50, v16);
                    v1 = v25;
                    v2 = v25 >> 62;
                    if (!(v25 >> 62))
                    {
                      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v47 = v8;
                      if (v26)
                      {
LABEL_40:
                        v27 = sub_252C285F0();
                        if (v27 >> 62)
                        {
                          v28 = sub_252E378C4();
                        }

                        else
                        {
                          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        if (v2)
                        {
                          v29 = sub_252E378C4();
                        }

                        else
                        {
                          v29 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        }

                        v30 = v28 == v29;
                        v49 = v28 != v29;
                        goto LABEL_67;
                      }

LABEL_66:

                      v49 = 0;
                      v30 = 0;
LABEL_67:
                      if (LOBYTE(__dst[26]) == 9)
                      {
                        v33 = 0;
                      }

                      else
                      {
                        v33 = sub_252A0D524(__dst[26], 0);
                      }

                      v48 = v33;
                      memcpy(v50, __dst, sizeof(v50));
                      v46 = sub_252A10D90();
                      if (qword_27F53F4E8 != -1)
                      {
                        swift_once();
                      }

                      v34 = sub_252E36AD4();
                      __swift_project_value_buffer(v34, qword_27F544D60);
                      sub_252CC3D90(v3 - 74, 0x8000000252E81DD0, 0xD00000000000006BLL, 0x8000000252E6C470);
                      v50[0] = 0;
                      v50[1] = 0xE000000000000000;
                      sub_252E379F4();
                      MEMORY[0x2530AD570](0x3A686374614D6F6ELL, 0xE900000000000020);
                      if (v26)
                      {
                        v35 = 0x65736C6166;
                      }

                      else
                      {
                        v35 = 1702195828;
                      }

                      if (v26)
                      {
                        v36 = 0xE500000000000000;
                      }

                      else
                      {
                        v36 = 0xE400000000000000;
                      }

                      MEMORY[0x2530AD570](v35, v36);

                      MEMORY[0x2530AD570](0x6374614D6C6C610ALL, 0xEB00000000203A68);
                      v45 = v30;
                      if (v30)
                      {
                        v37 = 1702195828;
                      }

                      else
                      {
                        v37 = 0x65736C6166;
                      }

                      if (v30)
                      {
                        v38 = 0xE400000000000000;
                      }

                      else
                      {
                        v38 = 0xE500000000000000;
                      }

                      MEMORY[0x2530AD570](v37, v38);

                      MEMORY[0x2530AD570](0x74614D656D6F730ALL, 0xEC000000203A6863);
                      if (v49)
                      {
                        v39 = 1702195828;
                      }

                      else
                      {
                        v39 = 0x65736C6166;
                      }

                      if (v49)
                      {
                        v40 = 0xE400000000000000;
                      }

                      else
                      {
                        v40 = 0xE500000000000000;
                      }

                      MEMORY[0x2530AD570](v39, v40);

                      MEMORY[0x2530AD570](0x203A74655373690ALL, 0xE800000000000000);
                      if (v48)
                      {
                        v41 = 1702195828;
                      }

                      else
                      {
                        v41 = 0x65736C6166;
                      }

                      if (v48)
                      {
                        v42 = 0xE400000000000000;
                      }

                      else
                      {
                        v42 = 0xE500000000000000;
                      }

                      MEMORY[0x2530AD570](v41, v42);

                      MEMORY[0x2530AD570](0x6567726F4673690ALL, 0xEB00000000203A74);
                      if (v46)
                      {
                        v43 = 1702195828;
                      }

                      else
                      {
                        v43 = 0x65736C6166;
                      }

                      if (v46)
                      {
                        v44 = 0xE400000000000000;
                      }

                      else
                      {
                        v44 = 0xE500000000000000;
                      }

                      MEMORY[0x2530AD570](v43, v44);

                      sub_252CC3D90(v50[0], v50[1], 0xD00000000000006BLL, 0x8000000252E6C470);

                      sub_252935408(__dst);

                      if (!v49)
                      {
                        return (v45 ^ v46 & v48) & 1;
                      }

                      if ((v48 | v46))
                      {
                        return v46 & 1;
                      }

                      return 2;
                    }

LABEL_65:
                    v26 = sub_252E378C4();
                    v47 = v8;
                    if (v26)
                    {
                      goto LABEL_40;
                    }

                    goto LABEL_66;
                  }

                  if (qword_27F53F4E8 != -1)
                  {
                    swift_once();
                  }

                  v21 = sub_252E36AD4();
                  __swift_project_value_buffer(v21, qword_27F544D60);
                  v19 = "ow up parameters:";
                  v20 = 0xD000000000000026;
                }

                else
                {
                  if (qword_27F53F4E8 != -1)
                  {
                    swift_once();
                  }

                  v18 = sub_252E36AD4();
                  __swift_project_value_buffer(v18, qword_27F544D60);
                  v19 = "te on previous intent.";
                  v20 = 0xD000000000000035;
                }

                sub_252CC3D90(v20, v19 | 0x8000000000000000, 0xD00000000000006BLL, 0x8000000252E6C470);

                goto LABEL_61;
              }

              goto LABEL_60;
            }

LABEL_59:
            v32 = sub_252E378C4();

            if (v32)
            {
              goto LABEL_18;
            }

LABEL_60:

            goto LABEL_61;
          }

LABEL_57:

          v6 = MEMORY[0x2530ADF00](v6, v0);

          goto LABEL_16;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_54:

LABEL_61:
      sub_252935408(__dst);
      return 0;
    }

    sub_2529353AC(__dst, v50);

    v8 = MEMORY[0x2530ADF00](v8, v6);

    goto LABEL_9;
  }

  if (v6 < 0)
  {
    v31 = *(v0 + 24);
  }

  result = sub_252E378C4();
  if (result)
  {
    goto LABEL_4;
  }

  return result;
}

double sub_252B66C78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  if (a2)
  {
    v8 = sub_252B680FC();
    swift_beginAccess();
    v9 = *(v8 + 40);

    if (*(v9 + 16))
    {
      v10 = sub_252A44A10(a1, a2);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        if (*(v12 + 16))
        {
          v13 = sub_252A44D48(a3 & 1);
          if (v14)
          {
            sub_252974E7C(*(v12 + 56) + 32 * v13, a4);

            return result;
          }
        }
      }
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

uint64_t sub_252B66D6C@<X0>(__int16 *a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = (v4 + 504 * v5 - 416);
  v7 = v5 + 1;
  while (--v7)
  {
    v8 = *v6;
    v6 -= 63;
    if (*(v8 + 16))
    {
      v9 = *(v8 + 32);
      goto LABEL_5;
    }
  }

  v9 = 709;
LABEL_5:
  *a1 = v9;
  return result;
}

void sub_252B66DE8(void *a1)
{
  v2 = v1;
  if (sub_252C4D664(5))
  {

    sub_252B67418(a1);
    return;
  }

  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v5 != 2 && (v5 & 1) == 0)
  {
    v19 = 12;
    goto LABEL_23;
  }

  v6 = [a1 filters];
  if (!v6)
  {
LABEL_21:
    v19 = 1;
LABEL_23:
    sub_2529318DC();
    v10 = swift_allocError();
    *v20 = v19;

LABEL_24:
    v21 = v10;
    if (qword_27F53F4E8 != -1)
    {
      goto LABEL_46;
    }

    goto LABEL_25;
  }

  v7 = v6;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = [a1 userTask];
  v10 = HomeStore.accessories(matching:supporting:)(v8, v9);
  v12 = v11;

  if (v12)
  {
    goto LABEL_24;
  }

  v13 = MEMORY[0x277D84F90];
  v47 = v2;
  if (v10 >> 62)
  {
    v45 = sub_252E378C4();
    v46 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
    *v46 = v45;
    *(v46 + 8) = 0;
    v49[0] = v13;
    v15 = sub_252E378C4();
  }

  else
  {
    v14 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
    *v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v14 + 8) = 0;
    v49[0] = v13;
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  if (!v15)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_27:
    v24 = sub_252C759A0(v23);

    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = sub_252DFA464(*(v24 + 16), 0);
      v27 = sub_252E1135C(v49, v26 + 4, v25, v24);
      sub_25291AE30();
      if (v27 != v25)
      {
        __break(1u);
LABEL_49:
        swift_once();
LABEL_31:
        v28 = off_27F545690;
        v29 = 4;
        v30 = v10;
        do
        {
          if (v28[2] && (v31 = sub_252A488EC(v48[v29]), (v32 & 1) != 0))
          {
            v33 = (v28[7] + 16 * v31);
            v34 = *v33;
            v35 = v33[1];
          }

          else
          {
            v35 = 0xE700000000000000;
            v34 = 0x4E574F4E4B4E55;
          }

          v49[0] = v27;
          v37 = *(v27 + 2);
          v36 = *(v27 + 3);
          if (v37 >= v36 >> 1)
          {
            sub_2529AA3A0((v36 > 1), v37 + 1, 1);
            v27 = v49[0];
          }

          *(v27 + 2) = v37 + 1;
          v38 = &v27[16 * v37];
          *(v38 + 4) = v34;
          *(v38 + 5) = v35;
          ++v29;
          --v12;
        }

        while (v12);
        v10 = v30;

        goto LABEL_42;
      }

      v12 = v26[2];
      if (v12)
      {
LABEL_30:
        v48 = v26;
        v49[0] = v16;
        sub_2529AA3A0(0, v12, 0);
        v27 = v49[0];
        if (qword_27F53F690 == -1)
        {
          goto LABEL_31;
        }

        goto LABEL_49;
      }
    }

    else
    {

      v26 = MEMORY[0x277D84F90];
      v12 = *(MEMORY[0x277D84F90] + 16);
      if (v12)
      {
        goto LABEL_30;
      }
    }

    v27 = MEMORY[0x277D84F90];
LABEL_42:
    v49[0] = sub_252DF88E4(v27);

    sub_252AC841C(v49);

    v39 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);
    *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes) = v49[0];

    sub_252C4D9D8();
    v41 = v40;
    sub_252929F10(v10, 0);
    v42 = *&aMultiple[8 * v41 + 8];
    v43 = (v47 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer);
    v44 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);
    *v43 = *&aHome_16[8 * v41];
    v43[1] = v42;

    return;
  }

  v17 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](v17, v10);
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_16:
    v12 = (*(*v4 + 272))();

    sub_25297AEDC(v12);
    ++v17;
    if (v18 == v15)
    {
      v23 = v49[0];
      goto LABEL_27;
    }
  }

  if (v17 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v10 + 8 * v17 + 32);

    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  swift_once();
LABEL_25:
  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E82160);
  v49[5] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD00000000000006BLL, 0x8000000252E6C470, 0xD00000000000001CLL, 0x8000000252E821A0, 706);
  sub_252929F10(v10, 1);
}

id sub_252B67418(void *a1)
{
  v2 = v1;
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v4 = result;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  type metadata accessor for HomeStore();
  v6 = static HomeStore.shared.getter();
  v7 = sub_2529DA828();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_44:

    v19 = 0;
    v40 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
    *v40 = 0;
    *(v40 + 8) = 1;
    goto LABEL_45;
  }

LABEL_43:
  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_44;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x2530ADF00](v9, v7);
      v10 = result;
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
LABEL_13:
        __break(1u);
        return result;
      }
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_43;
      }

      v10 = *(v7 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_13;
      }
    }

    if (sub_252967B6C(v5))
    {
      break;
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_44;
    }
  }

  v12 = sub_252B2F470();

  if (v12 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_numberOfTargetedEntities;
  *v14 = v13;
  *(v14 + 8) = 0;
  if (!v10)
  {
    v19 = 0;
    goto LABEL_45;
  }

  v15 = sub_252B2F470();

  if (v15 >> 62)
  {
    v16 = sub_252E378C4();
    if (v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_20:
      v42 = v2;
      v44 = MEMORY[0x277D84F90];
      result = sub_2529AA3A0(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return result;
      }

      v17 = 0;
      v18 = v15;
      v43 = v15 & 0xC000000000000001;
      v19 = v44;
      v20 = v15;
      v21 = v16;
      do
      {
        if (v43)
        {
          v22 = MEMORY[0x2530ADF00](v17, v18);
        }

        else
        {
          v22 = *(v18 + 8 * v17 + 32);
        }

        v23 = [*(v22 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v24 = sub_252E36F34();
        v26 = v25;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v27 = off_27F546230;
        if (*(off_27F546230 + 2) && (v28 = sub_252A44A10(v24, v26), (v29 & 1) != 0))
        {
          v30 = *(v27[7] + 8 * v28);
        }

        else
        {
          v30 = 0;
        }

        if (qword_27F53F690 != -1)
        {
          swift_once();
        }

        v31 = off_27F545690;
        if (*(off_27F545690 + 2) && (v32 = sub_252A488EC(v30), (v33 & 1) != 0))
        {
          v34 = (v31[7] + 16 * v32);
          v36 = *v34;
          v35 = v34[1];
        }

        else
        {
          v35 = 0xE700000000000000;
          v36 = 0x4E574F4E4B4E55;
        }

        v38 = *(v44 + 16);
        v37 = *(v44 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2529AA3A0((v37 > 1), v38 + 1, 1);
        }

        ++v17;
        *(v44 + 16) = v38 + 1;
        v39 = v44 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        v18 = v20;
      }

      while (v21 != v17);

      v2 = v42;
      goto LABEL_45;
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_45:
  sub_252B678D0(v19);

  v41 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);
  *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer) = xmmword_252E4DC90;
}

uint64_t sub_252B678D0(uint64_t a1)
{
  if (a1)
  {
    v5 = sub_252DF88E4(a1);

    sub_252AC841C(&v5);

    v2 = v5;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes) = v2;
}

uint64_t sub_252B6796C()
{
  v1 = sub_252E36674();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v22[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543778, &qword_252E4DF28);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_252E366A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v22[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  if (*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher))
  {
    v14 = v13[1];
    v15 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  }

  else
  {
    v16 = [objc_opt_self() defaultEnvironment];
    v22[3] = sub_252B6904C();
    v22[4] = MEMORY[0x277CEB188];
    v22[0] = v16;
    sub_252E36664();
    (*(v2 + 104))(v5, *MEMORY[0x277CEB068], v1);
    sub_252E36694();
    v15 = sub_252E36684();
    v18 = v17;
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v19 = *v13;
    *v13 = v15;
    v13[1] = v18;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v15;
}

uint64_t sub_252B67BFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 56);

  v6 = *(v0 + 64);

  v7 = *(v0 + 80);

  v8 = *(v0 + 120);

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  v11 = *(v0 + 168);

  v12 = *(v0 + 184);

  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_showIntent, &qword_27F540F98, &qword_252E3F950);
  v13 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery);

  v14 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedServiceTypes);

  v15 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_targetedContainer + 8);

  v16 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_appIntentDispatcher);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_252B67CF0()
{
  sub_252B67BFC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionContext()
{
  result = qword_27F543748;
  if (!qword_27F543748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252B67D9C()
{
  sub_252B67EDC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_252B67EDC()
{
  if (!qword_27F543758)
  {
    sub_252E365E4();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F543758);
    }
  }
}

unint64_t sub_252B67F48()
{
  result = qword_27F543760;
  if (!qword_27F543760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543760);
  }

  return result;
}

BOOL sub_252B67F9C(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a2 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_252E37DB4() & 1;
    }
  }

  return result;
}

uint64_t sub_252B68010()
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544D60);
  sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
  if (qword_27F53F388 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  qword_27F543738 = 0;

  return sub_252E37614();
}

uint64_t sub_252B680FC()
{
  sub_252D806C0();
  sub_252D7ED58(0x436E6F6973736553, 0xEE00747865746E6FLL, sub_252B68010, 0, 15);

  if (qword_27F53F388 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v0 = qword_27F543738;
  if (qword_27F543738)
  {
  }

  else
  {
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E821C0, 0xD00000000000006BLL, 0x8000000252E6C470);
    v2 = type metadata accessor for SessionContext();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v0 = sub_252B63794();
    qword_27F543738 = v0;
  }

  sub_252E37614();
  return v0;
}

uint64_t sub_252B68288()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F600 != -1)
  {
    swift_once();
  }

  v5 = qword_27F544F88;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v6 + 56), v10);

  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_252E33EB4();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v7 = sub_252E33E74();
  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  sub_252E375C4();
  sub_252E36A74();
  (*(v1 + 8))(v4, v0);
  return v7;
}

uint64_t sub_252B684A0(uint64_t a1, char a2, uint64_t a3)
{
  v41 = a2 & 1;
  v48[0] = a2 & 1;
  sub_252974E7C(a3, &v49);
  v4 = sub_252B680FC();
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_24:

    return sub_25293847C(v48, &qword_27F543770, &unk_252E4DF18);
  }

  v6 = "Clearing SessionContext";
  swift_beginAccess();
  v7 = (a1 + 40);
  while (1)
  {
    v10 = *(v7 - 1);
    v11 = *v7;
    v12 = qword_27F53F498;

    if (v12 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    v46 = 0;
    *&v47[0] = 0xE000000000000000;
    sub_252E379F4();

    v46 = 0xD000000000000025;
    *&v47[0] = 0x8000000252E81D50;
    MEMORY[0x2530AD570](v10, v11);
    sub_252CC3D90(v46, *&v47[0], 0xD00000000000006BLL, v6 | 0x8000000000000000);

    if (*(*(v4 + 40) + 16))
    {
      v14 = *(v4 + 40);

      sub_252A44A10(v10, v11);
      v16 = v15;

      if (v16)
      {
        sub_252CC3D90(0xD000000000000024, 0x8000000252E81DA0, 0xD00000000000006BLL, v6 | 0x8000000000000000);
        v17 = sub_252B631AC();
        v18 = sub_252AEE9E4(v43, v10, v11);
        if (*v19)
        {
          sub_252938414(v48, &v46, &qword_27F543770, &unk_252E4DF18);
          sub_252C3DCD4(v47, v41, v45);
          sub_25293847C(v45, &qword_27F541E80, &qword_252E3DFA0);
          (v18)(v43, 0);

          (v17)(v44, 0);
        }

        else
        {
          (v18)(v43, 0);

          (v17)(v44, 0);
          memset(v45, 0, sizeof(v45));
          sub_25293847C(v45, &qword_27F541E80, &qword_252E3DFA0);
        }

        goto LABEL_5;
      }
    }

    v42 = v5;
    v20 = v6;
    sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E81D80, 0xD00000000000006BLL, v6 | 0x8000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543768, &qword_252E4DF10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    sub_252938414(v48, &v46, &qword_27F543770, &unk_252E4DF18);
    *(inited + 32) = v46;
    sub_252938414(v48, v45, &qword_27F543770, &unk_252E4DF18);
    sub_252A00AF4((v45 + 8), (inited + 40));
    __swift_destroy_boxed_opaque_existential_1(v47);
    v22 = sub_252CC5188(inited);
    swift_setDeallocating();
    sub_25293847C(inited + 32, &qword_27F543770, &unk_252E4DF18);
    swift_beginAccess();
    v23 = *(v4 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v4;
    *&v45[0] = *(v4 + 40);
    v26 = *&v45[0];
    v28 = sub_252A44A10(v10, v11);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v35 = *&v45[0];
        if ((v27 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_252E03300();
        v35 = *&v45[0];
        if ((v32 & 1) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_252DFEE00(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_252A44A10(v10, v11);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
      v35 = *&v45[0];
      if ((v32 & 1) == 0)
      {
LABEL_19:
        v35[(v28 >> 6) + 8] |= 1 << v28;
        v36 = (v35[6] + 16 * v28);
        *v36 = v10;
        v36[1] = v11;
        *(v35[7] + 8 * v28) = v22;
        v37 = v35[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_26;
        }

        v35[2] = v39;

        goto LABEL_4;
      }
    }

    v8 = v35[7];
    v9 = *(v8 + 8 * v28);
    *(v8 + 8 * v28) = v22;
LABEL_4:
    v4 = v25;
    *(v25 + 40) = v35;

    swift_endAccess();

    v6 = v20;
    v5 = v42;
LABEL_5:
    v7 += 2;
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252B689F8(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      sub_252938414(a2, v16, &qword_27F541E80, &qword_252E3DFA0);
      if (v17)
      {
        if (swift_dynamicCast())
        {
          sub_252B680FC();
          v17 = &type metadata for ClimateModes;
          LOBYTE(v16[0]) = v15;
          sub_252B684A0(v6, 0, v16);

          goto LABEL_19;
        }
      }

      else
      {
        sub_25293847C(v16, &qword_27F541E80, &qword_252E3DFA0);
      }

      sub_252938414(a2, v16, &qword_27F541E80, &qword_252E3DFA0);
      if (!v17)
      {

        return sub_25293847C(v16, &qword_27F541E80, &qword_252E3DFA0);
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
      }

      sub_252B680FC();
      v17 = &type metadata for HomeDeviceType;
      v16[0] = v15;
      sub_252B684A0(v6, 1, v16);

LABEL_19:

      return __swift_destroy_boxed_opaque_existential_1(v16);
    }

    if (v3 >= v4)
    {
      break;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_23;
    }

    v10 = *v7;
    v7 += 2;
    v9 = v10;
    ++v3;
    if (v10)
    {
      v11 = *(v7 - 3);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2529F7A80(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_2529F7A80((v12 > 1), v13 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v9;
      v3 = v8;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_252B68C70(uint64_t a1)
{
  v2 = sub_252E34284();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E341A4();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E34164();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_252E358D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v20 = (*(v11 + 88))(v14, v10);
  if (v20 == *MEMORY[0x277D5C128])
  {
    (*(v11 + 96))(v14, v10);
LABEL_5:
    (*(v16 + 32))(v19, v14, v15);
    v22 = sub_252E358C4();
    (*(v16 + 8))(v19, v15);
    return v22;
  }

  if (v20 == *MEMORY[0x277D5C158])
  {
    (*(v11 + 96))(v14, v10);
    v21 = *&v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];

    goto LABEL_5;
  }

  if (v20 == *MEMORY[0x277D5C160])
  {
    (*(v11 + 96))(v14, v10);
    v24 = v26;
    (*(v26 + 32))(v9, v14, v6);
    sub_252E34184();
    v22 = sub_252E34274();
    (*(v27 + 8))(v5, v28);
    (*(v24 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 8))(v14, v10);
    return 0;
  }

  return v22;
}

unint64_t sub_252B6904C()
{
  result = qword_27F543780;
  if (!qword_27F543780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F543780);
  }

  return result;
}

unint64_t sub_252B690AC()
{
  result = qword_27F543788;
  if (!qword_27F543788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F543788);
  }

  return result;
}

uint64_t sub_252B69100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[354] = v3;
  v4[353] = a3;
  v4[352] = a2;
  v4[351] = a1;
  v5 = type metadata accessor for HomeAutomationSetBooleanStateParameters(0);
  v4[355] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[356] = swift_task_alloc();
  v7 = *(*(sub_252E33944() - 8) + 64) + 15;
  v4[357] = swift_task_alloc();
  v8 = sub_252E34014();
  v4[358] = v8;
  v9 = *(v8 - 8);
  v4[359] = v9;
  v10 = *(v9 + 64) + 15;
  v4[360] = swift_task_alloc();
  v4[361] = swift_task_alloc();
  v4[362] = swift_task_alloc();
  v11 = *(*(type metadata accessor for CompletionSnippetModel() - 8) + 64) + 15;
  v4[363] = swift_task_alloc();
  v12 = sub_252E36AB4();
  v4[364] = v12;
  v13 = *(v12 - 8);
  v4[365] = v13;
  v14 = *(v13 + 64) + 15;
  v4[366] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B692C8, 0, 0);
}

uint64_t sub_252B692C8()
{
  v52 = v0;
  if (qword_27F53F648 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v1 = v0 + 347;
    v2 = v0 + 348;
    v3 = v0[366];
    v4 = v0[352];
    v5 = qword_27F544FD0;
    v0[367] = qword_27F544FD0;
    v6 = v5;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    type metadata accessor for HomeAutomationEntityResponses();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D84F90];
    *(v7 + 16) = 0;
    *(v7 + 24) = v8;
    v0[347] = v7;
    v0[348] = 0;
    v9 = [v4 userTask];
    if (!v9)
    {
      v23 = 0;
      goto LABEL_21;
    }

    v10 = v9;
    v11 = MEMORY[0x277D84F90];
    if (!v0[353])
    {
      break;
    }

    v12 = sub_252C2B064(v9);
    v13 = v12;
    __dst[0] = v11;
    v14 = v12 & 0xFFFFFFFFFFFFFF8;
    if (v12 >> 62)
    {
      v15 = sub_252E378C4();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v49 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v15 == v16)
      {

        v2 = v0 + 348;
        v1 = v0 + 347;
        v11 = MEMORY[0x277D84F90];
        v22 = v49;
        goto LABEL_20;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](v16, v13);
      }

      else
      {
        if (v16 >= *(v14 + 16))
        {
          goto LABEL_35;
        }

        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = sub_252DA124C(0);

      ++v16;
      if (v20)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v49 = __dst[0];
        v16 = v19;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
  }

  v22 = MEMORY[0x277D84F90];
LABEL_20:
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v11;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v24 + 24) = v22;

  *v1 = v24;
  type metadata accessor for HomeAutomationBooleanResponses.Builder();
  *(swift_allocObject() + 16) = v11;
  type metadata accessor for HomeAutomationBooleanResponses();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v23 + 24) = v22;
  *v2 = v23;
  v7 = v24;
LABEL_21:
  v0[369] = v23;
  v0[368] = v7;
  v25 = v0[354];
  v26 = v0[352];
  memcpy(v0 + 65, (v25 + 112), 0x1F8uLL);
  memcpy(__dst, (v25 + 112), 0x1F8uLL);
  sub_2529D291C((v0 + 65), (v0 + 128));
  v27 = v26;
  v28 = sub_252953488(v26, __dst, 0);
  v0[370] = v28;

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  v0[371] = __swift_project_value_buffer(v29, qword_27F544D18);
  __dst[0] = 0x203A746E65746E49;
  __dst[1] = 0xE800000000000000;
  memcpy(v0 + 2, (v25 + 112), 0x1F8uLL);
  memcpy(v0 + 191, (v25 + 112), 0x1F8uLL);
  sub_2529D291C((v0 + 2), (v0 + 254));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000096, 0x8000000252E82220);

  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E77570;
  v0[349] = *(v28 + 32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5429D8, &qword_252E4E0B0);
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000096, 0x8000000252E82220);

  v32 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v32 + 288), (v0 + 317));

  v33 = v0[320];
  v34 = v0[321];
  __swift_project_boxed_opaque_existential_1(v0 + 317, v33);
  LOBYTE(v33) = (*(v34 + 120))(v33, v34);
  __swift_destroy_boxed_opaque_existential_1(v0 + 317);
  v35 = v0[354];
  v36 = v0[353];
  if (v33)
  {
    v0[372] = *(v35 + 64);

    if (v36)
    {
      LOBYTE(v36) = sub_252C2AC20();
    }

    v39 = swift_task_alloc();
    v0[373] = v39;
    *v39 = v0;
    v39[1] = sub_252B69AC4;

    return sub_252D29DB4(v23, v36 & 1, v28);
  }

  else
  {
    sub_252929E74(v35 + 24, (v0 + 322));
    v37 = __swift_project_boxed_opaque_existential_1(v0 + 322, v0[325]);
    v38 = v2;
    if (v36)
    {
      v36 = v0[353];
      LOBYTE(v36) = sub_252C2AC20();
    }

    v41 = v0[356];
    v42 = v0[355];
    v50 = *v37;
    v43 = sub_252E36324();
    v44 = *(*(v43 - 8) + 56);

    v44(v41, 1, 1, v43);
    v44(v41 + v42[10], 1, 1, v43);
    *(v41 + v42[5]) = 0;
    *(v41 + v42[6]) = v36 & 1;
    *(v41 + v42[7]) = 0;
    *(v41 + v42[8]) = 0;
    *(v41 + v42[9]) = 0;
    sub_252B6C950(v41, v38, v1, v28);
    v45 = sub_252C0961C();
    v0[393] = v45;
    v46 = *(MEMORY[0x277D55BE8] + 4);
    v48 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v47 = swift_task_alloc();
    v0[394] = v47;
    *v47 = v0;
    v47[1] = sub_252B6AF6C;

    return v48(0xD00000000000001ELL, 0x8000000252E66590, v45);
  }
}

uint64_t sub_252B69AC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2984);
  v6 = *v2;
  v4[374] = a1;
  v4[375] = v1;

  v7 = v3[372];
  v8 = v3[370];
  v9 = v3[369];

  if (v1)
  {
    v10 = sub_252B6C308;
  }

  else
  {
    v10 = sub_252B69C3C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252B69C3C()
{
  v1 = *(v0 + 2960);
  v2 = *(v0 + 2824);
  v3 = *(v0 + 2816);
  v4 = swift_allocObject();
  *(v0 + 3008) = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = v2;
  v6 = v3;

  LODWORD(v1) = *(sub_252B680FC() + 129);

  if (v1 == 1)
  {
    sub_252929E74(*(v0 + 2832) + 72, v0 + 2736);
    v7 = *(v0 + 2760);
    *(v0 + 3016) = v7;
    *(v0 + 3024) = *(v0 + 2768);
    *(v0 + 3032) = __swift_project_boxed_opaque_existential_1((v0 + 2736), v7);
    v8 = swift_task_alloc();
    *(v0 + 3040) = v8;
    *v8 = v0;
    v8[1] = sub_252B69FAC;
    v9 = *(v0 + 2960);
    v10 = *(v0 + 2904);
    v11 = *(v0 + 2824);
    v12 = *(v0 + 2816);

    return sub_252A293A0(v10, v12, v11, v9);
  }

  else
  {
    v14 = *(v0 + 2992);
    v15 = *(v0 + 2896);
    v16 = *(v0 + 2856);
    v17 = *(v0 + 2824);
    v18 = *(v0 + 2816);
    v19 = swift_task_alloc();
    *(v0 + 3072) = v19;
    *(v19 + 16) = &unk_252E4E0D8;
    *(v19 + 24) = v4;
    *(v0 + 3248) = sub_252DC6D48(v18, v17);
    sub_252E33924();
    sub_252E33F54();
    v20 = v14;
    if (v17)
    {
      v21 = v5;
      v22 = swift_task_alloc();
      *(v0 + 3080) = v22;
      *v22 = v0;
      v22[1] = sub_252B6A574;
      v23 = *(v0 + 2832);

      return sub_252DC810C(v21);
    }

    else
    {
      v24 = *(v0 + 2992);
      *(v0 + 3104) = v24;
      v25 = *(v0 + 3072);
      v26 = *(v0 + 2832);
      v27 = v26[13];
      __swift_project_boxed_opaque_existential_1(v26 + 9, v26[12]);
      v28 = swift_task_alloc();
      *(v0 + 3112) = v28;
      *(v28 + 16) = v24;
      v29 = swift_task_alloc();
      *(v0 + 3120) = v29;
      *(v29 + 16) = &unk_252E4E0E8;
      *(v29 + 24) = v25;
      v30 = v24;
      v31 = swift_task_alloc();
      *(v0 + 3128) = v31;
      *v31 = v0;
      v31[1] = sub_252B6A68C;
      v32 = *(v0 + 2896);
      v34 = *(v0 + 3248);

      return sub_252A199A8(v0 + 2696, &unk_252E400A0, v28, &unk_252E3D1A0, v29, v32, 0, 0);
    }
  }
}

uint64_t sub_252B69FAC()
{
  v2 = *(*v1 + 3040);
  v3 = *v1;
  v3[381] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252B6A270, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[382] = v4;
    *v4 = v3;
    v4[1] = sub_252B6A12C;
    v5 = v3[379];
    v6 = v3[378];
    v7 = v3[377];
    v8 = v3[363];
    v9 = v3[351];

    return sub_252A1D73C(v9, v8, v7, v6);
  }
}

uint64_t sub_252B6A12C()
{
  v2 = *(*v1 + 3056);
  v3 = *(*v1 + 2904);
  v6 = *v1;
  *(*v1 + 3064) = v0;

  sub_252B6D438(v3, type metadata accessor for CompletionSnippetModel);
  if (v0)
  {
    v4 = sub_252B6C470;
  }

  else
  {
    v4 = sub_252B6A3F4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6A270()
{
  v1 = v0[376];
  v2 = v0[374];
  v3 = v0[370];
  v4 = v0[369];
  v5 = v0[368];

  __swift_destroy_boxed_opaque_existential_1(v0 + 342);

  v6 = v0[367];
  v7 = v0[366];
  v8 = v0[365];
  v9 = v0[364];
  v10 = v0[363];
  v11 = v0[362];
  v12 = v0[361];
  v13 = v0[360];
  v14 = v0[357];
  v17 = v0[356];
  v18 = v0[381];
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B6A3F4()
{
  v1 = v0[376];
  v2 = v0[374];
  v3 = v0[370];
  v4 = v0[369];
  v5 = v0[368];

  __swift_destroy_boxed_opaque_existential_1(v0 + 342);

  v6 = v0[367];
  v7 = v0[366];
  v8 = v0[365];
  v9 = v0[364];
  v10 = v0[363];
  v11 = v0[362];
  v12 = v0[361];
  v13 = v0[360];
  v14 = v0[357];
  v17 = v0[356];
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B6A574(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3080);
  v7 = *v2;
  *(v3 + 3088) = a1;
  *(v3 + 3096) = v1;

  if (v1)
  {
    v5 = sub_252B6ADAC;
  }

  else
  {
    v5 = sub_252B6AC18;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B6A68C()
{
  v2 = *v1;
  v3 = *(*v1 + 3128);
  v4 = *v1;
  *(v2 + 3136) = v0;

  v5 = *(v2 + 3120);
  v6 = *(v2 + 3112);
  if (v0)
  {

    v7 = sub_252B6AA5C;
  }

  else
  {

    v7 = sub_252B6A800;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B6A800()
{
  v1 = v0[354];
  v2 = v0[352];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  v8 = v0[388];
  v9 = v0[384];
  v25 = v0[376];
  v26 = v0[374];
  v27 = v0[370];
  v28 = v0[369];
  v29 = v0[368];
  v10 = v0[362];
  v11 = v0[359];
  v12 = v0[358];
  v13 = v0[351];
  (*(v4 + 112))(v6, v0 + 337, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 337);
  (*(v11 + 8))(v10, v12);

  v14 = v0[367];
  v15 = v0[366];
  v16 = v0[365];
  v17 = v0[364];
  v18 = v0[363];
  v19 = v0[362];
  v20 = v0[361];
  v21 = v0[360];
  v22 = v0[357];
  v30 = v0[356];
  sub_252E375C4();
  sub_252E36A74();
  (*(v16 + 8))(v15, v17);

  v23 = v0[1];

  return v23();
}

uint64_t sub_252B6AA5C()
{
  v1 = v0[388];
  v2 = v0[362];
  v3 = v0[359];
  v4 = v0[358];

  (*(v3 + 8))(v2, v4);
  v23 = v0[392];
  v5 = v0[384];
  v6 = v0[376];
  v7 = v0[374];
  v8 = v0[370];
  v9 = v0[369];
  v10 = v0[368];

  v11 = v0[367];
  v12 = v0[366];
  v13 = v0[365];
  v14 = v0[364];
  v15 = v0[363];
  v16 = v0[362];
  v17 = v0[361];
  v18 = v0[360];
  v19 = v0[357];
  v22 = v0[356];
  sub_252E375C4();
  sub_252E36A74();
  (*(v13 + 8))(v12, v14);

  v20 = v0[1];

  return v20();
}

uint64_t sub_252B6AC18()
{
  v1 = *(v0 + 3088);
  v2 = *(v0 + 2992);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 3088));

    v2 = v3;
  }

  *(v0 + 3104) = v2;
  v4 = *(v0 + 3072);
  v5 = *(v0 + 2832);
  v6 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v5[12]);
  v7 = swift_task_alloc();
  *(v0 + 3112) = v7;
  *(v7 + 16) = v2;
  v8 = swift_task_alloc();
  *(v0 + 3120) = v8;
  *(v8 + 16) = &unk_252E4E0E8;
  *(v8 + 24) = v4;
  v9 = v2;
  v10 = swift_task_alloc();
  *(v0 + 3128) = v10;
  *v10 = v0;
  v10[1] = sub_252B6A68C;
  v11 = *(v0 + 2896);
  v14 = *(v0 + 3248);

  return sub_252A199A8(v0 + 2696, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v11, 0, 0);
}

uint64_t sub_252B6ADAC()
{
  v1 = *(v0 + 2896);
  v2 = *(v0 + 2872);
  v3 = *(v0 + 2864);
  v4 = *(v0 + 2824);

  (*(v2 + 8))(v1, v3);
  v23 = *(v0 + 3096);
  v5 = *(v0 + 3072);
  v6 = *(v0 + 3008);
  v7 = *(v0 + 2992);
  v8 = *(v0 + 2960);
  v9 = *(v0 + 2952);
  v10 = *(v0 + 2944);

  v11 = *(v0 + 2936);
  v12 = *(v0 + 2928);
  v13 = *(v0 + 2920);
  v14 = *(v0 + 2912);
  v15 = *(v0 + 2904);
  v16 = *(v0 + 2896);
  v17 = *(v0 + 2888);
  v18 = *(v0 + 2880);
  v19 = *(v0 + 2856);
  v22 = *(v0 + 2848);
  sub_252E375C4();
  sub_252E36A74();
  (*(v13 + 8))(v12, v14);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_252B6AF6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3152);
  v5 = *(*v2 + 3144);
  v8 = *v2;
  *(v3 + 3160) = a1;
  *(v3 + 3168) = v1;

  if (v1)
  {
    v6 = sub_252B6B41C;
  }

  else
  {
    v6 = sub_252B6B0A4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B6B0A4()
{
  v1 = *(v0 + 3160);
  v2 = *(v0 + 2960);
  v3 = *(v0 + 2824);
  v4 = *(v0 + 2816);
  sub_252B6D438(*(v0 + 2848), type metadata accessor for HomeAutomationSetBooleanStateParameters);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2576));
  v5 = swift_allocObject();
  *(v0 + 3176) = v5;
  *(v5 + 16) = v1;
  v6 = v1;
  *(v0 + 3249) = sub_252DC6D48(v4, v3);
  if (v3)
  {
    v7 = *(v0 + 3160);
    v8 = *(v0 + 2824);
    v9 = v7;
    v10 = swift_task_alloc();
    *(v0 + 3184) = v10;
    *v10 = v0;
    v10[1] = sub_252B6B304;
    v11 = *(v0 + 2832);

    return sub_252E174F4(v8);
  }

  else
  {
    v13 = *(v0 + 2968);
    v14 = *(v0 + 2888);
    v15 = *(v0 + 2832);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v16 = *(v15 + 96);
    __swift_project_boxed_opaque_existential_1((v15 + 72), v16);
    sub_252AD7CC4();
    v17 = swift_task_alloc();
    *(v0 + 3208) = v17;
    *v17 = v0;
    v17[1] = sub_252B6B5B0;
    v18 = *(v0 + 2888);

    return sub_252BDB88C(v0 + 2616, &unk_252E4E0C0, v5, v18, 0, 0, 0, v16);
  }
}

uint64_t sub_252B6B304(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 3184);
  v7 = *v2;
  *(v3 + 3192) = a1;
  *(v3 + 3200) = v1;

  if (v1)
  {
    v5 = sub_252B6B87C;
  }

  else
  {
    v5 = sub_252B6B720;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B6B41C()
{
  v1 = v0[370];
  v2 = v0[369];
  v3 = v0[368];
  sub_252B6D438(v0[356], type metadata accessor for HomeAutomationSetBooleanStateParameters);

  __swift_destroy_boxed_opaque_existential_1(v0 + 322);

  v4 = v0[367];
  v5 = v0[366];
  v6 = v0[365];
  v7 = v0[364];
  v8 = v0[363];
  v9 = v0[362];
  v10 = v0[361];
  v11 = v0[360];
  v12 = v0[357];
  v15 = v0[356];
  v16 = v0[396];
  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v5, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B6B5B0()
{
  v2 = *(*v1 + 3208);
  v3 = *(*v1 + 2888);
  v4 = *(*v1 + 2872);
  v5 = *(*v1 + 2864);
  v8 = *v1;
  *(*v1 + 3216) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252B6C188;
  }

  else
  {
    v6 = sub_252B6BF74;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252B6B720()
{
  v1 = (v0 + 2800);
  v2 = *(v0 + 3192);
  v3 = *(v0 + 3160);
  *(v0 + 2800) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 2880);
  v9 = *(v0 + 2832);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 3224) = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 3232) = v12;
  *v12 = v0;
  v12[1] = sub_252B6BA10;
  v13 = *(v0 + 3249);
  v14 = *(v0 + 2880);

  return sub_252BDB88C(v0 + 2656, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_252B6B87C()
{
  v1 = *(v0 + 3176);
  v2 = *(v0 + 2824);

  v18 = *(v0 + 3200);
  v3 = *(v0 + 2960);
  v4 = *(v0 + 2952);
  v5 = *(v0 + 2944);

  v6 = *(v0 + 2936);
  v7 = *(v0 + 2928);
  v8 = *(v0 + 2920);
  v9 = *(v0 + 2912);
  v10 = *(v0 + 2904);
  v11 = *(v0 + 2896);
  v12 = *(v0 + 2888);
  v13 = *(v0 + 2880);
  v14 = *(v0 + 2856);
  v17 = *(v0 + 2848);
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252B6BA10()
{
  v2 = *v1;
  v3 = *(*v1 + 3232);
  v4 = *(*v1 + 2880);
  v5 = *(*v1 + 2872);
  v6 = *(*v1 + 2864);
  v10 = *v1;
  *(*v1 + 3240) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252B6BDC4;
  }

  else
  {
    v8 = *(v2 + 3224);

    v7 = sub_252B6BB90;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252B6BB90()
{
  v1 = *(v0 + 2832);
  v2 = *(v0 + 2816);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  v8 = *(v0 + 3192);
  v9 = *(v0 + 3176);
  v10 = *(v0 + 3160);
  v11 = *(v0 + 2824);
  v12 = *(v0 + 2808);
  (*(v4 + 112))(v6, v0 + 2656, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2656));

  v13 = *(v0 + 2960);
  v14 = *(v0 + 2952);
  v15 = *(v0 + 2944);

  v16 = *(v0 + 2936);
  v17 = *(v0 + 2928);
  v18 = *(v0 + 2920);
  v19 = *(v0 + 2912);
  v20 = *(v0 + 2904);
  v21 = *(v0 + 2896);
  v22 = *(v0 + 2888);
  v23 = *(v0 + 2880);
  v24 = *(v0 + 2856);
  v27 = *(v0 + 2848);
  sub_252E375C4();
  sub_252E36A74();
  (*(v18 + 8))(v17, v19);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_252B6BDC4()
{
  v1 = *(v0 + 3224);
  v2 = *(v0 + 3192);
  v3 = *(v0 + 3176);
  v4 = *(v0 + 2824);

  v20 = *(v0 + 3240);
  v5 = *(v0 + 2960);
  v6 = *(v0 + 2952);
  v7 = *(v0 + 2944);

  v8 = *(v0 + 2936);
  v9 = *(v0 + 2928);
  v10 = *(v0 + 2920);
  v11 = *(v0 + 2912);
  v12 = *(v0 + 2904);
  v13 = *(v0 + 2896);
  v14 = *(v0 + 2888);
  v15 = *(v0 + 2880);
  v16 = *(v0 + 2856);
  v19 = *(v0 + 2848);
  sub_252E375C4();
  sub_252E36A74();
  (*(v10 + 8))(v9, v11);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252B6BF74()
{
  v1 = *(v0 + 2832);
  v2 = *(v0 + 2816);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeFilter();
    v6 = sub_252E37264();
  }

  v8 = *(v0 + 3176);
  v9 = *(v0 + 2808);
  (*(v4 + 112))(v6, v0 + 2616, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 2616));

  v10 = *(v0 + 2960);
  v11 = *(v0 + 2952);
  v12 = *(v0 + 2944);

  v13 = *(v0 + 2936);
  v14 = *(v0 + 2928);
  v15 = *(v0 + 2920);
  v16 = *(v0 + 2912);
  v17 = *(v0 + 2904);
  v18 = *(v0 + 2896);
  v19 = *(v0 + 2888);
  v20 = *(v0 + 2880);
  v21 = *(v0 + 2856);
  v24 = *(v0 + 2848);
  sub_252E375C4();
  sub_252E36A74();
  (*(v15 + 8))(v14, v16);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_252B6C188()
{
  v1 = *(v0 + 3176);

  v17 = *(v0 + 3216);
  v2 = *(v0 + 2960);
  v3 = *(v0 + 2952);
  v4 = *(v0 + 2944);

  v5 = *(v0 + 2936);
  v6 = *(v0 + 2928);
  v7 = *(v0 + 2920);
  v8 = *(v0 + 2912);
  v9 = *(v0 + 2904);
  v10 = *(v0 + 2896);
  v11 = *(v0 + 2888);
  v12 = *(v0 + 2880);
  v13 = *(v0 + 2856);
  v16 = *(v0 + 2848);
  sub_252E375C4();
  sub_252E36A74();
  (*(v7 + 8))(v6, v8);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B6C308()
{
  v1 = v0[370];
  v2 = v0[369];
  v3 = v0[368];

  v4 = v0[367];
  v5 = v0[366];
  v6 = v0[365];
  v7 = v0[364];
  v8 = v0[363];
  v9 = v0[362];
  v10 = v0[361];
  v11 = v0[360];
  v12 = v0[357];
  v15 = v0[356];
  v16 = v0[375];
  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v5, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_252B6C470()
{
  v1 = v0[376];
  v2 = v0[374];
  v3 = v0[370];
  v4 = v0[369];
  v5 = v0[368];

  __swift_destroy_boxed_opaque_existential_1(v0 + 342);

  v6 = v0[367];
  v7 = v0[366];
  v8 = v0[365];
  v9 = v0[364];
  v10 = v0[363];
  v11 = v0[362];
  v12 = v0[361];
  v13 = v0[360];
  v14 = v0[357];
  v17 = v0[356];
  v18 = v0[383];
  sub_252E375C4();
  sub_252E36A74();
  (*(v8 + 8))(v7, v9);

  v15 = v0[1];

  return v15();
}

uint64_t sub_252B6C5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252A293A0(a1, a2, a3, a4);
}

uint64_t sub_252B6C6AC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = sub_252B6C7A8;

  return v7(a1);
}

uint64_t sub_252B6C7A8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252B6C8D8, 0, 0);
  }
}

uint64_t sub_252B6C8D8()
{
  v1 = *(v0 + 16);
  type metadata accessor for HomeAutomationSnippetModels();
  swift_storeEnumTagMultiPayload();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B6C950(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v42 - v13;
  v15 = *a2;
  v16 = type metadata accessor for HomeAutomationSetBooleanStateParameters(0);
  v17 = v16[9];
  v18 = *(a1 + v17);

  *(a1 + v17) = v15;
  v19 = *a3;
  v20 = v16[8];
  v21 = *(a1 + v20);

  *(a1 + v20) = v19;
  v22 = v16[7];
  v23 = *(a1 + v22);

  *(a1 + v22) = a4;
  sub_252E37024();
  v24 = sub_252E36324();
  v25 = *(*(v24 - 8) + 56);
  v26 = 1;
  v25(v14, 0, 1, v24);
  sub_252956C98(v14, a1);
  v27 = sub_25294833C(1u, 0, 0);
  if (v27)
  {
    v28 = v27;
    v29 = [v27 dictionary];
    if (v29)
    {
      v30 = v29;
      v31 = objc_opt_self();
      v43[0] = 0;
      v32 = [v31 dataWithPropertyList:v30 format:200 options:0 error:v43];
      v33 = v43[0];
      if (v32)
      {
        v34 = sub_252E32D34();
        v42[0] = v25;
        v36 = v35;

        sub_252E32D24();
        sub_252E362F4();

        v37 = v36;
        v25 = v42[0];
        sub_25296464C(v34, v37);
        v26 = 0;
      }

      else
      {
        v38 = v33;
        v39 = sub_252E32C54();

        swift_willThrow();
        v26 = 1;
      }
    }

    else
    {
    }
  }

  v25(v12, v26, 1, v24);
  result = sub_252956C98(v12, a1 + v16[10]);
  v41 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252B6CC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252B6CC78, 0, 0);
}

uint64_t sub_252B6CC78()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v4 = sub_252E378C4();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v4 && (sub_252C28D24(v0[3]) & 1) != 0)
    {
      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v5 = v0[5];
      v6 = v0[2];
      v7 = sub_252E36AD4();
      __swift_project_value_buffer(v7, qword_27F544D18);
      sub_252CC3D90(0xD000000000000035, 0x8000000252E6B3B0, 0xD000000000000096, 0x8000000252E82220);
      sub_252C24354(v2, v6);

      v8 = v0[1];

      return v8();
    }

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v9 = sub_252E36AD4();
    __swift_project_value_buffer(v9, qword_27F544D18);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E6B2F0, 0xD000000000000096, 0x8000000252E82220);
    v10 = v2;
    v11 = swift_task_alloc();
    v0[6] = v11;
    *v11 = v0;
    v11[1] = sub_252963D44;
    v12 = v0[4];
    v13 = v0[5];
    v14 = v0[2];
    v15 = v0[3];
  }

  else
  {
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_252963EC4;
    v17 = v0[5];
    v14 = v0[2];
    v15 = v0[3];
    v12 = 0;
  }

  return sub_252B69100(v14, v15, v12);
}

uint64_t sub_252B6CF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252B69100(a1, a2, a3);
}

uint64_t sub_252B6D020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return sub_252B6CC54(a1, a2, a3);
}

void *sub_252B6D0D4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetBooleanStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B6D138(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (result)
  {
    v5 = result;
    if (a2)
    {
      v6 = sub_252C2B064(result);
      if (v6 >> 62)
      {
        v7 = sub_252E378C4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (sub_252C4B5D4() && v7 > 0)
      {
        v8 = [a1 userTask];
        if (v8)
        {
          v9 = v8;
          v10 = [v8 attribute];

          return v10 != 66;
        }

        else
        {
          sub_252C515AC();

          return 1;
        }
      }
    }

    else
    {
      sub_252C4B5D4();
    }

    return 0;
  }

  return result;
}

uint64_t sub_252B6D244()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252B6D2D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252B6C5F4(a1, v4, v5, v6);
}

uint64_t sub_252B6D38C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25294B954;

  return sub_252B6C6AC(a1, v5);
}

uint64_t sub_252B6D438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252B6D498(uint64_t a1)
{
  v1 = *(a1 + 16);

  sub_252E362B4();
}

BOOL sub_252B6D52C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 112;
}

uint64_t sub_252B6D590(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_252B6D5B4, 0, 0);
}

uint64_t sub_252B6D5B4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);

  sub_252943BD0(sub_252B6D6EC, v1, 1, v3, v4);

  v5 = v0[1];

  return v5();
}

void *sub_252B6D688@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for HomeManagerSyncInProgressResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t AutomateHomeIntent.Builder.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AutomateHomeIntent.Builder.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

id sub_252B6D728()
{
  v1 = [objc_allocWithZone(type metadata accessor for AutomateHomeIntent()) init];
  [v1 setTrigger_];
  [v1 setAutomatableTask_];
  return v1;
}

uint64_t sub_252B6D788()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for AutomateHomeIntent.Builder();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v1;
  v5 = v2;
  return v3;
}

uint64_t AutomateHomeIntent.Builder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252B6D930(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 32;
    v4 = *(a1 + 16);
    while (1)
    {
      memcpy(__dst, &v1[v3], sizeof(__dst));
      if (sub_252CDFDD4())
      {
        break;
      }

      v3 += 504;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v5 = v2 + 1;
    v6 = 144;
    while (--v5)
    {
      v7 = *&v1[v6];
      v6 += 504;
      if (*(v7 + 16))
      {
        v8 = qword_27F53F520;

        if (v8 != -1)
        {
          goto LABEL_78;
        }

        while (1)
        {
          v9 = sub_252E36AD4();
          __swift_project_value_buffer(v9, qword_27F544E08);
          __dst[0] = 0;
          __dst[1] = 0xE000000000000000;
          sub_252E379F4();

          __dst[0] = 0xD000000000000023;
          __dst[1] = 0x8000000252E823A0;
          v10 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
          MEMORY[0x2530AD570](v10);

          sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009DLL, 0x8000000252E823D0);

          v12 = 0;
          v13 = 536;
          while (*(*&v1[v13 - 392] + 16) || !*(*&v1[v13 - 400] + 16))
          {
            ++v12;
            v13 += 504;
            if (v2 == v12)
            {
              v14 = *(v1 + 2);
              v12 = v2;
              goto LABEL_56;
            }
          }

          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_88;
          }

          v15 = *(v1 + 2);
          if (v14 == v15)
          {
LABEL_56:
            if (v12 > v14)
            {
              __break(1u);
            }

            else if ((v12 & 0x8000000000000000) == 0)
            {
              v26 = v12;
              if (!__OFADD__(v14, v12 - v14))
              {
                goto LABEL_65;
              }

              __break(1u);
LABEL_61:
              v14 = *(v1 + 2);
              v12 = v2;
LABEL_62:
              if (v12 > v14)
              {
                __break(1u);
              }

              else if ((v12 & 0x8000000000000000) == 0)
              {
                v26 = v12;
                if (!__OFADD__(v14, v12 - v14))
                {
LABEL_65:
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  __dst[0] = v1;
                  if (!isUniquelyReferenced_nonNull_native || v26 > *(v1 + 3) >> 1)
                  {
                    if (v14 <= v26)
                    {
                      v28 = v26;
                    }

                    else
                    {
                      v28 = v14;
                    }

                    v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v28, 1, v1);
                    __dst[0] = v1;
                  }

                  sub_252B7B280(v12, v14, 0);
                  return v1;
                }

LABEL_87:
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
                return result;
              }

              __break(1u);
              goto LABEL_87;
            }

            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            swift_once();
LABEL_34:
            v21 = sub_252E36AD4();
            __swift_project_value_buffer(v21, qword_27F544E08);
            __dst[0] = 0;
            __dst[1] = 0xE000000000000000;
            sub_252E379F4();

            __dst[0] = 0xD000000000000023;
            __dst[1] = 0x8000000252E823A0;
            v22 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
            MEMORY[0x2530AD570](v22);

            sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009DLL, 0x8000000252E823D0);

            v12 = 0;
            v23 = 536;
            while (*(*&v1[v23 - 384] + 16) || !*(*&v1[v23 - 280] + 16))
            {
              ++v12;
              v23 += 504;
              if (v2 == v12)
              {
                goto LABEL_61;
              }
            }

            v14 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_89;
            }

            v24 = *(v1 + 2);
            if (v14 == v24)
            {
              goto LABEL_62;
            }

            v2 = 504;
            while (v14 < v24)
            {
              if (*(*&v1[v23 + 120] + 16) || !*(*&v1[v23 + 224] + 16))
              {
                if (v14 != v12)
                {
                  if (v12 >= v24)
                  {
                    goto LABEL_81;
                  }

                  memcpy(__src, &v1[504 * v12 + 32], sizeof(__src));
                  memcpy(__dst, &v1[v23], sizeof(__dst));
                  sub_2529353AC(__src, v30);
                  sub_2529353AC(__dst, v30);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  if (v12 >= *(v1 + 2))
                  {
                    goto LABEL_82;
                  }

                  v25 = &v1[504 * v12];
                  memcpy(v29, v25 + 32, sizeof(v29));
                  memcpy(v25 + 32, __dst, 0x1F8uLL);
                  sub_252935408(v29);
                  if (v14 >= *(v1 + 2))
                  {
                    goto LABEL_83;
                  }

                  memcpy(v30, &v1[v23], sizeof(v30));
                  memcpy(&v1[v23], __src, 0x1F8uLL);
                  result = sub_252935408(v30);
                }

                ++v12;
              }

              ++v14;
              v24 = *(v1 + 2);
              v23 += 504;
              if (v14 == v24)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            v2 = 504;
            while (v14 < v15)
            {
              if (*(*&v1[v13 + 112] + 16) || !*(*&v1[v13 + 104] + 16))
              {
                if (v14 != v12)
                {
                  if (v12 >= v15)
                  {
                    goto LABEL_75;
                  }

                  memcpy(__src, &v1[504 * v12 + 32], sizeof(__src));
                  memcpy(__dst, &v1[v13], sizeof(__dst));
                  sub_2529353AC(__src, v30);
                  sub_2529353AC(__dst, v30);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v1 = sub_252D57AC0(v1);
                  }

                  if (v12 >= *(v1 + 2))
                  {
                    goto LABEL_76;
                  }

                  v16 = &v1[504 * v12];
                  memcpy(v29, v16 + 32, sizeof(v29));
                  memcpy(v16 + 32, __dst, 0x1F8uLL);
                  sub_252935408(v29);
                  if (v14 >= *(v1 + 2))
                  {
                    goto LABEL_77;
                  }

                  memcpy(v30, &v1[v13], sizeof(v30));
                  memcpy(&v1[v13], __src, 0x1F8uLL);
                  result = sub_252935408(v30);
                }

                ++v12;
              }

              ++v14;
              v15 = *(v1 + 2);
              v13 += 504;
              if (v14 == v15)
              {
                goto LABEL_56;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          swift_once();
        }
      }
    }

    v17 = v2 + 1;
    v18 = 152;
    while (--v17)
    {
      v19 = *&v1[v18];
      v18 += 504;
      if (*(v19 + 16))
      {
        v20 = qword_27F53F520;

        if (v20 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_84;
      }
    }
  }

LABEL_5:

  return v1;
}

uint64_t sub_252B6DFB0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ModifyTaskTypeForPositionRequestsHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252B6DFE4(void *a1)
{
  v2 = [a1 userTask];
  if (v2 && (v3 = v2, v4 = [v2 taskType], v3, v4 == 2))
  {
    v5 = 1;
  }

  else
  {
    v6 = [a1 userTask];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 taskType];

      v5 = v8 == 3;
    }

    else
    {
      v5 = 0;
    }
  }

  v9 = [a1 userTask];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 value];

  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [v11 type];

  if (v12 != 2)
  {
    goto LABEL_17;
  }

  v13 = [a1 userTask];
  if (!v13 || (v14 = v13, v15 = [v13 value], v14, !v15) || (objc_msgSend(v15, sel_doubleValue), v17 = v16, v15, v17 != 0.0))
  {
    v19 = [a1 userTask];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 value];

      if (v21)
      {
        [v21 doubleValue];
        v23 = v22;

        v18 = v23 == 100.0;
        goto LABEL_18;
      }
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v18 = 1;
LABEL_18:
  v24 = [a1 userTask];
  if (!v24 || (v25 = v24, v26 = [v24 value], v25, !v26) || (v27 = objc_msgSend(v26, sel_type), v26, v27 != 4))
  {
LABEL_27:
    v36 = 0;
    goto LABEL_28;
  }

  v28 = [a1 userTask];
  if (!v28 || (v29 = v28, v30 = [v28 value], v29, !v30) || (v31 = objc_msgSend(v30, sel_integerValue), v30, v31))
  {
    v32 = [a1 userTask];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 value];

      if (v34)
      {
        v35 = [v34 integerValue];

        v36 = v35 == 100;
        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  v36 = 1;
LABEL_28:
  v37 = [a1 userTask];
  if (v37)
  {
    v38 = v37;
    v39 = [v37 attribute];

    if (v39 == 9)
    {
      return v5 & (v18 | v36);
    }
  }

  else
  {
    sub_252C515AC();
  }

  return 0;
}

id sub_252B6E324(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 userTask];
  if (v7)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v7 = sub_252D6CA80(v7);
    v7[2] = 1;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v6, v8, v2);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E824C0);
  if (v7)
  {
    v9 = v7[2];
  }

  else
  {
    v9 = 0;
  }

  v19 = v9;
  v20 = v7 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F80, &unk_252E4E1F0);
  v10 = sub_252E36F94();
  MEMORY[0x2530AD570](v10);

  sub_252CC3D90(v21, v22, 0xD0000000000000A1, 0x8000000252E82500);

  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v11 = sub_252D6CB58();
  }

  else
  {
    v11 = 0;
  }

  v12 = [a1 filters];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a1 time];
  v16 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v16 setUserTask_];
  if (v14)
  {
    type metadata accessor for HomeFilter();
    v17 = sub_252E37254();
  }

  else
  {
    v17 = 0;
  }

  [v16 setFilters_];

  [v16 setTime_];

  return v16;
}

uint64_t sub_252B6E68C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (*(v1 + 16))
  {
    v4 = *(v1 + 16);
  }

  else
  {
    v5 = *(v1 + 32);
    if (!v5)
    {
      goto LABEL_9;
    }

    type metadata accessor for ServiceCollectionDecorator();
    swift_allocObject();
    sub_252B7DA9C(v5);
  }

  if (sub_252B7DC00())
  {
    sub_252B7FE5C(&v17);

    v7 = *(&v17 + 1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
    if (*(&v17 + 1))
    {
      *a1 = v17;
      *(a1 + 8) = v7;
LABEL_30:
      v16 = v22;
      *(a1 + 16) = v21;
      *(a1 + 32) = v16;
      *(a1 + 48) = v23;
      return result;
    }
  }

  else
  {
  }

LABEL_9:
  result = *(v2 + 24);
  if (result)
  {
    v8 = *(v2 + 24);
  }

  else
  {
    v9 = *(v2 + 32);
    if (!v9)
    {
LABEL_31:
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    type metadata accessor for AccessoriesCollectionDecorator();
    swift_allocObject();
    v8 = sub_252C2436C(v9);
  }

  if ((sub_252C244D4() & 1) == 0)
  {

    goto LABEL_31;
  }

  if ((sub_252C244D4() & 1) == 0)
  {
    goto LABEL_28;
  }

  v10 = *(v8 + 16);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_28:
    sub_252C246DC(&v17);

    v15 = *(&v17 + 1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
    if (*(&v17 + 1))
    {
      *a1 = v17;
      *(a1 + 8) = v15;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (v10 < 0)
  {
    v14 = *(v8 + 16);
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_17:
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = MEMORY[0x2530ADF00](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v11 = *(v10 + 32);
  }

  v13 = (*(*v11 + 256))(v12);

  if (v13 != 46)
  {
    goto LABEL_28;
  }

  sub_252C248B0(a1);
}

double sub_252B6E8E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544C58);
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E82620, 0xD000000000000073, 0x8000000252E82640);
  sub_252B680FC();
  v7 = sub_252B63638();

  if ((v7 & 1) != 0 && (sub_252CC3D90(0xD000000000000026, 0x8000000252E826C0, 0xD000000000000073, 0x8000000252E82640), v3))
  {
    [v3 deviceType];
  }

  else
  {
    v8 = *(sub_252B680FC() + 77);

    if (v8 != 1)
    {
      v10 = sub_252A8C8BC();
      if (qword_2864AB010 == v10 || qword_2864AB018 == v10 || qword_2864AB020 == v10)
      {
        *a2 = 0xD00000000000001FLL;
        *(a2 + 8) = 0x8000000252E727D0;
        *(a2 + 16) = 0xD00000000000001FLL;
        *(a2 + 24) = 0x8000000252E727D0;
      }

      else
      {
        if (sub_252A8C8BC() != 1)
        {
          goto LABEL_7;
        }

        *a2 = 0x74696B656D6F68;
        *(a2 + 8) = 0xE700000000000000;
        *(a2 + 16) = 0x74696B656D6F68;
        *(a2 + 24) = 0xE700000000000000;
      }

      *(a2 + 32) = 514;
      *&result = 0x65676E61726FLL;
      *(a2 + 40) = xmmword_252E41BB0;
      *(a2 + 56) = 0;
      return result;
    }
  }

LABEL_7:

  sub_252B6E68C(a2);
  return result;
}

uint64_t IconsManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t IconsManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_252B6EBB4(unint64_t a1)
{
  v1 = a1;
  v54 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_45;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v48 = v1;
    v49 = v1 & 0xC000000000000001;
    v45 = v1 + 32;
    v46 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v47 = v2;
    while (1)
    {
      if (v49)
      {
        v6 = MEMORY[0x2530ADF00](v4, v1);
      }

      else
      {
        if (v4 >= *(v46 + 16))
        {
          goto LABEL_44;
        }

        v6 = *(v45 + 8 * v4);
      }

      v7 = v6;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        v2 = sub_252E378C4();
        goto LABEL_3;
      }

      v9 = [v6 entity];
      v10 = [v7 taskResponses];
      if (v10)
      {
        break;
      }

LABEL_6:
      if (v4 == v2)
      {
        return v5;
      }
    }

    v11 = v10;
    v51 = v9;
    type metadata accessor for HomeUserTaskResponse();
    v12 = sub_252E37264();

    v52 = v3;
    v53 = v3;
    if (v12 >> 62)
    {
      v13 = sub_252E378C4();
      v50 = v7;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v50 = v7;
      if (v13)
      {
LABEL_15:
        if (v13 < 1)
        {
          goto LABEL_43;
        }

        v14 = 0;
        v15 = v3;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x2530ADF00](v14, v12);
          }

          else
          {
            v17 = *(v12 + 8 * v14 + 32);
          }

          v18 = v17;
          v19 = [v17 userTask];
          if (v19 && (v20 = v19, v21 = [v19 taskType], v20, v21 == 1))
          {
            v22 = v18;
            MEMORY[0x2530AD700]();
            if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v23 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_252E372A4();
            }

            sub_252E372D4();

            v15 = v52;
          }

          else
          {
            v16 = v18;
            MEMORY[0x2530AD700]();
            if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();

            v3 = v53;
          }

          ++v14;
        }

        while (v13 != v14);
        goto LABEL_31;
      }
    }

    v15 = v3;
LABEL_31:

    type metadata accessor for HomeEntityResponse.Builder();
    v24 = swift_allocObject();
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v25.n128_f64[0] = HomeEntity.Builder.init()();
    v27 = (*(*v26 + 448))(v25);

    *(v24 + 16) = v27;
    *(v24 + 24) = MEMORY[0x277D84F90];
    if (v51)
    {
      *(v24 + 16) = v51;
      v28 = v51;
    }

    v29 = sub_252B4EF4C(v3);

    v30 = sub_25297D0C0(v29);

    (*(*v30 + 192))(v31);

    MEMORY[0x2530AD700](v32);
    v2 = v47;
    v1 = v48;
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v42 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();
    v5 = v55;
    v33 = swift_allocObject();
    swift_allocObject();
    v34.n128_f64[0] = HomeEntity.Builder.init()();
    v36 = (*(*v35 + 448))(v34);

    *(v33 + 16) = v36;
    v3 = MEMORY[0x277D84F90];
    *(v33 + 24) = MEMORY[0x277D84F90];
    if (v51)
    {
      *(v33 + 16) = v51;
      v37 = v51;
    }

    v38 = sub_252B4EF4C(v15);

    v39 = sub_25297D0C0(v38);

    (*(*v39 + 192))(v40);

    MEMORY[0x2530AD700](v41);
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v43 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();

    goto LABEL_6;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B6F178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[74] = v3;
  v4[73] = a3;
  v4[72] = a2;
  v4[71] = a1;
  v5 = sub_252E34014();
  v4[75] = v5;
  v6 = *(v5 - 8);
  v4[76] = v6;
  v7 = *(v6 + 64) + 15;
  v4[77] = swift_task_alloc();
  v8 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  v4[78] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[79] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B6F274, 0, 0);
}

uint64_t sub_252B6F274()
{
  v1 = *(v0 + 584);
  if (!v1 || (v2 = [*(v0 + 584) entityResponses]) == 0)
  {
    sub_2529318DC();
    swift_allocError();
    *v14 = 6;
    swift_willThrow();
    v15 = *(v0 + 632);
    v16 = *(v0 + 616);

    v17 = *(v0 + 8);

    return v17();
  }

  v3 = v2;
  type metadata accessor for HomeEntityResponse();
  v4 = sub_252E37264();

  v5 = v4;
  v61 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_63;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v51 = v1;
    v1 = MEMORY[0x277D84F90];
    v55 = v0;
    if (v6)
    {
      v7 = 0;
      v56 = v5 & 0xFFFFFFFFFFFFFF8;
      v58 = v5 & 0xC000000000000001;
      v50 = v5;
      v52 = v6;
      v53 = v5 + 32;
      while (1)
      {
        if (v58)
        {
          v5 = MEMORY[0x2530ADF00](v7, v50);
        }

        else
        {
          if (v7 >= *(v56 + 16))
          {
            goto LABEL_62;
          }

          v5 = *(v53 + 8 * v7);
        }

        v0 = v5;
        if (__OFADD__(v7++, 1))
        {
          goto LABEL_61;
        }

        v9 = [v5 taskResponses];
        if (v9)
        {
          v1 = v9;
          type metadata accessor for HomeUserTaskResponse();
          v10 = sub_252E37264();

          if (v10 >> 62)
          {
            v5 = sub_252E378C4();
            v11 = v5;
          }

          else
          {
            v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v12 = 0;
          while (1)
          {
            if (v11 == v12)
            {

              v6 = v52;
              goto LABEL_8;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              v5 = MEMORY[0x2530ADF00](v12, v10);
            }

            else
            {
              if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v5 = *(v10 + 8 * v12 + 32);
            }

            v1 = v5;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            v13 = [v5 taskOutcome];

            ++v12;
            if (v13 == 1)
            {

              sub_252E37A94();
              v1 = *(v61 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              v5 = sub_252E37AA4();
              v6 = v52;
              goto LABEL_8;
            }
          }

          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

LABEL_8:
        v0 = v55;
        if (v7 == v6)
        {
          v19 = v61;
          v1 = MEMORY[0x277D84F90];
          goto LABEL_33;
        }
      }
    }

    v19 = MEMORY[0x277D84F90];
LABEL_33:

    sub_252B6EBB4(v19);
    v21 = v20;

    v61 = v1;
    v59 = v21 & 0xFFFFFFFFFFFFFF8;
    if (v21 >> 62)
    {
      v5 = sub_252E378C4();
      v22 = v5;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = *(v0 + 592);
    *(v0 + 640) = v1;
    if (!v22)
    {
      break;
    }

    v23 = v21 & 0xC000000000000001;
    v54 = MEMORY[0x277D84F90];
    v24 = v21;
    v25 = 0;
    while (1)
    {
      if (v23)
      {
        v5 = MEMORY[0x2530ADF00](v25, v21);
      }

      else
      {
        if (v25 >= *(v59 + 16))
        {
          goto LABEL_60;
        }

        v5 = *(v21 + 8 * v25 + 32);
      }

      v26 = v5;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      sub_252DA49A4();
      v29 = v28;
      memcpy((v0 + 16), (v57 + 112), 0x1F8uLL);
      if (sub_252956B94((v0 + 16)) == 1 || (v30 = *(v0 + 216), !*(v30 + 16)))
      {
        v31 = 4;
      }

      else
      {
        v31 = *(v30 + 32);
      }

      sub_252C3AC5C(v31);
      v1 = v32;

      v33 = sub_252DA124C(0);
      if (v33)
      {
        MEMORY[0x2530AD700]();
        if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
          v0 = v55;
        }

        v5 = sub_252E372D4();
        v54 = v61;
        *(v0 + 640) = v61;
        v21 = v24;
        if (v27 == v22)
        {
          goto LABEL_54;
        }

        ++v25;
      }

      else
      {
        ++v25;
        v21 = v24;
        if (v27 == v22)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    v49 = v5;
    v6 = sub_252E378C4();
    v5 = v49;
  }

  v54 = v1;
LABEL_54:
  v35 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = *(v0 + 592);
  v38 = *(v0 + 584);
  v39 = *(v0 + 576);

  *(v0 + 728) = sub_252DC6D48(v39, v38);
  v40 = *(v37 + 48);
  v41 = v51;
  v42 = *__swift_project_boxed_opaque_existential_1((v37 + 24), v40);
  v43 = sub_252E36324();
  v44 = v0;
  v45 = *(*(v43 - 8) + 56);
  v45(v35, 1, 1, v43);
  v45(v35 + v36[10], 1, 1, v43);
  *(v35 + v36[5]) = 0;
  *(v35 + v36[6]) = 0;
  *(v35 + v36[7]) = 0;
  *(v35 + v36[8]) = 0;
  *(v35 + v36[9]) = 0;
  sub_252B7021C(v35, v54);

  v46 = sub_252C0A68C();
  *(v44 + 648) = v46;
  v47 = *(MEMORY[0x277D55BE8] + 4);
  v60 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v48 = swift_task_alloc();
  *(v44 + 656) = v48;
  *v48 = v44;
  v48[1] = sub_252B6F900;

  return v60(0xD000000000000027, 0x8000000252E82740, v46);
}

uint64_t sub_252B6F900(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 656);
  v6 = *v2;
  *(v4 + 664) = a1;
  *(v4 + 672) = v1;

  v7 = *(v3 + 648);

  if (v1)
  {
    v8 = sub_252B6FBF8;
  }

  else
  {
    v8 = sub_252B6FA40;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_252B6FA40()
{
  v1 = v0[73];
  sub_252B7074C(v0[79]);
  v2 = swift_task_alloc();
  v0[85] = v2;
  *v2 = v0;
  v2[1] = sub_252B6FAE0;
  v3 = v0[74];

  return sub_252E174F4(v1);
}

uint64_t sub_252B6FAE0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 680);
  v7 = *v2;
  *(v3 + 688) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v5 = sub_252B6FDF4;
  }

  else
  {
    v5 = sub_252B6FC98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B6FBF8()
{
  v1 = v0[80];
  v2 = v0[74];
  v3 = v0[73];
  sub_252B7074C(v0[79]);

  v4 = v0[84];
  v5 = v0[79];
  v6 = v0[77];

  v7 = v0[1];

  return v7();
}

uint64_t sub_252B6FC98()
{
  v1 = (v0 + 560);
  v2 = *(v0 + 688);
  v3 = *(v0 + 664);
  *(v0 + 560) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 616);
  v9 = *(v0 + 592);
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  *(v0 + 704) = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  *(v0 + 712) = v12;
  *v12 = v0;
  v12[1] = sub_252B6FE94;
  v13 = *(v0 + 728);
  v14 = *(v0 + 616);

  return sub_252BDB88C(v0 + 520, &unk_252E3F140, v11, v14, 0, 0, v13, v10);
}

uint64_t sub_252B6FDF4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);

  v4 = *(v0 + 696);
  v5 = *(v0 + 632);
  v6 = *(v0 + 616);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252B6FE94()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v7 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    (*(v2[76] + 8))(v2[77], v2[75]);
    v4 = sub_252B70158;
  }

  else
  {
    v5 = v2[88];
    (*(v2[76] + 8))(v2[77], v2[75]);

    v4 = sub_252B6FFEC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B6FFEC()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 688);
  v9 = *(v0 + 664);
  v10 = *(v0 + 640);
  v16 = *(v0 + 632);
  v17 = *(v0 + 616);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 568);
  (*(v4 + 112))(v7, v0 + 520, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 520));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252B70158()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 640);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);

  v6 = *(v0 + 720);
  v7 = *(v0 + 632);
  v8 = *(v0 + 616);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252B7021C(uint64_t a1, uint64_t a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v30[-v9];
  type metadata accessor for HomeAutomationClimateResponses();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = a2;
  v12 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  v13 = *(v12 + 36);
  v14 = *(a1 + v13);

  *(a1 + v13) = v11;
  v15 = sub_25294833C(1u, 0, 0);
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  v17 = [v15 dictionary];
  if (!v17)
  {

LABEL_7:
    v25 = sub_252E36324();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v31[0] = 0;
  v20 = [v19 dataWithPropertyList:v18 format:200 options:0 error:v31];
  v21 = v31[0];
  if (!v20)
  {
    v26 = v21;
    v27 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_7;
  }

  v22 = sub_252E32D34();
  v24 = v23;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v22, v24);
  v25 = sub_252E36324();
  (*(*(v25 - 8) + 56))(v10, 0, 1, v25);
LABEL_8:
  sub_252956C98(v10, a1 + *(v12 + 40));
  sub_252E37024();
  sub_252E36324();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  result = sub_252956C98(v8, a1);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_252B70558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252B6F178(a1, a2, a3);
}

void *sub_252B7060C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetRangeTemperatureValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_252B70670(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      if (v4 == 6 && (sub_252CCFCB8() & 1) != 0)
      {
        result = [a1 userTask];
        if (!result)
        {
          return result;
        }

        v6 = result;
        v7 = [result value];

        if (v7)
        {
          v8 = [v7 type];

          return (v8 == 6);
        }
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  return 0;
}

uint64_t sub_252B7074C(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double HomeFilter.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 7;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 175) = 0;
  return result;
}

double INHomeFilter.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 82) = 0u;
  return result;
}

double INHomeFilter.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 82) = 0u;
  return result;
}

uint64_t sub_252B7086C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 24);
  *(v2 + 24) = v3;
}

uint64_t sub_252B708F8(void *a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = a1;
}

uint64_t sub_252B70938(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 48);
  *(v2 + 48) = v3;
}

uint64_t sub_252B709C4(void *a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  v3 = a1;
}

uint64_t sub_252B70A10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 64);
  *(v2 + 64) = v3;
}

uint64_t sub_252B70A9C(void *a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  v3 = a1;
}

uint64_t sub_252B70ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 72);
  *(v2 + 72) = v3;
}

uint64_t sub_252B70B68(void *a1)
{
  v2 = *(v1 + 72);
  *(v1 + 72) = a1;
  v3 = a1;
}

uint64_t sub_252B70BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 80);
  *(v2 + 80) = v3;
}

uint64_t sub_252B70C34(void *a1)
{
  v2 = *(v1 + 80);
  *(v1 + 80) = a1;
  v3 = a1;
}

uint64_t sub_252B70C74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = objc_allocWithZone(MEMORY[0x277CD4188]);
    v5 = sub_252E36F04();
    v3 = [v4 initWithSpokenPhrase_];
  }

  v6 = *(v2 + 88);
  *(v2 + 88) = v3;
}

uint64_t sub_252B70D00(void *a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  v3 = a1;
}

uint64_t sub_252B70D58(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 entityIdentifiers];
    if (v3)
    {
      v4 = v3;
      v5 = sub_252E37264();
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v1 + 16);
    *(v1 + 16) = v5;

    v7 = [v2 entityName];
    v8 = *(v1 + 24);
    *(v1 + 24) = v7;

    *(v1 + 32) = [v2 entityType];
    *(v1 + 40) = [v2 outerDeviceType];
    v9 = [v2 outerDeviceName];
    v10 = *(v1 + 48);
    *(v1 + 48) = v9;

    *(v1 + 56) = [v2 deviceType];
    v11 = [v2 home];
    v12 = *(v1 + 64);
    *(v1 + 64) = v11;

    v13 = [v2 zone];
    v14 = *(v1 + 72);
    *(v1 + 72) = v13;

    v15 = [v2 group];
    v16 = *(v1 + 80);
    *(v1 + 80) = v15;

    v17 = [v2 room];
    v18 = *(v1 + 88);
    *(v1 + 88) = v17;

    *(v1 + 96) = [v2 isExcludeFilter];
    v19 = [v2 hasAllQuantifier];

    *(v1 + 97) = v19;
  }
}

id sub_252B70F24()
{
  v1 = *(v0 + 24);
  v20 = *(v0 + 40);
  v21 = *(v0 + 32);
  v2 = *(v0 + 48);
  v19 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 96);
  v8 = *(v0 + 97);
  if (*(v0 + 16))
  {
    v9 = v5;

    v10 = v1;
    v11 = v2;
    v12 = v3;
    v13 = v4;
    v14 = v6;
    v15 = sub_252E37254();
  }

  else
  {
    v9 = v5;
    v10 = v1;
    v11 = v2;
    v12 = v3;
    v13 = v4;
    v14 = v6;
    v15 = 0;
  }

  BYTE1(v18) = v8;
  LOBYTE(v18) = v7;
  v16 = [objc_allocWithZone(MEMORY[0x277CD3CF8]) initWithEntityIdentifiers:v15 entityName:v10 entityType:v21 outerDeviceType:v20 outerDeviceName:v11 deviceType:v19 home:v12 zone:v13 group:v14 room:v9 isExcludeFilter:v18 hasAllQuantifier:?];

  return v16;
}

uint64_t sub_252B7107C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v24 = *(v0 + 32);
  v25 = *(v0 + 56);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v26 = *(v0 + 96);
  v9 = *(v0 + 97);
  type metadata accessor for INHomeFilter.Builder();
  v10 = swift_allocObject();
  *(v10 + 24) = xmmword_252E4E2C0;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 72) = 0u;
  *(v10 + 82) = 0u;
  *(v10 + 16) = v1;
  v11 = v7;

  v12 = v2;
  v13 = v4;
  v14 = v6;
  v15 = v5;
  v16 = v8;

  v17 = *(v10 + 24);
  *(v10 + 24) = v2;

  *(v10 + 32) = v24;
  *(v10 + 40) = v3;
  v18 = *(v10 + 48);
  *(v10 + 48) = v4;

  v19 = *(v10 + 64);
  *(v10 + 56) = v25;
  *(v10 + 64) = v6;

  v20 = *(v10 + 72);
  *(v10 + 72) = v5;

  v21 = *(v10 + 80);
  *(v10 + 80) = v8;

  v22 = *(v10 + 88);
  *(v10 + 88) = v7;

  *(v10 + 96) = v26;
  *(v10 + 97) = v9;

  return v10;
}

uint64_t INHomeFilter.Builder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t INHomeFilter.Builder.__deallocating_deinit()
{
  INHomeFilter.Builder.deinit();

  return swift_deallocClassInstance();
}

double HomeFilter.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 7;
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 175) = 0;
  return result;
}

uint64_t sub_252B71290(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_252B712D4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 24) = a1;
  if (a2)
  {
    *(v2 + 32) = a2;
  }

  else
  {
    *(v2 + 32) = 0;
  }
}

uint64_t sub_252B7132C(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 32);
  *(v1 + 24) = v3;
  *(v1 + 32) = v5;
}

uint64_t sub_252B713C0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 64);
  *(v2 + 56) = a1;
  if (a2)
  {
    *(v2 + 64) = a2;
  }

  else
  {
    *(v2 + 64) = 0;
  }
}

uint64_t sub_252B71418(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 64);
  *(v1 + 56) = v3;
  *(v1 + 64) = v5;
}

uint64_t sub_252B714A0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);
  *(v2 + 80) = a1;
  if (a2)
  {
    *(v2 + 88) = a2;
  }

  else
  {
    *(v2 + 88) = 0;
  }
}

uint64_t sub_252B714F8(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 88);
  *(v1 + 80) = v3;
  *(v1 + 88) = v5;
}

uint64_t sub_252B71574(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 104);
  *(v2 + 96) = a1;
  if (a2)
  {
    *(v2 + 104) = a2;
  }

  else
  {
    *(v2 + 104) = 0;
  }
}

uint64_t sub_252B715CC(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 104);
  *(v1 + 96) = v3;
  *(v1 + 104) = v5;
}

uint64_t sub_252B71648(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 120);
  *(v2 + 112) = a1;
  if (a2)
  {
    *(v2 + 120) = a2;
  }

  else
  {
    *(v2 + 120) = 0;
  }
}

uint64_t sub_252B716A0(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 120);
  *(v1 + 112) = v3;
  *(v1 + 120) = v5;
}

uint64_t sub_252B7171C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 136);
  *(v2 + 128) = a1;
  if (a2)
  {
    *(v2 + 136) = a2;
  }

  else
  {
    *(v2 + 136) = 0;
  }
}

uint64_t sub_252B71774(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 136);
  *(v1 + 128) = v3;
  *(v1 + 136) = v5;
}

uint64_t sub_252B717F0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 152);
  *(v2 + 144) = a1;
  if (a2)
  {
    *(v2 + 152) = a2;
  }

  else
  {
    *(v2 + 152) = 0;
  }
}

uint64_t sub_252B71848(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 152);
  *(v1 + 144) = v3;
  *(v1 + 152) = v5;
}

uint64_t sub_252B718C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  *(v2 + 160) = a1;
  if (a2)
  {
    *(v2 + 168) = a2;
  }

  else
  {
    *(v2 + 168) = 0;
  }
}

uint64_t sub_252B7191C(void *a1)
{
  if (a1)
  {
    v2 = [a1 spokenPhrase];
    v3 = sub_252E36F34();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v1 + 168);
  *(v1 + 160) = v3;
  *(v1 + 168) = v5;
}

uint64_t sub_252B719BC(void *a1)
{
  sub_252B72040(a1);
}

id sub_252B719E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v36 = *(v0 + 40);
  v37 = *(v0 + 48);
  v26 = *(v0 + 24);
  v27 = *(v0 + 56);
  v3 = *(v0 + 64);
  v38 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 104);
  v28 = *(v0 + 80);
  v29 = *(v0 + 96);
  v6 = *(v0 + 120);
  v7 = *(v0 + 136);
  v30 = *(v0 + 112);
  v31 = *(v0 + 128);
  v8 = *(v0 + 152);
  v9 = *(v0 + 168);
  v32 = *(v0 + 144);
  v33 = *(v0 + 160);
  v40 = *(v0 + 176);
  v41 = *(v0 + 177);
  v42 = *(v0 + 178);
  v34 = objc_allocWithZone(type metadata accessor for HomeFilter());
  v39 = v9;

  v35 = v2;

  v10 = sub_252E36F04();
  v11 = [v34 initWithIdentifier:0 displayString:v10];

  v12 = v11;
  if (v1)
  {
    v13 = sub_252E37254();
  }

  else
  {
    v13 = 0;
  }

  [v12 setEntityIdentifiers_];

  if (v35)
  {
    v14 = sub_252E36F04();
  }

  else
  {
    v14 = 0;
  }

  [v12 setHomeEntityName_];

  [v12 setEntityType_];
  [v12 setOuterDeviceType_];
  if (v3)
  {
    v15 = sub_252E36F04();
  }

  else
  {
    v15 = 0;
  }

  [v12 setOuterDeviceName_];

  [v12 setDeviceType_];
  if (v4)
  {
    v16 = sub_252E36F04();
  }

  else
  {
    v16 = 0;
  }

  [v12 setHomeName_];

  if (v5)
  {
    v17 = sub_252E36F04();
  }

  else
  {
    v17 = 0;
  }

  [v12 setZoneName_];

  if (v6)
  {
    v18 = sub_252E36F04();
  }

  else
  {
    v18 = 0;
  }

  [v12 setGroupName_];

  if (v7)
  {
    v19 = sub_252E36F04();
  }

  else
  {
    v19 = 0;
  }

  [v12 setRoomName_];

  if (v8)
  {
    v20 = sub_252E36F04();
  }

  else
  {
    v20 = 0;
  }

  [v12 setTargetArea_];

  if (v39)
  {
    v21 = sub_252E36F04();
  }

  else
  {
    v21 = 0;
  }

  [v12 setTargetMap_];

  sub_252956D08();
  v22 = sub_252E37674();
  [v12 setIsExcludeFilter_];

  v23 = sub_252E37674();
  [v12 setHasAllQuantifier_];

  v24 = sub_252E37674();
  [v12 setReferencesFavorites_];

  return v12;
}

uint64_t sub_252B71E28()
{
  type metadata accessor for HomeFilter.Builder();
  v1 = swift_allocObject();
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 175) = 0;
  *(v1 + 16) = *(v0 + 16);

  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;

  *(v1 + 40) = *(v0 + 40);
  v3 = *(v0 + 64);
  *(v1 + 56) = *(v0 + 56);
  *(v1 + 64) = v3;

  *(v1 + 72) = *(v0 + 72);
  v4 = *(v0 + 88);

  v5 = *(v0 + 104);
  *&v6 = v4;
  *(&v6 + 1) = *(v0 + 96);
  v16 = v6;

  *&v7 = v5;
  *(&v7 + 1) = *(v0 + 112);
  *(v1 + 88) = v16;
  *(v1 + 104) = v7;
  v8 = *(v0 + 120);

  v9 = *(v0 + 136);
  *&v10 = v8;
  *(&v10 + 1) = *(v0 + 128);
  v17 = v10;

  v11 = *(v0 + 152);
  *&v12 = v9;
  *(&v12 + 1) = *(v0 + 144);
  *(v1 + 120) = v17;
  *(v1 + 136) = v12;
  *(v1 + 152) = v11;

  v13 = *(v0 + 168);
  v14 = *(v1 + 168);
  *(v1 + 160) = *(v0 + 160);
  *(v1 + 168) = v13;

  *(v1 + 176) = *(v0 + 176);
  *(v1 + 177) = *(v0 + 177);
  *(v1 + 178) = *(v0 + 178);
  return v1;
}

void *HomeFilter.Builder.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[8];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  v8 = v0[19];

  v9 = v0[21];

  return v0;
}

uint64_t HomeFilter.Builder.__deallocating_deinit()
{
  HomeFilter.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252B72040(void *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = [v3 entityIdentifiers];
    if (v4)
    {
      v5 = v4;
      v6 = sub_252E37264();
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v2 + 16);
    *(v2 + 16) = v6;

    v8 = [v3 homeEntityName];
    if (v8)
    {
      v9 = v8;
      v10 = sub_252E36F34();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0;
    }

    v13 = *(v2 + 32);
    *(v2 + 24) = v10;
    *(v2 + 32) = v12;

    *(v2 + 40) = [v3 entityType];
    *(v2 + 48) = [v3 outerDeviceType];
    v14 = [v3 outerDeviceName];
    if (v14)
    {
      v15 = v14;
      v16 = sub_252E36F34();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = *(v2 + 64);
    *(v2 + 56) = v16;
    *(v2 + 64) = v18;

    *(v2 + 72) = [v3 deviceType];
    v20 = [v3 homeName];
    if (v20)
    {
      v21 = v20;
      v22 = sub_252E36F34();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = *(v2 + 88);
    *(v2 + 80) = v22;
    *(v2 + 88) = v24;

    v26 = [v3 zoneName];
    if (v26)
    {
      v27 = v26;
      v28 = sub_252E36F34();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v31 = *(v2 + 104);
    *(v2 + 96) = v28;
    *(v2 + 104) = v30;

    v32 = [v3 groupName];
    if (v32)
    {
      v33 = v32;
      v34 = sub_252E36F34();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v37 = *(v2 + 120);
    *(v2 + 112) = v34;
    *(v2 + 120) = v36;

    v38 = [v3 roomName];
    if (v38)
    {
      v39 = v38;
      v40 = sub_252E36F34();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = *(v2 + 136);
    *(v2 + 128) = v40;
    *(v2 + 136) = v42;

    v44 = [v3 targetArea];
    if (v44)
    {
      v45 = v44;
      v46 = sub_252E36F34();
      v48 = v47;
    }

    else
    {
      v46 = 0;
      v48 = 0;
    }

    v49 = *(v2 + 152);
    *(v2 + 144) = v46;
    *(v2 + 152) = v48;

    v50 = [v3 targetMap];
    if (v50)
    {
      v51 = v50;
      v52 = sub_252E36F34();
      v54 = v53;
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = *(v2 + 168);
    *(v2 + 160) = v52;
    *(v2 + 168) = v54;

    v56 = [v3 isExcludeFilter];
    if (!v56)
    {
      sub_252956D08();
      v56 = sub_252E37674();
    }

    sub_252956D08();
    v57 = sub_252E37674();
    v58 = sub_252E37694();

    *(v2 + 176) = (v58 & 1) == 0;
    v59 = [v3 hasAllQuantifier];
    if (!v59)
    {
      v59 = sub_252E37674();
    }

    v60 = sub_252E37674();
    v61 = sub_252E37694();

    *(v2 + 177) = (v61 & 1) == 0;
    v62 = [v3 referencesFavorites];
    if (!v62)
    {
      v62 = sub_252E37674();
    }

    v63 = sub_252E37674();
    v64 = sub_252E37694();

    *(v2 + 178) = (v64 & 1) == 0;
  }

  return v2;
}

uint64_t dispatch thunk of INHomeFilter.Builder.withEntityName(_:)()
{
  return (*(*v0 + 480))();
}

{
  return (*(*v0 + 488))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withOuterDeviceName(_:)()
{
  return (*(*v0 + 512))();
}

{
  return (*(*v0 + 520))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withHome(_:)()
{
  return (*(*v0 + 536))();
}

{
  return (*(*v0 + 544))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withZone(_:)()
{
  return (*(*v0 + 552))();
}

{
  return (*(*v0 + 560))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withGroup(_:)()
{
  return (*(*v0 + 568))();
}

{
  return (*(*v0 + 576))();
}

uint64_t dispatch thunk of INHomeFilter.Builder.withRoom(_:)()
{
  return (*(*v0 + 584))();
}

{
  return (*(*v0 + 592))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withEntityName(_:)()
{
  return (*(*v0 + 576))();
}

{
  return (*(*v0 + 584))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withOuterDeviceName(_:)()
{
  return (*(*v0 + 608))();
}

{
  return (*(*v0 + 616))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withHome(_:)()
{
  return (*(*v0 + 632))();
}

{
  return (*(*v0 + 640))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withZone(_:)()
{
  return (*(*v0 + 648))();
}

{
  return (*(*v0 + 656))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withGroup(_:)()
{
  return (*(*v0 + 664))();
}

{
  return (*(*v0 + 672))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withRoom(_:)()
{
  return (*(*v0 + 680))();
}

{
  return (*(*v0 + 688))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withTargetArea(_:)()
{
  return (*(*v0 + 696))();
}

{
  return (*(*v0 + 704))();
}

uint64_t dispatch thunk of HomeFilter.Builder.withTargetMap(_:)()
{
  return (*(*v0 + 712))();
}

{
  return (*(*v0 + 720))();
}

uint64_t sub_252B72D14(uint64_t result)
{
  v1 = *(result + 16);
  v32 = v1;
  if (v1)
  {
    v2 = 0;
    v31 = result;
    v36 = result + 32;
    v33 = MEMORY[0x277D84F90];
    do
    {
      if (v2 >= v1)
      {
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      result = memcpy(__dst, (v36 + 504 * v2), sizeof(__dst));
      v3 = __OFADD__(v2++, 1);
      if (v3)
      {
        goto LABEL_60;
      }

      v4 = __dst[47];
      v5 = *(__dst[47] + 16);
      if (v5)
      {
        sub_2529353AC(__dst, v37);
        v6 = (v4 + 32);

        while (2)
        {
          if (v5)
          {
            switch(*v6)
            {
              case 8:

                break;
              default:
                v7 = sub_252E37DB4();

                ++v6;
                --v5;
                if ((v7 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            v8 = v33;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v39 = v33;
            v1 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2529AA480(0, *(v33 + 16) + 1, 1);
              v8 = v39;
            }

            v11 = *(v8 + 16);
            v10 = *(v8 + 24);
            if (v11 >= v10 >> 1)
            {
              sub_2529AA480((v10 > 1), v11 + 1, 1);
              v8 = v39;
            }

            *(v8 + 16) = v11 + 1;
            v33 = v8;
            result = memcpy((v8 + 504 * v11 + 32), __dst, 0x1F8uLL);
          }

          else
          {

            result = sub_252935408(__dst);
            v1 = v32;
          }

          break;
        }
      }
    }

    while (v2 != v1);
    v12 = v33;
    if (*(v33 + 16))
    {
      return v12;
    }

    v13 = 0;
    v34 = MEMORY[0x277D84F90];
    while (v13 < v1)
    {
      result = memcpy(__dst, (v36 + 504 * v13), sizeof(__dst));
      v3 = __OFADD__(v13++, 1);
      if (v3)
      {
        goto LABEL_62;
      }

      v14 = __dst[47];
      v15 = *(__dst[47] + 16);
      if (v15)
      {
        sub_2529353AC(__dst, v37);
        v16 = (v14 + 32);

        while (2)
        {
          if (v15)
          {
            switch(*v16)
            {
              case 9:

                break;
              default:
                v17 = sub_252E37DB4();

                ++v16;
                --v15;
                if ((v17 & 1) == 0)
                {
                  continue;
                }

                break;
            }

            v18 = v34;
            v19 = swift_isUniquelyReferenced_nonNull_native();
            v39 = v34;
            v1 = v32;
            if ((v19 & 1) == 0)
            {
              sub_2529AA480(0, *(v34 + 16) + 1, 1);
              v18 = v39;
            }

            v21 = *(v18 + 16);
            v20 = *(v18 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_2529AA480((v20 > 1), v21 + 1, 1);
              v18 = v39;
            }

            *(v18 + 16) = v21 + 1;
            v34 = v18;
            result = memcpy((v18 + 504 * v21 + 32), __dst, 0x1F8uLL);
          }

          else
          {

            result = sub_252935408(__dst);
            v1 = v32;
          }

          break;
        }
      }

      if (v13 == v1)
      {
        goto LABEL_37;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v12 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
    return v12;
  }

  v31 = result;
  v34 = MEMORY[0x277D84F90];

LABEL_37:
  v12 = v34;
  if (*(v34 + 16))
  {
    return v12;
  }

  if (!v1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_56:
    v12 = v35;
    if (!*(v35 + 16))
    {

      return v31;
    }

    return v12;
  }

  v22 = 0;
  v35 = MEMORY[0x277D84F90];
  while (v22 < v1)
  {
    result = memcpy(__dst, (v31 + 32 + 504 * v22), sizeof(__dst));
    v3 = __OFADD__(v22++, 1);
    if (v3)
    {
      goto LABEL_64;
    }

    v23 = __dst[47];
    v24 = *(__dst[47] + 16);
    if (v24)
    {
      sub_2529353AC(__dst, v37);
      v25 = (v23 + 32);

      while (2)
      {
        if (v24)
        {
          switch(*v25)
          {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 0xA:
            case 0xB:
            case 0xC:
              v26 = sub_252E37DB4();

              ++v25;
              --v24;
              if ((v26 & 1) == 0)
              {
                continue;
              }

              break;
            default:

              break;
          }

          v27 = v35;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v39 = v35;
          v1 = v32;
          if ((v28 & 1) == 0)
          {
            sub_2529AA480(0, *(v35 + 16) + 1, 1);
            v27 = v39;
          }

          v30 = *(v27 + 16);
          v29 = *(v27 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_2529AA480((v29 > 1), v30 + 1, 1);
            v27 = v39;
          }

          *(v27 + 16) = v30 + 1;
          v35 = v27;
          result = memcpy((v27 + 504 * v30 + 32), __dst, 0x1F8uLL);
        }

        else
        {

          result = sub_252935408(__dst);
          v1 = v32;
        }

        break;
      }
    }

    if (v22 == v1)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
  return result;
}

HomeAutomationInternal::ControlHomeFlow::State_optional __swiftcall ControlHomeFlow.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ControlHomeFlow.State.rawValue.getter()
{
  result = 0x6553746E65746E69;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x6E55656369766564;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6572506E69676562;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0x456F547964616572;
      break;
    case 0xA:
      result = 0x6465747563657865;
      break;
    case 0xB:
      result = 0x64656B636F6C62;
      break;
    case 0xC:
      result = 0x6574656C706D6F63;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_252B738D4(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = ControlHomeFlow.State.rawValue.getter();
  v4 = v3;
  if (v2 == ControlHomeFlow.State.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252B73970()
{
  v1 = *v0;
  sub_252E37EC4();
  ControlHomeFlow.State.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252B739D8()
{
  v2 = *v0;
  ControlHomeFlow.State.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252B73A3C()
{
  v1 = *v0;
  sub_252E37EC4();
  ControlHomeFlow.State.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252B73AAC@<X0>(unint64_t *a1@<X8>)
{
  result = ControlHomeFlow.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ControlHomeFlow.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  ControlHomeFlow.init()();
  return v3;
}

char *ControlHomeFlow.init()()
{
  *(v0 + 2) = 0xD000000000000033;
  *(v0 + 3) = 0x8000000252E82810;
  *(v0 + 4) = 0;
  sub_25293DEE0(__src);
  memcpy(v0 + 40, __src, 0x1F8uLL);
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
  v2 = sub_252E34104();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection] = 1;
  v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state] = 0;
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v3 + 96), v11);

  sub_252927BEC(v11, &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputPublisher]);
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  swift_beginAccess();
  v5 = *(v4 + 22);

  *&v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_catProvider] = v5;
  v6 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0() + 29);

  v7 = &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_patternProvider];
  *(v7 + 3) = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  *(v7 + 4) = &off_2864BA730;
  *v7 = v6;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v8 + 136), v11);

  sub_252927BEC(v11, &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_outputGenerator]);
  v9 = &v0[OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_guardFlowSupplier];
  *v9 = sub_252B73CD4;
  v9[1] = 0;
  return v0;
}

uint64_t sub_252B73CD4()
{
  v0 = sub_252E33D64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541830, &qword_252E40AC8);
  v5 = *(sub_252E334A4() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_252E3C290;
  sub_252B7A2EC(v4);
  sub_252E33494();
  (*(v1 + 8))(v4, v0);
  v8 = sub_252E33144();

  return v8;
}

uint64_t sub_252B73E50(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543798, &unk_252E4E410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v89 - v5;
  v7 = sub_252E34164();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v93 = v89 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = v89 - v15;
  v91 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state;
  v92 = v1;
  LOBYTE(v101[0]) = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_state);
  if (ControlHomeFlow.State.rawValue.getter() == 0xD000000000000010 && 0x8000000252E67F20 == v17)
  {
  }

  else
  {
    v18 = sub_252E37DB4();

    if ((v18 & 1) == 0)
    {
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v43 = sub_252E36AD4();
      __swift_project_value_buffer(v43, qword_27F544DA8);
      sub_252CC7784(0xD000000000000060, 0x8000000252E82850, 0, 0xD000000000000076, 0x8000000252E828C0);
      return 0;
    }
  }

  v90 = v6;
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v19 = sub_252E36804();
  v21 = v20;

  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_252E3C290;
    *(v22 + 32) = 25705;
    v23 = v22 + 32;
    *(v22 + 72) = MEMORY[0x277D837D0];
    *(v22 + 40) = 0xE200000000000000;
    *(v22 + 48) = v19;
    *(v22 + 56) = v21;
    sub_252CC630C(v22);
    swift_setDeallocating();
    sub_25293847C(v23, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v24 = [objc_opt_self() sharedAnalytics];
  if (v24)
  {
    v25 = v24;

    sub_252CC1408(v26);

    v27 = sub_252E36E24();

    [v25 logEventWithType:6503 context:v27];
  }

  else
  {
  }

  sub_252E340E4();
  v28 = *(v8 + 88);
  if (v28(v16, v7) == *MEMORY[0x277D5C158])
  {
    (*(v8 + 96))(v16, v7);
    v29 = *&v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60) + 48)];
    v30 = sub_252E358D4();
    (*(*(v30 - 8) + 8))(v16, v30);
    v31 = sub_252E34144();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v89[1] = v29;
      v32 = sub_252CB09F0();
      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v33 = sub_252E36AD4();
      __swift_project_value_buffer(v33, qword_27F544DA8);
      sub_252CC7784(0xD000000000000034, 0x8000000252E82A40, 0, 0xD000000000000076, 0x8000000252E828C0);
      v34 = v93;
      v35 = v2;
      sub_252E340E4();
      sub_252AB3FEC(v34, 0, v94);
      (*(v8 + 8))(v34, v7);
      v36 = v92;
      memcpy(v97, (v92 + 40), sizeof(v97));
      memcpy((v92 + 40), v94, 0x1F8uLL);
      sub_25293847C(v97, &qword_27F5404C8, &unk_252E3FD60);
      memcpy(v98, (v36 + 40), sizeof(v98));
      memcpy(v96, (v36 + 40), sizeof(v96));
      sub_252938414(v98, v95, &qword_27F5404C8, &unk_252E3FD60);
      v37 = sub_252C4FDF0(v96);
      memcpy(v99, v96, sizeof(v99));
      sub_25293847C(v99, &qword_27F5404C8, &unk_252E3FD60);
      v38 = *(v36 + 32);
      *(v36 + 32) = v37;

      v39 = sub_252E34104();
      v40 = *(v39 - 8);
      v41 = v90;
      (*(v40 + 16))(v90, v35, v39);
      (*(v40 + 56))(v41, 0, 1, v39);
      v42 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
      swift_beginAccess();
      sub_252B7B518(v41, v36 + v42);
      swift_endAccess();
      *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection) = 0;
      memcpy(v100, (v36 + 40), sizeof(v100));
      memcpy(v101, (v36 + 40), 0x1F8uLL);
      if (sub_252956B94(v101) == 1)
      {
      }

      else
      {
        sub_252938414(v100, v96, &qword_27F5404C8, &unk_252E3FD60);
        v70 = sub_252B680FC();
        swift_beginAccess();
        v71 = *(v70 + 16);
        memcpy(v96, v100, sizeof(v96));
        sub_2529353AC(v96, v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v70 + 16) = v71;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = sub_2529F7FB0(0, *(v71 + 2) + 1, 1, v71);
          *(v70 + 16) = v71;
        }

        v74 = *(v71 + 2);
        v73 = *(v71 + 3);
        if (v74 >= v73 >> 1)
        {
          v71 = sub_2529F7FB0((v73 > 1), v74 + 1, 1, v71);
        }

        *(v71 + 2) = v74 + 1;
        memcpy(&v71[504 * v74 + 32], v101, 0x1F8uLL);
        *(v70 + 16) = v71;
        swift_endAccess();

        sub_25293847C(v100, &qword_27F5404C8, &unk_252E3FD60);
      }

      goto LABEL_49;
    }
  }

  else
  {
    (*(v8 + 8))(v16, v7);
  }

  v44 = v2;
  sub_252E340E4();
  v45 = (v8 + 8);
  if (v28(v12, v7) == *MEMORY[0x277D5C150])
  {
    v46 = *v45;
    (*v45)(v12, v7);
    v47 = v93;
    sub_252E340E4();
    sub_252AB3FEC(v47, 0, v99);
    v46(v47, v7);
    memcpy(v100, v99, sizeof(v100));
    memcpy(v101, v99, 0x1F8uLL);
    if (sub_252956B94(v101) != 1)
    {
      v53 = v101[62];
      if (v101[62] && (type metadata accessor for ControlHomeIntent(), (v54 = swift_dynamicCastClass()) != 0))
      {
        v55 = v54;
        v56 = qword_27F53F500;
        v57 = v53;
        if (v56 != -1)
        {
          swift_once();
        }

        v58 = sub_252E36AD4();
        __swift_project_value_buffer(v58, qword_27F544DA8);
        v99[0] = 0;
        v99[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E82A00);
        v59 = [v55 description];
        v60 = sub_252E36F34();
        v62 = v61;

        MEMORY[0x2530AD570](v60, v62);

        sub_252CC7784(v99[0], v99[1], 0, 0xD000000000000076, 0x8000000252E828C0);
      }

      else
      {
        memcpy(v99, v101, sizeof(v99));
        v55 = sub_252AEFEB0();
      }

      v36 = v92;
      v75 = *(v92 + 32);
      *(v92 + 32) = v55;

      memcpy(v96, v101, sizeof(v96));
      GEOLocationCoordinate2DMake(v96);
      memcpy(v97, (v36 + 40), sizeof(v97));
      memcpy((v36 + 40), v96, 0x1F8uLL);
      memcpy(v98, v100, sizeof(v98));
      sub_2529353AC(v98, v99);
      sub_25293847C(v97, &qword_27F5404C8, &unk_252E3FD60);
      v76 = sub_252E34104();
      v77 = *(v76 - 8);
      v78 = v90;
      (*(v77 + 16))(v90, v44, v76);
      (*(v77 + 56))(v78, 0, 1, v76);
      v79 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
      swift_beginAccess();
      sub_252B7B518(v78, v36 + v79);
      swift_endAccess();
      *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_shouldRunIntentSelection) = 0;
      v80 = sub_252B680FC();
      swift_beginAccess();
      v81 = *(v80 + 16);
      memcpy(v99, v100, sizeof(v99));
      sub_2529353AC(v99, v95);
      v82 = swift_isUniquelyReferenced_nonNull_native();
      *(v80 + 16) = v81;
      if ((v82 & 1) == 0)
      {
        v81 = sub_2529F7FB0(0, *(v81 + 2) + 1, 1, v81);
        *(v80 + 16) = v81;
      }

      v84 = *(v81 + 2);
      v83 = *(v81 + 3);
      if (v84 >= v83 >> 1)
      {
        v81 = sub_2529F7FB0((v83 > 1), v84 + 1, 1, v81);
      }

      *(v81 + 2) = v84 + 1;
      memcpy(&v81[504 * v84 + 32], v101, 0x1F8uLL);
      *(v80 + 16) = v81;
      swift_endAccess();
      sub_25293847C(v100, &qword_27F5404C8, &unk_252E3FD60);

      goto LABEL_49;
    }

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544DA8);
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v46(v47, v7);
    sub_252CC3D90(v99[0], v99[1], 0xD000000000000076, 0x8000000252E828C0);
    goto LABEL_30;
  }

  v49 = *v45;
  (*v45)(v12, v7);
  v50 = v93;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v51 = sub_252E36AD4();
  __swift_project_value_buffer(v51, qword_27F544DA8);
  sub_252CC7784(0xD000000000000021, 0x8000000252E82940, 0, 0xD000000000000076, 0x8000000252E828C0);
  sub_252E340E4();
  sub_252AB3FEC(v50, 0, v99);
  v49(v50, v7);
  memcpy(v100, v99, sizeof(v100));
  memcpy(v101, v99, 0x1F8uLL);
  if (sub_252956B94(v101) == 1)
  {
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E82970);
    sub_252E340E4();
    sub_252E37AE4();
    v49(v50, v7);
    sub_252CC3D90(v99[0], v99[1], 0xD000000000000076, 0x8000000252E828C0);
LABEL_30:

    return 0;
  }

  memcpy(v98, v101, sizeof(v98));
  v63 = sub_252AEFEB0();
  v64 = v50;
  v36 = v92;
  v65 = *(v92 + 32);
  *(v92 + 32) = v63;

  memcpy(v97, (v36 + 40), sizeof(v97));
  memcpy((v36 + 40), v100, 0x1F8uLL);
  memcpy(v98, v100, sizeof(v98));
  sub_2529353AC(v98, v96);
  sub_25293847C(v97, &qword_27F5404C8, &unk_252E3FD60);
  v66 = sub_252E34104();
  v67 = *(v66 - 8);
  v68 = v90;
  (*(v67 + 16))(v90, v44, v66);
  (*(v67 + 56))(v68, 0, 1, v66);
  v69 = OBJC_IVAR____TtC22HomeAutomationInternal15ControlHomeFlow_input;
  swift_beginAccess();
  sub_252B7B518(v68, v36 + v69);
  swift_endAccess();
  sub_252E340E4();
  sub_252937C40(v64);
  sub_25293847C(v100, &qword_27F5404C8, &unk_252E3FD60);
  v49(v64, v7);
LABEL_49:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v85 = sub_252E36AD4();
  __swift_project_value_buffer(v85, qword_27F544DA8);
  v101[0] = 0;
  v101[1] = 0xE000000000000000;
  sub_252E379F4();

  v98[0] = 0xD000000000000016;
  v98[1] = 0x8000000252E7A390;
  memcpy(v101, (v36 + 40), 0x1F8uLL);
  memcpy(v100, (v36 + 40), sizeof(v100));
  sub_252938414(v101, v99, &qword_27F5404C8, &unk_252E3FD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  v86 = sub_252E36F94();
  MEMORY[0x2530AD570](v86);

  sub_252CC7784(v98[0], v98[1], 0, 0xD000000000000076, 0x8000000252E828C0);

  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_252E379F4();

  v100[0] = 0xD000000000000013;
  v100[1] = 0x8000000252E829B0;
  v99[0] = *(v36 + 32);
  v87 = v99[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
  v88 = sub_252E36F94();
  MEMORY[0x2530AD570](v88);

  sub_252CC7784(v100[0], v100[1], 0, 0xD000000000000076, 0x8000000252E828C0);

  v100[0] = 0;
  v100[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000023, 0x8000000252E829D0);
  LOBYTE(v99[0]) = *(v36 + v91);
  sub_252E37AE4();
  sub_252CC7784(v100[0], v100[1], 0, 0xD000000000000076, 0x8000000252E828C0);

  sub_252B680FC();
  sub_252B6796C();

  swift_unknownObjectRelease();
  return 1;
}