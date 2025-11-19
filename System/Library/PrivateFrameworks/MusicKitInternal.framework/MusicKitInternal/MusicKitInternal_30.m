void sub_1D51021F8()
{
  sub_1D4F6888C(319, &qword_1EC7F00F8);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D4F6888C(319, &qword_1EC7F0100);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1D510251C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  return sub_1D510163C();
}

unint64_t sub_1D5102528()
{
  result = qword_1EDD5D840;
  if (!qword_1EDD5D840)
  {
    sub_1D560C988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D840);
  }

  return result;
}

unint64_t sub_1D5102580()
{
  result = qword_1EDD5D060;
  if (!qword_1EDD5D060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0108, &unk_1D563C2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5D060);
  }

  return result;
}

uint64_t sub_1D51025E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D4F15A78(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for StorePlatformGenericMusicItem();
    sub_1D51035F0(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for StorePlatformGenericMusicItem();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t sub_1D51026A0()
{
  sub_1D56162D8();
  sub_1D4F308AC();
  return sub_1D5616328();
}

uint64_t sub_1D5102704()
{
  v1 = *v0;
  sub_1D56162D8();
  sub_1D4F308AC();
  return sub_1D5616328();
}

uint64_t sub_1D5102748(uint64_t *a1)
{
  v104 = type metadata accessor for StorePlatformGenericMusicItem();
  v2 = OUTLINED_FUNCTION_4(v104);
  v101 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v103 = v6;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v98 - v8;
  v9 = sub_1D5610C98();
  v10 = OUTLINED_FUNCTION_4(v9);
  v118 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v107 = v14;
  OUTLINED_FUNCTION_23();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v98 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v98 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0110, &unk_1D56492D0);
  v22 = OUTLINED_FUNCTION_4(v21);
  v111 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v27 = &v98 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_73();
  sub_1D51037E8(v29, v30);
  v31 = v117;
  sub_1D5616398();
  v113 = v31;
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v108 = v18;
  v99 = a1;
  sub_1D4F53BAC();
  v110 = MEMORY[0x1E69E7CC0];
  v102 = sub_1D5614BD8();
  v109 = v21;
  v33 = sub_1D5615FE8();
  v34 = 0;
  v35 = *(v33 + 16);
  v36 = v118;
  v116 = v118 + 16;
  v117 = v9;
  v106 = (v118 + 32);
  v114 = (v118 + 8);
  v115 = v27;
  v37 = v9;
  while (1)
  {
    if (v35 == v34)
    {

      v51 = v110;
      v107 = *(v110 + 16);
      if (!v107)
      {
        v94 = v109;
        v95 = v111;
LABEL_41:

        (*(v95 + 8))(v27, v94);
        __swift_destroy_boxed_opaque_existential_1(v99);
        return v102;
      }

      v52 = 0;
      v53 = v118;
      v106 = (v110 + ((*(v118 + 80) + 32) & ~*(v118 + 80)));
      *&v50 = 136446466;
      v100 = v50;
      v54 = v108;
      while (1)
      {
        if (v52 >= *(v51 + 16))
        {
          goto LABEL_43;
        }

        (*(v53 + 16))(v54, &v106[*(v53 + 72) * v52], v37);
        sub_1D5610C88();
        v55 = sub_1D560EED8();
        v57 = v56;
        OUTLINED_FUNCTION_2_72();
        sub_1D51037E8(&qword_1EC7EFBC8, v58);
        v60 = v112;
        v59 = v113;
        sub_1D5615FD8();
        if (v59)
        {
          v105 = v55;
          v61 = OUTLINED_FUNCTION_7_58();
          v62(v61);
          if (qword_1EDD5D8A8 != -1)
          {
            swift_once();
          }

          v63 = sub_1D560C758();
          __swift_project_value_buffer(v63, qword_1EDD76DC8);

          v64 = v59;
          v65 = sub_1D560C738();
          v66 = sub_1D56156C8();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v119 = v69;
            *v67 = v100;
            v70 = sub_1D560EEC8();
            v72 = v71;

            v73 = sub_1D4E6835C(v70, v72, &v119);

            *(v67 + 4) = v73;
            *(v67 + 12) = 2114;
            v74 = v59;
            v75 = _swift_stdlib_bridgeErrorToNSError();
            *(v67 + 14) = v75;
            *v68 = v75;
            _os_log_impl(&dword_1D4E3F000, v65, v66, "Failed to decode Store Platform item for id %{public}s with error: %{public}@.", v67, 0x16u);
            sub_1D5103588(v68);
            MEMORY[0x1DA6ED200](v68, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v69);
            MEMORY[0x1DA6ED200](v69, -1, -1);
            MEMORY[0x1DA6ED200](v67, -1, -1);
          }

          else
          {
          }

          v113 = 0;
          v37 = v117;
          v53 = v118;
          v54 = v108;
          v94 = v109;
          v95 = v111;
          v27 = v115;
          goto LABEL_38;
        }

        v113 = 0;
        v76 = OUTLINED_FUNCTION_7_58();
        v77(v76);
        sub_1D51035F0(v60, v103);
        v78 = v102;
        swift_isUniquelyReferenced_nonNull_native();
        v119 = v78;
        v79 = v55;
        v80 = sub_1D4F15A78(v55, v57);
        if (__OFADD__(*(v78 + 16), (v81 & 1) == 0))
        {
          goto LABEL_44;
        }

        v82 = v80;
        v83 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0118, &qword_1D5636090);
        if (sub_1D5615D78())
        {
          v84 = v79;
          v85 = sub_1D4F15A78(v79, v57);
          v27 = v115;
          if ((v83 & 1) != (v86 & 1))
          {
            goto LABEL_46;
          }

          v82 = v85;
          v37 = v117;
          if ((v83 & 1) == 0)
          {
LABEL_31:
            v87 = v119;
            v119[(v82 >> 6) + 8] |= 1 << v82;
            v88 = (v87[6] + 16 * v82);
            *v88 = v84;
            v88[1] = v57;
            v89 = OUTLINED_FUNCTION_5_62(v87[7]);
            sub_1D5103654(v89, v90);
            sub_1D51036B8(v112);
            v91 = v87[2];
            v92 = __OFADD__(v91, 1);
            v93 = v91 + 1;
            if (v92)
            {
              goto LABEL_45;
            }

            v102 = v87;
            v87[2] = v93;
            goto LABEL_37;
          }
        }

        else
        {
          v37 = v117;
          v27 = v115;
          v84 = v79;
          if ((v83 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v102 = v119;
        v96 = OUTLINED_FUNCTION_5_62(v119[7]);
        sub_1D5103714(v96, v97);
        sub_1D51036B8(v112);
LABEL_37:
        v53 = v118;
        v54 = v108;
        v94 = v109;
        v95 = v111;
LABEL_38:
        v51 = v110;
        if (v107 == ++v52)
        {
          goto LABEL_41;
        }
      }
    }

    if (v34 >= *(v33 + 16))
    {
      break;
    }

    v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v39 = *(v36 + 72);
    (*(v36 + 16))(v20, v33 + v38 + v39 * v34, v37);
    if (sub_1D5610C88() == 0x6E6F6973726576 && v40 == 0xE700000000000000)
    {

LABEL_17:
      v37 = v117;
      (*v114)(v20, v117);
      ++v34;
      goto LABEL_18;
    }

    v42 = sub_1D5616168();

    if (v42)
    {
      goto LABEL_17;
    }

    v37 = v117;
    v105 = *v106;
    v105(v107, v20, v117);
    v43 = v110;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v43;
    v119 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = *(v43 + 16);
      sub_1D4F044AC();
      v37 = v117;
      v45 = v119;
    }

    v47 = *(v45 + 16);
    v48 = v47 + 1;
    v49 = v107;
    if (v47 >= *(v45 + 24) >> 1)
    {
      v110 = v47 + 1;
      sub_1D4F044AC();
      v48 = v110;
      v49 = v107;
      v37 = v117;
      v45 = v119;
    }

    ++v34;
    *(v45 + 16) = v48;
    v110 = v45;
    v105(v45 + v38 + v47 * v39, v49, v37);
LABEL_18:
    v36 = v118;
    v27 = v115;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D5103040(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D5610C98();
  v7 = OUTLINED_FUNCTION_4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for StorePlatformGenericMusicItem();
  v13 = OUTLINED_FUNCTION_4(v72);
  v68 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13();
  v71 = v17;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB918, &qword_1D561F0F8);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_13();
  v76 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  v75 = &v65 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0120, &qword_1D5636098);
  v25 = OUTLINED_FUNCTION_4(v78);
  v66 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v30 = &v65 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_3_73();
  sub_1D51037E8(v32, v33);
  v77 = v30;
  v74 = v6;
  sub_1D56163D8();
  v34 = a2 + 64;
  v35 = 1 << *(a2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(a2 + 64);
  v38 = (v35 + 63) >> 6;
  v69 = a2;
  v70 = v9 + 8;

  v40 = 0;
  while (v37)
  {
    v79 = v3;
    v41 = v40;
LABEL_10:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v41 << 6);
    v44 = (*(v69 + 48) + 16 * v43);
    v46 = *v44;
    v45 = v44[1];
    v47 = v67;
    sub_1D51035F0(*(v69 + 56) + *(v68 + 72) * v43, v67);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
    v49 = *(v48 + 48);
    v50 = v76;
    *v76 = v46;
    v50[1] = v45;
    v51 = v50;
    sub_1D5103654(v47, v50 + v49);
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v48);

LABEL_11:
    v52 = v75;
    sub_1D5103778(v51, v75);
    v53 = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
    if (__swift_getEnumTagSinglePayload(v53, 1, v54) == 1)
    {

      return (*(v66 + 8))(v77, v78);
    }

    v56 = *v53;
    v55 = v53[1];
    v57 = v71;
    sub_1D5103654(v53 + *(v54 + 48), v71);
    sub_1D5614EB8();

    OUTLINED_FUNCTION_2_72();
    sub_1D51037E8(&qword_1EC7F0128, v58);
    v59 = v79;
    sub_1D56160C8();
    v3 = v59;
    if (v59)
    {

      v63 = OUTLINED_FUNCTION_4_58();
      v64(v63);
      sub_1D51036B8(v57);
      return (*(v66 + 8))(v77, v78);
    }

    v60 = OUTLINED_FUNCTION_4_58();
    v61(v60);
    result = sub_1D51036B8(v57);
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v38)
    {
      v79 = v3;
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
      v51 = v76;
      __swift_storeEnumTagSinglePayload(v76, 1, 1, v62);
      v37 = 0;
      goto LABEL_11;
    }

    v37 = *(v34 + 8 * v41);
    ++v40;
    if (v37)
    {
      v79 = v3;
      v40 = v41;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5103540@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D5102748(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D5103588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C00, &qword_1D5623260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D51035F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformGenericMusicItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5103654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformGenericMusicItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51036B8(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformGenericMusicItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5103714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformGenericMusicItem();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5103778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB918, &qword_1D561F0F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51037E8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D5103844()
{
  result = qword_1EC7F0130;
  if (!qword_1EC7F0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0130);
  }

  return result;
}

uint64_t sub_1D51038C0@<X0>(uint64_t a1@<X0>, int **a2@<X8>)
{
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v94 = v7;
  OUTLINED_FUNCTION_70_0();
  v96 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v8 = OUTLINED_FUNCTION_14(v96);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  v15 = OUTLINED_FUNCTION_22(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v93 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_135();
  v92 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v91 = v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  v27 = OUTLINED_FUNCTION_22(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v90 - v33;
  v35 = sub_1D560C368();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  v43 = v42 - v41;
  sub_1D560C358();
  v44 = sub_1D560C338();
  v46 = v45;
  v47 = v35;
  v48 = v95;
  (*(v38 + 8))(v43, v47);
  v49 = v25;
  sub_1D4E628D4(v48, v97);
  sub_1D50027D8(v97, v50, v51, v52, v53, v54, v55, v56, v90, v91, v92, v93, v94, v95, v96, v97[0], v97[1], v97[2], v97[3], v97[4]);
  sub_1D4E628D4(v48, v97);
  sub_1D522B800();
  *a2 = v44;
  a2[1] = v46;
  sub_1D4F1C460(v34, v32, &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(v32, 1, v96);
  if (v57)
  {
    sub_1D4E50004(v32, &qword_1EC7F0140, &qword_1D5636130);
    v58 = v91;
    sub_1D4F1C460(v25, v91, &unk_1EC7F1280, &qword_1D5636138);
    v59 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
    OUTLINED_FUNCTION_57(v58, 1, v59);
    if (v57)
    {
      sub_1D4E50004(v58, &unk_1EC7F1280, &qword_1D5636138);
    }

    else
    {
      InternalMusicPlayer.Queue.Entry.Container.title.getter();
      OUTLINED_FUNCTION_0_89();
      sub_1D5105720(v58, v67);
    }

    v69 = v92;
    v68 = v93;
    v70 = _s21EntryPropertyProviderVMa();
    OUTLINED_FUNCTION_27_30(v70);
    sub_1D4F1C460(v49, v69, &unk_1EC7F1280, &qword_1D5636138);
    OUTLINED_FUNCTION_57(v69, 1, v59);
    if (v57)
    {
      sub_1D4E50004(v69, &unk_1EC7F1280, &qword_1D5636138);
      v72 = 0;
      v74 = 0;
    }

    else
    {
      InternalMusicPlayer.Queue.Entry.Container.subtitle.getter();
      v72 = v71;
      v74 = v73;
      OUTLINED_FUNCTION_0_89();
      sub_1D5105720(v69, v75);
    }

    v76 = (a2 + v44[12]);
    *v76 = v72;
    v76[1] = v74;
    sub_1D4F1C460(v49, v68, &unk_1EC7F1280, &qword_1D5636138);
    OUTLINED_FUNCTION_57(v68, 1, v59);
    if (v57)
    {
      sub_1D4E50004(v68, &unk_1EC7F1280, &qword_1D5636138);
      sub_1D56140F8();
      v81 = v94;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
    }

    else
    {
      v81 = v94;
      InternalMusicPlayer.Queue.Entry.Container.artwork.getter();
      OUTLINED_FUNCTION_0_89();
      sub_1D5105720(v68, v82);
    }

    sub_1D4FD23EC(v81, a2 + v44[10], &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
    sub_1D5105778(v32, v13, v60);
    InternalMusicPlayer.Queue.Entry.Item.title.getter();
    v61 = _s21EntryPropertyProviderVMa();
    OUTLINED_FUNCTION_27_30(v61);
    InternalMusicPlayer.Queue.Entry.Item.subtitle.getter();
    v62 = (a2 + v44[12]);
    *v62 = v63;
    v62[1] = v64;
    v65 = a2 + v44[10];
    InternalMusicPlayer.Queue.Entry.Item.artwork.getter();
    OUTLINED_FUNCTION_2_73();
    sub_1D5105720(v13, v66);
  }

  _s21EntryPropertyProviderVMa();
  sub_1D4FD23EC(v34, a2 + v44[5], &qword_1EC7F0140, &qword_1D5636130);
  sub_1D4FD23EC(v49, a2 + v44[6], &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F69344(v48, a2 + v44[15]);
  v83 = a2 + v44[7];
  *v83 = 0;
  v83[8] = 1;
  OUTLINED_FUNCTION_13_39(v44[8]);
  OUTLINED_FUNCTION_13_39(v44[13]);
  OUTLINED_FUNCTION_13_39(v44[14]);
  OUTLINED_FUNCTION_13_39(v44[9]);
  *(a2 + v44[18]) = 0;
  *(a2 + v44[16]) = 0;
  *(a2 + v44[17]) = 0;
  v84 = v44[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F3B80, qword_1D5636170);
  OUTLINED_FUNCTION_33();
  return __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
}

double sub_1D5103E84@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v193 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  v12 = OUTLINED_FUNCTION_22(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v189 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_3();
  v210 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2C30, &qword_1D564AB70);
  OUTLINED_FUNCTION_22(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v209 = v28;
  OUTLINED_FUNCTION_70_0();
  v29 = sub_1D560C4A8();
  v30 = OUTLINED_FUNCTION_4(v29);
  v201 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v200 = v35 - v34;
  OUTLINED_FUNCTION_70_0();
  v36 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v37 = OUTLINED_FUNCTION_14(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v40);
  v195 = v189 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  OUTLINED_FUNCTION_22(v42);
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13_3();
  v204 = v46;
  OUTLINED_FUNCTION_70_0();
  v205 = sub_1D560E728();
  v47 = OUTLINED_FUNCTION_4(v205);
  v203 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_5();
  v202 = v52 - v51;
  OUTLINED_FUNCTION_70_0();
  v53 = sub_1D560D838();
  v54 = OUTLINED_FUNCTION_4(v53);
  v206 = v55;
  v207 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  v199 = v189 - v60;
  v61 = [a1 musicKit_playerResponseItem_contentItemIdentifier];
  v62 = sub_1D5614D68();
  v64 = v63;

  *a3 = v62;
  a3[1] = v64;
  [a1 musicKit_playerResponseItem_startTime];
  v66 = v65;
  v67 = _s21EntryPropertyProviderVMa();
  v68 = a3 + v67[7];
  *v68 = v66;
  v68[8] = 0;
  [a1 musicKit_playerResponseItem_endTime];
  OUTLINED_FUNCTION_12_45(v67[8], v69);
  [a1 musicKit_playerResponseItem_duration];
  OUTLINED_FUNCTION_12_45(v67[9], v70);
  [a1 musicKit_playerResponseItem_rate];
  OUTLINED_FUNCTION_12_45(v67[13], v71);
  [a1 musicKit_playerResponseItem_defaultRate];
  OUTLINED_FUNCTION_12_45(v67[14], v72);
  *(a3 + v67[16]) = [a1 musicKit_playerResponseItem_isLiveContent];
  *(a3 + v67[17]) = [a1 musicKit_playerResponseItem_isPlaceholder];
  *(a3 + v67[18]) = [a1 musicKit_playerResponseItem_isLoading];
  v73 = v67[19];
  *&v212 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0158, &qword_1D5636218);
  sub_1D5612878();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F3B80, qword_1D5636170);
  __swift_storeEnumTagSinglePayload(a3 + v73, 0, 1, v74);
  v75 = [a1 musicKit_playerResponseItem_underlyingModelObject];
  v211 = v36;
  v208 = v29;
  if (v75)
  {
    v196 = v18;
    v197 = a1;
    v198 = a2;
    sub_1D56159A8();
    swift_unknownObjectRelease();
    sub_1D4E519A8(&v212, &v215);
    __swift_project_boxed_opaque_existential_1(&v215, v216);
    v76 = sub_1D5616158();
    if (qword_1EDD5D798 != -1)
    {
      swift_once();
    }

    v77 = sub_1D560D9A8();
    __swift_project_value_buffer(v77, qword_1EDD5D7A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
    v78 = sub_1D560DB08();
    OUTLINED_FUNCTION_4(v78);
    v80 = v79;
    v82 = *(v81 + 72);
    v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    a1 = swift_allocObject();
    a1[1] = xmmword_1D5621D90;
    v84 = a1 + v83;
    v85 = *(v80 + 104);
    v85(v84, *MEMORY[0x1E6975050], v78);
    v85(&v84[v82], *MEMORY[0x1E6975030], v78);
    v86 = v202;
    sub_1D560E718();
    sub_1D560D9E8();
    v87 = v204;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
    v92 = v199;
    sub_1D560F7D8();
    sub_1D4E50004(v87, &unk_1EC7EBF30, &qword_1D561C8C0);
    (*(v203 + 8))(v86, v205);
    v94 = v206;
    v93 = v207;
    v95 = v194;
    (*(v206 + 16))(v194, v92, v207);
    v214 = 0;
    v212 = 0u;
    v213 = 0u;
    v96 = v195;
    InternalMusicPlayer.Queue.Entry.Item.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v95, v76, &v212, MEMORY[0x1E69E7CC0], v195);
    (*(v94 + 8))(v92, v93);
    __swift_destroy_boxed_opaque_existential_1(&v215);
    v97 = v67[5];
    OUTLINED_FUNCTION_1_82();
    sub_1D5105778(v96, a3 + v97, v98);
    v36 = v211;
    __swift_storeEnumTagSinglePayload(a3 + v97, 0, 1, v211);
    a2 = v198;
    OUTLINED_FUNCTION_21_33();
    v18 = *(v99 - 256);
    v29 = v208;
  }

  else
  {
    v100 = v67[5];
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v101, v102, v103, v36);
  }

  v104 = v18;
  v105 = v209;
  sub_1D4F1C460(a2, v209, &unk_1EC7F2C30, &qword_1D564AB70);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F0160, &qword_1D5636220);
  OUTLINED_FUNCTION_5_1(v105);
  if (v136)
  {
    sub_1D4E50004(v105, &unk_1EC7F2C30, &qword_1D564AB70);
    v107 = v210;
LABEL_22:
    v139 = v67[6];
    type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
    goto LABEL_23;
  }

  v108 = v105;
  v109 = a2;
  v110 = v108 + *(v106 + 48);
  v112 = *v110;
  v111 = *(v110 + 8);
  v113 = v201;
  v114 = v200;
  (*(v201 + 32))(v200);
  if (!v112)
  {
    (*(v113 + 8))(v114, v29);
    v212 = 0u;
    v213 = 0u;
LABEL_21:
    a2 = v109;
    sub_1D4E50004(&v212, &qword_1EC7E9F98, &qword_1D561C420);
    v107 = v210;
    v36 = v211;
    goto LABEL_22;
  }

  v112(&v212, v114);
  sub_1D4EA7420(v112);
  if (!*(&v213 + 1))
  {
    OUTLINED_FUNCTION_19_3();
    v138(v114, v208);
    sub_1D4EA7420(v112);
    goto LABEL_21;
  }

  v209 = v111;
  v196 = v104;
  v197 = a1;
  v198 = v109;
  sub_1D4E519A8(&v212, &v215);
  __swift_project_boxed_opaque_existential_1(&v215, v216);
  v195 = sub_1D5616158();
  if (qword_1EDD53CA0 != -1)
  {
    swift_once();
  }

  v115 = sub_1D560D9A8();
  v194 = __swift_project_value_buffer(v115, qword_1EDD53CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
  v116 = sub_1D560DB08();
  OUTLINED_FUNCTION_4(v116);
  v118 = v117;
  v120 = *(v119 + 72);
  v121 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_1D5621D90;
  v123 = v122 + v121;
  v124 = *(v118 + 104);
  v124(v123, *MEMORY[0x1E6975050], v116);
  v124(v123 + v120, *MEMORY[0x1E6975030], v116);
  v125 = v202;
  sub_1D560E718();
  sub_1D560D9E8();
  v126 = v204;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v127, v128, v129, v130);
  v131 = v189[1];
  sub_1D560F7D8();
  sub_1D4E50004(v126, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v203 + 8))(v125, v205);
  v132 = sub_1D560D708();
  v134 = v133;
  v136 = v132 == sub_1D560EED8() && v134 == v135;
  if (v136)
  {
    swift_unknownObjectRelease();

    a2 = v198;
  }

  else
  {
    v137 = sub_1D5616168();

    a2 = v198;
    if ((v137 & 1) == 0)
    {
      v185 = v206;
      v184 = v207;
      v186 = v199;
      (*(v206 + 16))(v199, v131, v207);
      v214 = 0;
      v212 = 0u;
      v213 = 0u;
      InternalMusicPlayer.Queue.Entry.Container.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)(v186, &v212, MEMORY[0x1E69E7CC0], a3 + v67[6]);
      sub_1D4EA7420(v112);
      (*(v185 + 8))(v131, v184);
      OUTLINED_FUNCTION_19_3();
      v187(v200, v208);
      __swift_destroy_boxed_opaque_existential_1(&v215);
      OUTLINED_FUNCTION_21_33();
      v104 = *(v188 - 256);
      goto LABEL_39;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_21_33();
  v104 = *(v176 - 256);
  v177 = v208;
  sub_1D4EA7420(v112);
  (*(v206 + 8))(v131, v207);
  OUTLINED_FUNCTION_19_3();
  v178(v200, v177);
  __swift_destroy_boxed_opaque_existential_1(&v215);
  v179 = v67[6];
  type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v180, v181, v182, v183);
LABEL_39:
  v107 = v210;
  v36 = v211;
LABEL_23:
  sub_1D4F1C460(a3 + v67[5], v107, &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(v107, 1, v36);
  if (v136)
  {
    sub_1D4E50004(v107, &qword_1EC7F0140, &qword_1D5636130);
    v144 = v67[6];
    sub_1D4F1C460(a3 + v144, v104, &unk_1EC7F1280, &qword_1D5636138);
    type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
    OUTLINED_FUNCTION_5_1(v104);
    if (v136)
    {
      sub_1D4E50004(v104, &unk_1EC7F1280, &qword_1D5636138);
      v155 = 0;
      v157 = 0xE000000000000000;
    }

    else
    {
      InternalMusicPlayer.Queue.Entry.Container.title.getter();
      v155 = v154;
      v157 = v156;
      OUTLINED_FUNCTION_0_89();
      sub_1D5105720(v104, v158);
    }

    v159 = (a3 + v67[11]);
    *v159 = v155;
    v159[1] = v157;
    v160 = v191;
    sub_1D4F1C460(a3 + v144, v191, &unk_1EC7F1280, &qword_1D5636138);
    OUTLINED_FUNCTION_5_1(v160);
    if (v136)
    {
      sub_1D4E50004(v160, &unk_1EC7F1280, &qword_1D5636138);
      v162 = 0;
      v164 = 0;
    }

    else
    {
      InternalMusicPlayer.Queue.Entry.Container.subtitle.getter();
      v162 = v161;
      v164 = v163;
      OUTLINED_FUNCTION_0_89();
      sub_1D5105720(v160, v165);
    }

    v166 = (a3 + v67[12]);
    *v166 = v162;
    v166[1] = v164;
    v167 = v192;
    sub_1D4F1C460(a3 + v144, v192, &unk_1EC7F1280, &qword_1D5636138);
    OUTLINED_FUNCTION_5_1(v167);
    if (v136)
    {
      sub_1D4E50004(a2, &unk_1EC7F2C30, &qword_1D564AB70);
      swift_unknownObjectRelease();
      sub_1D4E50004(v167, &unk_1EC7F1280, &qword_1D5636138);
      sub_1D56140F8();
      v172 = v193;
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v168, v169, v170, v171);
    }

    else
    {
      v172 = v193;
      InternalMusicPlayer.Queue.Entry.Container.artwork.getter();
      swift_unknownObjectRelease();
      sub_1D4E50004(a2, &unk_1EC7F2C30, &qword_1D564AB70);
      OUTLINED_FUNCTION_0_89();
      sub_1D5105720(v167, v173);
    }

    sub_1D4FD23EC(v172, a3 + v67[10], &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  else
  {
    v145 = v190;
    sub_1D5105778(v107, v190, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
    InternalMusicPlayer.Queue.Entry.Item.title.getter();
    v146 = (a3 + v67[11]);
    *v146 = v147;
    v146[1] = v148;
    InternalMusicPlayer.Queue.Entry.Item.subtitle.getter();
    v149 = (a3 + v67[12]);
    *v149 = v150;
    v149[1] = v151;
    v152 = a3 + v67[10];
    InternalMusicPlayer.Queue.Entry.Item.artwork.getter();
    swift_unknownObjectRelease();
    sub_1D4E50004(a2, &unk_1EC7F2C30, &qword_1D564AB70);
    OUTLINED_FUNCTION_2_73();
    sub_1D5105720(v145, v153);
  }

  v174 = a3 + v67[15];
  *(v174 + 4) = 0;
  result = 0.0;
  *v174 = 0u;
  *(v174 + 1) = 0u;
  return result;
}

uint64_t sub_1D5104E50(void *a1, void *a2)
{
  v78 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v4 = OUTLINED_FUNCTION_14(v78);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v73 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0178, &qword_1D5636228);
  OUTLINED_FUNCTION_14(v77);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v22 = OUTLINED_FUNCTION_14(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v73 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F0180, &unk_1D5636230);
  OUTLINED_FUNCTION_14(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v73 - v38;
  v40 = *a1 == *a2 && a1[1] == a2[1];
  if (!v40 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_26;
  }

  v73 = v9;
  v74 = v15;
  v41 = _s21EntryPropertyProviderVMa();
  v42 = a2;
  v43 = *(v41 + 20);
  v44 = *(v34 + 48);
  v75 = v41;
  v76 = a1;
  sub_1D4F1C460(a1 + v43, v39, &qword_1EC7F0140, &qword_1D5636130);
  sub_1D4F1C460(v42 + v43, &v39[v44], &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(v39, 1, v21);
  if (v40)
  {
    OUTLINED_FUNCTION_57(&v39[v44], 1, v21);
    if (v40)
    {
      sub_1D4E50004(v39, &qword_1EC7F0140, &qword_1D5636130);
      goto LABEL_16;
    }

LABEL_14:
    v47 = &unk_1EC7F0180;
    v48 = &unk_1D5636230;
    v49 = v39;
LABEL_25:
    sub_1D4E50004(v49, v47, v48);
    goto LABEL_26;
  }

  sub_1D4F1C460(v39, v33, &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(&v39[v44], 1, v21);
  if (v45)
  {
    OUTLINED_FUNCTION_2_73();
    sub_1D5105720(v33, v46);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1_82();
  sub_1D5105778(&v39[v44], v27, v50);
  static InternalMusicPlayer.Queue.Entry.Item.== infix(_:_:)();
  v52 = v51;
  sub_1D5105720(v27, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
  sub_1D5105720(v33, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
  sub_1D4E50004(v39, &qword_1EC7F0140, &qword_1D5636130);
  if ((v52 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v54 = v75;
  v53 = v76;
  v55 = v75[6];
  v56 = *(v77 + 48);
  sub_1D4F1C460(v76 + v55, v20, &unk_1EC7F1280, &qword_1D5636138);
  sub_1D4F1C460(v42 + v55, &v20[v56], &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v20, 1, v78);
  if (!v40)
  {
    v57 = v74;
    sub_1D4F1C460(v20, v74, &unk_1EC7F1280, &qword_1D5636138);
    OUTLINED_FUNCTION_5_1(&v20[v56]);
    if (!v58)
    {
      OUTLINED_FUNCTION_10_56();
      v62 = &v20[v56];
      v63 = v73;
      sub_1D5105778(v62, v73, v64);
      static InternalMusicPlayer.Queue.Entry.Container.== infix(_:_:)();
      v66 = v65;
      sub_1D5105720(v63, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      sub_1D5105720(v57, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      sub_1D4E50004(v20, &unk_1EC7F1280, &qword_1D5636138);
      if ((v66 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_0_89();
    sub_1D5105720(v57, v59);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_5_1(&v20[v56]);
  if (!v40)
  {
LABEL_24:
    v47 = &qword_1EC7F0178;
    v48 = &qword_1D5636228;
    v49 = v20;
    goto LABEL_25;
  }

  sub_1D4E50004(v20, &unk_1EC7F1280, &qword_1D5636138);
LABEL_29:
  OUTLINED_FUNCTION_15_44(v54[7]);
  if (v67)
  {
    if (!v60)
    {
      return v60 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v68)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_15_44(v54[8]);
  if (v69)
  {
    if (!v60)
    {
      return v60 & 1;
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_0();
    if (v70)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_15_44(v54[9]);
  if (v71)
  {
    if (!v60)
    {
      return v60 & 1;
    }

    goto LABEL_41;
  }

  OUTLINED_FUNCTION_52_0();
  if ((v72 & 1) == 0)
  {
LABEL_41:
    if (*(v53 + v54[16]) == *(v42 + v54[16]))
    {
      LOBYTE(v60) = *(v53 + v54[17]) ^ *(v42 + v54[17]) ^ 1;
      return v60 & 1;
    }
  }

LABEL_26:
  LOBYTE(v60) = 0;
  return v60 & 1;
}

uint64_t sub_1D5105370()
{
  v1 = v0;
  v45 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container();
  v2 = OUTLINED_FUNCTION_14(v45);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item();
  v15 = OUTLINED_FUNCTION_14(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_22(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v27 = *v1;
  v28 = v1[1];
  sub_1D5614E28();
  v29 = _s21EntryPropertyProviderVMa();
  sub_1D4F1C460(v1 + v29[5], v26, &qword_1EC7F0140, &qword_1D5636130);
  OUTLINED_FUNCTION_57(v26, 1, v14);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_1_82();
    sub_1D5105778(v26, v20, v31);
    sub_1D56162F8();
    InternalMusicPlayer.Queue.Entry.Item.hash(into:)();
    OUTLINED_FUNCTION_2_73();
    sub_1D5105720(v20, v32);
  }

  sub_1D4F1C460(v1 + v29[6], v13, &unk_1EC7F1280, &qword_1D5636138);
  OUTLINED_FUNCTION_57(v13, 1, v45);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_10_56();
    sub_1D5105778(v13, v7, v33);
    sub_1D56162F8();
    InternalMusicPlayer.Queue.Entry.Container.hash(into:)();
    OUTLINED_FUNCTION_0_89();
    sub_1D5105720(v7, v34);
  }

  OUTLINED_FUNCTION_157(v29[7]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v35);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v36 = v7;
    }

    else
    {
      v36 = 0;
    }

    MEMORY[0x1DA6EC100](v36);
  }

  OUTLINED_FUNCTION_157(v29[8]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v37);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v38 = v7;
    }

    else
    {
      v38 = 0;
    }

    MEMORY[0x1DA6EC100](v38);
  }

  OUTLINED_FUNCTION_157(v29[9]);
  if (v30)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_25_17(v39);
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v40 = v7;
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x1DA6EC100](v40);
  }

  v41 = *(v1 + v29[16]);
  sub_1D56162F8();
  v42 = *(v1 + v29[17]);
  return sub_1D56162F8();
}

uint64_t sub_1D510563C()
{
  sub_1D56162D8();
  sub_1D5105370();
  return sub_1D5616328();
}

uint64_t sub_1D5105688()
{
  sub_1D56162D8();
  sub_1D5105370();
  return sub_1D5616328();
}

unint64_t sub_1D51056C8()
{
  result = qword_1EC7F0150;
  if (!qword_1EC7F0150)
  {
    _s21EntryPropertyProviderVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0150);
  }

  return result;
}

uint64_t sub_1D5105720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D5105778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_14(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D51057D8()
{
  v2 = OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_38_23(v2);
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_15_45();
    sub_1D5107970(v4, v5);
    v7 = v6;
    v8 = v0;
    v9 = OUTLINED_FUNCTION_24_7();
  }

  else
  {
    v11 = *(v1 + 16);
    v12 = OUTLINED_FUNCTION_55_15();
    sub_1D4F48F74(v12, v13);
    v14 = v11;
    v15 = OUTLINED_FUNCTION_9_55();
    v7 = sub_1D5105B4C(v15, v16, v17, v18);
    v8 = v0;

    v9 = OUTLINED_FUNCTION_55_15();
  }

  sub_1D4F48F14(v9, v10);
  if (!v8 && v7 == 2)
  {
    sub_1D4F48F20();
    v19 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_44_19(v19, v20);
  }

  return v7 & 1;
}

id sub_1D510588C()
{
  v3 = OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_38_23(v3);
  if (v4)
  {

    v5 = OUTLINED_FUNCTION_15_45();
    sub_1D5108560(v5, v6);
    if (v1)
    {
      v9 = OUTLINED_FUNCTION_24_7();
LABEL_5:
      sub_1D4F48F14(v9, v10);
      return v0;
    }

    v0 = v7;
    v20 = v8;
    v9 = OUTLINED_FUNCTION_24_7();
  }

  else
  {
    v11 = *(v2 + 16);
    v12 = OUTLINED_FUNCTION_55_15();
    sub_1D4F48F74(v12, v13);
    v14 = v11;
    v15 = OUTLINED_FUNCTION_9_55();
    v0 = sub_1D5106F94(v15, v16, v17, v18);
    v20 = v19;

    v9 = OUTLINED_FUNCTION_55_15();
    if (v1)
    {
      goto LABEL_5;
    }
  }

  sub_1D4F48F14(v9, v10);
  if (v20)
  {
    sub_1D4F48F20();
    v21 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_44_19(v21, v22);
  }

  return v0;
}

id sub_1D5105950()
{
  v2 = OUTLINED_FUNCTION_46_16();
  OUTLINED_FUNCTION_38_23(v2);
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_15_45();
    sub_1D5107FB0(v4, v5, v6, v7, v8, v9, v10);
    v12 = v11;
    v13 = v0;
    v14 = OUTLINED_FUNCTION_24_7();
  }

  else
  {
    v16 = *(v1 + 16);
    v17 = OUTLINED_FUNCTION_55_15();
    sub_1D4F48F74(v17, v18);
    v19 = v16;
    v20 = OUTLINED_FUNCTION_9_55();
    v12 = sub_1D51067F4(v20, v21, v22, v23);
    v13 = v0;

    v14 = OUTLINED_FUNCTION_55_15();
  }

  sub_1D4F48F14(v14, v15);
  if (!v13 && !v12)
  {
    sub_1D4F48F20();
    v25 = OUTLINED_FUNCTION_121_0();
    OUTLINED_FUNCTION_44_19(v25, v26);
  }

  return v12;
}

id sub_1D5105A28(NSObject *a1, unint64_t a2)
{
  v6 = v2 + *(type metadata accessor for Bag() + 20);
  v7 = *v6;
  if (*(v6 + 8))
  {

    sub_1D5108A98(a1, a2);
    v9 = v8;
    v11 = v10;
    v12 = v7;
    v13 = 1;
  }

  else
  {
    v14 = *(v7 + 16);
    sub_1D4F48F74(v7, 0);
    v15 = v14;
    v9 = sub_1D5107508(a1, a2, v15, 0);
    v11 = v16;

    v12 = v7;
    v13 = 0;
  }

  sub_1D4F48F14(v12, v13);
  if (!v3 && !v11)
  {
    sub_1D4F48F20();
    swift_allocError();
    *v18 = 1;
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1D5105B4C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v41[0] = 46;
  v41[1] = 0xE100000000000000;
  v43 = v41;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v42, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (v17)
    {
      sub_1D5614BB8();

      v18 = objc_opt_self();
      v19 = sub_1D5614BA8();

      v41[0] = 0;
      v20 = [v18 dataWithJSONObject:v19 options:0 error:v41];

      v21 = v41[0];
      if (v20)
      {
        v22 = sub_1D560C198();
        v24 = v23;

        if (a4)
        {
          v25 = a4;
        }

        else
        {
          v28 = sub_1D560B9C8();
          v29 = *(v28 + 48);
          v30 = *(v28 + 52);
          swift_allocObject();
          v25 = sub_1D560B9B8();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
        sub_1D4F31CF4();

        v20 = v25;
        sub_1D560B948();
        if (v11)
        {

          sub_1D4E55E1C(v22, v24);
        }

        else
        {
          if (v10[2] < 2uLL)
          {
            __break(1u);
          }

          v31 = v10[8];
          v32 = v10[9];
          v34 = v10[10];
          v33 = v10[11];

          v35 = MEMORY[0x1DA6EABE0](v31, v32, v34, v33);
          v37 = v36;

          sub_1D5107970(v35, v37);
          v20 = v40;

          sub_1D4E55E1C(v22, v24);
        }
      }

      else
      {
        v27 = v21;

        sub_1D560BE98();

        swift_willThrow();
      }
    }

    else
    {

      v20 = 2;
    }
  }

  else
  {

    v26 = sub_1D5614D38();
    v20 = [a3 BOOLValueForBagKey_];
  }

  v38 = *MEMORY[0x1E69E9840];
  return v20;
}

id sub_1D5105F48(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v87 = *MEMORY[0x1E69E9840];
  *&v83 = 46;
  *(&v83 + 1) = 0xE100000000000000;
  v82 = &v83;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v81, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (!v17)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_74_0();
    sub_1D5614BB8();

    v18 = objc_opt_self();
    v19 = sub_1D5614BA8();

    *&v83 = 0;
    v17 = [v18 dataWithJSONObject:v19 options:0 error:&v83];

    v20 = v83;
    if (v17)
    {
      sub_1D560C198();

      if (a4)
      {
        v21 = a4;
      }

      else
      {
        v49 = sub_1D560B9C8();
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        swift_allocObject();
        v21 = sub_1D560B9B8();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
      sub_1D4F31CF4();

      v17 = v21;
      sub_1D560B948();
      if (v11)
      {

        v52 = OUTLINED_FUNCTION_66();
        sub_1D4E55E1C(v52, v53);
LABEL_27:

        goto LABEL_35;
      }

      v80 = 0;
      if (v10[2] >= 2uLL)
      {
        v79 = v83;
        v54 = v10[8];
        v55 = v10[9];
        v57 = v10[10];
        v56 = v10[11];

        v58 = MEMORY[0x1DA6EABE0](v54, v55, v57, v56);
        v60 = v59;

        OUTLINED_FUNCTION_22_36();
        sub_1D5107FB0(v58, v60, v79, v21, v61, v62, v63);
        v17 = v75;

        v76 = OUTLINED_FUNCTION_66();
        sub_1D4E55E1C(v76, v77);

        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_43;
    }

    v47 = v20;

    sub_1D560BE98();

LABEL_17:
    swift_willThrow();
    goto LABEL_35;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01A8, &unk_1D5636290);
  v23 = dynamic_cast_existential_1_conditional(v22);
  if (!v23)
  {
    v41 = dynamic_cast_existential_1_conditional(v22);
    if (!v41)
    {
      if (v22 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780) && v22 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40))
      {
        if (qword_1EC7E90A8 == -1)
        {
LABEL_31:
          v64 = sub_1D560C758();
          __swift_project_value_buffer(v64, qword_1EC87C2B8);

          v65 = sub_1D560C738();
          v66 = sub_1D56156C8();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            *&v83 = swift_slowAlloc();
            *v67 = 136315394;
            v68 = OUTLINED_FUNCTION_66();
            *(v67 + 4) = sub_1D4E6835C(v68, v69, v70);
            *(v67 + 12) = 2080;
            *(v67 + 14) = sub_1D4E6835C(0xD00000000000003DLL, 0x80000001D56848C0, &v83);
            _os_log_impl(&dword_1D4E3F000, v65, v66, "Failed fetching bag value for key %s. Requested value type %s is not supported.", v67, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
          }

          goto LABEL_34;
        }

LABEL_43:
        OUTLINED_FUNCTION_34_26();
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_66();
      v73 = sub_1D5614D38();
      v17 = [a3 arrayForBagKey_];

      if (v17)
      {
        v74 = sub_1D5615168();
      }

      else
      {
        v74 = 0;
      }

      *&v83 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC398, &qword_1D5620C48);
      if (OUTLINED_FUNCTION_76_8())
      {
        v17 = v86;
        goto LABEL_35;
      }

      sub_1D4F48F20();
      OUTLINED_FUNCTION_121_0();
      *v78 = 2;
      goto LABEL_17;
    }

    v42 = v41;
    OUTLINED_FUNCTION_66();
    v43 = sub_1D5614D38();
    v44 = [a3 numberForBagKey_];

    if (v44)
    {
      v46 = *(*(v42 - 8) + 64);
      MEMORY[0x1EEE9AC00](v45);
      [v44 doubleValue];
      OUTLINED_FUNCTION_85_0();
      sub_1D5614B98();

      if (swift_dynamicCast())
      {
        v17 = v83;
      }

      else
      {
        v17 = 0;
      }

      goto LABEL_35;
    }

LABEL_34:
    v17 = 0;
    goto LABEL_35;
  }

  v25 = v23;
  v26 = v24;
  OUTLINED_FUNCTION_66();
  v27 = sub_1D5614D38();
  v28 = [a3 numberForBagKey_];

  if (!v28)
  {
    goto LABEL_34;
  }

  v80 = v4;
  v86 = [v28 longLongValue];
  v29 = sub_1D56158D8();
  v79 = &v79;
  v30 = OUTLINED_FUNCTION_4(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v36 = &v79 - v35;
  v37 = *(*(v26 + 8) + 24);
  sub_1D4F5A37C();
  sub_1D56155E8();
  if (__swift_getEnumTagSinglePayload(v36, 1, v25) == 1)
  {

    v38 = *(v32 + 8);
    v39 = OUTLINED_FUNCTION_66();
    v40(v39);
    v83 = 0u;
    v84 = 0u;
    v85 = 0;
  }

  else
  {
    *(&v84 + 1) = v25;
    v85 = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v83);
    (*(*(v25 - 8) + 32))(boxed_opaque_existential_0, v36, v25);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
  if (OUTLINED_FUNCTION_76_8())
  {
    v17 = v86;
  }

  else
  {
    v17 = 0;
  }

LABEL_35:
  v71 = *MEMORY[0x1E69E9840];
  return v17;
}

id sub_1D51067F4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v69 = *MEMORY[0x1E69E9840];
  *&v65 = 46;
  *(&v65 + 1) = 0xE100000000000000;
  v64 = &v65;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v63, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] != 2)
  {

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    v26 = dynamic_cast_existential_1_conditional(v25);
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = sub_1D5614D38();
      v31 = [a3 numberForBagKey_];

      if (v31)
      {
        v62 = v4;
        v68 = [v31 longLongValue];
        v32 = sub_1D56158D8();
        v61 = &v61;
        v33 = *(v32 - 8);
        v34 = *(v33 + 64);
        MEMORY[0x1EEE9AC00](v32);
        v36 = &v61 - v35;
        v37 = *(*(v29 + 8) + 24);
        sub_1D4F5A37C();
        sub_1D56155E8();
        if (__swift_getEnumTagSinglePayload(v36, 1, v28) == 1)
        {

          (*(v33 + 8))(v36, v32);
          v65 = 0u;
          v66 = 0u;
          v67 = 0;
        }

        else
        {
          *(&v66 + 1) = v28;
          v67 = v29;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v65);
          (*(*(v28 - 8) + 32))(boxed_opaque_existential_0, v36, v28);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
        if (swift_dynamicCast())
        {
          v17 = v68;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v38 = dynamic_cast_existential_1_conditional(v25);
      v39 = sub_1D5614D38();
      if (!v38)
      {
        v17 = [a3 arrayForBagKey_];

        if (v17)
        {
          v56 = sub_1D5615168();
        }

        else
        {
          v56 = 0;
        }

        *&v65 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC398, &qword_1D5620C48);
        if (swift_dynamicCast())
        {
          v17 = v68;
          goto LABEL_35;
        }

        sub_1D4F48F20();
        swift_allocError();
        *v58 = 2;
LABEL_34:
        swift_willThrow();
        goto LABEL_35;
      }

      v40 = [a3 numberForBagKey_];

      if (v40)
      {
        v42 = *(*(v38 - 8) + 64);
        MEMORY[0x1EEE9AC00](v41);
        [v40 doubleValue];
        sub_1D5614B98();

        if (swift_dynamicCast())
        {
          v17 = v65;
        }

        else
        {
          v17 = 0;
        }

        goto LABEL_35;
      }
    }

    v17 = 0;
    goto LABEL_35;
  }

  v12 = v9[4];
  v13 = v9[5];
  v14 = v9[6];
  v15 = v9[7];

  MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

  v16 = sub_1D5614D38();

  v17 = [a3 dictionaryForBagKey_];

  if (!v17)
  {
    goto LABEL_27;
  }

  sub_1D5614BB8();

  v18 = objc_opt_self();
  v19 = sub_1D5614BA8();

  *&v65 = 0;
  v17 = [v18 dataWithJSONObject:v19 options:0 error:&v65];

  v20 = v65;
  if (!v17)
  {
    v43 = v20;

    sub_1D560BE98();

    goto LABEL_34;
  }

  v21 = sub_1D560C198();
  v23 = v22;

  if (a4)
  {
    v24 = a4;
  }

  else
  {
    v45 = sub_1D560B9C8();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    v24 = sub_1D560B9B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  sub_1D4F31CF4();

  v17 = v24;
  sub_1D560B948();
  if (v11)
  {

    sub_1D4E55E1C(v21, v23);
LABEL_27:

    goto LABEL_35;
  }

  v61 = v23;
  v62 = 0;
  if (v10[2] < 2uLL)
  {
    __break(1u);
  }

  v48 = v65;
  v49 = v10[8];
  v50 = v10[9];
  v51 = v10[10];
  v52 = v10[11];

  v53 = MEMORY[0x1DA6EABE0](v49, v50, v51, v52);
  v55 = v54;

  sub_1D5107FB0(v53, v55, v48, v24, &qword_1EC7EBFA0, &qword_1D5620C40, sub_1D510E374);
  v17 = v57;

  sub_1D4E55E1C(v21, v61);

LABEL_35:
  v59 = *MEMORY[0x1E69E9840];
  return v17;
}

id sub_1D5106F94(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  *&v54 = 46;
  *(&v54 + 1) = 0xE100000000000000;
  v52 = &v54;

  v9 = sub_1D510DDD4(1, 1, sub_1D510E6E0, v51, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (v17)
    {
      sub_1D5614BB8();

      v18 = objc_opt_self();
      v19 = sub_1D5614BA8();

      *&v54 = 0;
      v17 = [v18 dataWithJSONObject:v19 options:0 error:&v54];

      v20 = v54;
      if (v17)
      {
        v21 = sub_1D560C198();
        v23 = v22;

        if (a4)
        {
          v24 = a4;
        }

        else
        {
          v36 = sub_1D560B9C8();
          v37 = *(v36 + 48);
          v38 = *(v36 + 52);
          swift_allocObject();
          v24 = sub_1D560B9B8();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
        sub_1D4F31CF4();

        v17 = v24;
        sub_1D560B948();
        if (v11)
        {

          sub_1D4E55E1C(v21, v23);
        }

        else
        {
          v49 = v21;
          v50 = v23;
          if (v10[2] < 2uLL)
          {
            __break(1u);
          }

          v39 = v10[8];
          v40 = v10[9];
          v41 = v10[10];
          v42 = v10[11];

          v43 = MEMORY[0x1DA6EABE0](v39, v40, v41, v42);
          v45 = v44;

          sub_1D5108560(v43, v45);
          v17 = v48;

          sub_1D4E55E1C(v49, v50);
        }
      }

      else
      {
        v35 = v20;

        sub_1D560BE98();

        swift_willThrow();
      }
    }

    else
    {
    }
  }

  else
  {

    v25 = sub_1D4EC44F0();
    v26 = sub_1D5614D38();
    v17 = [a3 numberForBagKey_];

    if (v17)
    {
      v27 = [v17 longLongValue];
      v28 = MEMORY[0x1E69E6530];
      v29 = sub_1D56158D8();
      v30 = *(v29 - 8);
      v31 = *(v30 + 64);
      MEMORY[0x1EEE9AC00](v29);
      v33 = &v49 - v32;
      *v33 = v27;
      v33[8] = 0;
      if (__swift_getEnumTagSinglePayload(&v49 - v32, 1, v28) == 1)
      {

        (*(v30 + 8))(v33, v29);
        v56 = 0;
        v54 = 0u;
        v55 = 0u;
      }

      else
      {
        *(&v55 + 1) = v28;
        v56 = v25;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v54);
        (*(*(v28 - 8) + 32))(boxed_opaque_existential_0, v33, v28);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
      if (swift_dynamicCast())
      {
        v17 = v53;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];
  return v17;
}

id sub_1D5107508(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v50 = *MEMORY[0x1E69E9840];
  v48 = 46;
  v49 = 0xE100000000000000;
  v46 = &v48;

  v9 = sub_1D510DDD4(1, 1, sub_1D4F5A35C, v45, a1, a2);
  v10 = v9;
  v11 = v4;
  if (v9[2] == 2)
  {
    v12 = v9[4];
    v13 = v9[5];
    v14 = v9[6];
    v15 = v9[7];

    MEMORY[0x1DA6EABE0](v12, v13, v14, v15);

    v16 = sub_1D5614D38();

    v17 = [a3 dictionaryForBagKey_];

    if (!v17)
    {
      goto LABEL_19;
    }

    sub_1D5614BB8();

    v18 = objc_opt_self();
    v19 = sub_1D5614BA8();

    v48 = 0;
    v17 = [v18 dataWithJSONObject:v19 options:0 error:&v48];

    v20 = v48;
    if (v17)
    {
      v21 = sub_1D560C198();
      v23 = v22;

      if (a4)
      {
        v24 = a4;
      }

      else
      {
        v31 = sub_1D560B9C8();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        swift_allocObject();
        v24 = sub_1D560B9B8();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
      sub_1D4F31CF4();

      v17 = v24;
      sub_1D560B948();
      if (v11)
      {

        sub_1D4E55E1C(v21, v23);
LABEL_19:

        goto LABEL_20;
      }

      v44 = v23;
      if (v10[2] < 2uLL)
      {
        __break(1u);
      }

      v34 = v10[8];
      v35 = v10[9];
      v36 = v10[10];
      v37 = v10[11];

      v38 = MEMORY[0x1DA6EABE0](v34, v35, v36, v37);
      v40 = v39;

      sub_1D5108A98(v38, v40);
      v17 = v43;

      sub_1D4E55E1C(v21, v44);
    }

    else
    {
      v30 = v20;

      sub_1D560BE98();

      swift_willThrow();
    }
  }

  else
  {

    v25 = sub_1D5614D38();
    v26 = [a3 stringForBagKey_];

    if (v26)
    {
      v27 = sub_1D5614D68();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v48 = v27;
    v49 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    if (swift_dynamicCast())
    {
      v17 = v47;
    }

    else
    {
      v17 = 0;
    }
  }

LABEL_20:
  v41 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_1D5107970(uint64_t a1, unint64_t a2)
{
  v5 = sub_1D5615C18();
  v45 = *(v5 - 8);
  v6 = *(v45 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v43 = &v39 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v39 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  if (dynamic_cast_existential_1_conditional(MEMORY[0x1E69E6370]))
  {
    sub_1D5614C58();
    if (!v2)
    {
      return;
    }

    v40 = a1;
    v19 = v2;
  }

  else
  {
    v39 = v5;
    v42 = v16;
    type metadata accessor for MusicRequestConfiguration();
    sub_1D510E32C(&qword_1EDD5B4E8, type metadata accessor for MusicRequestConfiguration);
    v40 = a1;
    sub_1D5614C08();
    if (!v2)
    {
      return;
    }

    v19 = v2;
    v16 = v42;
    v5 = v39;
  }

  v47 = v19;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v21 = swift_dynamicCast();
  v22 = v45;
  if (v21)
  {

    (*(v22 + 32))(v16, v18, v5);
    v23 = *(v22 + 16);
    v23(v13, v16, v5);
    if ((*(v22 + 88))(v13, v5) != *MEMORY[0x1E69E6AF8])
    {
      v37 = *(v22 + 8);
      v37(v16, v5);
      v37(v13, v5);

      return;
    }

    v42 = v16;
    (*(v22 + 96))(v13, v5);
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    v25 = sub_1D5615C08();
    (*(*(v25 - 8) + 8))(&v13[v24], v25);
    if (qword_1EC7E90A8 != -1)
    {
      swift_once();
    }

    v26 = sub_1D560C758();
    __swift_project_value_buffer(v26, qword_1EC87C2B8);
    v27 = v43;
    v23(v43, v42, v5);

    v28 = sub_1D560C738();
    v29 = sub_1D56156C8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v46 = v44;
      *v30 = 136315394;
      *(v30 + 4) = sub_1D4E6835C(v40, a2, &v46);
      *(v30 + 12) = 2080;
      v23(v41, v27, v5);
      v31 = sub_1D5614DB8();
      v33 = v32;
      LODWORD(v41) = v29;
      v34 = *(v22 + 8);
      v34(v27, v5);
      v35 = sub_1D4E6835C(v31, v33, &v46);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_1D4E3F000, v28, v41, "Type mismatch for bag key %s: %s.", v30, 0x16u);
      v36 = v44;
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v36, -1, -1);
      MEMORY[0x1DA6ED200](v30, -1, -1);
    }

    else
    {

      v34 = *(v22 + 8);
      v34(v27, v5);
    }

    sub_1D4F48F20();
    swift_allocError();
    *v38 = 2;
    swift_willThrow();
    v34(v42, v5);
  }
}

void sub_1D5107FB0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v63 = a4;
  v66 = sub_1D5615C18();
  v13 = OUTLINED_FUNCTION_4(v66);
  v62 = v14;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v13);
  v60 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x1EEE9AC00](v17);
  v61 = &v60 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v65 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v60 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  if (dynamic_cast_existential_1_conditional(v28))
  {
    sub_1D5614C58();
    if (!v7)
    {
      return;
    }

    v64 = a1;
    v29 = v7;
  }

  else
  {
    type metadata accessor for MusicRequestConfiguration();
    a7();
    sub_1D510E32C(&qword_1EDD5B4E8, type metadata accessor for MusicRequestConfiguration);
    sub_1D5614C08();
    if (!v7)
    {
      return;
    }

    v64 = a1;
    v29 = v7;
  }

  v68 = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  v31 = v66;
  if (swift_dynamicCast())
  {

    v32 = v65;
    v33 = v27;
    v34 = v62;
    (*(v62 + 32))(v65, v33, v31);
    v35 = *(v34 + 16);
    v35(v23, v32, v31);
    if ((*(v34 + 88))(v23, v31) != *MEMORY[0x1E69E6AF8])
    {
      v56 = *(v34 + 8);
      v57 = OUTLINED_FUNCTION_85_0();
      v56(v57);
      (v56)(v23, v31);

      return;
    }

    (*(v34 + 96))(v23, v31);
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    v37 = sub_1D5615C08();
    OUTLINED_FUNCTION_4_0(v37);
    (*(v38 + 8))(&v23[v36]);
    if (qword_1EC7E90A8 != -1)
    {
      OUTLINED_FUNCTION_34_26();
    }

    v39 = sub_1D560C758();
    __swift_project_value_buffer(v39, qword_1EC87C2B8);
    v40 = v61;
    v35(v61, v65, v31);

    v41 = sub_1D560C738();
    sub_1D56156C8();

    v42 = OUTLINED_FUNCTION_90_10();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_1D4E6835C(v64, a2, &v67);
      *(v44 + 12) = 2080;
      a2 = v60;
      v35(v60, v40, v66);
      v45 = sub_1D5614DB8();
      v47 = v46;
      v48 = OUTLINED_FUNCTION_87_9();
      a2(v48, v66);
      v49 = sub_1D4E6835C(v45, v47, &v67);

      *(v44 + 14) = v49;
      OUTLINED_FUNCTION_27_31();
      _os_log_impl(v50, v51, v52, v53, v54, 0x16u);
      swift_arrayDestroy();
      v31 = v66;
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v55 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v55);
    }

    else
    {

      v58 = OUTLINED_FUNCTION_87_9();
      a2(v58, v31);
    }

    sub_1D4F48F20();
    OUTLINED_FUNCTION_121_0();
    *v59 = 2;
    swift_willThrow();
    a2(v65, v31);
  }
}

void sub_1D5108560(NSObject *a1, unint64_t a2)
{
  v5 = sub_1D5615C18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39[-v18];
  v43 = a1;
  sub_1D5614C58();
  if (v2)
  {
    v45 = v2;
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v17, v19, v5);
      v21 = *(v6 + 16);
      v21(v14, v17, v5);
      if ((*(v6 + 88))(v14, v5) != *MEMORY[0x1E69E6AF8])
      {
        v37 = *(v6 + 8);
        v37(v17, v5);
        v37(v14, v5);

        return;
      }

      (*(v6 + 96))(v14, v5);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
      v23 = sub_1D5615C08();
      (*(*(v23 - 8) + 8))(&v14[v22], v23);
      if (qword_1EC7E90A8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D560C758();
      __swift_project_value_buffer(v24, qword_1EC87C2B8);
      v25 = v44;
      v21(v44, v17, v5);

      v26 = sub_1D560C738();
      v27 = sub_1D56156C8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = v27;
        v29 = v28;
        v41 = swift_slowAlloc();
        v46 = v41;
        *v29 = 136315394;
        *(v29 + 4) = sub_1D4E6835C(v43, a2, &v46);
        *(v29 + 12) = 2080;
        v43 = v26;
        v21(v42, v25, v5);
        v30 = sub_1D5614DB8();
        v32 = v31;
        v33 = *(v6 + 8);
        v33(v25, v5);
        v34 = sub_1D4E6835C(v30, v32, &v46);

        *(v29 + 14) = v34;
        v35 = v43;
        _os_log_impl(&dword_1D4E3F000, v43, v40, "Type mismatch for bag key %s: %s.", v29, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v36, -1, -1);
        MEMORY[0x1DA6ED200](v29, -1, -1);
      }

      else
      {

        v33 = *(v6 + 8);
        v33(v25, v5);
      }

      sub_1D4F48F20();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();
      v33(v17, v5);
    }
  }
}

void sub_1D5108A98(NSObject *a1, unint64_t a2)
{
  v5 = sub_1D5615C18();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v39[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39[-v11];
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v39[-v13];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v39[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v39[-v18];
  v43 = a1;
  sub_1D5614C58();
  if (v2)
  {
    v45 = v2;
    v20 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      (*(v6 + 32))(v17, v19, v5);
      v21 = *(v6 + 16);
      v21(v14, v17, v5);
      if ((*(v6 + 88))(v14, v5) != *MEMORY[0x1E69E6AF8])
      {
        v37 = *(v6 + 8);
        v37(v17, v5);
        v37(v14, v5);

        return;
      }

      (*(v6 + 96))(v14, v5);
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
      v23 = sub_1D5615C08();
      (*(*(v23 - 8) + 8))(&v14[v22], v23);
      if (qword_1EC7E90A8 != -1)
      {
        swift_once();
      }

      v24 = sub_1D560C758();
      __swift_project_value_buffer(v24, qword_1EC87C2B8);
      v25 = v44;
      v21(v44, v17, v5);

      v26 = sub_1D560C738();
      v27 = sub_1D56156C8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = v27;
        v29 = v28;
        v41 = swift_slowAlloc();
        v46 = v41;
        *v29 = 136315394;
        *(v29 + 4) = sub_1D4E6835C(v43, a2, &v46);
        *(v29 + 12) = 2080;
        v43 = v26;
        v21(v42, v25, v5);
        v30 = sub_1D5614DB8();
        v32 = v31;
        v33 = *(v6 + 8);
        v33(v25, v5);
        v34 = sub_1D4E6835C(v30, v32, &v46);

        *(v29 + 14) = v34;
        v35 = v43;
        _os_log_impl(&dword_1D4E3F000, v43, v40, "Type mismatch for bag key %s: %s.", v29, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v36, -1, -1);
        MEMORY[0x1DA6ED200](v29, -1, -1);
      }

      else
      {

        v33 = *(v6 + 8);
        v33(v25, v5);
      }

      sub_1D4F48F20();
      swift_allocError();
      *v38 = 2;
      swift_willThrow();
      v33(v17, v5);
    }
  }
}

uint64_t sub_1D5108FCC(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(type metadata accessor for MusicRequestConfiguration() - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Bag();
  v2[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5109098, 0, 0);
}

uint64_t sub_1D5109098()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v1 + 64) + OBJC_IVAR____TtC16MusicKitInternal31MusicDownloadedSongCatalogStore_configuration;
  v3 = *v2;
  *(v1 + 104) = *v2;
  v4 = *(v2 + 8);
  *(v1 + 112) = v4;
  v5 = *(v2 + 16);
  *(v1 + 224) = v5;
  if (v5 == 255)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v11 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v11, qword_1EDD76A90);
    v12 = sub_1D560C738();
    v13 = sub_1D56156C8();
    if (OUTLINED_FUNCTION_58_12(v13))
    {
      v14 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_86_10(v14);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v15, v16, v17, v18, v0, 2u);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v19 = *(v1 + 56);

    *(v19 + 64) = 0;
    *(v19 + 32) = 0u;
    *(v19 + 48) = 0u;
    *v19 = 0u;
    *(v19 + 16) = 0u;
    v21 = *(v1 + 88);
    v20 = *(v1 + 96);
    v22 = *(v1 + 72);

    OUTLINED_FUNCTION_55();

    return v23();
  }

  else
  {
    v6 = *(v1 + 72);
    sub_1D4E58128(v3, v4, v5);
    sub_1D502EF3C();
    v7 = *(v6 + 17);
    *(v1 + 225) = v7;
    if (v7 == 1)
    {
      v8 = swift_task_alloc();
      *(v1 + 120) = v8;
      *v8 = v1;
      v9 = OUTLINED_FUNCTION_82_10(v8);

      return sub_1D4F56EB4(v9);
    }

    else
    {
      v24 = swift_task_alloc();
      *(v1 + 136) = v24;
      *v24 = v1;
      OUTLINED_FUNCTION_82_10(v24);

      return sub_1D4F573D4();
    }
  }
}

uint64_t sub_1D51092C0()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 120);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 152) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D51093CC()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 136);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 144) = v0;

  if (!v0)
  {
    *(v5 + 160) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D51094D8()
{
  v1 = *(v0 + 152);
  type metadata accessor for Bag.UnderlyingBagWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 128);
  v4 = *(v0 + 225);
  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = v5 + *(*(v0 + 80) + 20);
  *v8 = v2;
  *(v8 + 8) = (v4 & 1) == 0;
  OUTLINED_FUNCTION_24_31();
  sub_1D510E130(v10, v5, v9);
  OUTLINED_FUNCTION_25_36();
  sub_1D5109F14(v0 + 16);
  if (v3)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v11 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v11, qword_1EDD76A90);
    v12 = v3;
    v13 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_97_9();
    if (OUTLINED_FUNCTION_165_0())
    {
      OUTLINED_FUNCTION_142();
      v14 = OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_98_8(5.8381e-34);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_1(v15);
      sub_1D4E765C8(v14, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v18 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v18);
    }

    *&v22 = OUTLINED_FUNCTION_51_19();
  }

  else
  {
    v19 = *(v0 + 16);
    v22 = *(v0 + 24);
    v21 = *(v0 + 40);
    v20 = *(v0 + 48);
  }

  *(v0 + 184) = v21;
  *(v0 + 192) = v20;
  *(v0 + 168) = v22;
  *(v0 + 226) = v19;
  v23 = swift_task_alloc();
  *(v0 + 200) = v23;
  *v23 = v0;
  OUTLINED_FUNCTION_17_39(v23);

  return sub_1D52CCB58();
}

uint64_t sub_1D51096A0()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_30_28();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  v6 = OUTLINED_FUNCTION_90_10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  if (v8)
  {
    OUTLINED_FUNCTION_142();
    v12 = OUTLINED_FUNCTION_71_11();
    *v1 = 138543362;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v15, v16, "Eligibility: Unable to check eligibility because we are unable to get the bag: %{public}@.");
    sub_1D4E765C8(v12, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v17 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v17, v18, v9);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v19, v20, v9);
  }

  OUTLINED_FUNCTION_48_16();

  OUTLINED_FUNCTION_55();

  return v21();
}

