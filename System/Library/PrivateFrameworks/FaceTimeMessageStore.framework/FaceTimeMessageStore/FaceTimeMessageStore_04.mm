uint64_t sub_1BC7F6044(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706F6570 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BC7F6104(char a1)
{
  if (a1)
  {
    return 0x736D657469;
  }

  else
  {
    return 0x656C706F6570;
  }
}

uint64_t sub_1BC7F613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7F6044(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7F6164(uint64_t a1)
{
  v2 = sub_1BC7FB1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7F61A0(uint64_t a1)
{
  v2 = sub_1BC7FB1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GroupedHistoryItem.encode(to:)()
{
  OUTLINED_FUNCTION_22();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55C0, &unk_1BC900670);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = *v0;
  v15 = v0[1];
  v10 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v11 = sub_1BC7FB1F8();

  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8CA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6520, &unk_1BC9076A0);
  sub_1BC7FB618(&unk_1EBCF55D0);
  OUTLINED_FUNCTION_41_5();

  if (!v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55E0, &qword_1BC900680);
    sub_1BC7FB2A0(&unk_1EBCF55E8);
    OUTLINED_FUNCTION_41_5();
  }

  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_62_0();
  v14(v13);
  OUTLINED_FUNCTION_23();
}

void GroupedHistoryItem.hash(into:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1BC7FB4B0(a1, v2);

  sub_1BC7DEDCC();
}

uint64_t GroupedHistoryItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1BC8F8C04();
  sub_1BC7FB4B0(__src, v1);
  sub_1BC7DEDCC();
  return sub_1BC8F8C64();
}

void GroupedHistoryItem.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_22();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55F8, &qword_1BC900688);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v20);
  v21 = v12[3];
  v22 = v12[4];
  v23 = OUTLINED_FUNCTION_73();
  __swift_project_boxed_opaque_existential_1(v23, v24);
  sub_1BC7FB1F8();
  OUTLINED_FUNCTION_35_1();
  sub_1BC8F8C84();
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF6520, &unk_1BC9076A0);
    sub_1BC7FB618(&unk_1EBCF5600);
    OUTLINED_FUNCTION_33_6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF55E0, &qword_1BC900680);
    sub_1BC7FB2A0(&unk_1EBCF5610);
    OUTLINED_FUNCTION_33_6();
    v25 = *(v17 + 8);
    v26 = OUTLINED_FUNCTION_44_2();
    v27(v26);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7F66B0()
{
  v3 = *v0;
  sub_1BC8F8C04();
  GroupedHistoryItem.hash(into:)(v2);
  return sub_1BC8F8C64();
}

void Array<A>.mergingSortedValues(_:)()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v5 = v4;
  v92 = sub_1BC8F7324();
  v6 = OUTLINED_FUNCTION_0(v92);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_4();
  v91 = v11;
  OUTLINED_FUNCTION_19_6();
  v99 = type metadata accessor for HistoryItem();
  v12 = OUTLINED_FUNCTION_0(v99);
  v94 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_4();
  v93 = v17;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_47();
  v97 = v20;
  OUTLINED_FUNCTION_19_6();
  v21 = sub_1BC8F71E4();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v79 - v28;
  v30 = *(v3 + 16);
  v31 = *(v5 + 16);
  if (__OFADD__(v30, v31))
  {
LABEL_29:
    __break(1u);
  }

  else
  {
    sub_1BC7F742C();
    v32 = v8;
    v33 = 0;
    v34 = 0;
    v100 = v35;
    v103 = v35;
    v90 = v32 + 32;
    v89 = v32 + 8;
    v88 = (v24 + 16);
    v82 = v5;
    v36 = v5 + 32;
    v85 = (v24 + 8);
    v81 = v3;
    v37 = v3 + 32;
    v38 = 0;
    v86 = v0;
    v39 = v97;
    v83 = v30;
    v80 = v36;
    v79 = v3 + 32;
LABEL_3:
    v95 = v33;
    v96 = (v36 + 16 * v33);
    v40 = (v37 + 16 * v34);
    v84 = v34;
    while (v38 < v30)
    {
      if (v33 >= v31)
      {
        v71 = sub_1BC7F2404(v34, v30, v81);
        sub_1BC7F3314(v71, v72, v73, v74);
        break;
      }

      if ((v34 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v41 = v40[1];
      if (!*(v41 + 16))
      {
        goto LABEL_27;
      }

      v98 = v38;
      *&v102 = v40;
      v42 = *v40;
      v43 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      sub_1BC7FB138(v41 + v43, v39);
      v44 = OUTLINED_FUNCTION_20_5();
      sub_1BC7FB138(v44, v45);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1BC7FB19C(v39);
        v46 = *v0;
        v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*v88)(v29, &v46[v47], v21);
      }

      else
      {
        OUTLINED_FUNCTION_9_7();
        v48 = OUTLINED_FUNCTION_20_5();
        v49(v48);

        sub_1BC8F7304();
        OUTLINED_FUNCTION_8_10();
        v50 = OUTLINED_FUNCTION_20_5();
        v51(v50);
        v30 = v83;
        sub_1BC7FB19C(v39);
      }

      v52 = v96[1];
      v53 = v93;
      if (!*(v52 + 16))
      {
        goto LABEL_28;
      }

      v54 = *v96;
      sub_1BC7FB138(v52 + v43, v93);
      v55 = v87;
      sub_1BC7FB138(v53, v87);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_1BC7FB19C(v53);
        v56 = *v55;
        v57 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        (*v88)(v1, &v56[v57], v21);
      }

      else
      {
        OUTLINED_FUNCTION_9_7();
        v58 = OUTLINED_FUNCTION_40();
        v59(v58);

        sub_1BC8F7304();
        OUTLINED_FUNCTION_8_10();
        v60 = OUTLINED_FUNCTION_40();
        v61(v60);
        sub_1BC7FB19C(v53);
      }

      v33 = sub_1BC8F7184();
      v62 = *v85;
      (*v85)(v1, v21);
      v62(v29, v21);
      v63 = *(v100 + 16);
      v39 = *(v100 + 24);
      v0 = (v39 >> 1);
      if ((v33 & 1) == 0)
      {
        v102 = *v96;

        if (v0 <= v63)
        {
          sub_1BC7F742C();
          v100 = v70;
        }

        OUTLINED_FUNCTION_30_4();
        *(v68 + 32) = v102;
        v103 = v69;
        ++v33;
        v34 = v38;
        v36 = v80;
        v37 = v79;
        goto LABEL_3;
      }

      v101 = *v102;

      if (v0 <= v63)
      {
        sub_1BC7F742C();
        v100 = v67;
      }

      OUTLINED_FUNCTION_30_4();
      *(v64 + 32) = v101;
      v103 = v65;
      v38 = v66 + 1;
      v40 = (v102 + 16);
      v34 = v84;
    }

    if (v33 < v31)
    {
      v75 = sub_1BC7F2404(v33, v31, v82);
      sub_1BC7F3314(v75, v76, v77, v78);
    }

    OUTLINED_FUNCTION_24();
  }
}

