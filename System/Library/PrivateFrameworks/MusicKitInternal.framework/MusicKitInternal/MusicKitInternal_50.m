uint64_t sub_1D52C793C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F38B8, &qword_1D564E6B0);
  v38 = a2;
  result = sub_1D5615E78();
  v8 = result;
  if (!*(v5 + 16))
  {
LABEL_33:

LABEL_34:
    *v3 = v8;
    return result;
  }

  v36 = v3;
  v37 = v5;
  v9 = 0;
  v10 = (v5 + 64);
  v11 = 1 << *(v5 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v5 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = result + 64;
  if (!v13)
  {
LABEL_9:
    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v18 = v10[v9];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v13 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1D54ACE48(0, (v35 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_33;
  }

  while (1)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_14:
    v19 = v16 | (v9 << 6);
    v20 = (*(v5 + 48) + 16 * v19);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(*(v5 + 56) + 8 * v19);
    if ((v38 & 1) == 0)
    {
      v24 = v20[1];
    }

    v25 = *(v8 + 40);
    sub_1D56162D8();
    sub_1D5614E28();
    result = sub_1D5616328();
    v26 = -1 << *(v8 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
    {
      break;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v8 + 48) + 16 * v29);
    *v34 = v21;
    v34[1] = v22;
    *(*(v8 + 56) + 8 * v29) = v23;
    ++*(v8 + 16);
    v5 = v37;
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  v30 = 0;
  v31 = (63 - v26) >> 6;
  while (++v28 != v31 || (v30 & 1) == 0)
  {
    v32 = v28 == v31;
    if (v28 == v31)
    {
      v28 = 0;
    }

    v30 |= v32;
    v33 = *(v15 + 8 * v28);
    if (v33 != -1)
    {
      v29 = __clz(__rbit64(~v33)) + (v28 << 6);
      goto LABEL_25;
    }
  }

LABEL_36:
  __break(1u);
  return result;
}

void sub_1D52C7BE0()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v34 = v4;
  v5 = type metadata accessor for MusicItemCache.Key();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  v33 = v12;
  v13 = *v0;
  v14 = *(*v0 + 40);
  sub_1D56162D8();
  v15 = *v3;
  v16 = v3[1];
  sub_1D5614E28();
  v35 = v5;
  v17 = *(v5 + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_31_41();
  sub_1D52CB2A0(v18, v19);
  OUTLINED_FUNCTION_284_1();
  v36 = v3;
  sub_1D5614CB8();
  sub_1D5616328();
  v20 = *(v13 + 32);
  OUTLINED_FUNCTION_168_5();
  v23 = v22 & ~v21;
  if ((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
  {
    v24 = ~v21;
    v25 = *(v8 + 72);
    while (1)
    {
      v26 = *(v13 + 48);
      OUTLINED_FUNCTION_71_18();
      sub_1D52CB248(v27 + v25 * v23, v1);
      v28 = *v1 == v15 && v1[1] == v16;
      if (v28 || (sub_1D5616168() & 1) != 0)
      {
        v29 = v1 + *(v35 + 20);
        if (sub_1D560D8C8())
        {
          break;
        }
      }

      sub_1D4E58614();
      v23 = (v23 + 1) & v24;
      if (((*(v13 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1D4E58614();
    sub_1D4E58614();
    v31 = *(v13 + 48);
    OUTLINED_FUNCTION_71_18();
    sub_1D52CB248(v32 + v25 * v23, v34);
  }

  else
  {
LABEL_10:
    v30 = *v0;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_71_18();
    sub_1D52CB248(v36, v33);
    v37 = *v0;
    sub_1D54AF324();
    *v0 = v37;
    sub_1D52C994C(v36, v34);
  }

  OUTLINED_FUNCTION_46();
}

BOOL sub_1D52C7E84(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5616328();
  v9 = *(v7 + 32);
  OUTLINED_FUNCTION_168_5();
  v12 = ~v11;
  while (1)
  {
    v13 = v10 & v12;
    v14 = (1 << (v10 & v12)) & *(v7 + 56 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      break;
    }

    v15 = (*(v7 + 48) + 16 * v13);
    v16 = *v15 == a2 && v15[1] == a3;
    if (v16 || (sub_1D5616168() & 1) != 0)
    {

      v17 = (*(v7 + 48) + 16 * v13);
      v18 = v17[1];
      *a1 = *v17;
      a1[1] = v18;

      return v14 == 0;
    }

    v10 = v13 + 1;
  }

  v19 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;

  v20 = OUTLINED_FUNCTION_93();
  sub_1D54AF56C(v20, v21, v13);
  *v3 = v23;
  *a1 = a2;
  a1[1] = a3;
  return v14 == 0;
}

void sub_1D52C7FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v101 = v25;
  v26 = sub_1D5610088();
  v27 = OUTLINED_FUNCTION_4(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_0();
  v98 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = v96 - v37;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  OUTLINED_FUNCTION_14(v107);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  v106 = v96 - v42;
  OUTLINED_FUNCTION_70_0();
  v108 = type metadata accessor for MusicItemTypedIdentifier();
  v43 = OUTLINED_FUNCTION_4(v108);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_59_0();
  v50 = (v48 - v49);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_2();
  v99 = v52;
  v100 = v20;
  v53 = *v20;
  v54 = *(*v20 + 40);
  sub_1D56162D8();
  MusicItemTypedIdentifier.hash(into:)(&v113);
  sub_1D5616328();
  v110 = v53 + 56;
  v111 = v53;
  v55 = *(v53 + 32);
  OUTLINED_FUNCTION_168_5();
  v58 = v57 & ~v56;
  v60 = *(v59 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58;
  v112 = v24;
  if (v60)
  {
    v103 = v38;
    v105 = v26;
    v109 = ~v56;
    v62 = *v24;
    v61 = v24[1];
    v96[1] = v29 + 32;
    v102 = (v29 + 8);
    v63 = *(v45 + 72);
    v104 = v63;
    do
    {
      v64 = *(v111 + 48);
      v65 = v63 * v58;
      OUTLINED_FUNCTION_70_19();
      sub_1D52CB248(v66 + v63 * v58, v50);
      v67 = *v50 == v62 && v50[1] == v61;
      if (v67 || (sub_1D5616168() & 1) != 0)
      {
        v68 = v50[2];
        v69 = v112[2];
        v70 = *(v68 + 16);
        if (v70 == *(v69 + 16))
        {
          if (v70)
          {
            v71 = v68 == v69;
          }

          else
          {
            v71 = 1;
          }

          if (!v71)
          {
            v72 = (v68 + 40);
            v73 = (v69 + 40);
            while (v70)
            {
              v74 = *(v72 - 1) == *(v73 - 1) && *v72 == *v73;
              if (!v74 && (sub_1D5616168() & 1) == 0)
              {
                goto LABEL_32;
              }

              v72 += 2;
              v73 += 2;
              if (!--v70)
              {
                goto LABEL_21;
              }
            }

            __break(1u);
            return;
          }

LABEL_21:
          v75 = *(v108 + 24);
          if (sub_1D560D8C8())
          {
            v76 = *(v108 + 28);
            v77 = *(v107 + 48);
            v78 = v106;
            sub_1D52CB1F8(v50 + v76, v106, &qword_1EC7EA358, &unk_1D561DF50);
            v79 = v112 + v76;
            v80 = v78;
            sub_1D52CB1F8(v79, v78 + v77, &qword_1EC7EA358, &unk_1D561DF50);
            v81 = v78;
            v82 = v105;
            OUTLINED_FUNCTION_57(v81, 1, v105);
            if (v67)
            {
              OUTLINED_FUNCTION_57(v80 + v77, 1, v82);
              v63 = v104;
              if (v67)
              {
                sub_1D4E50004(v80, &qword_1EC7EA358, &unk_1D561DF50);
LABEL_35:
                sub_1D4E58614();
                sub_1D4E58614();
                v94 = *(v111 + 48);
                OUTLINED_FUNCTION_70_19();
                sub_1D52CB248(v95 + v65, v101);
                goto LABEL_34;
              }

              goto LABEL_30;
            }

            v83 = v80;
            v84 = v80;
            v85 = v103;
            sub_1D52CB1F8(v83, v103, &qword_1EC7EA358, &unk_1D561DF50);
            OUTLINED_FUNCTION_57(v84 + v77, 1, v82);
            if (v86)
            {
              (*v102)(v85, v82);
              v80 = v84;
              v63 = v104;
LABEL_30:
              sub_1D4E50004(v80, &qword_1EC7EB208, &qword_1D562F5E0);
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_195(&a14);
            v87 = v98;
            v88(v98, v84 + v77, v82);
            OUTLINED_FUNCTION_159_7();
            sub_1D52CB2A0(&qword_1EDD53350, v89);
            v97 = sub_1D5614D18();
            v90 = *v102;
            (*v102)(v87, v82);
            v90(v103, v82);
            sub_1D4E50004(v84, &qword_1EC7EA358, &unk_1D561DF50);
            v63 = v104;
            if (v97)
            {
              goto LABEL_35;
            }
          }
        }
      }

LABEL_32:
      sub_1D4E58614();
      v58 = (v58 + 1) & v109;
    }

    while (((*(v110 + ((v58 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v58) & 1) != 0);
  }

  v91 = v100;
  v92 = *v100;
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_70_19();
  v93 = v112;
  sub_1D52CB248(v112, v99);
  v113 = *v91;
  sub_1D54AF6B4();
  *v91 = v113;
  sub_1D52C994C(v93, v101);
LABEL_34:
  OUTLINED_FUNCTION_46();
}

BOOL sub_1D52C85A4(char *a1, char *a2)
{
  v24 = a1;
  v4 = sub_1D560D838();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_1D52CB2A0(&qword_1EDD53DC0, MEMORY[0x1E6974F58]);
  v29 = a2;
  v11 = sub_1D5614CA8();
  v26 = v9;
  v27 = v9 + 56;
  v12 = ~(-1 << *(v9 + 32));
  v28 = v5 + 16;
  v25 = v5 + 8;
  while (1)
  {
    v13 = v11 & v12;
    v14 = (1 << (v11 & v12)) & *(v27 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      v19 = v23;
      v20 = *v23;
      swift_isUniquelyReferenced_nonNull_native();
      v21 = v29;
      (*(v5 + 16))(v8, v29, v4);
      v30 = *v19;
      sub_1D54AFC3C();
      *v19 = v30;
      (*(v5 + 32))(v24, v21, v4);
      return v14 == 0;
    }

    v15 = *(v5 + 72) * v13;
    v16 = *(v5 + 16);
    v16(v8, *(v26 + 48) + v15, v4);
    sub_1D52CB2A0(&qword_1EDD53DB8, MEMORY[0x1E6974F58]);
    v17 = sub_1D5614D18();
    v18 = *(v5 + 8);
    v18(v8, v4);
    if (v17)
    {
      break;
    }

    v11 = v13 + 1;
  }

  v18(v29, v4);
  v16(v24, *(v26 + 48) + v15, v4);
  return v14 == 0;
}

uint64_t sub_1D52C886C()
{
  OUTLINED_FUNCTION_239_1();
  if (v5)
  {
    v8 = *(v4 + 40);
    sub_1D56162D8();
    MEMORY[0x1DA6EC0D0](v2);
    v9 = sub_1D5616328();
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        v14 = *v3;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_300_0();
        sub_1D54AFE6C();
        *v3 = v15;
        goto LABEL_13;
      }

      if (*(*(v4 + 48) + 8 * v11) == v2)
      {
        break;
      }

      v9 = v11 + 1;
    }

    *v0 = *(*(v4 + 48) + 8 * v11);

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_294_0();

    v6 = sub_1D5615AA8();

    if (v6)
    {

      _s11TransactionCMa();
      swift_dynamicCast();
      result = 0;
      *v0 = v15;
    }

    else
    {
      result = sub_1D5615A98();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v12 = sub_1D52C94A4(v1, result + 1);
        OUTLINED_FUNCTION_287_1(v12);
        if (!(!v5 & v13))
        {
          sub_1D54ADD54();
          v1 = v15;
        }

        sub_1D52C986C();

        *v3 = v1;
LABEL_13:
        *v0 = v2;
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D52C8A20()
{
  OUTLINED_FUNCTION_239_1();
  if (v16)
  {
    v7 = *(v4 + 40);
    sub_1D56162D8();
    v8 = *(v2 + 16);
    v9 = *(v2 + 24);
    sub_1D5614E28();
    sub_1D5616328();
    v10 = *(v4 + 32);
    OUTLINED_FUNCTION_168_5();
    v13 = ~v12;
    while (1)
    {
      v14 = v11 & v13;
      if (((*(v4 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
      {
        break;
      }

      v15 = *(*(v4 + 48) + 8 * v14);
      v16 = *(v15 + 16) == *(v2 + 16) && *(v15 + 24) == *(v2 + 24);
      if (v16 || (sub_1D5616168() & 1) != 0)
      {

        *v0 = *(*(v4 + 48) + 8 * v14);

        return 0;
      }

      v11 = v14 + 1;
    }

    v19 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_300_0();
    sub_1D54AFF6C();
    *v3 = v20;
  }

  else
  {
    OUTLINED_FUNCTION_294_0();

    v5 = sub_1D5615AA8();

    if (v5)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
      swift_dynamicCast();
      result = 0;
      *v0 = v20;
      return result;
    }

    result = sub_1D5615A98();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v17 = sub_1D52C9678(v1, result + 1);
    OUTLINED_FUNCTION_287_1(v17);
    if (!(!v16 & v18))
    {
      sub_1D54ADEA4();
      v1 = v20;
    }

    sub_1D52C98DC();

    *v3 = v1;
  }

  *v0 = v2;
  return 1;
}

void sub_1D52C8BFC()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v39 = v4;
  v5 = _s15PersistentEntryVMa();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_2();
  v37 = v12;
  v38 = v0;
  v13 = *v0;
  v14 = *(*v0 + 40);
  sub_1D56162D8();
  sub_1D560D838();
  OUTLINED_FUNCTION_161_6();
  sub_1D52CB2A0(v15, v16);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  v17 = *(v5 + 20);
  sub_1D560D9A8();
  OUTLINED_FUNCTION_31_41();
  sub_1D52CB2A0(v18, v19);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  v20 = *(v5 + 24);
  sub_1D560C328();
  OUTLINED_FUNCTION_158_7();
  sub_1D52CB2A0(v21, v22);
  OUTLINED_FUNCTION_284_1();
  sub_1D5614CB8();
  sub_1D5616328();
  v23 = *(v13 + 32);
  OUTLINED_FUNCTION_168_5();
  v26 = v25 & ~v24;
  if (((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
LABEL_9:
    v34 = *v38;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_68_21();
    sub_1D52CB248(v3, v37);
    v40 = *v38;
    sub_1D54B0098();
    *v38 = v40;
    sub_1D52C994C(v3, v39);
    goto LABEL_10;
  }

  v27 = ~v24;
  v28 = *(v8 + 72);
  while (1)
  {
    v29 = *(v13 + 48);
    OUTLINED_FUNCTION_68_21();
    sub_1D52CB248(v30 + v28 * v26, v1);
    if ((sub_1D560D6E8() & 1) == 0 || (v31 = v1 + *(v5 + 20), (sub_1D560D8C8() & 1) == 0))
    {
      OUTLINED_FUNCTION_67_27();
      sub_1D4E58614();
      goto LABEL_8;
    }

    v32 = v1 + *(v5 + 24);
    v33 = sub_1D560C2E8();
    OUTLINED_FUNCTION_67_27();
    sub_1D4E58614();
    if (v33)
    {
      break;
    }

LABEL_8:
    v26 = (v26 + 1) & v27;
    if (((*(v13 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_67_27();
  sub_1D4E58614();
  v35 = *(v13 + 48);
  OUTLINED_FUNCTION_68_21();
  sub_1D52CB248(v36 + v28 * v26, v39);
LABEL_10:
  OUTLINED_FUNCTION_46();
}

BOOL sub_1D52C8F38(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a2);
  v9 = sub_1D5616328();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    if (*(*(v7 + 48) + v11) == a2)
    {
      goto LABEL_6;
    }

    v9 = v11 + 1;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v3;
  a3(a2, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v16;
LABEL_6:
  result = v12 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_1D52C9030(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1D56162D8();
  sub_1D4F0B2F8(v16, a2);
  result = sub_1D5616328();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(a2 + 16);
    while (1)
    {
      v12 = *(*(v5 + 48) + 8 * v9);
      if (*(v12 + 16) == v11)
      {
        break;
      }

LABEL_11:
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (!v11 || v12 == a2)
    {
LABEL_13:

      *a1 = *(*(v5 + 48) + 8 * v9);

      return 0;
    }

    else
    {
      v13 = 32;
      v14 = *(a2 + 16);
      while (v14)
      {
        if (*(v12 + v13) != *(a2 + v13))
        {
          goto LABEL_11;
        }

        ++v13;
        if (!--v14)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_12:
    v15 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v2;

    sub_1D54B09A4();
    *v2 = v16[0];
    *a1 = a2;
    return 1;
  }

  return result;
}

uint64_t sub_1D52C918C(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v4 = type metadata accessor for MusicSuggestedSongsEntry();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v26 - v10;
  v28 = v2;
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1D56162D8();
  sub_1D5613838();
  sub_1D52CB2A0(&qword_1EC7EB458, MEMORY[0x1E6976BE8]);
  sub_1D5614CB8();
  v30 = v4;
  v13 = (a2 + *(v4 + 20));
  v14 = *v13;
  v15 = v13[1];
  sub_1D5614E28();
  v16 = sub_1D5616328();
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  if ((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    v20 = *(v5 + 72);
    while (1)
    {
      sub_1D52CB248(*(v11 + 48) + v20 * v18, v9);
      if (sub_1D56137A8())
      {
        v21 = &v9[*(v30 + 20)];
        v22 = *v21 == v14 && *(v21 + 1) == v15;
        if (v22 || (sub_1D5616168() & 1) != 0)
        {
          break;
        }
      }

      sub_1D4E58614();
      v18 = (v18 + 1) & v19;
      if (((*(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_1D4E58614();
    sub_1D4E58614();
    sub_1D52CB248(*(v11 + 48) + v20 * v18, v29);
    return 0;
  }

  else
  {
LABEL_10:
    v23 = v28;
    v24 = *v28;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D52CB248(a2, v27);
    v31 = *v23;
    sub_1D54B0CBC();
    *v23 = v31;
    sub_1D52C994C(a2, v29);
    return 1;
  }
}

uint64_t sub_1D52C94A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED8, &qword_1D5628A58);
    OUTLINED_FUNCTION_0_6();
    v2 = sub_1D5615B28();
    v15 = v2;
    sub_1D5615A58();
    while (1)
    {
      if (!sub_1D5615AC8())
      {

        return v2;
      }

      _s11TransactionCMa();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D54ADD54();
      }

      v2 = v15;
      v3 = *(v15 + 40);
      sub_1D56162D8();
      MEMORY[0x1DA6EC0D0]();
      result = sub_1D5616328();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D52C9678(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDED0, &qword_1D5628A50);
    v2 = sub_1D5615B28();
    v17 = v2;
    sub_1D5615A58();
    while (1)
    {
      if (!sub_1D5615AC8())
      {

        return v2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1530, &unk_1D5668460);
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D54ADEA4();
        v2 = v17;
      }

      v3 = *(v2 + 40);
      sub_1D56162D8();
      v4 = *(v16 + 16);
      v5 = *(v16 + 24);
      sub_1D5614E28();
      result = sub_1D5616328();
      v7 = v2 + 56;
      v8 = -1 << *(v2 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(v2 + 56 + 8 * (v9 >> 6))) == 0)
      {
        break;
      }

      v11 = __clz(__rbit64((-1 << v9) & ~*(v2 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v2 + 48) + 8 * v11) = v16;
      ++*(v2 + 16);
    }

    v12 = 0;
    v13 = (63 - v8) >> 6;
    while (++v10 != v13 || (v12 & 1) == 0)
    {
      v14 = v10 == v13;
      if (v10 == v13)
      {
        v10 = 0;
      }

      v12 |= v14;
      v15 = *(v7 + 8 * v10);
      if (v15 != -1)
      {
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

unint64_t sub_1D52C986C()
{
  OUTLINED_FUNCTION_206();
  v3 = *(v2 + 40);
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  sub_1D5616328();
  v4 = *(v0 + 32);
  OUTLINED_FUNCTION_168_5();
  v5 = sub_1D5615A28();
  return OUTLINED_FUNCTION_151_8(v5);
}

unint64_t sub_1D52C98DC()
{
  OUTLINED_FUNCTION_206();
  v3 = *(v2 + 40);
  sub_1D56162D8();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1D5614E28();
  sub_1D5616328();
  v6 = *(v0 + 32);
  OUTLINED_FUNCTION_168_5();
  v7 = sub_1D5615A28();
  return OUTLINED_FUNCTION_151_8(v7);
}

uint64_t sub_1D52C994C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

unint64_t sub_1D52C99A4()
{
  result = qword_1EDD5D070;
  if (!qword_1EDD5D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE30, &unk_1D561DC30);
    sub_1D52C9A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D070);
  }

  return result;
}

unint64_t sub_1D52C9A28()
{
  result = qword_1EDD5E288[0];
  if (!qword_1EDD5E288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD5E288);
  }

  return result;
}

uint64_t sub_1D52C9A9C()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_206();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_132_10(v7);
  OUTLINED_FUNCTION_276_1();
  OUTLINED_FUNCTION_25_3();

  return sub_1D52BF1E4(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D52C9B3C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_206();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_132_10(v4);

  return sub_1D52C6A60(v6, v7, v8, v2);
}

uint64_t sub_1D52C9BD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_260_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

unint64_t sub_1D52C9C24()
{
  result = qword_1EC7F38A0;
  if (!qword_1EC7F38A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F38A0);
  }

  return result;
}

uint64_t sub_1D52C9C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15B0, &qword_1D5640980);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v147 - v6;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  v8 = *(*(v155 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v155);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v147 - v12;
  v14 = _s13PersistedDateVMa();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v148 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v149 = &v147 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v147 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v150 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v156 = &v147 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v160 = &v147 - v27;
  v28 = _s10DescriptorVMa();
  v166 = *(v28 - 1);
  v29 = *(v166 + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v157 = (&v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x1EEE9AC00](v30);
  v182 = &v147 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v178 = (&v147 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = (&v147 - v37);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v163 = &v147 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v184 = (&v147 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v152 = &v147 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v159 = (&v147 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v180 = (&v147 - v48);
  MEMORY[0x1EEE9AC00](v47);
  v165 = &v147 - v49;
  v177 = sub_1D52C650C(a1);
  sub_1D52CB2A0(qword_1EDD59BE8, _s10DescriptorVMa);
  v158 = sub_1D5614BD8();
  v50 = *(a2 + 56);
  v172 = a2 + 56;
  v51 = 1 << *(a2 + 32);
  if (v51 < 64)
  {
    v52 = ~(-1 << v51);
  }

  else
  {
    v52 = -1;
  }

  v53 = v52 & v50;
  v171 = (v51 + 63) >> 6;
  v170 = a2;

  v54 = 0;
  v185 = MEMORY[0x1E69E7CD0];
  v181 = MEMORY[0x1E69E7CD0];
  v164 = v7;
  v151 = v11;
  v167 = v13;
  v173 = v14;
  v153 = v28;
  while (1)
  {
    if (!v53)
    {
      while (1)
      {
        v55 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          break;
        }

        if (v55 >= v171)
        {

          sub_1D52B5C4C(v177);
          return v185;
        }

        v53 = *(v172 + 8 * v55);
        ++v54;
        if (v53)
        {
          v54 = v55;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_10:
    v56 = *(v170 + 48);
    v186 = *(v166 + 72);
    v57 = v165;
    sub_1D52CB248(v56 + v186 * (__clz(__rbit64(v53)) | (v54 << 6)), v165);
    v58 = v57;
    v59 = v180;
    sub_1D52C994C(v58, v180);
    v61 = *v59;
    v60 = v59[1];
    v62 = v177;
    v63 = *(v177 + 16);
    v175 = v60;
    v176 = v61;
    if (!v63 || (v64 = sub_1D4F15A78(v61, v60), (v65 & 1) == 0))
    {
      v169 = v53;
      v97 = v184;
      sub_1D52CB248(v180, v184);
      v98 = v185[5];
      sub_1D56162D8();
      v99 = *v97;
      v100 = v97[1];
      sub_1D5614E28();
      v101 = v28[5];
      v102 = sub_1D560C328();
      sub_1D52CB2A0(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
      sub_1D5614CB8();
      LODWORD(v183) = *(v97 + v28[6]);
      sub_1D56162F8();
      v179 = *(v97 + v28[7]);
      MEMORY[0x1DA6EC0D0]();
      v174 = *(v97 + v28[8]);
      MEMORY[0x1DA6EC0D0]();
      v168 = v28[9];
      v162 = v102;
      sub_1D5614CB8();
      v161 = v28[10];
      v103 = v160;
      sub_1D52CB1F8(v97 + v161, v160, &qword_1EC7EB470, &qword_1D561F3D0);
      if (__swift_getEnumTagSinglePayload(v103, 1, v173) == 1)
      {
        sub_1D56162F8();
      }

      else
      {
        sub_1D52C994C(v103, v154);
        sub_1D56162F8();
        sub_1D5614CB8();
        sub_1D4E58614();
      }

      v104 = sub_1D5616328();
      v105 = v185 + 7;
      v106 = -1 << *(v185 + 32);
      v107 = v104 & ~v106;
      v53 = v169;
      if (((*(v185 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v107) & 1) == 0)
      {
LABEL_58:
        v118 = v185;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1D52CB248(v184, v163);
        v187 = v118;
        sub_1D54B0500();
        v185 = v187;
        goto LABEL_59;
      }

      v108 = ~v106;
      while (2)
      {
        sub_1D52CB248(v185[6] + v107 * v186, v38);
        v109 = *v38 == v99 && v38[1] == v100;
        if (v109 || (sub_1D5616168() & 1) != 0)
        {
          v110 = v38 + v28[5];
          if ((sub_1D560C2E8() & 1) != 0 && v183 == *(v38 + v28[6]) && *(v38 + v28[7]) == v179 && *(v38 + v28[8]) == v174)
          {
            v111 = v38 + v28[9];
            if (sub_1D560C2E8())
            {
              v112 = v28[10];
              v162 = *(v155 + 48);
              v113 = v167;
              sub_1D52CB1F8(v38 + v112, v167, &qword_1EC7EB470, &qword_1D561F3D0);
              sub_1D52CB1F8(v184 + v161, v113 + v162, &qword_1EC7EB470, &qword_1D561F3D0);
              v114 = v113;
              v115 = v173;
              if (__swift_getEnumTagSinglePayload(v114, 1, v173) == 1)
              {
                EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v167[v162], 1, v115);
                v28 = v153;
                if (EnumTagSinglePayload == 1)
                {
                  sub_1D4E50004(v167, &qword_1EC7EB470, &qword_1D561F3D0);
                  goto LABEL_34;
                }

LABEL_55:
                sub_1D4E50004(v167, &qword_1EC7EB478, &unk_1D5623530);
              }

              else
              {
                v117 = v167;
                sub_1D52CB1F8(v167, v156, &qword_1EC7EB470, &qword_1D561F3D0);
                if (__swift_getEnumTagSinglePayload(v117 + v162, 1, v173) == 1)
                {
                  sub_1D4E58614();
                  v28 = v153;
                  goto LABEL_55;
                }

                sub_1D52C994C(&v167[v162], v149);
                LODWORD(v162) = sub_1D560C2E8();
                sub_1D4E58614();
                sub_1D4E58614();
                sub_1D4E50004(v167, &qword_1EC7EB470, &qword_1D561F3D0);
                v28 = v153;
                if (v162)
                {
                  goto LABEL_34;
                }
              }
            }
          }
        }

        sub_1D4E58614();
        v107 = (v107 + 1) & v108;
        if (((*(v105 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
        {
          goto LABEL_58;
        }

        continue;
      }
    }

    v66 = v152;
    sub_1D52CB248(*(v62 + 56) + v64 * v186, v152);
    v67 = v159;
    sub_1D52C994C(v66, v159);
    v68 = v28[7];
    v69 = *(v180 + v68);
    v70 = *(v67 + v68);
    v72 = *v67;
    v71 = v67[1];
    v73 = v28[5];
    v174 = v69;
    if (v69 != v70)
    {
      break;
    }

    v74 = v178;
    v183 = v73;
    sub_1D52CB248(v67 + v73, v178 + v73);
    v75 = *(v67 + v28[6]);
    v76 = v28[9];
    v169 = *(v67 + v28[8]);
    v168 = v76;
    sub_1D52CB248(v67 + v76, v74 + v76);
    v77 = v28[10];
    v161 = v77;
    sub_1D52CB1F8(v67 + v77, v74 + v77, &qword_1EC7EB470, &qword_1D561F3D0);
    *v74 = v72;
    v74[1] = v71;
    v78 = v28[6];
    LODWORD(v179) = v75;
    *(v74 + v78) = v75;
    *(v74 + v28[7]) = v174;
    *(v74 + v28[8]) = v169;
    v79 = v181;
    v80 = v181[5];
    sub_1D56162D8();

    sub_1D52D50B4();
    v81 = sub_1D5616328();
    v82 = v79 + 7;
    v83 = -1 << *(v79 + 32);
    v84 = v81 & ~v83;
    if (((*(v82 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
    {
LABEL_33:
      v96 = v181;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1D52CB248(v178, v163);
      v187 = v96;
      sub_1D54B0500();
      v181 = v187;
      goto LABEL_34;
    }

    v85 = ~v83;
    v86 = v182;
    while (1)
    {
      sub_1D52CB248(v181[6] + v84 * v186, v86);
      if (*v86 != v72 || v86[1] != v71)
      {
        v88 = sub_1D5616168();
        v86 = v182;
        if ((v88 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v89 = v86 + v28[5];
      v90 = sub_1D560C2E8();
      v86 = v182;
      if ((v90 & 1) == 0)
      {
        goto LABEL_32;
      }

      if (v179 != v182[v28[6]])
      {
        goto LABEL_32;
      }

      if (*&v182[v28[7]] != v174)
      {
        goto LABEL_32;
      }

      if (*&v182[v28[8]] != v169)
      {
        goto LABEL_32;
      }

      v91 = &v182[v28[9]];
      v92 = sub_1D560C2E8();
      v86 = v182;
      if ((v92 & 1) == 0)
      {
        goto LABEL_32;
      }

      v93 = v28[10];
      v162 = *(v155 + 48);
      v94 = v151;
      sub_1D52CB1F8(&v182[v93], v151, &qword_1EC7EB470, &qword_1D561F3D0);
      sub_1D52CB1F8(v178 + v161, v94 + v162, &qword_1EC7EB470, &qword_1D561F3D0);
      if (__swift_getEnumTagSinglePayload(v94, 1, v173) == 1)
      {
        break;
      }

      v95 = v151;
      sub_1D52CB1F8(v151, v150, &qword_1EC7EB470, &qword_1D561F3D0);
      if (__swift_getEnumTagSinglePayload(v95 + v162, 1, v173) == 1)
      {
        sub_1D4E58614();
        goto LABEL_30;
      }

      sub_1D52C994C(&v151[v162], v148);
      LODWORD(v162) = sub_1D560C2E8();
      sub_1D4E58614();
      sub_1D4E58614();
      sub_1D4E50004(v151, &qword_1EC7EB470, &qword_1D561F3D0);
      v86 = v182;
      if (v162)
      {
        goto LABEL_75;
      }

LABEL_32:
      sub_1D4E58614();
      v84 = (v84 + 1) & v85;
      if (((*(v82 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (__swift_getEnumTagSinglePayload(&v151[v162], 1, v173) != 1)
    {
LABEL_30:
      sub_1D4E50004(v151, &qword_1EC7EB478, &unk_1D5623530);
      v86 = v182;
      goto LABEL_32;
    }

    sub_1D4E50004(v151, &qword_1EC7EB470, &qword_1D561F3D0);
LABEL_75:
    sub_1D4E58614();
LABEL_34:
    sub_1D4E58614();
LABEL_59:
    v119 = v177;
LABEL_60:
    v121 = v175;
    v120 = v176;
    sub_1D4E58614();
    v122 = sub_1D4F15A78(v120, v121);
    if (v123)
    {
      v124 = v122;
      swift_isUniquelyReferenced_nonNull_native();
      v187 = v119;
      v125 = *(v119 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F38C0, &qword_1D564E6F8);
      sub_1D5615D78();
      v126 = v187;
      v127 = *(v187[6] + 16 * v124 + 8);

      v128 = v164;
      sub_1D52C994C(*(v126 + 56) + v124 * v186, v164);
      sub_1D4F53BAC();
      v177 = v126;
      sub_1D5615D98();
      v129 = 0;
    }

    else
    {
      v129 = 1;
      v128 = v164;
    }

    v53 &= v53 - 1;
    __swift_storeEnumTagSinglePayload(v128, v129, 1, v28);
    sub_1D4E50004(v128, &qword_1EC7F15B0, &qword_1D5640980);
    sub_1D4E58614();
  }

  v169 = v70;
  v130 = v69;
  v131 = v157;
  sub_1D52CB248(v67 + v73, v157 + v73);
  LODWORD(v183) = *(v67 + v28[6]);
  v132 = v28[9];
  v179 = *(v67 + v28[8]);
  sub_1D52CB248(v67 + v132, v131 + v132);
  sub_1D52CB1F8(v67 + v28[10], v131 + v28[10], &qword_1EC7EB470, &qword_1D561F3D0);
  *v131 = v72;
  v131[1] = v71;
  *(v131 + v28[6]) = v183;
  *(v131 + v28[7]) = v130;
  *(v131 + v28[8]) = v179;

  v133 = v158;
  swift_isUniquelyReferenced_nonNull_native();
  v187 = v133;
  v134 = sub_1D4F0DD88(v131);
  if (__OFADD__(*(v133 + 16), (v135 & 1) == 0))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v136 = v134;
  v137 = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F38C8, &unk_1D564E700);
  if ((sub_1D5615D78() & 1) == 0)
  {
    v119 = v177;
    v140 = v174;
LABEL_69:
    v141 = v169 ^ v140;
    v142 = v187;
    v158 = v187;
    if (v137)
    {
      *(v187[7] + 8 * v136) = v141;
    }

    else
    {
      v187[(v136 >> 6) + 8] |= 1 << v136;
      sub_1D52CB248(v157, v142[6] + v136 * v186);
      *(v142[7] + 8 * v136) = v141;
      v143 = v142[2];
      v144 = __OFADD__(v143, 1);
      v145 = v143 + 1;
      if (v144)
      {
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      v142[2] = v145;
    }

    sub_1D4E58614();
    goto LABEL_60;
  }

  v138 = sub_1D4F0DD88(v157);
  v119 = v177;
  v140 = v174;
  if ((v137 & 1) == (v139 & 1))
  {
    v136 = v138;
    goto LABEL_69;
  }

LABEL_80:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D52CB0F4()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_206();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 16) = v7;
  *v7 = v8;
  OUTLINED_FUNCTION_132_10(v7);
  OUTLINED_FUNCTION_276_1();
  OUTLINED_FUNCTION_25_3();

  return sub_1D52B9B58(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D52CB194(uint64_t a1, uint64_t a2)
{
  v4 = _s10DescriptorVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52CB1F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_260_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D52CB248(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v5 = v4(v3);
  OUTLINED_FUNCTION_14(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_71();
  v9(v8);
  return a2;
}

uint64_t sub_1D52CB2A0(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MusicDownloadedSongCatalogStoreUpdater.ServerError(_BYTE *result, int a2, int a3)
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

void sub_1D52CB3BC()
{
  sub_1D560C328();
  if (v0 <= 0x3F)
  {
    sub_1D52CB448();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D52CB448()
{
  if (!qword_1EDD52578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB730, &qword_1D5621A30);
    v0 = sub_1D5616338();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52578);
    }
  }
}

unint64_t sub_1D52CB4D0()
{
  result = qword_1EC7F38F0;
  if (!qword_1EC7F38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F38F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_23_54@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 1040) = a2;
  *(v3 + 1032) = v2;
  v4 = *(*(result + 48) + (__clz(__rbit64(v2)) | (a2 << 6)));
  return result;
}

uint64_t OUTLINED_FUNCTION_33_43(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 816);
  return result;
}

uint64_t OUTLINED_FUNCTION_51_29()
{
  v2 = v0[84];
  v3 = v0[83];
  v8 = v0[82];
  v6 = v0[86];
  v7 = v0[81];
  v4 = v0[80];

  return _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_65_25()
{
  v4 = *(v1 + 840);
  v5 = *(v1 + 824);

  return sub_1D52CB1F8(v4, v5, v0, v2);
}

uint64_t OUTLINED_FUNCTION_66_20()
{
  v4 = *(v1 + 840);
  v5 = *(v1 + 808);

  return sub_1D52CB1F8(v4, v5, v0, v2);
}

void OUTLINED_FUNCTION_74_21()
{
  v1 = v0[120];
  v2 = v0[111];
  v3 = v0[105];
  v4 = v0[97];
}

uint64_t OUTLINED_FUNCTION_78_20(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

void OUTLINED_FUNCTION_93_15()
{
  v1 = *(v0 + 888);
  v3 = *v1;
  v2 = v1[1];
}

uint64_t OUTLINED_FUNCTION_119_9()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_120_9(uint64_t result)
{
  *(v1 + 960) = result;
  v2 = *(result + 32);
  *(v1 + 1161) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(result + 56);
  return result;
}

uint64_t OUTLINED_FUNCTION_121_9(uint64_t a1)
{
  v5 = *(v3 + 696);
  v6 = *(v3 + 688);

  return sub_1D4E50004(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_122_7(uint64_t a1)
{
  v5 = *(v2 + 792);

  return sub_1D52CB1F8(a1, v5, v1, v3);
}

uint64_t OUTLINED_FUNCTION_124_8(uint64_t a1)
{
  v5 = *(v2 + 816);

  return sub_1D52CB1F8(a1, v5, v1, v3);
}

uint64_t OUTLINED_FUNCTION_125_10(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *v10 = a1;

  return sub_1D4E6835C(v12, v11, va);
}

uint64_t OUTLINED_FUNCTION_133_7(uint64_t a1)
{
  *(a1 + 8) = sub_1D52BAB30;
  v3 = *(v2 + 88);
  v4 = *(v2 + 96);
  return v1;
}

uint64_t OUTLINED_FUNCTION_136_9()
{
  v2 = *(v0 + 584);

  return sub_1D5613768();
}

uint64_t OUTLINED_FUNCTION_140_10()
{

  return sub_1D4E50004(v1, v0, v2);
}

uint64_t OUTLINED_FUNCTION_142_9()
{
  v3 = v0[63];
  v2 = v0[64];
  v4 = v0[60];
  v5 = v0[57];
  v7 = v0[54];
  v6 = v0[55];
  v8 = v0[51];
  v10 = v0[47];
  v9 = v0[48];
  v12 = v0[46];
  v13 = v0[43];
  v14 = v0[40];
  v15 = v0[39];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[34];
  v19 = v0[33];
  v20 = v0[32];
  v21 = v0[31];
}

uint64_t OUTLINED_FUNCTION_150_10(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2050;
  *(v2 + 14) = *(v1 + 16);
}

unint64_t OUTLINED_FUNCTION_151_8(unint64_t result)
{
  *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v1 + 48) + 8 * result) = v3;
  ++*(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_152_8()
{
  v2 = v0[51];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[46];
  v7 = v0[43];
  v8 = v0[40];
  v9 = v0[39];
  v10 = v0[38];
  v11 = v0[35];
  v12 = v0[34];
  v13 = v0[33];
  v14 = v0[32];
  v15 = v0[31];
}

void *OUTLINED_FUNCTION_163_7()
{

  return memcpy((v0 + 192), (v0 + 16), 0xB0uLL);
}

uint64_t OUTLINED_FUNCTION_164_6()
{
  v2 = *(v0 + 672);

  return sub_1D5613648();
}

uint64_t OUTLINED_FUNCTION_165_7()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_167_4()
{
  *(v1 + 14) = v2;
  *(v1 + 22) = v0;

  return sub_1D52D49CC(v3);
}

uint64_t OUTLINED_FUNCTION_172_5()
{
  v4 = v0[83];
  *(v2 - 120) = v0[82];
  v8 = v0[81];
  *(v2 - 104) = v1;
  v5 = v0[80];
  v7 = v0[76];
  *(v2 - 128) = v0[74];

  return _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_187_2()
{
  v7 = v0[86];
  v3 = v0[83];
  v4 = v0[82];
  *(v1 - 128) = v0[84];
  *(v1 - 120) = v4;
  v8 = v0[81];
  v5 = v0[80];

  return _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
}

void OUTLINED_FUNCTION_190_5()
{
  v1[128] = v4;
  v1[127] = v3;
  v1[126] = v0;
  v1[125] = v0;
  v1[124] = v0;
  v1[123] = v0;
  v1[122] = v0;
  v1[121] = v2;
}

uint64_t OUTLINED_FUNCTION_191_3()
{
  result = v0[24];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[8];
  v11 = v0[6];
  return result;
}

uint64_t OUTLINED_FUNCTION_194_5()
{
  v2 = v0[24];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
  v13 = v0[6];
}

uint64_t OUTLINED_FUNCTION_196_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  return sub_1D4E6835C(v9, v10, va);
}

uint64_t OUTLINED_FUNCTION_197_2(uint64_t a1)
{

  return sub_1D4E50004(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_198_5()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_199_2(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1D4E50004(v3, v4, a3);
}

void OUTLINED_FUNCTION_210_4()
{
  v1 = *(v0 + 888);
  v2 = *v1;
  v3 = v1[1];
}

uint64_t OUTLINED_FUNCTION_212_4()
{
  v6 = v1 + *(v2 + 20);
  *v6 = v0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v1 + *(v2 + 24)) = v4;
  v8 = *(v3 + 112);
  v7 = *(v3 + 120);
}

id OUTLINED_FUNCTION_217_3(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2114;

  return v2;
}

uint64_t OUTLINED_FUNCTION_218_4()
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_219_1(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1D4E6835C(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_221_2()
{
}

uint64_t OUTLINED_FUNCTION_223_3(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1D4E6835C(v2, v1, va);
}

uint64_t OUTLINED_FUNCTION_225_2()
{
  v2 = v0[95];
  v3 = v0[94];
  v4 = v0[68];
}

uint64_t OUTLINED_FUNCTION_230_3(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_1D4E6835C(v4, v3, a3);
}

uint64_t OUTLINED_FUNCTION_237_0(uint64_t a1)
{

  return sub_1D4E50004(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_254_1()
{
  v3 = *(v1 + 56);
  v4 = *(*(v2 - 224) + 72);
  *(v2 - 200) = v4;
  return v3 + v4 * v0;
}

uint64_t OUTLINED_FUNCTION_255_0()
{
}

uint64_t OUTLINED_FUNCTION_256_0()
{
}

uint64_t OUTLINED_FUNCTION_257_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1D4E6835C(v11, v12, va);
}

uint64_t OUTLINED_FUNCTION_258_1()
{
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];
  v5 = v0[48];
  v6 = v0[44];
  v7 = v0[45];
}

uint64_t OUTLINED_FUNCTION_259()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_260_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_261_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_263_1()
{

  return _s8MusicKit4SongV0aB8InternalE24supportsSmartTransitionsSbSgvg_0();
}

uint64_t OUTLINED_FUNCTION_264()
{

  return _s8MusicKit4SongV0aB8InternalE9allGenresAA0A14ItemCollectionVyAA5GenreVGSgvg_0();
}

uint64_t OUTLINED_FUNCTION_265_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  return sub_1D4E6835C(a1, a2, va);
}

void OUTLINED_FUNCTION_277_0()
{
  v1 = v0[61];
  v2 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v5 = v0[44];
}

uint64_t OUTLINED_FUNCTION_285_1(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_287_1(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_291_1()
{
  v2 = *(v0 + 104);
  v3 = *(v0 + 200);
  v4 = *(v0 + 56);

  return sub_1D560C2F8();
}

void OUTLINED_FUNCTION_292_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_293(float a1)
{
  *v2 = a1;

  return sub_1D4E6835C(v3, v1, (v4 - 80));
}

uint64_t OUTLINED_FUNCTION_294_0()
{
}

uint64_t OUTLINED_FUNCTION_295_1()
{
  v2 = v0[111];
  v3 = v0[110];
  v4 = v0[70];

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_296(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(a20 + 216);
  v22 = *(a20 + 200);

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_298_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = ~*(v9 + *(v8 + 28)) & 0x1FFLL;

  return sub_1D52D48E0(v11, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_299_1(uint64_t a1)
{
  v5 = v1;
  v6 = *(v2 + 616);
  v7 = *(v2 + 608);

  return sub_1D4E50004(a1, v3, v5);
}

uint64_t OUTLINED_FUNCTION_300_0()
{
  v3 = *v0;
}

uint64_t OUTLINED_FUNCTION_301_2()
{
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[8];
}

BOOL OUTLINED_FUNCTION_302_1()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_303_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_304_0(uint64_t a1)
{
  result = __swift_getEnumTagSinglePayload(v1, 1, a1);
  v4 = *(v2 + 912);
  return result;
}

uint64_t MusicLibrary.DownloadedItemsSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4FB6F44(v9, v1, v2, v3, v4, v5, v6, v7);
  return sub_1D5616328();
}

uint64_t sub_1D52CC444()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4FB6F44(v9, v1, v2, v3, v4, v5, v6, v7);
  return sub_1D5616328();
}

unint64_t sub_1D52CC48C()
{
  result = qword_1EC7F38F8;
  if (!qword_1EC7F38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F38F8);
  }

  return result;
}

uint64_t sub_1D52CC4F4(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = a1;
    v5 = *(a2 + 40);
    sub_1D56162D8();
    MEMORY[0x1DA6EC0D0](v4);
    v6 = sub_1D5616328();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + v8) != v4);
  }

  return v2;
}

uint64_t sub_1D52CC5A4()
{
  OUTLINED_FUNCTION_60();
  v1[2] = v0;
  v1[3] = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF18, &qword_1D5628AB0);
  OUTLINED_FUNCTION_22(v2);
  v4 = *(v3 + 64) + 15;
  v1[4] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D52CC658()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  sub_1D52CC9C4(v0[4]);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1D52CC6F4;
  OUTLINED_FUNCTION_93_0(v0[4]);

  return sub_1D52CF728();
}

uint64_t sub_1D52CC6F4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  sub_1D4E50004(*(v4 + 32), &qword_1EC7EDF18, &qword_1D5628AB0);
  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11(v3);
  }
}

uint64_t sub_1D52CC864()
{
  OUTLINED_FUNCTION_80();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = sub_1D560C758();
  __swift_project_value_buffer(v1, qword_1EDD76A90);
  v2 = sub_1D560C738();
  v3 = sub_1D56156C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_142();
    v5 = OUTLINED_FUNCTION_33_17();
    *v4 = 138543362;
    sub_1D5011BDC();
    swift_allocError();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v7, v8, v9, v10, v4, 0xCu);
    sub_1D4E50004(v5, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v11 = *(v0 + 32);

  sub_1D5011BDC();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_13_73();

  return v12();
}

uint64_t sub_1D52CC9C4@<X0>(void *a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = sub_1D560C0A8();
  v11 = OUTLINED_FUNCTION_4(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_7();
  sub_1D4E69970(v1 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_libraryRelatedContainer, v9, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1D4E50004(v9, &unk_1EC7E9CA8, &unk_1D561D1D0);
    _s8LocationVMa();
    OUTLINED_FUNCTION_33();
    return __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  else
  {
    (*(v13 + 32))(v2, v9, v10);
    sub_1D52F9734(a1);
    return (*(v13 + 8))(v2, v10);
  }
}

uint64_t sub_1D52CCB58()
{
  *(v1 + 16) = v0;
  v2 = OUTLINED_FUNCTION_12_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52CCB80()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v0[3] = sub_1D52CE64C();
  OUTLINED_FUNCTION_27_0(dword_1D564EA38);
  v5 = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_26_12(v3);

  return v5();
}

uint64_t sub_1D52CCC20()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *(v4 + 32);
  v8 = *v1;
  *v6 = *v1;
  *(v5 + 40) = v0;

  v9 = *(v4 + 24);

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = *(v8 + 8);

    return v13(v3);
  }
}

uint64_t sub_1D52CCD74()
{
  OUTLINED_FUNCTION_91();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v2 = *(v1 + 40);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  if (os_log_type_enabled(v5, v0))
  {
    v6 = *(v1 + 40);
    v7 = OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_33_17();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D4E3F000, v5, v0, "Trying to get a readwrite connection failed: %{public}@.", v7, 0xCu);
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  v11 = *(v1 + 40);

  swift_willThrow();
  OUTLINED_FUNCTION_55();
  v13 = *(v1 + 40);

  return v12();
}

uint64_t sub_1D52CCECC(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CD0];
  if (sub_1D52CC4F4(0, a1))
  {
    sub_1D52C8F08(&v3, 2);
  }

  if (sub_1D52CC4F4(1u, a1) & 1) != 0 || (sub_1D52CC4F4(2u, a1))
  {
    sub_1D52C8F08(&v4, 3);
  }

  if (sub_1D52CC4F4(3u, a1))
  {
    sub_1D52C8F08(&v5, 4);
  }

  return v6;
}

uint64_t static MusicDownloadedSongCatalogStore.shared.getter()
{
  if (qword_1EDD5A0C8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D52CCFD0(uint64_t a1)
{
  v3 = type metadata accessor for MusicRequestConfiguration();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D52D3D4C(a1, v6, type metadata accessor for MusicRequestConfiguration);
  v13[0] = _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0();
  v13[1] = v7;
  v8 = *(sub_1D4E5A1CC() + 16);

  v9 = *(v1 + 48);
  v10 = *(v1 + 52);
  v11 = swift_allocObject();
  MusicDownloadedSongCatalogStore.init(configuration:libraryContainerization:downloadedItemCenter:)(v6, v13, v8);

  sub_1D4E58668(a1, type metadata accessor for MusicRequestConfiguration);
  return v11;
}

uint64_t MusicDownloadedSongCatalogStore.__allocating_init(configuration:libraryContainerization:downloadedItemCenter:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  MusicDownloadedSongCatalogStore.init(configuration:libraryContainerization:downloadedItemCenter:)(a1, a2, a3);
  return v9;
}

uint64_t MusicDownloadedSongCatalogStore.init(configuration:libraryContainerization:downloadedItemCenter:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v49 = a3;
  v47 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
  v6 = OUTLINED_FUNCTION_4(v48);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v14 = OUTLINED_FUNCTION_22(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = *a2;
  v20 = a2[1];
  sub_1D4E58A14();
  *(v4 + 16) = v21;
  *(v4 + 24) = 1;
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore____lazy_storage____readWriteDatabase) = 0;
  *(v4 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore__downloadedItemsObserver) = 0;
  v22 = OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_taskCoalescer;
  v23 = type metadata accessor for MusicTaskCoalescer(0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  swift_defaultActor_initialize();
  v27 = type metadata accessor for MusicTaskCoalescer.PrioritizedTask(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v27);
  *(v4 + v22) = v26;
  sub_1D560C4F8();
  OUTLINED_FUNCTION_8_90();
  v35 = v47;
  sub_1D52D3D4C(v47, v4 + v34, v36);
  v37 = [objc_opt_self() defaultManager];
  v50[0] = v19;
  v50[1] = v20;
  sub_1D5446F4C(v50, v18);

  sub_1D4F5A3D0(v18, v4 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_libraryRelatedContainer);
  v38 = [objc_opt_self() kilobytes];
  sub_1D4ECC7A8(0, &qword_1EDD52658, 0x1E696B050);
  sub_1D560BA48();
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_estimatedDiskUsagePerTrack, v12, v48);
  OUTLINED_FUNCTION_40_13();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = _s23DownloadedItemsObserverCMa();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();

  sub_1D55AE458(v43, sub_1D52D3854, v39);
  sub_1D4E5C420();

  OUTLINED_FUNCTION_1_131();
  sub_1D4E58668(v35, v44);
  return v4;
}

uint64_t sub_1D52CD460(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (sub_1D52CE578(*(v1 + 16), *(v1 + 24), *a1, v3))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D4E5C4C4();
    sub_1D52B3634(v2, v3);
  }

  else
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = v2;
    v7 = *(v1 + 24);
    *(v1 + 24) = v3;

    return sub_1D52B3634(v6, v7);
  }
}

uint64_t sub_1D52CD55C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - v4;
  v6 = *a1;
  v7 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  v9[5] = v6;

  sub_1D51ECB60(0xD000000000000021, 0x80000001D568A060, v5, &unk_1D564E9E8, v9);
}

uint64_t sub_1D52CD6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D52CD6D8, 0, 0);
}

uint64_t sub_1D52CD6D8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    *(v0 + 40) = *(v0 + 64);
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    OUTLINED_FUNCTION_26_12(v3);

    return sub_1D52CD924((v0 + 40));
  }

  else
  {
    **(v0 + 48) = 1;
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D52CD7C0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 72);
  }

  else
  {
    v10 = *(v3 + 72);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52CD8D0()
{
  **(v0 + 48) = 0;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t sub_1D52CD8F8()
{
  **(v0 + 48) = 1;
  OUTLINED_FUNCTION_55();
  return v1();
}

uint64_t sub_1D52CD924(uint64_t *a1)
{
  v2[2] = v1;
  v4 = sub_1D5615458();
  v2[3] = v4;
  v5 = *(v4 - 8);
  v2[4] = v5;
  v6 = *(v5 + 64) + 15;
  v2[5] = swift_task_alloc();
  v7 = *a1;
  v8 = swift_task_alloc();
  v2[6] = v8;
  *v8 = v2;
  v8[1] = sub_1D52CDA3C;

  return sub_1D52D01EC(v7, 0xD000000000000021, 0x80000001D568A090);
}

uint64_t sub_1D52CDA3C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v3 + 40);

    v10 = *(v7 + 8);

    return v10();
  }

  else
  {
    OUTLINED_FUNCTION_73_1();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }
}

uint64_t sub_1D52CDB68()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  v2 = *(v0[2] + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_taskCoalescer);
  v0[7] = v2;
  sub_1D5615438();
  OUTLINED_FUNCTION_40_13();
  v0[8] = swift_allocObject();
  swift_weakInit();

  return MEMORY[0x1EEE6DFA0](sub_1D52CDC1C, v2, 0);
}

uint64_t sub_1D52CDC1C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_1D529A3DC(v2, &unk_1D564EA08, v0[8]);

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_55();

  return v5();
}

Swift::Void __swiftcall MusicDownloadedSongCatalogStore.activate()()
{
  v1 = *v0;
  v2 = static Account.all.getter();
  sub_1D52CDF08(v2);

  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76A90);
  oslog = sub_1D560C738();
  v4 = sub_1D56156E8();
  if (os_log_type_enabled(oslog, v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_61_29();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_122();
  }
}

uint64_t sub_1D52CDF08(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (a1 + 48);
  for (i = MEMORY[0x1E69E7CC0]; v2; --v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v17 = *(v3 - 2);
    v18 = v5;
    v19 = v6;
    sub_1D4E58128(v17, v5, v6);
    sub_1D52CE1C8(&v17, v16);
    sub_1D4E58768(v17, v18, v19);
    if (v16[1] == 1)
    {
      sub_1D50A2184(v16[0], 1);
    }

    else
    {
      *oslog = *v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = *(i + 16);
        sub_1D4F02810();
        i = v10;
      }

      v7 = *(i + 16);
      v1 = (v7 + 1);
      v8 = *oslog;
      if (v7 >= *(i + 24) >> 1)
      {
        sub_1D4F02810();
        v8 = *oslog;
        i = v11;
      }

      *(i + 16) = v1;
      *(i + 16 * v7 + 32) = v8;
    }

    v3 += 24;
  }

  v12 = [objc_opt_self() defaultManager];
  v13 = OUTLINED_FUNCTION_82();
  sub_1D54470E4(v13, v1);
}

void sub_1D52CE1C8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 == 1)
  {
    v6 = objc_opt_self();

    v7 = sub_1D5614D38();
    sub_1D4E58768(v4, v3, 1);
    v8 = [v7 longLongValue];

    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    v10 = [objc_opt_self() specificAccountWithDSID_];

    v11 = [v6 deviceMediaLibraryIdentifierForUserIdentity_];
    v12 = sub_1D5614D68();
    v14 = v13;
  }

  else
  {
    if (qword_1EDD54478 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76A90);
    sub_1D4E58128(v4, v3, v5);
    v16 = sub_1D560C738();
    v17 = sub_1D56156C8();
    sub_1D4E58768(v4, v3, v5);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v23 = v19;
      *v18 = 136446210;
      v20 = Account.description.getter();
      v22 = sub_1D4E6835C(v20, v21, &v23);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D4E3F000, v16, v17, "Shared: Unable to get a library database ID for account: %{public}s.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1DA6ED200](v19, -1, -1);
      MEMORY[0x1DA6ED200](v18, -1, -1);
    }

    v12 = 0;
    v14 = 1;
  }

  *a2 = v12;
  a2[1] = v14;
}

uint64_t MusicDownloadedSongCatalogStore.status.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_33_44();
  sub_1D4E5CCFC(v3, v4);
  sub_1D560C4C8();

  v5 = *(v1 + 16);
  *a1 = v5;
  v6 = *(v1 + 24);
  *(a1 + 8) = v6;
  return sub_1D52B3620(v5, v6);
}

uint64_t sub_1D52CE4EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = MusicDownloadedSongCatalogStore.status.getter(&v6);
  v5 = v7;
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1D52CE530(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  sub_1D52B3620(v5, v3);
  return sub_1D52CD460(&v5);
}

uint64_t sub_1D52CE578(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (!a2)
  {
    if (!a4)
    {
      v4 = *&a1 != *&a3;
      return v4 & 1;
    }

LABEL_10:
    v4 = 1;
    return v4 & 1;
  }

  if (a2 != 1)
  {
    if (a4 == 2 && *&a3 == 0.0)
    {
      v4 = 0;
      return v4 & 1;
    }

    goto LABEL_10;
  }

  if (a4 != 1)
  {
    goto LABEL_10;
  }

  v4 = sub_1D4FB8200(a1, a3) ^ 1;
  return v4 & 1;
}

uint64_t sub_1D52CE5F8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 16);
  *(a1 + 16) = a2;
  v4 = *(a1 + 24);
  *(a1 + 24) = a3;
  sub_1D52B3620(a2, a3);
  return sub_1D52B3634(v3, v4);
}

uint64_t sub_1D52CE64C()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore____lazy_storage____readWriteDatabase;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore____lazy_storage____readWriteDatabase))
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore____lazy_storage____readWriteDatabase);
  }

  else
  {
    v2 = sub_1D52CE6DC(v0, *v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D52CE6DC(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3900, &unk_1D564EA50);
  swift_allocObject();
  return sub_1D52D3478(&unk_1D564EA48, v4);
}

uint64_t sub_1D52CE78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = *(*(type metadata accessor for MusicRequestConfiguration() - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for Bag();
  v4[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = *(_s10PropertiesVMa(0) - 8);
  v4[13] = v9;
  v4[14] = *(v9 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v10 = type metadata accessor for MusicDownloadedSongCatalogStoreUpdater(0);
  v4[17] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF18, &qword_1D5628AB0) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D52CE95C, 0, 0);
}

uint64_t sub_1D52CE95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[6];
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  v10[20] = Strong;
  if (Strong)
  {
    sub_1D52CC9C4(v10[19]);
    v13 = swift_task_alloc();
    v10[21] = v13;
    *v13 = v10;
    v13[1] = sub_1D52CEAB0;
    OUTLINED_FUNCTION_93_0(v10[19]);
    OUTLINED_FUNCTION_25_3();

    return sub_1D52CF728();
  }

  else
  {
    sub_1D5011BDC();
    v16 = swift_allocError();
    swift_willThrow();
    v18 = v10[18];
    v17 = v10[19];
    OUTLINED_FUNCTION_74_22();
    *v19 = v16;

    OUTLINED_FUNCTION_13_73();
    OUTLINED_FUNCTION_25_3();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_1D52CEAB0()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *(v1 + 168);
  v5 = *v0;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v8 + 176) = v7;

  sub_1D4E50004(*(v1 + 152), &qword_1EC7EDF18, &qword_1D5628AB0);
  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52CEBE4()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 176);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 80);

  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(v2 + *(v3 + 20)) = v1;
  sub_1D502EF3C();
  v5 = *(v4 + 17);
  *(v0 + 256) = v5;
  if (v5 == 1)
  {
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_1D52CED20;
    v7 = OUTLINED_FUNCTION_93_0(*(v0 + 80));

    return sub_1D4F56EB4(v7);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 200) = v9;
    *v9 = v0;
    v9[1] = sub_1D52CEE28;
    OUTLINED_FUNCTION_93_0(*(v0 + 80));

    return sub_1D4F573D4();
  }
}

uint64_t sub_1D52CED20()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 192) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52CEE28()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 248) = v3;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52CEF30()
{
  OUTLINED_FUNCTION_91();
  v3 = v2[27];
  type metadata accessor for Bag.UnderlyingBagWrapper();
  OUTLINED_FUNCTION_40_13();
  *(swift_allocObject() + 16) = v3;
  OUTLINED_FUNCTION_81_21();
  v4 = v2[10];
  v6 = v0 + *(v5 + 20);
  *v6 = v7;
  v6[8] = (v8 & 1) == 0;
  OUTLINED_FUNCTION_3_127();
  sub_1D52D3CF0(v10, v0, v9);
  sub_1D4F461AC(v0, v3);
  OUTLINED_FUNCTION_38_34();
  v11 = swift_task_alloc();
  v2[28] = v11;
  *(v11 + 16) = v1;
  *(v11 + 24) = v3;
  OUTLINED_FUNCTION_27_0(dword_1D5650B80);
  v24 = v12;
  v13 = swift_task_alloc();
  v2[29] = v13;
  *v13 = v2;
  v21 = OUTLINED_FUNCTION_17_65(v13, v14, v15, v16, v17, v18, v19, v20, v23, v24);

  return v21();
}

uint64_t sub_1D52CF028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v12 = *(v11 + 192);
  OUTLINED_FUNCTION_60_20();
  v13 = *(v11 + 80);
  OUTLINED_FUNCTION_1_131();
  sub_1D4E58668(v14, v15);

  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v10, v16);
  OUTLINED_FUNCTION_40_41();
  **(v11 + 64) = v12;

  OUTLINED_FUNCTION_13_73();
  OUTLINED_FUNCTION_25_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D52CF0F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 232);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 240) = v0;

  if (!v0)
  {
    v9 = *(v3 + 224);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52CF1F0()
{
  OUTLINED_FUNCTION_91();
  v4 = v3[31];
  OUTLINED_FUNCTION_81_21();
  v5 = v3[10];
  v7 = v0 + *(v6 + 20);
  *v7 = v8;
  v7[8] = (v9 & 1) == 0;
  OUTLINED_FUNCTION_3_127();
  sub_1D52D3CF0(v10, v0, v11);
  sub_1D4F461AC(v0, v1);
  OUTLINED_FUNCTION_38_34();
  v12 = swift_task_alloc();
  v3[28] = v12;
  *(v12 + 16) = v2;
  *(v12 + 24) = v1;
  OUTLINED_FUNCTION_27_0(dword_1D5650B80);
  v25 = v13;
  v14 = swift_task_alloc();
  v3[29] = v14;
  *v14 = v3;
  v22 = OUTLINED_FUNCTION_17_65(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25);

  return v22();
}

uint64_t sub_1D52CF2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v12 = *(v11 + 208);
  OUTLINED_FUNCTION_60_20();
  v13 = *(v11 + 80);
  OUTLINED_FUNCTION_1_131();
  sub_1D4E58668(v14, v15);

  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v10, v16);
  OUTLINED_FUNCTION_40_41();
  **(v11 + 64) = v12;

  OUTLINED_FUNCTION_13_73();
  OUTLINED_FUNCTION_25_3();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_1D52CF398()
{
  OUTLINED_FUNCTION_91();
  v2 = *(v1 + 224);
  OUTLINED_FUNCTION_60_20();
  v3 = *(v1 + 128);

  OUTLINED_FUNCTION_2_125();
  sub_1D4E58668(v3, v4);
  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v0, v5);
  v6 = *(v1 + 240);
  OUTLINED_FUNCTION_40_41();
  **(v1 + 64) = v7;

  OUTLINED_FUNCTION_13_73();

  return v8();
}

uint64_t sub_1D52CF474()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v24 = v0[19];
  v25 = v0[12];
  v7 = v0[9];
  v26 = v0[10];
  v22 = v0[20];
  v23 = v0[5];
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = OUTLINED_FUNCTION_15_2();
  sub_1D52D3D4C(v12, v13, v14);
  v15 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v16 = (v5 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1D52D3CF0(v3, v17 + v15, _s10PropertiesVMa);
  *(v17 + v16) = v1;

  sub_1D4F405A0(0xD00000000000001CLL, 0x80000001D568A0F0, v7, &unk_1D564EA80, v17);

  sub_1D4E50004(v7, &qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_2_125();
  sub_1D4E58668(v4, v18);
  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v2, v19);
  *v23 = v1;

  OUTLINED_FUNCTION_55();

  return v20();
}

uint64_t sub_1D52CF664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[20];
  sub_1D5011BDC();
  v12 = swift_allocError();

  v14 = v10[18];
  v13 = v10[19];
  OUTLINED_FUNCTION_74_22();
  *v15 = v12;

  OUTLINED_FUNCTION_13_73();
  OUTLINED_FUNCTION_25_3();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1D52CF728()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 88) = v1;
  *(v0 + 16) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDF18, &qword_1D5628AB0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64) + 15;
  *(v0 + 24) = swift_task_alloc();
  v6 = _s8LocationVMa();
  *(v0 + 32) = v6;
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64) + 15;
  *(v0 + 40) = swift_task_alloc();
  *(v0 + 48) = swift_task_alloc();
  *(v0 + 56) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52CF7FC()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1D4E69970(*(v0 + 16), v1, &qword_1EC7EDF18, &qword_1D5628AB0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D4E50004(*(v0 + 24), &qword_1EC7EDF18, &qword_1D5628AB0);
    sub_1D5011BDC();
    swift_willThrowTypedImpl();
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 24);

    OUTLINED_FUNCTION_13_73();

    return v7();
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = *(v0 + 88);
    sub_1D52D3CF0(*(v0 + 24), *(v0 + 56), _s8LocationVMa);
    OUTLINED_FUNCTION_35_45();
    v11 = _s8DatabaseCMa();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_1D52CF994;
    OUTLINED_FUNCTION_93_0(*(v0 + 48));

    return sub_1D52F2114();
  }
}

uint64_t sub_1D52CF994()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 64);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 72) = v0;

  if (!v0)
  {
    *(v5 + 80) = v3;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52CFA9C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  OUTLINED_FUNCTION_7_97();
  sub_1D4E58668(v2, v5);

  v6 = v0[1];
  v7 = v0[10];

  return v6(v7);
}

uint64_t sub_1D52CFB38()
{
  v35 = v0;
  if (qword_1EDD5D8B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = sub_1D560C758();
  __swift_project_value_buffer(v4, qword_1EDD76DE0);
  OUTLINED_FUNCTION_35_45();
  v5 = v1;
  v6 = sub_1D560C738();
  v7 = sub_1D56156C8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 40);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_33_17();
    v34 = swift_slowAlloc();
    *v11 = 136446722;
    if (v10)
    {
      v13 = 0x697257646165722ELL;
    }

    else
    {
      v13 = 0x6C6E4F646165722ELL;
    }

    if (v10)
    {
      v14 = 0xEA00000000006574;
    }

    else
    {
      v14 = 0xE900000000000079;
    }

    v15 = sub_1D4E6835C(v13, v14, &v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_1D52FA1CC();
    v18 = v17;
    OUTLINED_FUNCTION_7_97();
    sub_1D4E58668(v9, v19);
    v20 = sub_1D4E6835C(v16, v18, &v34);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2114;
    v21 = v8;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v22;
    *v12 = v22;
    _os_log_impl(&dword_1D4E3F000, v6, v7, "Unable to open a %{public}s connection to the database at %{public}s: %{public}@.", v11, 0x20u);
    sub_1D4E50004(v12, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_41_1();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {
    v23 = *(v0 + 40);

    OUTLINED_FUNCTION_7_97();
    sub_1D4E58668(v23, v24);
  }

  v25 = *(v0 + 72);
  v26 = *(v0 + 56);
  sub_1D5011BDC();
  swift_willThrowTypedImpl();

  OUTLINED_FUNCTION_7_97();
  sub_1D4E58668(v26, v27);
  v29 = *(v0 + 48);
  v28 = *(v0 + 56);
  v30 = *(v0 + 40);
  v31 = *(v0 + 24);

  OUTLINED_FUNCTION_13_73();

  return v32();
}

uint64_t sub_1D52CFE0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D52CFEA8;

  return sub_1D4F45598();
}

uint64_t sub_1D52CFEA8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D52CFFC0()
{
  OUTLINED_FUNCTION_91();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = *(v0 + 24);
  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76A90);
  v3 = OUTLINED_FUNCTION_82();
  v4 = sub_1D560C738();
  sub_1D56156C8();

  v5 = OUTLINED_FUNCTION_152_0();
  v6 = *(v0 + 24);
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_142();
    v8 = OUTLINED_FUNCTION_33_17();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v11, v12, v13, v14, v7, 0xCu);
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55();

  return v15();
}

uint64_t sub_1D52D0114()
{
  swift_getKeyPath();
  sub_1D4E5CCFC(qword_1EDD59EF8, type metadata accessor for MusicDownloadedSongCatalogStore);
  sub_1D560C4C8();

  v1 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore__downloadedItemsObserver);
}

uint64_t sub_1D52D01C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1D4E5C420();
}

uint64_t sub_1D52D01EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1D560CD48();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for MusicRequestConfiguration();
  v4[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = type metadata accessor for MusicDownloadedSongCatalogStoreUpdater(0);
  v4[12] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = sub_1D56153C8();
  v4[15] = sub_1D56153B8();
  v12 = swift_task_alloc();
  v4[16] = v12;
  *v12 = v4;
  v12[1] = sub_1D52D0368;

  return sub_1D52CCB58();
}

uint64_t sub_1D52D0368()
{
  OUTLINED_FUNCTION_91();
  v2 = v0;
  v4 = v3;
  v5 = *v1;
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  v8 = v5[16];
  *v7 = *v1;
  v6[17] = v0;

  v9 = v5[15];
  v10 = v5[14];
  if (v2)
  {
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v11 = sub_1D52D0890;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v6[18] = v4;
    v16 = sub_1D5615338();
    v15 = v17;
    v6[19] = v16;
    v6[20] = v17;
    v11 = sub_1D52D04E8;
    v13 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v11, v13, v15);
}

uint64_t sub_1D52D04E8()
{
  v40 = v0;
  v1 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[5];
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(v2 + *(v3 + 20)) = v1;
  v6 = v5 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_configuration;
  v7 = [objc_opt_self() activeAccount];
  type metadata accessor for Account.UserIdentityWrapper();
  OUTLINED_FUNCTION_40_13();
  *(swift_allocObject() + 16) = v7;
  OUTLINED_FUNCTION_8_90();
  v8 = OUTLINED_FUNCTION_98();
  sub_1D52D3D4C(v8, v9, v10);
  v11 = *(v6 + 16);
  if (v11 != 255)
  {
    OUTLINED_FUNCTION_73_19();
    v39[16] = 2;
    v12 = OUTLINED_FUNCTION_42_35();
    sub_1D4E58128(v12, v13, v14);
    if (static Account.== infix(_:_:)(v38, v39))
    {
      v15 = OUTLINED_FUNCTION_42_35();
      OUTLINED_FUNCTION_79_17(v15, v16, v17);
    }

    v18 = v0[10];
    sub_1D4EF2278(*v18, *(v18 + 8), *(v18 + 16));
    *v18 = v7;
    *(v18 + 8) = v6;
    *(v18 + 16) = v11;
  }

  v19 = v0[13];
  v20 = v0[10];
  v21 = v0[11];
  v23 = v0[8];
  v22 = v0[9];
  v24 = v0[6];
  v25 = v0[7];
  OUTLINED_FUNCTION_3_127();
  sub_1D52D3CF0(v26, v21, v27);

  OUTLINED_FUNCTION_34_46();
  sub_1D4E5CCFC(v28, v29);
  OUTLINED_FUNCTION_86_19();
  OUTLINED_FUNCTION_1_131();
  sub_1D4E58668(v21, v30);
  v31 = OUTLINED_FUNCTION_82_19();
  v32(v31);
  v33 = swift_task_alloc();
  v0[21] = v33;
  *v33 = v0;
  v33[1] = sub_1D52D06C4;
  v34 = v0[13];
  v35 = v0[3];
  v36 = v0[4];
  OUTLINED_FUNCTION_93_0(v0[2]);

  return sub_1D52B85E0();
}

uint64_t sub_1D52D06C4()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v2[21];
  *v4 = *v1;
  *(v3 + 176) = v0;

  v6 = v2[20];
  v7 = v2[19];
  if (v0)
  {
    v8 = sub_1D52D091C;
  }

  else
  {
    v8 = sub_1D52D07F4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D52D07F4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  v2 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];

  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v2, v6);

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D52D0890()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];

  v2 = v0[17];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D52D091C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  v2 = v0[13];

  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v2, v3);
  v4 = v0[22];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[8];

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D52D09D8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[5];
  OUTLINED_FUNCTION_9_2();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_1D52D0AC0;

    return sub_1D52D0BBC(0xD000000000000021, 0x80000001D568A090);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D52D0AC0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D52D0BBC(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1D560C328();
  v3[20] = v4;
  v5 = *(v4 - 8);
  v3[21] = v5;
  v6 = *(v5 + 64) + 15;
  v3[22] = swift_task_alloc();
  v7 = type metadata accessor for MusicDownloadedSongCatalogStoreUpdater.Report(0);
  v3[23] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v10 = _s24DeviceConstraintsMonitorVMa();
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20) - 8) + 64) + 15;
  v3[29] = swift_task_alloc();
  v13 = _s10PropertiesVMa(0);
  v3[30] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v3[31] = swift_task_alloc();
  v15 = sub_1D560CD48();
  v3[32] = v15;
  v16 = *(v15 - 8);
  v3[33] = v16;
  v17 = *(v16 + 64) + 15;
  v3[34] = swift_task_alloc();
  v18 = type metadata accessor for MusicRequestConfiguration();
  v3[35] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v20 = type metadata accessor for MusicDownloadedSongCatalogStoreUpdater(0);
  v3[38] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D52D0E54, 0, 0);
}

uint64_t sub_1D52D0E54()
{
  v17 = v0;
  sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0x15uLL);
  v0[40] = v1;
  v0[41] = v2;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v3 = v0[18];
  v4 = sub_1D560C758();
  v0[42] = __swift_project_value_buffer(v4, qword_1EDD76A90);

  v5 = sub_1D560C738();
  v6 = sub_1D56156E8();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[17];
    v7 = v0[18];
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136446466;
    v10 = OUTLINED_FUNCTION_98();
    *(v9 + 4) = sub_1D4E6835C(v10, v11, v12);
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1D4E6835C(v8, v7, &v16);
    _os_log_impl(&dword_1D4E3F000, v5, v6, "[%{public}s] 􀀀􀀀􀀁 􀇃 Performing update because %{public}s.", v9, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  v13 = swift_task_alloc();
  v0[43] = v13;
  *v13 = v0;
  v13[1] = sub_1D52D105C;
  v14 = v0[19];

  return sub_1D52CCB58();
}

uint64_t sub_1D52D105C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 344);
  *v3 = *v1;
  *(v2 + 352) = v6;
  *(v2 + 360) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52D1160()
{
  v40 = v0;
  v1 = v0[44];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v5 = v0[19];
  swift_retain_n();
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(v2 + *(v3 + 20)) = v1;
  v6 = v5 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_configuration;
  v7 = [objc_opt_self() activeAccount];
  type metadata accessor for Account.UserIdentityWrapper();
  OUTLINED_FUNCTION_40_13();
  *(swift_allocObject() + 16) = v7;
  OUTLINED_FUNCTION_8_90();
  v8 = OUTLINED_FUNCTION_98();
  sub_1D52D3D4C(v8, v9, v10);
  v11 = *(v6 + 16);
  if (v11 != 255)
  {
    OUTLINED_FUNCTION_73_19();
    v39[16] = 2;
    v12 = OUTLINED_FUNCTION_42_35();
    sub_1D4E58128(v12, v13, v14);
    if (static Account.== infix(_:_:)(v38, v39))
    {
      v15 = OUTLINED_FUNCTION_42_35();
      OUTLINED_FUNCTION_79_17(v15, v16, v17);
    }

    v18 = v0[36];
    sub_1D4EF2278(*v18, *(v18 + 8), *(v18 + 16));
    *v18 = v7;
    *(v18 + 8) = v6;
    *(v18 + 16) = v11;
  }

  v19 = v0[39];
  v20 = v0[36];
  v21 = v0[37];
  v23 = v0[34];
  v22 = v0[35];
  v24 = v0[32];
  v25 = v0[33];
  OUTLINED_FUNCTION_3_127();
  sub_1D52D3CF0(v26, v21, v27);

  OUTLINED_FUNCTION_34_46();
  sub_1D4E5CCFC(v28, v29);
  OUTLINED_FUNCTION_86_19();
  OUTLINED_FUNCTION_1_131();
  sub_1D4E58668(v21, v30);
  v31 = OUTLINED_FUNCTION_82_19();
  v32(v31);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[46] = v33;
  *v33 = v34;
  v33[1] = sub_1D52D1344;
  v35 = v0[44];
  v36 = v0[29];

  return sub_1D4F44D0C(v36, v35);
}

uint64_t sub_1D52D1344()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 368);
  v3 = *(v1 + 352);
  v4 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D52D1444()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[29];
  v1 = v0[30];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v1);
  v4 = v0[31];
  if (EnumTagSinglePayload == 1)
  {
    v5 = [objc_opt_self() hours];
    v6 = v1[6];
    sub_1D4ECC7A8(0, &qword_1EDD526D0, 0x1E696B008);
    sub_1D560BA48();
    *v4 = xmmword_1D561F5F0;
    v7 = MEMORY[0x1E69E7CC0];
    *(v4 + v1[7]) = MEMORY[0x1E69E7CC0];
    *(v4 + v1[8]) = v7;
    *(v4 + v1[9]) = v7;
    *(v4 + v1[10]) = v7;
    if (__swift_getEnumTagSinglePayload(v2, 1, v1) != 1)
    {
      sub_1D4E50004(v0[29], &qword_1EC7EBFC0, &qword_1D564EA20);
    }
  }

  else
  {
    sub_1D52D3CF0(v2, v0[31], _s10PropertiesVMa);
  }

  v8 = v0[44];
  v10 = v0[27];
  v9 = v0[28];
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = *(v10 + 20);
  v16 = [objc_opt_self() megabytes];
  v0[48] = sub_1D4ECC7A8(0, &qword_1EDD52658, 0x1E696B050);
  sub_1D560BA48();

  return MEMORY[0x1EEE6DFA0](sub_1D52D163C, v8, 0);
}

uint64_t sub_1D52D163C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[44];
  v2 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[49] = v2;
  v3 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
  v0[50] = v3;

  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_26_12(v4);

  return sub_1D51C48A4(v2, v3);
}

uint64_t sub_1D52D170C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 408);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v5[52] = v0;

  if (!v0)
  {
    v11 = v5[49];
    v12 = v5[50];

    v5[53] = v3;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D52D1824()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[53];
  v6 = v0[19] + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_estimatedDiskUsagePerTrack;
  sub_1D560BA28();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v2);
  v7 = OUTLINED_FUNCTION_98();
  sub_1D52D39F8(v7, v8);
  sub_1D52B4674();
  sub_1D4E50004(v4, &qword_1EC7F3848, &unk_1D564E460);
  v9 = v0[28];
  v10 = sub_1D52B40E0();
  v0[54] = v10;
  if (*(v10 + 16))
  {
    v11 = v10;
    v13 = v0[41];
    v12 = v0[42];

    v14 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_88_14();
    if (OUTLINED_FUNCTION_152_0())
    {
      v16 = v0[40];
      v15 = v0[41];
      v17 = OUTLINED_FUNCTION_142();
      v33 = swift_slowAlloc();
      *v17 = 136446210;
      v18 = OUTLINED_FUNCTION_15_2();
      *(v17 + 4) = sub_1D4E6835C(v18, v19, v20);
      OUTLINED_FUNCTION_12_68();
      _os_log_impl(v21, v22, v23, v24, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_41_1();
    }

    v25 = sub_1D52CCECC(v11);
    OUTLINED_FUNCTION_84_15(v25);
    v0[66] = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_27_51();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v26, v27, v28);
  }

  else
  {
    v30 = swift_task_alloc();
    v0[55] = v30;
    *v30 = v0;
    OUTLINED_FUNCTION_29_47(v30);
    OUTLINED_FUNCTION_25_3();

    return sub_1D5109FD4();
  }
}

uint64_t sub_1D52D19FC()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];

  v4 = v0[28];
  v5 = sub_1D52B40E0();
  v0[54] = v5;
  if (*(v5 + 16))
  {
    v6 = v5;
    v8 = v0[41];
    v7 = v0[42];

    v9 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_88_14();
    if (OUTLINED_FUNCTION_152_0())
    {
      v11 = v0[40];
      v10 = v0[41];
      v12 = OUTLINED_FUNCTION_142();
      v28 = swift_slowAlloc();
      *v12 = 136446210;
      v13 = OUTLINED_FUNCTION_15_2();
      *(v12 + 4) = sub_1D4E6835C(v13, v14, v15);
      OUTLINED_FUNCTION_12_68();
      _os_log_impl(v16, v17, v18, v19, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_41_1();
    }

    v20 = sub_1D52CCECC(v6);
    OUTLINED_FUNCTION_84_15(v20);
    v0[66] = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_27_51();
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }

  else
  {
    v25 = swift_task_alloc();
    v0[55] = v25;
    *v25 = v0;
    OUTLINED_FUNCTION_29_47(v25);
    OUTLINED_FUNCTION_25_3();

    return sub_1D5109FD4();
  }
}

uint64_t sub_1D52D1B88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  v4 = *(v3 + 440);
  *v2 = *v0;
  *(v1 + 57) = v5;

  v6 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D52D1C74()
{
  OUTLINED_FUNCTION_160();
  v3 = *(v1 + 57);
  v5 = *(v1 + 328);
  v4 = *(v1 + 336);

  v6 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_75_1();

  v7 = os_log_type_enabled(v6, v0);
  if (v3 == 1)
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v8 = *(v1 + 320);
    v5 = *(v1 + 328);
    OUTLINED_FUNCTION_142();
    v21 = OUTLINED_FUNCTION_119_9();
    *(v2 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v21);
    v11 = "[%{public}s] 􀰚􀐫􀆅 Eligible for catalog backfill.";
  }

  else
  {
    if (!v7)
    {
      goto LABEL_7;
    }

    v12 = *(v1 + 320);
    v5 = *(v1 + 328);
    OUTLINED_FUNCTION_142();
    v22 = OUTLINED_FUNCTION_119_9();
    *(v2 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v22);
    v11 = "[%{public}s] 􀰚􀐫􀆄 Not eligible for catalog backfill.";
  }

  OUTLINED_FUNCTION_163(&dword_1D4E3F000, v9, v10, v11);
  OUTLINED_FUNCTION_19_22();
  OUTLINED_FUNCTION_83();
LABEL_7:

  *(v1 + 60) = *(*(v1 + 184) + 20);
  v13 = sub_1D56153C8();
  v14 = *(v1 + 432);
  *(v1 + 456) = 0;
  *(v1 + 464) = v14;
  *(v1 + 448) = v13;
  *(v1 + 58) = 0;
  OUTLINED_FUNCTION_45_35();
  v6[15].isa = 0;
  v15 = sub_1D56160F8();
  v17 = v16;
  MEMORY[0x1DA6EAC70](v15);

  OUTLINED_FUNCTION_64_21();
  MEMORY[0x1DA6EAC70](v17, v5);

  OUTLINED_FUNCTION_85_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v1 + 480) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_22_54(v18);

  return sub_1D52BB4A4();
}