uint64_t sub_1D5109834()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 225);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = v3 + *(*(v0 + 80) + 20);
  *v6 = *(v0 + 160);
  *(v6 + 8) = (v2 & 1) == 0;
  OUTLINED_FUNCTION_24_31();
  sub_1D510E130(v7, v3, v8);
  OUTLINED_FUNCTION_25_36();
  sub_1D5109F14(v0 + 16);
  if (v1)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v9 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v9, qword_1EDD76A90);
    v10 = v1;
    v11 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_97_9();
    if (OUTLINED_FUNCTION_165_0())
    {
      OUTLINED_FUNCTION_142();
      v12 = OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_98_8(5.8381e-34);
      v13 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_1(v13);
      sub_1D4E765C8(v12, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v16 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v16);
    }

    *&v20 = OUTLINED_FUNCTION_51_19();
  }

  else
  {
    v17 = *(v0 + 16);
    v20 = *(v0 + 24);
    v19 = *(v0 + 40);
    v18 = *(v0 + 48);
  }

  *(v0 + 184) = v19;
  *(v0 + 192) = v18;
  *(v0 + 168) = v20;
  *(v0 + 226) = v17;
  v21 = swift_task_alloc();
  *(v0 + 200) = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_17_39(v21);

  return sub_1D52CCB58();
}