uint64_t Array<A>.binarySearchIndex(where:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = result;
    v5 = 0;
    v6 = a3 + 32;
    v7 = *(a3 + 16);
    while (1)
    {
      v8 = v5 + v7;
      if (__OFADD__(v5, v7))
      {
        break;
      }

      v9 = v8 / 2;
      if (v8 < -1 || v9 >= v3)
      {
        goto LABEL_17;
      }

      v12 = *(v6 + 16 * v9);

      v11 = v4(&v12);

      if (v11)
      {
        v7 = v9;
      }

      else
      {
        v5 = v9 + 1;
      }

      if (v5 >= v7)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_1BC7F6FCC()
{
  OUTLINED_FUNCTION_42_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5668, &qword_1BC900B18);
      v9 = OUTLINED_FUNCTION_67();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_26_3();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD5E4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 16 * v2);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BC7F7088()
{
  OUTLINED_FUNCTION_42_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FA0, &qword_1BC8FC750);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * v10 - 64;
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD61C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_57_0();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BC7F7144()
{
  OUTLINED_FUNCTION_60_1();
  if (v2)
  {
    OUTLINED_FUNCTION_59_0();
    if (v4 != v5)
    {
      if (v3 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_55_0();
    }
  }

  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_36_6();
  sub_1BC7F7908(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_72_0();
  v11 = *(*(sub_1BC8F7264() - 8) + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_54_0(v12);
    sub_1BC7DD664(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
  }
}

void sub_1BC7F726C()
{
  OUTLINED_FUNCTION_60_1();
  if (v2)
  {
    OUTLINED_FUNCTION_59_0();
    if (v4 != v5)
    {
      if (v3 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_55_0();
    }
  }

  v6 = *(v0 + 16);
  OUTLINED_FUNCTION_35_4();
  sub_1BC7F7908(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_72_0();
  v11 = *(*(type metadata accessor for HistoryItem() - 8) + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    v13 = OUTLINED_FUNCTION_54_0(v12);
    sub_1BC7DD604(v13, v14, v15);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
  }
}

void sub_1BC7F7334()
{
  OUTLINED_FUNCTION_42_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5670, &unk_1BC900B20);
      v9 = OUTLINED_FUNCTION_67();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 32);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD7B4(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_57_0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BC7F742C()
{
  OUTLINED_FUNCTION_80_0();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = OUTLINED_FUNCTION_67();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_26_3();
      v12[2] = v10;
      v12[3] = v13;
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_83();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_1BC7F74F0(size_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1BC7F7908(v9, a2, &qword_1EBCF56B0, &unk_1BC9083A0, MEMORY[0x1E6993530]);
  v11 = *(sub_1BC8F73D4() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1BC7DD7D4(a4 + v12, v9, v10 + v12);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BC7F7600()
{
  OUTLINED_FUNCTION_42_0();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_13_1();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_21_2(v6);
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 40);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_16_4();
        sub_1BC7DD7EC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
    OUTLINED_FUNCTION_57_0();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_27_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_12_2();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BC7F76E8()
{
  OUTLINED_FUNCTION_60_1();
  if (v3)
  {
    OUTLINED_FUNCTION_59_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_55_0();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1BC7F7908(*(v0 + 16), v4, &qword_1EBCF5660, &qword_1BC900B10, MEMORY[0x1E6968160]);
  OUTLINED_FUNCTION_72_0();
  v7 = *(*(sub_1BC8F6D24() - 8) + 80);
  OUTLINED_FUNCTION_25_1();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_54_0(v8);
    sub_1BC7DD814(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_37_4();
  }
}

void *sub_1BC7F7810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_67();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_26_3();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

void *sub_1BC7F7898(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v4 = OUTLINED_FUNCTION_67();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_58_0();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

size_t sub_1BC7F7908(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_26(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if (result - v12 != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7F79FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for HistoryItem();
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BC8F7264();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5690, &qword_1BC900B58);
  v48 = a2;
  result = sub_1BC8F87C4();
  v16 = result;
  if (!*(v13 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v16;
    return result;
  }

  v43 = v3;
  v17 = 0;
  v18 = (v13 + 64);
  v19 = 1 << *(v13 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & *(v13 + 64);
  v22 = (v19 + 63) >> 6;
  v44 = (v10 + 16);
  v45 = v10;
  v49 = (v10 + 32);
  v23 = result + 64;
  v46 = v13;
  if (!v21)
  {
LABEL_9:
    v25 = v17;
    while (1)
    {
      v17 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v17 >= v22)
      {
        break;
      }

      v26 = v18[v17];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v21 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_35;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      sub_1BC8D83A8(0, (v42 + 63) >> 6, v18);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
LABEL_14:
    v27 = v24 | (v17 << 6);
    v28 = *(v13 + 48);
    v50 = *(v10 + 72);
    v29 = v28 + v50 * v27;
    if (v48)
    {
      (*v49)(v51, v29, v9);
      v30 = *(v13 + 56);
      v31 = *(v47 + 72);
      sub_1BC7FBC68(v30 + v31 * v27, v52);
    }

    else
    {
      (*v44)(v51, v29, v9);
      v32 = *(v13 + 56);
      v31 = *(v47 + 72);
      sub_1BC7FB138(v32 + v31 * v27, v52);
    }

    v33 = *(v16 + 40);
    sub_1BC7FBE94(&unk_1EDC20600);
    result = sub_1BC8F7B54();
    v34 = -1 << *(v16 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v23 + 8 * (v35 >> 6))) == 0)
    {
      break;
    }

    v37 = __clz(__rbit64((-1 << v35) & ~*(v23 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
    (*v49)((*(v16 + 48) + v50 * v37), v51, v9);
    result = sub_1BC7FBC68(v52, *(v16 + 56) + v31 * v37);
    ++*(v16 + 16);
    v10 = v45;
    v13 = v46;
    if (!v21)
    {
      goto LABEL_9;
    }
  }

  v38 = 0;
  v39 = (63 - v34) >> 6;
  while (++v36 != v39 || (v38 & 1) == 0)
  {
    v40 = v36 == v39;
    if (v36 == v39)
    {
      v36 = 0;
    }

    v38 |= v40;
    v41 = *(v23 + 8 * v36);
    if (v41 != -1)
    {
      v37 = __clz(__rbit64(~v41)) + (v36 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_1BC7F7E5C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v5)
  {
    sub_1BC7F7908(v5, 0, &qword_1EBCF4F58, &qword_1BC8FC700, type metadata accessor for HistoryItem);
    if (v4 != a3)
    {
      v7 = *(type metadata accessor for HistoryItem() - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 72);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void *sub_1BC7F7F60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1BC7F7810(*(a1 + 16), 0, &qword_1EBCF4FC0, &unk_1BC8FC760);
  sub_1BC8B1C2C(&v7, (v3 + 4), v1, a1);
  v5 = v4;

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_35_1();
  sub_1BC7CAD38();
  if (v5 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1BC7F8024(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC070(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BC7F81A0(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_1BC7F8090()
{
  result = qword_1EBCF55A0;
  if (!qword_1EBCF55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF55A0);
  }

  return result;
}

void sub_1BC7F80FC(uint64_t *a1)
{
  v2 = type metadata accessor for HistoryItem();
  OUTLINED_FUNCTION_25(v2);
  v4 = v3;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC088(v5);
    v5 = v6;
  }

  v7 = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v5 + 16);
  sub_1BC7F8294();
  *a1 = v5;
}

uint64_t sub_1BC7F81A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BC8F8A44();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BC8F7EB4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BC7F88DC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BC7F8814(0, v2, 1, a1);
  }

  return result;
}

void sub_1BC7F8294()
{
  OUTLINED_FUNCTION_22();
  v68 = v0;
  v3 = v2;
  v84 = sub_1BC8F7324();
  v4 = OUTLINED_FUNCTION_0(v84);
  v81 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_4();
  v83 = v8;
  OUTLINED_FUNCTION_19_6();
  v9 = sub_1BC8F71E4();
  v10 = OUTLINED_FUNCTION_0(v9);
  v80 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_47();
  v90 = v18;
  OUTLINED_FUNCTION_19_6();
  v19 = type metadata accessor for HistoryItem();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_20_0();
  v75 = v25 - v26;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_56_0();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = (&v67 - v30);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_4();
  v85 = v32;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_47();
  v87 = v34;
  v35 = v3[1];
  if (sub_1BC8F8A44() >= v35)
  {
    if ((v35 & 0x8000000000000000) == 0)
    {
      if (v35 >= 2)
      {
        v82 = v16;
        v86 = v9;
        v37 = *v3;
        v38 = *(v22 + 72);
        v77 = v81 + 1;
        v78 = (v81 + 4);
        v76 = (v80 + 2);
        v39 = (v80 + 1);
        v73 = -v38;
        v74 = v37;
        v40 = -1;
        v41 = 1;
        v80 = v31;
        v81 = v1;
        v42 = v85;
        v79 = v38;
        v69 = v35;
        do
        {
          v71 = v41;
          v72 = v40;
          v43 = v40;
          v70 = v37;
          do
          {
            v44 = v87;
            sub_1BC7FB138(v37 + v38, v87);
            v45 = OUTLINED_FUNCTION_69();
            sub_1BC7FB138(v45, v46);
            sub_1BC7FB138(v44, v31);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v47 = *v31;
              v48 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
              OUTLINED_FUNCTION_13();
              swift_beginAccess();
              (*v76)(v90, &v47[v48], v86);
            }

            else
            {
              v49 = v31;
              v50 = v84;
              (*v78)(v83, v49, v84);
              sub_1BC8F7304();
              v51 = OUTLINED_FUNCTION_18_4();
              v52(v51, v50);
            }

            sub_1BC7FB138(v42, v1);
            v53 = v19;
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v54 = *v1;
              v55 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
              OUTLINED_FUNCTION_13();
              swift_beginAccess();
              v56 = v82;
              v57 = v86;
              (*v76)(v82, &v54[v55], v86);
            }

            else
            {
              v58 = v84;
              (*v78)(v83, v1, v84);
              v56 = v82;
              sub_1BC8F7304();
              v59 = OUTLINED_FUNCTION_18_4();
              v60(v59, v58);
              v57 = v86;
            }

            v61 = sub_1BC8F7184();
            v62 = *v39;
            (*v39)(v56, v57);
            v62(v90, v57);
            v42 = v85;
            sub_1BC7FB19C(v85);
            sub_1BC7FB19C(v87);
            v19 = v53;
            v31 = v80;
            v1 = v81;
            v38 = v79;
            if ((v61 & 1) == 0)
            {
              break;
            }

            if (!v74)
            {
              goto LABEL_26;
            }

            v63 = v75;
            sub_1BC7FBC68(v37 + v79, v75);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BC7FBC68(v63, v37);
            v37 += v73;
          }

          while (!__CFADD__(v43++, 1));
          v41 = v71 + 1;
          v37 = v70 + v38;
          v40 = v72 - 1;
        }

        while (v71 + 1 != v69);
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (v35 >= -1)
    {
      if (v35 <= 1)
      {
        v36 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        OUTLINED_FUNCTION_31_3();
        v36 = sub_1BC8F7EB4();
        *(v36 + 16) = v35 / 2;
      }

      v65 = *(v22 + 80);
      OUTLINED_FUNCTION_25_1();
      v88 = v36 + v66;
      v89 = v35 / 2;
      sub_1BC7F8DE4();
      *(v36 + 16) = 0;

LABEL_23:
      OUTLINED_FUNCTION_23();
      return;
    }

    __break(1u);
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_1BC7F8814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1BC8F8AA4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BC7F88DC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_1BC8F8AA4();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_1BC8F8AA4()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_1BC8F8AA4() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = v8[2];
        sub_1BC7F6FCC();
        v8 = v83;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_1BC7F6FCC();
        v8 = v84;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1BC7F9DA8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_1BC7F9C7C(&v92, *a1, a3);
LABEL_102:
}

void sub_1BC7F8DE4()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_75();
  v215 = v1;
  v3 = v2;
  v214 = v4;
  v242 = sub_1BC8F7324();
  v5 = OUTLINED_FUNCTION_0(v242);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_4();
  v241 = v10;
  OUTLINED_FUNCTION_19_6();
  v11 = sub_1BC8F71E4();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_4();
  v247 = v18;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_20_4();
  v240 = v20;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_47();
  v227 = v22;
  OUTLINED_FUNCTION_19_6();
  v23 = type metadata accessor for HistoryItem();
  v24 = OUTLINED_FUNCTION_0(v23);
  v224 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_20_4();
  v248 = v32;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_4();
  v246 = v34;
  OUTLINED_FUNCTION_17_0();
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = (&v210 - v37);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_81_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_47();
  v225 = v3;
  v45 = v3[1];
  if (v45 < 1)
  {
    v47 = MEMORY[0x1E69E7CC0];
LABEL_116:
    if (!*v214)
    {
      goto LABEL_158;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_118;
    }

    goto LABEL_152;
  }

  v46 = 0;
  v239 = v7 + 32;
  v238 = v7 + 8;
  v237 = v14 + 16;
  v236 = (v14 + 8);
  v47 = MEMORY[0x1E69E7CC0];
  v243 = v23;
  v244 = v11;
  v48 = v240;
  v228 = v38;
  v222 = v44;
  v212 = v43;
  while (1)
  {
    v49 = v46++;
    v219 = v49;
    if (v46 < v45)
    {
      v231 = v45;
      v213 = v47;
      v50 = v49;
      v51 = v43;
      OUTLINED_FUNCTION_48_2();
      v53 = *v52;
      v47 = *(v224 + 72);
      v245 = *v52 + v47 * v46;
      sub_1BC7FB138(v245, v51);
      v54 = v211;
      sub_1BC7FB138(v53 + v47 * v50, v211);
      OUTLINED_FUNCTION_44_2();
      OUTLINED_FUNCTION_74();
      sub_1BC7F46E8();
      LODWORD(v223) = v55;
      OUTLINED_FUNCTION_75();
      if (v0)
      {
        sub_1BC7FB19C(v54);
        sub_1BC7FB19C(v51);
LABEL_126:

        OUTLINED_FUNCTION_74();
        OUTLINED_FUNCTION_23();
        return;
      }

      sub_1BC7FB19C(v54);
      sub_1BC7FB19C(v51);
      v56 = v50 + 2;
      v57 = v53 + v47 * (v50 + 2);
      v58 = v222;
      v232 = v47;
      v59 = v231;
      v60 = v245;
      while (1)
      {
        v61 = v56;
        if (v46 + 1 >= v59)
        {
          break;
        }

        v229 = v46;
        v62 = v226;
        sub_1BC7FB138(v57, v226);
        v245 = v60;
        sub_1BC7FB138(v60, v230);
        sub_1BC7FB138(v62, v58);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v63 = *v58;
          v64 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          OUTLINED_FUNCTION_8_10();
          v47 = v244;
          v65(v227, &v63[v64], v244);
        }

        else
        {
          OUTLINED_FUNCTION_79_0();
          v66 = v241;
          v67 = OUTLINED_FUNCTION_20_5();
          v68 = v242;
          v69(v67);
          sub_1BC8F7304();
          OUTLINED_FUNCTION_9_7();
          v70 = v66;
          v38 = v228;
          v71(v70, v68);
          v47 = v244;
        }

        sub_1BC7FB138(v230, v38);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v73 = v229;
        if (EnumCaseMultiPayload == 1)
        {
          v74 = *v38;
          v75 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
          OUTLINED_FUNCTION_13();
          swift_beginAccess();
          OUTLINED_FUNCTION_8_10();
          v76(v48, &v74[v75], v47);
        }

        else
        {
          OUTLINED_FUNCTION_79_0();
          v77(v241, v38, v242);
          sub_1BC8F7304();
          OUTLINED_FUNCTION_9_7();
          v78 = OUTLINED_FUNCTION_20_5();
          v79(v78);
        }

        v80 = v227;
        OUTLINED_FUNCTION_31_3();
        v81 = sub_1BC8F7184() & 1;
        v82 = *v236;
        (*v236)(v48, v47);
        v82(v80, v47);
        sub_1BC7FB19C(v230);
        sub_1BC7FB19C(v226);
        v57 += v232;
        v60 = v245 + v232;
        v46 = v73 + 1;
        v56 = v61 + 1;
        v83 = (v223 & 1) == v81;
        v38 = v228;
        v58 = v222;
        v59 = v231;
        if (!v83)
        {
          goto LABEL_17;
        }
      }

      v46 = v59;
LABEL_17:
      if (v223)
      {
        OUTLINED_FUNCTION_78_0();
        if (v46 < v85)
        {
          goto LABEL_151;
        }

        if (v85 >= v46)
        {
          OUTLINED_FUNCTION_76_0();
        }

        else
        {
          if (v84 >= v61)
          {
            v87 = v61;
          }

          else
          {
            v87 = v84;
          }

          v88 = v86 * (v87 - 1);
          v89 = v86 * v87;
          v47 = v46;
          v90 = v85 * v86;
          v229 = v47;
          v91 = v85;
          do
          {
            if (v91 != --v47)
            {
              OUTLINED_FUNCTION_48_2();
              v93 = *v92;
              if (!*v92)
              {
                goto LABEL_156;
              }

              sub_1BC7FBC68(v93 + v90, v218);
              v94 = v90 < v88 || v93 + v90 >= (v93 + v89);
              if (v94)
              {
                OUTLINED_FUNCTION_77_0();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v90 != v88)
              {
                OUTLINED_FUNCTION_77_0();
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1BC7FBC68(v218, v93 + v88);
              OUTLINED_FUNCTION_78_0();
              v86 = v232;
            }

            ++v91;
            v88 -= v86;
            v89 -= v86;
            v90 += v86;
          }

          while (v91 < v47);
          OUTLINED_FUNCTION_76_0();
          v46 = v229;
        }
      }

      else
      {
        OUTLINED_FUNCTION_76_0();
        OUTLINED_FUNCTION_78_0();
      }
    }

    OUTLINED_FUNCTION_48_2();
    v98 = *(v97 + 8);
    if (v46 < v98)
    {
      if (__OFSUB__(v46, v96))
      {
        goto LABEL_148;
      }

      if (v46 - v96 < v95)
      {
        break;
      }
    }

LABEL_63:
    if (v46 < v96)
    {
      goto LABEL_147;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v189 = *(v47 + 16);
      sub_1BC7F6FCC();
      v47 = v190;
    }

    v135 = *(v47 + 16);
    v136 = v135 + 1;
    if (v135 >= *(v47 + 24) >> 1)
    {
      sub_1BC7F6FCC();
      v47 = v191;
    }

    *(v47 + 16) = v136;
    v137 = v47 + 32;
    v138 = (v47 + 32 + 16 * v135);
    *v138 = v219;
    v138[1] = v46;
    v245 = *v214;
    if (!v245)
    {
      goto LABEL_157;
    }

    if (v135)
    {
      while (1)
      {
        v139 = v136 - 1;
        v140 = (v137 + 16 * (v136 - 1));
        v141 = (v47 + 16 * v136);
        if (v136 >= 4)
        {
          break;
        }

        if (v136 == 3)
        {
          v142 = *(v47 + 32);
          v143 = *(v47 + 40);
          v152 = __OFSUB__(v143, v142);
          v144 = v143 - v142;
          v145 = v152;
LABEL_83:
          if (v145)
          {
            goto LABEL_134;
          }

          v157 = *v141;
          v156 = v141[1];
          v158 = __OFSUB__(v156, v157);
          v159 = v156 - v157;
          v160 = v158;
          if (v158)
          {
            goto LABEL_137;
          }

          v161 = v140[1];
          v162 = v161 - *v140;
          if (__OFSUB__(v161, *v140))
          {
            goto LABEL_140;
          }

          if (__OFADD__(v159, v162))
          {
            goto LABEL_142;
          }

          if (v159 + v162 >= v144)
          {
            if (v144 < v162)
            {
              v139 = v136 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        if (v136 < 2)
        {
          goto LABEL_136;
        }

        v164 = *v141;
        v163 = v141[1];
        v152 = __OFSUB__(v163, v164);
        v159 = v163 - v164;
        v160 = v152;
LABEL_98:
        if (v160)
        {
          goto LABEL_139;
        }

        v166 = *v140;
        v165 = v140[1];
        v152 = __OFSUB__(v165, v166);
        v167 = v165 - v166;
        if (v152)
        {
          goto LABEL_141;
        }

        if (v167 < v159)
        {
          goto LABEL_112;
        }

LABEL_105:
        if (v139 - 1 >= v136)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (!*v225)
        {
          goto LABEL_154;
        }

        v171 = v46;
        v172 = v47;
        v173 = (v137 + 16 * (v139 - 1));
        v174 = *v173;
        v175 = v137;
        v176 = v139;
        v47 = v137 + 16 * v139;
        v177 = *v47;
        v178 = *(v47 + 8);
        OUTLINED_FUNCTION_42_2(*v225);
        OUTLINED_FUNCTION_74();
        sub_1BC7F9F4C(v179, v180, v181, v182, v183, v184, v185, v186, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
        OUTLINED_FUNCTION_75();
        if (v0)
        {
          goto LABEL_126;
        }

        if (v178 < v174)
        {
          goto LABEL_129;
        }

        v187 = *(v172 + 16);
        if (v176 > v187)
        {
          goto LABEL_130;
        }

        *v173 = v174;
        v173[1] = v178;
        if (v176 >= v187)
        {
          goto LABEL_131;
        }

        v136 = v187 - 1;
        sub_1BC8D950C((v47 + 16), v187 - 1 - v176, v47);
        v47 = v172;
        *(v172 + 16) = v187 - 1;
        v38 = v228;
        v46 = v171;
        v137 = v175;
        v48 = v240;
        if (v187 <= 2)
        {
          goto LABEL_112;
        }
      }

      v146 = v137 + 16 * v136;
      v147 = *(v146 - 64);
      v148 = *(v146 - 56);
      v152 = __OFSUB__(v148, v147);
      v149 = v148 - v147;
      if (v152)
      {
        goto LABEL_132;
      }

      v151 = *(v146 - 48);
      v150 = *(v146 - 40);
      v152 = __OFSUB__(v150, v151);
      v144 = v150 - v151;
      v145 = v152;
      if (v152)
      {
        goto LABEL_133;
      }

      v153 = v141[1];
      v154 = v153 - *v141;
      if (__OFSUB__(v153, *v141))
      {
        goto LABEL_135;
      }

      v152 = __OFADD__(v144, v154);
      v155 = v144 + v154;
      if (v152)
      {
        goto LABEL_138;
      }

      if (v155 >= v149)
      {
        v169 = *v140;
        v168 = v140[1];
        v152 = __OFSUB__(v168, v169);
        v170 = v168 - v169;
        if (v152)
        {
          goto LABEL_146;
        }

        if (v144 < v170)
        {
          v139 = v136 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_83;
    }

LABEL_112:
    OUTLINED_FUNCTION_48_2();
    v45 = *(v188 + 8);
    v43 = v212;
    if (v46 >= v45)
    {
      goto LABEL_116;
    }
  }

  v99 = v96 + v95;
  if (__OFADD__(v96, v95))
  {
    goto LABEL_149;
  }

  if (v99 >= v98)
  {
    v99 = v98;
  }

  if (v99 < v96)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    v47 = sub_1BC8D94F4(v47);
LABEL_118:
    v192 = (v47 + 16);
    for (i = *(v47 + 16); i >= 2; *v192 = i)
    {
      OUTLINED_FUNCTION_48_2();
      v195 = *v194;
      if (!v195)
      {
        goto LABEL_155;
      }

      v196 = (v47 + 16 * i);
      v197 = *v196;
      v198 = &v192[2 * i];
      v199 = *v198;
      v200 = *(v198 + 1);
      OUTLINED_FUNCTION_42_2(v195);
      OUTLINED_FUNCTION_74();
      sub_1BC7F9F4C(v201, v202, v203, v204, v205, v206, v207, v208, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221);
      OUTLINED_FUNCTION_75();
      if (v0)
      {
        break;
      }

      if (v200 < v197)
      {
        goto LABEL_143;
      }

      if (i - 2 >= *v192)
      {
        goto LABEL_144;
      }

      *v196 = v197;
      v196[1] = v200;
      v209 = *v192 - i;
      if (*v192 < i)
      {
        goto LABEL_145;
      }

      i = *v192 - 1;
      sub_1BC8D950C(v198 + 16, v209, v198);
    }

    goto LABEL_126;
  }

  if (v46 == v99)
  {
    goto LABEL_63;
  }

  v213 = v47;
  OUTLINED_FUNCTION_48_2();
  v101 = *v100;
  v102 = *(v224 + 72);
  v103 = *v100 + v102 * (v46 - 1);
  v231 = -v102;
  v105 = v104 - v46;
  v232 = v101;
  v216 = v102;
  v47 = v101 + v46 * v102;
  v106 = v210;
  v217 = v107;
LABEL_48:
  v229 = v46;
  v220 = v47;
  v221 = v105;
  v108 = v105;
  v223 = v103;
  while (1)
  {
    v245 = v108;
    v109 = v246;
    sub_1BC7FB138(v47, v246);
    sub_1BC7FB138(v103, v248);
    v110 = v109;
    v111 = v234;
    sub_1BC7FB138(v110, v234);
    OUTLINED_FUNCTION_73();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v112 = *v111;
      v113 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      OUTLINED_FUNCTION_8_10();
      v114(v247, &v112[v113], v244);
    }

    else
    {
      OUTLINED_FUNCTION_79_0();
      v115 = OUTLINED_FUNCTION_31_3();
      v116(v115);
      sub_1BC8F7304();
      OUTLINED_FUNCTION_9_7();
      v117 = OUTLINED_FUNCTION_20_5();
      v118(v117);
    }

    v119 = v235;
    sub_1BC7FB138(v248, v235);
    OUTLINED_FUNCTION_73();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v120 = *v119;
      v121 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      OUTLINED_FUNCTION_8_10();
      v122 = v106;
      v123 = v244;
      v124(v106, &v120[v121], v244);
    }

    else
    {
      OUTLINED_FUNCTION_79_0();
      v125 = OUTLINED_FUNCTION_31_3();
      v126(v125);
      sub_1BC8F7304();
      OUTLINED_FUNCTION_9_7();
      v127 = OUTLINED_FUNCTION_20_5();
      v128(v127);
      v122 = v106;
      v123 = v244;
    }

    v129 = v247;
    v130 = sub_1BC8F7184();
    v131 = *v236;
    v106 = v122;
    v132 = OUTLINED_FUNCTION_62_0();
    (v131)(v132);
    v131(v129, v123);
    sub_1BC7FB19C(v248);
    sub_1BC7FB19C(v246);
    if ((v130 & 1) == 0)
    {
      v48 = v240;
LABEL_61:
      v46 = v229 + 1;
      v103 = v223 + v216;
      v105 = v221 - 1;
      v47 = v220 + v216;
      if (v229 + 1 == v217)
      {
        v46 = v217;
        OUTLINED_FUNCTION_76_0();
        v38 = v228;
        OUTLINED_FUNCTION_78_0();
        goto LABEL_63;
      }

      goto LABEL_48;
    }

    v48 = v240;
    v133 = v245;
    if (!v232)
    {
      break;
    }

    v134 = v233;
    sub_1BC7FBC68(v47, v233);
    swift_arrayInitWithTakeFrontToBack();
    sub_1BC7FBC68(v134, v103);
    v103 += v231;
    v47 += v231;
    v94 = __CFADD__(v133, 1);
    v108 = v133 + 1;
    if (v94)
    {
      goto LABEL_61;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
}

uint64_t sub_1BC7F9C7C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BC8D94F4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BC7F9DA8((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BC7F9DA8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1BC7DD5E4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1BC8F8AA4() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_1BC7DD5E4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_1BC8F8AA4() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_1BC7F9F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v140 = v25;
  v27 = v26;
  OUTLINED_FUNCTION_72_0();
  v146 = sub_1BC8F7324();
  v28 = OUTLINED_FUNCTION_0(v146);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_4();
  v145 = v33;
  OUTLINED_FUNCTION_19_6();
  v34 = sub_1BC8F71E4();
  v35 = OUTLINED_FUNCTION_0(v34);
  v150 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_20_4();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_47();
  v148 = v42;
  OUTLINED_FUNCTION_19_6();
  v152 = type metadata accessor for HistoryItem();
  v43 = *(*(v152 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v152);
  v46 = (&v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_52_2();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = (&v130 - v51);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = (&v130 - v54);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_65();
  v151 = v56;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_65();
  v147 = v58;
  v60 = *(v59 + 72);
  if (!v60)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  if (v27 - v20 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_73;
  }

  v62 = v140 - v27;
  if (v140 - v27 == 0x8000000000000000 && v60 == -1)
  {
    goto LABEL_74;
  }

  a10 = v20;
  v154 = v24;
  v142 = v30 + 8;
  v143 = v30 + 32;
  v141 = v150 + 16;
  v144 = (v150 + 8);
  v64 = v62 / v60;
  v149 = v34;
  if ((v27 - v20) / v60 >= v62 / v60)
  {
    sub_1BC7DD604(v27, v62 / v60, v24);
    v94 = v27;
    v95 = v24 + v64 * v60;
    v96 = -v60;
    v97 = v95;
    v98 = v140;
    v99 = v136;
    v133 = v46;
    v100 = v135;
    v132 = v24;
    v151 = -v60;
LABEL_43:
    v139 = v94 + v96;
    v101 = v98;
    v102 = v97;
    v150 = v94;
    v140 = v97;
    while (1)
    {
      if (v95 <= v24)
      {
        a10 = v94;
        v153 = v102;
        goto LABEL_71;
      }

      if (v94 <= v20)
      {
        break;
      }

      v147 = v101;
      v131 = v102;
      v148 = v95;
      v103 = v95 + v96;
      v104 = v137;
      sub_1BC7FB138(v95 + v96, v137);
      sub_1BC7FB138(v139, v100);
      v105 = v104;
      v106 = v134;
      sub_1BC7FB138(v105, v134);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v107 = *v106;
        v24 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v108(v138);
      }

      else
      {
        v109 = OUTLINED_FUNCTION_10_9();
        v110(v109, v106, v24);
        sub_1BC8F7304();
        v111 = OUTLINED_FUNCTION_11_7();
        v112(v111);
      }

      sub_1BC7FB138(v100, v46);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v113 = *v46;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v114 = v149;
        v115(v99);
      }

      else
      {
        v116 = OUTLINED_FUNCTION_10_9();
        v117(v116, v46, v24);
        sub_1BC8F7304();
        v118 = OUTLINED_FUNCTION_11_7();
        v119(v118);
        v114 = v149;
      }

      v120 = v147;
      v98 = v147 + v151;
      v121 = v138;
      v122 = sub_1BC8F7184();
      v123 = *v144;
      (*v144)(v99, v114);
      v123(v121, v114);
      v100 = v135;
      sub_1BC7FB19C(v135);
      sub_1BC7FB19C(v137);
      if (v122)
      {
        v125 = v120 < v150 || v98 >= v150;
        v24 = v132;
        if (v125)
        {
          v126 = v139;
          OUTLINED_FUNCTION_28_3();
          swift_arrayInitWithTakeFrontToBack();
          v94 = v126;
          v97 = v131;
          v99 = v136;
          v46 = v133;
          v96 = v151;
          v95 = v148;
        }

        else
        {
          v97 = v131;
          v127 = v139;
          v94 = v139;
          v99 = v136;
          v46 = v133;
          v96 = v151;
          v95 = v148;
          if (v120 != v150)
          {
            OUTLINED_FUNCTION_23_3();
            v129 = v128;
            swift_arrayInitWithTakeBackToFront();
            v95 = v148;
            v94 = v127;
            v97 = v129;
          }
        }

        goto LABEL_43;
      }

      v124 = v120 < v148 || v98 >= v148;
      v24 = v132;
      if (v124)
      {
        OUTLINED_FUNCTION_23_3();
        swift_arrayInitWithTakeFrontToBack();
        v101 = v98;
        v95 = v103;
        v102 = v103;
        v94 = v150;
        v96 = v151;
        v99 = v136;
        v46 = v133;
        v97 = v140;
      }

      else
      {
        v102 = v103;
        v101 = v98;
        v95 = v103;
        v94 = v150;
        v96 = v151;
        v99 = v136;
        v46 = v133;
        v97 = v140;
        if (v148 != v120)
        {
          OUTLINED_FUNCTION_23_3();
          swift_arrayInitWithTakeBackToFront();
          v97 = v140;
          v94 = v150;
          v101 = v98;
          v95 = v103;
          v102 = v103;
        }
      }
    }

    a10 = v94;
    v153 = v97;
  }

  else
  {
    sub_1BC7DD604(v20, (v27 - v20) / v60, v24);
    v65 = v27;
    v138 = v24 + (v27 - v20) / v60 * v60;
    v153 = v138;
    v66 = v140;
    v67 = v139;
    v137 = v52;
    while (v24 < v138 && v65 < v66)
    {
      v150 = v65;
      sub_1BC7FB138(v65, v147);
      v69 = v24;
      sub_1BC7FB138(v24, v151);
      v70 = OUTLINED_FUNCTION_20_5();
      sub_1BC7FB138(v70, v71);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v72 = *v55;
        v24 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v73(v148);
      }

      else
      {
        v74 = OUTLINED_FUNCTION_10_9();
        v75(v74, v55, v24);
        sub_1BC8F7304();
        v76 = OUTLINED_FUNCTION_11_7();
        v77(v76);
      }

      v78 = v55;
      sub_1BC7FB138(v151, v52);
      v79 = v20;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v80 = *v52;
        OUTLINED_FUNCTION_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_25_5();
        v81 = v149;
        v82(v67);
      }

      else
      {
        v83 = OUTLINED_FUNCTION_10_9();
        v84(v83, v52, v24);
        sub_1BC8F7304();
        v85 = OUTLINED_FUNCTION_11_7();
        v86(v85);
        v81 = v149;
      }

      v87 = v148;
      v88 = sub_1BC8F7184();
      v89 = *v144;
      (*v144)(v67, v81);
      v89(v87, v81);
      sub_1BC7FB19C(v151);
      sub_1BC7FB19C(v147);
      if (v88)
      {
        v90 = v150 + v60;
        v91 = v79;
        v92 = v79 < v150 || v79 >= v90;
        v24 = v69;
        v52 = v137;
        if (v92)
        {
          OUTLINED_FUNCTION_28_3();
          swift_arrayInitWithTakeFrontToBack();
          v65 = v90;
          v67 = v139;
          v55 = v78;
        }

        else
        {
          v67 = v139;
          v55 = v78;
          if (v91 != v150)
          {
            OUTLINED_FUNCTION_28_3();
            swift_arrayInitWithTakeBackToFront();
          }

          v65 = v90;
        }
      }

      else
      {
        v24 = v69 + v60;
        v91 = v79;
        v93 = v79 < v69 || v79 >= v24;
        v52 = v137;
        if (v93)
        {
          OUTLINED_FUNCTION_62_0();
          OUTLINED_FUNCTION_28_3();
          swift_arrayInitWithTakeFrontToBack();
          v67 = v139;
          v55 = v78;
        }

        else
        {
          v67 = v139;
          v55 = v78;
          if (v91 != v69)
          {
            OUTLINED_FUNCTION_62_0();
            OUTLINED_FUNCTION_28_3();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v154 = v69 + v60;
        v65 = v150;
      }

      v20 = v91 + v60;
      a10 = v20;
      v66 = v140;
    }
  }

LABEL_71:
  sub_1BC7FA8EC(&a10, &v154, &v153);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC7FA8EC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for HistoryItem();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1BC7FA9FC()
{
  v3 = OUTLINED_FUNCTION_34_4();
  *v0 = v1;
  if (!v3 || v2 > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_27_3();
    sub_1BC7AA188();
    *v0 = v4;
  }
}

void sub_1BC7FAA54()
{
  v3 = OUTLINED_FUNCTION_34_4();
  *v0 = v1;
  if (!v3 || v2 > *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_27_3();
    sub_1BC7F742C();
    *v0 = v4;
  }
}

uint64_t sub_1BC7FAADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1BC7FAB54(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, int a4, uint64_t *a5)
{
  v71 = a5;
  v59 = a2;
  v8 = sub_1BC8F7264();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for HistoryItem();
  v66 = *(v63 - 8);
  v12 = *(v66 + 64);
  v13 = MEMORY[0x1EEE9AC00](v63);
  v69 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5698, &qword_1BC900B60);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v67 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A0, &qword_1BC900B68);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v64 = &v56 - v24;
  v25 = *(a1 + 16);
  v65 = (v9 + 32);
  v57 = (v9 + 8);
  v58 = v9;
  v60 = a1;

  v61 = a3;

  v26 = 0;
  while (1)
  {
    v68 = a4;
    if (v26 == v25)
    {
      v27 = 1;
      v26 = v25;
      v28 = v64;
    }

    else
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_22;
      }

      v28 = v64;
      if (v26 >= *(v60 + 16))
      {
        goto LABEL_23;
      }

      sub_1BC7FB138(v60 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v26, v21);
      v27 = 0;
      ++v26;
    }

    v29 = 1;
    v30 = v63;
    __swift_storeEnumTagSinglePayload(v21, v27, 1, v63);
    v31 = v67;
    sub_1BC7FBD30(v21, v67);
    if (__swift_getEnumTagSinglePayload(v31, 1, v30) != 1)
    {
      v32 = v62;
      sub_1BC7FBC68(v67, v62);
      v59(v32);
      sub_1BC7FB19C(v32);
      v29 = 0;
    }

    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A8, &unk_1BC900B70);
    __swift_storeEnumTagSinglePayload(v28, v29, 1, v33);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56A8, &unk_1BC900B70);
    if (__swift_getEnumTagSinglePayload(v28, 1, v34) == 1)
    {

      return swift_bridgeObjectRelease_n();
    }

    v35 = *(v34 + 48);
    v36 = *v65;
    v37 = v8;
    (*v65)(v70, v28, v8);
    sub_1BC7FBC68(v28 + v35, v69);
    v38 = *v71;
    v40 = sub_1BC83C928();
    v41 = *(v38 + 16);
    v42 = (v39 & 1) == 0;
    v43 = v41 + v42;
    if (__OFADD__(v41, v42))
    {
      break;
    }

    v44 = v39;
    if (*(v38 + 24) >= v43)
    {
      if ((v68 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5688, &unk_1BC900B48);
        sub_1BC8F8744();
      }
    }

    else
    {
      v45 = v71;
      sub_1BC7F79FC(v43, v68 & 1);
      v46 = *v45;
      v47 = sub_1BC83C928();
      if ((v44 & 1) != (v48 & 1))
      {
        goto LABEL_25;
      }

      v40 = v47;
    }

    v49 = *v71;
    if (v44)
    {
      v50 = v69;
      v51 = v62;
      sub_1BC7FB138(v69, v62);
      sub_1BC7FB19C(v50);
      v8 = v37;
      (*v57)(v70, v37);
      sub_1BC7FBCCC(v51, v49[7] + *(v66 + 72) * v40);
      a4 = 1;
    }

    else
    {
      v49[(v40 >> 6) + 8] |= 1 << v40;
      v8 = v37;
      v36((v49[6] + *(v58 + 72) * v40), v70, v37);
      sub_1BC7FBC68(v69, v49[7] + *(v66 + 72) * v40);
      v52 = v49[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_24;
      }

      v49[2] = v54;
      a4 = 1;
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
  result = sub_1BC8F8B44();
  __break(1u);
  return result;
}

unint64_t sub_1BC7FB0D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1BC7FB138(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FB19C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC7FB1F8()
{
  result = qword_1EBCF55C8;
  if (!qword_1EBCF55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF55C8);
  }

  return result;
}

unint64_t sub_1BC7FB24C()
{
  result = qword_1EBCF55D8;
  if (!qword_1EBCF55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF55D8);
  }

  return result;
}

unint64_t sub_1BC7FB2A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF55E0, &qword_1BC900680);
    sub_1BC7FBE94(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1BC7FB338(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1BC8F8C64();
  v21 = a2;
  v4 = a2 + 56;
  v3 = *(a2 + 56);
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_45_0();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;

  v12 = 0;
  v13 = 0;
  if (v8)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return MEMORY[0x1BFB2A020](v12);
    }

    v8 = *(v4 + 8 * v14);
    ++v13;
    if (v8)
    {
      v13 = v14;
      do
      {
LABEL_6:
        v15 = *(*(v21 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v8)))));
        sub_1BC8F8C04();
        MEMORY[0x1BFB2A020](*(v15 + 16));
        v16 = *(v15 + 16);
        if (v16)
        {

          v17 = (v15 + 40);
          do
          {
            v18 = *(v17 - 1);
            v19 = *v17;

            sub_1BC8F7CD4();

            v17 += 2;
            --v16;
          }

          while (v16);
        }

        else
        {
        }

        v8 &= v8 - 1;
        v20 = sub_1BC8F8C64();

        v12 ^= v20;
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC7FB4B0(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1BC8F8C64();
  v3 = *(a2 + 56);
  v4 = *(a2 + 32);
  OUTLINED_FUNCTION_45_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  for (i = 0; v7; v11 ^= v16)
  {
    v13 = i;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = (*(a2 + 48) + ((v13 << 11) | (32 * v14)));
    v17 = *v15;
    v18 = v15[1];
    v19 = v15[2];
    v20 = v15[3];
    sub_1BC8F8C04();

    Person.hash(into:)();
    v16 = sub_1BC8F8C64();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1BFB2A020](v11);
    }

    v7 = *(a2 + 56 + 8 * v13);
    ++i;
    if (v7)
    {
      i = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BC7FB618(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF6520, &unk_1BC9076A0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1BC7FB68C()
{
  result = qword_1EBCF5608;
  if (!qword_1EBCF5608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5608);
  }

  return result;
}

unint64_t sub_1BC7FB700()
{
  result = qword_1EBCF5620;
  if (!qword_1EBCF5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5620);
  }

  return result;
}

unint64_t sub_1BC7FB758()
{
  result = qword_1EBCF5628;
  if (!qword_1EBCF5628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5628);
  }

  return result;
}

uint64_t sub_1BC7FB7AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC7FB7EC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BC7FB844(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BC7FB884(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for GroupedHistoryItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ParticipantKey.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BC7FBA5C()
{
  result = qword_1EBCF5630;
  if (!qword_1EBCF5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5630);
  }

  return result;
}

unint64_t sub_1BC7FBAB4()
{
  result = qword_1EBCF5638;
  if (!qword_1EBCF5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5638);
  }

  return result;
}

unint64_t sub_1BC7FBB0C()
{
  result = qword_1EBCF5640;
  if (!qword_1EBCF5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5640);
  }

  return result;
}

unint64_t sub_1BC7FBB64()
{
  result = qword_1EBCF5648;
  if (!qword_1EBCF5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5648);
  }

  return result;
}

unint64_t sub_1BC7FBBBC()
{
  result = qword_1EBCF5650;
  if (!qword_1EBCF5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5650);
  }

  return result;
}

unint64_t sub_1BC7FBC14()
{
  result = qword_1EBCF5658;
  if (!qword_1EBCF5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5658);
  }

  return result;
}

uint64_t sub_1BC7FBC68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBCCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBD30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5698, &qword_1BC900B60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B8, &unk_1BC900B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC7FBE10(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1BC7FBE50()
{
  result = qword_1EBCF4FB0;
  if (!qword_1EBCF4FB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBCF4FB0);
  }

  return result;
}

unint64_t sub_1BC7FBE94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_71_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1BC7FBED8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_77_0()
{
  result = v0;
  v3 = *(v1 - 224);
  return result;
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1BC7FBF5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

unint64_t sub_1BC7FC010()
{
  result = qword_1EBCF56D0;
  if (!qword_1EBCF56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56D0);
  }

  return result;
}

void sub_1BC7FC070(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1BC7CAD40(a1);
}

void sub_1BC7FC07C(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1BC7CAD48(a1);
}

void sub_1BC7FC0A0(void *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v4 = *v2;
  sub_1BC7CAD98(a1);
}

unint64_t sub_1BC7FC174()
{
  result = qword_1EBCF56D8;
  if (!qword_1EBCF56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountMigrationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AccountMigrationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC7FC3BC()
{
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_0_8();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC41C(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_2_6();
  a2(v5, a1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC470(uint64_t a1)
{
  OUTLINED_FUNCTION_2_6();
  MEMORY[0x1BFB2A020](a1);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC4B0()
{
  OUTLINED_FUNCTION_2_6();
  sub_1BC8F8C34();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC4FC()
{
  sub_1BC8F8C04();
  OUTLINED_FUNCTION_0_8();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC53C(uint64_t a1, unsigned __int8 a2)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC580()
{
  OUTLINED_FUNCTION_3_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();

  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC614()
{
  OUTLINED_FUNCTION_3_10();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();

  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC6C8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1BC8F8C04();
  a3(v6, a2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC714()
{
  OUTLINED_FUNCTION_3_10();
  sub_1BC8F8C34();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC750()
{
  OUTLINED_FUNCTION_3_10();
  MessageKey.rawValue.getter();
  sub_1BC8F7CD4();

  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FC7AC(uint64_t a1, uint64_t a2)
{
  sub_1BC8F8C04();
  MEMORY[0x1BFB2A020](a2);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC7FC7F0(char a1)
{
  result = 0x6E6979726575712ELL;
  switch(a1)
  {
    case 1:
      result = 0x617267694D6F6E2ELL;
      break;
    case 2:
    case 4:
      result = 0x54676E69766F6D2ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E696E61656C632ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BC7FC8C0(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1BC7FC8F4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BC7FC8C0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1BC7FC920@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC7FC8D0(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_1BC7FC958()
{
  result = qword_1EBCF56E0;
  if (!qword_1EBCF56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56E0);
  }

  return result;
}

uint64_t sub_1BC7FC9BC(uint64_t a1)
{
  v3 = type metadata accessor for TrackedOutgoingMessage(0);
  v34 = *(v3 - 8);
  v4 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OutgoingVideoMessage();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v29[1] = v1;
  v38 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDAC4();
  v11 = v38;
  result = sub_1BC800458(a1);
  v15 = result;
  v16 = 0;
  v37 = a1 + 64;
  v30 = a1 + 72;
  v31 = v10;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v15 < 1 << *(a1 + 32))
    {
      v17 = v15 >> 6;
      if ((*(v37 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v13)
      {
        goto LABEL_24;
      }

      v35 = v14;
      v36 = v13;
      v18 = v33;
      sub_1BC800498(*(a1 + 56) + *(v34 + 72) * v15, v33, type metadata accessor for TrackedOutgoingMessage);
      sub_1BC800498(v18, v9, type metadata accessor for OutgoingVideoMessage);
      sub_1BC800388(v18, type metadata accessor for TrackedOutgoingMessage);
      v38 = v11;
      v19 = *(v11 + 16);
      if (v19 >= *(v11 + 24) >> 1)
      {
        sub_1BC7DDAC4();
        v11 = v38;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v9;
      result = sub_1BC800560(v9, v11 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v19, type metadata accessor for OutgoingVideoMessage);
      v21 = 1 << *(a1 + 32);
      if (v15 >= v21)
      {
        goto LABEL_25;
      }

      v22 = *(v37 + 8 * v17);
      if ((v22 & (1 << v15)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v36)
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v15 & 0x3F));
      if (v23)
      {
        v21 = __clz(__rbit64(v23)) | v15 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v17 << 6;
        v25 = v17 + 1;
        v26 = (v30 + 8 * v17);
        while (v25 < (v21 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1BC7FBED8(v15, v36, v35 & 1);
            v21 = __clz(__rbit64(v27)) + v24;
            goto LABEL_18;
          }
        }

        result = sub_1BC7FBED8(v15, v36, v35 & 1);
      }

LABEL_18:
      if (++v16 == v31)
      {
        return v11;
      }

      v14 = 0;
      v13 = *(a1 + 36);
      v15 = v21;
      v9 = v20;
      if (v15 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1BC7FCD6C(uint64_t a1, uint64_t a2)
{
  if ((sub_1BC8F7234() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OutgoingVideoMessage();
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1BC7DB4D8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v10 = v4[8];
  if ((sub_1BC8F6FA4() & 1) == 0)
  {
    return 0;
  }

  v11 = type metadata accessor for TrackedOutgoingMessage(0);
  if (*(a1 + *(v11 + 20)) != *(a2 + *(v11 + 20)))
  {
    return 0;
  }

  v12 = v11;
  if ((sub_1BC7DCBD8(*(a1 + *(v11 + 24)), *(a2 + *(v11 + 24))) & 1) == 0)
  {
    return 0;
  }

  v13 = *(v12 + 28);
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);

  return sub_1BC7DCBD8(v14, v15);
}

uint64_t sub_1BC7FCE78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F43797274 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001BC90BFB0 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6C617551746E6573 && a2 == 0xED00007365697469)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BC8F8AA4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BC7FCFE8(char a1)
{
  result = 0x6567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x746E756F43797274;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x6C617551746E6573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC7FD07C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5718, &qword_1BC901218);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC800334();
  sub_1BC8F8CA4();
  LOBYTE(v21) = 0;
  type metadata accessor for OutgoingVideoMessage();
  OUTLINED_FUNCTION_10_10();
  sub_1BC7FFA04(v14, v15);
  sub_1BC8F89F4();
  if (!v2)
  {
    v16 = type metadata accessor for TrackedOutgoingMessage(0);
    v17 = *(v3 + v16[5]);
    LOBYTE(v21) = 1;
    sub_1BC8F89E4();
    v21 = *(v3 + v16[6]);
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5708, &qword_1BC901210);
    sub_1BC8003E0(&qword_1EBCF5728, sub_1BC7C4FF8);
    OUTLINED_FUNCTION_15_6();
    v21 = *(v3 + v16[7]);
    v20 = 3;
    OUTLINED_FUNCTION_15_6();
  }

  return (*(v8 + 8))(v12, v5);
}

void sub_1BC7FD2B4(uint64_t a1)
{
  v2 = v1;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_2_7();
  sub_1BC7FFA04(v4, v5);
  sub_1BC8F7B64();
  v6 = type metadata accessor for OutgoingVideoMessage();
  v7 = (v1 + v6[5]);
  v8 = *v7;
  v9 = v7[1];
  sub_1BC8F7CD4();
  sub_1BC7DEC58(a1, *(v1 + v6[6]));
  v10 = *(v1 + v6[7]);
  sub_1BC8F8C34();
  v11 = v6[8];
  sub_1BC8F7014();
  OUTLINED_FUNCTION_9_8();
  sub_1BC7FFA04(v12, v13);
  sub_1BC8F7B64();
  v14 = type metadata accessor for TrackedOutgoingMessage(0);
  MEMORY[0x1BFB2A020](*(v2 + v14[5]));
  sub_1BC7DF9B0(a1, *(v2 + v14[6]));
  v15 = *(v2 + v14[7]);

  sub_1BC7DF9B0(a1, v15);
}

uint64_t sub_1BC7FD3F0()
{
  v1 = v0;
  sub_1BC8F8C04();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_2_7();
  sub_1BC7FFA04(v2, v3);
  sub_1BC8F7B64();
  v4 = type metadata accessor for OutgoingVideoMessage();
  v5 = (v0 + v4[5]);
  v6 = *v5;
  v7 = v5[1];
  sub_1BC8F7CD4();
  sub_1BC7DEC58(v14, *(v0 + v4[6]));
  v8 = *(v0 + v4[7]);
  sub_1BC8F8C34();
  v9 = v4[8];
  sub_1BC8F7014();
  OUTLINED_FUNCTION_9_8();
  sub_1BC7FFA04(v10, v11);
  sub_1BC8F7B64();
  v12 = type metadata accessor for TrackedOutgoingMessage(0);
  MEMORY[0x1BFB2A020](*(v1 + v12[5]));
  sub_1BC7DF9B0(v14, *(v1 + v12[6]));
  sub_1BC7DF9B0(v14, *(v1 + v12[7]));
  return sub_1BC8F8C64();
}

uint64_t sub_1BC7FD538@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OutgoingVideoMessage();
  v5 = OUTLINED_FUNCTION_4_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56F0, &qword_1BC901208);
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = type metadata accessor for TrackedOutgoingMessage(0);
  v16 = OUTLINED_FUNCTION_4_1(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC800334();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_10_10();
  sub_1BC7FFA04(v23, v24);
  sub_1BC8F88F4();
  sub_1BC800560(v10, v21, type metadata accessor for OutgoingVideoMessage);
  LOBYTE(v31) = 1;
  *(v21 + v15[5]) = sub_1BC8F88E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5708, &qword_1BC901210);
  sub_1BC8003E0(&qword_1EBCF5710, sub_1BC7C732C);
  OUTLINED_FUNCTION_13_7();
  *(v21 + v15[6]) = v31;
  OUTLINED_FUNCTION_13_7();
  v25 = OUTLINED_FUNCTION_11_8();
  v26(v25);
  *(v21 + v15[7]) = v31;
  OUTLINED_FUNCTION_1_9();
  sub_1BC800498(v21, a2, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  OUTLINED_FUNCTION_0_9();
  return sub_1BC800388(v21, v28);
}

uint64_t sub_1BC7FD8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC7FCE78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC7FD8FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC7FCFE0();
  *a1 = result;
  return result;
}

uint64_t sub_1BC7FD924(uint64_t a1)
{
  v2 = sub_1BC800334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC7FD960(uint64_t a1)
{
  v2 = sub_1BC800334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC7FD9A4()
{
  sub_1BC8F8C04();
  sub_1BC7FD2B4(v1);
  return sub_1BC8F8C64();
}

void *sub_1BC7FDA14(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  swift_defaultActor_initialize();
  v5 = OBJC_IVAR____TtC20FaceTimeMessageStore20OutgoingMessageCache_cacheURL;
  v6 = sub_1BC8F7014();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v1 + v5, a1, v6);
  v8 = sub_1BC7FDB00();
  (*(v7 + 8))(a1, v6);
  v2[14] = v8;
  return v2;
}

uint64_t sub_1BC7FDB00()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1BC8F6FC4();
  v1 = sub_1BC8F7BE4();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_1BC8F7054();
    v5 = v4;
    v6 = sub_1BC8F6C54();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_1BC8F6C44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5738, &qword_1BC901228);
    sub_1BC8006AC();
    sub_1BC8F6C34();

    sub_1BC7D4C94(v3, v5);
    return v10;
  }

  else
  {
    sub_1BC8F7264();
    type metadata accessor for TrackedOutgoingMessage(0);
    sub_1BC7FFA04(&unk_1EDC20600, MEMORY[0x1E69695A8]);

    return sub_1BC8F7AD4();
  }
}

void sub_1BC7FDD3C()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v3 = sub_1BC8F7264();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v11 = v10 - v9;
  v12 = type metadata accessor for TrackedOutgoingMessage(0);
  v13 = OUTLINED_FUNCTION_0(v12);
  v46 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v21 = OUTLINED_FUNCTION_25(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_20_0();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - v28;
  OUTLINED_FUNCTION_14_6();
  v30 = *(v0 + 112);
  if (!*(v30 + 16))
  {
    goto LABEL_5;
  }

  sub_1BC83C928();
  if ((v31 & 1) == 0)
  {

LABEL_5:
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v12);
    sub_1BC8004F8(v29);
    sub_1BC800498(v2, v19, type metadata accessor for OutgoingVideoMessage);
    *(v19 + v12[5]) = 0;
    v39 = MEMORY[0x1E69E7CC0];
    *(v19 + v12[6]) = MEMORY[0x1E69E7CC0];
    *(v19 + v12[7]) = v39;
    (*(v6 + 16))(v11, v2, v3);
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v19, v26, v40);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v12);
    OUTLINED_FUNCTION_19_7();
    sub_1BC843E58(v26, v11);
    swift_endAccess();
    sub_1BC7FDFE0();
    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v19, v44);
    goto LABEL_6;
  }

  v32 = *(v30 + 56);
  v33 = *(v46 + 72);
  OUTLINED_FUNCTION_1_9();
  sub_1BC800498(v34, v29, v35);

  OUTLINED_FUNCTION_30_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v12);
  sub_1BC8004F8(v29);
LABEL_6:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7FDFE0()
{
  v1 = v0;
  swift_beginAccess();
  if (!*(*(v0 + 112) + 16))
  {
    if (qword_1EDC1E1F8 != -1)
    {
      swift_once();
    }

    v2 = sub_1BC8F7734();
    __swift_project_value_buffer(v2, qword_1EDC2B2B0);
    v3 = sub_1BC8F7714();
    v4 = sub_1BC8F8204();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BC7A3000, v3, v4, "CACHE: Cache is empty", v5, 2u);
      MEMORY[0x1BFB2AA50](v5, -1, -1);
    }
  }

  v6 = sub_1BC8F6CB4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1BC8F6CA4();
  v13 = *(v1 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5738, &qword_1BC901228);
  sub_1BC8005C0();
  v9 = sub_1BC8F6C94();
  v11 = v10;

  sub_1BC8F70F4();

  return sub_1BC7D4C94(v9, v11);
}

void sub_1BC7FE410()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v57 = v3;
  v4 = sub_1BC8F7264();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v58 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v56 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v56 - v23;
  v25 = type metadata accessor for TrackedOutgoingMessage(0);
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v31 = v30 - v29;
  OUTLINED_FUNCTION_14_6();
  v32 = *(v0 + 112);

  sub_1BC8E70B0(v2, v32);

  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    v33 = v4;
    sub_1BC8004F8(v24);
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    v34 = sub_1BC8F7734();
    __swift_project_value_buffer(v34, qword_1EDC2B2B0);
    v35 = v58;
    (*(v7 + 16))(v58, v2, v4);
    v36 = sub_1BC8F7714();
    v37 = sub_1BC8F8204();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v59 = v39;
      *v38 = 136446210;
      OUTLINED_FUNCTION_2_7();
      sub_1BC7FFA04(v40, v41);
      v42 = sub_1BC8F8A54();
      v44 = v43;
      (*(v7 + 8))(v35, v33);
      v45 = sub_1BC7A9A4C(v42, v44, &v59);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_1BC7A3000, v36, v37, "CACHE: No cached message for uuid %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      (*(v7 + 8))(v35, v33);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_7();
    v58 = v46;
    sub_1BC800560(v24, v31, v47);
    v48 = *(v25 + 24);
    v49 = *(v31 + v48);
    v56[1] = v0;
    v50 = v2;
    v51 = v57;

    *(v31 + v48) = v51;
    (*(v7 + 16))(v14, v50, v4);
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v31, v21, v52);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v25);
    OUTLINED_FUNCTION_19_7();
    sub_1BC843E58(v21, v14);
    swift_endAccess();
    sub_1BC7FDFE0();
    sub_1BC800388(v31, v58);
  }

  OUTLINED_FUNCTION_24();
}

void sub_1BC7FE7FC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BC8F7264();
  v7 = OUTLINED_FUNCTION_0(v6);
  v89 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v87 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v87 - v24;
  v26 = type metadata accessor for TrackedOutgoingMessage(0);
  v27 = OUTLINED_FUNCTION_4_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_0();
  v88 = v30 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v87 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v87 - v36;
  v91 = *v3;
  OUTLINED_FUNCTION_17_1();
  v38 = *(v1 + 112);

  v90 = v5;
  sub_1BC8E70B0(v5, v38);

  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    sub_1BC8004F8(v25);
    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    v39 = sub_1BC8F7734();
    __swift_project_value_buffer(v39, qword_1EDC2B2B0);
    (*(v89 + 16))(v13, v90, v6);
    v40 = sub_1BC8F7714();
    v41 = sub_1BC8F8204();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v93[0] = v43;
      *v42 = 136446210;
      OUTLINED_FUNCTION_2_7();
      sub_1BC7FFA04(v44, v45);
      v46 = sub_1BC8F8A54();
      v48 = v47;
      v49 = OUTLINED_FUNCTION_21_7();
      v50(v49, v6);
      v51 = sub_1BC7A9A4C(v46, v48, v93);

      *(v42 + 4) = v51;
      _os_log_impl(&dword_1BC7A3000, v40, v41, "CACHE: No cached message for uuid %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      v57 = OUTLINED_FUNCTION_21_7();
      v58(v57, v6);
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_5_7();
  sub_1BC800560(v25, v37, v52);
  OUTLINED_FUNCTION_1_9();
  sub_1BC800498(v37, v35, v53);
  v93[0] = *&v35[*(v26 + 24)];

  sub_1BC7FFA4C(v93);
  v54 = v37;
  v55 = *(v93[0] + 16);
  if (v55)
  {
    v56 = *(v93[0] + v55 + 31);
  }

  else
  {
    v56 = 4;
  }

  OUTLINED_FUNCTION_0_9();
  sub_1BC800388(v35, v59);
  if (v91 == 4)
  {
    if (v56 != 4)
    {
LABEL_18:
      if (qword_1EDC1E1F8 != -1)
      {
        OUTLINED_FUNCTION_3_2();
      }

      v69 = sub_1BC8F7734();
      __swift_project_value_buffer(v69, qword_1EDC2B2B0);
      v70 = sub_1BC8F7714();
      v71 = sub_1BC8F81E4();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v94[0] = swift_slowAlloc();
        *v72 = 136446466;
        v73 = 7827308;
        v74 = 0xE300000000000000;
        switch(v91)
        {
          case 1:
            v74 = 0xE600000000000000;
            v73 = 0x6D756964656DLL;
            break;
          case 2:
            v74 = 0xE400000000000000;
            v73 = 1751607656;
            break;
          case 3:
            v73 = 7823730;
            break;
          default:
            break;
        }

        v75 = sub_1BC7A9A4C(v73, v74, v94);

        *(v72 + 4) = v75;
        *(v72 + 12) = 2080;
        v54 = v37;
        OUTLINED_FUNCTION_17_1();
        OUTLINED_FUNCTION_1_9();
        v76 = v88;
        sub_1BC800498(v37, v88, v77);
        v92 = *(v76 + *(v26 + 24));

        sub_1BC7FFA4C(&v92);
        v78 = *(v92 + 16);
        if (v78)
        {
          v79 = *(v92 + v78 + 31);

          OUTLINED_FUNCTION_0_9();
          sub_1BC800388(v76, v80);
          LOBYTE(v92) = v79;
          v81 = sub_1BC8F7C94();
          v83 = v82;
        }

        else
        {

          OUTLINED_FUNCTION_0_9();
          sub_1BC800388(v76, v84);
          v83 = 0xE300000000000000;
          v81 = 7104878;
        }

        v85 = sub_1BC7A9A4C(v81, v83, v94);

        *(v72 + 14) = v85;
        _os_log_impl(&dword_1BC7A3000, v70, v71, "CACHE: %{public}s is not the highest expected quality %s - so not retrying", v72, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      goto LABEL_31;
    }
  }

  else if (v56 == 4 || (sub_1BC800E6C(v91, v56) & 1) == 0)
  {
    goto LABEL_18;
  }

  v60 = *(v26 + 20);
  v61 = *&v37[v60];
  v62 = (v61 + 1);
  if (v61 != -1)
  {
    *&v37[v60] = v62;
    if (v62 <= 2)
    {
      v63 = v87;
      (*(v89 + 16))(v87, v90, v6);
      OUTLINED_FUNCTION_1_9();
      sub_1BC800498(v37, v22, v64);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v26);
      OUTLINED_FUNCTION_19_7();
      sub_1BC843E58(v22, v63);
      swift_endAccess();
      sub_1BC7FDFE0();
      OUTLINED_FUNCTION_0_9();
      sub_1BC800388(v37, v68);
LABEL_32:
      OUTLINED_FUNCTION_24();
      return;
    }

    OUTLINED_FUNCTION_19_7();
    sub_1BC8496F0(v22);
    sub_1BC8004F8(v22);
    swift_endAccess();
    sub_1BC7FDFE0();
LABEL_31:
    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v54, v86);
    goto LABEL_32;
  }

  __break(1u);

  __break(1u);
}

void sub_1BC7FEF48()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v101 = v5;
  v6 = sub_1BC8F7264();
  v7 = OUTLINED_FUNCTION_0(v6);
  v98 = v8;
  v99 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_0();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  v26 = type metadata accessor for TrackedOutgoingMessage(0);
  v27 = OUTLINED_FUNCTION_4_1(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_20_0();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v96 - v34;
  v36 = *v2;
  OUTLINED_FUNCTION_14_6();
  v97 = v0;
  v37 = *(v0 + 112);

  v100 = v4;
  sub_1BC8E70B0(v4, v37);

  if (__swift_getEnumTagSinglePayload(v25, 1, v26) != 1)
  {
    OUTLINED_FUNCTION_5_7();
    sub_1BC800560(v25, v35, v52);
    OUTLINED_FUNCTION_1_9();
    sub_1BC800498(v35, v32, v53);
    v102[0] = *(v32 + *(v26 + 24));

    sub_1BC7FFA4C(v102);
    v54 = v35;
    v55 = *(v102[0] + 16);
    if (v55)
    {
      v56 = *(v102[0] + v55 + 31);
    }

    else
    {
      v56 = 4;
    }

    OUTLINED_FUNCTION_0_9();
    sub_1BC800388(v32, v60);
    if (v36 == 4)
    {
      if (v56 != 4)
      {
LABEL_21:
        v67 = *(v26 + 28);
        v68 = *&v35[v67];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = *(v68 + 16);
          sub_1BC7F7088();
          v68 = v94;
        }

        v69 = *(v68 + 16);
        if (v69 >= *(v68 + 24) >> 1)
        {
          sub_1BC7F7088();
          v68 = v95;
        }

        *(v68 + 16) = v69 + 1;
        *(v68 + v69 + 32) = v36;
        *&v35[v67] = v68;
        v70 = v96;
        (*(v98 + 16))(v96, v100, v99);
        OUTLINED_FUNCTION_1_9();
        sub_1BC800498(v35, v22, v71);
        OUTLINED_FUNCTION_30_0();
        __swift_storeEnumTagSinglePayload(v72, v73, v74, v26);
        OUTLINED_FUNCTION_18_5();
        sub_1BC843E58(v22, v70);
        swift_endAccess();
        sub_1BC7FDFE0();
        v75 = sub_1BC8F7014();
        OUTLINED_FUNCTION_22_5(v75);
        OUTLINED_FUNCTION_0_9();
        v77 = v35;
LABEL_30:
        sub_1BC800388(v77, v76);
        goto LABEL_31;
      }
    }

    else if (v56 == 4 || (sub_1BC800E6C(v36, v56) & 1) == 0)
    {
      goto LABEL_21;
    }

    if (qword_1EDC1E1F8 != -1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    v61 = sub_1BC8F7734();
    __swift_project_value_buffer(v61, qword_1EDC2B2B0);
    v62 = sub_1BC8F7714();
    v63 = sub_1BC8F8204();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v102[0] = swift_slowAlloc();
      *v64 = 136446466;
      v65 = 7827308;
      v66 = 0xE300000000000000;
      switch(v36)
      {
        case 1:
          v66 = 0xE600000000000000;
          v65 = 0x6D756964656DLL;
          break;
        case 2:
          v66 = 0xE400000000000000;
          v65 = 1751607656;
          break;
        case 3:
          v65 = 7823730;
          break;
        default:
          break;
      }

      v78 = sub_1BC7A9A4C(v65, v66, v102);

      *(v64 + 4) = v78;
      *(v64 + 12) = 2080;
      OUTLINED_FUNCTION_17_1();
      OUTLINED_FUNCTION_1_9();
      sub_1BC800498(v54, v22, v79);
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v26);
      v83 = sub_1BC8636B0();
      v85 = v84;
      sub_1BC8004F8(v22);
      v86 = sub_1BC7A9A4C(v83, v85, v102);

      *(v64 + 14) = v86;
      _os_log_impl(&dword_1BC7A3000, v62, v63, "CACHE: Removing from cache as %{public}s is the highest expected quality for %s", v64, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    OUTLINED_FUNCTION_18_5();
    sub_1BC8496F0(v22);
    sub_1BC8004F8(v22);
    swift_endAccess();
    sub_1BC7FDFE0();
    OUTLINED_FUNCTION_17_1();
    v87 = *(type metadata accessor for OutgoingVideoMessage() + 32);
    v88 = sub_1BC8F7014();
    OUTLINED_FUNCTION_4_1(v88);
    (*(v89 + 16))(v101, v54 + v87, v88);
    OUTLINED_FUNCTION_30_0();
    __swift_storeEnumTagSinglePayload(v90, v91, v92, v88);
    OUTLINED_FUNCTION_0_9();
    v77 = v54;
    goto LABEL_30;
  }

  sub_1BC8004F8(v25);
  if (qword_1EDC1E1F8 != -1)
  {
    OUTLINED_FUNCTION_3_2();
  }

  v38 = sub_1BC8F7734();
  __swift_project_value_buffer(v38, qword_1EDC2B2B0);
  v39 = v99;
  (*(v98 + 16))(v13, v100, v99);
  v40 = sub_1BC8F7714();
  v41 = sub_1BC8F8204();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v102[0] = v43;
    *v42 = 136446210;
    OUTLINED_FUNCTION_2_7();
    sub_1BC7FFA04(v44, v45);
    v46 = sub_1BC8F8A54();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_21_7();
    v50(v49, v39);
    v51 = sub_1BC7A9A4C(v46, v48, v102);

    *(v42 + 4) = v51;
    _os_log_impl(&dword_1BC7A3000, v40, v41, "CACHE: No cached message for uuid %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v43);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v57 = OUTLINED_FUNCTION_21_7();
    v58(v57, v39);
  }

  v59 = sub_1BC8F7014();
  OUTLINED_FUNCTION_22_5(v59);
LABEL_31:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC7FF6B0()
{
  OUTLINED_FUNCTION_17_1();
  v1 = *(v0 + 112);

  v3 = sub_1BC7FC9BC(v2);

  return v3;
}

uint64_t sub_1BC7FF70C()
{
  v1 = *(v0 + 112);

  v2 = OBJC_IVAR____TtC20FaceTimeMessageStore20OutgoingMessageCache_cacheURL;
  v3 = sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0 + v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1BC7FF774()
{
  sub_1BC7FF70C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BC7FF7C8()
{
  result = sub_1BC8F7014();
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

void sub_1BC7FF8B8()
{
  type metadata accessor for OutgoingVideoMessage();
  if (v0 <= 0x3F)
  {
    sub_1BC7FF944();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC7FF944()
{
  if (!qword_1EDC1DF08)
  {
    v0 = sub_1BC8F7F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC1DF08);
    }
  }
}

uint64_t sub_1BC7FFA04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC7FFA4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1BC8DC0A0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1BC7FFAB8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1BC7FFAB8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BC8F8A44();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1BC8F7EB4();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1BC7FFC08(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1BC7FFBAC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BC7FFBAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1BC7FFC08(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_1BC7F6FCC();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1BC7F6FCC();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      __dst = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1BC8001D4((*a3 + *v64), (*a3 + *v66), (*a3 + v67), __dst);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1BC8000A8(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_1BC8000A8(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1BC8D94F4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1BC8001D4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1BC8001D4(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a3 - a2;
  if (a2 - __src < a3 - a2)
  {
    sub_1BC7DD61C(__src, a2 - __src, __dst);
    v10 = &v4[v8];
    while (1)
    {
      v11 = v4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *v4;
      if (v12 >= v13)
      {
        v11 = v7 >= v4++;
        v15 = !v11 || v7 >= v4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  sub_1BC7DD61C(a2, a3 - a2, __dst);
  v10 = &v4[v9];
LABEL_21:
  v16 = (v6 - 1);
  --v5;
  while (v10 > v4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != v4 || v6 >= v10)
  {
    memmove(v6, v4, v10 - v4);
  }

  return 1;
}

unint64_t sub_1BC800334()
{
  result = qword_1EBCF56F8;
  if (!qword_1EBCF56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF56F8);
  }

  return result;
}

uint64_t sub_1BC800388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1BC8003E0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5708, &qword_1BC901210);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC800458(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1BC8F84D4();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_1BC800498(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC8004F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5730, &qword_1BC901220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC800560(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4_1(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1BC8005C0()
{
  result = qword_1EBCF5740;
  if (!qword_1EBCF5740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5738, &qword_1BC901228);
    sub_1BC7FFA04(&unk_1EDC20FC0, MEMORY[0x1E69695A8]);
    sub_1BC7FFA04(&qword_1EBCF5748, type metadata accessor for TrackedOutgoingMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5740);
  }

  return result;
}

unint64_t sub_1BC8006AC()
{
  result = qword_1EBCF5750;
  if (!qword_1EBCF5750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5738, &qword_1BC901228);
    sub_1BC7FFA04(&unk_1EDC20FB0, MEMORY[0x1E69695A8]);
    sub_1BC7FFA04(&qword_1EBCF5758, type metadata accessor for TrackedOutgoingMessage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5750);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrackedOutgoingMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC800878()
{
  result = qword_1EBCF5760;
  if (!qword_1EBCF5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5760);
  }

  return result;
}

unint64_t sub_1BC8008D0()
{
  result = qword_1EBCF5768;
  if (!qword_1EBCF5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5768);
  }

  return result;
}

unint64_t sub_1BC800928()
{
  result = qword_1EBCF5770;
  if (!qword_1EBCF5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5770);
  }

  return result;
}

uint64_t sub_1BC80097C()
{
  v0 = sub_1BC8F7C24();
  v2 = v1;
  if (v0 == sub_1BC8F7C24() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    v5 = sub_1BC8F8AA4();
  }

  return v5 & 1;
}

uint64_t sub_1BC8009FC()
{
  OUTLINED_FUNCTION_12_6();
  if (v6)
  {
    v4 = 0xE500000000000000;
    v3 = v1;
  }

  else
  {
    if (v2 == 1)
    {
      v3 = 7107189;
    }

    else
    {
      v3 = 0x656C646E6168;
    }

    if (v2 == 1)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (v0)
  {
    if (v0 == 1)
    {
      v1 = 7107189;
    }

    else
    {
      v1 = 0x656C646E6168;
    }

    if (v0 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v3 == v1 && v4 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_8();
  }

  return v7 & 1;
}

uint64_t sub_1BC800AC4(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000010;
  v3 = "low";
  v4 = "low";
  v5 = a1;
  v6 = 0xD000000000000010;
  switch(v5)
  {
    case 1:
      v4 = "fileDoesNotExist";
      v6 = 0xD000000000000011;
      break;
    case 2:
      v4 = "fileAlreadyExists";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "resolvedSandboxURLNil";
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "fileDoesNotExist";
      v2 = 0xD000000000000011;
      break;
    case 2:
      v3 = "fileAlreadyExists";
      v2 = 0xD000000000000015;
      break;
    case 3:
      v3 = "resolvedSandboxURLNil";
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_8();
  }

  return v8 & 1;
}

uint64_t sub_1BC800BD8()
{
  OUTLINED_FUNCTION_12_6();
  if (v6)
  {
    v4 = 0xE500000000000000;
    v3 = v1;
  }

  else
  {
    if (v2 == 1)
    {
      v3 = 0x4C5255656C6966;
    }

    else
    {
      v3 = 0x656C646E6168;
    }

    if (v2 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  if (v0)
  {
    if (v0 == 1)
    {
      v1 = 0x4C5255656C6966;
    }

    else
    {
      v1 = 0x656C646E6168;
    }

    if (v0 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v3 == v1 && v4 == v5;
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_2_8();
  }

  return v7 & 1;
}

uint64_t sub_1BC800CB0(char a1, char a2)
{
  v3 = 0xD00000000000001BLL;
  v4 = "ationContentTopLine";
  v5 = "ationContentTopLine";
  switch(a1)
  {
    case 1:
      v5 = "missingRequiredFileURLError";
      v3 = 0xD000000000000013;
      break;
    case 2:
      v5 = "fileCopyFailedError";
      v3 = 0xD000000000000014;
      break;
    case 3:
      v5 = "bundleUnzippingError";
      v3 = 0xD000000000000012;
      break;
    default:
      break;
  }

  v6 = 0xD00000000000001BLL;
  switch(a2)
  {
    case 1:
      v4 = "missingRequiredFileURLError";
      v6 = 0xD000000000000013;
      break;
    case 2:
      v4 = "fileCopyFailedError";
      v6 = 0xD000000000000014;
      break;
    case 3:
      v4 = "bundleUnzippingError";
      v6 = 0xD000000000000012;
      break;
    default:
      break;
  }

  if (v3 == v6 && (v5 | 0x8000000000000000) == (v4 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_8();
  }

  return v8 & 1;
}

uint64_t sub_1BC800DDC()
{
  v0 = MessageKey.rawValue.getter();
  v2 = v1;
  if (v0 == MessageKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_45_1();
    v5 = sub_1BC8F8AA4();
  }

  return v5 & 1;
}

uint64_t sub_1BC800E6C(char a1, char a2)
{
  v3 = 7827308;
  v4 = 0xE300000000000000;
  switch(a1)
  {
    case 1:
      v4 = 0xE600000000000000;
      v3 = 0x6D756964656DLL;
      break;
    case 2:
      v4 = 0xE400000000000000;
      v3 = 1751607656;
      break;
    case 3:
      v3 = 7823730;
      break;
    default:
      break;
  }

  v5 = 7827308;
  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v5 = 1751607656;
      break;
    case 3:
      v5 = 7823730;
      break;
    default:
      break;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_8();
  }

  return v8 & 1;
}

uint64_t sub_1BC800F98(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();
}

uint64_t sub_1BC801008()
{
  sub_1BC8F7CD4();
}

uint64_t sub_1BC8010B0(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_8();
  }

  sub_1BC8F7CD4();
}

uint64_t sub_1BC801128()
{
  sub_1BC8F7CD4();
}

uint64_t sub_1BC8011E0()
{
  MessageKey.rawValue.getter();
  OUTLINED_FUNCTION_9_1();
}

uint64_t sub_1BC80122C()
{
  sub_1BC8F7CD4();
}

double static SortedMessageStoreQuery.all.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -2.68156159e154;
  *a1 = xmmword_1BC901350;
  return result;
}

uint64_t static SortedMessageStoreQuery.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if ((v2 & 4) != 0)
  {
    if ((v4 & 4) != 0)
    {
      v27 = OUTLINED_FUNCTION_45_1();
      sub_1BC80156C(v27, v28);
      v29 = OUTLINED_FUNCTION_3_11();
      sub_1BC80156C(v29, v30);
      v31 = OUTLINED_FUNCTION_3_11();
      sub_1BC80156C(v31, v32);
      v33 = OUTLINED_FUNCTION_45_1();
      sub_1BC80156C(v33, v34);
      if ((sub_1BC800DDC() & 1) != 0 && ((v5 ^ v3) & 0x100) == 0)
      {
        v44 = v4 & 0xFFFFFFFFFFFFFFFBLL;
        v45 = v2 & 0xFFFFFFFFFFFFFFFBLL;
        goto LABEL_4;
      }

      v35 = OUTLINED_FUNCTION_45_1();
      sub_1BC80157C(v35, v36);
      v37 = OUTLINED_FUNCTION_3_11();
      sub_1BC80157C(v37, v38);
LABEL_11:
      v39 = OUTLINED_FUNCTION_3_11();
      sub_1BC80157C(v39, v40);
      v41 = OUTLINED_FUNCTION_45_1();
      sub_1BC80157C(v41, v42);
      v14 = 0;
      return v14 & 1;
    }

LABEL_6:
    v23 = OUTLINED_FUNCTION_3_11();
    sub_1BC80156C(v23, v24);
    v25 = OUTLINED_FUNCTION_45_1();
    sub_1BC80156C(v25, v26);
    goto LABEL_11;
  }

  if ((v4 & 4) != 0)
  {
    goto LABEL_6;
  }

  v44 = *a2;
  v45 = v3;
  v6 = OUTLINED_FUNCTION_45_1();
  sub_1BC80156C(v6, v7);
  v8 = OUTLINED_FUNCTION_3_11();
  sub_1BC80156C(v8, v9);
  v10 = OUTLINED_FUNCTION_3_11();
  sub_1BC80156C(v10, v11);
  v12 = OUTLINED_FUNCTION_45_1();
  sub_1BC80156C(v12, v13);
LABEL_4:
  v14 = static MessageStoreQuery.== infix(_:_:)(&v45, &v44);
  v15 = OUTLINED_FUNCTION_3_11();
  sub_1BC80157C(v15, v16);
  v17 = OUTLINED_FUNCTION_45_1();
  sub_1BC80157C(v17, v18);
  v19 = OUTLINED_FUNCTION_45_1();
  sub_1BC80157C(v19, v20);
  v21 = OUTLINED_FUNCTION_3_11();
  sub_1BC80157C(v21, v22);
  return v14 & 1;
}

unint64_t sub_1BC80156C(unint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    a1 = a2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  return sub_1BC7A5AB4(a1);
}

unint64_t sub_1BC80157C(unint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0)
  {
    a1 = a2 & 0xFFFFFFFFFFFFFFFBLL;
  }

  return sub_1BC7B0EFC(a1);
}

uint64_t sub_1BC80158C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726564726FLL && a2 == 0xE500000000000000;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC80169C(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x726564726FLL;
  }

  return 0x7972657571;
}

uint64_t sub_1BC8016E4(uint64_t a1)
{
  v2 = sub_1BC8023C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC801720(uint64_t a1)
{
  v2 = sub_1BC8023C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC801764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC80158C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC80178C(uint64_t a1)
{
  v2 = sub_1BC80241C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8017C8(uint64_t a1)
{
  v2 = sub_1BC80241C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC801804(uint64_t a1)
{
  v2 = sub_1BC802470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC801840(uint64_t a1)
{
  v2 = sub_1BC802470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SortedMessageStoreQuery.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5778, &qword_1BC901360);
  v4 = OUTLINED_FUNCTION_0(v3);
  v37 = v5;
  v38 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5780, &qword_1BC901368);
  v34 = OUTLINED_FUNCTION_0(v10);
  v35 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5788, &qword_1BC901370);
  OUTLINED_FUNCTION_0(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v32 - v23;
  v25 = v1[1];
  v39 = *v1;
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8023C8();
  sub_1BC8F8CA4();
  v33 = v25;
  if ((v25 & 4) != 0)
  {
    LOBYTE(v41) = 1;
    sub_1BC80241C();
    v16 = v36;
    OUTLINED_FUNCTION_13_8();
    v29 = BYTE1(v39);
    LOBYTE(v41) = v39;
    v42 = 0;
    sub_1BC7B85DC();
    v27 = v38;
    v30 = v40;
    sub_1BC8F89F4();
    if (!v30)
    {
      LOBYTE(v41) = v29 & 1;
      v42 = 1;
      sub_1BC7B882C();
      OUTLINED_FUNCTION_8_11();
      v41 = v33 & 0xFFFFFFFFFFFFFFFBLL;
      v42 = 2;
      sub_1BC7B2348();
      OUTLINED_FUNCTION_8_11();
    }

    v28 = v37;
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1BC802470();
    OUTLINED_FUNCTION_13_8();
    v41 = v39;
    sub_1BC7B2348();
    v27 = v34;
    sub_1BC8F89F4();
    v28 = v35;
  }

  (*(v28 + 8))(v16, v27);
  return (*(v19 + 8))(v24, v17);
}

void SortedMessageStoreQuery.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if ((v1[1] & 4) != 0)
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    OUTLINED_FUNCTION_9_1();

    MEMORY[0x1BFB2A020]((v3 >> 8) & 1);
  }

  else
  {
    MEMORY[0x1BFB2A020](0);
  }

  MessageStoreQuery.hash(into:)(a1);
}

uint64_t SortedMessageStoreQuery.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_1BC8F8C04();
  if ((v1 & 4) != 0)
  {
    MEMORY[0x1BFB2A020](1);
    MessageKey.rawValue.getter();
    sub_1BC8F7CD4();

    MEMORY[0x1BFB2A020]((v2 >> 8) & 1);
  }

  else
  {
    MEMORY[0x1BFB2A020](0);
  }

  MessageStoreQuery.hash(into:)(v4);
  return sub_1BC8F8C64();
}

uint64_t SortedMessageStoreQuery.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5798, &qword_1BC901378);
  v57 = OUTLINED_FUNCTION_0(v3);
  v58 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57A0, &qword_1BC901380);
  OUTLINED_FUNCTION_0(v8);
  v56 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57A8, &unk_1BC901388);
  OUTLINED_FUNCTION_0(v15);
  v17 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1BC8023C8();
  v25 = v61;
  sub_1BC8F8C84();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v55 = v14;
  v26 = v59;
  v61 = v17;
  v27 = v22;
  v28 = sub_1BC8F8914();
  result = sub_1BC7B85D4(v28, 0);
  if (v31 == v32 >> 1)
  {
    goto LABEL_7;
  }

  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v63 = *(v30 + v31);
  sub_1BC7B85D0(v31 + 1);
  v34 = v33;
  v36 = v35;
  swift_unknownObjectRelease();
  if (v34 != v36 >> 1)
  {
LABEL_7:
    v37 = sub_1BC8F8624();
    swift_allocError();
    v39 = v38;
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0) + 48);
    *v39 = &type metadata for SortedMessageStoreQuery;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_7_4();
    v41(v27, v15);
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v63)
  {
    LOBYTE(v62) = 1;
    sub_1BC80241C();
    sub_1BC8F8814();
    v42 = v26;
    v56 = v22;
    LOBYTE(v62) = 0;
    sub_1BC7BD914();
    v43 = v57;
    sub_1BC8F88F4();
    v44 = v66;
    LOBYTE(v62) = 1;
    sub_1BC7BE118();
    sub_1BC8F88F4();
    LODWORD(v55) = v65;
    v64 = 2;
    sub_1BC7B5D7C();
    sub_1BC8F88F4();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_5_8();
    v51(v50, v43);
    v52 = OUTLINED_FUNCTION_6_8();
    v53(v52);
    v54 = 256;
    if (!v55)
    {
      v54 = 0;
    }

    v49 = v54 | v44;
    v48 = v62 | 4;
  }

  else
  {
    LOBYTE(v62) = 0;
    sub_1BC802470();
    sub_1BC8F8814();
    v42 = v26;
    sub_1BC7B5D7C();
    sub_1BC8F88F4();
    swift_unknownObjectRelease();
    v45 = OUTLINED_FUNCTION_11_9();
    v46(v45);
    OUTLINED_FUNCTION_7_4();
    v47(v22, v15);
    v48 = 0;
    v49 = v62;
  }

  *v42 = v49;
  v42[1] = v48;
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t sub_1BC80237C()
{
  v3 = *v0;
  sub_1BC8F8C04();
  SortedMessageStoreQuery.hash(into:)(v2);
  return sub_1BC8F8C64();
}

unint64_t sub_1BC8023C8()
{
  result = qword_1EDC205B0;
  if (!qword_1EDC205B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205B0);
  }

  return result;
}

unint64_t sub_1BC80241C()
{
  result = qword_1EBCF5790;
  if (!qword_1EBCF5790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF5790);
  }

  return result;
}

unint64_t sub_1BC802470()
{
  result = qword_1EDC20598;
  if (!qword_1EDC20598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20598);
  }

  return result;
}

unint64_t sub_1BC8024C8()
{
  result = qword_1EBCF57B0;
  if (!qword_1EBCF57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57B0);
  }

  return result;
}

uint64_t sub_1BC802528(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 16))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 2) & 1 | (2 * (*(a1 + 8) & 3))) ^ 7;
      if (v2 >= 6)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1BC802570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    if (a3 >= 7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (-a2 >> 1) & 3 | (4 * (-a2 & 1));
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SortedMessageStoreQuery.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SortedMessageStoreQuery.UnsortedCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SortedMessageStoreQuery.SortedCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BC802858()
{
  result = qword_1EBCF57B8;
  if (!qword_1EBCF57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57B8);
  }

  return result;
}

unint64_t sub_1BC8028B0()
{
  result = qword_1EBCF57C0;
  if (!qword_1EBCF57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57C0);
  }

  return result;
}

unint64_t sub_1BC802908()
{
  result = qword_1EBCF57C8;
  if (!qword_1EBCF57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57C8);
  }

  return result;
}

unint64_t sub_1BC802960()
{
  result = qword_1EDC20588;
  if (!qword_1EDC20588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20588);
  }

  return result;
}

unint64_t sub_1BC8029B8()
{
  result = qword_1EDC20590;
  if (!qword_1EDC20590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20590);
  }

  return result;
}

unint64_t sub_1BC802A10()
{
  result = qword_1EDC205B8;
  if (!qword_1EDC205B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205B8);
  }

  return result;
}

unint64_t sub_1BC802A68()
{
  result = qword_1EDC205C0;
  if (!qword_1EDC205C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205C0);
  }

  return result;
}

unint64_t sub_1BC802AC0()
{
  result = qword_1EDC205A0;
  if (!qword_1EDC205A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205A0);
  }

  return result;
}

unint64_t sub_1BC802B18()
{
  result = qword_1EDC205A8;
  if (!qword_1EDC205A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC205A8);
  }

  return result;
}

uint64_t sub_1BC802B9C()
{
  v1 = [v0 userInfo];
  v2 = sub_1BC8F7AA4();

  OUTLINED_FUNCTION_0_10();
  v8[0] = v4;
  v8[1] = v3;
  sub_1BC8F8544();
  sub_1BC8E715C(v7, v2);

  sub_1BC8037DC(v7);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    if (OUTLINED_FUNCTION_6_9())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BC803774(v8);
    return 0;
  }
}

id sub_1BC802CAC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_1BC8F7E34();
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1BC802D1C()
{
  v1 = [v0 userInfo];
  v2 = sub_1BC8F7AA4();

  OUTLINED_FUNCTION_0_10();
  v8[0] = v4;
  v8[1] = v3;
  sub_1BC8F8544();
  sub_1BC8E715C(v7, v2);

  sub_1BC8037DC(v7);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    if (OUTLINED_FUNCTION_6_9())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BC803774(v8);
    return 0;
  }
}

uint64_t sub_1BC802E2C()
{
  v1 = [v0 userInfo];
  v2 = sub_1BC8F7AA4();

  OUTLINED_FUNCTION_9_9();
  v8[0] = v4;
  v8[1] = v3;
  sub_1BC8F8544();
  sub_1BC8E715C(v7, v2);

  sub_1BC8037DC(v7);
  if (v8[3])
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BC803774(v8);
    return 0;
  }
}

id sub_1BC802F3C(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_10_2();
  v4 = sub_1BC80317C(v3);

  if (v4)
  {
    sub_1BC8F7E34();
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_1BC802FC0(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_10();
  *&v32 = v5;
  *(&v32 + 1) = v4;
  sub_1BC8F8544();
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  }

  else
  {
    v6 = 0;
    *(&v32 + 1) = 0;
    v33 = 0;
  }

  *&v32 = a1;
  v34 = v6;
  v7 = [v2 userInfo];
  sub_1BC8F7AA4();

  if (v6)
  {
    sub_1BC7F0E58(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_10(isUniquelyReferenced_nonNull_native, v9);
    sub_1BC8037DC(v35);
  }

  else
  {
    sub_1BC803774(&v32);
    sub_1BC83C8E8();
    if (v10)
    {
      OUTLINED_FUNCTION_4_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      v11 = OUTLINED_FUNCTION_2_9();
      v19 = OUTLINED_FUNCTION_3_12(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29);
      OUTLINED_FUNCTION_8_12(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v31[0]);
      OUTLINED_FUNCTION_7_5();
    }

    else
    {
      memset(v31, 0, sizeof(v31));
    }

    sub_1BC8037DC(v35);
    sub_1BC803774(v31);
  }

  sub_1BC8F7A94();
  OUTLINED_FUNCTION_4_9();

  [v2 setUserInfo_];
}

uint64_t sub_1BC80317C(SEL *a1)
{
  v5.super_class = MEMORY[0x1E6983220];
  v1 = objc_msgSendSuper2(&v5, *a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BC8F7E54();

  return v3;
}

void sub_1BC803200(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a3)
  {
    v6 = sub_1BC8F7E54();
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  a4(v6);
}

void sub_1BC803284(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_10();
  *&v32 = v5;
  *(&v32 + 1) = v4;
  sub_1BC8F8544();
  if (a1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
  }

  else
  {
    v6 = 0;
    *(&v32 + 1) = 0;
    v33 = 0;
  }

  *&v32 = a1;
  v34 = v6;
  v7 = [v2 userInfo];
  sub_1BC8F7AA4();

  if (v6)
  {
    sub_1BC7F0E58(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_10(isUniquelyReferenced_nonNull_native, v9);
    sub_1BC8037DC(v35);
  }

  else
  {
    sub_1BC803774(&v32);
    sub_1BC83C8E8();
    if (v10)
    {
      OUTLINED_FUNCTION_4_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      v11 = OUTLINED_FUNCTION_2_9();
      v19 = OUTLINED_FUNCTION_3_12(v11, v12, v13, v14, v15, v16, v17, v18, v27, v29);
      OUTLINED_FUNCTION_8_12(v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, v31[0]);
      OUTLINED_FUNCTION_7_5();
    }

    else
    {
      memset(v31, 0, sizeof(v31));
    }

    sub_1BC8037DC(v35);
    sub_1BC803774(v31);
  }

  sub_1BC8F7A94();
  OUTLINED_FUNCTION_4_9();

  [v2 setUserInfo_];
}

id sub_1BC80344C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  if (v7)
  {
    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_10_2();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1BC8034C8()
{
  v4.super_class = MEMORY[0x1E6983220];
  v0 = objc_msgSendSuper2(&v4, sel_notificationProviderIdentifier);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_1BC8F7C24();

  return v2;
}

void sub_1BC803544(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1BC8F7C24();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_1BC8035C4(v4, v6);
}

void sub_1BC8035C4(uint64_t a1, void *a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_9_9();
  *&v35 = v7;
  *(&v35 + 1) = v6;
  sub_1BC8F8544();
  if (a2)
  {
    v8 = MEMORY[0x1E69E6158];
    v9 = a2;
  }

  else
  {
    a1 = 0;
    v9 = 0;
    v8 = 0;
    v36 = 0;
  }

  *&v35 = a1;
  *(&v35 + 1) = v9;
  v37 = v8;
  v10 = [v3 userInfo];
  sub_1BC8F7AA4();

  if (a2)
  {
    sub_1BC7F0E58(&v35, v34);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_10(isUniquelyReferenced_nonNull_native, v12);
    sub_1BC8037DC(v38);
  }

  else
  {
    sub_1BC803774(&v35);
    sub_1BC83C8E8();
    if (v13)
    {
      OUTLINED_FUNCTION_4_9();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_5_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6270, &qword_1BC9043B0);
      v14 = OUTLINED_FUNCTION_2_9();
      v22 = OUTLINED_FUNCTION_3_12(v14, v15, v16, v17, v18, v19, v20, v21, v30, v32);
      OUTLINED_FUNCTION_8_12(v22, v23, v24, v25, v26, v27, v28, v29, v31, v33, v34[0]);
      OUTLINED_FUNCTION_7_5();
    }

    else
    {
      memset(v34, 0, sizeof(v34));
    }

    sub_1BC8037DC(v38);
    sub_1BC803774(v34);
  }

  sub_1BC8F7A94();
  OUTLINED_FUNCTION_4_9();

  [v3 setUserInfo_];
}

uint64_t sub_1BC803774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5E50, &qword_1BC8FE850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1BC803830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = sub_1BC8F6C24();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &__src[-2] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1BFB284F0](a3, a4);
  v14 = __OFADD__(v13, 200);
  v15 = v13 + 200;
  if (v14)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
  }

  v16 = malloc(v15);
  if (!v16)
  {
    __src[0] = 12;
    sub_1BC803B10(MEMORY[0x1E69E7CC0]);
    sub_1BC803C48();
    sub_1BC8F6E84();
    sub_1BC8F6C14();
    (*(v9 + 8))(v12, v8);
    swift_willThrow();
    goto LABEL_7;
  }

  bzero(&__src[1], 0xC4uLL);
  __src[0] = 1;
  sub_1BC803A84(a1, a2, &__src[34], &v22);
  v17 = MEMORY[0x1BFB284F0](a3, a4);
  if ((v17 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (HIDWORD(v17))
  {
    goto LABEL_10;
  }

  __src[1] = v17;
  memcpy(v16, __src, 0xC8uLL);
  MEMORY[0x1BFB284F0](a3, a4);
  sub_1BC8F7104();
LABEL_7:
  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

char *sub_1BC803A54(char *__src, char *__dst, uint64_t a3)
{
  if (__dst)
  {
    return strncpy(__dst, __src, a3 - __dst);
  }

  __break(1u);
  return __src;
}

char *sub_1BC803A84(uint64_t a1, uint64_t a2, char *__dst, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return sub_1BC8F8594();
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *__src = a1;
    v7 = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
    return sub_1BC803A54(v4, __dst, a4);
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    return sub_1BC8F8594();
  }

  v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return sub_1BC803A54(v4, __dst, a4);
}

unint64_t sub_1BC803B10(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57D8, &qword_1BC901BE0);
  v2 = sub_1BC8F87D4();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1BC803D34(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1BC803CBC(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1BC7F0E58(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_1BC803C48()
{
  result = qword_1EBCF57D0;
  if (!qword_1EBCF57D0)
  {
    sub_1BC8F6C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF57D0);
  }

  return result;
}

unint64_t sub_1BC803CBC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v6 = sub_1BC8F8C64();

  return sub_1BC803DA4(a1, a2, v6);
}

uint64_t sub_1BC803D34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57E0, &qword_1BC901BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC803DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1BC8F8AA4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t MessageAssetInfo.assetURL.getter()
{
  v0 = sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_29();

  return v4(v3);
}

uint64_t MessageAssetInfo.thumbnailURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MessageAssetInfo();
  v3 = OUTLINED_FUNCTION_15_7(v2);

  return sub_1BC7EB644(v3, a1);
}

uint64_t type metadata accessor for MessageAssetInfo()
{
  result = qword_1EDC1F980;
  if (!qword_1EDC1F980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MessageAssetInfo.transcriptURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MessageAssetInfo() + 24);

  return sub_1BC7EB644(v3, a1);
}

void sub_1BC803F84()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v6 = OUTLINED_FUNCTION_25(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_20_0();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v93 = &v88 - v13;
  v14 = sub_1BC8F7014();
  v15 = OUTLINED_FUNCTION_0(v14);
  v94 = v16;
  v95 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  v92 = v19 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v88 - v25;
  v27 = sub_1BC8F7264();
  v28 = OUTLINED_FUNCTION_0(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_20_0();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_11_10();
  v37 = [v2 recordUUID];
  if (!v37)
  {
    goto LABEL_9;
  }

  v38 = v37;
  sub_1BC8F7244();

  (*(v30 + 32))(v0, v35, v27);
  v39 = sub_1BC7C19F8(v2, &selRef_fileType);
  if (!v40)
  {
LABEL_8:
    v59 = OUTLINED_FUNCTION_5_10();
    v60(v59);
LABEL_9:
    v61 = type metadata accessor for MessageAssetInfo();
    v62 = v4;
    v63 = 1;
    v64 = 1;
    goto LABEL_10;
  }

  v41 = v39;
  v42 = v40;
  v91 = v11;
  v43 = MEMORY[0x1BFB2A220]();
  sub_1BC7C1A54(v41, v42, v26);

  objc_autoreleasePoolPop(v43);
  sub_1BC7C2474();
  if ((v44 & 1) == 0)
  {
    (*(v94 + 8))(v26, v95);
    goto LABEL_8;
  }

  v90 = v4;
  v45 = v95;
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v95);
  v46 = v91;
  __swift_storeEnumTagSinglePayload(v91, 1, 1, v45);
  v47 = sub_1BC7C19F8(v2, &selRef_thumbnailType);
  if (v48)
  {
    v49 = v47;
    v50 = v48;
    v51 = MEMORY[0x1BFB2A220]();
    sub_1BC7C1A54(v49, v50, v24);

    objc_autoreleasePoolPop(v51);
    LOBYTE(v100[0]) = 4;
    sub_1BC7F0C48(v100, v2);
    v52 = v90;
    if (v53)
    {
      v54 = v93;
      sub_1BC7C1744(v93, &qword_1EBCF5A20, &qword_1BC901BF0);
      (*(v94 + 32))(v54, v24, v95);
      OUTLINED_FUNCTION_10_11();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
    }

    else
    {
      (*(v94 + 8))(v24, v95);
    }

    v46 = v91;
  }

  else
  {
    v52 = v90;
  }

  v65 = sub_1BC7C19F8(v2, &selRef_transcriptType);
  if (v66)
  {
    v67 = v66;
    v90 = v65;
    v68 = sub_1BC8F7BE4();
    v69 = [v2 valueForKey_];

    if (v69)
    {
      sub_1BC8F8474();
      swift_unknownObjectRelease();
    }

    else
    {
      v98 = 0u;
      v99 = 0u;
    }

    v100[0] = v98;
    v100[1] = v99;
    v46 = v91;
    if (*(&v99 + 1))
    {
      if (swift_dynamicCast())
      {
        v72 = v96;
        v89 = v97;
        v88 = MEMORY[0x1BFB2A220]();
        v73 = v92;
        sub_1BC7C1A54(v90, v67, v92);

        objc_autoreleasePoolPop(v88);
        v74 = v89;
        sub_1BC7F0E68();
        v76 = v75;
        sub_1BC7D4C94(v72, v74);
        v77 = OUTLINED_FUNCTION_5_10();
        v78(v77);
        if (v76)
        {
          sub_1BC7C1744(v46, &qword_1EBCF5A20, &qword_1BC901BF0);
          (*(v94 + 32))(v46, v73, v95);
          OUTLINED_FUNCTION_10_11();
          __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
        }

        else
        {
          (*(v94 + 8))(v73, v95);
        }
      }

      else
      {
        v85 = OUTLINED_FUNCTION_5_10();
        v86(v85);
      }
    }

    else
    {
      v83 = OUTLINED_FUNCTION_5_10();
      v84(v83);

      sub_1BC7C1744(v100, &unk_1EBCF5E50, &qword_1BC8FE850);
    }
  }

  else
  {
    v70 = OUTLINED_FUNCTION_5_10();
    v71(v70);
  }

  (*(v94 + 32))(v52, v26, v95);
  v87 = type metadata accessor for MessageAssetInfo();
  sub_1BC805ABC(v93, v52 + *(v87 + 20));
  sub_1BC805ABC(v46, v52 + *(v87 + 24));
  OUTLINED_FUNCTION_10_11();
LABEL_10:
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v61);
  OUTLINED_FUNCTION_24();
}

uint64_t MessageAssetInfo.hasThumbnail.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = type metadata accessor for MessageAssetInfo();
  v7 = OUTLINED_FUNCTION_15_7(v6);
  sub_1BC7EB644(v7, v1);
  v8 = sub_1BC8F7014();
  OUTLINED_FUNCTION_12_7(v8);
  return v0;
}

uint64_t MessageAssetInfo.hasTranscript.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_6();
  v6 = type metadata accessor for MessageAssetInfo();
  sub_1BC7EB644(v0 + *(v6 + 24), v1);
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_12_7(v7);
  return v0;
}

void static MessageAssetInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = v1;
  v4 = v3;
  v5 = sub_1BC8F7014();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v15 = OUTLINED_FUNCTION_25(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_20_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_11_10();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57E8, &qword_1BC901BF8);
  v23 = OUTLINED_FUNCTION_4_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_20_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v51 - v30;
  if ((sub_1BC8F6FA4() & 1) == 0)
  {
    goto LABEL_22;
  }

  v52 = v20;
  v54 = v8;
  v53 = type metadata accessor for MessageAssetInfo();
  v32 = *(v53 + 20);
  v33 = *(v22 + 48);
  sub_1BC7EB644(v4 + v32, v31);
  sub_1BC7EB644(v2 + v32, &v31[v33]);
  OUTLINED_FUNCTION_3_0(v31);
  if (!v34)
  {
    sub_1BC7EB644(v31, v0);
    OUTLINED_FUNCTION_3_0(&v31[v33]);
    if (!v34)
    {
      v36 = v54;
      OUTLINED_FUNCTION_17_5();
      v37(v13, &v31[v33], v5);
      OUTLINED_FUNCTION_0_11();
      sub_1BC805C34(v38, v39);
      HIDWORD(v51) = sub_1BC8F7BC4();
      v40 = *(v36 + 8);
      v41 = OUTLINED_FUNCTION_29();
      v40(v41);
      (v40)(v0, v5);
      sub_1BC7C1744(v31, &qword_1EBCF5A20, &qword_1BC901BF0);
      if ((v51 & 0x100000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    (*(v54 + 8))(v0, v5);
LABEL_10:
    v35 = v31;
LABEL_21:
    sub_1BC7C1744(v35, &qword_1EBCF57E8, &qword_1BC901BF8);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_3_0(&v31[v33]);
  if (!v34)
  {
    goto LABEL_10;
  }

  sub_1BC7C1744(v31, &qword_1EBCF5A20, &qword_1BC901BF0);
LABEL_12:
  v42 = *(v53 + 24);
  v43 = *(v22 + 48);
  sub_1BC7EB644(v4 + v42, v28);
  sub_1BC7EB644(v2 + v42, v28 + v43);
  OUTLINED_FUNCTION_3_0(v28);
  if (!v34)
  {
    v44 = v52;
    sub_1BC7EB644(v28, v52);
    OUTLINED_FUNCTION_3_0(v28 + v43);
    if (!v45)
    {
      v46 = v54;
      (*(v54 + 32))(v13, v28 + v43, v5);
      OUTLINED_FUNCTION_0_11();
      sub_1BC805C34(v47, v48);
      sub_1BC8F7BC4();
      v49 = *(v46 + 8);
      v50 = OUTLINED_FUNCTION_29();
      v49(v50);
      (v49)(v44, v5);
      sub_1BC7C1744(v28, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_22;
    }

    (*(v54 + 8))(v44, v5);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_3_0(v28 + v43);
  if (!v34)
  {
LABEL_20:
    v35 = v28;
    goto LABEL_21;
  }

  sub_1BC7C1744(v28, &qword_1EBCF5A20, &qword_1BC901BF0);
LABEL_22:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC804AF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C52557465737361 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x69616E626D756874 && a2 == 0xEC0000004C52556CLL;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x697263736E617274 && a2 == 0xED00004C52557470)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC804C10(char a1)
{
  if (!a1)
  {
    return 0x4C52557465737361;
  }

  if (a1 == 1)
  {
    return 0x69616E626D756874;
  }

  return 0x697263736E617274;
}

uint64_t sub_1BC804C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC804AF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC804CAC(uint64_t a1)
{
  v2 = sub_1BC804ED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC804CE8(uint64_t a1)
{
  v2 = sub_1BC804ED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MessageAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57F0, &qword_1BC901C00);
  OUTLINED_FUNCTION_0(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC804ED4();
  sub_1BC8F8CA4();
  v21 = 0;
  sub_1BC8F7014();
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v12, v13);
  OUTLINED_FUNCTION_6_10();
  sub_1BC8F89F4();
  if (!v1)
  {
    v14 = type metadata accessor for MessageAssetInfo();
    v15 = *(v14 + 20);
    v20 = 1;
    OUTLINED_FUNCTION_6_10();
    sub_1BC8F8974();
    v16 = *(v14 + 24);
    v19 = 2;
    OUTLINED_FUNCTION_6_10();
    sub_1BC8F8974();
  }

  return (*(v5 + 8))(v10, v3);
}

unint64_t sub_1BC804ED4()
{
  result = qword_1EDC1F9B0;
  if (!qword_1EDC1F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F9B0);
  }

  return result;
}

void MessageAssetInfo.hash(into:)()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F7014();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_20_0();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v19, v20);
  sub_1BC8F7B64();
  v21 = type metadata accessor for MessageAssetInfo();
  v22 = OUTLINED_FUNCTION_15_7(v21);
  sub_1BC7EB644(v22, v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();
    v23(v10, v1, v2);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_20_6();
    (*(v5 + 8))(v10, v2);
  }

  sub_1BC7EB644(v0 + *(v21 + 24), v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v2) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    OUTLINED_FUNCTION_17_5();
    v24(v10, v17, v2);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_20_6();
    (*(v5 + 8))(v10, v2);
  }

  OUTLINED_FUNCTION_24();
}

void MessageAssetInfo.hashValue.getter()
{
  OUTLINED_FUNCTION_29_0();
  v1 = sub_1BC8F7014();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v11 = OUTLINED_FUNCTION_25(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_20_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1BC8F8C04();
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v20, v21);
  sub_1BC8F7B64();
  v22 = type metadata accessor for MessageAssetInfo();
  v23 = OUTLINED_FUNCTION_15_7(v22);
  sub_1BC7EB644(v23, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v1) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v4 + 32))(v9, v19, v1);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_19_8();
    (*(v4 + 8))(v9, v1);
  }

  sub_1BC7EB644(v0 + *(v22 + 24), v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v1) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v4 + 32))(v9, v16, v1);
    sub_1BC8F8C24();
    OUTLINED_FUNCTION_19_8();
    (*(v4 + 8))(v9, v1);
  }

  sub_1BC8F8C64();
  OUTLINED_FUNCTION_24();
}

uint64_t MessageAssetInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v5 = OUTLINED_FUNCTION_25(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v48 = v8 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v44 - v11;
  v12 = sub_1BC8F7014();
  v13 = OUTLINED_FUNCTION_0(v12);
  v49 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v51 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF57F8, &qword_1BC901C08);
  v20 = OUTLINED_FUNCTION_0(v19);
  v52 = v21;
  v53 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_6();
  v25 = type metadata accessor for MessageAssetInfo();
  v26 = OUTLINED_FUNCTION_4_1(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_12();
  v31 = v30 - v29;
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC804ED4();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = v50;
  v44 = v25;
  v45 = v31;
  v46 = a1;
  v56 = 0;
  OUTLINED_FUNCTION_0_11();
  sub_1BC805C34(v34, v35);
  v36 = v51;
  sub_1BC8F88F4();
  OUTLINED_FUNCTION_17_5();
  v37(v45, v36, v12);
  v55 = 1;
  sub_1BC8F8864();
  sub_1BC805ABC(v33, v45 + *(v44 + 20));
  v54 = 2;
  v38 = v48;
  sub_1BC8F8864();
  v39 = v46;
  v40 = OUTLINED_FUNCTION_13_9();
  v41(v40);
  v42 = v45;
  sub_1BC805ABC(v38, v45 + *(v44 + 24));
  sub_1BC805B2C(v42, v47);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1BC805B90(v42);
}

uint64_t sub_1BC805800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  sub_1BC8F8C04();
  sub_1BC805C34(&qword_1EBCF5CE0, MEMORY[0x1E6968FB0]);
  sub_1BC8F7B64();
  sub_1BC7EB644(v2 + *(a2 + 20), v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v4) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v5 + 32))(v8, v15, v4);
    sub_1BC8F8C24();
    sub_1BC8F7B64();
    (*(v5 + 8))(v8, v4);
  }

  sub_1BC7EB644(v2 + *(a2 + 24), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v4) == 1)
  {
    sub_1BC8F8C24();
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    sub_1BC8F8C24();
    sub_1BC8F7B64();
    (*(v5 + 8))(v8, v4);
  }

  return sub_1BC8F8C64();
}

uint64_t sub_1BC805ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC805B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageAssetInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC805B90(uint64_t a1)
{
  v2 = type metadata accessor for MessageAssetInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC805C34(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC805CA8()
{
  sub_1BC8F7014();
  if (v0 <= 0x3F)
  {
    sub_1BC805D2C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC805D2C()
{
  if (!qword_1EDC21220)
  {
    sub_1BC8F7014();
    v0 = sub_1BC8F83F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC21220);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MessageAssetInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}