uint64_t sub_1D52D1E24()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = v1[60];
  v3 = v1[59];
  v4 = v1[22];
  v5 = v1[21];
  v6 = v1[20];
  v7 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);
  v9 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52D1F80()
{
  OUTLINED_FUNCTION_80();
  if (*(v0 + 58) == 1)
  {
    v1 = *(v0 + 200);
    OUTLINED_FUNCTION_5_98();
    sub_1D4E58668(v2, v3);
  }

  v4 = *(v0 + 464);
  v5 = *(v0 + 224);
  v6 = *(v0 + 200);
  v7 = v6 + *(v0 + 60);
  sub_1D52D3CF0(*(v0 + 192), v6, type metadata accessor for MusicDownloadedSongCatalogStoreUpdater.Report);
  v8 = sub_1D52B40E0();
  *(v0 + 488) = v8;

  *(v0 + 496) = *v7;
  v9 = *(v7 + 8);
  *(v0 + 504) = v9;
  v10 = *(v7 + 16);
  *(v0 + 59) = v10;
  if (v10)
  {
    goto LABEL_6;
  }

  if (v9 >= 1.0)
  {

    v9 = 0.0;
    v11 = 2;
  }

  else
  {
    if (*(v8 + 16))
    {
LABEL_6:
      sub_1D52CCECC(v8);
      OUTLINED_FUNCTION_82();

      v11 = 1;
      goto LABEL_9;
    }

    v11 = 0;
  }

LABEL_9:
  v12 = *(v0 + 448);
  *(v0 + 96) = v9;
  *(v0 + 104) = v11;
  *(v0 + 512) = sub_1D56153B8();
  OUTLINED_FUNCTION_82();
  sub_1D5615338();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](sub_1D52D20D8, v13, v14);
}