uint64_t sub_1D51099E0()
{
  OUTLINED_FUNCTION_160();
  v2 = *(v0 + 144);
  OUTLINED_FUNCTION_30_28();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  v6 = OUTLINED_FUNCTION_90_10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  v11 = *(v0 + 104);
  v10 = *(v0 + 112);
  if (v8)
  {
    OUTLINED_FUNCTION_142();
    v12 = OUTLINED_FUNCTION_71_11();
    *v1 = 138543362;
    v13 = v2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v14;
    *v12 = v14;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v15, v16, "Eligibility: Unable to check eligibility because we are unable to get the bag: %{public}@.");
    sub_1D4E765C8(v12, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v17 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v17, v18, v9);
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v19, v20, v9);
  }

  OUTLINED_FUNCTION_48_16();

  OUTLINED_FUNCTION_55();

  return v21();
}

uint64_t sub_1D5109B74()
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
  v5[26] = v0;

  if (v0)
  {
    v11 = v5[24];
  }

  else
  {
    v5[27] = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D5109C88()
{
  v1 = *(v0 + 216);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v14 = *(v0 + 168);
  v4 = *(v0 + 226);
  v5 = *(v0 + 224);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  v8 = *(v0 + 56);
  OUTLINED_FUNCTION_37_23(*(v0 + 96));
  *v8 = v7;
  *(v8 + 8) = v6;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  *(v8 + 32) = v4;
  *(v8 + 40) = v14;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;
  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 72);

  OUTLINED_FUNCTION_55();

  return v12();
}

uint64_t sub_1D5109D5C()
{
  OUTLINED_FUNCTION_160();
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v2 = *(v0 + 208);
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
  v4 = v2;
  v5 = sub_1D560C738();
  sub_1D56156C8();

  v6 = OUTLINED_FUNCTION_90_10();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 224);
  v12 = *(v0 + 104);
  v11 = *(v0 + 112);
  if (v8)
  {
    OUTLINED_FUNCTION_142();
    v13 = OUTLINED_FUNCTION_71_11();
    *v1 = 138543362;
    v14 = v9;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v15;
    *v13 = v15;
    OUTLINED_FUNCTION_45_21(&dword_1D4E3F000, v16, v17, "Eligibility: Unable to check eligibility because the database is unavailable, which may be needed to determine eligibility: %{public}@.");
    sub_1D4E765C8(v13, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v18 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v18, v19, v10);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_15_2();
    sub_1D4EF2278(v20, v21, v10);
  }

  v22 = *(v0 + 56);
  OUTLINED_FUNCTION_37_23(*(v0 + 96));
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *(v22 + 48) = 0u;
  *(v22 + 64) = 0;
  v24 = *(v0 + 88);
  v23 = *(v0 + 96);
  v25 = *(v0 + 72);

  OUTLINED_FUNCTION_55();

  return v26();
}

uint64_t sub_1D5109F14@<X0>(uint64_t a1@<X8>)
{
  result = sub_1D51057D8();
  if (!v1)
  {
    v4 = result;
    v5 = sub_1D510588C();
    v6 = sub_1D510588C();
    result = sub_1D5105A28(0xD000000000000021, 0x80000001D5684890);
    *a1 = v4 & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = result;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D5109FD4()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_1D510A060;

  return sub_1D5108FCC(v0 + 88);
}

uint64_t sub_1D510A060()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 296);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D510A144()
{
  OUTLINED_FUNCTION_80();
  memcpy((v1 + 16), (v1 + 88), 0x48uLL);
  *(v1 + 272) = *(v1 + 88);
  *(v1 + 288) = *(v1 + 104);
  v2 = *(v1 + 40);
  *(v1 + 232) = *(v1 + 120);
  *(v1 + 248) = *(v1 + 136);
  *(v1 + 264) = *(v1 + 152);
  if (v2)
  {
    *(v1 + 160) = *(v1 + 272);
    *(v1 + 176) = *(v1 + 288);
    *(v1 + 184) = v2;
    v3 = *(v1 + 248);
    *(v1 + 192) = *(v1 + 232);
    *(v1 + 208) = v3;
    *(v1 + 224) = *(v1 + 264);
    v4 = swift_task_alloc();
    *(v1 + 304) = v4;
    *v4 = v1;
    v4[1] = sub_1D510A2F4;

    return sub_1D510A450();
  }

  else
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v6 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v6, qword_1EDD76A90);
    v7 = sub_1D560C738();
    v8 = sub_1D56156C8();
    if (OUTLINED_FUNCTION_58_12(v8))
    {
      v9 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_86_10(v9);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v10, v11, v12, v13, v0, 2u);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    OUTLINED_FUNCTION_50();

    return v14(0);
  }
}

uint64_t sub_1D510A2F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  v3 = *(v1 + 304);
  v9 = *v0;
  *(v2 + 312) = v4;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D510A3E4()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(v0 + 16, &qword_1EC7F0190, &unk_1D5636258);
  v1 = *(v0 + 312);
  OUTLINED_FUNCTION_50();

  return v2();
}

uint64_t sub_1D510A450()
{
  OUTLINED_FUNCTION_80();
  v2 = sub_1D560C298();
  *(v1 + 104) = v2;
  OUTLINED_FUNCTION_69(v2);
  *(v1 + 112) = v3;
  v5 = *(v4 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_127();
  v6 = sub_1D560C328();
  *(v1 + 128) = v6;
  OUTLINED_FUNCTION_69(v6);
  *(v1 + 136) = v7;
  v9 = *(v8 + 64) + 15;
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = *v0;
  *(v1 + 287) = *(v0 + 16);
  *(v1 + 273) = *(v0 + 17);
  *(v1 + 276) = *(v0 + 20);
  *(v1 + 208) = *(v0 + 24);
  v13 = *(v0 + 32);
  *(v1 + 288) = v13;
  *(v1 + 272) = v13;
  *(v1 + 280) = *(v0 + 33);
  *(v1 + 283) = *(v0 + 36);
  *(v1 + 216) = *(v0 + 40);
  *(v1 + 88) = *(v0 + 56);
  v14 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D510A60C()
{
  OUTLINED_FUNCTION_160();
  sub_1D510E1C4();
  v2 = sub_1D52FE2A4();
  if (v2)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v3 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v3, qword_1EDD76A90);
    v4 = sub_1D560C738();
    v5 = sub_1D56156E8();
    if (!OUTLINED_FUNCTION_58_12(v5))
    {
      goto LABEL_15;
    }

    v6 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_86_10(v6);
    v7 = "Eligibility: Overridden to true.";
LABEL_14:
    _os_log_impl(&dword_1D4E3F000, v4, v5, v7, v0, 2u);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
LABEL_15:

    v12 = *(v1 + 176);
    v11 = *(v1 + 184);
    OUTLINED_FUNCTION_78_9();

    OUTLINED_FUNCTION_50();

    return v13(v2 & 1);
  }

  if ((*(v1 + 288) & 1) == 0)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v9 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v9, qword_1EDD76A90);
    v4 = sub_1D560C738();
    v5 = sub_1D56156C8();
    if (!OUTLINED_FUNCTION_58_12(v5))
    {
      goto LABEL_15;
    }

    v10 = OUTLINED_FUNCTION_63_12();
    OUTLINED_FUNCTION_86_10(v10);
    v7 = "Eligibility: The bag has disabled backfill.";
    goto LABEL_14;
  }

  v8 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1D510A804, v8, 0);
}

uint64_t sub_1D510A804()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[26];
  v0[29] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[30] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[31] = v2;
  *v2 = v3;
  v2[1] = sub_1D510A8E0;
  v4 = v0[22];
  OUTLINED_FUNCTION_56_14();

  return sub_1D535C70C(v5, v6, v7, v8, v9);
}

uint64_t sub_1D510A8E0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 248);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[32] = v0;

  if (!v0)
  {
    v9 = v3[29];
    v10 = v3[30];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1D510A9E8()
{
  v108 = v0;
  sub_1D510E208(v0[22], v0[23]);
  v3 = v0[32];
  v4 = v0[21];
  v5 = v0[16];
  sub_1D5032A50(v0[23], v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v5);
  v7 = v0[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E765C8(v0[21], &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v8 = v0[19];
    v4 = v0[20];
    v9 = OUTLINED_FUNCTION_52_16();
    v10(v9);
    sub_1D560C2F8();
    sub_1D560C308();
    v12 = v11;
    v13 = *(v2 + 8);
    v13(v8, v1);
    if (v12 < 0.0)
    {
      if (qword_1EDD54478 != -1)
      {
        OUTLINED_FUNCTION_2_5();
      }

      v14 = v0[20];
      v16 = v0[17];
      v15 = v0[18];
      v17 = v0[16];
      v18 = sub_1D560C758();
      v19 = __swift_project_value_buffer(v18, qword_1EDD76A90);
      v21 = *(v16 + 16);
      v20 = v16 + 16;
      v21(v15, v14, v17);
      v22 = v19;
      v23 = sub_1D560C738();
      v24 = sub_1D56156C8();
      os_log_type_enabled(v23, v24);
      OUTLINED_FUNCTION_85_5();
      if (v25)
      {
        v105 = v19;
        v26 = v0[14];
        v27 = v0[15];
        v103 = v0[13];
        v102 = v20;
        v28 = OUTLINED_FUNCTION_142();
        v29 = OUTLINED_FUNCTION_138_0();
        v106 = v29;
        *v28 = 136446210;
        sub_1D510D36C(v27);
        sub_1D560C228();
        v30 = OUTLINED_FUNCTION_49_13();
        v31(v30);
        v13(v22, v102);
        v32 = sub_1D4E6835C(v101, v15, &v106);

        *(v28 + 4) = v32;
        OUTLINED_FUNCTION_59_13();
        _os_log_impl(v33, v34, v35, v36, v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();

        v13(v105, v102);
        v37 = v104;
LABEL_92:
        sub_1D4E765C8(v37, &qword_1EC7EA3B8, &unk_1D561E370);
        goto LABEL_93;
      }

      v13(v19, v20);
      v13(v19, v20);
LABEL_91:
      v37 = v15;
      goto LABEL_92;
    }

    v13(v0[20], v0[16]);
  }

  OUTLINED_FUNCTION_66_10();
  sub_1D53701B8();
  if (v3)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v38 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v38, qword_1EDD76A90);
    v39 = v3;
    v40 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_97_9();
    if (OUTLINED_FUNCTION_165_0())
    {
      OUTLINED_FUNCTION_142();
      v41 = OUTLINED_FUNCTION_38_12();
      OUTLINED_FUNCTION_98_8(5.8381e-34);
      v42 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_88_1(v42);
      OUTLINED_FUNCTION_26_35(&dword_1D4E3F000, v43, v44, "Eligibility: Assuming user is ineligible because unable to get account ID due to %{public}@.");
      sub_1D4E765C8(v41, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      v45 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v45);
    }

    else
    {
    }

    v37 = v0[23];
    goto LABEL_92;
  }

  OUTLINED_FUNCTION_65_16();
  if (!v48)
  {

LABEL_86:
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v69 = sub_1D560C758();
    OUTLINED_FUNCTION_62_4(v69, qword_1EDD76A90);
    v70 = sub_1D560C738();
    v71 = sub_1D56156C8();
    v72 = OUTLINED_FUNCTION_54_13(v71);
    v15 = v0[23];
    if (v72)
    {
      v73 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_81_12(v73);
      OUTLINED_FUNCTION_27_31();
      _os_log_impl(v74, v75, v76, v77, v78, 2u);
      v79 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v79);
    }

    goto LABEL_91;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v51 = sub_1D5341FA0(v46, v4, 10);
    v68 = v100;
    goto LABEL_85;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    OUTLINED_FUNCTION_93_9();
    if (v85)
    {
      if (v56)
      {
        if (v56 != 1)
        {
          OUTLINED_FUNCTION_39_20();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v85 & v52)
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (!v85)
            {
              break;
            }

            v51 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v85)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

LABEL_118:
      __break(1u);
      return;
    }

    if (v57 != 45)
    {
      if (v56)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v85 & v52)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v85)
          {
            break;
          }

          v51 = v67 + v66;
          if (__OFADD__(v67, v66))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v85)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

    if (v56)
    {
      if (v56 != 1)
      {
        OUTLINED_FUNCTION_39_20();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v85 & v52)
          {
            break;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v85)
          {
            break;
          }

          v51 = v59 - v58;
          if (__OFSUB__(v59, v58))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v85)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_83;
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  if ((v46 & 0x1000000000000000) == 0)
  {
    goto LABEL_112;
  }

  for (i = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D5615C58())
  {
    v50 = *i;
    if (v50 == 43)
    {
      if (v47 < 1)
      {
        goto LABEL_117;
      }

      if (v47 == 1)
      {
        goto LABEL_83;
      }

      v51 = 0;
      if (i)
      {
        OUTLINED_FUNCTION_80_7();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v85 & v52)
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_10_2();
          if (!v85)
          {
            goto LABEL_83;
          }

          v51 = v61 + v60;
          if (__OFADD__(v61, v60))
          {
            goto LABEL_83;
          }

          OUTLINED_FUNCTION_40_0();
          if (v85)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_74;
    }

    if (v50 == 45)
    {
      if (v47 >= 1)
      {
        if (v47 == 1)
        {
          goto LABEL_83;
        }

        v51 = 0;
        if (i)
        {
          OUTLINED_FUNCTION_80_7();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v85 & v52)
            {
              break;
            }

            OUTLINED_FUNCTION_10_2();
            if (!v85)
            {
              break;
            }

            v51 = v54 - v53;
            if (__OFSUB__(v54, v53))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v85)
            {
              goto LABEL_84;
            }
          }

LABEL_83:
          v51 = 0;
          v55 = 1;
          goto LABEL_84;
        }

        goto LABEL_74;
      }

      __break(1u);
      goto LABEL_116;
    }

    if (!v47)
    {
      goto LABEL_83;
    }

    v51 = 0;
    if (i)
    {
      do
      {
        v64 = *i - 48;
        if (v64 > 9)
        {
          goto LABEL_83;
        }

        v65 = 10 * v51;
        if ((v51 * 10) >> 64 != (10 * v51) >> 63)
        {
          goto LABEL_83;
        }

        v51 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_83;
        }

        ++i;
      }

      while (--v47);
    }