uint64_t sub_1D52D20D8()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 512);
  v2 = *(v0 + 152);

  sub_1D52D2EDC(v0 + 96);
  sub_1D52B3634(*(v0 + 96), *(v0 + 104));
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1D52D214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v20 = *(v16 + 456);
  v21 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    __break(1u);
    return;
  }

  v22 = sub_1D56154E8();
  v23 = *(v16 + 59);
  if (v22)
  {
    if ((*(v16 + 59) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  if (*(v16 + 59))
  {
LABEL_6:
    v25 = *(v16 + 496);
    v24 = *(v16 + 504);
    *(v16 + 128) = v25;
    sub_1D52D39E0(v25, v24, 1);
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (!swift_dynamicCast())
    {
      OUTLINED_FUNCTION_58_29();

      v47 = OUTLINED_FUNCTION_71();
      sub_1D52D39EC(v47, v48, 1);
      OUTLINED_FUNCTION_2_125();
      sub_1D4E58668(v21, v49);
      OUTLINED_FUNCTION_5_98();
      sub_1D4E58668(v19, v50);
      OUTLINED_FUNCTION_6_95();
      sub_1D4E58668(v18, v51);
      OUTLINED_FUNCTION_0_168();
      sub_1D4E58668(v17, v52);

      goto LABEL_19;
    }

    v27 = swift_task_alloc();
    *(v16 + 520) = v27;
    *v27 = v16;
    v27[1] = sub_1D52D24B8;
    v28 = *(v16 + 152);
    OUTLINED_FUNCTION_89();

    sub_1D510BC88();
    return;
  }

  if ((*(v16 + 496) & 0x8000000000000000) != 0)
  {
LABEL_16:
    v37 = *(v16 + 488);
LABEL_17:

    v38 = *(v16 + 352);
    v39 = *(v16 + 312);
    v40 = *(v16 + 248);
    v41 = *(v16 + 224);
    v42 = *(v16 + 200);

    OUTLINED_FUNCTION_2_125();
    sub_1D4E58668(v40, v43);
    OUTLINED_FUNCTION_5_98();
    sub_1D4E58668(v42, v44);
    OUTLINED_FUNCTION_6_95();
    sub_1D4E58668(v41, v45);
    OUTLINED_FUNCTION_0_168();
    sub_1D4E58668(v39, v46);
LABEL_19:
    v53 = *(v16 + 328);
    v54 = *(v16 + 336);

    v55 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_92_3();

    if (OUTLINED_FUNCTION_152_0())
    {
      OUTLINED_FUNCTION_47_35();
      OUTLINED_FUNCTION_119_9();
      OUTLINED_FUNCTION_69_26();
      *(v21 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, v56, v57);
      OUTLINED_FUNCTION_28_50(&dword_1D4E3F000, v58, v59, "[%{public}s] 􀀁􀀀􀀀 􀇃 Update stopped.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_83();
    }

    else
    {
      v60 = *(v16 + 328);
    }

    OUTLINED_FUNCTION_9_87();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_89();

    v62(v61, v62, v63, v64, v65, v66, v67, v68, a9, a10, a11, a12, a13, a14);
    return;
  }

  v30 = *(v16 + 488);
  if (*(v16 + 504) >= 1.0 || *(v30 + 16))
  {
    goto LABEL_17;
  }

  *(v16 + 456) = v21;
  *(v16 + 464) = v30;
  *(v16 + 58) = 1;
  OUTLINED_FUNCTION_45_35();
  *(v14 + 120) = v21;
  v31 = sub_1D56160F8();
  v33 = v32;
  MEMORY[0x1DA6EAC70](v31);

  OUTLINED_FUNCTION_64_21();
  MEMORY[0x1DA6EAC70](v33, v15);

  OUTLINED_FUNCTION_85_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v16 + 480) = v34;
  *v34 = v35;
  OUTLINED_FUNCTION_22_54();
  OUTLINED_FUNCTION_89();

  sub_1D52BB4A4();
}

uint64_t sub_1D52D24B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 520);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D52D259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_58_29();
  v19 = OUTLINED_FUNCTION_71();
  sub_1D52D39EC(v19, v20, 1);

  OUTLINED_FUNCTION_2_125();
  sub_1D4E58668(v16, v21);
  OUTLINED_FUNCTION_5_98();
  sub_1D4E58668(v18, v22);
  OUTLINED_FUNCTION_6_95();
  sub_1D4E58668(v17, v23);
  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v15, v24);

  v25 = *(v14 + 328);
  v26 = *(v14 + 336);

  v27 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_92_3();

  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_47_35();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_69_26();
    *(v16 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, v28, v29);
    OUTLINED_FUNCTION_28_50(&dword_1D4E3F000, v30, v31, "[%{public}s] 􀀁􀀀􀀀 􀇃 Update stopped.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v32 = *(v14 + 328);
  }

  OUTLINED_FUNCTION_9_87();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52D270C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 528);
  v2 = *(v0 + 152);

  sub_1D52D2EDC(v0 + 80);
  sub_1D52B3634(*(v0 + 80), *(v0 + 88));
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52D2780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[54];
  v16 = v14[44];
  v18 = v14[41];
  v17 = v14[42];
  v19 = v14[39];
  v20 = v14[31];
  v21 = v14[28];

  OUTLINED_FUNCTION_2_125();
  sub_1D4E58668(v20, v22);
  OUTLINED_FUNCTION_6_95();
  sub_1D4E58668(v21, v23);
  OUTLINED_FUNCTION_0_168();
  sub_1D4E58668(v19, v24);

  v25 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_88_14();
  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_47_35();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_69_26();
    *(v20 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, v26, v27);
    OUTLINED_FUNCTION_28_50(&dword_1D4E3F000, v28, v29, "[%{public}s] 􀀁􀀀􀀀 􀇃 Update stopped.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v30 = v14[41];
  }

  OUTLINED_FUNCTION_9_87();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52D28E0()
{
  v34 = v0;
  v2 = *(v0 + 360);
  *(v0 + 112) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v4 = swift_dynamicCast();
  v5 = *(v0 + 360);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  if (v4)
  {

    v8 = sub_1D560C738();
    v9 = sub_1D56156C8();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 320);
      v10 = *(v0 + 328);
      OUTLINED_FUNCTION_142();
      v33 = OUTLINED_FUNCTION_119_9();
      *(v1 + 4) = OUTLINED_FUNCTION_54_28(4.8751e-34, v33);
      OUTLINED_FUNCTION_163(&dword_1D4E3F000, v12, v13, "[%{public}s] Database unavailable.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_83();
    }

    sub_1D4E58A14();
    *(v0 + 64) = v14;
    *(v0 + 72) = 1;
    sub_1D56153C8();
    *(v0 + 536) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v17 = sub_1D52D2BA4;
  }

  else
  {

    v18 = v5;
    v19 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_88_14();

    if (OUTLINED_FUNCTION_152_0())
    {
      v20 = *(v0 + 360);
      v22 = *(v0 + 320);
      v21 = *(v0 + 328);
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_33_17();
      v24 = OUTLINED_FUNCTION_119_9();
      v33 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_1D4E6835C(v22, v21, &v33);
      *(v23 + 12) = 2114;
      v25 = v20;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v1 = v26;
      OUTLINED_FUNCTION_12_68();
      _os_log_impl(v27, v28, v29, v30, v23, 0x16u);
      sub_1D4E50004(v1, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_83();
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    sub_1D4E58A14();
    *(v0 + 48) = v31;
    *(v0 + 56) = 1;
    sub_1D56153C8();
    *(v0 + 544) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v17 = sub_1D52D2D40;
  }

  return MEMORY[0x1EEE6DFA0](v17, v15, v16);
}

uint64_t sub_1D52D2BA4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 536);
  v2 = *(v0 + 152);

  sub_1D52D2EDC(v0 + 64);
  sub_1D52B3634(*(v0 + 64), *(v0 + 72));
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52D2C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v16 = *(v14 + 328);
  v17 = *(v14 + 336);

  v18 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_92_3();

  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_47_35();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_69_26();
    *(v15 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, v19, v20);
    OUTLINED_FUNCTION_28_50(&dword_1D4E3F000, v21, v22, "[%{public}s] 􀀁􀀀􀀀 􀇃 Update stopped.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v23 = *(v14 + 328);
  }

  OUTLINED_FUNCTION_9_87();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52D2D40()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 544);
  v2 = *(v0 + 152);

  sub_1D52D2EDC(v0 + 48);
  sub_1D52B3634(*(v0 + 48), *(v0 + 56));
  v3 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52D2DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v16 = *(v14 + 328);
  v17 = *(v14 + 336);

  v18 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_92_3();

  if (OUTLINED_FUNCTION_152_0())
  {
    OUTLINED_FUNCTION_47_35();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_69_26();
    *(v15 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, v19, v20);
    OUTLINED_FUNCTION_28_50(&dword_1D4E3F000, v21, v22, "[%{public}s] 􀀁􀀀􀀀 􀇃 Update stopped.");
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v23 = *(v14 + 328);
  }

  OUTLINED_FUNCTION_9_87();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52D2EDC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  MusicDownloadedSongCatalogStore.status.getter(&v18);
  v16 = v18;
  v17 = v19;
  v14 = v1;
  v15 = v2;
  v3 = static MusicDownloadedSongCatalogStore.Status.== infix(_:_:)(&v16, &v14);
  result = sub_1D52B3634(v16, v17);
  if (!v3)
  {
    if (qword_1EDD54478 != -1)
    {
      swift_once();
    }

    v5 = sub_1D560C758();
    __swift_project_value_buffer(v5, qword_1EDD76A90);
    sub_1D52B3620(v1, v2);
    v6 = sub_1D560C738();
    v7 = sub_1D56156E8();
    sub_1D52B3634(v1, v2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = v9;
      *v8 = 136446210;
      v18 = v1;
      v19 = v2;
      sub_1D52B3620(v1, v2);
      v10 = MusicDownloadedSongCatalogStore.Status.description.getter();
      v12 = v11;
      sub_1D52B3634(v18, v19);
      v13 = sub_1D4E6835C(v10, v12, &v16);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1D4E3F000, v6, v7, "Updating status: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1DA6ED200](v9, -1, -1);
      MEMORY[0x1DA6ED200](v8, -1, -1);
    }

    v18 = v1;
    v19 = v2;
    sub_1D52B3620(v1, v2);
    return sub_1D52CD460(&v18);
  }

  return result;
}