LABEL_74:
    v55 = 0;
LABEL_84:
    v107 = v55;
    v68 = v55;
LABEL_85:

    if (v68)
    {
      goto LABEL_86;
    }

    v84 = v0[28];
    if (v84)
    {
      break;
    }

    __break(1u);
LABEL_112:
    ;
  }

  v85 = v51 == 0x8000000000000000 && v84 == -1;
  if (v85)
  {
    __break(1u);
    goto LABEL_114;
  }

  if (v0[27] >= v51 % v84)
  {
    if (qword_1EDD54478 == -1)
    {
LABEL_106:
      v88 = sub_1D560C758();
      OUTLINED_FUNCTION_62_4(v88, qword_1EDD76A90);
      v89 = sub_1D560C738();
      v90 = sub_1D56156E8();
      v91 = OUTLINED_FUNCTION_54_13(v90);
      v92 = v0[23];
      if (v91)
      {
        v93 = OUTLINED_FUNCTION_63_12();
        OUTLINED_FUNCTION_81_12(v93);
        OUTLINED_FUNCTION_27_31();
        _os_log_impl(v94, v95, v96, v97, v98, 2u);
        v99 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v99);
      }

      sub_1D4E765C8(v92, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_93:
      v81 = v0[22];
      v80 = v0[23];
      OUTLINED_FUNCTION_78_9();

      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_43_16();

      __asm { BRAA            X2, X16 }
    }

LABEL_114:
    OUTLINED_FUNCTION_2_5();
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_13_40(v84);
  v86 = swift_task_alloc();
  v0[33] = v86;
  *v86 = v0;
  OUTLINED_FUNCTION_18_42(v86);
  OUTLINED_FUNCTION_43_16();

  sub_1D510C060();
}

void sub_1D510B1C4()
{
  v119 = v0;
  v2 = v0[29];
  v3 = v0[30];

  OUTLINED_FUNCTION_68_11();
  if (!v97)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v4 = v0[32];
  v5 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v5, qword_1EDD76A90);
  v6 = v4;
  v7 = sub_1D560C738();
  v8 = sub_1D56156C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  if (v9)
  {
    swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_38_12();
    v12 = OUTLINED_FUNCTION_138_0();
    v117[0] = v12;
    *v1 = 136315394;
    *(v1 + 4) = sub_1D4E6835C(0xD000000000000027, 0x80000001D5684740, v117);
    *(v1 + 12) = 2114;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 14) = v14;
    *v11 = v14;
    OUTLINED_FUNCTION_27_31();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_1D4E765C8(v11, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v20 = OUTLINED_FUNCTION_3_1();
    MEMORY[0x1DA6ED200](v20);
  }

  else
  {
  }

  v21 = v0[23];
  v22 = v0[16];
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = v0[21];
  v28 = v0[16];
  sub_1D5032A50(v0[23], v27);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v27, 1, v28);
  v30 = v0[21];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E765C8(v0[21], &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v31 = v0[19];
    v27 = v0[20];
    v32 = OUTLINED_FUNCTION_52_16();
    v33(v32);
    sub_1D560C2F8();
    sub_1D560C308();
    v35 = v34;
    v36 = *(v8 + 8);
    v36(v31, v1);
    if (v35 < 0.0)
    {
      OUTLINED_FUNCTION_68_11();
      if (!v97)
      {
        OUTLINED_FUNCTION_2_5();
      }

      v37 = v0[20];
      v39 = v0[17];
      v38 = v0[18];
      v40 = v0[16];
      v41 = __swift_project_value_buffer(v5, qword_1EDD76A90);
      v43 = *(v39 + 16);
      v42 = v39 + 16;
      v43(v38, v37, v40);
      v44 = sub_1D560C738();
      v45 = sub_1D56156C8();
      os_log_type_enabled(v44, v45);
      OUTLINED_FUNCTION_85_5();
      if (v46)
      {
        v116 = v40;
        v47 = v0[14];
        v48 = v0[15];
        v114 = v0[13];
        v113 = v42;
        v49 = OUTLINED_FUNCTION_142();
        v50 = OUTLINED_FUNCTION_138_0();
        v117[0] = v50;
        *v49 = 136446210;
        sub_1D510D36C(v48);
        sub_1D560C228();
        v51 = OUTLINED_FUNCTION_49_13();
        v52(v51);
        v36(v41, v113);
        v53 = sub_1D4E6835C(v112, v41, v117);

        *(v49 + 4) = v53;
        OUTLINED_FUNCTION_59_13();
        _os_log_impl(v54, v55, v56, v57, v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();
        OUTLINED_FUNCTION_12_4();
        MEMORY[0x1DA6ED200]();

        v36(v116, v113);
        v58 = v115;
LABEL_90:
        sub_1D4E765C8(v58, &qword_1EC7EA3B8, &unk_1D561E370);
        goto LABEL_91;
      }

      v36(v41, v42);
      v36(v40, v42);
LABEL_89:
      v58 = v41;
      goto LABEL_90;
    }

    v36(v0[20], v0[16]);
  }

  OUTLINED_FUNCTION_66_10();
  sub_1D53701B8();
  OUTLINED_FUNCTION_65_16();
  if (!v61)
  {

LABEL_84:
    OUTLINED_FUNCTION_68_11();
    if (!v97)
    {
      OUTLINED_FUNCTION_2_5();
    }

    OUTLINED_FUNCTION_62_4(v5, qword_1EDD76A90);
    v82 = sub_1D560C738();
    v83 = sub_1D56156C8();
    v84 = OUTLINED_FUNCTION_54_13(v83);
    v41 = v0[23];
    if (v84)
    {
      v85 = OUTLINED_FUNCTION_63_12();
      OUTLINED_FUNCTION_81_12(v85);
      OUTLINED_FUNCTION_27_31();
      _os_log_impl(v86, v87, v88, v89, v90, 2u);
      v91 = OUTLINED_FUNCTION_3_1();
      MEMORY[0x1DA6ED200](v91);
    }

    goto LABEL_89;
  }

  if ((v27 & 0x1000000000000000) != 0)
  {
    v64 = sub_1D5341FA0(v59, v27, 10);
    v81 = v111;
    goto LABEL_83;
  }

  if ((v27 & 0x2000000000000000) != 0)
  {
    OUTLINED_FUNCTION_93_9();
    if (v97)
    {
      if (v69)
      {
        if (v69 != 1)
        {
          OUTLINED_FUNCTION_39_20();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v97 & v65)
            {
              break;
            }

            OUTLINED_FUNCTION_5_63();
            if (!v97)
            {
              break;
            }

            v64 = v76 + v75;
            if (__OFADD__(v76, v75))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v97)
            {
              goto LABEL_82;
            }
          }
        }

        goto LABEL_81;
      }

LABEL_117:
      __break(1u);
      return;
    }

    if (v70 != 45)
    {
      if (v69)
      {
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v97 & v65)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v97)
          {
            break;
          }

          v64 = v80 + v79;
          if (__OFADD__(v80, v79))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v97)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v69)
    {
      if (v69 != 1)
      {
        OUTLINED_FUNCTION_39_20();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v97 & v65)
          {
            break;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v97)
          {
            break;
          }

          v64 = v72 - v71;
          if (__OFSUB__(v72, v71))
          {
            break;
          }

          OUTLINED_FUNCTION_40_0();
          if (v97)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  if ((v59 & 0x1000000000000000) == 0)
  {
    goto LABEL_111;
  }

  for (i = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1D5615C58())
  {
    v63 = *i;
    if (v63 == 43)
    {
      if (v60 < 1)
      {
        goto LABEL_116;
      }

      if (v60 == 1)
      {
        goto LABEL_81;
      }

      v64 = 0;
      if (i)
      {
        OUTLINED_FUNCTION_80_7();
        while (1)
        {
          OUTLINED_FUNCTION_22_0();
          if (!v97 & v65)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_5_63();
          if (!v97)
          {
            goto LABEL_81;
          }

          v64 = v74 + v73;
          if (__OFADD__(v74, v73))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_40_0();
          if (v97)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_72;
    }

    if (v63 == 45)
    {
      if (v60 >= 1)
      {
        if (v60 == 1)
        {
          goto LABEL_81;
        }

        v64 = 0;
        if (i)
        {
          OUTLINED_FUNCTION_80_7();
          while (1)
          {
            OUTLINED_FUNCTION_22_0();
            if (!v97 & v65)
            {
              break;
            }

            OUTLINED_FUNCTION_5_63();
            if (!v97)
            {
              break;
            }

            v64 = v67 - v66;
            if (__OFSUB__(v67, v66))
            {
              break;
            }

            OUTLINED_FUNCTION_40_0();
            if (v97)
            {
              goto LABEL_82;
            }
          }

LABEL_81:
          v64 = 0;
          v68 = 1;
          goto LABEL_82;
        }

        goto LABEL_72;
      }

      __break(1u);
      goto LABEL_115;
    }

    if (!v60)
    {
      goto LABEL_81;
    }

    v64 = 0;
    if (i)
    {
      do
      {
        v77 = *i - 48;
        if (v77 > 9)
        {
          goto LABEL_81;
        }

        v78 = 10 * v64;
        if ((v64 * 10) >> 64 != (10 * v64) >> 63)
        {
          goto LABEL_81;
        }

        v64 = v78 + v77;
        if (__OFADD__(v78, v77))
        {
          goto LABEL_81;
        }

        ++i;
      }

      while (--v60);
    }

LABEL_72:
    v68 = 0;
LABEL_82:
    v118 = v68;
    v81 = v68;
LABEL_83:

    if (v81)
    {
      goto LABEL_84;
    }

    v96 = v0[28];
    if (v96)
    {
      break;
    }

    __break(1u);
LABEL_111:
    ;
  }

  v97 = v64 == 0x8000000000000000 && v96 == -1;
  if (v97)
  {
    __break(1u);
    goto LABEL_113;
  }

  if (v0[27] >= v64 % v96)
  {
    OUTLINED_FUNCTION_68_11();
    if (v97)
    {
LABEL_105:
      OUTLINED_FUNCTION_62_4(v5, qword_1EDD76A90);
      v100 = sub_1D560C738();
      v101 = sub_1D56156E8();
      v102 = OUTLINED_FUNCTION_54_13(v101);
      v103 = v0[23];
      if (v102)
      {
        v104 = OUTLINED_FUNCTION_63_12();
        OUTLINED_FUNCTION_81_12(v104);
        OUTLINED_FUNCTION_27_31();
        _os_log_impl(v105, v106, v107, v108, v109, 2u);
        v110 = OUTLINED_FUNCTION_3_1();
        MEMORY[0x1DA6ED200](v110);
      }

      sub_1D4E765C8(v103, &qword_1EC7EA3B8, &unk_1D561E370);
LABEL_91:
      v93 = v0[22];
      v92 = v0[23];
      OUTLINED_FUNCTION_78_9();

      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_43_16();

      __asm { BRAA            X2, X16 }
    }

LABEL_113:
    OUTLINED_FUNCTION_2_5();
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_13_40(v96);
  v98 = swift_task_alloc();
  v0[33] = v98;
  *v98 = v0;
  OUTLINED_FUNCTION_18_42(v98);
  OUTLINED_FUNCTION_43_16();

  sub_1D510C060();
}

uint64_t sub_1D510BAE0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 264);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D510BBC4()
{
  sub_1D4E765C8(v0[23], &qword_1EC7EA3B8, &unk_1D561E370);
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[15];

  OUTLINED_FUNCTION_50();

  return v8(0);
}

uint64_t sub_1D510BC88()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 448) = v1;
  *v1 = v2;
  v1[1] = sub_1D510BD14;

  return sub_1D5108FCC(v0 + 88);
}

uint64_t sub_1D510BD14()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *(v1 + 448);
  v3 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D510BDF8()
{
  OUTLINED_FUNCTION_60();
  memcpy((v0 + 16), (v0 + 88), 0x48uLL);
  v1 = *(v0 + 40);
  if (v1)
  {
    *(v0 + 304) = *(v0 + 16);
    *(v0 + 320) = *(v0 + 32);
    *(v0 + 328) = v1;
    v2 = *(v0 + 64);
    *(v0 + 336) = *(v0 + 48);
    *(v0 + 352) = v2;
    *(v0 + 368) = *(v0 + 80);
    memcpy((v0 + 232), (v0 + 16), 0x48uLL);
    sub_1D510D304(v0 + 232, v0 + 376);
    v3 = swift_task_alloc();
    *(v0 + 456) = v3;
    *v3 = v0;
    v3[1] = sub_1D510BF04;

    return sub_1D510C060();
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D510BF04()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = v1;
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v5 = *(v4 + 456);
  v6 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  memcpy((v2 + 160), (v2 + 304), 0x48uLL);
  sub_1D510D33C(v2 + 160);
  v8 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D510BFF8()
{
  OUTLINED_FUNCTION_60();
  sub_1D4E765C8(v0 + 16, &qword_1EC7F0190, &unk_1D5636258);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D510C060()
{
  OUTLINED_FUNCTION_60();
  v2 = sub_1D560C3D8();
  *(v1 + 16) = v2;
  OUTLINED_FUNCTION_69(v2);
  *(v1 + 24) = v3;
  v5 = *(v4 + 64);
  *(v1 + 32) = OUTLINED_FUNCTION_127();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  OUTLINED_FUNCTION_22(v6);
  v8 = *(v7 + 64);
  *(v1 + 40) = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0198, &qword_1D5636268);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  *(v1 + 48) = OUTLINED_FUNCTION_127();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01A0, &unk_1D5636270);
  OUTLINED_FUNCTION_22(v12);
  v14 = *(v13 + 64);
  *(v1 + 56) = OUTLINED_FUNCTION_127();
  v15 = sub_1D560BD68();
  *(v1 + 64) = v15;
  OUTLINED_FUNCTION_69(v15);
  *(v1 + 72) = v16;
  v18 = *(v17 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_127();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  OUTLINED_FUNCTION_22(v19);
  v21 = *(v20 + 64) + 15;
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 96) = swift_task_alloc();
  v22 = sub_1D560C328();
  *(v1 + 104) = v22;
  OUTLINED_FUNCTION_69(v22);
  *(v1 + 112) = v23;
  v25 = *(v24 + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = *v0;
  *(v1 + 296) = *(v0 + 16);
  v26 = *(v0 + 24);
  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  *(v1 + 168) = v26;
  *(v1 + 176) = v27;
  *(v1 + 184) = v28;

  return MEMORY[0x1EEE6DFA0](sub_1D510C2AC, v26, 0);
}

uint64_t sub_1D510C2AC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[21];
  v2 = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection;
  v0[24] = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection;
  v3 = *(v1 + v2);
  v4 = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue;
  v0[25] = v3;
  v0[26] = v4;
  v0[27] = *(v1 + v4);

  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[28] = v5;
  *v5 = v6;
  v5[1] = sub_1D510C38C;
  v7 = v0[12];
  OUTLINED_FUNCTION_56_14();

  return sub_1D535C70C(v8, v9, v10, v11, v12);
}

uint64_t sub_1D510C38C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 224);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[29] = v0;

  if (!v0)
  {
    v9 = v3[27];
    v10 = v3[25];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1D510C498()
{
  v53 = v1;
  v6 = v1[12];
  v7 = v1[13];
  OUTLINED_FUNCTION_16_4();
  if (v8)
  {
    sub_1D4E765C8(v6, &qword_1EC7EA3B8, &unk_1D561E370);
  }

  else
  {
    v2 = v1[17];
    v0 = v1[18];
    v9 = v1[14];
    (*(v9 + 32))(v0, v6, v7);
    sub_1D560C2F8();
    v10 = sub_1D560C2C8();
    v11 = *(v9 + 8);
    v3 = v9 + 8;
    v4 = v11;
    (v11)(v2, v7);
    (v11)(v0, v7);
    if (v10)
    {
      OUTLINED_FUNCTION_8_51();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_94();

      __asm { BRAA            X1, X16 }
    }
  }

  v14 = v1[22];
  v15 = v1[23];
  v16 = v1[8];
  sub_1D51FB4F8(v1[7]);
  OUTLINED_FUNCTION_16_4();
  if (v8)
  {
    sub_1D4E765C8(v1[7], &qword_1EC7F01A0, &unk_1D5636270);
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v17 = OUTLINED_FUNCTION_72_14();
    OUTLINED_FUNCTION_62_4(v17, qword_1EDD76A90);
    v18 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58128(v18, v19, v20);

    v21 = sub_1D560C738();
    sub_1D56156C8();
    v22 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58768(v22, v23, v24);

    if (OUTLINED_FUNCTION_165_0())
    {
      v26 = v1[22];
      v25 = v1[23];
      v3 = OUTLINED_FUNCTION_142();
      v4 = OUTLINED_FUNCTION_138_0();
      v52[0] = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_1D4E6835C(v26, v25, v52);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v27, v28, v29, v30, v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v31 = v1[10];
    v0 = v1[5];
    v32 = v1[6];
    v33 = v1[2];
    v2 = 1;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    sub_1D560C418();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    OUTLINED_FUNCTION_11_54();
  }

  else
  {
    (*(v1[9] + 32))(v1[10], v1[7], v1[8]);
  }

  OUTLINED_FUNCTION_62_19();
  sub_1D560C2F8();
  OUTLINED_FUNCTION_74_11();
  v42 = OUTLINED_FUNCTION_57_15();
  v43(v42);
  (*(v5 + 8))(v3, v4);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    v45 = v1[22];
    v44 = v1[23];
    sub_1D4E765C8(v1[11], &qword_1EC7EA3B8, &unk_1D561E370);
    v52[0] = 0;
    v52[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_96_8();
    MEMORY[0x1DA6EAC70](v45, v44);
    MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
    OUTLINED_FUNCTION_95();
    OUTLINED_FUNCTION_94();
  }

  else
  {
    v46 = OUTLINED_FUNCTION_69_13();
    v47(v46);
    OUTLINED_FUNCTION_19_40();
    OUTLINED_FUNCTION_94();

    MEMORY[0x1EEE6DFA0](v48, v49, v50);
  }
}

uint64_t sub_1D510C888()
{
  v52 = v0;
  v4 = v0[29];
  v5 = v0[27];
  v6 = v0[25];
  v8 = v0[12];
  v7 = v0[13];

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
  sub_1D4E765C8(v0[12], &qword_1EC7EA3B8, &unk_1D561E370);
  v12 = v0[22];
  v13 = v0[23];
  v14 = v0[8];
  sub_1D51FB4F8(v0[7]);
  OUTLINED_FUNCTION_16_4();
  if (v15)
  {
    sub_1D4E765C8(v0[7], &qword_1EC7F01A0, &unk_1D5636270);
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v16 = OUTLINED_FUNCTION_72_14();
    OUTLINED_FUNCTION_62_4(v16, qword_1EDD76A90);
    v17 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58128(v17, v18, v19);

    v20 = sub_1D560C738();
    sub_1D56156C8();
    v21 = OUTLINED_FUNCTION_32_28();
    sub_1D4E58768(v21, v22, v23);

    if (OUTLINED_FUNCTION_165_0())
    {
      v25 = v0[22];
      v24 = v0[23];
      v1 = OUTLINED_FUNCTION_142();
      v2 = OUTLINED_FUNCTION_138_0();
      v51[0] = v2;
      *v1 = 136446210;
      *(v1 + 4) = sub_1D4E6835C(v25, v24, v51);
      OUTLINED_FUNCTION_40_24();
      _os_log_impl(v26, v27, v28, v29, v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v2);
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    v30 = v0[10];
    v7 = v0[5];
    v31 = v0[6];
    v32 = v0[2];
    v8 = 1;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_1D560C418();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    OUTLINED_FUNCTION_11_54();
  }

  else
  {
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  }

  OUTLINED_FUNCTION_62_19();
  sub_1D560C2F8();
  OUTLINED_FUNCTION_74_11();
  v41 = OUTLINED_FUNCTION_57_15();
  v42(v41);
  (*(v3 + 8))(v1, v2);
  if (__swift_getEnumTagSinglePayload(v8, 1, v7) == 1)
  {
    v44 = v0[22];
    v43 = v0[23];
    sub_1D4E765C8(v0[11], &qword_1EC7EA3B8, &unk_1D561E370);
    v51[0] = 0;
    v51[1] = 0xE000000000000000;
    sub_1D5615B68();
    OUTLINED_FUNCTION_96_8();
    MEMORY[0x1DA6EAC70](v44, v43);
    MEMORY[0x1DA6EAC70](11810, 0xE200000000000000);
    return OUTLINED_FUNCTION_95();
  }

  else
  {
    v46 = OUTLINED_FUNCTION_69_13();
    v47(v46);
    v48 = OUTLINED_FUNCTION_19_40();

    return MEMORY[0x1EEE6DFA0](v48, v49, v50);
  }
}

uint64_t sub_1D510CBB8()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[26];
  v2 = v0[21];
  v0[32] = *(v2 + v0[24]);
  v0[33] = *(v2 + v1);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D510CC3C()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[16];
  sub_1D560C208();
  v4 = sub_1D5615558();
  v6 = v5;
  v0[34] = v5;
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1D510CD10;

  return sub_1D52FAA28(v4, v6, 0xD000000000000027, 0x80000001D5684740, v2, v1);
}

uint64_t sub_1D510CD10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 280);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[36] = v0;

  if (!v0)
  {
    v10 = v3[33];
    v9 = v3[34];
    v11 = v3[32];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D510CE24()
{
  v35 = v0;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EDD76A90);
  (*(v4 + 16))(v1, v2, v3);
  v6 = sub_1D560C738();
  v7 = sub_1D56156B8();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[30];
  v9 = v0[31];
  v11 = v0[15];
  v33 = v0[16];
  v12 = v0[13];
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[8];
  if (v8)
  {
    v16 = v0[30];
    v17 = OUTLINED_FUNCTION_142();
    v32 = v15;
    v30 = OUTLINED_FUNCTION_138_0();
    v34 = v30;
    *v17 = 136446210;
    sub_1D510E32C(&qword_1EC7EF1D8, MEMORY[0x1E6969530]);
    v18 = sub_1D56160F8();
    v31 = v13;
    v20 = v19;
    v21 = OUTLINED_FUNCTION_74_0();
    v16(v21);
    v22 = sub_1D4E6835C(v18, v20, &v34);

    *(v17 + 4) = v22;
    OUTLINED_FUNCTION_59_13();
    _os_log_impl(v23, v24, v25, v26, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();

    (v16)(v33, v12);
    (*(v14 + 8))(v31, v32);
  }

  else
  {

    v27 = OUTLINED_FUNCTION_74_0();
    v10(v27);
    (v10)(v33, v12);
    (*(v14 + 8))(v13, v15);
  }

  OUTLINED_FUNCTION_8_51();

  OUTLINED_FUNCTION_55();

  return v28();
}

uint64_t sub_1D510D0C0()
{
  v25 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];

  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v4 = sub_1D560C758();
  OUTLINED_FUNCTION_62_4(v4, qword_1EDD76A90);
  v5 = sub_1D560C738();
  v6 = sub_1D56156C8();
  v7 = OUTLINED_FUNCTION_58_12(v6);
  v8 = v0[36];
  v23 = v0[30];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[8];
  if (v7)
  {
    v22 = v0[10];
    v21 = v0[31];
    v14 = OUTLINED_FUNCTION_142();
    v20 = v13;
    v15 = OUTLINED_FUNCTION_138_0();
    v24 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1D4E6835C(0xD000000000000027, 0x80000001D5684740, &v24);
    _os_log_impl(&dword_1D4E3F000, v5, v6, "Eligibility: Unable to save the %{public}s.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();

    v16 = OUTLINED_FUNCTION_85_0();
    v23(v16);
    (*(v11 + 8))(v22, v20);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_85_0();
    v23(v17);
    (*(v11 + 8))(v12, v13);
  }

  OUTLINED_FUNCTION_8_51();

  OUTLINED_FUNCTION_55();

  return v18();
}

uint64_t sub_1D510D36C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE538, &qword_1D562B490);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v28 - v3;
  v33 = sub_1D560C418();
  v30 = *(v33 - 8);
  v5 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1D560C288();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560C268();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D560C248();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D560C258();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 104))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6969360]);
  v25 = v16;
  v26 = v33;
  (*(v17 + 104))(v20, *MEMORY[0x1E6969358], v25);
  (*(v12 + 104))(v15, *MEMORY[0x1E6969370], v11);
  (*(v7 + 104))(v10, *MEMORY[0x1E6969380], v32);
  sub_1D560C3F8();
  result = __swift_getEnumTagSinglePayload(v4, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v30 + 32))(v29, v4, v26);
    return sub_1D560C278();
  }

  return result;
}

uint64_t sub_1D510D754(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6142656C62616E65 && a2 == 0xEE006C6C69666B63;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656B63754278616DLL && a2 == 0xEA00000000007374;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6375426C61746F74 && a2 == 0xEC0000007374656BLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656D695474696177 && a2 == 0xE800000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1D5616168();

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

uint64_t sub_1D510D8C0(char a1)
{
  result = 0x6142656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x656B63754278616DLL;
      break;
    case 2:
      result = 0x6375426C61746F74;
      break;
    case 3:
      result = 0x656D695474696177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D510D95C(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01C0, &qword_1D56363D8);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v23[-v11];
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = OUTLINED_FUNCTION_74_0();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  sub_1D510E4A8();
  sub_1D56163D8();
  v17 = *v3;
  v23[15] = 0;
  OUTLINED_FUNCTION_60_10();
  sub_1D5616098();
  if (!v2)
  {
    v18 = v3[1];
    v23[14] = 1;
    OUTLINED_FUNCTION_60_10();
    sub_1D56160B8();
    v19 = v3[2];
    v23[13] = 2;
    OUTLINED_FUNCTION_60_10();
    sub_1D56160B8();
    v20 = v3[3];
    v21 = v3[4];
    v23[12] = 3;
    sub_1D5616088();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1D510DAE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01B0, &qword_1D56363D0);
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v22 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D510E4A8();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  OUTLINED_FUNCTION_33_32();
  v14 = sub_1D5615FA8();
  v26 = 1;
  OUTLINED_FUNCTION_33_32();
  v15 = sub_1D5615FC8();
  v25 = 2;
  OUTLINED_FUNCTION_33_32();
  v23 = sub_1D5615FC8();
  v24 = 3;
  OUTLINED_FUNCTION_33_32();
  v16 = sub_1D5615F98();
  v17 = v12;
  v19 = v18;
  (*(v8 + 8))(v17, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14 & 1;
  v21 = v23;
  *(a2 + 8) = v15;
  *(a2 + 16) = v21;
  *(a2 + 24) = v16;
  *(a2 + 32) = v19;
  return result;
}

uint64_t sub_1D510DCD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D510D754(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D510DCFC(uint64_t a1)
{
  v2 = sub_1D510E4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510DD38(uint64_t a1)
{
  v2 = sub_1D510E4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D510DD74@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D510DAE8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D510DDD4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1D5614F88();
    OUTLINED_FUNCTION_75_10();
    sub_1D4F001D0();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1D4F001D0();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_61_17();
      v17 = sub_1D5614F58();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_61_17();
      v16 = sub_1D5614E48();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1D5614F88();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_1D4F001D0();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_1D4F001D0();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_61_17();
    v16 = sub_1D5614E48();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1D5614F88();
        OUTLINED_FUNCTION_75_10();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_1D4F001D0();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D510E130(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D510E1C4()
{
  result = qword_1EDD526B8;
  if (!qword_1EDD526B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526B8);
  }

  return result;
}

uint64_t sub_1D510E208(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D510E278()
{
  result = qword_1EDD52888;
  if (!qword_1EDD52888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F01A8, &unk_1D5636290);
    sub_1D510E32C(&qword_1EDD599B0, _s10PropertiesV15BagDateIntervalVMa);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52888);
  }

  return result;
}

uint64_t sub_1D510E32C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D510E374()
{
  result = qword_1EDD52750;
  if (!qword_1EDD52750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52750);
  }

  return result;
}

uint64_t sub_1D510E3F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D510E438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D510E4A8()
{
  result = qword_1EC7F01B8;
  if (!qword_1EC7F01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01B8);
  }

  return result;
}

_BYTE *_s31TransitionsOfflineConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D510E5DC()
{
  result = qword_1EC7F01C8;
  if (!qword_1EC7F01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01C8);
  }

  return result;
}

unint64_t sub_1D510E634()
{
  result = qword_1EC7F01D0;
  if (!qword_1EC7F01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01D0);
  }

  return result;
}

unint64_t sub_1D510E68C()
{
  result = qword_1EC7F01D8;
  if (!qword_1EC7F01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_25_36()
{

  return sub_1D510E130(v0, v1, type metadata accessor for Bag);
}

uint64_t OUTLINED_FUNCTION_34_26()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_37_23(uint64_t a1)
{

  return sub_1D4E58568(a1, type metadata accessor for Bag);
}

uint64_t OUTLINED_FUNCTION_46_16()
{

  return type metadata accessor for Bag();
}

uint64_t OUTLINED_FUNCTION_57_15()
{
  *(v1 + 240) = *(v2 + 8);
  *(v1 + 248) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v0;
}

uint64_t OUTLINED_FUNCTION_62_19()
{
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];

  return sub_1D560C3B8();
}

uint64_t OUTLINED_FUNCTION_71_11()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_72_14()
{
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 152);
  v6 = *(v0 + 296);

  return sub_1D560C758();
}

uint64_t OUTLINED_FUNCTION_74_11()
{

  return MEMORY[0x1EEDC5698](v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_75_10()
{
}

uint64_t OUTLINED_FUNCTION_76_8()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_78_9()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
}

void OUTLINED_FUNCTION_97_9()
{
}

id OUTLINED_FUNCTION_98_8(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t EditorialCard.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t EditorialCard.editorialNotes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for EditorialCard() + 24);

  return sub_1D510EA4C(v3, a1);
}

uint64_t type metadata accessor for EditorialCard()
{
  result = qword_1EDD57730;
  if (!qword_1EDD57730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D510EA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EditorialCard._editorialArtworks.getter()
{
  v1 = *(v0 + *(type metadata accessor for EditorialCard() + 28));
}

uint64_t sub_1D510EAF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707553636973756DLL && a2 == 0xEE006F7265487265)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D5616168();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D510EBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D510EAF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D510EBCC(uint64_t a1)
{
  v2 = sub_1D510EE78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510EC08(uint64_t a1)
{
  v2 = sub_1D510EE78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D510EC44(uint64_t a1)
{
  v2 = sub_1D510EECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510EC80(uint64_t a1)
{
  v2 = sub_1D510EECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EditorialCard.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01E0, &qword_1D56364F8);
  OUTLINED_FUNCTION_4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F01E8, &qword_1D5636500);
  OUTLINED_FUNCTION_4(v11);
  v13 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_71_1();
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D510EE78();
  sub_1D56163D8();
  sub_1D510EECC();
  sub_1D5616018();
  (*(v5 + 8))(v10, v3);
  return (*(v13 + 8))(v1, v11);
}

unint64_t sub_1D510EE78()
{
  result = qword_1EC7F01F0;
  if (!qword_1EC7F01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01F0);
  }

  return result;
}

unint64_t sub_1D510EECC()
{
  result = qword_1EC7F01F8;
  if (!qword_1EC7F01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F01F8);
  }

  return result;
}

uint64_t EditorialCard.Kind.hashValue.getter()
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](0);
  return sub_1D5616328();
}

void EditorialCard.Kind.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0200, &qword_1D5636508);
  OUTLINED_FUNCTION_4(v3);
  v44 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0208, &qword_1D5636510);
  OUTLINED_FUNCTION_4(v10);
  v45 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D510EE78();
  sub_1D5616398();
  if (v1)
  {
    goto LABEL_9;
  }

  v42 = v9;
  v43 = a1;
  v18 = sub_1D5615FE8();
  sub_1D4FE3168(v18, 0);
  v23 = v16;
  if (v21 == v22 >> 1)
  {
    v44 = v19;
LABEL_8:
    v34 = v10;
    v35 = v45;
    v36 = sub_1D5615C18();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
    *v38 = &type metadata for EditorialCard.Kind;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v35 + 8))(v23, v34);
    a1 = v43;
LABEL_9:
    v40 = a1;
    goto LABEL_10;
  }

  if (v21 < (v22 >> 1))
  {
    v24 = sub_1D4FE35EC(v21 + 1, v22 >> 1, v19, v20, v21, v22);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v43;
    v31 = v44;
    if (v29)
    {
      sub_1D510EECC();
      v32 = v42;
      sub_1D5615F18();
      v33 = v45;
      swift_unknownObjectRelease();
      (*(v31 + 8))(v32, v3);
      (*(v33 + 8))(v23, v10);
      v40 = v30;
LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v40);
      return;
    }

    v44 = v24;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t static EditorialCard.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D5610978();
  v6 = OUTLINED_FUNCTION_4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_71_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF648, &unk_1D5632470);
  OUTLINED_FUNCTION_14(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v48 - v22;
  v24 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v24 && (sub_1D5616168() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_16;
  }

  v25 = type metadata accessor for EditorialCard();
  v26 = v25[6];
  v27 = *(v18 + 48);
  sub_1D510EA4C(a1 + v26, v23);
  sub_1D510EA4C(a2 + v26, &v23[v27]);
  OUTLINED_FUNCTION_10(v23);
  if (!v24)
  {
    sub_1D510EA4C(v23, v2);
    OUTLINED_FUNCTION_10(&v23[v27]);
    if (!v28)
    {
      (*(v8 + 32))(v13, &v23[v27], v5);
      OUTLINED_FUNCTION_0_90();
      sub_1D5110B1C(v31, v32);
      v33 = sub_1D5614D18();
      v34 = *(v8 + 8);
      v34(v13, v5);
      v34(v2, v5);
      sub_1D4E50004(v23, &qword_1EC7EAC98, &unk_1D561DA80);
      if ((v33 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v8 + 8))(v2, v5);
LABEL_15:
    sub_1D4E50004(v23, &qword_1EC7EF648, &unk_1D5632470);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_10(&v23[v27]);
  if (!v24)
  {
    goto LABEL_15;
  }

  sub_1D4E50004(v23, &qword_1EC7EAC98, &unk_1D561DA80);
LABEL_19:
  v35 = v25[7];
  v36 = *(a2 + v35);
  if (*(a1 + v35))
  {
    if (!v36)
    {
      goto LABEL_16;
    }

    v37 = *(a2 + v35);

    sub_1D4F28F1C();
    v39 = v38;

    if ((v39 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v36)
  {
    goto LABEL_16;
  }

  v40 = v25[8];
  v41 = *(a2 + v40);
  if (*(a1 + v40))
  {
    if (v41)
    {
      v42 = *(a2 + v40);

      sub_1D4F2D63C();
      v44 = v43;

      if (v44)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v41)
  {
LABEL_29:
    v45 = v25[9];
    v46 = *(a1 + v45);
    v47 = *(a2 + v45);
    sub_1D4F286E0();
    return v29 & 1;
  }

LABEL_16:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_1D510F6D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957547 && a2 == 0xE400000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001D5684920 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79616C70736964 && a2 == 0xE700000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D510F8C8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1684957547;
      break;
    case 2:
      result = 0x6169726F74696465;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x79616C70736964;
      break;
    case 5:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D510F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D510F6D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D510F9AC(uint64_t a1)
{
  v2 = sub_1D51107E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D510F9E8(uint64_t a1)
{
  v2 = sub_1D51107E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EditorialCard.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0210, &qword_1D5636518);
  OUTLINED_FUNCTION_4(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51107E8();
  sub_1D56163D8();
  v14 = *v3;
  v15 = v3[1];
  LOBYTE(v21) = 0;
  sub_1D5616088();
  if (!v2)
  {
    LOBYTE(v21) = *(v3 + 16);
    v22 = 1;
    sub_1D511083C();
    sub_1D5616068();
    v16 = type metadata accessor for EditorialCard();
    v17 = v16[6];
    LOBYTE(v21) = 2;
    sub_1D5610978();
    OUTLINED_FUNCTION_0_90();
    sub_1D5110B1C(v18, v19);
    sub_1D5616068();
    v21 = *(v3 + v16[7]);
    v22 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4FC7B20();
    OUTLINED_FUNCTION_3_74();
    sub_1D5616068();
    v21 = *(v3 + v16[8]);
    v22 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
    sub_1D50C6874();
    OUTLINED_FUNCTION_3_74();
    sub_1D5616068();
    v21 = *(v3 + v16[9]);
    v22 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    OUTLINED_FUNCTION_3_74();
    sub_1D56160C8();
  }

  return (*(v7 + 8))(v12, v5);
}

void EditorialCard.hash(into:)(const void *a1)
{
  v4 = sub_1D5610978();
  v5 = OUTLINED_FUNCTION_4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_71_1();
  v17 = *v1;
  v18 = v1[1];
  sub_1D5614E28();
  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](0);
  }

  v19 = type metadata accessor for EditorialCard();
  sub_1D510EA4C(v1 + v19[6], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v7 + 32))(v12, v2, v4);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_90();
    sub_1D5110B1C(v20, v21);
    sub_1D5614CB8();
    (*(v7 + 8))(v12, v4);
  }

  if (*(v1 + v19[7]))
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v22 = *(v1 + v19[8]);
  if (v22)
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F329DC(a1, v22);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v23 = *(v1 + v19[9]);
  sub_1D4F31AC0();
}

uint64_t EditorialCard.hashValue.getter()
{
  sub_1D56162D8();
  EditorialCard.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t EditorialCard.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0230, &qword_1D5636528);
  OUTLINED_FUNCTION_4(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v31 = type metadata accessor for EditorialCard();
  v14 = OUTLINED_FUNCTION_14(v31);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v21 = a1[3];
  v20 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D51107E8();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  LOBYTE(v33) = 0;
  *v19 = sub_1D5615F98();
  *(v19 + 8) = v22;
  v34 = 1;
  sub_1D5110890();
  sub_1D5615F78();
  *(v19 + 16) = v33;
  sub_1D5610978();
  LOBYTE(v33) = 2;
  OUTLINED_FUNCTION_0_90();
  sub_1D5110B1C(v23, v24);
  v25 = v9;
  sub_1D5615F78();
  v26 = v31;
  sub_1D51108E4(v25, v19 + v31[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  v34 = 3;
  sub_1D4FCE3FC();
  OUTLINED_FUNCTION_2_74();
  sub_1D5615F78();
  *(v19 + v26[7]) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF8F0, &qword_1D5636520);
  v34 = 4;
  sub_1D50C66B4();
  OUTLINED_FUNCTION_2_74();
  sub_1D5615F78();
  *(v19 + v26[8]) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v34 = 5;
  sub_1D4F31CF4();
  OUTLINED_FUNCTION_2_74();
  sub_1D5615FD8();
  v27 = OUTLINED_FUNCTION_4_59();
  v28(v27);
  *(v19 + v26[9]) = v33;
  sub_1D5110954(v19, v30);
  __swift_destroy_boxed_opaque_existential_1(v32);
  return sub_1D51109B8(v19);
}

uint64_t sub_1D51103BC()
{
  sub_1D56162D8();
  EditorialCard.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D51103F8@<X0>(uint64_t *a1@<X8>)
{
  result = EditorialCard.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EditorialCard.description.getter()
{
  OUTLINED_FUNCTION_7_59();
  v3 = v1;
  MEMORY[0x1DA6EAC70](*v0, *(v0 + 8));
  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x1DA6EAC70](0x203A646E696B202CLL, 0xE800000000000000);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0, 0xE000000000000000);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v3;
}

uint64_t EditorialCard.debugDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  OUTLINED_FUNCTION_22(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = sub_1D5610978();
  v8 = OUTLINED_FUNCTION_4(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_7_59();
  v25 = v16;
  v26 = v17;
  v23 = 0x22203A646920200ALL;
  v24 = 0xE800000000000000;
  MEMORY[0x1DA6EAC70](*v0, *(v0 + 8));
  OUTLINED_FUNCTION_55_0();
  MEMORY[0x1DA6EAC70](v23, v24);

  if ((*(v0 + 16) & 1) == 0)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x3A646E696B20200ALL, 0xEA00000000002220);
    sub_1D5615D48();
    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v23, v24);
  }

  v18 = type metadata accessor for EditorialCard();
  sub_1D510EA4C(v0 + *(v18 + 24), v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1D4E50004(v6, &qword_1EC7EAC98, &unk_1D561DA80);
  }

  else
  {
    (*(v10 + 32))(v15, v6, v7);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1D5615B68();

    v23 = 0xD000000000000014;
    v24 = 0x80000001D5684900;
    OUTLINED_FUNCTION_0_90();
    sub_1D5110B1C(v19, v20);
    v21 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v21);

    OUTLINED_FUNCTION_55_0();
    MEMORY[0x1DA6EAC70](v23, v24);

    (*(v10 + 8))(v15, v7);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v25;
}

unint64_t sub_1D51107E8()
{
  result = qword_1EC7F0218;
  if (!qword_1EC7F0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0218);
  }

  return result;
}

unint64_t sub_1D511083C()
{
  result = qword_1EC7F0220;
  if (!qword_1EC7F0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0220);
  }

  return result;
}