uint64_t MusicDownloadedSongCatalogStore.deinit()
{
  sub_1D52B3634(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_1_131();
  sub_1D4E58668(v0 + v1, v2);
  sub_1D4E50004(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_libraryRelatedContainer, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v3 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore____lazy_storage____readWriteDatabase);

  v4 = OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_estimatedDiskUsagePerTrack;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore__downloadedItemsObserver);

  v8 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_taskCoalescer);

  v9 = OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore___observationRegistrar;
  v10 = sub_1D560C508();
  OUTLINED_FUNCTION_14(v10);
  (*(v11 + 8))(v0 + v9);
  return v0;
}

uint64_t MusicDownloadedSongCatalogStore.__deallocating_deinit()
{
  MusicDownloadedSongCatalogStore.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static MusicDownloadedSongCatalogStore.databaseLocation(for:relativeTo:)@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_1D560BEE8();
  v3 = OUTLINED_FUNCTION_4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_7();
  v8 = sub_1D560C0A8();
  v9 = OUTLINED_FUNCTION_4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = [objc_opt_self() defaultManager];
  v23 = _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0();
  v24 = v18;
  sub_1D5447ABC(&v23, v16);

  sub_1D52FA020();
  v19 = *(v11 + 8);
  v19(v16, v8);
  v23 = 0xD000000000000013;
  v24 = 0x80000001D5689F60;
  (*(v5 + 104))(v1, *MEMORY[0x1E6968F70], v2);
  sub_1D4F53278();
  sub_1D560C088();
  (*(v5 + 8))(v1, v2);
  v20 = OUTLINED_FUNCTION_15_2();
  return (v19)(v20);
}