unint64_t sub_1D5110890()
{
  result = qword_1EC7F0238;
  if (!qword_1EC7F0238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0238);
  }

  return result;
}

uint64_t sub_1D51108E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC98, &unk_1D561DA80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5110954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialCard();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D51109B8(uint64_t a1)
{
  v2 = type metadata accessor for EditorialCard();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D5110A18()
{
  result = qword_1EC7F0248;
  if (!qword_1EC7F0248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F0250, &qword_1D5636530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0248);
  }

  return result;
}

unint64_t sub_1D5110A80()
{
  result = qword_1EC7F0258;
  if (!qword_1EC7F0258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0258);
  }

  return result;
}

uint64_t sub_1D5110B1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D5110B8C()
{
  sub_1D5110C98();
  if (v0 <= 0x3F)
  {
    sub_1D5110CE8();
    if (v1 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
      if (v2 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD528D0, &qword_1EC7EF8F0, &qword_1D5636520);
        if (v3 <= 0x3F)
        {
          sub_1D4E5CF94();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5110C98()
{
  if (!qword_1EDD57748[0])
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD57748);
    }
  }
}

void sub_1D5110CE8()
{
  if (!qword_1EDD53188)
  {
    sub_1D5610978();
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD53188);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EditorialCard.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D5110E2C(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D5110EEC()
{
  result = qword_1EC7F0268;
  if (!qword_1EC7F0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0268);
  }

  return result;
}

unint64_t sub_1D5110F44()
{
  result = qword_1EC7F0270;
  if (!qword_1EC7F0270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0270);
  }

  return result;
}

unint64_t sub_1D5110F9C()
{
  result = qword_1EC7F0278;
  if (!qword_1EC7F0278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0278);
  }

  return result;
}

unint64_t sub_1D5110FF4()
{
  result = qword_1EC7F0280;
  if (!qword_1EC7F0280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0280);
  }

  return result;
}

unint64_t sub_1D511104C()
{
  result = qword_1EC7F0288;
  if (!qword_1EC7F0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0288);
  }

  return result;
}

unint64_t sub_1D51110A4()
{
  result = qword_1EC7F0290;
  if (!qword_1EC7F0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0290);
  }

  return result;
}

unint64_t sub_1D51110FC()
{
  result = qword_1EC7F0298;
  if (!qword_1EC7F0298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0298);
  }

  return result;
}

unint64_t sub_1D5111154()
{
  result = qword_1EC7F02A0;
  if (!qword_1EC7F02A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F02A0);
  }

  return result;
}