uint64_t sub_1D52D3478(uint64_t a1, uint64_t a2)
{
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  *(v2 + 120) = -1;
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return v2;
}

uint64_t sub_1D52D34E0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);
  v2 = *(v1 + 120);
  if (v2 == 255 || (v2 & 1) != 0)
  {
    v3 = *(v1 + 136);
    v10 = (*(v1 + 128) + **(v1 + 128));
    v4 = *(*(v1 + 128) + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 48) = v5;
    *v5 = v6;
    v5[1] = sub_1D52D361C;

    return v10(v0 + 16, v0 + 24);
  }

  else
  {
    sub_1D52D3A8C(*(v1 + 112), 0);
    v8 = OUTLINED_FUNCTION_51_15();

    return v9(v8);
  }
}

uint64_t sub_1D52D361C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  v9 = *(v3 + 40);
  if (v0)
  {
    v10 = sub_1D52D379C;
  }

  else
  {
    v10 = sub_1D52D3718;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1D52D3718()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 40);
  v2 = *(v1 + 112);
  *(v1 + 112) = *(v0 + 16);
  v3 = *(v1 + 120);
  *(v1 + 120) = 0;

  sub_1D52D3A68(v2, v3);
  v4 = OUTLINED_FUNCTION_51_15();

  return v5(v4);
}

uint64_t sub_1D52D379C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = v2;
  *(v1 + 112) = v2;
  *(v1 + 120) = 1;
  sub_1D52D3A68(v3, v4);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D52D38B0()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v6[1] = sub_1D4E6ED20;
  v8 = OUTLINED_FUNCTION_18_27();

  return sub_1D52CD6B4(v8, v9, v10, v4, v3);
}

uint64_t sub_1D52D3958()
{
  OUTLINED_FUNCTION_60();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D52D09B8(v0);
}

id sub_1D52D39E0(id result, uint64_t a2, char a3)
{
  if (a3)
  {
    return result;
  }

  return result;
}

void sub_1D52D39EC(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1D52D39F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1D52D3A68(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_1D52D3A80(a1, a2 & 1);
  }
}

void sub_1D52D3A80(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_1D52D3A8C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_1D52D3A98()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_32(v7);
  *v8 = v9;
  v8[1] = sub_1D4E6ED20;

  return sub_1D52CE78C(v4, v6, v5, v2);
}

uint64_t sub_1D52D3B40()
{
  OUTLINED_FUNCTION_80();
  v2 = v1;
  v4 = v3;
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_32(v7);
  *v8 = v9;
  v8[1] = sub_1D4E73560;

  return sub_1D52B73B8(v4, v2, v6, v5);
}

uint64_t sub_1D52D3BE8()
{
  OUTLINED_FUNCTION_91();
  v1 = *(_s10PropertiesVMa(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v6[1] = sub_1D4E73560;
  OUTLINED_FUNCTION_18_27();

  return sub_1D52CFE0C();
}

uint64_t sub_1D52D3CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

uint64_t sub_1D52D3D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_14(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_71();
  v8(v7);
  return a2;
}

void OUTLINED_FUNCTION_28_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_35()
{
  v3 = *(v0 + 320);
  v2 = *(v0 + 328);

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_74_22()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
}

void OUTLINED_FUNCTION_81_21()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
}

uint64_t _s10DescriptorVMa()
{
  result = qword_1EDD59BD0;
  if (!qword_1EDD59BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D52D3ED0()
{
  _s13PersistedDateVMa();
  if (v0 <= 0x3F)
  {
    sub_1D52D3F88();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D52D3F88()
{
  if (!qword_1EDD5A298)
  {
    _s13PersistedDateVMa();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5A298);
    }
  }
}

uint64_t sub_1D52D4118()
{
  v0 = OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_19_63(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D52D4230()
{
  v0 = OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_19_63(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D52D42D8(uint64_t a1)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](a1);
  return sub_1D5616328();
}

uint64_t sub_1D52D4328()
{
  OUTLINED_FUNCTION_164();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D52D43D0()
{
  v0 = OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_19_63(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D52D4454(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_164();
  a2(v5, a1);
  return sub_1D5616328();
}

uint64_t sub_1D52D4508(char a1)
{
  OUTLINED_FUNCTION_164();
  MEMORY[0x1DA6EC0D0](qword_1D564EF68[a1]);
  return sub_1D5616328();
}

uint64_t sub_1D52D4584(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_164();
  a2(a1);
  sub_1D5614E28();

  return sub_1D5616328();
}

uint64_t sub_1D52D45E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = sub_1D525C410(a2, &unk_1F50A19B0);
  if (v4)
  {
    return 1;
  }

  v6 = v3 >= sub_1D525C410(a1, &unk_1F50A19B0);
  return (v7 & 1) != 0 || v6;
}

BOOL sub_1D52D4668()
{
  v0 = OUTLINED_FUNCTION_106_0();
  v2 = *(v1(v0) + 24);
  return (sub_1D560C2D8() & 1) == 0;
}

uint64_t sub_1D52D46A8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D5616168() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1D52D46F0(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = sub_1D525C410(a1, &unk_1F50A19B0);
  if (v4)
  {
    return 1;
  }

  v6 = v3 >= sub_1D525C410(a2, &unk_1F50A19B0);
  return (v7 & 1) != 0 || v6;
}

uint64_t sub_1D52D4750(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D5616168() ^ 1;
  }

  return v3 & 1;
}

BOOL sub_1D52D47B8()
{
  v0 = OUTLINED_FUNCTION_106_0();
  v2 = *(v1(v0) + 24);
  return (sub_1D560C2D8() & 1) == 0;
}

BOOL sub_1D52D47F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = sub_1D525C410(a2, &unk_1F50A19B0);
  if (v4)
  {
    return 0;
  }

  v6 = v3 < sub_1D525C410(a1, &unk_1F50A19B0);
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1D52D4874(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    return 0;
  }

  else
  {
    return sub_1D5616168();
  }
}

uint64_t sub_1D52D489C()
{
  v0 = OUTLINED_FUNCTION_106_0();
  v2 = *(v1(v0) + 24);

  return sub_1D560C2D8();
}

uint64_t sub_1D52D48E0(_BOOL8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v20 = MEMORY[0x1E69E7CD0];
  if (a1)
  {
    v11 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
    a1 = sub_1D52C8EF0(v11, 3);
    if ((v8 & 2) == 0)
    {
LABEL_3:
      if ((v8 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if (!(a1 & 2))
  {
    goto LABEL_3;
  }

  v12 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
  a1 = sub_1D52C8EF0(v12, 0);
  if ((v8 & 4) == 0)
  {
LABEL_4:
    if ((v8 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v13 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
  a1 = sub_1D52C8EF0(v13, 1);
  if ((v8 & 8) == 0)
  {
LABEL_5:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v14 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
  a1 = sub_1D52C8EF0(v14, 2);
  if ((v8 & 0x10) == 0)
  {
LABEL_6:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v15 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
  a1 = sub_1D52C8EF0(v15, 4);
  if ((v8 & 0x20) == 0)
  {
LABEL_7:
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v16 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
  a1 = sub_1D52C8EF0(v16, 5);
  if ((v8 & 0x40) == 0)
  {
LABEL_8:
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    v18 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
    a1 = sub_1D52C8EF0(v18, 8);
    if ((v8 & 0x80) == 0)
    {
      return v20;
    }

    goto LABEL_10;
  }

LABEL_18:
  v17 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
  a1 = sub_1D52C8EF0(v17, 6);
  if ((v8 & 0x100) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((v8 & 0x80) != 0)
  {
LABEL_10:
    v9 = OUTLINED_FUNCTION_14_67(a1, a2, a3, a4, a5, a6, a7, a8, v19, SWORD2(v19), SBYTE6(v19), SHIBYTE(v19));
    sub_1D52C8EF0(v9, 7);
  }

  return v20;
}

uint64_t sub_1D52D49CC(__int16 a1)
{
  if ((a1 & 2) == 0)
  {
    v4 = MEMORY[0x1E69E7CC0];
    if ((a1 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  sub_1D4EFF8E4();
  v4 = v5;
  v6 = *(v5 + 16);
  v1 = v6 + 1;
  if (v6 >= *(v5 + 24) >> 1)
  {
    OUTLINED_FUNCTION_3_128();
    v4 = v28;
  }

  *(v4 + 16) = v1;
  v7 = v4 + 16 * v6;
  *(v7 + 32) = 0x726E65476C6C612ELL;
  *(v7 + 40) = 0xEA00000000007365;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = *(v4 + 16);
      OUTLINED_FUNCTION_1_13();
      sub_1D4EFF8E4();
      v4 = v30;
    }

    v8 = *(v4 + 16);
    v1 = v8 + 1;
    if (v8 >= *(v4 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_128();
      v4 = v31;
    }

    *(v4 + 16) = v1;
    v9 = v4 + 16 * v8;
    strcpy((v9 + 32), ".audioAnalysis");
    *(v9 + 47) = -18;
  }

LABEL_12:
  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = *(v4 + 16);
      OUTLINED_FUNCTION_1_13();
      sub_1D4EFF8E4();
      v4 = v33;
    }

    OUTLINED_FUNCTION_6_96();
    if (v10)
    {
      OUTLINED_FUNCTION_3_128();
      v4 = v34;
    }

    OUTLINED_FUNCTION_7_98();
    *(v12 + 32) = 0xD00000000000001DLL;
    *(v12 + 40) = v11;
    if ((a1 & 1) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = *(v4 + 16);
    OUTLINED_FUNCTION_1_13();
    sub_1D4EFF8E4();
    v4 = v36;
  }

  OUTLINED_FUNCTION_6_96();
  if (v10)
  {
    OUTLINED_FUNCTION_3_128();
    v4 = v37;
  }

  *(v4 + 16) = v1;
  v13 = v4 + 16 * v2;
  *(v13 + 32) = 0x6F6974617275642ELL;
  *(v13 + 40) = 0xE90000000000006ELL;
  if ((a1 & 0x10) == 0)
  {
LABEL_15:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = *(v4 + 16);
    OUTLINED_FUNCTION_1_13();
    sub_1D4EFF8E4();
    v4 = v39;
  }

  OUTLINED_FUNCTION_6_96();
  if (v10)
  {
    OUTLINED_FUNCTION_3_128();
    v4 = v40;
  }

  *(v4 + 16) = v1;
  v14 = v4 + 16 * v2;
  strcpy((v14 + 32), ".flexAnalysis");
  *(v14 + 46) = -4864;
  if ((a1 & 0x20) == 0)
  {
LABEL_16:
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = *(v4 + 16);
    OUTLINED_FUNCTION_1_13();
    sub_1D4EFF8E4();
    v4 = v42;
  }

  OUTLINED_FUNCTION_6_96();
  if (v10)
  {
    OUTLINED_FUNCTION_3_128();
    v4 = v43;
  }

  OUTLINED_FUNCTION_7_98();
  *(v16 + 32) = 0xD00000000000001CLL;
  *(v16 + 40) = v15;
  if ((a1 & 0x40) == 0)
  {
LABEL_17:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_45;
  }

LABEL_40:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = *(v4 + 16);
    OUTLINED_FUNCTION_1_13();
    sub_1D4EFF8E4();
    v4 = v45;
  }

  OUTLINED_FUNCTION_6_96();
  if (v10)
  {
    OUTLINED_FUNCTION_3_128();
    v4 = v46;
  }

  OUTLINED_FUNCTION_7_98();
  *(v18 + 32) = 0xD000000000000019;
  *(v18 + 40) = v17;
  if ((a1 & 0x80) == 0)
  {
LABEL_18:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_45:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v47 = *(v4 + 16);
    OUTLINED_FUNCTION_1_13();
    sub_1D4EFF8E4();
    v4 = v48;
  }

  OUTLINED_FUNCTION_6_96();
  if (v10)
  {
    OUTLINED_FUNCTION_3_128();
    v4 = v49;
  }

  OUTLINED_FUNCTION_7_98();
  *(v20 + 32) = 0xD000000000000020;
  *(v20 + 40) = v19;
  if ((a1 & 0x100) != 0)
  {
LABEL_50:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = *(v4 + 16);
      OUTLINED_FUNCTION_1_13();
      sub_1D4EFF8E4();
      v4 = v51;
    }

    v22 = *(v4 + 16);
    v21 = *(v4 + 24);
    if (v22 >= v21 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v21);
      sub_1D4EFF8E4();
      v4 = v52;
    }

    *(v4 + 16) = v22 + 1;
    v23 = v4 + 16 * v22;
    *(v23 + 32) = 0xD000000000000019;
    *(v23 + 40) = 0x80000001D568A1D0;
  }

LABEL_55:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D50A9E08();
  v24 = sub_1D5614CF8();
  v26 = v25;

  MEMORY[0x1DA6EAC70](v24, v26);

  MEMORY[0x1DA6EAC70](93, 0xE100000000000000);
  return 91;
}

BOOL sub_1D52D4DF4(void *a1, void *a2)
{
  v4 = _s13PersistedDateVMa();
  v5 = OUTLINED_FUNCTION_14(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  v20 = *a1 == *a2 && a1[1] == a2[1];
  if (!v20 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v21 = _s10DescriptorVMa();
  v22 = v21[5];
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v21[6]) != *(a2 + v21[6]))
  {
    return 0;
  }

  if (*(a1 + v21[7]) != *(a2 + v21[7]))
  {
    return 0;
  }

  if (*(a1 + v21[8]) != *(a2 + v21[8]))
  {
    return 0;
  }

  v23 = v21[9];
  if ((sub_1D560C2E8() & 1) == 0)
  {
    return 0;
  }

  v24 = v21[10];
  v25 = *(v14 + 48);
  sub_1D52D654C(a1 + v24, v19);
  sub_1D52D654C(a2 + v24, &v19[v25]);
  OUTLINED_FUNCTION_5_1(v19);
  if (v20)
  {
    OUTLINED_FUNCTION_5_1(&v19[v25]);
    if (v20)
    {
      sub_1D4E50004(v19, &qword_1EC7EB470, &qword_1D561F3D0);
      return 1;
    }

    goto LABEL_19;
  }

  sub_1D52D654C(v19, v13);
  OUTLINED_FUNCTION_5_1(&v19[v25]);
  if (v26)
  {
    sub_1D51D2E04(v13, _s13PersistedDateVMa);
LABEL_19:
    sub_1D4E50004(v19, &qword_1EC7EB478, &unk_1D5623530);
    return 0;
  }

  sub_1D52D6620();
  v28 = sub_1D560C2E8();
  sub_1D51D2E04(v9, _s13PersistedDateVMa);
  sub_1D51D2E04(v13, _s13PersistedDateVMa);
  sub_1D4E50004(v19, &qword_1EC7EB470, &qword_1D561F3D0);
  return (v28 & 1) != 0;
}

uint64_t sub_1D52D50B4()
{
  v1 = v0;
  v2 = _s13PersistedDateVMa();
  v3 = OUTLINED_FUNCTION_14(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = *v0;
  v13 = v0[1];
  sub_1D5614E28();
  v14 = _s10DescriptorVMa();
  v15 = v14[5];
  sub_1D560C328();
  sub_1D52D66E8(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
  sub_1D5614CB8();
  v16 = *(v1 + v14[6]);
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](*(v1 + v14[7]));
  MEMORY[0x1DA6EC0D0](*(v1 + v14[8]));
  v17 = v1 + v14[9];
  sub_1D5614CB8();
  sub_1D52D654C(v1 + v14[10], v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    return sub_1D56162F8();
  }

  sub_1D52D6620();
  sub_1D56162F8();
  sub_1D5614CB8();
  return sub_1D51D2E04(v7, _s13PersistedDateVMa);
}

uint64_t sub_1D52D52C8()
{
  OUTLINED_FUNCTION_164();
  sub_1D52D50B4();
  return sub_1D5616328();
}

uint64_t sub_1D52D530C()
{
  sub_1D56162D8();
  sub_1D52D50B4();
  return sub_1D5616328();
}

uint64_t sub_1D52D5348()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v18 - v3;
  v5 = _s13PersistedDateVMa();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0x7470697263736544;
  v22 = 0xEB0000000028726FLL;
  strcpy(v20, "assetAdamID: ");
  HIWORD(v20[1]) = -4864;
  v9 = *v0;
  v10 = v0[1];
  v11 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v11);

  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D568A140);
  v12 = _s10DescriptorVMa();
  v13 = v12[5];
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0x6B6361427369202CLL, 0xEE00203A6C6C6966);
  LOBYTE(v19) = *(v0 + v12[6]);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D5615B68();

  v20[0] = 0xD000000000000017;
  v20[1] = 0x80000001D568A160;
  v19 = *(v0 + v12[7]);
  sub_1D52D64F8();
  v14 = sub_1D5614F48();
  MEMORY[0x1DA6EAC70](v14);

  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D5615B68();

  v20[0] = 0xD000000000000017;
  v20[1] = 0x80000001D5688BD0;
  v19 = *(v0 + v12[8]);
  v15 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v15);

  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000027, 0x80000001D568A180);
  v16 = v12[9];
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](v20[0], v20[1]);

  sub_1D52D654C(v0 + v12[10], v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E50004(v4, &qword_1EC7EB470, &qword_1D561F3D0);
  }

  else
  {
    sub_1D52D6620();
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568A1B0);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](v20[0], v20[1]);

    sub_1D51D2E04(v8, _s13PersistedDateVMa);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v21;
}

unint64_t sub_1D52D580C()
{
  v0 = sub_1D52D5348();
  MEMORY[0x1DA6EAC70](v0);

  return 0xD000000000000025;
}

uint64_t sub_1D52D5938@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5002190(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1D52D5968@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54E4BCC(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_1D52D5998()
{
  result = qword_1EC7F3908;
  if (!qword_1EC7F3908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3908);
  }

  return result;
}

unint64_t sub_1D52D59F0()
{
  result = qword_1EC7F3910;
  if (!qword_1EC7F3910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3910);
  }

  return result;
}

unint64_t sub_1D52D5A48()
{
  result = qword_1EC7F3918;
  if (!qword_1EC7F3918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3918);
  }

  return result;
}

unint64_t sub_1D52D5AA0()
{
  result = qword_1EC7F3920;
  if (!qword_1EC7F3920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3920);
  }

  return result;
}

uint64_t sub_1D52D5AF4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 0;
  }

  else
  {
    return sub_1D5616168();
  }
}

void sub_1D52D5B74()
{
  sub_1D4F916AC();
  if (v0)
  {
    sub_1D4F916AC();
    if (v1)
    {
      sub_1D4F2DD9C();
      if (v2)
      {

        sub_1D4F916AC();
      }
    }
  }
}

void sub_1D52D5C14()
{
  sub_1D4FB7060();
  sub_1D4FB7060();
  sub_1D4F3845C();

  sub_1D4FB7060();
}

uint64_t sub_1D52D5C7C()
{
  OUTLINED_FUNCTION_164();
  sub_1D4FB7060();
  sub_1D4FB7060();
  sub_1D4F3845C();
  sub_1D4FB7060();
  return sub_1D5616328();
}

void sub_1D52D5D04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  sub_1D52D5B74();
}

uint64_t sub_1D52D5D20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1D52D5C7C();
}

void sub_1D52D5D2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D52D5C14();
}

uint64_t sub_1D52D5D38()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D56162D8();
  sub_1D52D5C14();
  return sub_1D5616328();
}

void sub_1D52D5D94(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  v105 = a4;
  v107 = a3;
  v111 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBED8, &qword_1D561F3C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13();
  v108 = v9;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v101 - v11;
  v13 = _s10DescriptorVMa();
  v109 = *(v13 - 8);
  v14 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_13();
  v110 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v106 = &v101 - v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v101 - v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  v102 = &v101 - v21;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v22);
  v103 = &v101 - v23;
  v104 = a1;
  v24 = *(a1 + 56);
  v25 = *(a1 + 32);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_18_69();

  v26 = 0;
  v27 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_20_63();
      v29 = v103;
      v31 = OUTLINED_FUNCTION_13_74(v30);
      sub_1D52D65BC(v31, v29);
      OUTLINED_FUNCTION_23_55();
      OUTLINED_FUNCTION_11_88(v32 | 0x208C818000000000);
      sub_1D52D5348();
      OUTLINED_FUNCTION_0_169();
      sub_1D51D2E04(v29, v33);
      OUTLINED_FUNCTION_22_55();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v27 + 16);
        OUTLINED_FUNCTION_1_13();
        sub_1D4EFF8E4();
        v27 = v37;
      }

      OUTLINED_FUNCTION_10_85();
      if (v35)
      {
        OUTLINED_FUNCTION_22_41(v34);
        sub_1D4EFF8E4();
        v27 = v38;
      }

      OUTLINED_FUNCTION_8_91();
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (v28 >= v5)
    {
      break;
    }

    ++v26;
    if (*(a1 + 56 + 8 * v28))
    {
      goto LABEL_5;
    }
  }

  v40 = *(v111 + 56);
  v39 = v111 + 56;
  v41 = *(v111 + 32);
  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_18_69();

  for (i = 0; ; ++i)
  {
    v43 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v43 >= v5)
    {

      v54 = *(v105 + 7);
      v53 = v105 + 56;
      v55 = v105[32];
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_18_69();

      for (j = 0; ; ++j)
      {
        v57 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if (v57 >= v5)
        {

          v68 = *(v107 + 64);
          v67 = v107 + 64;
          v69 = *(v107 + 32);
          OUTLINED_FUNCTION_15_0();
          v72 = v71 & v70;
          v74 = (v73 + 63) >> 6;

          v75 = 0;
          v105 = v12;
          while (1)
          {
            v76 = v108;
            v111 = v27;
            if (!v72)
            {
              break;
            }

            v77 = v75;
LABEL_35:
            v78 = __clz(__rbit64(v72));
            v72 &= v72 - 1;
            v79 = v78 | (v77 << 6);
            v80 = v107;
            sub_1D52D65BC(*(v107 + 48) + *(v109 + 72) * v79, v106);
            v81 = *(*(v80 + 56) + 8 * v79);
            v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
            v83 = *(v82 + 48);
            OUTLINED_FUNCTION_9_88();
            sub_1D52D6620();
            *(v76 + v83) = v81;
            __swift_storeEnumTagSinglePayload(v76, 0, 1, v82);
            v12 = v105;
LABEL_36:
            sub_1D52D6678(v76, v12);
            v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
            if (__swift_getEnumTagSinglePayload(v12, 1, v84) == 1)
            {

              v113 = v111;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
              sub_1D50A9E08();
              v98 = sub_1D5614CF8();
              v100 = v99;

              v113 = 0xD000000000000011;
              v114 = 0x80000001D568A280;
              MEMORY[0x1DA6EAC70](v98, v100);

              return;
            }

            v85 = *&v12[*(v84 + 48)];
            OUTLINED_FUNCTION_9_88();
            sub_1D52D6620();
            v113 = 0;
            v114 = 0xE000000000000000;
            sub_1D5615B68();

            OUTLINED_FUNCTION_23_55();
            OUTLINED_FUNCTION_11_88(v86 | 0x208E818000000000);
            v87 = sub_1D52D5348();
            MEMORY[0x1DA6EAC70](v87);

            MEMORY[0x1DA6EAC70](0x9494E2090ALL, 0xA500000000000000);
            v112 = v85;
            sub_1D52D64F8();
            v88 = sub_1D5614F48();
            MEMORY[0x1DA6EAC70](v88);

            v89 = v113;
            v90 = v114;
            v27 = v111;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v95 = *(v27 + 16);
              OUTLINED_FUNCTION_1_13();
              sub_1D4EFF8E4();
              v27 = v96;
            }

            OUTLINED_FUNCTION_10_85();
            if (v35)
            {
              OUTLINED_FUNCTION_22_41(v91);
              sub_1D4EFF8E4();
              v27 = v97;
            }

            OUTLINED_FUNCTION_0_169();
            sub_1D51D2E04(v110, v92);
            *(v27 + 16) = &v113;
            v93 = v27 + 16 * v85;
            *(v93 + 32) = v89;
            *(v93 + 40) = v90;
          }

          while (1)
          {
            v77 = v75 + 1;
            if (__OFADD__(v75, 1))
            {
              break;
            }

            if (v77 >= v74)
            {
              v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
              __swift_storeEnumTagSinglePayload(v76, 1, 1, v94);
              v72 = 0;
              goto LABEL_36;
            }

            v72 = *(v67 + 8 * v77);
            ++v75;
            if (v72)
            {
              v75 = v77;
              goto LABEL_35;
            }
          }

          __break(1u);
          goto LABEL_45;
        }

        if (*&v53[8 * v57])
        {
          while (1)
          {
            OUTLINED_FUNCTION_20_63();
            v59 = OUTLINED_FUNCTION_13_74(v58);
            v60 = v101;
            sub_1D52D65BC(v59, v101);
            OUTLINED_FUNCTION_23_55();
            OUTLINED_FUNCTION_11_88(v61 | 0x2085868000000000);
            sub_1D52D5348();
            OUTLINED_FUNCTION_0_169();
            sub_1D51D2E04(v60, v62);
            OUTLINED_FUNCTION_22_55();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v64 = *(v27 + 16);
              OUTLINED_FUNCTION_1_13();
              sub_1D4EFF8E4();
              v27 = v65;
            }

            OUTLINED_FUNCTION_10_85();
            if (v35)
            {
              OUTLINED_FUNCTION_22_41(v63);
              sub_1D4EFF8E4();
              v27 = v66;
            }

            OUTLINED_FUNCTION_8_91();
          }
        }
      }

      goto LABEL_47;
    }

    if (*(v39 + 8 * v43))
    {
      while (1)
      {
        OUTLINED_FUNCTION_20_63();
        v45 = OUTLINED_FUNCTION_13_74(v44);
        v46 = v102;
        sub_1D52D65BC(v45, v102);
        OUTLINED_FUNCTION_23_55();
        OUTLINED_FUNCTION_11_88(v47 | 0x20A7958000000000);
        sub_1D52D5348();
        OUTLINED_FUNCTION_0_169();
        sub_1D51D2E04(v46, v48);
        OUTLINED_FUNCTION_22_55();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v50 = *(v27 + 16);
          OUTLINED_FUNCTION_1_13();
          sub_1D4EFF8E4();
          v27 = v51;
        }

        OUTLINED_FUNCTION_10_85();
        if (v35)
        {
          OUTLINED_FUNCTION_22_41(v49);
          sub_1D4EFF8E4();
          v27 = v52;
        }

        OUTLINED_FUNCTION_8_91();
      }
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