uint64_t type metadata accessor for StorePlatformTVShow()
{
  result = qword_1EDD55D20;
  if (!qword_1EDD55D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D511122C()
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

    sub_1D4E6D600(319, &qword_1EC7F02A8, &qword_1EC7F02B0, ".9\a");
    if (v5 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EC7F02B8, &qword_1EC7F02C0, qword_1D565CE10);
    if (v6 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52910, &qword_1EC7EC9B8, &unk_1D56222D0);
    if (v7 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528D8, &qword_1EC7ED048, &unk_1D56285A0);
    if (v8 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD528F0, &qword_1EC7EC480, &unk_1D56222E0);
    if (v9 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52900, &qword_1EC7EC9E8, &qword_1D562B870);
    if (v10 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD52708);
    if (v11 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD52770, &qword_1EC7EABD8, &unk_1D561D780);
    if (v12 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EC7EDD50, &qword_1EC7EDD58, qword_1D5636D90);
    if (v13 > 0x3F)
    {
      return v3;
    }

    sub_1D4E518A0(319, &qword_1EDD5F550);
    if (v14 > 0x3F)
    {
      return v3;
    }

    sub_1D500A1D4();
    if (v15 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD531D0, &qword_1EC7EC958, &unk_1D5622280);
    if (v16 > 0x3F)
    {
      return v3;
    }

    sub_1D4E6D600(319, &qword_1EDD527B0, &qword_1EC7ED098, &unk_1D5623EE0);
    if (v17 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v1;
}

BOOL sub_1D511159C(void *a1, void *a2)
{
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v189);
  v185 = v4;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v184 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v188 = v13;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14(v187);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v192 = v17;
  v18 = sub_1D560C0A8();
  v19 = OUTLINED_FUNCTION_4(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  v186 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v26 = OUTLINED_FUNCTION_22(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_59_0();
  v182 = v29 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v190 = &v176 - v32;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  v33 = OUTLINED_FUNCTION_14(v191);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_59_0();
  v183 = v36 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v193 = &v176 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v40);
  v42 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v176 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v48);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v176 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_14(v54);
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v176 - v58;
  v60 = a1[1];
  v61 = a2[1];
  if (v60)
  {
    if (!v61)
    {
      return 0;
    }

    v62 = *a1 == *a2 && v60 == v61;
    if (!v62 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v177 = v21;
  v178 = v18;
  v63 = type metadata accessor for StorePlatformTVShow();
  v64 = *(v63 + 20);
  v65 = a1;
  v66 = *(v54 + 48);
  v179 = v63;
  v180 = v65;
  sub_1D4F39AB0(v65 + v64, v59, &qword_1EC7EB5B8, &unk_1D56206A0);
  v181 = a2;
  sub_1D4F39AB0(a2 + v64, &v59[v66], &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v59, 1, v40);
  if (v62)
  {
    OUTLINED_FUNCTION_57(&v59[v66], 1, v40);
    if (v62)
    {
      sub_1D4E50004(v59, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_23;
    }

LABEL_18:
    v71 = &qword_1EC7EC330;
    v72 = &qword_1D56222C0;
    v73 = v59;
    goto LABEL_19;
  }

  sub_1D4F39AB0(v59, v53, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(&v59[v66], 1, v40);
  if (v67)
  {
    v68 = *(v42 + 8);
    v69 = OUTLINED_FUNCTION_71();
    v70(v69);
    goto LABEL_18;
  }

  (*(v42 + 32))(v47, &v59[v66], v40);
  sub_1D4F39858();
  v75 = sub_1D5614D18();
  v76 = *(v42 + 8);
  v76(v47, v40);
  v77 = OUTLINED_FUNCTION_71();
  (v76)(v77);
  sub_1D4E50004(v59, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v75 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v79 = v179;
  v78 = v180;
  v80 = v179[6];
  v81 = *(v180 + v80);
  v82 = *(v180 + v80 + 8);
  v83 = v181;
  v84 = (v181 + v80);
  v85 = v81 == *v84 && v82 == v84[1];
  if (!v85 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v79[7]);
  if (v40)
  {
    if (!v53)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2CE78();
    OUTLINED_FUNCTION_70_2();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v86 = v79[8];
  v87 = *(v83 + v86);
  if (*(v78 + v86))
  {
    if (!v87 || (sub_1D4F0B2E8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v87)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v79[9]);
  if (v40)
  {
    if (!v53)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v79[10]);
  if (v40)
  {
    if (!v53)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C5FC();
    OUTLINED_FUNCTION_70_2();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v79[11]);
  if (v40)
  {
    if (!v53)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_24(v79[12]);
  if (v40)
  {
    if (!v53)
    {
      return 0;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v53)
  {
    return 0;
  }

  v88 = v79[13];
  v89 = (v78 + v88);
  v90 = *(v78 + v88 + 8);
  v91 = (v83 + v88);
  v92 = *(v83 + v88 + 8);
  if (v90)
  {
    if (!v92)
    {
      return 0;
    }
  }

  else
  {
    if (*v89 != *v91)
    {
      LOBYTE(v92) = 1;
    }

    if (v92)
    {
      return 0;
    }
  }

  v93 = v79[14];
  v94 = *(v78 + v93);
  v95 = *(v83 + v93);
  if (v94)
  {
    if (!v95 || (sub_1D4EF81E0(v94, v95) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v95)
  {
    return 0;
  }

  v96 = v179[15];
  v97 = *(v180 + v96);
  v98 = *(v181 + v96);
  if (v97)
  {
    if (!v98)
    {
      return 0;
    }

    v99 = *(v181 + v96);

    OUTLINED_FUNCTION_159();
    sub_1D4EF8BA4();
    OUTLINED_FUNCTION_70_2();
    if ((v97 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v98)
  {
    return 0;
  }

  v100 = v179[16];
  v101 = *(v180 + v100);
  v102 = *(v181 + v100);
  if (v101 == 2)
  {
    if (v102 != 2)
    {
      return 0;
    }

LABEL_79:
    v103 = v179[17];
    v104 = *(v191 + 48);
    v105 = v193;
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v106, v107, v108, v109);
    OUTLINED_FUNCTION_8_1();
    sub_1D4F39AB0(v110, v111, v112, v113);
    OUTLINED_FUNCTION_15_46(v105);
    if (v62)
    {
      OUTLINED_FUNCTION_15_46(v193 + v104);
      if (v62)
      {
        sub_1D4E50004(v193, &unk_1EC7E9CA8, &unk_1D561D1D0);
        goto LABEL_89;
      }
    }

    else
    {
      v114 = v193;
      sub_1D4F39AB0(v193, v190, &unk_1EC7E9CA8, &unk_1D561D1D0);
      OUTLINED_FUNCTION_15_46(v114 + v104);
      if (!v115)
      {
        v116 = v177;
        v117 = v193;
        v118 = v193 + v104;
        v119 = v186;
        v120 = v178;
        (*(v177 + 32))(v186, v118, v178);
        OUTLINED_FUNCTION_0_91();
        sub_1D5114AF8(v121);
        v122 = sub_1D5614D18();
        v123 = *(v116 + 8);
        (v123)(v119, v120);
        v124 = OUTLINED_FUNCTION_132_1();
        v123(v124);
        sub_1D4E50004(v117, &unk_1EC7E9CA8, &unk_1D561D1D0);
        if ((v122 & 1) == 0)
        {
          return 0;
        }

LABEL_89:
        v125 = v179[18];
        v126 = *(v187 + 48);
        v127 = v192;
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v128, v129, v130, v131);
        OUTLINED_FUNCTION_8_1();
        sub_1D4F39AB0(v132, v133, v134, v135);
        OUTLINED_FUNCTION_57(v127, 1, v189);
        if (v62)
        {
          OUTLINED_FUNCTION_57(v192 + v126, 1, v189);
          if (v62)
          {
            sub_1D4E50004(v192, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_99:
            v142 = v179[19];
            v143 = *(v180 + v142);
            v144 = *(v181 + v142);
            if (v143)
            {
              if (!v144)
              {
                return 0;
              }

              v145 = *(v181 + v142);

              OUTLINED_FUNCTION_159();
              sub_1D4EF9D5C();
              OUTLINED_FUNCTION_70_2();
              if ((v143 & 1) == 0)
              {
                return 0;
              }
            }

            else if (v144)
            {
              return 0;
            }

            v146 = v179[20];
            OUTLINED_FUNCTION_35_28(v180);
            if (v147)
            {
              if (!v148)
              {
                return 0;
              }

              v151 = *v149 == *v150 && v147 == v148;
              if (!v151 && (sub_1D5616168() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v148)
            {
              return 0;
            }

            v152 = v179[21];
            OUTLINED_FUNCTION_35_28(v180);
            if (v153)
            {
              if (!v154)
              {
                return 0;
              }

              v157 = *v155 == *v156 && v153 == v154;
              if (!v157 && (sub_1D5616168() & 1) == 0)
              {
                return 0;
              }
            }

            else if (v154)
            {
              return 0;
            }

            v158 = v179[22];
            v159 = *(v191 + 48);
            v160 = v183;
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v161, v162, v163, v164);
            OUTLINED_FUNCTION_8_1();
            sub_1D4F39AB0(v165, v166, v167, v168);
            OUTLINED_FUNCTION_15_46(v160);
            if (v62)
            {
              OUTLINED_FUNCTION_15_46(v183 + v159);
              if (v62)
              {
                sub_1D4E50004(v183, &unk_1EC7E9CA8, &unk_1D561D1D0);
                return 1;
              }
            }

            else
            {
              v169 = v183;
              sub_1D4F39AB0(v183, v182, &unk_1EC7E9CA8, &unk_1D561D1D0);
              OUTLINED_FUNCTION_15_46(v169 + v159);
              if (!v170)
              {
                v171 = v178;
                v172 = v183;
                (*(v177 + 32))(v186, v183 + v159, v178);
                OUTLINED_FUNCTION_0_91();
                sub_1D5114AF8(v173);
                v174 = v182;
                OUTLINED_FUNCTION_132_1();
                sub_1D5614D18();
                v175 = OUTLINED_FUNCTION_51();
                v171(v175);
                (v171)(v174, v171);
                sub_1D4E50004(v172, &unk_1EC7E9CA8, &unk_1D561D1D0);
                return (v169 & 1) != 0;
              }

              (*(v177 + 8))(v182, v178);
            }

            v71 = &qword_1EC7E9FB0;
            v72 = &qword_1D562C590;
            v73 = v183;
LABEL_19:
            sub_1D4E50004(v73, v71, v72);
            return 0;
          }
        }

        else
        {
          v136 = v192;
          sub_1D4F39AB0(v192, v188, &qword_1EC7EC960, &unk_1D56334C0);
          OUTLINED_FUNCTION_57(v136 + v126, 1, v189);
          if (!v137)
          {
            v138 = v192;
            v139 = v189;
            (*(v185 + 32))(v184, v192 + v126, v189);
            sub_1D4F7BF60();
            v140 = v188;
            OUTLINED_FUNCTION_132_1();
            sub_1D5614D18();
            v141 = OUTLINED_FUNCTION_51();
            v139(v141);
            (v139)(v140, v139);
            sub_1D4E50004(v138, &qword_1EC7EC960, &unk_1D56334C0);
            if ((v136 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_99;
          }

          (*(v185 + 8))(v188, v189);
        }

        v71 = &qword_1EC7EC968;
        v72 = &unk_1D5622290;
        v73 = v192;
        goto LABEL_19;
      }

      (*(v177 + 8))(v190, v178);
    }

    v71 = &qword_1EC7E9FB0;
    v72 = &qword_1D562C590;
    v73 = v193;
    goto LABEL_19;
  }

  result = 0;
  if (v102 != 2 && ((v102 ^ v101) & 1) == 0)
  {
    goto LABEL_79;
  }

  return result;
}

uint64_t sub_1D511224C(uint64_t a1, uint64_t a2)
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
      v7 = a1 == 25705 && a2 == 0xE200000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6572646C696863 && a2 == 0xEB00000000736449;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x4365646F73697065 && a2 == 0xEC000000746E756FLL;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x4448736168 && a2 == 0xE500000000000000;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x6F4E73656E757469 && a2 == 0xEB00000000736574;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000012 && 0x80000001D56809F0 == a2;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 1701667182 && a2 == 0xE400000000000000;
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

                                    else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1D5616168();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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

unint64_t sub_1D51127F4(char a1)
{
  result = 0x614E747369747261;
  switch(a1)
  {
    case 1:
      result = 0x6B726F77747261;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 0x6E6572646C696863;
      break;
    case 4:
      result = 0x6E6572646C696863;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0x73746964657263;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x6169726F74696465;
      break;
    case 9:
      result = 0x4365646F73697065;
      break;
    case 10:
      result = 0x6D614E65726E6567;
      break;
    case 11:
      result = 0x7365726E6567;
      break;
    case 12:
      result = 0x4448736168;
      break;
    case 13:
      result = 0x76697372656D6D69;
      break;
    case 14:
      result = 0x6F4E73656E757469;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 1701667182;
      break;
    case 17:
      result = 0x44657361656C6572;
      break;
    case 18:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D5112A0C(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02F8, &unk_1D5636BC8);
  OUTLINED_FUNCTION_4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_0();
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D51145EC();
  sub_1D56163D8();
  v13 = *v4;
  v14 = v4[1];
  OUTLINED_FUNCTION_13_41();
  sub_1D5616028();
  if (!v2)
  {
    v15 = type metadata accessor for StorePlatformTVShow();
    v16 = v15[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F7CD24();
    OUTLINED_FUNCTION_21_0();
    v17 = (v4 + v15[6]);
    v33 = *v17;
    v34 = v17[1];
    sub_1D4F89BA0();
    OUTLINED_FUNCTION_29_0();
    sub_1D56160C8();
    OUTLINED_FUNCTION_61_1(v15[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02B0, ".9\a");
    sub_1D51148A0();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    sub_1D511495C(&unk_1EC7F0310);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[9]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    sub_1D4F7CE0C();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FC7928();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[11]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D51149C8(&qword_1EC7EC9D8);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D51146FC(&qword_1EC7EC9F0);
    OUTLINED_FUNCTION_8_2();
    v18 = v4 + v15[13];
    v19 = *v18;
    v20 = v18[8];
    OUTLINED_FUNCTION_13_41();
    sub_1D5616058();
    OUTLINED_FUNCTION_61_1(v15[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_61_1(v15[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
    sub_1D500E7A4();
    OUTLINED_FUNCTION_8_2();
    v21 = *(v4 + v15[16]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    v22 = v15[17];
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_91();
    sub_1D5114AF8(v23);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    v24 = v15[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_61_1(v15[19]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
    sub_1D5114A3C(&unk_1EC7ED0A0);
    OUTLINED_FUNCTION_8_2();
    v25 = (v4 + v15[20]);
    v26 = *v25;
    v27 = v25[1];
    OUTLINED_FUNCTION_13_41();
    sub_1D5616028();
    v28 = (v4 + v15[21]);
    v29 = *v28;
    v30 = v28[1];
    OUTLINED_FUNCTION_13_41();
    sub_1D5616028();
    v31 = v15[22];
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1D5113020()
{
  v2 = v0;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4(v74);
  v72 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v71 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v73 = v12;
  v13 = sub_1D560C0A8();
  v14 = OUTLINED_FUNCTION_4(v13);
  v77 = v15;
  v78 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v76 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v20 = OUTLINED_FUNCTION_22(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v75 = v23 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v71 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v71 - v38;
  if (v0[1])
  {
    v40 = *v0;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v41 = type metadata accessor for StorePlatformTVShow();
  sub_1D4F39AB0(v0 + v41[5], v39, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v39, 1, v28);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v30 + 32))(v1, v39, v28);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v30 + 8))(v1, v28);
  }

  v43 = (v0 + v41[6]);
  v44 = *v43;
  v45 = v43[1];
  sub_1D5614E28();
  if (*(v0 + v41[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F362BC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[8]))
  {
    OUTLINED_FUNCTION_27();
    v46 = OUTLINED_FUNCTION_81_0();
    sub_1D4F0B2F0(v46, v47);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[9]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F35BFC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[11]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v48 = v0 + v41[13];
  if (v48[8] == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v49 = *v48;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v49);
  }

  if (*(v0 + v41[14]))
  {
    OUTLINED_FUNCTION_27();
    v50 = OUTLINED_FUNCTION_81_0();
    sub_1D4F06928(v50, v51);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[15]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F08318();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v0 + v41[16]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F39AB0(v0 + v41[17], v27, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v52 = v78;
  OUTLINED_FUNCTION_57(v27, 1, v78);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v54 = v76;
    v53 = v77;
    (*(v77 + 32))(v76, v27, v52);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_91();
    sub_1D5114AF8(v55);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v53 + 8))(v54, v52);
  }

  v56 = v73;
  v57 = v74;
  sub_1D4F39AB0(v2 + v41[18], v73, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v56, 1, v57);
  if (v42)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v58 = v72;
    (*(v72 + 32))(v71, v56, v57);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    v59 = *(v58 + 8);
    v60 = OUTLINED_FUNCTION_132_1();
    v61(v60);
  }

  if (*(v2 + v41[19]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_81_0();
    sub_1D4F085A8();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v62 = (v2 + v41[20]);
  if (v62[1])
  {
    v63 = *v62;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v64 = (v2 + v41[21]);
  if (v64[1])
  {
    v65 = *v64;
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v66 = v75;
  sub_1D4F39AB0(v2 + v41[22], v75, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_57(v66, 1, v52);
  if (v42)
  {
    return OUTLINED_FUNCTION_36();
  }

  v68 = v76;
  v67 = v77;
  (*(v77 + 32))(v76, v66, v52);
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_0_91();
  sub_1D5114AF8(v69);
  OUTLINED_FUNCTION_104();
  sub_1D5614CB8();
  return (*(v67 + 8))(v68, v52);
}

uint64_t sub_1D5113738()
{
  sub_1D56162D8();
  sub_1D5113020();
  return sub_1D5616328();
}

uint64_t sub_1D5113778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v92 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v11 = OUTLINED_FUNCTION_22(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v92 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_19_0();
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02D0, &unk_1D5636BB8);
  OUTLINED_FUNCTION_4(v98);
  v25 = v24;
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v92 - v29;
  v101 = type metadata accessor for StorePlatformTVShow();
  v31 = OUTLINED_FUNCTION_14(v101);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v99 = v34;
  v36 = a1[3];
  v35 = a1[4];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1D51145EC();
  v97 = v30;
  v37 = v100;
  sub_1D5616398();
  if (v37)
  {
    v100 = v37;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    LODWORD(v9) = 0;
    v25 = 0;
    v93 = 0;
    LODWORD(v95) = 0;
    LODWORD(v96) = 0;
    LODWORD(v97) = 0;
    LODWORD(v98) = 0;
  }

  else
  {
    v41 = v19;
    v95 = v16;
    LOBYTE(v102) = 0;
    v40 = v97;
    v38 = sub_1D5615F38();
    v60 = v99;
    *v99 = v38;
    v60[1] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(v102) = 1;
    sub_1D4F886BC();
    sub_1D5615F78();
    v62 = v101;
    sub_1D4F39A1C(v2, v60 + v101[5], &qword_1EC7EB5B8, &unk_1D56206A0);
    v105 = 2;
    sub_1D4F89C9C();
    sub_1D5615FD8();
    v63 = v103;
    v64 = (v60 + v62[6]);
    *v64 = v102;
    v64[1] = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02B0, ".9\a");
    v105 = 3;
    sub_1D5114640();
    OUTLINED_FUNCTION_7_60();
    v39 = v25;
    *(v60 + v101[7]) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F02C0, qword_1D565CE10);
    v105 = 4;
    sub_1D511495C(&unk_1EC7F02F0);
    OUTLINED_FUNCTION_7_60();
    *(v60 + v101[8]) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v105 = 5;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_7_60();
    *(v60 + v101[9]) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v105 = 6;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_7_60();
    *(v60 + v101[10]) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v105 = 7;
    sub_1D51149C8(&qword_1EDD528F8);
    OUTLINED_FUNCTION_7_60();
    *(v60 + v101[11]) = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v105 = 8;
    sub_1D51146FC(&qword_1EDD52908);
    OUTLINED_FUNCTION_7_60();
    v100 = 0;
    *(v60 + v101[12]) = v102;
    OUTLINED_FUNCTION_33_7(9);
    v65 = v100;
    v66 = sub_1D5615F68();
    v100 = v65;
    if (v65)
    {
      v69 = OUTLINED_FUNCTION_28_32();
      v70(v69);
      LODWORD(v96) = 0;
      LODWORD(v97) = 0;
      OUTLINED_FUNCTION_1_83();
      OUTLINED_FUNCTION_10_57();
    }

    else
    {
      v68 = v99 + v101[13];
      *v68 = v66;
      v68[8] = v67 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
      v105 = 10;
      sub_1D4F88BF4(&qword_1EDD52778);
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_43();
      v100 = 0;
      *(v99 + v101[14]) = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDD58, qword_1D5636D90);
      v105 = 11;
      sub_1D500E5CC();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_43();
      v100 = 0;
      *(v99 + v101[15]) = v102;
      OUTLINED_FUNCTION_33_7(12);
      v40 = v97;
      v71 = v100;
      v72 = sub_1D5615F48();
      v100 = v71;
      if (!v71)
      {
        *(v99 + v101[16]) = v72;
        sub_1D560C0A8();
        LOBYTE(v102) = 13;
        OUTLINED_FUNCTION_0_91();
        sub_1D5114AF8(v73);
        v40 = v97;
        v74 = v100;
        sub_1D5615F78();
        v100 = v74;
        if (!v74)
        {
          sub_1D4F39A1C(v19, v99 + v101[17], &unk_1EC7E9CA8, &unk_1D561D1D0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
          LOBYTE(v102) = 14;
          sub_1D4F88A24();
          OUTLINED_FUNCTION_18_43();
          v100 = 0;
          sub_1D4F39A1C(v9, v99 + v101[18], &qword_1EC7EC960, &unk_1D56334C0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
          v105 = 15;
          sub_1D5114A3C(&unk_1EC7ED0E0);
          OUTLINED_FUNCTION_18_30();
          OUTLINED_FUNCTION_18_43();
          v46 = 1;
          v100 = 0;
          *(v99 + v101[19]) = v102;
          OUTLINED_FUNCTION_33_7(16);
          v40 = v97;
          v78 = v100;
          v79 = sub_1D5615F38();
          v100 = v78;
          if (!v78)
          {
            v85 = (v99 + v101[20]);
            *v85 = v79;
            v85[1] = v80;
            OUTLINED_FUNCTION_33_7(17);
            v86 = sub_1D5615F38();
            v100 = 0;
            v87 = (v99 + v101[21]);
            *v87 = v86;
            v87[1] = v88;
            LOBYTE(v102) = 18;
            sub_1D5615F78();
            v100 = 0;
            v89 = OUTLINED_FUNCTION_28_32();
            v90(v89);
            v91 = v99;
            sub_1D4F39A1C(v95, v99 + v101[22], &unk_1EC7E9CA8, &unk_1D561D1D0);
            sub_1D51147E0(v91, v96);
            __swift_destroy_boxed_opaque_existential_1(v92);
            return sub_1D5114844(v91);
          }

          v81 = OUTLINED_FUNCTION_28_32();
          v82(v81);
          v94 = 0;
          v104 = 0;
          __swift_destroy_boxed_opaque_existential_1(v92);
          OUTLINED_FUNCTION_3_75();
          OUTLINED_FUNCTION_19_41(v83);
          LODWORD(v98) = v84;
          v45 = 1;
          v42 = v101;
          v43 = v99;
          goto LABEL_6;
        }
      }

      v75 = OUTLINED_FUNCTION_28_32();
      v76(v75);
      OUTLINED_FUNCTION_1_83();
      OUTLINED_FUNCTION_10_57();
      LODWORD(v96) = v77;
      LODWORD(v97) = v77;
    }
  }

  v42 = v101;
  v43 = v99;
  result = __swift_destroy_boxed_opaque_existential_1(v92);
  if (v39)
  {
    v45 = 0;
    v46 = 0;
    v94 = 0;
    v104 = 0;
LABEL_6:
    v47 = v43[1];

    goto LABEL_22;
  }

  v104 = 0;
  v94 = 0;
  v46 = 0;
  v45 = 0;
LABEL_22:
  if (!v40)
  {
    if (!v41)
    {
      goto LABEL_24;
    }

LABEL_8:
    v48 = *(v43 + v42[7]);

    if (v9)
    {
      goto LABEL_25;
    }

LABEL_9:
    if (!v25)
    {
      goto LABEL_26;
    }

LABEL_10:
    v49 = *(v43 + v42[9]);

    if (v93)
    {
      goto LABEL_27;
    }

LABEL_11:
    if (!HIDWORD(v93))
    {
      goto LABEL_28;
    }

LABEL_12:
    v50 = *(v43 + v42[11]);

    if (v95)
    {
      goto LABEL_29;
    }

LABEL_13:
    if (!v96)
    {
      goto LABEL_30;
    }

LABEL_14:
    v51 = *(v43 + v42[14]);

    if (v97)
    {
      goto LABEL_31;
    }

LABEL_15:
    if (!v98)
    {
      goto LABEL_32;
    }

LABEL_16:
    result = sub_1D4E50004(v43 + v42[17], &unk_1EC7E9CA8, &unk_1D561D1D0);
    if (v45)
    {
      goto LABEL_33;
    }

LABEL_17:
    if (!v46)
    {
      goto LABEL_34;
    }

LABEL_18:
    v52 = *(v43 + v42[19]);

    if (v94)
    {
      goto LABEL_35;
    }

    goto LABEL_19;
  }

  v53 = *(v43 + v42[6] + 8);

  if (v41)
  {
    goto LABEL_8;
  }

LABEL_24:
  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_25:
  v54 = *(v43 + v42[8]);

  if (v25)
  {
    goto LABEL_10;
  }

LABEL_26:
  if (!v93)
  {
    goto LABEL_11;
  }

LABEL_27:
  v55 = *(v43 + v42[10]);

  if ((v93 & 0x100000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_28:
  if (!v95)
  {
    goto LABEL_13;
  }

LABEL_29:
  v56 = *(v43 + v42[12]);

  if (v96)
  {
    goto LABEL_14;
  }

LABEL_30:
  if (!v97)
  {
    goto LABEL_15;
  }

LABEL_31:
  v57 = *(v43 + v42[15]);

  if (v98)
  {
    goto LABEL_16;
  }

LABEL_32:
  if (!v45)
  {
    goto LABEL_17;
  }

LABEL_33:
  result = sub_1D4E50004(v43 + v42[18], &qword_1EC7EC960, &unk_1D56334C0);
  if (v46)
  {
    goto LABEL_18;
  }

LABEL_34:
  if (v94)
  {
LABEL_35:
    v58 = *(v43 + v42[20] + 8);

    if ((v104 & 1) == 0)
    {
      return result;
    }

    goto LABEL_36;
  }

LABEL_19:
  if (!v104)
  {
    return result;
  }

LABEL_36:
  v59 = *(v43 + v42[21] + 8);
}

uint64_t sub_1D51144D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D511224C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D51144FC(uint64_t a1)
{
  v2 = sub_1D51145EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5114538(uint64_t a1)
{
  v2 = sub_1D51145EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D51145B0()
{
  sub_1D56162D8();
  sub_1D5113020();
  return sub_1D5616328();
}

unint64_t sub_1D51145EC()
{
  result = qword_1EC7F02D8;
  if (!qword_1EC7F02D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F02D8);
  }

  return result;
}

unint64_t sub_1D5114640()
{
  result = qword_1EC7F02E0;
  if (!qword_1EC7F02E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F02B0, ".9\a");
    sub_1D5114AF8(&unk_1EC7F02E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F02E0);
  }

  return result;
}

unint64_t sub_1D51146FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v2();
    OUTLINED_FUNCTION_45_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5114770(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4FC7E94();
    sub_1D4FC7EE8();
    OUTLINED_FUNCTION_45_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D51147E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorePlatformTVShow();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5114844(uint64_t a1)
{
  v2 = type metadata accessor for StorePlatformTVShow();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D51148A0()
{
  result = qword_1EC7F0300;
  if (!qword_1EC7F0300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F02B0, ".9\a");
    sub_1D5114AF8(&unk_1EC7F0308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0300);
  }

  return result;
}

unint64_t sub_1D511495C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F02C0, qword_1D565CE10);
    v4();
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D51149C8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    v2();
    OUTLINED_FUNCTION_45_22();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D5114A3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_17_36();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED098, &unk_1D5623EE0);
    sub_1D5114770(v2);
    OUTLINED_FUNCTION_32_3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D5114AB0()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C0C8);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FFE8();
}

unint64_t sub_1D5114AF8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformTVShow.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D5114C1C()
{
  result = qword_1EC7F0318;
  if (!qword_1EC7F0318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0318);
  }

  return result;
}

unint64_t sub_1D5114C74()
{
  result = qword_1EC7F0320;
  if (!qword_1EC7F0320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0320);
  }

  return result;
}

unint64_t sub_1D5114CCC()
{
  result = qword_1EC7F0328;
  if (!qword_1EC7F0328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0328);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_28_32()
{
  v2 = *(v0 + 8);
  result = *(v1 - 136);
  v4 = *(v1 - 128);
  return result;
}

uint64_t Station._Kind.convertToStationKind()@<X0>(char *a1@<X8>)
{
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0330, &unk_1D5636CF0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v42 - v11;
  v13 = sub_1D5614398();
  v14 = OUTLINED_FUNCTION_3_76(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_76();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_7_61();
  v21 = *(v5 + 16);
  OUTLINED_FUNCTION_6_58();
  v21();
  v22 = v16[11];
  v23 = OUTLINED_FUNCTION_61();
  result = v24(v23);
  if (result == *MEMORY[0x1E6977118])
  {
    v26 = v16[12];
    v27 = OUTLINED_FUNCTION_61();
    v28(v27);
    sub_1D51154B8(v2, v12);
    sub_1D5115528(v12, v10);
    v29 = sub_1D5614238();
    if (__swift_getEnumTagSinglePayload(v10, 1, v29) == 1)
    {
      sub_1D5115598(v12);
      result = sub_1D5115598(v10);
      v30 = 2;
    }

    else
    {
      Station._StreamingKind.convertToStationStreamingKind()(&v46);
      sub_1D5115598(v12);
      result = (*(*(v29 - 8) + 8))(v10, v29);
      v30 = v46;
    }

    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770D0])
  {
    v30 = 3;
LABEL_27:
    *v45 = v30;
    return result;
  }

  if (result == *MEMORY[0x1E69770C0])
  {
    v30 = 4;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770D8])
  {
    v30 = 5;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E6977110])
  {
    v30 = 6;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E6977108])
  {
    v30 = 7;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770F8])
  {
    v30 = 8;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770E8])
  {
    v30 = 9;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770E0])
  {
    v30 = 10;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E6977100])
  {
    v30 = 11;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770C8])
  {
    v30 = 12;
    goto LABEL_27;
  }

  if (result == *MEMORY[0x1E69770F0])
  {
    v30 = 13;
    goto LABEL_27;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_18();
  }

  v31 = sub_1D560C758();
  __swift_project_value_buffer(v31, qword_1EDD76DC8);
  OUTLINED_FUNCTION_6_58();
  v21();
  v32 = sub_1D560C738();
  v33 = sub_1D56156C8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v34 = 136446210;
    (v21)(v4, v3, v1);
    v43 = sub_1D5614DB8();
    v36 = v35;
    v37 = v16[1];
    v38 = OUTLINED_FUNCTION_0_92();
    v37(v38);
    v39 = sub_1D4E6835C(v43, v36, &v47);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_1D4E3F000, v32, v33, "Unknown station kind returned: %{public}s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    v37 = v16[1];
    v40 = OUTLINED_FUNCTION_0_92();
    v37(v40);
  }

  *v45 = 14;
  v41 = OUTLINED_FUNCTION_61();
  return (v37)(v41);
}

uint64_t Station._StreamingKind.convertToStationStreamingKind()@<X0>(_BYTE *a1@<X8>)
{
  v6 = sub_1D5614238();
  v7 = OUTLINED_FUNCTION_3_76(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_76();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_64();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_61();
  v14 = *(v4 + 16);
  OUTLINED_FUNCTION_6_58();
  v14();
  v15 = *(v9 + 88);
  v16 = OUTLINED_FUNCTION_61();
  result = v17(v16);
  if (result == *MEMORY[0x1E6977078])
  {
    *a1 = 0;
  }

  else if (result == *MEMORY[0x1E6977080])
  {
    *a1 = 1;
  }

  else
  {
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_18();
    }

    v19 = sub_1D560C758();
    __swift_project_value_buffer(v19, qword_1EDD76DC8);
    OUTLINED_FUNCTION_6_58();
    v14();
    v20 = sub_1D560C738();
    v21 = sub_1D56156C8();
    if (os_log_type_enabled(v20, v21))
    {
      v31 = v21;
      v22 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v22 = 136446210;
      (v14)(v3, v2, v1);
      v30 = sub_1D5614DB8();
      v24 = v23;
      v25 = *(v9 + 8);
      v26 = OUTLINED_FUNCTION_0_92();
      v25(v26);
      v27 = sub_1D4E6835C(v30, v24, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1D4E3F000, v20, v31, "Unknown station streaming subtype returned:  %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {

      v25 = *(v9 + 8);
      v28 = OUTLINED_FUNCTION_0_92();
      v25(v28);
    }

    *a1 = 2;
    v29 = OUTLINED_FUNCTION_61();
    return (v25)(v29);
  }

  return result;
}