unint64_t sub_1D52D64F8()
{
  result = qword_1EC7F3928;
  if (!qword_1EC7F3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3928);
  }

  return result;
}

uint64_t sub_1D52D654C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52D65BC(uint64_t a1, uint64_t a2)
{
  v4 = _s10DescriptorVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52D6620()
{
  v2 = OUTLINED_FUNCTION_106_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_14(v4);
  (*(v5 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1D52D6678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBED8, &qword_1D561F3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52D66E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D52D6730(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D52D6770(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D52D67C4()
{
  result = qword_1EC7F3930;
  if (!qword_1EC7F3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3930);
  }

  return result;
}

uint64_t Song.presto_audioTraits.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5613618();
  v2 = sub_1D5613728();

  return sub_1D53895E8(v2, a1);
}

uint64_t sub_1D52D68A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2630, &qword_1D5648A08);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D50756A0();
  v0 = sub_1D560D138();

  qword_1EC7F3938 = v0;
  return result;
}

uint64_t sub_1D52D697C@<X0>(uint64_t a1@<X8>)
{
  result = Song.presto_audioTraits.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1D52D6A1C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C70, &unk_1D564ABD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - v5;
  v7 = _s5QueueC3KeyVMa(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*(v1 + 88) endAutomaticResponseLoading];
  sub_1D4E71314(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E72B00(v6);
  }

  else
  {
    sub_1D52D7100(v6, v10);
    sub_1D5434D88();
    sub_1D52D7164(v10);
  }

  if (qword_1EDD5E708 != -1)
  {
    swift_once();
  }

  v11 = *(v1 + 32);
  v12 = *(v1 + 56);
  v13 = *(v1 + 64);
  v15 = *(v1 + 24);
  v16 = v11;
  v17 = *(v1 + 40);
  v18 = v12;
  v19 = v13;
  sub_1D4E5EEC0(v15, v11);

  swift_unknownObjectRetain();
  sub_1D56120F8();
  sub_1D4E62868(v15, v16);
  swift_unknownObjectRelease();
}

uint64_t sub_1D52D6BDC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C70, &unk_1D564ABD8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = _s5QueueC3KeyVMa(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v20 - v16;
  result = sub_1D4E6F64C();
  if (result)
  {
    v19 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_queueKey;
    swift_beginAccess();
    sub_1D4E71314(v2 + v19, v10);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
    {
      sub_1D4E72B00(v10);
    }

    else
    {
      sub_1D52D7100(v10, v17);
      if (swift_weakLoadStrong())
      {
        sub_1D5434AF4();
      }

      sub_1D52D7164(v17);
    }

    sub_1D4E71314(a1, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      return sub_1D4E72B00(v8);
    }

    else
    {
      sub_1D52D7100(v8, v15);
      if (swift_weakLoadStrong())
      {
        sub_1D5434D88();
      }

      return sub_1D52D7164(v15);
    }
  }

  return result;
}

uint64_t sub_1D52D6DE8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C70, &unk_1D564ABD8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_queueKey;
  swift_beginAccess();
  sub_1D4E71314(v1 + v7, v6);
  swift_beginAccess();
  sub_1D52D71C0(a1, v1 + v7);
  swift_endAccess();
  sub_1D52D6BDC(v6);
  sub_1D4E72B00(a1);
  return sub_1D4E72B00(v6);
}

uint64_t sub_1D52D6ECC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C70, &unk_1D564ABD8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9[-v4];
  v6 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_lock);

  sub_1D560F608();

  if (v9[0] == 1)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v8 = OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_queueKey;
      swift_beginAccess();
      sub_1D4E71314(v1 + v8, v5);
      sub_1D52D6A1C(v5);

      return sub_1D4E72B00(v5);
    }
  }

  return result;
}

uint64_t sub_1D52D6FEC@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v2 = *(result + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_monitoringRequestsCount);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(result + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_monitoringRequestsCount) = v4;
    *a2 = v4 == 0;
  }

  return result;
}

uint64_t sub_1D52D7018()
{
  v1 = *(v0 + 16);

  swift_weakDestroy();
  sub_1D4E72B00(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_queueKey);
  v2 = *(v0 + OBJC_IVAR____TtCC16MusicKitInternal19InternalMusicPlayer7Monitor_lock);

  return v0;
}

uint64_t sub_1D52D7060()
{
  sub_1D52D7018();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D52D7100(uint64_t a1, uint64_t a2)
{
  v4 = _s5QueueC3KeyVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52D7164(uint64_t a1)
{
  v2 = _s5QueueC3KeyVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D52D71C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C70, &unk_1D564ABD8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52D7230(uint64_t a1, uint64_t a2)
{
  v4 = _s5QueueC3KeyVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for StorePlatformMusicMovie()
{
  result = qword_1EDD5CC60;
  if (!qword_1EDD5CC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52D7314()
{
  sub_1D4E518A0(319, &qword_1EDD5F070);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD531B0, &qword_1EC7EA760, &unk_1D56222B0);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD531C0, &qword_1EC7EC970, &qword_1D5631060);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_1D500A1D4();
    if (v13 > 0x3F)
    {
      return v12;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v15 > 0x3F)
    {
      return v14;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v16 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD527A0, &qword_1EC7F3940, qword_1D564F0C0);
    if (v17 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD60, &qword_1EC7EDD68, qword_1D56285B0);
    if (v18 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_1D4E6D600(319, &qword_1EDD53208, &qword_1EC7ED9A8, &unk_1D5626F90);
      v1 = v19;
      if (v20 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_1D52D76B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v115 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v117 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v111[-v22];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_19_0();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v111[-v32];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3950, &unk_1D564F210);
  OUTLINED_FUNCTION_4(v118);
  v35 = v34;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v111[-v39];
  v122 = type metadata accessor for StorePlatformMusicMovie();
  v41 = OUTLINED_FUNCTION_14(v122);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v120 = a1;
  v121 = (v45 - v44);
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D52DB760();
  v119 = v40;
  v47 = v123;
  sub_1D5616398();
  if (v47)
  {
    v123 = v47;
    LOBYTE(v49) = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v112 = 0;
    *v113 = 0;
    OUTLINED_FUNCTION_5_99();
  }

  else
  {
    v123 = v2;
    *&v113[4] = v20;
    v114 = v23;
    v50 = v35;
    LOBYTE(v124) = 0;
    v54 = v118;
    v48 = sub_1D5615F38();
    v68 = v121;
    *v121 = v48;
    v68[1] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v124) = 1;
    sub_1D4F886BC();
    OUTLINED_FUNCTION_31_1();
    sub_1D5615F78();
    v70 = v122;
    sub_1D4F39A1C(v33, v68 + v122[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v127 = 2;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_6_97();
    sub_1D5615F78();
    *(v68 + v70[6]) = v124;
    LOBYTE(v124) = 3;
    v71 = sub_1D5615F38();
    v52 = 0;
    v51 = v50;
    v72 = (v68 + v70[7]);
    *v72 = v71;
    v72[1] = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v127 = 4;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_6_97();
    sub_1D5615F78();
    *(v68 + v70[8]) = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    LOBYTE(v124) = 5;
    sub_1D4F888C0();
    OUTLINED_FUNCTION_31_1();
    v49 = v123;
    sub_1D5615F78();
    sub_1D4F39A1C(v49, v68 + v70[9], &qword_1EC7EC978, &unk_1D56222A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v127 = 6;
    sub_1D500E734(&qword_1EDD528F8);
    OUTLINED_FUNCTION_6_97();
    sub_1D5615F78();
    *(v68 + v70[10]) = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v127 = 7;
    sub_1D500E55C(&qword_1EDD52908);
    OUTLINED_FUNCTION_6_97();
    sub_1D5615F78();
    *(v68 + v70[11]) = v124;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v127 = 8;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_6_97();
    sub_1D5615F78();
    v123 = 0;
    *(v68 + v70[12]) = v124;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    v127 = 9;
    sub_1D500E5CC();
    OUTLINED_FUNCTION_6_97();
    v74 = v123;
    sub_1D5615F78();
    v123 = v74;
    if (v74)
    {
      v75 = OUTLINED_FUNCTION_24_52();
      v76(v75);
      OUTLINED_FUNCTION_5_99();
      OUTLINED_FUNCTION_0_170();
      *v113 = v77;
    }

    else
    {
      *(v121 + v122[13]) = v124;
      v127 = 10;
      sub_1D4F89C9C();
      v53 = v119;
      v78 = v123;
      sub_1D5615FD8();
      v123 = v78;
      if (v78)
      {
        v79 = OUTLINED_FUNCTION_24_52();
        v80(v79);
        OUTLINED_FUNCTION_5_99();
        OUTLINED_FUNCTION_0_170();
        *v113 = v81;
        *&v113[4] = v81;
      }

      else
      {
        v82 = v125;
        v83 = (v121 + v122[14]);
        *v83 = v124;
        v83[1] = v82;
        sub_1D560C0A8();
        LOBYTE(v124) = 11;
        OUTLINED_FUNCTION_4_97();
        sub_1D52DBAE4(v84);
        OUTLINED_FUNCTION_48_32();
        v123 = 0;
        sub_1D4F39A1C(v114, v121 + v122[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
        OUTLINED_FUNCTION_21_5(12);
        v85 = v123;
        v86 = sub_1D5615F48();
        v123 = v85;
        if (!v85)
        {
          *(v121 + v122[16]) = v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
          LOBYTE(v124) = 13;
          sub_1D4F88A24();
          OUTLINED_FUNCTION_31_1();
          v53 = v119;
          v87 = v123;
          sub_1D5615F78();
          v123 = v87;
          if (!v87)
          {
            sub_1D4F39A1C(v117, v121 + v122[17], &qword_1EC7EC960, &unk_1D56334C0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3940, qword_1D564F0C0);
            v127 = 14;
            sub_1D52DB7B4(&qword_1EDD527A8);
            OUTLINED_FUNCTION_10_86();
            OUTLINED_FUNCTION_49_28();
            v123 = 0;
            *(v121 + v122[18]) = v124;
            OUTLINED_FUNCTION_21_5(15);
            v91 = sub_1D5615F38();
            v123 = 0;
            v92 = (v121 + v122[19]);
            *v92 = v91;
            v92[1] = v93;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
            v127 = 16;
            sub_1D500E680();
            OUTLINED_FUNCTION_10_86();
            OUTLINED_FUNCTION_49_28();
            v123 = 0;
            *(v121 + v122[20]) = v124;
            OUTLINED_FUNCTION_21_5(17);
            v94 = sub_1D5615F38();
            v123 = 0;
            v95 = (v121 + v122[21]);
            *v95 = v94;
            v95[1] = v96;
            OUTLINED_FUNCTION_21_5(18);
            v97 = v123;
            v98 = sub_1D5615F48();
            v123 = v97;
            if (!v97)
            {
              *(v121 + v122[22]) = v98;
              OUTLINED_FUNCTION_21_5(19);
              v99 = v123;
              v100 = sub_1D5615F38();
              v123 = v99;
              if (!v99)
              {
                v105 = (v121 + v122[23]);
                *v105 = v100;
                v105[1] = v101;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
                LOBYTE(v124) = 20;
                sub_1D5000184();
                OUTLINED_FUNCTION_31_1();
                OUTLINED_FUNCTION_49_28();
                v123 = 0;
                sub_1D4F39A1C(v115, v121 + v122[24], &qword_1EC7ED9B0, &unk_1D5631050);
                LOBYTE(v124) = 21;
                OUTLINED_FUNCTION_48_32();
                v123 = 0;
                v106 = OUTLINED_FUNCTION_24_52();
                v107(v106);
                v108 = v121;
                sub_1D4F39A1C(*&v113[4], v121 + v122[25], &unk_1EC7E9CA8, &unk_1D561D1D0);
                sub_1D52DB9E8(v108, v116, type metadata accessor for StorePlatformMusicMovie);
                __swift_destroy_boxed_opaque_existential_1(v120);
                v109 = OUTLINED_FUNCTION_71();
                return sub_1D52DBA44(v109, v110);
              }
            }

            v102 = OUTLINED_FUNCTION_24_52();
            v103(v102);
            v126 = 0;
            __swift_destroy_boxed_opaque_existential_1(v120);
            LOBYTE(v50) = 1;
            v51 = 1;
            v52 = 1;
            v53 = 1;
            v54 = 1;
            v112 = 0x100000001;
            OUTLINED_FUNCTION_13_75(1);
            LODWORD(v117) = v104;
            LODWORD(v118) = v104;
            LODWORD(v119) = v104;
            v58 = 1;
            v55 = v121;
            v56 = v122;
LABEL_6:
            v59 = v55[1];

            if (v50)
            {
              goto LABEL_7;
            }

            goto LABEL_24;
          }
        }

        v88 = OUTLINED_FUNCTION_24_52();
        v89(v88);
        OUTLINED_FUNCTION_8_92();
        OUTLINED_FUNCTION_0_170();
        *v113 = v90;
        *&v113[4] = v90;
        LODWORD(v114) = v90;
        LODWORD(v115) = v90;
      }
    }
  }

  v55 = v121;
  v56 = v122;
  result = __swift_destroy_boxed_opaque_existential_1(v120);
  if (v49)
  {
    v58 = 0;
    v126 = 0;
    goto LABEL_6;
  }

  v126 = 0;
  v58 = 0;
  if (v50)
  {
LABEL_7:
    result = sub_1D4E50004(v55 + v56[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    if ((v51 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  if (!v51)
  {
LABEL_8:
    if (v52)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v64 = *(v55 + v56[6]);

  if (v52)
  {
LABEL_9:
    result = OUTLINED_FUNCTION_46_4(v56[7]);
    if ((v53 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  if (!v53)
  {
LABEL_10:
    if (v54)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v65 = *(v55 + v56[8]);

  if (v54)
  {
LABEL_11:
    result = sub_1D4E50004(v55 + v56[9], &qword_1EC7EC978, &unk_1D56222A0);
    if ((v112 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  if (!v112)
  {
LABEL_12:
    if (HIDWORD(v112))
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v66 = *(v55 + v56[10]);

  if ((v112 & 0x100000000) != 0)
  {
LABEL_13:
    v60 = *(v55 + v56[11]);

    if ((v113[0] & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!*v113)
  {
LABEL_14:
    if (*&v113[4])
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v67 = *(v55 + v56[12]);

  if (v113[4])
  {
LABEL_15:
    v61 = *(v55 + v56[13]);

    if ((v114 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  if (!v114)
  {
LABEL_16:
    if (v115)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  result = OUTLINED_FUNCTION_46_4(v56[14]);
  if (v115)
  {
LABEL_17:
    result = sub_1D4E50004(v55 + v56[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if ((v116 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  if (!v116)
  {
LABEL_18:
    if (v117)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  result = sub_1D4E50004(v55 + v56[17], &qword_1EC7EC960, &unk_1D56334C0);
  if (v117)
  {
LABEL_19:
    v62 = *(v55 + v56[18]);

    if ((v118 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  if (!v118)
  {
LABEL_20:
    if (v119)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  result = OUTLINED_FUNCTION_46_4(v56[19]);
  if (v119)
  {
LABEL_21:
    v63 = *(v55 + v56[20]);

    if ((v58 & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_39:
    result = OUTLINED_FUNCTION_46_4(v56[21]);
    goto LABEL_40;
  }

LABEL_38:
  if (v58)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (v126)
  {
    return sub_1D4E50004(v55 + v56[24], &qword_1EC7ED9B0, &unk_1D5631050);
  }

  return result;
}

uint64_t sub_1D52D8644(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3960, &qword_1D564F220);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D52DB760();
  sub_1D56163D8();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_29_0();
  sub_1D5616028();
  if (!v2)
  {
    v15 = type metadata accessor for StorePlatformMusicMovie();
    v16 = v15[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_61_1(v15[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v15[7]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v15[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FC7928();
    OUTLINED_FUNCTION_8_2();
    v17 = v15[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
    sub_1D4F7CF5C();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_61_1(v15[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D500E734(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D500E55C(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    sub_1D500E7A4();
    OUTLINED_FUNCTION_8_2();
    v18 = (v4 + v15[14]);
    v27 = *v18;
    v28 = v18[1];
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    v19 = v15[15];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_4_97();
    sub_1D52DBAE4(v20);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v21 = *(v4 + v15[16]);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v22 = v15[17];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_61_1(v15[18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3940, qword_1D564F0C0);
    sub_1D52DB7B4(&qword_1EC7F3968);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v15[19]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_61_1(v15[20]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD68, qword_1D56285B0);
    sub_1D500E858();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_35_5(v15[21]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v23 = *(v4 + v15[22]);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    OUTLINED_FUNCTION_35_5(v15[23]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    v24 = v15[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
    sub_1D4FF2700();
    OUTLINED_FUNCTION_21_0();
    v25 = v15[25];
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

BOOL sub_1D52D8CB8(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4(v5);
  v316 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v315 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v313 = v15;
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B8, &unk_1D5626FA0);
  OUTLINED_FUNCTION_14(v310);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v314 = v19;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v322);
  v318 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v317 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_13_3();
  v319 = v29;
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v320);
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_3();
  v324 = v33;
  v327 = sub_1D560C0A8();
  v34 = OUTLINED_FUNCTION_4(v327);
  v323 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5();
  v321 = v39 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v41 = OUTLINED_FUNCTION_22(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  v311 = v44 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v326 = &v306 - v47;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v48 = OUTLINED_FUNCTION_14(v325);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_59_0();
  v312 = v51 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v328 = &v306 - v54;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v333);
  v331 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_13_3();
  v329 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v60);
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_3();
  v330 = v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC980, &qword_1D5628710);
  OUTLINED_FUNCTION_14(v65);
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_13_3();
  v332 = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v70);
  v72 = v71;
  v74 = *(v73 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v306 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v78);
  v80 = *(v79 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_19_0();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v82);
  v84 = *(v83 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v306 - v86;
  v88 = a1[1];
  v89 = a2[1];
  if (v88)
  {
    if (!v89)
    {
      return 0;
    }

    v90 = *a1 == *a2 && v88 == v89;
    if (!v90 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v89)
  {
    return 0;
  }

  v307 = v5;
  v91 = type metadata accessor for StorePlatformMusicMovie();
  v334 = a2;
  v308 = v91;
  v92 = *(v91 + 20);
  v93 = a1;
  v94 = *(v82 + 48);
  v309 = v93;
  sub_1D4F39AB0(v93 + v92, v87, &qword_1EC7EB5B8, &unk_1D56206A0);
  v95 = v334 + v92;
  v96 = v334;
  sub_1D4F39AB0(v95, &v87[v94], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v87, 1, v70);
  if (v90)
  {
    OUTLINED_FUNCTION_57(&v87[v94], 1, v70);
    if (v90)
    {
      sub_1D4E50004(v87, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_23;
    }

LABEL_18:
    v98 = &qword_1EC7EC330;
    v99 = &qword_1D56222C0;
    v100 = v87;
    goto LABEL_19;
  }

  sub_1D4F39AB0(v87, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v87[v94], 1, v70);
  if (v97)
  {
    (*(v72 + 8))(v2, v70);
    goto LABEL_18;
  }

  (*(v72 + 32))(v77, &v87[v94], v70);
  sub_1D4F39858();
  v102 = sub_1D5614D18();
  v103 = *(v72 + 8);
  v103(v77, v70);
  v103(v2, v70);
  sub_1D4E50004(v87, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v102 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v104 = v308;
  v105 = v308[6];
  v106 = v309;
  v107 = *(v96 + v105);
  if (*(v309 + v105))
  {
    if (!v107)
    {
      return 0;
    }

    v108 = *(v96 + v105);

    sub_1D4F2C07C();
    v110 = v109;

    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v107)
  {
    return 0;
  }

  v111 = v104[7];
  v112 = *(v96 + v111 + 8);
  if (*(v106 + v111 + 8))
  {
    if (!v112)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0((v106 + v111));
    v115 = v90 && v113 == v114;
    if (!v115 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v112)
  {
    return 0;
  }

  v116 = v104[8];
  v117 = *(v96 + v116);
  if (*(v106 + v116))
  {
    if (!v117)
    {
      return 0;
    }

    v118 = *(v96 + v116);

    sub_1D4F2C5FC();
    v120 = v119;

    if ((v120 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v117)
  {
    return 0;
  }

  v121 = v104[9];
  v122 = *(v65 + 48);
  v123 = v332;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v124, v125, v126, v127);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v128, v129, v130, v131);
  v132 = v333;
  OUTLINED_FUNCTION_57(v123, 1, v333);
  if (v90)
  {
    OUTLINED_FUNCTION_57(v123 + v122, 1, v132);
    if (v90)
    {
      sub_1D4E50004(v123, &qword_1EC7EC978, &unk_1D56222A0);
      goto LABEL_52;
    }

LABEL_50:
    v98 = &qword_1EC7EC980;
    v99 = &qword_1D5628710;
    v100 = v123;
    goto LABEL_19;
  }

  v133 = v330;
  sub_1D4F39AB0(v123, v330, &qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_57(v123 + v122, 1, v132);
  if (v134)
  {
    (*(v331 + 8))(v133, v132);
    goto LABEL_50;
  }

  v135 = v331;
  v136 = v123 + v122;
  v137 = v329;
  (*(v331 + 32))(v329, v136, v132);
  sub_1D4F7C058();
  v138 = sub_1D5614D18();
  v139 = *(v135 + 8);
  v139(v137, v132);
  v139(v133, v132);
  sub_1D4E50004(v123, &qword_1EC7EC978, &unk_1D56222A0);
  if ((v138 & 1) == 0)
  {
    return 0;
  }

LABEL_52:
  v140 = v104[10];
  v141 = *(v106 + v140);
  v142 = *(v96 + v140);
  if (v141)
  {
    if (!v142)
    {
      return 0;
    }

    v143 = *(v96 + v140);

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v141 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v142)
  {
    return 0;
  }

  v144 = v104[11];
  v145 = *(v106 + v144);
  v146 = *(v96 + v144);
  if (v145)
  {
    if (!v146)
    {
      return 0;
    }

    v147 = *(v96 + v144);

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v145 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v146)
  {
    return 0;
  }

  v148 = v104[12];
  v149 = *(v106 + v148);
  v150 = *(v96 + v148);
  if (v149)
  {
    if (!v150 || (sub_1D4EF81E0(v149, v150) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v150)
  {
    return 0;
  }

  v151 = v104[13];
  v152 = *(v106 + v151);
  v153 = *(v96 + v151);
  if (v152)
  {
    if (!v153)
    {
      return 0;
    }

    v154 = *(v96 + v151);

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v152 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v153)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_52();
  v156 = *(v155 + 56);
  v157 = *(v309 + v156);
  v158 = *(v309 + v156 + 8);
  v159 = (v334 + v156);
  v160 = v157 == *v159 && v158 == v159[1];
  if (!v160 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_52();
  v162 = *(v161 + 60);
  v163 = *(v325 + 48);
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v164, v165, v166, v167);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v168, v169, v170, v171);
  v172 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v172, v173, v327);
  if (v90)
  {
    v174 = OUTLINED_FUNCTION_57_2(v328);
    OUTLINED_FUNCTION_57(v174, v175, v176);
    if (v90)
    {
      sub_1D4E50004(v328, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_87;
    }

LABEL_85:
    v98 = &qword_1EC7E9FB0;
    v99 = &qword_1D562C590;
    v100 = v328;
    goto LABEL_19;
  }

  sub_1D4F39AB0(v328, v326, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v177 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v177, v178, v327);
  if (v179)
  {
    (*(v323 + 8))(v326, v327);
    goto LABEL_85;
  }

  v180 = v323;
  v181 = v327;
  v182 = v328;
  (*(v323 + 32))(v321, v328 + v163, v327);
  OUTLINED_FUNCTION_4_97();
  sub_1D52DBAE4(v183);
  v184 = v326;
  v185 = sub_1D5614D18();
  v186 = *(v180 + 8);
  v187 = OUTLINED_FUNCTION_122_1();
  v186(v187);
  (v186)(v184, v181);
  sub_1D4E50004(v182, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v185 & 1) == 0)
  {
    return 0;
  }

LABEL_87:
  OUTLINED_FUNCTION_25_52();
  OUTLINED_FUNCTION_40_42(*(v188 + 64));
  if (v90)
  {
    if (v189 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v189 == 2 || ((v189 ^ v190) & 1) != 0)
    {
      return result;
    }
  }

  OUTLINED_FUNCTION_25_52();
  v192 = *(v191 + 68);
  v193 = *(v320 + 48);
  v194 = &qword_1EC7EC960;
  OUTLINED_FUNCTION_31_5();
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v195, v196, v197, v198);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v199, v200, v201, v202);
  v203 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v203, v204, v322);
  if (!v90)
  {
    v194 = v324;
    sub_1D4F39AB0(v324, v319, &qword_1EC7EC960, &unk_1D56334C0);
    v207 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v207, v208, v322);
    if (!v209)
    {
      v210 = v317;
      OUTLINED_FUNCTION_81();
      v211 = v324;
      v212 = v324 + v193;
      v213 = v322;
      v214(v210, v212, v322);
      sub_1D4F7BF60();
      v215 = v319;
      OUTLINED_FUNCTION_157_0();
      v216 = OUTLINED_FUNCTION_51();
      (unk_1D56334C0)(v216);
      (unk_1D56334C0)(v215, v213);
      sub_1D4E50004(v211, &qword_1EC7EC960, &unk_1D56334C0);
      if ((v194 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_103;
    }

    (*(v318 + 8))(v319, v322);
LABEL_101:
    v98 = &qword_1EC7EC968;
    v99 = &unk_1D5622290;
    v100 = v324;
    goto LABEL_19;
  }

  v205 = OUTLINED_FUNCTION_57_2(v324);
  OUTLINED_FUNCTION_57(v205, v206, v322);
  if (!v90)
  {
    goto LABEL_101;
  }

  sub_1D4E50004(v324, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_103:
  OUTLINED_FUNCTION_25_52();
  OUTLINED_FUNCTION_45_36(*(v217 + 72));
  if (&unk_1D56334C0)
  {
    if (!v194)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EFC46C();
    OUTLINED_FUNCTION_70_2();
    if ((&unk_1D56334C0 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v194)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_52();
  v219 = *(v218 + 76);
  OUTLINED_FUNCTION_15_76();
  if (v222)
  {
    if (!v220)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v221);
    v225 = v90 && v223 == v224;
    if (!v225 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v220)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_52();
  OUTLINED_FUNCTION_45_36(*(v226 + 80));
  if (&unk_1D56334C0)
  {
    if (!v194)
    {
      return 0;
    }

    v227 = OUTLINED_FUNCTION_159();
    sub_1D4EF905C(v227, v228, v229, v230, v231, v232, v233, v234, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316, v317);
    OUTLINED_FUNCTION_70_2();
    if ((&unk_1D56334C0 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v194)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_52();
  v236 = *(v235 + 84);
  OUTLINED_FUNCTION_15_76();
  if (v239)
  {
    if (!v237)
    {
      return 0;
    }

    OUTLINED_FUNCTION_31_0(v238);
    v242 = v90 && v240 == v241;
    if (!v242 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v237)
  {
    return 0;
  }

  OUTLINED_FUNCTION_25_52();
  OUTLINED_FUNCTION_40_42(*(v243 + 88));
  if (v90)
  {
    if (v244 != 2)
    {
      return 0;
    }

LABEL_137:
    OUTLINED_FUNCTION_25_52();
    v247 = *(v246 + 92);
    OUTLINED_FUNCTION_15_76();
    if (v250)
    {
      if (!v248)
      {
        return 0;
      }

      OUTLINED_FUNCTION_31_0(v249);
      v253 = v90 && v251 == v252;
      if (!v253 && (sub_1D5616168() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v248)
    {
      return 0;
    }

    OUTLINED_FUNCTION_25_52();
    v255 = *(v254 + 96);
    v256 = *(v310 + 48);
    OUTLINED_FUNCTION_31_5();
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v257, v258, v259, v260);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v261, v262, v263, v264);
    v265 = OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_57(v265, v266, v307);
    if (v90)
    {
      v267 = OUTLINED_FUNCTION_57_2(v314);
      OUTLINED_FUNCTION_57(v267, v268, v307);
      if (v90)
      {
        sub_1D4E50004(v314, &qword_1EC7ED9B0, &unk_1D5631050);
LABEL_156:
        OUTLINED_FUNCTION_25_52();
        v281 = *(v280 + 100);
        v282 = *(v325 + 48);
        OUTLINED_FUNCTION_31_5();
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v283, v284, v285, v286);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v287, v288, v289, v290);
        v291 = OUTLINED_FUNCTION_95_0();
        OUTLINED_FUNCTION_57(v291, v292, v327);
        if (v90)
        {
          v293 = OUTLINED_FUNCTION_57_2(v312);
          OUTLINED_FUNCTION_57(v293, v294, v327);
          if (v90)
          {
            sub_1D4E50004(v312, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return 1;
          }
        }

        else
        {
          v295 = v312;
          sub_1D4F39AB0(v312, v311, &unk_1EC7E9CA8, &unk_1D561D1D0);
          v296 = OUTLINED_FUNCTION_72_1();
          OUTLINED_FUNCTION_57(v296, v297, v327);
          if (!v298)
          {
            OUTLINED_FUNCTION_81();
            v299 = v312;
            v300 = v312 + v282;
            v301 = v327;
            v302(v321, v300, v327);
            OUTLINED_FUNCTION_4_97();
            sub_1D52DBAE4(v303);
            v304 = v311;
            OUTLINED_FUNCTION_157_0();
            v305 = OUTLINED_FUNCTION_51();
            (unk_1D561D1D0)(v305);
            (unk_1D561D1D0)(v304, v301);
            sub_1D4E50004(v299, &unk_1EC7E9CA8, &unk_1D561D1D0);
            return (v295 & 1) != 0;
          }

          (*(v323 + 8))(v311, v327);
        }

        v98 = &qword_1EC7E9FB0;
        v99 = &qword_1D562C590;
        v100 = v312;
LABEL_19:
        sub_1D4E50004(v100, v98, v99);
        return 0;
      }
    }

    else
    {
      v269 = v314;
      sub_1D4F39AB0(v314, v313, &qword_1EC7ED9B0, &unk_1D5631050);
      v270 = OUTLINED_FUNCTION_72_1();
      OUTLINED_FUNCTION_57(v270, v271, v307);
      if (!v272)
      {
        v273 = v315;
        OUTLINED_FUNCTION_81();
        v274 = v314;
        v275 = v314 + v256;
        v276 = v307;
        v277(v273, v275, v307);
        sub_1D4FF1130();
        v278 = v313;
        OUTLINED_FUNCTION_157_0();
        v279 = OUTLINED_FUNCTION_51();
        (unk_1D5631050)(v279);
        (unk_1D5631050)(v278, v276);
        sub_1D4E50004(v274, &qword_1EC7ED9B0, &unk_1D5631050);
        if ((v269 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_156;
      }

      (*(v316 + 8))(v313, v307);
    }

    v98 = &qword_1EC7ED9B8;
    v99 = &unk_1D5626FA0;
    v100 = v314;
    goto LABEL_19;
  }

  result = 0;
  if (v244 != 2 && ((v244 ^ v245) & 1) == 0)
  {
    goto LABEL_137;
  }

  return result;
}

uint64_t sub_1D52D9EF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6867697279706F63 && a2 == 0xE900000000000074;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 25705 && a2 == 0xE200000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x696C436569766F6DLL && a2 == 0xEA00000000007370;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 1701667182 && a2 == 0xE400000000000000;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x73726566666FLL && a2 == 0xE600000000000000;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                    if (v22 || (sub_1D5616168() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000016 && 0x80000001D5681620 == a2;
                                      if (v23 || (sub_1D5616168() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x614E6F6964757473 && a2 == 0xEA0000000000656DLL;
                                        if (v24 || (sub_1D5616168() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD000000000000010 && 0x80000001D56811C0 == a2;
                                          if (v25 || (sub_1D5616168() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            v27 = sub_1D5616168();

                                            if (v27)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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
    }
  }
}

unint64_t sub_1D52DA590(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
    case 18:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x6867697279706F63;
      break;
    case 4:
      result = 0x73746964657263;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x6169726F74696465;
      break;
    case 8:
      result = 0x6D614E65726E6567;
      break;
    case 9:
      result = 0x7365726E6567;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 0x76697372656D6D69;
      break;
    case 12:
      result = 0x616C696176417369;
      break;
    case 13:
      result = 0x6F4E73656E757469;
      break;
    case 14:
      result = 0x696C436569766F6DLL;
      break;
    case 15:
      result = 1701667182;
      break;
    case 16:
      result = 0x73726566666FLL;
      break;
    case 17:
      result = 0x44657361656C6572;
      break;
    case 19:
      result = 0x614E6F6964757473;
      break;
    case 20:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D52DA7D8()
{
  v2 = v0;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9A8, &unk_1D5626F90);
  OUTLINED_FUNCTION_4(v135);
  v125 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v124 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED9B0, &unk_1D5631050);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v131 = v12;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v129);
  v123 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v122 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v128 = v22;
  v23 = sub_1D560C0A8();
  v24 = OUTLINED_FUNCTION_4(v23);
  v133 = v25;
  v134 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v132 = v29 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v31 = OUTLINED_FUNCTION_22(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v130 = v34 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v127 = &v120 - v37;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC970, &qword_1D5631060);
  OUTLINED_FUNCTION_4(v126);
  v121 = v38;
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_13_3();
  v120 = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC978, &unk_1D56222A0);
  OUTLINED_FUNCTION_22(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_19_0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v47);
  v49 = v48;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v120 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v55);
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v120 - v59;
  if (v0[1])
  {
    v61 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v62 = type metadata accessor for StorePlatformMusicMovie();
  sub_1D4F39AB0(v0 + v62[5], v60, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v60, 1, v47);
  if (v63)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v64 = *(v49 + 32);
    v65 = OUTLINED_FUNCTION_122_1();
    v66(v65);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v49 + 8))(v54, v47);
  }

  v67 = v134;
  v68 = *(v0 + v62[6]);
  if (v68)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v62[7]);
  if (v68)
  {
    v70 = *v69;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v62[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F35BFC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v0 + v62[9], v1, &qword_1EC7EC978, &unk_1D56222A0);
  v71 = OUTLINED_FUNCTION_95_0();
  v72 = v126;
  OUTLINED_FUNCTION_57(v71, v73, v126);
  if (v63)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v75 = v120;
    v74 = v121;
    (*(v121 + 32))(v120, v1, v72);
    OUTLINED_FUNCTION_27();
    sub_1D4F88554();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v74 + 8))(v75, v72);
  }

  if (*(v0 + v62[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v62[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v62[12]))
  {
    OUTLINED_FUNCTION_27();
    v76 = OUTLINED_FUNCTION_24();
    sub_1D4F06928(v76, v77);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v62[13]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v78 = (v0 + v62[14]);
  v79 = *v78;
  v80 = v78[1];
  sub_1D5614E28();
  v81 = v127;
  sub_1D4F39AB0(v2 + v62[15], v127, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v82 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v82, v83, v67);
  if (v63)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v85 = v132;
    v84 = v133;
    OUTLINED_FUNCTION_81();
    v86(v85, v81, v67);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_4_97();
    sub_1D52DBAE4(v87);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v84 + 8))(v85, v67);
  }

  if (*(v2 + v62[16]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F39AB0(v2 + v62[17], v128, &qword_1EC7EC960, &unk_1D56334C0);
  v88 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v88, v89, v129);
  if (v63)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v90 = v123;
    v91 = OUTLINED_FUNCTION_46_30();
    v92(v91);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v93 = *(v90 + 8);
    v94 = OUTLINED_FUNCTION_122_1();
    v95(v94);
  }

  v96 = *(v2 + v62[18]);
  if (v96)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F0A3C8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v62[19]);
  if (v96)
  {
    v98 = *v97;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v99 = *(v2 + v62[20]);
  if (v99)
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F080F8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  OUTLINED_FUNCTION_33_5(v62[21]);
  if (v99)
  {
    v101 = *v100;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v102 = *(v2 + v62[22]);
  if (v102 != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  OUTLINED_FUNCTION_33_5(v62[23]);
  if (v102)
  {
    v104 = *v103;
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_79();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v2 + v62[24], v131, &qword_1EC7ED9B0, &unk_1D5631050);
  v105 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v105, v106, v135);
  if (v63)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v107 = v125;
    v108 = OUTLINED_FUNCTION_46_30();
    v109(v108);
    OUTLINED_FUNCTION_27();
    sub_1D4FFFE38();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v110 = *(v107 + 8);
    v111 = OUTLINED_FUNCTION_122_1();
    v112(v111);
  }

  v113 = v130;
  sub_1D4F39AB0(v2 + v62[25], v130, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v114 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v114, v115, v67);
  if (v63)
  {
    return OUTLINED_FUNCTION_36();
  }

  v117 = v132;
  v116 = v133;
  (*(v133 + 32))(v132, v113, v67);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_4_97();
  sub_1D52DBAE4(v118);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v116 + 8))(v117, v67);
}

uint64_t sub_1D52DB15C()
{
  sub_1D56162D8();
  sub_1D52DA7D8();
  return sub_1D5616328();
}

uint64_t sub_1D52DB1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52D9EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D52DB1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D52DA588();
  *a1 = result;
  return result;
}

uint64_t sub_1D52DB1F4(uint64_t a1)
{
  v2 = sub_1D52DB760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DB230(uint64_t a1)
{
  v2 = sub_1D52DB760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52DB2A8()
{
  sub_1D56162D8();
  sub_1D52DA7D8();
  return sub_1D5616328();
}

uint64_t sub_1D52DB2E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v44 = v5;
  v6 = sub_1D560F548();
  v7 = OUTLINED_FUNCTION_4(v6);
  v41 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = type metadata accessor for StorePlatformOffer(0);
  v15 = OUTLINED_FUNCTION_4(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = *(v0 + *(type metadata accessor for StorePlatformMusicMovie() + 80));
  if (!v23)
  {
    return 0;
  }

  v24 = *(v23 + 16);
  if (!v24)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = *(v14 + 20);
  v26 = v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v27 = *(v17 + 72);
  v42 = (v41 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  v43 = v13;
  v40 = v27;
  do
  {
    sub_1D52DB9E8(v26, v22, type metadata accessor for StorePlatformOffer);
    sub_1D4F39AB0(v22 + v25, v44, &qword_1EC7EAC58, &unk_1D561DA70);
    sub_1D52DBA44(v22, type metadata accessor for StorePlatformOffer);
    v29 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v29, v30, v6);
    if (v31)
    {
      sub_1D4E50004(v44, &qword_1EC7EAC58, &unk_1D561DA70);
    }

    else
    {
      v32 = v25;
      v33 = *v42;
      (*v42)(v43, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = *(v28 + 16);
        sub_1D4F00C24();
        v28 = v37;
      }

      v35 = *(v28 + 16);
      if (v35 >= *(v28 + 24) >> 1)
      {
        sub_1D4F00C24();
        v28 = v38;
      }

      *(v28 + 16) = v35 + 1;
      (v33)(v28 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35, v43, v6);
      v25 = v32;
      v27 = v40;
    }

    v26 += v27;
    --v24;
  }

  while (v24);
  return v28;
}

uint64_t sub_1D52DB5E8()
{
  v1 = *(v0 + *(type metadata accessor for StorePlatformMusicMovie() + 64));
  if (v1 != 2)
  {
    return v1 & 1;
  }

  sub_1D52DBAE4(&qword_1EC7EFC08);
  sub_1D52DBAE4(&qword_1EC7EFC10);
  OUTLINED_FUNCTION_24();

  return sub_1D5612A28();
}

uint64_t sub_1D52DB6E0()
{
  sub_1D52DBAE4(&qword_1EC7EFC10);

  return sub_1D5612A28();
}

unint64_t sub_1D52DB760()
{
  result = qword_1EC7F3958;
  if (!qword_1EC7F3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3958);
  }

  return result;
}

unint64_t sub_1D52DB7B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3940, qword_1D564F0C0);
    v4();
    result = OUTLINED_FUNCTION_60_21();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D52DB818()
{
  result = qword_1EDD531F0;
  if (!qword_1EDD531F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D52DBAE4(&unk_1EDD57438);
    sub_1D52DBAE4(&unk_1EDD57440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD531F0);
  }

  return result;
}

unint64_t sub_1D52DB900()
{
  result = qword_1EC7F3970;
  if (!qword_1EC7F3970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D52DBAE4(&unk_1EDD57438);
    sub_1D52DBAE4(&unk_1EDD57440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3970);
  }

  return result;
}